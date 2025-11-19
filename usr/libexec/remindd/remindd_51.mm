id sub_1004BCB54(id a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v84 - v12;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v84 - v16;
  v98 = 0;
  v18 = [a1 remObjectIDWithError:{&v98, v15}];
  if (!v18)
  {
    v44 = v98;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a1;
  }

  v93 = v3;
  v94 = v13;
  v96 = v17;
  v97 = v18;
  v19 = v98;
  v20 = [a1 account];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 remObjectID];

    v95 = v22;
    if (v22)
    {
      v23 = [a1 reminder];
      if (v23 && (v24 = v23, v25 = [v23 remObjectID], v24, v25))
      {
        v26 = [a1 uti];
        if (v26)
        {
          v27 = v10;
          v91 = v25;
          v92 = v26;
          v28 = type metadata accessor for URL();
          v29 = *(v28 - 8);
          v30 = *(v29 + 56);
          v31 = v96;
          v87 = v29 + 56;
          v88 = v30;
          v30(v96, 1, 1, v28);
          v32 = [a1 storeControllerManagedObjectContext];
          if (v32)
          {
            v90 = v29;
            v33 = v32;
            v34 = [v32 storeController];

            v29 = v90;
            v89 = v34;
            if (v34)
            {
              v35 = [a1 fileName];
              if (v35)
              {
                v85 = v35;
                v36 = [v97 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                isa = UUID._bridgeToObjectiveC()().super.isa;
                v86 = v28;
                v38 = v93[1];
                v38(v6, v2);
                v39 = [v95 uuid];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v40 = UUID._bridgeToObjectiveC()().super.isa;
                v38(v6, v2);
                v28 = v86;
                v31 = v96;
                v93 = [a1 sha512Sum];
                v41 = v85;
                v42 = [v89 URLForAttachmentFile:isa accountID:v40 fileName:v85 sha512Sum:v93];

                v29 = v90;
                v43 = v94;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1000050A4(v31, &unk_1009441F0, &qword_100795760);
                v88(v43, 0, 1, v28);
                sub_10003E8F8(v43, v31);
              }

              else
              {
              }
            }
          }

          v73 = [a1 fileSize];
          if ((v73 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          v74 = v73;
          sub_1001E0978(v31, v27);
          v75 = (*(v29 + 48))(v27, 1, v28);
          v77 = v97;
          if (v75 == 1)
          {
            v78 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v76);
            v78 = v79;
            (*(v29 + 8))(v27, v28);
          }

          v80 = objc_allocWithZone(REMFileAttachment);
          v81 = v95;
          v82 = v91;
          v83 = v92;
          a1 = [v80 initWithObjectID:v77 accountID:v95 reminderID:v91 UTI:v92 fileSize:v74 fileURL:v78 data:0];

          sub_1000050A4(v31, &unk_1009441F0, &qword_100795760);
          return a1;
        }
      }

      else
      {
        v25 = v95;
      }
    }
  }

  v45 = [a1 account];
  if (v45)
  {
    v46 = v45;
    v47 = v97;
  }

  else
  {
    v47 = v97;
    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_1009494A0);
    v49 = v47;
    v46 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v49;
      *v52 = v47;
      v53 = v49;
      _os_log_impl(&_mh_execute_header, v46, v50, "REMFileAttachmentCDIngestor: cdFileAttachment.account is nil {cdFileAttachment.remObjectID: %@}", v51, 0xCu);
      sub_1000050A4(v52, &unk_100938E70, &unk_100797230);
    }
  }

  v54 = [a1 reminder];
  if (v54)
  {
    v55 = v54;
  }

  else
  {

    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_1009494A0);
    v57 = v47;
    v55 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v57;
      *v60 = v47;
      v61 = v57;
      _os_log_impl(&_mh_execute_header, v55, v58, "REMFileAttachmentCDIngestor: cdFileAttachment.reminder is nil {cdFileAttachment.remObjectID: %@}", v59, 0xCu);
      sub_1000050A4(v60, &unk_100938E70, &unk_100797230);
    }
  }

  v62 = [a1 uti];
  if (v62)
  {
    v63 = v62;
  }

  else
  {

    if (qword_1009362B8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_1009494A0);
    v65 = v47;
    v63 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v65;
      *v68 = v47;
      v69 = v65;
      _os_log_impl(&_mh_execute_header, v63, v66, "REMFileAttachmentCDIngestor: cdFileAttachment.uti is nil {cdFileAttachment.remObjectID: %@}", v67, 0xCu);
      sub_1000050A4(v68, &unk_100938E70, &unk_100797230);
    }
  }

  a1 = objc_opt_self();
  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = String._bridgeToObjectiveC()();

  [a1 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v71];

  swift_willThrow();
  return a1;
}

unint64_t sub_1004BD630()
{
  result = qword_100949B28;
  if (!qword_100949B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B28);
  }

  return result;
}

unint64_t sub_1004BD6B8()
{
  result = qword_100949B40;
  if (!qword_100949B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B40);
  }

  return result;
}

unint64_t sub_1004BD740()
{
  result = qword_100949B58;
  if (!qword_100949B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B58);
  }

  return result;
}

unint64_t sub_1004BD7C8()
{
  result = qword_100949B70;
  if (!qword_100949B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B70);
  }

  return result;
}

unint64_t sub_1004BD850()
{
  result = qword_100949B88;
  if (!qword_100949B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949B88);
  }

  return result;
}

unint64_t sub_1004BD8D8()
{
  result = qword_100949BA0;
  if (!qword_100949BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949BA0);
  }

  return result;
}

uint64_t sub_1004BD948()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100949BB0);
  v1 = sub_100006654(v0, qword_100949BB0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004BDA10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100949BB0);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136446210;
      v8 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16];
      v26 = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity];
      *v27 = v8;
      *&v27[14] = *&v3[OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30];
      sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
      v9 = swift_allocObject();
      v10 = v9;
      *(v9 + 16) = xmmword_100791340;
      if (((*&v27[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v11 = 0xD000000000000011;
      }

      else
      {
        v11 = 0;
      }

      if (((*&v27[28] << 32) & 0xC10000000000) == 0x810000000000)
      {
        v12 = 0x80000001007EECE0;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      *(v9 + 56) = &type metadata for String;
      v13 = sub_100006600();
      v10[8] = v13;
      v10[4] = v11;
      v10[5] = v12;
      v14 = sub_1000063E8();
      v10[12] = &type metadata for String;
      v10[13] = v13;
      v10[9] = v14;
      v10[10] = v15;
      v16 = String.init(format:_:)();
      v18 = sub_10000668C(v16, v17, aBlock);

      *(v6 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v4, v5, "Connection was interrupted unexpectedly {clientIdentity: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue);
      v21 = v19;
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1004BECBC;
      *(v23 + 24) = v22;
      aBlock[4] = sub_1000FDA90;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F160;
      aBlock[3] = &unk_1008F4668;
      v24 = _Block_copy(aBlock);
      v3 = v3;
      swift_unknownObjectRetain();

      dispatch_sync(v20, v24);
      _Block_release(v24);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      swift_unknownObjectRelease();

      if ((v20 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

id sub_1004BDDAC()
{
  sub_100053464();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDClientConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004BDE38(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, id))
{
  v5 = v4;
  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v10 = (v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v11 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
  v26 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v27[0] = v11;
  *(v27 + 14) = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
  _StringGuts.grow(_:)(17);

  *&v24 = 0x725465676E616863;
  *(&v24 + 1) = 0xEF2E676E696B6361;
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  String.append(_:)(v12);
  sub_1000081D8(&v26, 0x725465676E616863, 0xEF2E676E696B6361);

  v13 = *(v10 + 22) >> 14;
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      v14 = *(v10 + 10);
    }

    else
    {
      v14 = 0x7FFFFFFF;
    }
  }

  else
  {
    v14 = 2147483519;
  }

  sub_100009A40(16, v14);
  v16 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon);
  v17 = *(v5 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v19 = v10[1];
  v24 = *v10;
  v25[0] = v19;
  *(v25 + 14) = *(v10 + 30);
  v20 = (*(v17 + 8))(&v24, a1, ObjectType, v17);
  if (v20)
  {
    a4(v20, 0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 xpcPerformerUnavailableErrorWithDescription:v22];

    swift_willThrow();
    swift_errorRetain();
    a4(0, v23);
  }
}

uint64_t sub_1004BE0FC(uint64_t a1, Swift::String a2, void (*a3)(uint64_t, id))
{
  v4 = v3;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v9 = (v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v10 = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 16);
  v25 = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity);
  v26[0] = v10;
  *(v26 + 14) = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_clientIdentity + 30);
  *&v23 = 0x2E6775626564;
  *(&v23 + 1) = 0xE600000000000000;
  v11._countAndFlagsBits = countAndFlagsBits;
  v11._object = object;
  String.append(_:)(v11);
  sub_1000081D8(&v25, 0x2E6775626564, 0xE600000000000000);

  v12 = *(v9 + 22) >> 14;
  if (v12 >= 2)
  {
    if (v12 == 2)
    {
      v13 = *(v9 + 10);
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }
  }

  else
  {
    v13 = 2147483519;
  }

  sub_100009A40(32, v13);
  v15 = *(v3 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon);
  v16 = *(v4 + OBJC_IVAR____TtC7remindd18RDClientConnection_xpcDaemon + 8);
  ObjectType = swift_getObjectType();
  v18 = v9[1];
  v23 = *v9;
  v24[0] = v18;
  *(v24 + 14) = *(v9 + 30);
  v19 = (*(v16 + 16))(&v23, a1, ObjectType, v16);
  if (v19)
  {
    a3(v19, 0);

    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = objc_opt_self();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 xpcPerformerUnavailableErrorWithDescription:v21];

    swift_willThrow();
    swift_errorRetain();
    a3(0, v22);
  }
}

uint64_t sub_1004BE394(void *a1, int a2, void *a3, int a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = a3;
  v18 = a1;
  a8(a3, v13, v15, a7, v16);
}

void sub_1004BE6F8(uint64_t a1, SEL *a2, const char *a3)
{
  v6 = sub_10000AA28();
  if (v6)
  {
    [v6 *a2];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009362C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100949BB0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, a3, v9, 2u);
    }
  }
}

void sub_1004BE8A8()
{
  if (qword_1009362C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100949BB0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = sub_10000668C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Unable to get remoteObjectProxy for the app from the daemon. Maybe the client is gone? {error: %s}", v2, 0xCu);
    sub_10000607C(v3);
  }

  else
  {
  }
}

NSString sub_1004BEA40()
{
  result = String._bridgeToObjectiveC()();
  qword_100974EC0 = result;
  return result;
}

NSString sub_1004BEA78()
{
  result = String._bridgeToObjectiveC()();
  qword_100974EC8 = result;
  return result;
}

uint64_t sub_1004BEAB0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1000050A4(v13, &qword_100939ED0, &qword_100791B10);
    goto LABEL_11;
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (a1 <= 1u)
  {
    v7 = 0xD000000000000014;
    if (a1)
    {
      v7 = 0xD000000000000011;
      v6 = "d.userInteractive";
    }

    else
    {
      v6 = "com.apple.remindd";
    }
  }

  else if (a1 == 2)
  {
    v6 = "com.apple.suggestd.reminders";
    v7 = 0xD000000000000021;
  }

  else if (a1 == 3)
  {
    v6 = "istributed-evaluation";
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = "h-lookup.global-name";
    v7 = 0xD000000000000025;
  }

  *&v13[0] = v7;
  *(&v13[0] + 1) = v6 | 0x8000000000000000;
  __chkstk_darwin();
  v10[2] = v13;
  v8 = sub_100040A74(sub_1002CB9B8, v10, v11);

  return v8 & 1;
}

uint64_t sub_1004BECC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v169 = a3;
  v168 = a2;
  v167 = a1;
  v5 = sub_1000F5104(&qword_100949DC0, &qword_1007AE140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v164 - v7);
  v9 = type metadata accessor for REMManualOrdering.PinnedList();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v196 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v195 = &v164 - v15;
  __chkstk_darwin(v14);
  v180 = &v164 - v16;
  v17 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v182 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v199 = &v164 - v23;
  v24 = __chkstk_darwin(v22);
  v166 = &v164 - v25;
  v26 = __chkstk_darwin(v24);
  v164 = &v164 - v27;
  v28 = __chkstk_darwin(v26);
  v165 = &v164 - v29;
  v30 = __chkstk_darwin(v28);
  v174 = &v164 - v31;
  v32 = __chkstk_darwin(v30);
  v175 = &v164 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = (&v164 - v35);
  v37 = __chkstk_darwin(v34);
  v197 = (&v164 - v38);
  v39 = __chkstk_darwin(v37);
  v171 = &v164 - v40;
  v41 = __chkstk_darwin(v39);
  v200 = &v164 - v42;
  v201 = v41;
  v43 = *(a4 + 16);
  v173 = v18;
  v181 = v43;
  v170 = a4;
  if (v43)
  {
    v45 = *(v18 + 16);
    v44 = (v18 + 16);
    v46 = a4 + ((v44[64] + 32) & ~v44[64]);
    v190 = *(v44 + 7);
    v191 = v45;
    v189 = (v44 + 72);
    v188 = enum case for REMAccountsListDataView.Model.PinnedList.predefinedSmartList(_:);
    v178 = enum case for REMAccountsListDataView.Model.PinnedList.list(_:);
    v172 = enum case for REMAccountsListDataView.Model.PinnedList.customSmartList(_:);
    v192 = v44;
    v186 = v44 - 8;
    v187 = (v44 + 80);
    v177 = enum case for REMManualOrdering.PinnedList.listOrCustomSmartList(_:);
    v185 = (v10 + 104);
    v176 = enum case for REMManualOrdering.PinnedList.predefinedSmartList(_:);
    v47 = (v10 + 32);
    v184 = (v10 + 56);
    v179 = v10;
    v183 = (v10 + 48);
    v198 = _swiftEmptyArrayStorage;
    v193 = v36;
    v194 = v8;
    v48 = v197;
    do
    {
      v49 = v200;
      v50 = v191;
      v191(v200, v46, v17);
      v50(v48, v49, v17);
      v50(v36, v48, v17);
      v51 = (*v189)(v36, v17);
      if (v51 == v188)
      {
        v52 = *v186;
        (*v186)(v48, v17);
        (*v187)(v36, v17);
        v53 = *v36;
        v54 = v195;
        *v195 = v53;
        v55 = &v205 + 4;
      }

      else
      {
        if (v51 == v178)
        {
          (*v187)(v36, v17);
          v56 = *v36;
          v57 = [*v36 objectID];

          v17 = v201;
          v52 = *v186;
          (*v186)(v48, v201);
          v54 = v195;
          *v195 = v57;
        }

        else
        {
          if (v51 != v172)
          {
            goto LABEL_105;
          }

          (*v187)(v36, v17);
          v58 = *v36;
          v59 = [*v36 objectID];

          v52 = *v186;
          (*v186)(v48, v201);
          v54 = v195;
          *v195 = v59;
          v17 = v201;
        }

        v55 = &v206;
      }

      (*v185)(v54, *(v55 - 64), v9);
      v60 = *v47;
      v61 = v194;
      (*v47)(v194, v54, v9);
      (*v184)(v61, 0, 1, v9);
      v52(v200, v17);
      if ((*v183)(v61, 1, v9) == 1)
      {
        sub_1004BFFA4(v61);
        v36 = v193;
      }

      else
      {
        v62 = v180;
        v60(v180, v61, v9);
        v60(v196, v62, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = sub_100365A9C(0, *(v198 + 16) + 1, 1, v198);
        }

        v64 = *(v198 + 16);
        v63 = *(v198 + 24);
        v36 = v193;
        if (v64 >= v63 >> 1)
        {
          v198 = sub_100365A9C(v63 > 1, v64 + 1, 1, v198);
        }

        v65 = v198;
        *(v198 + 16) = v64 + 1;
        v60((v65 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v64), v196, v9);
        v17 = v201;
      }

      v46 += v190;
      --v43;
      v48 = v197;
    }

    while (v43);
  }

  else
  {
    v198 = _swiftEmptyArrayStorage;
  }

  v66 = sub_1001A5CDC(v198);

  v67 = sub_1002160F4(v66, v168);

  v68 = sub_10038E404(_swiftEmptyArrayStorage);
  v69 = v181;
  if (v181)
  {
    v200 = *(v173 + 16);
    v70 = v170 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
    v71 = *(v173 + 72);
    v196 = (v67 & 0xC000000000000001);
    v72 = v67 & 0xFFFFFFFFFFFFFF8;
    if (v67 < 0)
    {
      v72 = v67;
    }

    v193 = v72;
    v190 = (v173 + 40);
    v191 = (v173 + 32);
    v197 = (v173 + 8);
    v198 = v71;
    v73 = v171;
    v189 = v67;
    v195 = v173 + 16;
    do
    {
      (v200)(v73, v70, v17);
      v74 = REMAccountsListDataView.Model.PinnedList.objectID.getter();
      if (v74)
      {
        v75 = v74;
        if (v196)
        {
          v76 = v74;
          v77 = __CocoaDictionary.lookup(_:)();

          if (v77)
          {
            v202 = v77;
            type metadata accessor for RDElementManualSortID();
            swift_dynamicCast();
            v78 = v203;
            if (v203)
            {
              goto LABEL_34;
            }
          }
        }

        else if (*(v67 + 16))
        {
          v79 = sub_10002B924(v74);
          if (v80)
          {
            v81 = *(*(v67 + 56) + 8 * v79);

            if (v78)
            {
LABEL_34:
              v192 = v75;
              v82 = *(v78 + 24);
              v194 = v78;
              if (v82)
              {
                v83 = *(v78 + 16);
                v84 = v82;
              }

              else
              {
                v85._countAndFlagsBits = UUID.uuidString.getter();
                v203 = 0x7C6C61636F6CLL;
                v204 = 0xE600000000000000;
                String.append(_:)(v85);

                v83 = v203;
                v84 = v204;
              }

              (v200)(v175, v73, v17);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v203 = v68;
              v87 = sub_100005F4C(v83, v84);
              v89 = v68[2];
              v90 = (v88 & 1) == 0;
              v91 = __OFADD__(v89, v90);
              v92 = v89 + v90;
              if (v91)
              {
                goto LABEL_101;
              }

              v93 = v88;
              if (v68[3] >= v92)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_42;
                }

                v99 = v87;
                sub_100373804();
                v87 = v99;
                if ((v93 & 1) == 0)
                {
                  goto LABEL_45;
                }

LABEL_43:
                v95 = v87;

                v96 = v203;
                v97 = *(v203 + 56) + v95 * v198;
                v98 = v201;
                (*v190)(v97, v175, v201);
              }

              else
              {
                sub_10036ABD8(v92, isUniquelyReferenced_nonNull_native);
                v87 = sub_100005F4C(v83, v84);
                if ((v93 & 1) != (v94 & 1))
                {
                  goto LABEL_106;
                }

LABEL_42:
                if (v93)
                {
                  goto LABEL_43;
                }

LABEL_45:
                v96 = v203;
                *(v203 + 8 * (v87 >> 6) + 64) |= 1 << v87;
                v100 = (v96[6] + 16 * v87);
                *v100 = v83;
                v100[1] = v84;
                v98 = v201;
                (*v191)(v96[7] + v87 * v198, v175, v201);
                v101 = v96[2];
                v91 = __OFADD__(v101, 1);
                v102 = v101 + 1;
                if (v91)
                {
                  goto LABEL_103;
                }

                v96[2] = v102;
              }

              v103._countAndFlagsBits = UUID.uuidString.getter();
              v203 = 0x7C6C61636F6CLL;
              v204 = 0xE600000000000000;
              String.append(_:)(v103);

              v105 = v203;
              v104 = v204;
              (v200)(v174, v73, v98);
              v106 = swift_isUniquelyReferenced_nonNull_native();
              v203 = v96;
              v108 = sub_100005F4C(v105, v104);
              v109 = v96[2];
              v110 = (v107 & 1) == 0;
              v111 = v109 + v110;
              if (__OFADD__(v109, v110))
              {
                goto LABEL_102;
              }

              v112 = v107;
              if (v96[3] >= v111)
              {
                if (v106)
                {
                  v115 = v192;
                  if ((v107 & 1) == 0)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  sub_100373804();
                  v115 = v192;
                  if ((v112 & 1) == 0)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                sub_10036ABD8(v111, v106);
                v113 = sub_100005F4C(v105, v104);
                if ((v112 & 1) != (v114 & 1))
                {
                  goto LABEL_106;
                }

                v108 = v113;
                v115 = v192;
                if ((v112 & 1) == 0)
                {
LABEL_51:
                  v68 = v203;
                  *(v203 + 8 * (v108 >> 6) + 64) |= 1 << v108;
                  v116 = (v68[6] + 16 * v108);
                  *v116 = v105;
                  v116[1] = v104;
                  v17 = v201;
                  (*v191)(v68[7] + v108 * v198, v174, v201);

                  v73 = v171;
                  (*v197)(v171, v17);
                  v117 = v68[2];
                  v91 = __OFADD__(v117, 1);
                  v118 = v117 + 1;
                  if (v91)
                  {
                    goto LABEL_104;
                  }

                  v68[2] = v118;
                  goto LABEL_56;
                }
              }

              v68 = v203;
              v17 = v201;
              (*v190)(*(v203 + 56) + v108 * v198, v174, v201);

              v73 = v171;
              (*v197)(v171, v17);
LABEL_56:

              v67 = v189;
              goto LABEL_24;
            }
          }
        }

        (*v197)(v73, v17);
      }

      else
      {
        (*v197)(v73, v17);
      }

LABEL_24:
      v70 += v198;
      --v69;
    }

    while (v69);
  }

  v119 = *(v167 + 16);
  if (!v119)
  {
    v122 = _swiftEmptyArrayStorage;
    goto LABEL_75;
  }

  v120 = 0;
  v200 = v173 + 32;
  v197 = (v173 + 8);
  v198 = v173 + 16;
  v121 = (v167 + 40);
  v122 = _swiftEmptyArrayStorage;
  do
  {
    v123 = &v121[16 * v120];
    v124 = v120;
    while (1)
    {
      if (v124 >= v119)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_106:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v120 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_100;
      }

      if (v68[2])
      {
        break;
      }

LABEL_62:
      ++v124;
      v123 += 2;
      if (v120 == v119)
      {
        goto LABEL_75;
      }
    }

    v125 = *(v123 - 1);
    v126 = *v123;

    v127 = sub_100005F4C(v125, v126);
    if ((v128 & 1) == 0)
    {

      goto LABEL_62;
    }

    v196 = v121;
    v129 = v68[7];
    v130 = v173;
    v195 = *(v173 + 72);
    v131 = *(v173 + 16);
    v132 = v164;
    v133 = v201;
    v131(v164, v129 + v195 * v127, v201);
    v134 = *(v130 + 32);
    v135 = v122;
    v136 = v165;
    v194 = v134;
    v134(v165, v132, v133);
    v137 = v136;
    v122 = v135;
    v131(v166, v137, v133);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = sub_100039334(0, v135[2] + 1, 1, v135);
    }

    v139 = v122[2];
    v138 = v122[3];
    if (v139 >= v138 >> 1)
    {
      v122 = sub_100039334(v138 > 1, v139 + 1, 1, v122);
    }

    v140 = v173;
    v141 = v201;
    (*(v173 + 8))(v165, v201);
    v122[2] = v139 + 1;
    v194(v122 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + v139 * v195, v166, v141);
    v121 = v196;
  }

  while (v120 != v119);
LABEL_75:

  v191 = v122;
  v203 = v122;
  sub_1000F5104(&qword_100949DC8, &qword_1007AE148);
  sub_10003980C();
  sub_1004C0048();
  sub_10018BA8C();
  v142 = Sequence.compactMapToSet<A>(_:)();
  v143 = v142;
  v144 = v181;
  if (v181)
  {
    v145 = 0;
    v198 = *(v173 + 16);
    v146 = (*(v173 + 80) + 32) & ~*(v173 + 80);
    v197 = (v170 + v146);
    v200 = *(v173 + 72);
    v147 = v142 & 0xFFFFFFFFFFFFFF8;
    if (v142 < 0)
    {
      v147 = v142;
    }

    v192 = v146;
    v193 = v147;
    v148 = v142 + 56;
    v195 = v142 & 0xC000000000000001;
    v196 = (v173 + 32);
    v194 = (v173 + 8);
    v149 = _swiftEmptyArrayStorage;
    v173 += 16;
    while (1)
    {
      (v198)(v199, v197 + v200 * v145, v201);
      v150 = REMAccountsListDataView.Model.PinnedList.objectID.getter();
      if (v150)
      {
        v151 = v150;
        if (v195)
        {
          v152 = __CocoaSet.contains(_:)();

          if ((v152 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (!*(v143 + 16) || (v153 = NSObject._rawHashValue(seed:)(*(v143 + 40)), v154 = -1 << *(v143 + 32), v155 = v153 & ~v154, ((*(v148 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0))
          {
LABEL_91:

LABEL_92:
            v159 = *v196;
            (*v196)(v182, v199, v201);
            v160 = swift_isUniquelyReferenced_nonNull_native();
            v203 = v149;
            if ((v160 & 1) == 0)
            {
              sub_1002533A4(0, *(v149 + 16) + 1, 1);
              v149 = v203;
            }

            v162 = *(v149 + 16);
            v161 = *(v149 + 24);
            if (v162 >= v161 >> 1)
            {
              sub_1002533A4(v161 > 1, v162 + 1, 1);
              v149 = v203;
            }

            *(v149 + 16) = v162 + 1;
            v159(&v192[v149 + v162 * v200], v182, v201);
            v144 = v181;
            goto LABEL_81;
          }

          v156 = ~v154;
          while (1)
          {
            v157 = *(*(v143 + 48) + 8 * v155);
            v158 = static NSObject.== infix(_:_:)();

            if (v158)
            {
              break;
            }

            v155 = (v155 + 1) & v156;
            if (((*(v148 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          v144 = v181;
        }
      }

      (*v194)(v199, v201);
LABEL_81:
      if (++v145 == v144)
      {
        goto LABEL_98;
      }
    }
  }

  v149 = _swiftEmptyArrayStorage;
LABEL_98:

  v203 = v191;
  sub_100013504(v149);
  return v203;
}

uint64_t sub_1004BFFA4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100949DC0, &qword_1007AE140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C000C@<X0>(uint64_t *a1@<X8>)
{
  result = REMAccountsListDataView.Model.PinnedList.objectID.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1004C0048()
{
  result = qword_100949DD0;
  if (!qword_100949DD0)
  {
    sub_1000F514C(&qword_100949DC8, &qword_1007AE148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949DD0);
  }

  return result;
}

uint64_t sub_1004C00AC(uint64_t a1)
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

uint64_t sub_1004C01D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100949DE0);
  v1 = sub_100006654(v0, qword_100949DE0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C0298()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1004C2A40;
  *(v2 + 24) = v0;
  v5[4] = sub_1000529DC;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000F160;
  v5[3] = &unk_1008F47B0;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1004C03CC(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  __chkstk_darwin(a1);
  v53 = &v46 - v5;
  v7 = *(v6 + 88);
  v51 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = type metadata accessor for Optional();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v56);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + 2);
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if (v22)
  {
    v50 = v21;
    if (qword_1009362D8 == -1)
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
  v23 = v7;
  v24 = type metadata accessor for Logger();
  v55 = sub_100006654(v24, qword_100949DE0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "CloudSchemaCatchUpSyncController: Starting", v27, 2u);
  }

  v28 = *(*v2 + 104);
  swift_beginAccess();
  v29 = v8;
  v30 = v56;
  (*(v8 + 16))(v13, &v2[v28], v56);
  v31 = *(AssociatedTypeWitness - 8);
  v32 = (*(v31 + 48))(v13, 1, AssociatedTypeWitness);
  (*(v8 + 8))(v13, v30);
  if (v32 == 1)
  {
    v33 = v53;
    v34 = v54;
    (*(v54 + 16))(v53, &v2[*(*v2 + 112)], v3);
    v35 = swift_allocObject();
    v49 = v29;
    v36 = v35;
    swift_weakInit();
    v37 = swift_allocObject();
    v48 = v28;
    v38 = v37;
    v37[2] = v3;
    v37[3] = v23;
    v37[4] = v36;
    v39 = v51;
    v47 = *(v51 + 24);

    v40 = v52;
    v47(v50, sub_1004C2AB8, v38, v3, v39);

    (*(v34 + 8))(v33, v3);

    (*(v31 + 56))(v40, 0, 1, AssociatedTypeWitness);
    v41 = v48;
    swift_beginAccess();
    (*(v49 + 40))(&v2[v41], v40, v56);
    swift_endAccess();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "CloudSchemaCatchUpSyncController: Instantiated a background scheduler (xpcActivity) upon q_start";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
    }
  }

  else
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "CloudSchemaCatchUpSyncController: backgroundScheduler has already instantiated, duplicate call to q_start?";
      goto LABEL_10;
    }
  }
}

void sub_1004C09F0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v1[2];
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_10;
  }

  v15 = *(v1 + *(*v1 + 120));
  if ([v15 schedulingState] != 1)
  {
    return;
  }

  v18 = [v15 lastScheduledDate];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    if (v20 >= -604800.0)
    {
      (*(v3 + 8))(v9, v2);
    }

    else
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_100949DE0);
      (*(v3 + 16))(v6, v9, v2);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v38;
        *v24 = 134349314;
        *(v24 + 4) = 0x4122750000000000;
        *(v24 + 12) = 2082;
        sub_1004C2A68(&qword_100937010, &type metadata accessor for Date);
        v37 = v22;
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = *(v3 + 8);
        v36 = v23;
        v28(v6, v2);
        v29 = sub_10000668C(v25, v27, &v39);

        *(v24 + 14) = v29;
        v30 = v37;
        _os_log_impl(&_mh_execute_header, v37, v36, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): It had been too long since we scheudled the background activity and catch up sync still hasn't ran yet, force running the activity manually now {timeout: %{public}f, lastScheduledDate: %{public}s}", v24, 0x16u);
        sub_10000607C(v38);
      }

      else
      {

        v28 = *(v3 + 8);
        v28(v6, v2);
      }

      sub_1004C1888();
      v28(v9, v2);
    }

    return;
  }

  if (qword_1009362D8 != -1)
  {
    goto LABEL_18;
  }

LABEL_10:
  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100949DE0);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): schedulingState is .scheduled but we don't have a lastScheduledDate, force re-scheduling now", v34, 2u);
  }

  [v15 setSchedulingState:0];
  [v15 setLastScheduledDate:0];
  sub_1004C1034();
}

void sub_1004C0F28()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1004C1034();
  }

  else
  {
    __break(1u);
  }
}

void sub_1004C1034()
{
  v1 = *(*(*v0 + 88) + 8);
  v54 = *(*v0 + 80);
  v55 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v52 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v52 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = (&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v0 + 2);
  *v19 = v20;
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v14, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v22 = *(*v0 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v7, &v0[v22], v3);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v7, v3);
    if (qword_1009362D8 == -1)
    {
LABEL_4:
      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100949DE0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "CloudSchemaCatchUpSyncController: backgroundScheduler is unexpectedly not instantiated yet when calling q_scheduleBackgroundActivity(), bailing out", v26, 2u);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v27 = AssociatedTypeWitness;
  v28 = v56;
  (*(v8 + 32))(v56, v7, AssociatedTypeWitness);
  v29 = *&v0[*(*v0 + 120)];
  swift_getObjectType();
  v30 = [v29 schedulingState];
  if (v30)
  {
    v31 = v30;
    if (qword_1009362D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_100949DE0);
    v33 = v53;
    (*(v8 + 16))(v53, v28, v27);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349312;
      *(v36 + 4) = v31;
      *(v36 + 12) = 1026;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v38 = (*(AssociatedConformanceWitness + 8))(v27, AssociatedConformanceWitness);
      v39 = v8;
      v40 = v27;
      v41 = v38 & 1;
      v42 = *(v39 + 8);
      v42(v33, v40);
      *(v36 + 14) = v41;
      v27 = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "CloudSchemaCatchUpSyncController: SchedulingState is not .unset so no need to schedule another one {schedulingState: %{public}ld, hasPendingActivity: %{BOOL,public}d}", v36, 0x12u);
    }

    else
    {
      v42 = *(v8 + 8);
      v42(v33, v27);
    }

    v42(v28, v27);
  }

  else
  {
    v43 = swift_getAssociatedConformanceWitness();
    if ((*(v43 + 8))(AssociatedTypeWitness, v43))
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_100949DE0);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134349056;
        *(v47 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "CloudSchemaCatchUpSyncController: Already having a pending activity with the background scheduler (xpcActivity) so no need to schedule another one {schedulingState: (%{public}ld)}", v47, 0xCu);
      }

      sub_1004C2318();
    }

    else
    {
      (*(v43 + 24))(AssociatedTypeWitness, v43);
      sub_1004C2318();
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100006654(v48, qword_100949DE0);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "CloudSchemaCatchUpSyncController: Updated background activity (xpcActivity) criteria", v51, 2u);
      }
    }

    (*(v8 + 8))(v28, AssociatedTypeWitness);
  }
}

uint64_t sub_1004C17EC()
{

  sub_1004C0F28();
}

uint64_t sub_1004C1828()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004C1888();
  }

  return result;
}

void sub_1004C1888()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[2];
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v45 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    if (qword_1009362D8 == -1)
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
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100949DE0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "CloudSchemaCatchUpSyncController: Running scheduled background activity...", v20, 2u);
  }

  v21 = *(v1 + *(*v1 + 120));
  v22 = [v21 schedulingState];
  if (v22 == 1)
  {
    [v21 setSchedulingState:2];
    v23 = v1 + *(*v1 + 128);
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = *(v23 + 1);
    v26 = Logger.logObject.getter();
    if (Strong)
    {
      v43 = v3;
      v44 = v7;
      v27 = v2;
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v26, v28, "os_transaction INIT {name: com.apple.remindd.ICCloudSchemaCatchUpSyncController.q_syncRunScheduledActivity}", v29, 2u);
      }

      v30 = os_transaction_create();
      v31 = swift_allocObject();
      v31[2] = Strong;
      v31[3] = v25;
      v42[5] = Strong;
      v42[6] = v30;
      v31[4] = v30;
      v53 = sub_1000FCE50;
      v54 = v31;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v42[4] = &v51;
      v51 = sub_100019200;
      v52 = &unk_1008F4800;
      v32 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v33 = v46;
      static DispatchQoS.unspecified.getter();
      v48 = _swiftEmptyArrayStorage;
      v42[2] = sub_1004C2A68(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
      v42[1] = sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      v42[3] = sub_10000AB90();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);
      v43 = *(v43 + 8);
      (v43)(v6, v27);
      v47 = *(v47 + 8);
      v34 = v44;
      (v47)(v33, v44);

      v53 = sub_1004C2AB0;
      v54 = v1;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_100019200;
      v52 = &unk_1008F4828;
      v35 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v48 = _swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (v43)(v6, v27);
      (v47)(v33, v34);
    }

    else
    {
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v26, v40, "CloudSchemaCatchUpSyncController: Unexpected nil RDICCloudSchemaCatchUpSyncPerformer (ICCloudContext), bailing out from q_syncRunScheduledActivity()", v41, 2u);
      }
    }
  }

  else
  {
    v36 = v22;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      *(v39 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "CloudSchemaCatchUpSyncController: SchedulingState is not .scheduled when trying to call q_syncRunScheduledActivity(), bailing out {schedulingState: %{public}ld}", v39, 0xCu);
    }
  }
}

id sub_1004C1FD4()
{
  [v0 setSchedulingState:0];

  return [v0 setLastScheduledDate:0];
}

void sub_1004C2030(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(1, @"CloudSchemaCatchUpSyncBackgroundActivity", 0, 0, ObjectType, a2);
  if (qword_1009362D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100949DE0);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction RELEASE {name: com.apple.remindd.ICCloudSchemaCatchUpSyncController.q_syncRunScheduledActivity}", v6, 2u);
  }
}

uint64_t sub_1004C2158(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 88) + 8);
  v4 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v13 - v8;
  v10 = *(v2 + 104);
  swift_beginAccess();
  result = (*(v6 + 48))(a1 + v10, 1, AssociatedTypeWitness);
  if (!result)
  {
    (*(v6 + 16))(v9, a1 + v10, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  return result;
}

void sub_1004C2318()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setSchedulingState:1];
  v7 = [objc_opt_self() rem_now];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v1 setLastScheduledDate:isa];
}

id *sub_1004C2440()
{
  v1 = *v0;

  v2 = *(*v0 + 13);
  v3 = *(v1[11] + 8);
  v4 = v1[10];
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  (*(*(v4 - 8) + 8))(v0 + *(*v0 + 14), v4);
  v6 = *(v0 + *(*v0 + 15));
  swift_unknownObjectRelease();
  sub_1000536E0(v0 + *(*v0 + 16));
  return v0;
}

uint64_t sub_1004C2588()
{
  sub_1004C2440();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C261C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if ([v2 containsLargeDatabases])
  {
    v3 = 1800.0;
  }

  else if ([v2 containsOnlySmallDatabases])
  {
    v3 = 15.0;
  }

  else
  {
    v3 = 300.0;
  }

  if (qword_1009362D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100949DE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDICCloudSchemaCatchUpSyncXPCActivity: Updating scheduler (xpcActivity) criteria {estimatedDuration: %{public}f}", v7, 0xCu);
  }

  v10[0] = xmmword_1007AE160;
  v10[1] = xmmword_1007AE160;
  v11 = 0;
  v12 = 257;
  v13 = 0;
  v14 = v3;
  v15 = 256;
  v16 = 0;
  v17 = 33620225;
  v18 = 7;
  v19 = sub_10039363C(&off_1008E3678);
  v8 = *(v1 + 24);
  sub_1005A46AC(v10);
}

uint64_t sub_1004C27E0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C2844()
{
  v2 = *(*(*v0 + 24) + 120);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  return v3;
}

uint64_t sub_1004C2954@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(*v4 + 16);
  type metadata accessor for RDICCloudSchemaCatchUpSyncXPCActivity();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v12 = v9;
  v13 = a1;

  v14 = sub_1005A9A28(2, sub_1000FCE88, v11);

  *(v10 + 24) = v14;
  *a4 = v10;
  return result;
}

void sub_1004C2A40(uint64_t a1)
{
  sub_1004C03CC(a1);

  sub_1004C09F0();
}

uint64_t sub_1004C2A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C2AB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1004C1828();
}

uint64_t sub_1004C2AE8(uint64_t a1, uint64_t a2, NSObject *a3, unint64_t a4)
{
  v63 = a1;
  v5 = v4;
  v61 = a3;
  v62 = a2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v5 + 6);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v19 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v60 = v8[2];
  v60(v11, &v5[v19], v7);
  v20 = Date.isInThePast.getter();
  v21 = v8[1];
  v21(v11, v7);
  if (v20)
  {
    sub_10003F81C();
    v22 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v23 = *&v5[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v22 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v23 = *&v5[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v23)
  {
LABEL_5:
    v24 = v23 != 0;
    v25 = v23 - 1;
    if (v24)
    {
      *&v5[v22] = v25;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v26 = type metadata accessor for Logger();
        sub_100006654(v26, qword_10094A058);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v29 = 136446466;
          *(v29 + 4) = sub_10000668C(*(v5 + 4), *(v5 + 5), &v65);
          *(v29 + 12) = 2082;
          if (a4)
          {
            v30 = v61;
          }

          else
          {
            v30 = 7104878;
          }

          if (a4)
          {
            v31 = a4;
          }

          else
          {
            v31 = 0xE300000000000000;
          }

          v32 = sub_10000668C(v30, v31, &v65);

          *(v29 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v29, 0x16u);
          swift_arrayDestroy();
        }

        return (v63)();
      }

LABEL_31:
      swift_once();
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = v21;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_10094A058);

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  LODWORD(v64) = v36;
  v37 = v36;
  v38 = v35;
  if (os_log_type_enabled(v35, v37))
  {
    v39 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v65 = v62;
    *v39 = 136447234;
    *(v39 + 4) = sub_10000668C(*(v5 + 4), *(v5 + 5), &v65);
    *(v39 + 12) = 2082;
    if (a4)
    {
      v40 = v61;
    }

    else
    {
      v40 = 7104878;
    }

    v61 = v38;
    if (a4)
    {
      v41 = a4;
    }

    else
    {
      v41 = 0xE300000000000000;
    }

    v42 = sub_10000668C(v40, v41, &v65);

    v63 = v39;
    *(v39 + 14) = v42;
    *(v39 + 22) = 1040;
    *(v39 + 24) = 4;
    *(v39 + 28) = 2048;
    v43 = v60;
    v60(v11, &v5[v19], v7);
    Date.timeIntervalSinceNow.getter();
    v45 = v44;
    v46 = v59;
    v59(v11, v7);
    v47 = v63;
    *(v63 + 30) = v45;
    *(v47 + 38) = 2082;
    v43(v11, &v5[v19], v7);
    v48 = Date.description.getter();
    v50 = v49;
    v46(v11, v7);
    v51 = sub_10000668C(v48, v50, &v65);

    v52 = v63;
    *(v63 + 40) = v51;
    v53 = v61;
    _os_log_impl(&_mh_execute_header, v61, v64, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v52, 0x30u);
    swift_arrayDestroy();
    v54 = v60;

    v55 = v59;
  }

  else
  {

    v55 = v59;
    v54 = v60;
  }

  v56 = objc_opt_self();
  v54(v11, &v5[v19], v7);
  Date.timeIntervalSinceNow.getter();
  v58 = v57;
  v55(v11, v7);
  [v56 throttledErrorWithRemainingTimeInterval:v58];
  return swift_willThrow();
}

uint64_t sub_1004C31B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A058);
  v1 = sub_100006654(v0, qword_10094A058);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C3280()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDThrottler()
{
  result = qword_10094A0A8;
  if (!qword_10094A0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C3380()
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

void sub_1004C3438(uint64_t a1, unint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v69 = a6;
  v67 = a7;
  v68 = a5;
  v71 = a4;
  v66 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a3 + 6);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v21 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  swift_beginAccess();
  v65 = v10[2];
  v65(v13, &a3[v21], v9);
  v22 = Date.isInThePast.getter();
  v23 = v10[1];
  v23(v13, v9);
  if (v22)
  {
    sub_10003F81C();
    v24 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v25 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v24 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v25 = *&a3[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v25)
  {
LABEL_5:
    v26 = v25 != 0;
    v27 = v25 - 1;
    if (v26)
    {
      *&a3[v24] = v27;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v28 = type metadata accessor for Logger();
        sub_100006654(v28, qword_10094A058);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v31 = 136446466;
          *(v31 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v72);
          *(v31 + 12) = 2082;
          if (a2)
          {
            v32 = v66;
          }

          else
          {
            v32 = 7104878;
          }

          if (a2)
          {
            v33 = a2;
          }

          else
          {
            v33 = 0xE300000000000000;
          }

          v34 = sub_10000668C(v32, v33, &v72);

          *(v31 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v29, v30, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v31, 0x16u);
          swift_arrayDestroy();
        }

        v35 = v71;
        v36 = *&v71[OBJC_IVAR____TtC7remindd27RDXPCSyncInterfacePerformer_cloudKitThrottler];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1004C2AE8(v68, v69, v37, v38);

        return;
      }

LABEL_31:
      swift_once();
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v64 = v23;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_10094A058);

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  LODWORD(v70) = v41;
  v42 = v41;
  v43 = v40;
  if (os_log_type_enabled(v40, v42))
  {
    v44 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v72 = v68;
    *v44 = 136447234;
    *(v44 + 4) = sub_10000668C(*(a3 + 4), *(a3 + 5), &v72);
    *(v44 + 12) = 2082;
    if (a2)
    {
      v45 = v66;
    }

    else
    {
      v45 = 7104878;
    }

    v67 = v43;
    if (a2)
    {
      v46 = a2;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_10000668C(v45, v46, &v72);

    v69 = v44;
    *(v44 + 14) = v47;
    *(v44 + 22) = 1040;
    *(v44 + 24) = 4;
    *(v44 + 28) = 2048;
    v48 = v65;
    v65(v13, &a3[v21], v9);
    Date.timeIntervalSinceNow.getter();
    v50 = v49;
    v51 = v64;
    v64(v13, v9);
    v52 = v69;
    *(v69 + 30) = v50;
    *(v52 + 38) = 2082;
    v48(v13, &a3[v21], v9);
    v53 = Date.description.getter();
    v55 = v54;
    v51(v13, v9);
    v56 = sub_10000668C(v53, v55, &v72);

    v57 = v69;
    *(v69 + 40) = v56;
    v58 = v67;
    _os_log_impl(&_mh_execute_header, v67, v70, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v57, 0x30u);
    swift_arrayDestroy();
    v59 = v65;

    v60 = v64;
  }

  else
  {

    v60 = v64;
    v59 = v65;
  }

  v61 = objc_opt_self();
  v59(v13, &a3[v21], v9);
  Date.timeIntervalSinceNow.getter();
  v63 = v62;
  v60(v13, v9);
  [v61 throttledErrorWithRemainingTimeInterval:v63];
  swift_willThrow();
}

void sub_1004C3B48(uint64_t a1, char *a2, char *a3, void *a4, void *a5, void (*a6)(id), void *a7, void *a8)
{
  v70 = a6;
  v76 = a5;
  v77 = a8;
  v75 = a2;
  v69 = a1;
  v74 = type metadata accessor for Date();
  v11 = *(v74 - 8);
  v12 = v11[8];
  __chkstk_darwin(v74);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = a3;
  v21 = *(a3 + 6);
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15, v18);
  v22 = a4;
  v23 = v76;
  v76 = a7;

  v77 = v77;
  v24 = v21;
  LOBYTE(a7) = _dispatchPreconditionTest(_:)();
  v26 = *(v16 + 8);
  v25 = (v16 + 8);
  v26(v20, v15);
  if ((a7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v72 = v23;
  v73 = v22;
  v27 = OBJC_IVAR____TtC7remindd11RDThrottler_throttleResetDate;
  v21 = v78;
  swift_beginAccess();
  v25 = v11 + 2;
  v28 = v74;
  v68 = v11[2];
  v68(v14, &v21[v27], v74);
  v29 = Date.isInThePast.getter();
  v30 = v11[1];
  v67 = v11 + 1;
  v30(v14, v28);
  if (v29)
  {
    sub_10003F81C();
    v31 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
    v32 = *&v21[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
    goto LABEL_5;
  }

  v31 = OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount;
  v32 = *&v21[OBJC_IVAR____TtC7remindd11RDThrottler_currentIntervalAllowedOperationsCount];
  if (v32)
  {
LABEL_5:
    v33 = v32 != 0;
    v34 = v32 - 1;
    v14 = v75;
    if (v33)
    {
      v25 = v77;
      *&v21[v31] = v34;
      if (qword_1009362E0 == -1)
      {
LABEL_8:
        v35 = type metadata accessor for Logger();
        sub_100006654(v35, qword_10094A058);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = v21;
          v39 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v39 = 136446466;
          *(v39 + 4) = sub_10000668C(*(v38 + 4), *(v38 + 5), &v79);
          *(v39 + 12) = 2082;
          if (v14)
          {
            v40 = v69;
          }

          else
          {
            v40 = 7104878;
          }

          if (v14)
          {
            v41 = v14;
          }

          else
          {
            v41 = 0xE300000000000000;
          }

          v42 = sub_10000668C(v40, v41, &v79);

          *(v39 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v36, v37, "Throttler allows and is going to run operation {identifier: %{public}s, op: %{public}s}", v39, 0x16u);
          swift_arrayDestroy();
        }

        v44 = v72;
        v43 = v73;
        sub_1001BF0FC(v73, v72, v70, v76, v25);

        return;
      }

LABEL_31:
      swift_once();
      goto LABEL_8;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v21;
  if (qword_1009362E0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_10094A058);
  v47 = v75;

  swift_retain_n();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();
  static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge()();

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v70 = v48;
    v51 = v50;
    v71 = swift_slowAlloc();
    v79 = v71;
    *v51 = 136447234;
    *(v51 + 4) = sub_10000668C(*(v45 + 4), *(v45 + 5), &v79);
    *(v51 + 12) = 2082;
    if (v47)
    {
      v52 = v69;
    }

    else
    {
      v52 = 7104878;
    }

    LODWORD(v69) = v49;
    if (v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = 0xE300000000000000;
    }

    v54 = sub_10000668C(v52, v53, &v79);

    *(v51 + 14) = v54;
    *(v51 + 22) = 1040;
    *(v51 + 24) = 4;
    *(v51 + 28) = 2048;
    v55 = v68;
    v68(v14, &v45[v27], v28);
    Date.timeIntervalSinceNow.getter();
    v57 = v56;
    v30(v14, v28);
    *(v51 + 30) = v57;
    *(v51 + 38) = 2082;
    v55(v14, &v45[v27], v28);
    v58 = Date.description.getter();
    v60 = v59;
    v30(v14, v28);
    v61 = sub_10000668C(v58, v60, &v79);

    *(v51 + 40) = v61;
    v62 = v70;
    _os_log_impl(&_mh_execute_header, v70, v69, "Throttler denied operation {identifier: %{public}s, op: %{public}s, remainingTimeInterval: %.*f, throttleResetDate: %{public}s}", v51, 0x30u);
    swift_arrayDestroy();

    v63 = v68;
    v45 = v78;
  }

  else
  {

    v63 = v68;
  }

  v64 = objc_opt_self();
  v63(v14, &v45[v27], v28);
  Date.timeIntervalSinceNow.getter();
  v66 = v65;
  v30(v14, v28);
  [v64 throttledErrorWithRemainingTimeInterval:v66];
  swift_willThrow();
}

uint64_t sub_1004C42C0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A158);
  v1 = sub_100006654(v0, qword_10094A158);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1004C4394()
{
  v1 = [v0 reminder];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 account];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 accountTypeHost];
      v6 = [v5 isCloudKit];

      if (v6)
      {
        v7 = sub_1004C4B94();
        if ((v8 & 1) == 0)
        {
          v9 = v7;

          return *&v9;
        }
      }

      else
      {
        if (qword_1009362E8 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100006654(v35, qword_10094A158);
        v36 = v0;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v51 = v40;
          *v39 = 136446210;
          v41 = [v36 remObjectID];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 description];

            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;
          }

          else
          {
            v44 = 7104878;
            v46 = 0xE300000000000000;
          }

          v49 = sub_10000668C(v44, v46, &v51);

          *(v39 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v37, v38, "REMCDAlarm.generateNonce(): alarm does not belong to CK account, skip generateNonce() {alarmID: %{public}s}", v39, 0xCu);
          sub_10000607C(v40);
        }
      }

      v10 = kREMNonceUnset;

      return v10;
    }

    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094A158);
    v24 = v0;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v28;
      *v27 = 136446210;
      v29 = [v24 remObjectID];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 description];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 7104878;
        v34 = 0xE300000000000000;
      }

      v48 = sub_10000668C(v32, v34, &v51);

      *(v27 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v25, v26, "REMCDAlarm.generateNonce(): alarm.reminder.account unexpectedly nil trying to call generateNonce() {alarmID: %{public}s}", v27, 0xCu);
      sub_10000607C(v28);
    }

    v10 = kREMNonceUnset;
  }

  else
  {
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_10094A158);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51 = v16;
      *v15 = 136446210;
      v17 = [v12 remObjectID];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 description];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 7104878;
        v22 = 0xE300000000000000;
      }

      v47 = sub_10000668C(v20, v22, &v51);

      *(v15 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v13, v14, "REMCDAlarm.generateNonce(): alarm.reminder not set before trying to call generateNonce() {alarmID: %{public}s}", v15, 0xCu);
      sub_10000607C(v16);
    }

    return kREMNonceUnset;
  }

  return v10;
}

void sub_1004C4958(const char *a1)
{
  v3 = [v1 alarm];
  if (v3)
  {
    v4 = v3;
    sub_1004C4394();
  }

  else
  {
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A158);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v11 = [v6 remObjectID];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 description];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = sub_10000668C(v14, v16, &v18);

      *(v9 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
      sub_10000607C(v10);
    }
  }
}

uint64_t sub_1004C4B94()
{
  v1 = v0;
  if (qword_100935E28 != -1)
  {
    swift_once();
  }

  v2 = qword_100974D20;
  if (!*(qword_100974D20 + 16) || (v3 = sub_100005F4C(0xD000000000000011, 0x80000001007EA5C0), (v4 & 1) == 0))
  {
    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094A158);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_13;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "REMAlarmCDIngestor: Fatal programming fault, was expecting to map dueDateComponents storage value key to CD value key", v18, 2u);
LABEL_12:

    goto LABEL_13;
  }

  v5 = (*(v2 + 56) + 16 * v3);
  v7 = *v5;
  v6 = v5[1];

  v8 = [v1 resolutionTokenMap];
  if (!v8)
  {

    if (qword_1009362E8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_10094A158);
    v20 = v1;
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v16, v21))
    {
      goto LABEL_13;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48 = v23;
    *v22 = 136446210;
    v24 = [v20 remObjectID];
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

    v41 = sub_10000668C(v27, v29, &v48);

    *(v22 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v16, v21, "REMAlarmCDIngestor: Failed to get resolution token map from reminder {reminderID: %{public}s}", v22, 0xCu);
    sub_10000607C(v23);

    goto LABEL_12;
  }

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 getTokenForKey:v10];

  if (v11)
  {
    [v11 generateNonce];
    v13 = v12;

    return v13;
  }

  if (qword_1009362E8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_10094A158);
  v31 = v1;
  v16 = v9;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v32, v33))
  {

    return 0;
  }

  v34 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  *v34 = 136446466;
  v35 = [v31 remObjectID];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 description];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v38 = 7104878;
    v40 = 0xE300000000000000;
  }

  v42 = sub_10000668C(v38, v40, &v48);

  *(v34 + 4) = v42;
  *(v34 + 12) = 2082;
  v43 = [v16 getTokenKeys];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = Array.description.getter();
  v46 = v45;

  v47 = sub_10000668C(v44, v46, &v48);

  *(v34 + 14) = v47;
  _os_log_impl(&_mh_execute_header, v32, v33, "REMAlarmCDIngestor: Failed to find the resolution token of 'dueDateComponents' from reminder {reminderID: %{public}s, mapKeys: %{public}s}", v34, 0x16u);
  swift_arrayDestroy();

LABEL_13:
  return 0;
}

id static REMCDAccountListData.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1004C5194@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for REMCDAccountListData();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1004C51D8()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  URL.appendingPathComponent(_:)();
  v10 = *(v0 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion);
  v11 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = type metadata accessor for JSONEncoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  JSONEncoder.init()();
  v35[0] = v10;
  v35[1] = v12;
  sub_1004D08BC();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;

  Data.write(to:options:)();
  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_10094A170);
  (*(v3 + 16))(v6, v9, v2);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v16;
    v24 = v23;
    v35[0] = v23;
    *v22 = 136315138;
    v32 = URL.absoluteString.getter();
    v33 = v18;
    v26 = v25;
    v27 = *(v3 + 8);
    v27(v6, v2);
    v28 = sub_10000668C(v32, v26, v35);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "RDCoreBehaviorModel: New feedback info saved to {%s}", v22, 0xCu);
    sub_10000607C(v24);

    sub_10001BBA0(v34, v33);

    v27(v9, v2);
  }

  else
  {
    sub_10001BBA0(v16, v18);

    v30 = *(v3 + 8);
    v30(v6, v2);
    v30(v9, v2);
  }

  return 1;
}

uint64_t sub_1004C5794(uint64_t a1)
{
  v2 = v1;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v33 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v6 = v33 + 24 * v3;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v38[0] = v7;
    v38[1] = v8;
    v39 = v9;
    sub_1004D45B0(v7, v8, v9);
    v10 = v2;
    sub_1004CD47C(v38, &v40);
    if (v2)
    {
      sub_1004D45F8(v7, v8, v9);

      return v4;
    }

    sub_1004D45F8(v7, v8, v9);
    v11 = v40;
    v12 = v40 >> 62;
    v13 = v40 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v4 >> 62;
    if (v4 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v16 = v31 + v13;
      if (__OFADD__(v31, v13))
      {
LABEL_35:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v36 = v13;
    if (result)
    {
      if (v14)
      {
        goto LABEL_17;
      }

      v17 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v14)
      {
LABEL_17:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_18;
      }

      v17 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = *(v17 + 16);
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v20 >> 1) - v19) < v36)
    {
      goto LABEL_40;
    }

    v35 = v4;
    v23 = v17 + 8 * v19 + 32;
    v32 = v17;
    if (v12)
    {
      if (v21 < 1)
      {
        goto LABEL_42;
      }

      sub_10000CB48(&unk_10094A440, &qword_10094A438, &unk_1007AE590);
      for (i = 0; i != v21; ++i)
      {
        sub_1000F5104(&qword_10094A438, &unk_1007AE590);
        v25 = sub_100011090(v37, i, v11);
        v27 = *v26;
        (v25)(v37, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
      swift_arrayInitWithCopy();
    }

    v2 = v10;
    v4 = v35;
    if (v36 >= 1)
    {
      v28 = *(v32 + 16);
      v29 = __OFADD__(v28, v36);
      v30 = v28 + v36;
      if (v29)
      {
        goto LABEL_41;
      }

      *(v32 + 16) = v30;
    }

LABEL_4:
    if (++v3 == v34)
    {
      return v4;
    }
  }

  v22 = v17;
  result = _CocoaArrayWrapper.endIndex.getter();
  v17 = v22;
  v21 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v36 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1004C5AE0(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion;
  if (*(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion) >= a1)
  {
    if (qword_1009362F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10094A170);
    v8 = v1;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = *(v8 + v3);

      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDCoreBehaviorModel: Current feedback version {%lu}, skipping reset to version {%lu}", v11, 0x16u);
    }

    else
    {
    }

    v6 = 0;
  }

  else
  {
    v4 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
    swift_beginAccess();
    v5 = *(v1 + v4);
    *(v1 + v4) = _swiftEmptyDictionarySingleton;

    *(v1 + v3) = a1;
    v6 = sub_1004C51D8();
  }

  return v6 & 1;
}

double sub_1004C5C68(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v77 = a4;
  v72 = a3;
  v74 = a2;
  v73 = a1;
  v76 = *v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  __chkstk_darwin(v8);
  v80 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v81);
  v78 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v75 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v87 = &v65 - v17;
  v18 = type metadata accessor for REMSuggestedAttributeInputDataFrame();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v84 = *(v22 - 8);
  v85 = v22;
  v23 = *(v84 + 64);
  __chkstk_darwin(v22);
  v86 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if ([swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"] && objc_msgSend(objc_opt_self(), "supportsTaskSpecificEvents"))
  {
    v67 = v6;
    v68 = v5;
    URL.appendingPathComponent(_:)();
    sub_1004D09D4();
    sub_1004D0AC0();
    v70 = v14;
    v66 = objc_allocWithZone(BMMiningTask);
    URL._bridgeToObjectiveC()(&v90);
    v26 = v25;
    sub_1000F5104(&unk_100943AF0, &unk_100797FE0);
    v69 = v13;
    sub_10000CB48(&qword_10093A9E8, &unk_100943AF0, &unk_100797FE0);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v28 = Set._bridgeToObjectiveC()().super.isa;

    v29 = [v66 initWithStorageURL:v26 types:isa targetTypes:v28 samplingInterval:v72 absoluteSupport:2.0 confidence:a5];
    v72 = v29;

    v30 = v71;
    v31 = *(v71 + 16);
    v31(v21, v73, v18);
    v32 = type metadata accessor for RDCoreBehaviorModelTrainingDelegate(0);
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer] = 0;
    v31(&v33[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_trainingDataFrame], v21, v18);
    *&v33[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_intentWords] = v74;
    v34 = &v33[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics];
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = 0;
    *(v34 + 3) = -2;
    v89.receiver = v33;
    v89.super_class = v32;

    v35 = objc_msgSendSuper2(&v89, "init");
    v73 = v35;
    (*(v30 + 8))(v21, v18);
    [v29 setDelegate:v35];
    v36 = v87;
    Date.init()();
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v74 = static OS_dispatch_queue.main.getter();
    v37 = v70;
    v38 = v75;
    v39 = v69;
    (*(v70 + 16))(v75, v36, v69);
    v40 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v41 = (v15 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = v68;
    (*(v37 + 32))(v44 + v40, v38, v39);
    v45 = v72;
    *(v44 + v41) = v72;
    v46 = v73;
    *(v44 + v42) = v73;
    v47 = v76;
    *(v44 + v43) = v77;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;
    aBlock[4] = sub_1004D4640;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F4978;
    v48 = _Block_copy(aBlock);

    v49 = v45;
    v50 = v46;

    v51 = v78;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000546DC(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    v52 = v80;
    v53 = v83;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v54 = v74;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v82 + 8))(v52, v53);
    (*(v79 + 8))(v51, v81);
    if (qword_1009362F0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_10094A170);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "RDCoreBehaviorModel: CoreBehavior mining task will begin mining", v58, 2u);
    }

    [v49 mine];
    (*(v70 + 8))(v87, v69);
    (*(v84 + 8))(v86, v85);
    v59 = *&v50[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics];
    v60 = *&v50[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics + 8];
    a5 = *&v50[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics + 16];
    v61 = *&v50[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics + 24];
  }

  else
  {
    v62 = objc_opt_self();
    v63 = String._bridgeToObjectiveC()();
    [v62 internalErrorWithDebugDescription:v63];

    swift_willThrow();
  }

  return a5;
}

char *sub_1004C6658(uint64_t a1)
{
  v25 = a1;
  v2 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if (![swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"])
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = _swiftEmptyArrayStorage;
  if (![objc_opt_self() supportsTaskSpecificEvents])
  {
    return v7;
  }

  v8 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  v9 = OrderedDictionary.values.getter();
  (*(v3 + 8))(v6, v2);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_16:

    return v7;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_5:
  v11 = v9;
  v27 = _swiftEmptyArrayStorage;
  result = sub_100026EF4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v7 = v27;
    v14 = v9;
    v26 = v9 & 0xC000000000000001;
    v15 = v25;
    v16 = v11;
    do
    {
      if (v26)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v14 + 8 * v13 + 32);
      }

      v18 = v17;
      v19 = sub_1004C8964(v17, v15);
      v21 = v20;

      v27 = v7;
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        sub_100026EF4((v22 > 1), v23 + 1, 1);
        v15 = v25;
        v7 = v27;
      }

      ++v13;
      v7[2] = v23 + 1;
      v24 = &v7[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v14 = v16;
    }

    while (v10 != v13);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1004C68F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v140 = a5;
  v139 = a4;
  v9 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v127 - v12;
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if (![swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"])
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  if ([objc_opt_self() supportsTaskSpecificEvents])
  {
    v138 = v13;
    *&v143 = v5;
    sub_1000F5104(&qword_10094A3A0, &qword_1007A46E8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    REMSuggestedAttributeInput.list.getter();
    v16 = REMSuggestedList.listIdentifier.getter();
    v18 = v17;

    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 48) = 2;
    v149[0] = v15;
    REMSuggestedAttributeInput.dueDayOfWeek.getter();
    v19 = REMSuggestedWeekDay.value.getter();

    if ((v19 - 8) >= 0xFFFFFFFFFFFFFFF9)
    {
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      v20 = v15;
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1003679FC((v21 > 1), v22 + 1, 1, v15);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[24 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = 0;
      v23[48] = 3;
      v149[0] = v20;
    }

    else
    {
      v20 = v15;
    }

    v24 = REMSuggestedAttributeInput.location.getter();
    v25 = REMSuggestedLocation.isSpecificLocation.getter();
    v128 = v24;
    if (v25)
    {
      v26 = *(v20 + 2);
      v27 = *(v20 + 3);

      if (v26 >= v27 >> 1)
      {
        v20 = sub_1003679FC((v27 > 1), v26 + 1, 1, v20);
      }

      *(v20 + 2) = v26 + 1;
      v28 = &v20[24 * v26];
      *(v28 + 4) = v128;
      *(v28 + 5) = 0;
      v28[48] = 4;
      v149[0] = v20;
    }

    *&v142 = v9;
    *&v141 = v10;
    if (a3)
    {
      v29 = *(v20 + 2);
      v30 = *(v20 + 3);

      if (v29 >= v30 >> 1)
      {
        v20 = sub_1003679FC((v30 > 1), v29 + 1, 1, v20);
      }

      *(v20 + 2) = v29 + 1;
      v31 = &v20[24 * v29];
      *(v31 + 4) = a2;
      *(v31 + 5) = a3;
      v32 = v20;
      v31[48] = 5;
      v149[0] = v20;
    }

    else
    {
      v32 = v20;
    }

    if (REMSuggestedAttributeInput.flagged.getter())
    {
      v34 = *(v32 + 16);
      v33 = *(v32 + 24);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1003679FC((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 16) = v34 + 1;
      v35 = v32 + 24 * v34;
      *(v35 + 32) = xmmword_1007AE440;
      *(v35 + 48) = 7;
      v149[0] = v32;
    }

    if (REMSuggestedAttributeInput.priority.getter())
    {
      v36 = REMSuggestedAttributeInput.priority.getter();
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        v126 = v36;
        v32 = sub_1003679FC((v37 > 1), v38 + 1, 1, v32);
        v36 = v126;
      }

      *(v32 + 16) = v38 + 1;
      v39 = v32 + 24 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = 0;
      *(v39 + 48) = 8;
      v149[0] = v32;
    }

    v137 = a1;
    v40 = REMSuggestedAttributeInput.tags.getter();
    v41 = 0;
    v144 = v40;
    v42 = 1 << *(v40 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v40 + 56;
    v45 = v43 & *(v40 + 56);
    v46 = (v42 + 63) >> 6;
    if (v45)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v47 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (v47 >= v46)
      {
        break;
      }

      v45 = *(v44 + 8 * v47);
      ++v41;
      if (v45)
      {
        v41 = v47;
        do
        {
LABEL_33:
          v48 = (v144[6] + ((v41 << 10) | (16 * __clz(__rbit64(v45)))));
          v50 = *v48;
          v49 = v48[1];
          a2 = v32;
          v51 = *(v32 + 16);
          v52 = *(v32 + 24);

          if (v51 >= v52 >> 1)
          {
            a2 = sub_1003679FC((v52 > 1), v51 + 1, 1, a2);
          }

          v45 &= v45 - 1;
          *(a2 + 16) = v51 + 1;
          v32 = a2;
          v53 = a2 + 24 * v51;
          *(v53 + 32) = v50;
          *(v53 + 40) = v49;
          *(v53 + 48) = 1;
          v149[0] = a2;
        }

        while (v45);
      }
    }

    a2 = REMSuggestedAttributeInput.contact.getter();
    if (REMSuggestedContact.isValid.getter())
    {
      v54 = *(v32 + 16);
      v55 = *(v32 + 24);

      if (v54 >= v55 >> 1)
      {
        v32 = sub_1003679FC((v55 > 1), v54 + 1, 1, v32);
      }

      *(v32 + 16) = v54 + 1;
      v56 = v32 + 24 * v54;
      *(v56 + 32) = a2;
      *(v56 + 40) = 0;
      *(v56 + 48) = 0;
      v149[0] = v32;
    }

    if (qword_1009362F0 != -1)
    {
      goto LABEL_88;
    }

    while (1)
    {
      v57 = type metadata accessor for Logger();
      v129 = sub_100006654(v57, qword_10094A170);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v60 = os_log_type_enabled(v58, v59);
      v127[2] = v32;
      v127[1] = a2;
      if (v60)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v145[0] = v62;
        *v61 = 136315138;

        v63 = Array.description.getter();
        v65 = v64;

        v66 = sub_10000668C(v63, v65, v145);

        *(v61 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v58, v59, "RDCoreBehaviorModel: corebehavior context: %s", v61, 0xCu);
        sub_10000607C(v62);
      }

      v67 = v143;
      v68 = v138;
      v69 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules;
      swift_beginAccess();
      v70 = v141;
      v71 = v142;
      (*(v141 + 16))(v68, v67 + v69, v142);
      v72 = OrderedDictionary.values.getter();
      v73 = *(v70 + 8);
      a2 = v70 + 8;
      v73(v68, v71);

      v74 = sub_1004D0BA0(v72, v149);

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      v32 = v74 >> 62;
      if (os_log_type_enabled(v75, v76))
      {
        a2 = swift_slowAlloc();
        *a2 = 134349056;
        if (v32)
        {
          v77 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v77 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(a2 + 4) = v77;

        _os_log_impl(&_mh_execute_header, v75, v76, "RDCoreBehaviorModel: number of matching rules: %{public}ld", a2, 0xCu);
      }

      else
      {
      }

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        a2 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v145[0] = v80;
        *a2 = 136315138;
        sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
        v81 = Array.description.getter();
        v83 = sub_10000668C(v81, v82, v145);

        *(a2 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v78, v79, "RDCoreBehaviorModel: matching rules:\n %s", a2, 0xCu);
        sub_10000607C(v80);
      }

      v148 = _swiftEmptyArrayStorage;
      if (v32)
      {
        v84 = _CocoaArrayWrapper.endIndex.getter();
        if (!v84)
        {
LABEL_90:
          v110 = _swiftEmptyArrayStorage;
          goto LABEL_91;
        }
      }

      else
      {
        v84 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v84)
        {
          goto LABEL_90;
        }
      }

      v85 = 0;
      v134 = v74 & 0xC000000000000001;
      v133 = v74 & 0xFFFFFFFFFFFFFF8;
      v132 = (v74 + 32);
      v131 = v74;
      v130 = v84;
LABEL_55:
      if (v134)
      {
        v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v85 >= *(v133 + 16))
        {
          goto LABEL_87;
        }

        v86 = v132[v85];
      }

      v144 = v86;
      v87 = __OFADD__(v85, 1);
      v88 = v85 + 1;
      if (!v87)
      {
        v137 = v88;
        v89 = [v144 consequent];
        v90 = sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
        sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460);
        v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v136 = v32;
        v138 = v90;
        if ((v32 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v32 = v149[1];
          v91 = v149[2];
          v92 = v149[3];
          a2 = v149[4];
          v93 = v149[5];
        }

        else
        {
          v94 = -1 << *(v32 + 32);
          v91 = v32 + 56;
          v92 = ~v94;
          v95 = -v94;
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          else
          {
            v96 = -1;
          }

          v93 = v96 & *(v32 + 56);

          a2 = 0;
        }

        v135 = v92;
        v97 = (v92 + 64) >> 6;
        v98 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v32 < 0)
          {
            v106 = __CocoaSet.Iterator.next()();
            if (!v106)
            {
              goto LABEL_54;
            }

            v147 = v106;
            swift_dynamicCast();
            v105 = *&v145[0];
            v103 = a2;
            v104 = v93;
            if (!*&v145[0])
            {
              goto LABEL_54;
            }
          }

          else
          {
            v101 = a2;
            v102 = v93;
            v103 = a2;
            if (!v93)
            {
              while (1)
              {
                v103 = v101 + 1;
                if (__OFADD__(v101, 1))
                {
                  break;
                }

                if (v103 >= v97)
                {
                  goto LABEL_54;
                }

                v102 = *(v91 + 8 * v103);
                ++v101;
                if (v102)
                {
                  goto LABEL_73;
                }
              }

              __break(1u);
              goto LABEL_85;
            }

LABEL_73:
            v104 = (v102 - 1) & v102;
            v105 = *(*(v32 + 48) + ((v103 << 9) | (8 * __clz(__rbit64(v102)))));
            if (!v105)
            {
LABEL_54:

              sub_10001B860();

              sub_100272438(v98);
              v85 = v137;
              if (v137 != v130)
              {
                goto LABEL_55;
              }

              v110 = v148;
LABEL_91:

              v111 = Logger.logObject.getter();
              v112 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                *&v145[0] = v114;
                *v113 = 136315138;
                v115 = Array.description.getter();
                v117 = sub_10000668C(v115, v116, v145);

                *(v113 + 4) = v117;
                _os_log_impl(&_mh_execute_header, v111, v112, "RDCoreBehaviorModel: all corebehavior predictions: %s", v113, 0xCu);
                sub_10000607C(v114);
              }

              v14 = sub_1004CB2B4(2, v110);

              v118 = Logger.logObject.getter();
              v119 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                *&v145[0] = v121;
                *v120 = 136315138;
                v122 = Array.description.getter();
                v124 = sub_10000668C(v122, v123, v145);

                *(v120 + 4) = v124;
                _os_log_impl(&_mh_execute_header, v118, v119, "RDCoreBehaviorModel: top corebehavior predictions: %s", v120, 0xCu);
                sub_10000607C(v121);
              }

              return v14;
            }
          }

          v147 = v105;
          sub_1004C8260(&v147, v140 & 1, v144, v139, v145);

          v107 = v146;
          if (v146 != 255)
          {
            v143 = v145[0];
            v142 = v145[1];
            v141 = v145[2];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_1003679E0(0, *(v98 + 2) + 1, 1, v98);
            }

            v109 = *(v98 + 2);
            v108 = *(v98 + 3);
            if (v109 >= v108 >> 1)
            {
              v98 = sub_1003679E0((v108 > 1), v109 + 1, 1, v98);
            }

            *(v98 + 2) = v109 + 1;
            v99 = &v98[56 * v109];
            v100 = v142;
            *(v99 + 2) = v143;
            *(v99 + 3) = v100;
            *(v99 + 4) = v141;
            v99[80] = v107;
          }

          a2 = v103;
          v93 = v104;
        }
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      swift_once();
    }
  }

  return v14;
}

void sub_1004C7804(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  v16 = a3 * 0.05;
  v17 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
  swift_beginAccess();
  v18 = *(v4 + v17);
  if (*(v18 + 16) && (v19 = sub_100005F4C(a1, a2), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();

    v23 = sub_1004D00EC(v22, v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v23;
    sub_1002C99E0(isUniquelyReferenced_nonNull_native, v16, v15);
    v25 = v53[0];
  }

  else
  {
    swift_endAccess();
    sub_1000F5104(&qword_10094A398, &unk_1007AE540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = v15;
    *(inited + 40) = v16;
    v25 = sub_100390784(inited);
    swift_setDeallocating();
  }

  swift_beginAccess();

  v27 = *(v4 + v17);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v4 + v17);
  *(v4 + v17) = 0x8000000000000000;
  sub_1002C99B4(v25, a1, a2, v28);

  v29 = v50;
  *(v4 + v17) = v50;
  swift_endAccess();
  if (*(v29 + 16))
  {
    v30 = sub_100005F4C(a1, a2);
    if (v31)
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      swift_beginAccess();
      v50 = a1;
      v51 = a2;

      sub_1000F5104(&qword_10094A380, &unk_1007AE530);
      OrderedDictionary.subscript.getter();

      v33 = v52;
      if (!v52)
      {
        swift_endAccess();

        return;
      }

      swift_endAccess();
      [v33 confidence];
      v35 = v34;
      v36 = 0;
      v37 = 1 << *(v32 + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v39 = v38 & *(v32 + 64);
      v40 = (v37 + 63) >> 6;
      for (i = 0.0; v39; i = i + *(*(v32 + 56) + ((v42 << 9) | (8 * v43))))
      {
        v42 = v36;
LABEL_16:
        v43 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
      }

      while (1)
      {
        v42 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v42 >= v40)
        {

          if (v35 + i >= *(v4 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_confidenceThreshold))
          {

            return;
          }

          if (qword_1009362F0 == -1)
          {
LABEL_20:
            v44 = type metadata accessor for Logger();
            sub_100006654(v44, qword_10094A170);

            v45 = Logger.logObject.getter();
            v46 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v53[0] = v48;
              *v47 = 136315138;
              *(v47 + 4) = sub_10000668C(a1, a2, v53);
              _os_log_impl(&_mh_execute_header, v45, v46, "RDCoreBehaviorModel: Removing rule: %s", v47, 0xCu);
              sub_10000607C(v48);
            }

            v50 = a1;
            v51 = a2;
            swift_beginAccess();
            OrderedDictionary.removeValue(forKey:)();
            swift_endAccess();

            return;
          }

LABEL_27:
          swift_once();
          goto LABEL_20;
        }

        v39 = *(v32 + 64 + 8 * v42);
        ++v36;
        if (v39)
        {
          v36 = v42;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }
}

Swift::Int sub_1004C7D34(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436428(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1004CE61C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1004C7DA0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10043653C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1004CE714(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004C7E1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A170);
  v1 = sub_100006654(v0, qword_10094A170);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C7EE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094A450, &qword_1007AE610);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004D4BA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_1000F5104(&qword_10094A460, &qword_1007AE618);
    sub_1004D4BF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1004C807C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_1004C80BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001007FA8B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1004C81A0(uint64_t a1)
{
  v2 = sub_1004D4BA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C81DC(uint64_t a1)
{
  v2 = sub_1004D4BA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004D0ED8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1004C8260@<X0>(void **a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  if (sub_1004C8824(*a1, 4u) & 1) != 0 && (v77 = [v9 value], (swift_dynamicCast()))
  {
    if (a2)
    {
      v10 = sub_1004C8964(a3, a4);
    }

    else
    {
      v10 = BMRule.shortDescription.getter();
    }

    v23 = v10;
    v24 = v11;
    type metadata accessor for REMSuggestedList();
    v25 = REMSuggestedList.__allocating_init(stringLiteral:)();
    [a3 support];
    v27 = v26;
    result = [a3 confidence];
    *a5 = v25;
    *(a5 + 8) = v27;
    *(a5 + 16) = v29;
    *(a5 + 24) = v23;
    *(a5 + 32) = v24;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
  }

  else
  {
    if (sub_1004C8824(v9, 6u) & 1) != 0 && (v75 = [v9 value], (swift_dynamicCast()))
    {
      if (a2)
      {
        v12 = sub_1004C8964(a3, a4);
      }

      else
      {
        v12 = BMRule.shortDescription.getter();
      }

      v38 = v12;
      v39 = v13;
      v40 = type metadata accessor for REMSuggestedWeekDay();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v43 = REMSuggestedWeekDay.init(_:)();
      [a3 support];
      v45 = v44;
      result = [a3 confidence];
      *a5 = v43;
      *(a5 + 8) = v45;
      *(a5 + 16) = v46;
      *(a5 + 24) = v38;
      *(a5 + 32) = v39;
      *(a5 + 40) = 0;
      v37 = 2;
    }

    else if (sub_1004C8824(v9, 5u) & 1) != 0 && (v77 = [v9 value], (swift_dynamicCast()))
    {
      if (a2)
      {
        v14 = sub_1004C8964(a3, a4);
      }

      else
      {
        v14 = BMRule.shortDescription.getter();
      }

      v47 = v14;
      v48 = v15;
      v49 = type metadata accessor for REMSuggestedLocation();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      v52 = REMSuggestedLocation.init(stringLiteral:)();
      [a3 support];
      v54 = v53;
      result = [a3 confidence];
      *a5 = v52;
      *(a5 + 8) = v54;
      *(a5 + 16) = v55;
      *(a5 + 24) = v47;
      *(a5 + 32) = v48;
      *(a5 + 40) = 0;
      v37 = 1;
    }

    else if (sub_1004C8824(v9, 8u))
    {
      if (a2)
      {
        v16 = sub_1004C8964(a3, a4);
      }

      else
      {
        v16 = BMRule.shortDescription.getter();
      }

      v32 = v16;
      v33 = v17;
      [a3 support];
      v35 = v34;
      result = [a3 confidence];
      *a5 = 1;
      *(a5 + 8) = v35;
      *(a5 + 16) = v36;
      *(a5 + 24) = v32;
      *(a5 + 32) = v33;
      *(a5 + 40) = 0;
      v37 = 3;
    }

    else if (sub_1004C8824(v9, 9u) & 1) != 0 && (v75 = [v9 value], (swift_dynamicCast()))
    {
      if (a2)
      {
        v18 = sub_1004C8964(a3, a4);
      }

      else
      {
        v18 = BMRule.shortDescription.getter();
      }

      v56 = v18;
      v57 = v19;
      [a3 support];
      v59 = v58;
      result = [a3 confidence];
      *a5 = v77;
      *(a5 + 8) = v59;
      *(a5 + 16) = v60;
      *(a5 + 24) = v56;
      *(a5 + 32) = v57;
      *(a5 + 40) = 0;
      v37 = 4;
    }

    else if (sub_1004C8824(v9, 0xAu) & 1) != 0 && ([v9 value], (swift_dynamicCast()))
    {
      v20 = v75;
      if (a2)
      {
        v21 = sub_1004C8964(a3, a4);
      }

      else
      {
        v21 = BMRule.shortDescription.getter();
      }

      v61 = v21;
      v62 = v22;
      [a3 support];
      v64 = v63;
      result = [a3 confidence];
      *a5 = v20;
      *(a5 + 8) = v76;
      *(a5 + 16) = v64;
      *(a5 + 24) = v65;
      *(a5 + 32) = v61;
      *(a5 + 40) = v62;
      v37 = 5;
    }

    else
    {
      result = sub_1004C8824(v9, 0xBu);
      if (result & 1) != 0 && ([v9 value], result = swift_dynamicCast(), (result))
      {
        if (a2)
        {
          v30 = sub_1004C8964(a3, a4);
        }

        else
        {
          v30 = BMRule.shortDescription.getter();
        }

        v66 = v30;
        v67 = v31;
        v68 = type metadata accessor for REMSuggestedContact();
        v69 = *(v68 + 48);
        v70 = *(v68 + 52);
        swift_allocObject();
        v71 = REMSuggestedContact.init(stringLiteral:)();
        [a3 support];
        v73 = v72;
        result = [a3 confidence];
        *a5 = v71;
        *(a5 + 8) = v73;
        *(a5 + 16) = v74;
        *(a5 + 24) = v66;
        *(a5 + 32) = v67;
        *(a5 + 40) = 0;
        v37 = 6;
      }

      else
      {
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *a5 = 0u;
        v37 = -1;
      }
    }

    *(a5 + 48) = v37;
  }

  return result;
}

uint64_t sub_1004C8824(void *a1, unsigned __int8 a2)
{
  v3 = [a1 type];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_1004CCF4C(a2);
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v13 = 1;
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v12)
    {
      v13 = 0;
      goto LABEL_16;
    }
  }

  else if (v7)
  {
LABEL_11:
    v13 = 0;
LABEL_16:

    return v13 & 1;
  }

  v13 = 1;
  return v13 & 1;
}

char *sub_1004C8964(void *a1, uint64_t a2)
{
  v3 = [a1 antecedent];
  v4 = sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F5104(&qword_10094A198, &unk_1007AE468);
  sub_10000CB48(&qword_10094A1A0, &qword_10094A198, &unk_1007AE468);
  v5 = Sequence.elements<A>(ofType:)();

  if (v5 >> 62)
  {
    goto LABEL_53;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v77 = a2;
  if (v6)
  {
    result = sub_100026EF4(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v74 = v4;
      v8 = 0;
      while (1)
      {
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v6 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = [v9 type];
        v12 = [v11 identifier];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v15 = 0xE300000000000000;
          v13 = 7104878;
        }

        v16._countAndFlagsBits = v13;
        v16._object = v15;
        String.append(_:)(v16);

        v17._countAndFlagsBits = 58;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);
        if (!a2)
        {
          goto LABEL_21;
        }

        if ((sub_1004C8824(v10, 4u) & 1) == 0)
        {
          goto LABEL_21;
        }

        [v10 value];
        if (!swift_dynamicCast())
        {
          goto LABEL_21;
        }

        if (!*(a2 + 16))
        {
          break;
        }

        v18 = sub_100005F4C(v79, v80);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_21;
        }

        v21 = (*(a2 + 56) + 16 * v18);
        v23 = *v21;
        v22 = v21[1];

LABEL_22:
        v24._countAndFlagsBits = v23;
        v24._object = v22;
        String.append(_:)(v24);

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_100026EF4((v25 > 1), v26 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[2 * v26];
        v27[4] = 0;
        v27[5] = 0xE000000000000000;
        ++v8;
        a2 = v77;
        if (v4 == v6)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v79 = 0;
      v80 = 0xE000000000000000;
      [v10 value];
      _print_unlocked<A, B>(_:_:)();
      swift_unknownObjectRelease();
      v23 = 0;
      v22 = 0xE000000000000000;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_25:

  v28 = [a1 consequent];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = Sequence.elements<A>(ofType:)();

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_27;
    }

LABEL_55:

    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100791300;
    [a1 support];
    *(v51 + 56) = &type metadata for Double;
    *(v51 + 64) = &protocol witness table for Double;
    *(v51 + 32) = v52;
    v78 = String.init(format:_:)();
    v54 = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100791300;
    [a1 confidence];
    *(v55 + 56) = &type metadata for Double;
    *(v55 + 64) = &protocol witness table for Double;
    *(v55 + 32) = v56;
    v57 = String.init(format:_:)();
    v59 = v58;
    _StringGuts.grow(_:)(26);

    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = v61;

    v63._countAndFlagsBits = v60;
    v63._object = v62;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 0x5B203E3D205DLL;
    v64._object = 0xE600000000000000;
    String.append(_:)(v64);
    v65 = BidirectionalCollection<>.joined(separator:)();
    v67 = v66;

    v68._countAndFlagsBits = v65;
    v68._object = v67;
    String.append(_:)(v68);

    v69._countAndFlagsBits = 0x203A737B205DLL;
    v69._object = 0xE600000000000000;
    String.append(_:)(v69);
    v70._countAndFlagsBits = v78;
    v70._object = v54;
    String.append(_:)(v70);

    v71._countAndFlagsBits = 979574828;
    v71._object = 0xE400000000000000;
    String.append(_:)(v71);
    v72._countAndFlagsBits = v57;
    v72._object = v59;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 125;
    v73._object = 0xE100000000000000;
    String.append(_:)(v73);
    return 91;
  }

  v30 = _CocoaArrayWrapper.endIndex.getter();
  if (!v30)
  {
    goto LABEL_55;
  }

LABEL_27:
  result = sub_100026EF4(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v76 = v30;
    while (1)
    {
      v4 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_50;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = [v32 type];
      v35 = [v34 identifier];

      if (v35)
      {
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v38 = 0xE300000000000000;
        v36 = 7104878;
      }

      v39._countAndFlagsBits = v36;
      v39._object = v38;
      String.append(_:)(v39);

      v40._countAndFlagsBits = 58;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      if (!a2)
      {
        goto LABEL_44;
      }

      if ((sub_1004C8824(v33, 4u) & 1) == 0)
      {
        goto LABEL_44;
      }

      [v33 value];
      if (!swift_dynamicCast())
      {
        goto LABEL_44;
      }

      if (!*(a2 + 16))
      {
        break;
      }

      v41 = sub_100005F4C(v79, v80);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        goto LABEL_44;
      }

      v44 = (*(a2 + 56) + 16 * v41);
      v46 = *v44;
      v45 = v44[1];

LABEL_45:
      v47._countAndFlagsBits = v46;
      v47._object = v45;
      String.append(_:)(v47);

      v5 = 0;
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];
      if (v49 >= v48 >> 1)
      {
        sub_100026EF4((v48 > 1), v49 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      v50 = &_swiftEmptyArrayStorage[2 * v49];
      v50[4] = 0;
      v50[5] = 0xE000000000000000;
      ++v31;
      a2 = v77;
      if (v4 == v76)
      {
        goto LABEL_55;
      }
    }

LABEL_44:
    v79 = 0;
    v80 = 0xE000000000000000;
    [v33 value];
    _print_unlocked<A, B>(_:_:)();
    swift_unknownObjectRelease();
    v46 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_45;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t BMRule.shortDescription.getter()
{
  v1 = v0;
  v2 = [v0 antecedent];
  sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  v3 = sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1000F5104(&qword_10094A198, &unk_1007AE468);
  v5 = sub_10000CB48(&qword_10094A1A0, &qword_10094A198, &unk_1007AE468);
  v6 = Sequence.elements<A>(ofType:)();

  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v56 = v6;
    v58 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_44:
      __break(1u);

      __break(1u);
      return result;
    }

    v50 = v5;
    v51 = v4;
    v52 = v3;
    v53 = v1;
    v8 = 0;
    v6 = v58;
    v9 = v56;
    v1 = (v56 & 0xC000000000000001);
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v1)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v11 = *(v9 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = [v11 type];
      v14 = [v13 identifier];

      if (v14)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 58;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      [v12 value];
      _print_unlocked<A, B>(_:_:)();

      swift_unknownObjectRelease();
      v4 = 0xE000000000000000;
      v58 = v6;
      v5 = *(v6 + 16);
      v20 = *(v6 + 24);
      v3 = v5 + 1;
      if (v5 >= v20 >> 1)
      {
        sub_100026EF4((v20 > 1), v5 + 1, 1);
        v6 = v58;
      }

      *(v6 + 16) = v3;
      v21 = v6 + 16 * v5;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      ++v8;
      v9 = v56;
      if (v10 == i)
      {

        v1 = v53;
        v4 = v51;
        v5 = v50;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  v22 = [v1 consequent];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = Sequence.elements<A>(ofType:)();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (v24)
  {
LABEL_21:
    v58 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      goto LABEL_44;
    }

    v3 = 0;
    v1 = v58;
    v25 = v23;
    v55 = v23;
    v57 = v23 & 0xC000000000000001;
    v54 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v26 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_36;
      }

      if (v57)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v54 + 16))
        {
          goto LABEL_38;
        }

        v27 = *(v25 + 8 * v3 + 32);
      }

      v28 = v27;
      v29 = [v27 type];
      v30 = [v29 identifier];

      if (v30)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
      }

      else
      {
        v33 = 0xE300000000000000;
        v31 = 7104878;
      }

      v34._countAndFlagsBits = v31;
      v34._object = v33;
      String.append(_:)(v34);

      v35._countAndFlagsBits = 58;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      [v28 value];
      _print_unlocked<A, B>(_:_:)();

      swift_unknownObjectRelease();
      v4 = 0;
      v58 = v1;
      v37 = *(v1 + 2);
      v36 = *(v1 + 3);
      v5 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_100026EF4((v36 > 1), v37 + 1, 1);
        v1 = v58;
      }

      *(v1 + 2) = v5;
      v38 = &v1[16 * v37];
      *(v38 + 4) = 0;
      *(v38 + 5) = 0xE000000000000000;
      ++v3;
      v25 = v55;
      if (v26 == v24)
      {

        goto LABEL_42;
      }
    }
  }

LABEL_41:

  v1 = _swiftEmptyArrayStorage;
LABEL_42:
  v58 = v6;

  sub_1004C7D34(&v58);

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780);
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0x5B203E3D205DLL;
  v43._object = 0xE600000000000000;
  String.append(_:)(v43);
  v58 = v1;

  sub_1004C7D34(&v58);

  v44 = BidirectionalCollection<>.joined(separator:)();
  v46 = v45;

  v47._countAndFlagsBits = v44;
  v47._object = v46;
  String.append(_:)(v47);

  v48._countAndFlagsBits = 93;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  return 91;
}

uint64_t sub_1004C9A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v133 = a1;
  v6 = v5;
  v135 = *v6;
  v136 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  v11 = *(v136 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v136);
  v14 = &v122 - v13;
  v15 = type metadata accessor for URL();
  v131 = *(v15 - 8);
  v132 = v15;
  v16 = *(v131 + 64);
  __chkstk_darwin(v15);
  v127 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v128 = &v122 - v19;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_behaviorRetriever) = 0;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = 0;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackVersion) = 1;
  v20 = &unk_100974000;
  v129 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules;
  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules) = _swiftEmptyDictionarySingleton;
  sub_1000060C8(0, &qword_10094A388, BMMiningTask_ptr);
  if (![swift_getObjCClassFromMetadata() respondsToSelector:"supportsTaskSpecificEvents"] || !objc_msgSend(objc_opt_self(), "supportsTaskSpecificEvents"))
  {
    if (qword_1009362F0 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_13;
  }

  if (a5)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = *&a4;
  }

  *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_confidenceThreshold) = v21;
  if (a3)
  {
    v22 = 0.003;
  }

  else
  {
    v22 = *&a2;
  }

  (*(v131 + 16))(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_baseUrl, v133, v132);
  URL.appendingPathComponent(_:)();
  v124 = sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
  OrderedDictionary.init()();
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules, v14, v136);
  sub_1004D09D4();
  v23 = objc_allocWithZone(BMBehaviorRetriever);
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  sub_1000F5104(&unk_100943AF0, &unk_100797FE0);
  sub_10000CB48(&qword_10093A9E8, &unk_100943AF0, &unk_100797FE0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v28 = [v23 initWithURL:v26 taskSpecificItemTypes:isa];

  if (!v28)
  {
    if (qword_1009362F0 == -1)
    {
LABEL_18:
      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_10094A170);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "RDCoreBehaviorModel: No existing CoreBehavior", v48, 2u);
      }

      v49 = v132;
      v50 = *(v131 + 8);
      v50(v133, v132);
      v50(v128, v49);
      *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_trained) = 0;
      return v6;
    }

LABEL_92:
    swift_once();
    goto LABEL_18;
  }

  URL.appendingPathComponent(_:)();
  v29 = v134;
  v30 = Data.init(contentsOf:options:)();
  if (v29)
  {

    v123 = 0;
    v20 = v136;
    v32 = v129;
  }

  else
  {
    v51 = v30;
    v52 = v31;
    v53 = type metadata accessor for JSONDecoder();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1004D4548();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v20 = v136;
    v123 = 0;

    v56 = v140;

    v58 = sub_1004D0910(v57, v56, 1uLL);

    sub_10001BBA0(v51, v52);

    v32 = v129;
    swift_beginAccess();
    v59 = *(v6 + v32);
    *(v6 + v32) = v58;
  }

  v60 = [v28 retrieveRulesWithSupport:0 confidence:v22 filters:v21];
  v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v141 = _swiftEmptyArrayStorage;
  if (v61 >> 62)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v122 = v28;
  v130 = v61;
  if (!v62)
  {
LABEL_55:

    v140 = sub_1004363E8(v95);
    v96 = v123;
    sub_1004C7DA0(&v140);
    if (v96)
    {
LABEL_95:

      __break(1u);
      return result;
    }

    v97 = v140;
    v98 = v140 < 0 || (v140 & 0x4000000000000000) != 0;
    if (v98)
    {
      v120 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v120 >= 0xC8)
      {
        v121 = 200;
      }

      else
      {
        v121 = v120;
      }

      if (v120 >= 0)
      {
        v100 = v121;
      }

      else
      {
        v100 = 200;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v100)
      {
LABEL_64:
        if ((v97 & 0xC000000000000001) != 0)
        {

          if (v100)
          {
            v101 = 0;
            do
            {
              v102 = v101 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v101);
              v101 = v102;
            }

            while (v100 != v102);
          }
        }

        else
        {
        }

        if (v98)
        {
          _CocoaArrayWrapper.subscript.getter();
          v104 = v103;
          v106 = v105;
          v108 = v107;

          v108 >>= 1;
          v110 = v108 - v106;
          v109 = v108 <= v106;
          if (v108 == v106)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v106 = 0;
          v104 = v97 + 32;
          v110 = v100;
          v109 = v100 <= 0;
          if (!v100)
          {
LABEL_77:
            swift_unknownObjectRelease();
            v117 = v132;
            v118 = *(v131 + 8);
            v118(v133, v132);
            v118(v127, v117);
            v118(v128, v117);
            v119 = *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_behaviorRetriever);
            *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_behaviorRetriever) = v122;

            *(v6 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_trained) = 1;
            return v6;
          }
        }

        if (!v109)
        {
          v111 = (v104 + 8 * v106);
          do
          {
            v112 = *v111++;
            v113 = v112;
            v114 = BMRule.shortDescription.getter();
            v138 = v115;
            v139 = v113;
            v137 = v114;
            swift_beginAccess();
            v116 = v113;
            OrderedDictionary.subscript.setter();
            swift_endAccess();

            --v110;
          }

          while (v110);
          goto LABEL_77;
        }

        __break(1u);
        goto LABEL_94;
      }
    }

    else
    {
      v99 = *(v140 + 16);
      if (v99 >= 0xC8)
      {
        v100 = 200;
      }

      else
      {
        v100 = *(v140 + 16);
      }

      if (v99 >= v100)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_92;
  }

  v63 = 0;
  v135 = v61 & 0xC000000000000001;
  v126 = v61 & 0xFFFFFFFFFFFFFF8;
  v125 = v61 + 32;
  v134 = v62;
  while (1)
  {
    if (v135)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v63 >= *(v126 + 16))
      {
        goto LABEL_80;
      }

      v64 = *(v125 + 8 * v63);
    }

    v65 = v64;
    if (__OFADD__(v63++, 1))
    {
      break;
    }

    v67 = BMRule.shortDescription.getter();
    v69 = v68;
    swift_beginAccess();
    v70 = *(v6 + v32);
    if (*(v70 + 16))
    {
      v71 = sub_100005F4C(v67, v69);
      v20 = v72;

      if (v20)
      {
        v73 = *(*(v70 + 56) + 8 * v71);
        swift_endAccess();

        [v65 confidence];
        v75 = v74;
        v76 = 0;
        v77 = 1 << *(v73 + 32);
        if (v77 < 64)
        {
          v78 = ~(-1 << v77);
        }

        else
        {
          v78 = -1;
        }

        v79 = v78 & *(v73 + 64);
        v80 = (v77 + 63) >> 6;
        v81 = 0.0;
        if (v79)
        {
          while (1)
          {
            v82 = v76;
LABEL_45:
            v83 = __clz(__rbit64(v79));
            v79 &= v79 - 1;
            v81 = v81 + *(*(v73 + 56) + ((v82 << 9) | (8 * v83)));
            if (!v79)
            {
              goto LABEL_41;
            }
          }
        }

        while (1)
        {
LABEL_41:
          v82 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            __break(1u);
            goto LABEL_79;
          }

          if (v82 >= v80)
          {
            break;
          }

          v79 = *(v73 + 64 + 8 * v82);
          ++v76;
          if (v79)
          {
            v76 = v82;
            goto LABEL_45;
          }
        }

        v85 = v75 + v81;
        if (v21 >= v85)
        {

          goto LABEL_27;
        }

        v86 = [v65 antecedent];
        sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
        sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460);
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = [v65 consequent];
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        [v65 support];
        v89 = v88;
        v90 = objc_allocWithZone(BMRule);
        v91 = Set._bridgeToObjectiveC()().super.isa;

        v92 = Set._bridgeToObjectiveC()().super.isa;

        [v90 initWithAntecedent:v91 consequent:v92 support:v89 confidence:v85];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v94 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v20 = v136;
        v32 = v129;
        goto LABEL_28;
      }
    }

    else
    {
    }

    swift_endAccess();
    v84 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = v129;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_27:
    v20 = v136;
LABEL_28:
    if (v63 == v134)
    {
      goto LABEL_55;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  swift_once();
LABEL_13:
  v33 = type metadata accessor for Logger();
  sub_100006654(v33, qword_10094A170);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.fault.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v133;
  if (v36)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "RDCoreBehaviorModel: CoreBehavior is not up to date", v38, 2u);
  }

  v39 = objc_opt_self();
  v40 = String._bridgeToObjectiveC()();
  [v39 internalErrorWithDebugDescription:v40];

  swift_willThrow();
  (*(v131 + 8))(v37, v132);

  v41 = *(v6 + v20[478]);

  v42 = *(*v6 + 48);
  v43 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1004CA880()
{
  v1 = v0;
  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094A170);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "RDCoreBehaviorModel: deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer;
  v7 = *(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);
  *(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = 0;

  v8 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_baseUrl;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  v10 = *(v1 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_feedbackForRules);

  v11 = OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_rules;
  v12 = sub_1000F5104(&qword_10094A380, &unk_1007AE530);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  return v1;
}

uint64_t sub_1004CAA28()
{
  sub_1004CA880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1004CAA80(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v39 = a1;
  v7 = type metadata accessor for Date();
  v33 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = objc_opt_self();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, a2, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v12, v10, v33);
  v19 = v34;
  v18 = v35;
  *(v17 + v13) = v34;
  *(v17 + v14) = v11;
  *(v17 + v15) = v18;
  v20 = v37;
  *(v17 + v16) = v36;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_1004D46F4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004CB24C;
  aBlock[3] = &unk_1008F49F0;
  v21 = _Block_copy(aBlock);

  v22 = v19;
  v23 = v18;

  v24 = [v38 scheduledTimerWithTimeInterval:1 repeats:v21 block:60.0];
  _Block_release(v21);
  v25 = *(v39 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);
  *(v39 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = v24;
  v26 = v24;

  v27 = *&v23[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer];
  *&v23[OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer] = v24;

  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_10094A170);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "RDCoreBehaviorModel: CoreBehavior mining task timer set", v31, 2u);
  }
}

void sub_1004CADCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v16 = v15;
  (*(v11 + 8))(v14, v10);
  if (qword_1009362F0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10094A170);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43[1] = a4;
    v21 = a6;
    v22 = a3;
    v23 = a5;
    v24 = v20;
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    v26 = Double.description.getter();
    v28 = sub_10000668C(v26, v27, &v44);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "RDCoreBehaviorModel: CoreBehavior mining task has run %s seconds", v24, 0xCu);
    sub_10000607C(v25);

    a5 = v23;
    a3 = v22;
    a6 = v21;
  }

  if (v16 >= 600.0)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "RDCoreBehaviorModel: CoreBehavior mining task terminating early due to time out", v38, 2u);
    }

    [a3 terminateEarly];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v40 = *(Strong + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);

      [v40 invalidate];
    }

    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    if (!v35)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a6 && *(a6 + 17) == 1)
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "RDCoreBehaviorModel: CoreBehavior mining task terminating early due to shouldDefer is true", v31, 2u);
    }

    [a3 terminateEarly];
    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);

      [v33 invalidate];
    }

    swift_beginAccess();
    v34 = swift_weakLoadStrong();

    if (!v34)
    {
      goto LABEL_20;
    }

    v35 = v34;
LABEL_19:
    v41 = *(v35 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer);
    *(v35 + OBJC_IVAR____TtC7remindd19RDCoreBehaviorModel_timer) = 0;

LABEL_20:
    v42 = *(a5 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer);
    *(a5 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer) = 0;
  }
}

void sub_1004CB24C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1004CB2B4(uint64_t a1, uint64_t a2)
{
  v189 = a1;
  v178 = sub_1000F5104(&qword_10094A3A8, &qword_1007AE550);
  v169 = *(v178 - 8);
  v3 = *(v169 + 64);
  __chkstk_darwin(v178);
  v5 = &v164 - v4;
  v171 = sub_1000F5104(&qword_10094A3B0, &qword_1007AE558);
  v168 = *(v171 - 8);
  v6 = *(v168 + 64);
  __chkstk_darwin(v171);
  v8 = &v164 - v7;
  v172 = sub_1000F5104(&qword_10094A3B8, &qword_1007AE560);
  v167 = *(v172 - 8);
  v9 = *(v167 + 64);
  __chkstk_darwin(v172);
  v11 = &v164 - v10;
  v174 = sub_1000F5104(&qword_10094A3C0, &qword_1007AE568);
  v166 = *(v174 - 8);
  v12 = *(v166 + 64);
  __chkstk_darwin(v174);
  v14 = &v164 - v13;
  v175 = sub_1000F5104(&qword_10094A3C8, &qword_1007AE570);
  v165 = *(v175 - 8);
  v15 = *(v165 + 64);
  __chkstk_darwin(v175);
  v17 = &v164 - v16;
  v177 = sub_1000F5104(&qword_10094A3D0, &qword_1007AE578);
  v164 = *(v177 - 8);
  v18 = *(v164 + 64);
  __chkstk_darwin(v177);
  v20 = &v164 - v19;
  type metadata accessor for REMSuggestedLocation();
  sub_1000F5104(&qword_10094A3D8, &unk_1007AE580);
  *&v21 = COERCE_DOUBLE(&protocol conformance descriptor for ClassificationLabel);
  sub_1000546DC(&qword_10094A3E0, &type metadata accessor for REMSuggestedLocation);
  v176 = v20;
  OrderedDictionary.init()();
  type metadata accessor for REMSuggestedWeekDay();
  sub_1000546DC(&qword_10094A3E8, &type metadata accessor for REMSuggestedWeekDay);
  v179 = v17;
  OrderedDictionary.init()();
  type metadata accessor for REMSuggestedList();
  sub_1000546DC(&qword_10094A3F0, &type metadata accessor for REMSuggestedList);
  v173 = v14;
  OrderedDictionary.init()();
  v188 = v11;
  OrderedDictionary.init()();
  v170 = v8;
  OrderedDictionary.init()();
  type metadata accessor for REMSuggestedContact();
  sub_1000546DC(&qword_10094A3F8, &type metadata accessor for REMSuggestedContact);
  v181 = v5;
  OrderedDictionary.init()();
  v22 = *(a2 + 16);
  if (v22)
  {
    v186 = 0;
    v187 = 0;
    v185 = 0;
    v184 = 0;
    v183 = 0;
    v182 = 0;
    v23 = (a2 + 80);
    v180 = 255;
    while (1)
    {
      v31 = *(v23 - 6);
      v32 = *(v23 - 5);
      v21 = *(v23 - 4);
      v33 = *(v23 - 3);
      v35 = *(v23 - 2);
      v34 = *(v23 - 1);
      v36 = *v23;
      if (v36 <= 2)
      {
        *&v191 = *(v23 - 1);
        *&v190 = v33;
        if (!v36)
        {
          v194 = v31;
          sub_1002F10C8(v31, v32, v21, v33, v35, v34, 0);
          sub_10000CB48(&qword_10094A418, &qword_10094A3C0, &qword_1007AE568);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v189)
          {
LABEL_33:
            OrderedDictionary.subscript.getter();
            if (!v199 || (v46 = v196, v45 = v197, , v47 = v191, v48 = v190, v46 >= *&v32) && (v46 != *&v32 || v45 >= *&v21))
            {
              v59 = v31;
              v60 = v32;
              v61 = v21;
              v62 = v190;
              v63 = v35;
              v64 = v191;
              v65 = 0;
LABEL_80:
              sub_1002F115C(v59, v60, v61, v62, v63, v64, v65);

              goto LABEL_5;
            }

            v192 = v31;
            v196 = *&v32;
            v197 = *&v21;
            v198 = v190;
            v199 = v35;

            OrderedDictionary.subscript.setter();
            v24 = v31;
            v25 = v32;
            v26 = v21;
            v27 = v48;
            v28 = v35;
            v29 = v47;
          }

          else
          {
            OrderedDictionary.subscript.getter();
            if (v199)
            {

              goto LABEL_33;
            }

            v192 = v31;
            v196 = *&v32;
            v197 = *&v21;
            v66 = v190;
            v198 = v190;
            v199 = v35;

            OrderedDictionary.subscript.setter();
            v24 = v31;
            v25 = v32;
            v26 = v21;
            v27 = v66;
            v28 = v35;
            v29 = v191;
          }

          v30 = 0;
          goto LABEL_4;
        }

        if (v36 != 1)
        {
          v194 = v31;
          sub_1002F10C8(v31, v32, v21, v33, v35, v34, 2u);
          sub_10000CB48(&qword_10094A410, &qword_10094A3C8, &qword_1007AE570);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v189)
          {
LABEL_41:
            OrderedDictionary.subscript.getter();
            if (!v199 || (v50 = v196, v49 = v197, , v51 = v191, v52 = v190, v50 >= *&v32) && (v50 != *&v32 || v49 >= *&v21))
            {
              v59 = v31;
              v60 = v32;
              v61 = v21;
              v62 = v190;
              v63 = v35;
              v64 = v191;
              v65 = 2;
              goto LABEL_80;
            }

            v192 = v31;
            v196 = *&v32;
            v197 = *&v21;
            v198 = v190;
            v199 = v35;

            OrderedDictionary.subscript.setter();
            v24 = v31;
            v25 = v32;
            v26 = v21;
            v27 = v52;
            v28 = v35;
            v29 = v51;
          }

          else
          {
            OrderedDictionary.subscript.getter();
            if (v199)
            {

              goto LABEL_41;
            }

            v192 = v31;
            v196 = *&v32;
            v197 = *&v21;
            v68 = v190;
            v198 = v190;
            v199 = v35;

            OrderedDictionary.subscript.setter();
            v24 = v31;
            v25 = v32;
            v26 = v21;
            v27 = v68;
            v28 = v35;
            v29 = v191;
          }

          v30 = 2;
          goto LABEL_4;
        }

        v194 = v31;
        sub_1002F10C8(v31, v32, v21, v33, v35, v34, 1u);
        sub_10000CB48(&qword_10094A408, &qword_10094A3D0, &qword_1007AE578);

        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (dispatch thunk of Collection.distance(from:to:)() >= v189)
        {
          goto LABEL_15;
        }

        OrderedDictionary.subscript.getter();
        if (v199)
        {

LABEL_15:
          OrderedDictionary.subscript.getter();
          if (!v199 || (v39 = v196, v38 = v197, , v40 = v191, v41 = v190, v39 >= *&v32) && (v39 != *&v32 || v38 >= *&v21))
          {
            v59 = v31;
            v60 = v32;
            v61 = v21;
            v62 = v190;
            v63 = v35;
            v64 = v191;
            v65 = 1;
            goto LABEL_80;
          }

          v192 = v31;
          v196 = *&v32;
          v197 = *&v21;
          v198 = v190;
          v199 = v35;

          OrderedDictionary.subscript.setter();
          v24 = v31;
          v25 = v32;
          v26 = v21;
          v27 = v41;
          v28 = v35;
          v29 = v40;
          v30 = 1;
          goto LABEL_4;
        }

        v192 = v31;
        v196 = *&v32;
        v197 = *&v21;
        v67 = v190;
        v198 = v190;
        v199 = v35;

        OrderedDictionary.subscript.setter();
        v24 = v31;
        v25 = v32;
        v26 = v21;
        v27 = v67;
        v28 = v35;
        v29 = v191;
        v30 = 1;
      }

      else if (*v23 > 4u)
      {
        *&v191 = *(v23 - 1);
        if (v36 == 5)
        {
          v194 = v31;
          v195 = v32;
          sub_10000CB48(&unk_10094A428, &qword_10094A3B0, &qword_1007AE558);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v189)
          {
            goto LABEL_24;
          }

          OrderedDictionary.subscript.getter();
          if (v199)
          {

LABEL_24:
            OrderedDictionary.subscript.getter();
            if (v199)
            {
              v43 = v196;
              v42 = v197;

              v44 = v191;
              if (v43 < *&v21 || v43 == *&v21 && v42 < *&v33)
              {
                v192 = v31;
                v193 = v32;
                v196 = *&v21;
                v197 = *&v33;
                v198 = v35;
                v199 = v191;

                OrderedDictionary.subscript.setter();
              }

              v24 = v31;
              v25 = v32;
              v26 = v21;
              v27 = v33;
              v28 = v35;
              v29 = v44;
              v30 = 5;
            }

            else
            {
              v24 = v31;
              v25 = v32;
              v26 = v21;
              v27 = v33;
              v28 = v35;
              v29 = v191;
              v30 = 5;
            }

            goto LABEL_4;
          }

          v192 = v31;
          v193 = v32;
          v196 = *&v21;
          v197 = *&v33;
          v69 = v191;
          v198 = v35;
          v199 = v191;

          OrderedDictionary.subscript.setter();
          v24 = v31;
          v25 = v32;
          v26 = v21;
          v27 = v33;
          v28 = v35;
          v29 = v69;
          v30 = 5;
        }

        else
        {
          v194 = v31;
          *&v190 = v33;
          sub_1002F10C8(v31, v32, v21, v33, v35, v34, 6u);
          sub_10000CB48(&qword_10094A400, &qword_10094A3A8, &qword_1007AE550);

          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (dispatch thunk of Collection.distance(from:to:)() >= v189)
          {
            goto LABEL_57;
          }

          OrderedDictionary.subscript.getter();
          if (v199)
          {

LABEL_57:
            OrderedDictionary.subscript.getter();
            if (!v199 || (v56 = v196, v55 = v197, , v57 = v191, v58 = v190, v56 >= *&v32) && (v56 != *&v32 || v55 >= *&v21))
            {
              v59 = v31;
              v60 = v32;
              v61 = v21;
              v62 = v190;
              v63 = v35;
              v64 = v191;
              v65 = 6;
              goto LABEL_80;
            }

            v192 = v31;
            v196 = *&v32;
            v197 = *&v21;
            v198 = v190;
            v199 = v35;

            OrderedDictionary.subscript.setter();
            v24 = v31;
            v25 = v32;
            v26 = v21;
            v27 = v58;
            v28 = v35;
            v29 = v57;
            v30 = 6;
            goto LABEL_4;
          }

          v192 = v31;
          v196 = *&v32;
          v197 = *&v21;
          v70 = v190;
          v198 = v190;
          v199 = v35;

          OrderedDictionary.subscript.setter();
          v24 = v31;
          v25 = v32;
          v26 = v21;
          v27 = v70;
          v28 = v35;
          v29 = v191;
          v30 = 6;
        }
      }

      else
      {
        if (v36 == 3)
        {
          v37 = *(v23 - 2);

          sub_1004D459C(v187, v186, v185, v184, v183, v182, v180);
          v180 = 3;
          v186 = v32;
          v187 = v31;
          v185 = v21;
          v184 = v33;
          v183 = v35;
          v182 = v34;
          goto LABEL_5;
        }

        *&v191 = *(v23 - 1);
        v194 = v31;
        sub_10000CB48(&qword_10094A420, &qword_10094A3B8, &qword_1007AE560);

        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (dispatch thunk of Collection.distance(from:to:)() < v189)
        {
          OrderedDictionary.subscript.getter();
          if (!v199)
          {
            goto LABEL_53;
          }
        }

        OrderedDictionary.subscript.getter();
        if (v199)
        {
          v54 = v196;
          v53 = v197;

          v29 = v191;
          if (v54 < *&v32 || v54 == *&v32 && v53 < *&v21)
          {
LABEL_53:
            v192 = v31;
            v196 = *&v32;
            v197 = *&v21;
            v198 = v33;
            v199 = v35;
            OrderedDictionary.subscript.setter();
            goto LABEL_5;
          }

          v24 = v31;
          v25 = v32;
          v26 = v21;
          v27 = v33;
          v28 = v35;
          v30 = 4;
        }

        else
        {
          v24 = v31;
          v25 = v32;
          v26 = v21;
          v27 = v33;
          v28 = v35;
          v29 = v191;
          v30 = 4;
        }
      }

LABEL_4:
      sub_1002F115C(v24, v25, v26, v27, v28, v29, v30);
LABEL_5:
      v23 += 56;
      if (!--v22)
      {
        goto LABEL_82;
      }
    }
  }

  v186 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v180 = 255;
LABEL_82:
  v71 = _swiftEmptyArrayStorage;
  v194 = _swiftEmptyArrayStorage;
  sub_10000CB48(&qword_10094A408, &qword_10094A3D0, &qword_1007AE578);
  v72 = v176;
  v73 = dispatch thunk of Collection.count.getter();
  v74 = v181;
  if (v73)
  {
    v75 = v73;
    v192 = _swiftEmptyArrayStorage;
    sub_100253AD4(0, v73 & ~(v73 >> 63), 0);
    v71 = v192;
    v76 = v72;
    dispatch thunk of Collection.startIndex.getter();
    if (v75 < 0)
    {
      __break(1u);
      goto LABEL_127;
    }

    do
    {
      v77 = dispatch thunk of Collection.subscript.read();
      v79 = *v78;
      *&v191 = v78[1];
      v80 = v78[2];
      v189 = v78[3];
      *&v190 = v80;
      v81 = v78[4];

      v77(&v196, 0);
      v192 = v71;
      v83 = v71[2];
      v82 = v71[3];
      if (v83 >= v82 >> 1)
      {
        sub_100253AD4((v82 > 1), v83 + 1, 1);
        v71 = v192;
      }

      v71[2] = v83 + 1;
      v84 = &v71[7 * v83];
      v85 = v191;
      v84[4] = v79;
      v84[5] = v85;
      v86 = v189;
      v84[6] = v190;
      v84[7] = v86;
      v84[8] = v81;
      v84[9] = 0;
      *(v84 + 80) = 1;
      dispatch thunk of Collection.formIndex(after:)();
      --v75;
    }

    while (v75);
    v74 = v181;
  }

  sub_100272438(v71);
  sub_10000CB48(&qword_10094A410, &qword_10094A3C8, &qword_1007AE570);
  v87 = v179;
  v88 = v175;
  *&v89 = COERCE_DOUBLE(dispatch thunk of Collection.count.getter());
  v90 = _swiftEmptyArrayStorage;
  v91 = v188;
  if (*&v89 == 0.0)
  {
    goto LABEL_94;
  }

  v21 = v89;
  v192 = _swiftEmptyArrayStorage;
  sub_100253AD4(0, v89 & ~(v89 >> 63), 0);
  v90 = v192;
  v76 = v87;
  dispatch thunk of Collection.startIndex.getter();
  if (v21 < 0)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  do
  {
    v92 = dispatch thunk of Collection.subscript.read();
    v94 = *v93;
    *&v191 = v93[1];
    v95 = v93[2];
    v189 = v93[3];
    *&v190 = v95;
    v96 = v93[4];

    v92(&v196, 0);
    v192 = v90;
    v97 = v88;
    v99 = v90[2];
    v98 = v90[3];
    if (v99 >= v98 >> 1)
    {
      sub_100253AD4((v98 > 1), v99 + 1, 1);
      v90 = v192;
    }

    v90[2] = v99 + 1;
    v100 = &v90[7 * v99];
    v101 = v191;
    v100[4] = v94;
    v100[5] = v101;
    v102 = v189;
    v100[6] = v190;
    v100[7] = v102;
    v100[8] = v96;
    v100[9] = 0;
    *(v100 + 80) = 2;
    dispatch thunk of Collection.formIndex(after:)();
    --v21;
    v88 = v97;
  }

  while (*&v21 != 0.0);
  v74 = v181;
  v91 = v188;
LABEL_94:
  sub_100272438(v90);
  sub_10000CB48(&qword_10094A418, &qword_10094A3C0, &qword_1007AE568);
  v103 = v173;
  v104 = v174;
  *&v105 = COERCE_DOUBLE(dispatch thunk of Collection.count.getter());
  v106 = _swiftEmptyArrayStorage;
  if (*&v105 == 0.0)
  {
    goto LABEL_100;
  }

  v21 = v105;
  v192 = _swiftEmptyArrayStorage;
  sub_100253AD4(0, v105 & ~(v105 >> 63), 0);
  v106 = v192;
  v76 = v103;
  dispatch thunk of Collection.startIndex.getter();
  if (v21 < 0)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  do
  {
    v107 = dispatch thunk of Collection.subscript.read();
    v109 = *v108;
    *&v191 = v108[1];
    v110 = v108[2];
    v189 = v108[3];
    *&v190 = v110;
    v111 = v108[4];

    v107(&v196, 0);
    v192 = v106;
    v112 = v104;
    v114 = v106[2];
    v113 = v106[3];
    if (v114 >= v113 >> 1)
    {
      sub_100253AD4((v113 > 1), v114 + 1, 1);
      v106 = v192;
    }

    v106[2] = v114 + 1;
    v115 = &v106[7 * v114];
    v116 = v191;
    v115[4] = v109;
    v115[5] = v116;
    v117 = v189;
    v115[6] = v190;
    v115[7] = v117;
    v115[8] = v111;
    v115[9] = 0;
    *(v115 + 80) = 0;
    dispatch thunk of Collection.formIndex(after:)();
    --v21;
    v104 = v112;
  }

  while (*&v21 != 0.0);
  v74 = v181;
  v91 = v188;
LABEL_100:
  sub_100272438(v106);
  sub_10000CB48(&qword_10094A420, &qword_10094A3B8, &qword_1007AE560);
  *&v118 = COERCE_DOUBLE(dispatch thunk of Collection.count.getter());
  v119 = _swiftEmptyArrayStorage;
  if (*&v118 == 0.0)
  {
    goto LABEL_107;
  }

  v21 = v118;
  v192 = _swiftEmptyArrayStorage;
  sub_100253AD4(0, v118 & ~(v118 >> 63), 0);
  v119 = v192;
  v76 = v91;
  dispatch thunk of Collection.startIndex.getter();
  if (v21 < 0)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    v76 = sub_1003679E0(0, *(v76 + 2) + 1, 1, v76);
    goto LABEL_109;
  }

  v91 = v188;
  do
  {
    v120 = dispatch thunk of Collection.subscript.read();
    v122 = *v121;
    v190 = v121[1];
    v191 = v122;
    v123 = *(v121 + 4);

    v120(&v196, 0);
    v192 = v119;
    v125 = v119[2];
    v124 = v119[3];
    if (v125 >= v124 >> 1)
    {
      sub_100253AD4((v124 > 1), v125 + 1, 1);
      v119 = v192;
    }

    v119[2] = v125 + 1;
    v126 = &v119[7 * v125];
    v127 = v190;
    *(v126 + 2) = v191;
    *(v126 + 3) = v127;
    v126[8] = v123;
    v126[9] = 0;
    *(v126 + 80) = 4;
    dispatch thunk of Collection.formIndex(after:)();
    --v21;
  }

  while (*&v21 != 0.0);
  v74 = v181;
LABEL_107:
  sub_100272438(v119);
  LOBYTE(v21) = v180;
  v128 = v178;
  if (v180 == 0xFF)
  {
    goto LABEL_112;
  }

  v76 = v194;
  sub_1002F10C8(v187, v186, v185, v184, v183, v182, v180);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_109:
  v130 = *(v76 + 2);
  v129 = *(v76 + 3);
  if (v130 >= v129 >> 1)
  {
    v76 = sub_1003679E0((v129 > 1), v130 + 1, 1, v76);
  }

  *(v76 + 2) = v130 + 1;
  v131 = &v76[56 * v130];
  v132 = v186;
  *(v131 + 4) = v187;
  *(v131 + 5) = v132;
  v133 = v184;
  *(v131 + 6) = v185;
  *(v131 + 7) = v133;
  v134 = v182;
  *(v131 + 8) = v183;
  *(v131 + 9) = v134;
  v131[80] = v21;
  v194 = v76;
  v128 = v178;
  v91 = v188;
LABEL_112:
  v135 = sub_10000CB48(&unk_10094A428, &qword_10094A3B0, &qword_1007AE558);
  v136 = dispatch thunk of Collection.count.getter();
  v137 = _swiftEmptyArrayStorage;
  if (v136)
  {
    v138 = v136;
    v192 = _swiftEmptyArrayStorage;
    sub_100253AD4(0, v136 & ~(v136 >> 63), 0);
    v137 = v192;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v138 < 0)
    {
      __break(1u);
      goto LABEL_132;
    }

    v189 = v135;
    do
    {
      v140 = dispatch thunk of Collection.subscript.read();
      v142 = v141[1];
      *&v190 = *v141;
      v143 = v141[2];
      v144 = v141[5];
      *&v191 = v141[4];

      v140(&v196, 0);
      v192 = v137;
      v146 = v137[2];
      v145 = v137[3];
      if (v146 >= v145 >> 1)
      {
        sub_100253AD4((v145 > 1), v146 + 1, 1);
        v137 = v192;
      }

      v137[2] = v146 + 1;
      v147 = &v137[7 * v146];
      v147[4] = v190;
      v147[5] = v142;
      v147[6] = v143;
      v147[7] = v143;
      v147[8] = v191;
      v147[9] = v144;
      *(v147 + 80) = 5;
      dispatch thunk of Collection.formIndex(after:)();
      --v138;
    }

    while (v138);
    v128 = v178;
    v74 = v181;
    v91 = v188;
  }

  sub_100272438(v137);
  sub_10000CB48(&qword_10094A400, &qword_10094A3A8, &qword_1007AE550);
  v148 = dispatch thunk of Collection.count.getter();
  v149 = _swiftEmptyArrayStorage;
  v150 = v179;
  if (!v148)
  {
LABEL_125:
    sub_100272438(v149);
    sub_1004D459C(v187, v186, v185, v184, v183, v182, v180);
    (*(v169 + 8))(v74, v128);
    (*(v168 + 8))(v170, v171);
    (*(v167 + 8))(v91, v172);
    (*(v166 + 8))(v173, v174);
    (*(v165 + 8))(v150, v175);
    (*(v164 + 8))(v176, v177);
    return v194;
  }

  v151 = v148;
  v192 = _swiftEmptyArrayStorage;
  sub_100253AD4(0, v148 & ~(v148 >> 63), 0);
  v149 = v192;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v151 & 0x8000000000000000) == 0)
  {
    do
    {
      v152 = dispatch thunk of Collection.subscript.read();
      v154 = *v153;
      *&v191 = v153[1];
      v155 = v153[2];
      v189 = v153[3];
      *&v190 = v155;
      v156 = v74;
      v157 = v153[4];

      v152(&v196, 0);
      v192 = v149;
      v158 = v128;
      v160 = v149[2];
      v159 = v149[3];
      if (v160 >= v159 >> 1)
      {
        sub_100253AD4((v159 > 1), v160 + 1, 1);
        v149 = v192;
      }

      v149[2] = v160 + 1;
      v161 = &v149[7 * v160];
      v162 = v191;
      v161[4] = v154;
      v161[5] = v162;
      v163 = v189;
      v161[6] = v190;
      v161[7] = v163;
      v161[8] = v157;
      v161[9] = 0;
      *(v161 + 80) = 6;
      dispatch thunk of Collection.formIndex(after:)();
      --v151;
      v128 = v158;
      v74 = v156;
    }

    while (v151);
    v91 = v188;
    v150 = v179;
    goto LABEL_125;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1004CCF4C(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
LABEL_17:
      if (v3 != 9)
      {
        v12 = v2;
        if (v3 == 10)
        {
          v13 = String._bridgeToObjectiveC()();
          sub_1000060C8(0, &unk_10093F610, NSString_ptr);
          v14 = [v12 taskSpecificItemWithIdentifier:v13 valueClass:swift_getObjCClassFromMetadata()];

          if (v14)
          {
            goto LABEL_25;
          }

          __break(1u);
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      v19 = v2;
      v20 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v6 = [v19 taskSpecificItemWithIdentifier:v20 valueClass:swift_getObjCClassFromMetadata()];

      if (v6)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }

    if (a1 == 6)
    {
LABEL_21:
      v15 = v2;
      v16 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v17 = [v15 taskSpecificItemWithIdentifier:v16 valueClass:swift_getObjCClassFromMetadata()];

      if (v17)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_23;
    }

    v6 = v2;
    if (v3 != 7)
    {
LABEL_29:
      v21 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v9 = [v6 taskSpecificItemWithIdentifier:v21 valueClass:swift_getObjCClassFromMetadata()];

      if (v9)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_31;
    }

    v7 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v8 = [v6 taskSpecificItemWithIdentifier:v7 valueClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (a1 <= 2u)
  {
    v4 = &selRef_dayOfWeek;
    if (a1 != 1)
    {
      v4 = &selRef_isWeekend;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = &selRef_hourOfDay;
    }

    goto LABEL_24;
  }

  if (v3 == 3)
  {
LABEL_23:
    v5 = &selRef_hourOfDaySlot;
LABEL_24:
    [v2 *v5];
    goto LABEL_25;
  }

  v9 = v2;
  if (v3 == 4)
  {
    v10 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v11 = [v9 taskSpecificItemWithIdentifier:v10 valueClass:swift_getObjCClassFromMetadata()];

    if (v11)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_31:
  v22 = String._bridgeToObjectiveC()();
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v12 = [v9 taskSpecificItemWithIdentifier:v22 valueClass:swift_getObjCClassFromMetadata()];

  if (v12)
  {
    goto LABEL_25;
  }

  __break(1u);
LABEL_33:
  v23 = String._bridgeToObjectiveC()();
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v24 = [v12 taskSpecificItemWithIdentifier:v23 valueClass:swift_getObjCClassFromMetadata()];

  if (!v24)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_25:
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
LABEL_35:
    _StringGuts.grow(_:)(36);
    v25._countAndFlagsBits = 0xD000000000000021;
    v25._object = 0x80000001007FAAD0;
    String.append(_:)(v25);
    _print_unlocked<A, B>(_:_:)();
    v26._countAndFlagsBits = 125;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1004CD47C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (v5 > 4)
  {
    if (*(a1 + 16) <= 7u)
    {
      if (v5 != 5)
      {
        if (v5 == 6)
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v6 = swift_allocObject();
          *(v6 + 1) = xmmword_1007953F0;
          v7 = [objc_opt_self() isWeekend];
          v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
          v9 = [objc_opt_self() itemWithType:v7 numberValue:v8.super.super.isa];
LABEL_33:
          v26 = v9;

          v6[4] = v26;
          goto LABEL_34;
        }

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_1007953F0;
        v24 = objc_opt_self();
        v25 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v7 = [v24 taskSpecificItemWithIdentifier:v25 valueClass:swift_getObjCClassFromMetadata()];

        if (v7)
        {
          v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
          v9 = [objc_opt_self() itemWithType:v7 numberValue:v8.super.super.isa];
          goto LABEL_33;
        }

        goto LABEL_40;
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v16 = objc_opt_self();
      v17 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v7 = [v16 taskSpecificItemWithIdentifier:v17 valueClass:swift_getObjCClassFromMetadata()];

      if (v7)
      {
LABEL_29:
        v8.super.super.isa = String._bridgeToObjectiveC()();
        v9 = [objc_opt_self() itemWithType:v7 stringValue:v8.super.super.isa];
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    if (v5 == 8)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v18 = objc_opt_self();
      v19 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v7 = [v18 taskSpecificItemWithIdentifier:v19 valueClass:swift_getObjCClassFromMetadata()];

      if (v7)
      {
        v8.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
        v9 = [objc_opt_self() itemWithType:v7 numberValue:v8.super.super.isa];
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v5 == 9)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v7 = [objc_opt_self() dayOfWeek];
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v7 = [objc_opt_self() hourOfDay];
    }

LABEL_10:
    v8.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v9 = [objc_opt_self() itemWithType:v7 numberValue:v8.super.super.isa];
    goto LABEL_33;
  }

  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v22 = objc_opt_self();
      v23 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v7 = [v22 taskSpecificItemWithIdentifier:v23 valueClass:swift_getObjCClassFromMetadata()];

      if (v7)
      {
        goto LABEL_29;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (REMSuggestedContact.isValid.getter())
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v6 = swift_allocObject();
      *(v6 + 1) = xmmword_1007953F0;
      v12 = objc_opt_self();
      v13 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v7 = [v12 taskSpecificItemWithIdentifier:v13 valueClass:swift_getObjCClassFromMetadata()];

      if (!v7)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_17:
      dispatch thunk of ClassificationLabel.description.getter();
      v8.super.super.isa = String._bridgeToObjectiveC()();

      v9 = [objc_opt_self() itemWithType:v7 stringValue:v8.super.super.isa];
      goto LABEL_33;
    }

LABEL_27:
    v6 = _swiftEmptyArrayStorage;
LABEL_34:
    *a2 = v6;
    return;
  }

  if (v5 == 2)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_1007953F0;
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v7 = [v14 taskSpecificItemWithIdentifier:v15 valueClass:swift_getObjCClassFromMetadata()];

    if (v7)
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v5 == 3)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_1007953F0;
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v7 = [v10 taskSpecificItemWithIdentifier:v11 valueClass:swift_getObjCClassFromMetadata()];

    if (!v7)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  if ((REMSuggestedLocation.isSpecificLocation.getter() & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 1) = xmmword_1007953F0;
  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v7 = [v20 taskSpecificItemWithIdentifier:v21 valueClass:swift_getObjCClassFromMetadata()];

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1004CDDC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004D0268(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004CDED4(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer;
  v5 = *(v1 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer);
  if (v5)
  {
    v6 = qword_1009362F0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094A170);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDCoreBehaviorModel: invalidating timer since mining task did finish", v11, 2u);
    }

    [v7 invalidate];
    v12 = *(v2 + v4);
    *(v2 + v4) = 0;
  }

  v13 = [a1 completionStatus];
  *(v2 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics + 24) = v13;
  v14 = [a1 coreAnalyticsDict];
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  type metadata accessor for Analytics();
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = 0x6E69616D6F44;
  *(inited + 40) = 0xE600000000000000;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001007FAA80;
  [a1 completionStatus];
  *(inited + 72) = Int._bridgeToObjectiveC()();
  sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();
}

Swift::Int sub_1004CE61C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1004CEA38(v7, v8, a1, v4);
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
    return sub_1004CE828(0, v2, 1, a1);
  }

  return result;
}

void sub_1004CE714(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1004CF014(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004CE8F8(0, v2, 1, a1);
  }
}

uint64_t sub_1004CE828(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004CE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v24 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      [v11 support];
      v14 = v13;
      [v12 support];
      if (v14 == v15)
      {
        [v11 confidence];
        v17 = v16;
        [v12 confidence];
      }

      else
      {
        [v11 support];
        v17 = v19;
        [v12 support];
      }

      v20 = v18;

      if (v20 >= v17)
      {
LABEL_4:
        ++v4;
        v6 = v24 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v21 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v21;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1004CEA38(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1004361F4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1004CF790((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1003658B8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1004CF790((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1004361F4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100436168(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_1004CF014(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_97:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v4;
    }

    else
    {
LABEL_131:
      v109 = sub_1004361F4(v4);
    }

    v110 = v7;
    v4 = *(v109 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v7 = v4 - 1;
        v111 = *&v109[16 * v4];
        v112 = v109;
        v113 = *&v109[16 * v4 + 24];
        sub_1004CF9B8((*a3 + 8 * v111), (*a3 + 8 * *&v109[16 * v4 + 16]), (*a3 + 8 * v113), v6);
        if (v110)
        {
          goto LABEL_108;
        }

        if (v113 < v111)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1004361F4(v112);
        }

        if (v4 - 2 >= *(v112 + 2))
        {
          goto LABEL_125;
        }

        v114 = &v112[16 * v4];
        *v114 = v111;
        *(v114 + 1) = v113;
        sub_100436168(v4 - 1);
        v109 = v112;
        v4 = *(v112 + 2);
        if (v4 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_135;
    }

LABEL_108:

    return;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v117 = v10;
      v4 = *a3;
      v13 = *(*a3 + 8 * v9);
      v119 = v9;
      v14 = *(*a3 + 8 * v12);
      v15 = v13;
      v16 = &selRef_support;
      [v14 support];
      v18 = v17;
      [v15 support];
      if (v18 == v19)
      {
        v16 = &selRef_confidence;
      }

      [v14 *v16];
      v21 = v20;
      [v15 *v16];
      v23 = v22;

      v11 = v119;
      v12 = v119 + 2;
      if (v119 + 2 < v8)
      {
        v4 += 8 * v119 + 16;
        do
        {
          v28 = *(v4 - 8);
          v29 = *v4;
          v30 = v28;
          [v29 support];
          v32 = v31;
          [v30 support];
          if (v32 == v33)
          {
            v6 = &selRef_attachmentRepresentationAndReturnError_;
            [v29 confidence];
            v35 = v34;
            [v30 confidence];
            v37 = v36;

            if (v23 < v21 == v37 >= v35)
            {
              goto LABEL_15;
            }
          }

          else
          {
            [v29 support];
            v25 = v24;
            [v30 support];
            v27 = v26;

            if (v23 < v21 == v27 >= v25)
            {
              goto LABEL_15;
            }
          }

          v4 += 8;
          ++v12;
        }

        while (v8 != v12);
        v12 = v8;
LABEL_15:
        v11 = v119;
      }

      v10 = v117;
      if (v23 < v21)
      {
        if (v12 < v11)
        {
          goto LABEL_128;
        }

        if (v11 < v12)
        {
          v38 = 8 * v12 - 8;
          v39 = 8 * v11;
          v40 = v12;
          v41 = v11;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v42 = *(v43 + v39);
              *(v43 + v39) = *(v43 + v38);
              *(v43 + v38) = v42;
            }

            ++v41;
            v38 -= 8;
            v39 += 8;
          }

          while (v41 < v40);
        }
      }
    }

    v44 = a3[1];
    if (v12 < v44)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_127;
      }

      if (v12 - v11 < a4)
      {
        v45 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_129;
        }

        if (v45 >= v44)
        {
          v45 = a3[1];
        }

        if (v45 < v11)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v12 != v45)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v12 < v11)
    {
      goto LABEL_126;
    }

    v63 = v10;
    v124 = v12;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v63;
    }

    else
    {
      v10 = sub_1003658B8(0, *(v63 + 2) + 1, 1, v63);
    }

    v4 = *(v10 + 2);
    v64 = *(v10 + 3);
    v65 = v4 + 1;
    if (v4 >= v64 >> 1)
    {
      v10 = sub_1003658B8((v64 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v65;
    v66 = &v10[16 * v4];
    *(v66 + 4) = v11;
    *(v66 + 5) = v124;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v4)
    {
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v10 + 4);
          v70 = *(v10 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_65:
          if (v72)
          {
            goto LABEL_115;
          }

          v85 = &v10[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_118;
          }

          v91 = &v10[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_122;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v95 = &v10[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_79:
        if (v90)
        {
          goto LABEL_117;
        }

        v98 = &v10[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_86:
        v4 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v106 = v10;
        v107 = *&v10[16 * v4 + 32];
        v6 = *&v10[16 * v68 + 40];
        sub_1004CF9B8((*a3 + 8 * v107), (*a3 + 8 * *&v10[16 * v68 + 32]), (*a3 + 8 * v6), v67);
        if (v7)
        {
          goto LABEL_108;
        }

        if (v6 < v107)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1004361F4(v106);
        }

        if (v4 >= *(v106 + 2))
        {
          goto LABEL_112;
        }

        v108 = &v106[16 * v4];
        *(v108 + 4) = v107;
        *(v108 + 5) = v6;
        sub_100436168(v68);
        v10 = v106;
        v65 = *(v106 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v10[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_113;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_114;
      }

      v80 = &v10[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_116;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_119;
      }

      if (v84 >= v76)
      {
        v102 = &v10[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_123;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v9 = v124;
    v8 = a3[1];
    if (v124 >= v8)
    {
      goto LABEL_97;
    }
  }

  v118 = v10;
  v120 = v11;
  v115 = v7;
  v46 = *a3;
  v6 = *a3 + 8 * v12 - 8;
  v47 = v11 - v12;
  v122 = v45;
LABEL_35:
  v123 = v12;
  v48 = *(v46 + 8 * v12);
  v4 = v47;
  v49 = v6;
  while (1)
  {
    v50 = *v49;
    v51 = v48;
    v52 = v50;
    [v51 support];
    v54 = v53;
    [v52 support];
    if (v54 == v55)
    {
      [v51 confidence];
      v57 = v56;
      [v52 confidence];
    }

    else
    {
      [v51 support];
      v57 = v59;
      [v52 support];
    }

    v60 = v58;

    if (v60 >= v57)
    {
LABEL_34:
      v12 = v123 + 1;
      v6 += 8;
      --v47;
      if (v123 + 1 != v122)
      {
        goto LABEL_35;
      }

      v12 = v122;
      v7 = v115;
      v10 = v118;
      v11 = v120;
      goto LABEL_45;
    }

    if (!v46)
    {
      break;
    }

    v61 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v61;
    v49 -= 8;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

uint64_t sub_1004CF790(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1004CF9B8(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      [v16 support];
      v19 = v18;
      [v17 support];
      if (v19 == v20)
      {
        [v16 confidence];
        v22 = v21;
        [v17 confidence];
      }

      else
      {
        [v16 support];
        v22 = v24;
        [v17 support];
      }

      v25 = v23;

      if (v25 >= v22)
      {
        break;
      }

      v26 = v6;
      v27 = v7 == v6++;
      if (!v27)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }

    v26 = v4;
    v27 = v7 == v4++;
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_19:
    *v7 = *v26;
    goto LABEL_20;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v28 = v6 - 1;
      --v5;
      v29 = v14;
      v44 = v6 - 1;
      while (1)
      {
        v30 = *--v29;
        v31 = *v28;
        v32 = v30;
        v33 = v31;
        [v32 support];
        v35 = v34;
        [v33 support];
        if (v35 == v36)
        {
          [v32 confidence];
          v38 = v37;
          [v33 confidence];
        }

        else
        {
          [v32 support];
          v38 = v40;
          [v33 support];
        }

        v41 = v39;

        v42 = v5 + 1;
        if (v41 < v38)
        {
          break;
        }

        v28 = v6 - 1;
        if (v42 != v14)
        {
          *v5 = *v29;
        }

        --v5;
        v14 = v29;
        if (v29 <= v4)
        {
          v14 = v29;
          goto LABEL_43;
        }
      }

      if (v42 != v6)
      {
        *v5 = *v44;
      }

      if (v14 <= v4)
      {
        break;
      }

      --v6;
    }

    while (v44 > v7);
    v6 = v44;
  }

LABEL_43:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t *sub_1004CFCF0(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1004D0DDC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1004CFD78(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1004D03C8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1004CFDF0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, double *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    sub_1004D2BA4(v9, a2, a3, a5);
    v12 = v11;

    return v12;
  }

  return result;
}

Swift::Int sub_1004CFE8C(uint64_t a1, void *a2, double *a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = _swiftEmptySetSingleton;
    v23 = _swiftEmptySetSingleton;
    v21 = a2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
      while (1)
      {
        swift_dynamicCast();
        sub_1004D10AC(&v22, a3);
        if (v3)
        {
          break;
        }

        v7 = v22;
        if (v6)
        {
          v8 = v5[2];
          if (v5[3] <= v8)
          {
            sub_1003828AC(v8 + 1);
          }

          v5 = v23;
          result = NSObject._rawHashValue(seed:)(v23[5]);
          v10 = v5 + 7;
          v11 = -1 << *(v5 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~v5[(v12 >> 6) + 7]) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~v5[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = v10[v13];
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(v5[6] + 8 * v14) = v7;
          ++v5[2];
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }

      v20 = v22;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v5 = sub_1004D2D04(a1, a2, a3);
  }

  return v5;
}