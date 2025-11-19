uint64_t sub_1002776CC()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100277778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002778A8, 0, 0);
}

uint64_t sub_1002778A8()
{
  v0[4].type = 0;
  v1 = [*&v0[4].align listAppletsAndRefreshCache:0 outError:&v0[4].type];
  type = v0[4].type;
  if (!v1)
  {
    v47 = type;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    offs = v0[6].offs;
    name = v0[6].name;
    v50 = v0[5].name;

    v51 = v0->name;
    goto LABEL_61;
  }

  v3 = v1;
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = type;

  if (v4 >> 62)
  {
LABEL_48:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  v7 = 0;
  v75 = v4 & 0xC000000000000001;
  v8 = *&v0[5].align;
  v73 = v4 + 32;
  v74 = v4 & 0xFFFFFFFFFFFFFF8;
  v65 = (v8 + 32);
  v66 = (v8 + 48);
  v64 = v0[5].offs;
  v68 = v64 + 14;
  v69 = (v8 + 8);
  v63 = v8;
  v71 = (v8 + 56);
  v72 = v0;
  v70 = v6;
  while (1)
  {
    while (1)
    {
LABEL_7:
      if (v75)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v74 + 16))
        {
          goto LABEL_46;
        }

        v11 = *(v73 + 8 * v7);
      }

      v12 = v11;
      if (__OFADD__(v7++, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v14 = objc_opt_self();
      v15 = [v12 discretionaryData];
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v4, v17);
      v19 = [v14 TLVsWithData:isa];

      if (v19)
      {
        break;
      }

      v9 = v0[5].name;
      v10 = v0[5].type;

      (*v71)(v9, 1, 1, v10);
LABEL_6:
      sub_100156C78(v0[5].name);
      if (v7 == v6)
      {
        goto LABEL_49;
      }
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v12;
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0 = &stru_1004F5000;
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_40:
      v0 = v72;
      v4 = v72[5].name;
      v46 = v72[5].type;

      (*v71)(v4, 1, 1, v46);
LABEL_41:
      v6 = v70;
      goto LABEL_6;
    }

    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (v45 < 0)
    {
      goto LABEL_47;
    }

    v21 = v45;
    v0 = &stru_1004F5000;
    if (!v45)
    {
      goto LABEL_40;
    }

LABEL_14:
    v4 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v22 = *(v20 + 8 * v4 + 32);
      }

      v23 = v22;
      if ([v22 tag] == 254)
      {
        v24 = [v23 v0[113].type];
        if (v24)
        {
          break;
        }
      }

      ++v4;

      if (v21 == v4)
      {
        goto LABEL_40;
      }
    }

    v25 = v24;
    v26 = [v24 value];
    if (!v26)
    {
      __break(1u);
    }

    v27 = v26;
    v0 = v72;
    v28 = v72[5].name;
    v4 = v72[5].type;

    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    sub_1001E0778(v29, v31, v28);
    if ((*v66)(v28, 1, v4) == 1)
    {

      goto LABEL_41;
    }

    (*v65)(v72[6].name, v72[5].name, v72[5].type);
    v4 = v76;
    if (([v76 managedBySP] & 1) == 0)
    {
      break;
    }

    if (!*(v64 + 2) || (v32 = v72[6].name, v33 = v72[5].type, v4 = *(v64 + 5), sub_100278ACC(&unk_100507480), v34 = dispatch thunk of Hashable._rawHashValue(seed:)(), v35 = -1 << *(v64 + 32), v36 = v34 & ~v35, ((*(v68 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0))
    {
LABEL_31:
      v0 = v72;
      v42 = v72[6].name;
      v43 = v72[5].type;

      goto LABEL_33;
    }

    v67 = ~v35;
    v37 = *(v63 + 72);
    v38 = *(v63 + 16);
    while (1)
    {
      v39 = v72[6].offs;
      v4 = v72[5].type;
      v38(v39, *(v64 + 6) + v36 * v37, v4);
      sub_100278ACC(&qword_100502C18);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *v69;
      (*v69)(v39, v4);
      if (v40)
      {
        break;
      }

      v36 = (v36 + 1) & v67;
      if (((*(v68 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v0 = v72;
    v41(v72[6].name, v72[5].type);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v44 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v6 = v70;
    if (v7 == v70)
    {
      goto LABEL_49;
    }
  }

  v42 = v72[6].name;
  v43 = v72[5].type;

LABEL_33:
  (*v69)(v42, v43);
  v6 = v70;
  if (v7 != v70)
  {
    goto LABEL_7;
  }

LABEL_49:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_56;
    }

LABEL_52:
    v52 = *&v0[4].align;
    v53 = Array._bridgeToObjectiveC()().super.isa;
    v0[6].type = v53;

    v0->type = v0;
    *&v0->align = sub_1002781BC;
    v54 = swift_continuation_init();
    v0[4].name = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    v0[2].type = _NSConcreteStackBlock;
    *&v0[2].align = 1107296256;
    v0[3].offs = sub_1001E95B0;
    v0[3].name = &unk_1004CE7E8;
    v0[3].type = v54;
    [v52 deleteAppletsAndConnectToServer:v53 completion:&v0[2].type];

    return _swift_continuation_await(&v0->type);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_52;
    }

LABEL_56:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000958E4(v55, qword_10051B2C8);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Nothing to delete in the SE when deleting ", v58, 2u);
    }

    v60 = v0[6].offs;
    v59 = v0[6].name;
    v61 = v0[5].name;

    v51 = v0->name;
LABEL_61:

    return v51();
  }
}

uint64_t sub_1002781BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1002783AC;
  }

  else
  {
    v3 = sub_1002782F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002782F8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002783AC()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for SECAdminSession()
{
  result = qword_100508B58;
  if (!qword_100508B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027860C()
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100278720()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_100275984();
}

uint64_t sub_1002787AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1001F9BE8(0, 0, v8, &unk_10040BDA0, v10);
}

uint64_t sub_1002788CC(char a1, char a2)
{
  *(v3 + 40) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return _swift_task_switch(sub_1002788F4, 0, 0);
}

uint64_t sub_1002788F4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  swift_beginAccess();
  sub_10020178C(v1, 0, v3, v2);
  swift_endAccess();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10027899C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002789E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100278A1C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000C288C;

  return sub_100277778(a1, a2, v6);
}

uint64_t sub_100278ACC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100278B3C()
{
  if (qword_100501978 != -1)
  {
    swift_once();
  }

  if (sub_100130A24())
  {
    v1 = v0 + *(type metadata accessor for SECDefaultAppReconciler() + 20);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "reconcileDefaultContactlessApp: pending migration -- no op", v3, 2u);
    }

    return;
  }

  sub_100326DF8(v54);
  if (*(&v54[0] + 1))
  {
    v56 = v54[0];
    *v57 = v54[1];
    *&v57[16] = v55;
    if (sub_1000B6274())
    {
      v4 = v56;
      if (__PAIR128__(0x8000000100465B40, 0xD000000000000012) == v56)
      {
        v5 = *v57;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v5 = *v57;
        if ((v13 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      if (v5 == 3)
      {

        v62 = *&v57[8];
        sub_1000B6B54(&v62);
        v14 = v0 + *(type metadata accessor for SECDefaultAppReconciler() + 20);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "Passbook is default -- no op", v17, 2u);
        }

        return;
      }

LABEL_26:
      if (v5 == 2)
      {
        v62 = 0u;
        v63 = 0u;
        v64 = 1;
        if (sub_100306124(5, &v62, 0, 0))
        {
          v59 = 0;
          v60 = 0u;
          v61 = 1;
          v18 = sub_100306124(7, &v59._countAndFlagsBits, 0, 0);
LABEL_32:
          v19 = *v0;
          TCCContext.DefaultAppCapableTCCService.tccService.getter();
          v20 = TCCContext.checkTCCAccess(to:for:)();
          if (v20 < 2)
          {
            v21 = *(type metadata accessor for SECDefaultAppReconciler() + 20);
            v58 = *&v57[8];

            sub_1000B6AF8(&v58, v53);
            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.info.getter();

            sub_1000B6B54(&v58);
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v53[0] = v25;
              *v24 = 136315138;
              sub_1000B6B54(&v58);
              v26 = sub_1002FFA0C(v4._countAndFlagsBits, v4._object, v53);

              *(v24 + 4) = v26;
              _os_log_impl(&_mh_execute_header, v22, v23, "Default app %s still eligible to use HCE first time after restore -- no op", v24, 0xCu);
              sub_1000752F4(v25);

LABEL_40:

              return;
            }

            goto LABEL_56;
          }

          if (v20 == 3)
          {
            v36 = *(type metadata accessor for SECDefaultAppReconciler() + 20);
            v58 = *&v57[8];

            sub_1000B6AF8(&v58, v53);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.info.getter();

            sub_1000B6B54(&v58);
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v53[0] = v40;
              *v39 = 136315138;

              v41 = sub_1002FFA0C(v4._countAndFlagsBits, v4._object, v53);

              *(v39 + 4) = v41;
              _os_log_impl(&_mh_execute_header, v37, v38, "Default app %s found after restore", v39, 0xCu);
              sub_1000752F4(v40);
            }

            if (v18)
            {
              goto LABEL_55;
            }

            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v42, v43, "Ineligible to use app after restore, attempt to fallback to counterpart service", v44, 2u);
            }

            v45 = 1;
          }

          else
          {
            if (v20 != 2)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return;
            }

            v46 = *(type metadata accessor for SECDefaultAppReconciler() + 20);
            v58 = *&v57[8];

            sub_1000B6AF8(&v58, v53);
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.info.getter();

            sub_1000B6B54(&v58);
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v53[0] = v50;
              *v49 = 136315138;

              v51 = sub_1002FFA0C(v4._countAndFlagsBits, v4._object, v53);

              *(v49 + 4) = v51;
              _os_log_impl(&_mh_execute_header, v47, v48, "Default app %s TCC revoked, attempt to fallback to counterpart service", v49, 0xCu);
              sub_1000752F4(v50);
            }

            v45 = 0;
          }

          sub_100279544(&v56, v45);
LABEL_55:

LABEL_56:
          v31 = &v58;
          goto LABEL_57;
        }
      }

      else
      {
        if (v5 != 1)
        {
          v32 = *(type metadata accessor for SECDefaultAppReconciler() + 20);
          v62 = *&v57[8];

          sub_1000B6AF8(&v62, &v59);
          v22 = Logger.logObject.getter();
          v33 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v22, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v59._countAndFlagsBits = v35;
            *v34 = 136315394;
            *(v34 + 4) = sub_1002FFA0C(v4._countAndFlagsBits, v4._object, &v59._countAndFlagsBits);
            *(v34 + 12) = 2048;

            sub_1000B6B54(&v62);
            *(v34 + 14) = v5;

            sub_1000B6B54(&v62);
            _os_log_impl(&_mh_execute_header, v22, v33, "Unexpected default app info has no tcc string %s, domain %lu", v34, 0x16u);
            sub_1000752F4(v35);

            goto LABEL_40;
          }

          sub_1000B6B54(&v62);

          v31 = &v62;
LABEL_57:
          sub_1000B6B54(v31);
          return;
        }

        v62 = 0u;
        v63 = 0u;
        v64 = 1;
        if (sub_100306124(3, &v62, 0, 0))
        {
          v59 = 0;
          v60 = 0u;
          v61 = 1;
          v18 = sub_100306124(0, &v59._countAndFlagsBits, 0, 0);
          goto LABEL_32;
        }
      }

      v27 = v0 + *(type metadata accessor for SECDefaultAppReconciler() + 20);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Reconcile Default Contactless: Ineligible to use default app, attempt to fallback to counterpart service", v30, 2u);
      }

      sub_100279544(&v56, 1);

      v59 = *&v57[8];
      v31 = &v59;
      goto LABEL_57;
    }

    v59 = v56;
    sub_1000B6B54(&v59);
    v62 = *&v57[8];
    sub_1000B6B54(&v62);
  }

  v6 = sub_10032798C();
  v7 = v0 + *(type metadata accessor for SECDefaultAppReconciler() + 20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = os_log_type_enabled(v8, v9);
  if (v6)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Default app not installed -- configuring none as default", v11, 2u);
    }

    sub_100327738();
  }

  else
  {
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No default app found in user default before first reconciliation after restore -- configuring passbook as default", v12, 2u);
    }

    sub_1003262E0();
  }
}

void sub_100279544(Swift::String *a1, char a2)
{
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  if (countAndFlagsBits != 2 && countAndFlagsBits != 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = TCCContext.DefaultAppCapableTCCService.fallbackTCCService.getter();
  if (v6 == 2)
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 1;
    v7 = 0;
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_30:
    _StringGuts.grow(_:)(37);

    *&v32 = 0xD000000000000023;
    *(&v32 + 1) = 0x8000000100469900;
    String.append(_:)(*a1);
    goto LABEL_31;
  }

  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v7 = 7;
LABEL_7:
  if (sub_100306124(v7, &v36, 0, 0))
  {
    v8 = *v2;
    TCCContext.DefaultAppCapableTCCService.fallbackTCCService.getter();
    v9 = a1->_countAndFlagsBits;
    object = a1->_object;
    v11 = TCCContext.checkTCCAccess(to:for:)();
    if (v11 < 2)
    {
      v12 = *(type metadata accessor for SECDefaultAppReconciler() + 20);
      v14 = a1[1]._object;
      v13 = a1[2]._countAndFlagsBits;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v32 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_1002FFA0C(v9, object, &v32);
        _os_log_impl(&_mh_execute_header, v15, v16, "Default app %s is granted for fallback TCC Service, pivoting", v17, 0xCu);
        sub_1000752F4(v18);
      }

      v19 = 1;
      if (countAndFlagsBits != 2)
      {
        v19 = 2;
      }

      *&v32 = v9;
      *(&v32 + 1) = object;
      v33 = v19;
      v34 = v14;
      v35 = v13;
      sub_10032743C(&v32);
      return;
    }

    if (v11 - 2 <= 1)
    {
      v25 = *(type metadata accessor for SECDefaultAppReconciler() + 20);
      v32 = *&a1[1]._object;

      sub_1000B6AF8(&v32, v31);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      sub_1000B6B54(&v32);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1002FFA0C(v9, object, v31);
        _os_log_impl(&_mh_execute_header, v26, v27, "Default app %s TCC denied/unknown for fallback TCC, overwriting passbook as default due to ineligibility", v28, 0xCu);
        sub_1000752F4(v29);
      }

      sub_1003262E0();
      return;
    }

LABEL_31:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v20 = v2 + *(type metadata accessor for SECDefaultAppReconciler() + 20);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  if (a2)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Default app ineligible for both services, configuring Passbook as default due to ineligibility", v24, 2u);
    }

    sub_1003262E0();
  }

  else
  {
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Default app ineligible for both services, configuring None as default due to TCC revocation", v30, 2u);
    }

    sub_100327738();
  }
}

uint64_t type metadata accessor for SECDefaultAppReconciler()
{
  result = qword_100508BC0;
  if (!qword_100508BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100279A78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100279B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100279BDC()
{
  result = type metadata accessor for TCCContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100279C60(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;

  return _swift_task_switch(sub_100279CF0, 0, 0);
}

uint64_t sub_100279CF0()
{
  v162 = v0;
  v1 = sub_10013044C(0xD000000000000010, 0x80000001004619E0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  v3 = *(v0 + 48);
  v4 = v1;
  v5 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A2D0(v4, v5);
  v7 = sub_1003AF1FC(v3, isa);

  if (v7)
  {
    v8 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    v10 = v9;
    v161[0] = 0;
    v161[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000014;
    v11._object = 0x8000000100469CB0;
    String.append(_:)(v11);
    *(v0 + 32) = v7;
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    _print_unlocked<A, B>(_:_:)();
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = *(v0 + 24);
    *v10 = *(v0 + 16);
    v10[1] = v13;
    (*(*(v8 - 8) + 104))(v10, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v8);
    swift_willThrow();

LABEL_21:
    v41 = *(v0 + 8);

    return v41();
  }

  v14 = *(v0 + 48);
  v15 = sub_1002B3B94(&off_1004C4790);
  v17 = v16;
  v18 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v19 = sub_1003AEB5C(v14, v18, (v0 + 16));

  v20 = *(v0 + 16);
  if (!v19)
  {
    v38 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_20:
    sub_10006A178(v15, v17);
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_1003B0934(v19);
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v23, v25);
  v27 = [objc_opt_self() TLVWithData:v26];

  if (!v27)
  {
    goto LABEL_18;
  }

  if ([v27 tag] != 254)
  {

LABEL_18:
    v39 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    *v40 = 0xD000000000000026;
    v40[1] = 0x8000000100469930;
    (*(*(v39 - 8) + 104))(v40, enum case for SERXPCInternalErrors.formatError(_:), v39);
    swift_willThrow();
    goto LABEL_19;
  }

  v28 = [v27 childWithTag:57130];
  if (!v28)
  {
LABEL_15:
    v36 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    *v37 = 0xD000000000000033;
    v37[1] = 0x8000000100469960;
    (*(*(v36 - 8) + 104))(v37, enum case for SERXPCInternalErrors.formatError(_:), v36);
    swift_willThrow();

LABEL_19:
    goto LABEL_20;
  }

  v29 = v28;
  sub_10027AED0(0);
  if (v30 & 1) != 0 || (sub_10027AED0(1), (v31) || (v159 = sub_10027AED0(2), (v32) || (v157 = sub_10027AED0(3), (v33) || (v156 = sub_10027AED0(4), (v34) || (sub_10027AED0(5), (v35))
  {

    goto LABEL_15;
  }

  v43 = *(v0 + 40);
  sub_10027AED0(12);
  if ((SEType.isEOS.getter() & 1) == 0)
  {
    goto LABEL_67;
  }

  result = sub_10013044C(0xD0000000000000DELL, 0x80000001004699A0);
  v136 = result;
  v137 = v44;
  if (v44 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_78;
  }

  result = sub_10013044C(0xD0000000000000DELL, 0x8000000100469A80);
  v134 = result;
  v135 = v45;
  if (v45 >> 60 == 15)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  result = sub_10013044C(0xD0000000000000DELL, 0x8000000100469B60);
  v132 = result;
  v133 = v46;
  if (v46 >> 60 == 15)
  {
LABEL_79:
    __break(1u);
    return result;
  }

  v153 = *(v0 + 48);
  v47 = sub_1003AF3C4(v153, v46);
  v48 = [v47 isProd];

  if (v48)
  {
    v49 = v136;
  }

  else
  {
    v49 = v134;
  }

  if (v48)
  {
    v50 = v137;
  }

  else
  {
    v50 = v135;
  }

  sub_100069E2C(v49, v50);
  v130 = v49;
  v131 = v50;
  v51 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v52 = sub_1003AEA90(v153, v51, 2, (v0 + 16));

  v53 = *(v0 + 16);
  v142 = v52;
  if (!v52)
  {
    v64 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_63:

    return swift_unexpectedError();
  }

  v54 = qword_100501BD0;
  v55 = v53;
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_1000958E4(v56, qword_100508BF8);
  v57 = Logger.logObject.getter();
  v149 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v149))
  {
    v146 = swift_slowAlloc();
    buf = swift_slowAlloc();
    v161[0] = buf;
    *v146 = 136315138;
    log = v57;
    v58 = sub_1003AAA78(v142);
    v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v59;

    *(v0 + 16) = sub_100288788(v128, v143);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = v61;
    sub_10006A178(v128, v143);

    v63 = sub_1002FFA0C(v60, v62, v161);

    *(v146 + 4) = v63;
    _os_log_impl(&_mh_execute_header, log, v149, "MemoryReserve from SYSTEM OS: %s", v146, 0xCu);
    sub_1000752F4(buf);
  }

  else
  {
  }

  if (sub_1003B0984(v142) != 27010)
  {
    goto LABEL_48;
  }

  v66 = sub_1003AF3C4(*(v0 + 48), v65);
  v67 = [v66 chipId];

  if (v67 != 56)
  {
    goto LABEL_48;
  }

  v68 = *(v0 + 48);
  v69 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v70 = sub_1003AEA90(v68, v69, 2, (v0 + 16));

  v71 = *(v0 + 16);
  if (!v70)
  {
    v83 = v71;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_63;
  }

  v72 = v71;
  v73 = v70;

  v74 = v73;
  v75 = Logger.logObject.getter();
  LOBYTE(v73) = static os_log_type_t.default.getter();
  v142 = v74;

  v147 = v73;
  v150 = v75;
  if (os_log_type_enabled(v75, v73))
  {
    bufa = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v161[0] = v144;
    *bufa = 136315138;
    v76 = sub_1003AAA78(v74);
    loga = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    *(v0 + 16) = sub_100288788(loga, v78);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v79 = BidirectionalCollection<>.joined(separator:)();
    v81 = v80;
    sub_10006A178(loga, v78);

    v82 = sub_1002FFA0C(v79, v81, v161);

    *(bufa + 4) = v82;
    _os_log_impl(&_mh_execute_header, v150, v147, "MemoryReserve from SYSTEM OS (EOSV3): %s", bufa, 0xCu);
    sub_1000752F4(v144);
  }

  else
  {
  }

LABEL_48:
  v84 = sub_1003B0934(v142);
  v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  v145 = v85;
  v148 = v87;
  if ((sub_1002B3E60(&off_1004C47B8, v85, v87) & 1) == 0)
  {
    v104 = type metadata accessor for SERXPCInternalErrors();
    sub_10027B2FC();
    swift_allocError();
    *v105 = 0xD00000000000002BLL;
    v105[1] = 0x8000000100469C80;
    (*(*(v104 - 8) + 104))(v105, enum case for SERXPCInternalErrors.formatError(_:), v104);
    swift_willThrow();
    sub_10006A178(v15, v17);

    sub_10006A178(v85, v87);
    sub_10006A178(v130, v131);
    sub_10006A2D0(v132, v133);
    sub_10006A2D0(v134, v135);
    sub_10006A2D0(v136, v137);
    goto LABEL_21;
  }

  v88 = v87;
  v89 = 0;
  v90 = v85;
  do
  {
    sub_100069E2C(v90, v88);
    v151 = sub_100090214(v90, v88, v89 + 6, 1, 0);
    sub_10006A178(v90, v88);
    sub_100069E2C(v90, v88);
    v154 = v89;
    v93 = sub_100090214(v90, v88, v89 + 4, 1, 0);
    v94 = v88;
    v95 = v93;
    sub_10006A178(v90, v94);
    v96 = v95 << 9;
    if (v151 <= 0x500Fu)
    {
      v88 = v148;
      v97 = v89;
      if (!v151 || v151 == 20488)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v88 = v148;
      v97 = v89;
      if (v151 == 20496 || v151 == 36872 || v151 == 36880)
      {
        goto LABEL_50;
      }
    }

    v98 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v129))
    {
      v127 = v98;
      v99 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v161[0] = v126;
      *v99 = 136315394;
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1004098F0;
      *(v100 + 56) = &type metadata for UInt16;
      *(v100 + 64) = &protocol witness table for UInt16;
      *(v100 + 32) = v151;
      v101 = String.init(format:_:)();
      v103 = sub_1002FFA0C(v101, v102, v161);
      v97 = v154;

      *(v99 + 4) = v103;
      *(v99 + 12) = 2048;
      *(v99 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v127, v129, "Unexpected rule of reserve item %s -> %ld, new item introduced? ", v99, 0x16u);
      sub_1000752F4(v126);
    }

    else
    {
    }

    v88 = v148;
LABEL_50:
    v91 = v97 + 4;
    v92 = v91 >= 0x40;
    v89 = v91;
    v90 = v145;
  }

  while (!v92);
  sub_10006A178(v145, v88);

  sub_10006A178(v130, v131);
  sub_10006A2D0(v132, v133);
  sub_10006A2D0(v134, v135);
  sub_10006A2D0(v136, v137);
LABEL_67:
  v106 = (v156 - v157);
  if (__OFSUB__(v156, v157))
  {
    __break(1u);
  }

  else
  {
    v107 = objc_allocWithZone(type metadata accessor for MemoryUsage());
    v159 = MemoryUsage.init(pHeap:cor:cod:usedIndices:)();
    v108 = objc_allocWithZone(type metadata accessor for SERMemoryInfo());
    v106 = SERMemoryInfo.init(availableIndices:totalIndices:availablePersistentExcludingIndex:availableCommonPoolPersistent:reservedFlashForSE:reservedFlashForEUICC:)();
    if (qword_100501BD0 == -1)
    {
      goto LABEL_69;
    }
  }

  swift_once();
LABEL_69:
  v109 = type metadata accessor for Logger();
  sub_1000958E4(v109, qword_100508BF8);
  v110 = v159;
  v111 = v106;
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  v158 = v110;
  v160 = v111;
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v161[0] = swift_slowAlloc();
    *v114 = 136315394;
    v155 = v113;
    v115 = [v110 debugDescription];
    v152 = v112;
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;

    v119 = sub_1002FFA0C(v116, v118, v161);

    *(v114 + 4) = v119;
    *(v114 + 12) = 2080;
    v120 = [v160 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124 = sub_1002FFA0C(v121, v123, v161);

    *(v114 + 14) = v124;
    v112 = v152;
    _os_log_impl(&_mh_execute_header, v152, v155, "freeMemory: %s\nMemoryInfo: %s", v114, 0x16u);
    swift_arrayDestroy();
  }

  sub_10006A178(v15, v17);

  v125 = *(v0 + 8);

  return v125(v158, v160);
}

id sub_10027AED0(char a1)
{
  v3 = [v1 value];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v5, v7);
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [objc_opt_self() TLVWithTag:dword_1004139B8[a1] fromData:v8.super.isa];

  if (v9)
  {
    result = [v9 value];
    if (result)
    {
      v11 = result;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v23 = sub_1000939F8(v12, v14, 0, 0, 0);
      sub_10006A178(v12, v14);

      return v23;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100501BD0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_100508BF8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = String.init<A>(describing:)();
      v22 = sub_1002FFA0C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to parse Available Memory's child %s ", v18, 0xCu);
      sub_1000752F4(v19);
    }

    return 0;
  }

  return result;
}

Swift::Int sub_10027B16C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1004139B8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10027B1F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1004139B8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10027B240@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027B4FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10027B284()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100508BF8);
  sub_1000958E4(v0, qword_100508BF8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10027B2FC()
{
  result = qword_100507080;
  if (!qword_100507080)
  {
    type metadata accessor for SERXPCInternalErrors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailableMemoryTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AvailableMemoryTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027B4A8()
{
  result = qword_100508C10;
  if (!qword_100508C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508C10);
  }

  return result;
}

uint64_t sub_10027B4FC(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return 13;
  }

  else
  {
    return byte_1004139EC[a1];
  }
}

void *sub_10027B51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_10019F464(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v2 + 36);
  v33 = v2 + 72;
  v34 = v1;
  v35 = v8;
  v37 = v2 + 64;
  v36 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v39 = v6 >> 6;
    v38 = v7;
    v10 = (*(v2 + 48) + 16 * v6);
    v11 = *v10;
    v12 = v10[1];
    v42 = *v10;
    v13 = (*(v2 + 56) + 24 * v6);
    v14 = *v13;
    v15 = v13[1];
    v40 = *v13;
    sub_100068FC4(&unk_100507CD0, &unk_100414C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    *(inited + 32) = 0xD000000000000021;
    *(inited + 40) = 0x8000000100469D60;
    sub_100069E2C(v11, v12);
    v41 = v15;
    sub_100069E2C(v14, v15);
    sub_100288788(v11, v12);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    *(inited + 48) = v17;
    *(inited + 56) = v19;
    *(inited + 64) = 0x44492079654BLL;
    *(inited + 72) = 0xE600000000000000;
    sub_100288788(v40, v15);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    *(inited + 80) = v20;
    *(inited + 88) = v22;
    v23 = sub_1000910F0(inited);
    swift_setDeallocating();
    sub_100068FC4(&unk_100504020, &qword_100409CC0);
    swift_arrayDestroy();
    sub_10006A178(v42, v12);
    result = sub_10006A178(v40, v41);
    v25 = _swiftEmptyArrayStorage[2];
    v24 = _swiftEmptyArrayStorage[3];
    if (v25 >= v24 >> 1)
    {
      result = sub_10019F464((v24 > 1), v25 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v25 + 1;
    _swiftEmptyArrayStorage[v25 + 4] = v23;
    v2 = v36;
    v9 = 1 << *(v36 + 32);
    v3 = v37;
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v26 = *(v37 + 8 * v39);
    if ((v26 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v35;
    if (v35 != *(v36 + 36))
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v6 & 0x3F));
    if (v27)
    {
      v9 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v39 << 6;
      v29 = v39 + 1;
      v30 = (v33 + 8 * v39);
      while (v29 < (v9 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1000937D4(v6, v35, 0);
          v9 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v6, v35, 0);
    }

LABEL_4:
    v7 = v38 + 1;
    v6 = v9;
    if (v38 + 1 == v34)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

void sub_10027B91C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_9:

    v16 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    if (v17 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v18 = v16;
      v19 = v17;
      sub_1001C1974(v7, v16, v17);
      sub_10006A2D0(v18, v19);

      v30[3] = v2;
      v30[4] = &off_1004CE8A0;
      v30[0] = v1;

      v20 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
      if (v21 >> 60 != 15)
      {
        v22 = v20;
        v23 = v21;
        sub_1001BF594(v30, v20, v21);
        sub_10006A2D0(v22, v23);
        sub_1000752F4(v30);
        *(v1 + 16) = 1;
        v24 = sub_10013044C(0xD000000000000012, 0x8000000100461630);
        if (v25 >> 60 != 15)
        {
          v26 = v24;
          v27 = v25;

          v28 = sub_1001C1BA4(v26, v27);
          sub_10006A2D0(v26, v27);
          sub_10027CF30(v28);

          return;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    sub_100068FC4(&unk_100504720, &qword_100414C40);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_100409A40;
    *(v7 + 4) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v7 + 5) = v13;
    *(v7 + 6) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v7 + 7) = v14;
    *(v7 + 8) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v7 + 9) = v15;
    if (qword_100501A58 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LyonExpress is already running", v12, 2u);
  }
}

uint64_t sub_10027BD00(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + 16) != 1)
  {
    v19 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v19, v18, "LyonExpress is not running", v20, 2u);
    }

    goto LABEL_15;
  }

  if (qword_100501A58 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  result = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v14 >> 60 != 15)
  {
    v15 = result;
    v16 = v14;
    v17 = sub_1001C2924(a1, a2, result, v14);
    sub_10006A2D0(v15, v16);
    if (v17)
    {
      v18 = sub_100280304(v17);

      return v18;
    }

    v21 = OBJC_IVAR____TtC10seserviced11LyonExpress_logger;
    sub_100069E2C(a1, a2);
    v18 = v3 + v21;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v30 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v18 = BidirectionalCollection<>.joined(separator:)();
      v27 = v26;

      v28 = sub_1002FFA0C(v18, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Configured items missing for key %s", v24, 0xCu);
      sub_1000752F4(v25);
    }

LABEL_15:
    sub_100079E24();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027C110(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    result = sub_10013044C(0xD000000000000012, 0x8000000100461630);
    if (v13 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v14 = result;
      v15 = v13;
      v16 = sub_1001C1F18(a1, a2, result, v13);
      sub_10006A2D0(v14, v15);
      return v16;
    }

    return result;
  }

  if (*(v2 + 16) == 1)
  {
    if (qword_100501A58 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "LyonExpress is not running", v19, 2u);
  }

  return 0;
}

uint64_t sub_10027C37C(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (*(v2 + 16) == 1)
    {
      v13 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
      swift_beginAccess();
      v14 = *(v2 + v13);
      if (*(v14 + 16))
      {
        v15 = sub_10008C8DC(a1, a2);
        if (v16)
        {
          v17 = (*(v14 + 56) + 24 * v15);
          v18 = *v17;
          v19 = v17[1];
          swift_endAccess();
          sub_100069E2C(v18, v19);
          return v18;
        }
      }

      swift_endAccess();
      sub_100069E2C(a1, a2);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;
        v31[1] = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v27 = BidirectionalCollection<>.joined(separator:)();
        v29 = v28;

        v30 = sub_1002FFA0C(v27, v29, &v32);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Invalid pass %s not an active express endpoint", v25, 0xCu);
        sub_1000752F4(v26);
      }
    }

    else
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "LyonExpress is not running", v22, 2u);
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10027C718(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + 16) != 1)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "LyonExpress is not running", v25, 2u);
    }

    return 0;
  }

  if (qword_100501A58 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  result = sub_10013044C(0xD000000000000012, 0x8000000100461630);
  if (v14 >> 60 != 15)
  {
    v15 = result;
    v16 = v14;
    v17 = sub_1001C2924(a1, a2, result, v14);
    sub_10006A2D0(v15, v16);
    if (!v17)
    {
      sub_100069E2C(a1, a2);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v39[0] = v29;
        *v28 = 136315138;
        v40 = sub_100288788(a1, a2);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        v33 = sub_1002FFA0C(v30, v32, v39);

        *(v28 + 4) = v33;
        v34 = "Configured items missing for key %s";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v26, v27, v34, v28, 0xCu);
        sub_1000752F4(v29);
      }

LABEL_22:

      return 0;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v17 + 16))
    {
      v20 = sub_10008C908(v18, v19);
      v22 = v21;

      if (v22)
      {
        sub_1000754F0(*(v17 + 56) + 32 * v20, v39);

        sub_100068FC4(&qword_100502458, &qword_10040C1F0);
        if (swift_dynamicCast())
        {
          return v40;
        }

LABEL_19:
        sub_100069E2C(a1, a2);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        sub_10006A178(a1, a2);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v39[0] = v29;
          *v28 = 136315138;
          v40 = sub_100288788(a1, a2);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v35 = BidirectionalCollection<>.joined(separator:)();
          v37 = v36;

          v38 = sub_1002FFA0C(v35, v37, v39);

          *(v28 + 4) = v38;
          v34 = "GRKs missing for %s";
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027CC74()
{
  v0 = type metadata accessor for LyonExpress();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10027CCB4();
  qword_10051B690 = result;
  return result;
}

uint64_t sub_10027CCB4()
{
  *(v0 + 16) = 0;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v1 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
  *(v0 + v1) = sub_100091354(_swiftEmptyArrayStorage);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v4[4] = sub_100280E48;
  v4[5] = v0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100193978;
  v4[3] = &unk_1004CE8B0;
  v2 = _Block_copy(v4);

  os_state_add_handler();
  _Block_release(v2);
  return v0;
}

_DWORD *sub_10027CE00()
{
  v1 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v4 = sub_10027B51C(v3);

  v11 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v10 = v4;
  sub_100075D50(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v9, 0xD000000000000016, 0x8000000100469D20, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = sub_100015DA0("lyonexpress.state", isa);

  return v7;
}

void sub_10027CF30(char *a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_216;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    v15 = *(v10 + 104);
    LODWORD(v212) = enum case for DispatchPredicate.onQueue(_:);
    *&v211 = v10 + 104;
    *&v210 = v15;
    v15(v13);
    v208 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    v16 = *(v10 + 8);
    v10 += 8;
    v207 = v16;
    (v16)(v13, v9);
    if ((v14 & 1) == 0)
    {
      __break(1u);
LABEL_218:
      swift_once();
      goto LABEL_7;
    }

    v2 = OBJC_IVAR____TtC10seserviced11LyonExpress_logger;
    if (*(v1 + 16) != 1)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "LyonExpress is not running", v31, 2u);
      }

      return;
    }

    v206 = v4;

    v209 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v19 = os_log_type_enabled(v17, v18);
    v214 = a1;
    v205 = v8;
    v204 = v9;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v221 = v21;
      *v20 = 136315138;
      v22 = sub_1001C337C();
      v24 = sub_1002FFA0C(v22, v23, &v221);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s", v20, 0xCu);
      sub_1000752F4(v21);
    }

    if (qword_100501D78 != -1)
    {
      goto LABEL_218;
    }

LABEL_7:
    v1 = off_10050B110;
    v25 = sub_1000CAAC4();
    a1 = v214;
    v26 = v25 & 0xC000000000000001;
    v198 = v214[16];
    v201 = v2;
    v199 = v25;
    if (v198 != 2)
    {
      break;
    }

    if (v26)
    {

      __CocoaSet.makeIterator()();
      v1 = type metadata accessor for Peer();
      sub_10025D554(&qword_100503F20, type metadata accessor for Peer);
      Set.Iterator.init(_cocoa:)();
      v10 = v221;
      v4 = v222;
      v28 = v223;
      v8 = v224;
      v2 = v225;
    }

    else
    {
      v35 = -1 << *(v25 + 32);
      v4 = v25 + 56;
      v28 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v2 = v37 & *(v25 + 56);

      v8 = 0;
    }

    v9 = (v28 + 64) >> 6;
    v212 = (v5 + 16);
    v213 = v28;
    *&v211 = v5 + 8;
    *&v27 = 136315138;
    v210 = v27;
    while (v10 < 0)
    {
      v1 = v10 & 0x7FFFFFFFFFFFFFFFLL;
      v42 = __CocoaSet.Iterator.next()();
      if (!v42 || (v217 = v42, type metadata accessor for Peer(), swift_dynamicCast(), v41 = v220[0], v13 = v8, v5 = v2, !v220[0]))
      {
LABEL_38:
        sub_100093854();
        goto LABEL_78;
      }

LABEL_34:
      if (*v41 == _TtC10seserviced8LyonPeer && *(v41 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) != 1)
      {

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v204 = v45;
          v208 = swift_slowAlloc();
          v220[0] = v208;
          *v45 = v210;
          isa = v212->isa;
          v207 = v43;
          v47 = v205;
          v48 = v206;
          isa(v205, v41 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v206);
          sub_10025D554(&qword_100504C70, &type metadata accessor for UUID);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v203) = v44;
          v50 = v49;
          v52 = v51;
          (*v211)(v47, v48);
          v53 = sub_1002FFA0C(v50, v52, v220);
          a1 = v214;

          v54 = v204;
          *(v204 + 4) = v53;
          v55 = v207;
          _os_log_impl(&_mh_execute_header, v207, v203, "Disconnecting %s due to biolockout", v54, 0xCu);
          sub_1000752F4(v208);
        }

        else
        {
        }

        v38 = *(v41 + OBJC_IVAR____TtC10seserviced8LyonPeer_analyticsData);
        *(v38 + 84) = 3;
        *(v38 + 88) = 0;
        if (qword_1005018F8 != -1)
        {
          swift_once();
        }

        v1 = qword_10051B188;
        sub_100080E48(v41, 0);
      }

      v8 = v13;
      v2 = v5;
    }

    v39 = v8;
    v40 = v2;
    v13 = v8;
    if (v2)
    {
LABEL_30:
      v5 = (v40 - 1) & v40;
      v41 = *(*(v10 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v40)))));

      if (!v41)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    while (1)
    {
      v13 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_38;
      }

      v40 = *(v4 + 8 * v13);
      ++v39;
      if (v40)
      {
        goto LABEL_30;
      }
    }

LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    swift_once();
  }

  if (v26)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for Peer();
    sub_10025D554(&qword_100503F20, type metadata accessor for Peer);
    Set.Iterator.init(_cocoa:)();
    v4 = v222;
    v213 = v221;
    v33 = v223;
    v8 = v224;
    v34 = v225;
  }

  else
  {
    v56 = -1 << *(v25 + 32);
    v4 = v25 + 56;
    v33 = ~v56;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v34 = v58 & *(v25 + 56);
    v8 = 0;
  }

  v200 = v33;
  a1 = ((v33 + 64) >> 6);
  v196 = v5 + 16;
  v195 = (v5 + 8);
  *&v32 = 136315138;
  v194 = v32;
  v1 = v213;
  while ((v1 & 0x8000000000000000) != 0)
  {
    v64 = __CocoaSet.Iterator.next()();
    if (!v64)
    {
      goto LABEL_77;
    }

    v217 = v64;
    type metadata accessor for Peer();
    swift_dynamicCast();
    v5 = v220[0];
    v9 = v8;
    v2 = v34;
    v1 = v213;
    if (!v220[0])
    {
      goto LABEL_77;
    }

LABEL_59:
    if (*v5 == _TtC10seserviced8LyonPeer)
    {
      v65 = (v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v59 = *(v5 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v59 >> 60 != 15)
      {
        v203 = v2;
        v66 = v10;
        v67 = *v65;
        v68 = *(v214 + 3);
        sub_100069E2C(*v65, v59);
        v202 = v67;
        v69 = v67;
        v10 = v66;
        if ((sub_1000C66AC(v69, v59, v68) & 1) == 0)
        {

          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v192 = v72;
            v193 = swift_slowAlloc();
            v220[0] = v193;
            *v72 = v194;
            v73 = *v196;
            v74 = v205;
            LODWORD(v191) = v71;
            v75 = v206;
            (v73)(v205, v5 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v206);
            sub_10025D554(&qword_100504C70, &type metadata accessor for UUID);
            v190 = dispatch thunk of CustomStringConvertible.description.getter();
            *&v197 = v59;
            v77 = v76;
            (v195->isa)(v74, v75);
            v78 = sub_1002FFA0C(v190, v77, v220);
            v59 = v197;

            v79 = v192;
            *(v192 + 1) = v78;
            _os_log_impl(&_mh_execute_header, v70, v191, "Disconnecting %s because it is no longer an express key", v79, 0xCu);
            sub_1000752F4(v193);
          }

          if (qword_1005018F8 != -1)
          {
            swift_once();
          }

          sub_100080E48(v5, 256);
          v1 = v213;
        }

        v2 = v203;
        if (*(v5 + OBJC_IVAR____TtC10seserviced8LyonPeer_sessionState) == 1)
        {
          *&v197 = v59;
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          v80 = qword_10051B268;
          v81 = v208;
          *v13 = v208;
          v82 = v204;
          (v210)(v13, v212, v204);
          v83 = v81;
          LOBYTE(v81) = _dispatchPreconditionTest(_:)();
          (v207)(v13, v82);
          if ((v81 & 1) == 0)
          {
            goto LABEL_226;
          }

          if (*(v80 + 16) == 1)
          {
            v59 = v197;
            if (qword_100501960 != -1)
            {
              swift_once();
            }

            v84 = qword_10051B288;

            sub_10011333C(v5, v84, v5, v80);
          }

          else
          {
            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              *v87 = 0;
              _os_log_impl(&_mh_execute_header, v85, v86, "Not running", v87, 2u);
            }

            v59 = v197;
          }

          if (qword_1005018E8 != -1)
          {
            swift_once();
          }

          v60 = *(qword_10051B168 + OBJC_IVAR____TtC10seserviced6LyonSE_urskSlotManager);
          v61 = qword_10051B168;
          sub_1000757C8(v5, v60, v61);

          v1 = v213;
        }

        sub_10006A2D0(v202, v59);
      }
    }

    v8 = v9;
    v34 = v2;
  }

  v62 = v8;
  v63 = v34;
  v9 = v8;
  if (v34)
  {
LABEL_55:
    v2 = (v63 - 1) & v63;
    v5 = *(*(v1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v63)))));

    if (!v5)
    {
      goto LABEL_77;
    }

    goto LABEL_59;
  }

  while (1)
  {
    v9 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_208;
    }

    if (v9 >= a1)
    {
      break;
    }

    v63 = *(v4 + 8 * v9);
    ++v62;
    if (v63)
    {
      goto LABEL_55;
    }
  }

LABEL_77:
  sub_100093854();
  a1 = v214;
LABEL_78:
  v5 = _swiftEmptyArrayStorage;
  v88 = sub_100091354(_swiftEmptyArrayStorage);
  v89 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
  v9 = v209;
  swift_beginAccess();
  v90 = *(v9 + v89);
  v200 = v89;
  *(v9 + v89) = v88;

  v2 = *(a1 + 3);
  v4 = v2 + 56;
  v91 = 1 << *(v2 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v1 = v92 & *(v2 + 56);
  v93 = (v91 + 63) >> 6;
  v206 = "Update Aliro Versions";

  v8 = 0;
  *&v94 = 136315138;
  v197 = v94;
  v211 = xmmword_1004098F0;
  v214 = _swiftEmptyArrayStorage;
  a1 = v201;
  v207 = (v2 + 56);
  v205 = v93;
  if (!v1)
  {
    goto LABEL_81;
  }

LABEL_85:
  while (2)
  {
    v96 = (*(v2 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v1)))));
    v10 = *v96;
    v13 = v96[1];
    sub_100069E2C(*v96, v13);
    if (qword_100501A58 != -1)
    {
      swift_once();
    }

    v97 = sub_10013044C(0xD000000000000012, v206 | 0x8000000000000000);
    if (v98 >> 60 == 15)
    {
      goto LABEL_238;
    }

    v99 = v97;
    v100 = v98;
    v5 = (v1 - 1) & v1;
    v208 = v5;
    v101 = sub_1001C2924(v10, v13, v97, v98);
    sub_10006A2D0(v99, v100);
    v212 = v13;
    v213 = v10;
    if (!v101)
    {
      sub_100069E2C(v10, v13);
      v9 = v209;
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      sub_10006A178(v10, v13);
      if (!os_log_type_enabled(v108, v109))
      {

        v112 = v10;
        goto LABEL_101;
      }

      v5 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v216[0] = v110;
      *v5 = v197;
      v111 = v13 >> 62;
      v4 = v207;
      v196 = v108;
      LODWORD(v195) = v109;
      *&v194 = v5;
      v193 = v110;
      if ((v13 >> 62) > 1)
      {
        if (v111 != 2)
        {
          v116 = _swiftEmptyArrayStorage;
          goto LABEL_141;
        }

        v192 = v2;
        v114 = *(v10 + 16);
        v113 = *(v10 + 24);
        v2 = v113 - v114;
        if (__OFSUB__(v113, v114))
        {
LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

        if (!v2)
        {
LABEL_113:
          v116 = _swiftEmptyArrayStorage;
          a1 = v201;
          v2 = v192;
LABEL_141:
          v217 = v116;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v128 = BidirectionalCollection<>.joined(separator:)();
          v130 = v129;

          v131 = sub_1002FFA0C(v128, v130, v216);

          v132 = v194;
          *(v194 + 4) = v131;
          v133 = v196;
          _os_log_impl(&_mh_execute_header, v196, v195, "Configured items missing for key %s", v132, 0xCu);
          v5 = v193;
          sub_1000752F4(v193);

          sub_10006A178(v10, v13);

          v9 = v209;
          goto LABEL_103;
        }
      }

      else
      {
        v192 = v2;
        if (v111)
        {
          v117 = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
            goto LABEL_242;
          }

          v2 = v117;
          if (!v117)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v2 = BYTE6(v13);
          if (!BYTE6(v13))
          {
            goto LABEL_113;
          }
        }
      }

      v215 = _swiftEmptyArrayStorage;
      v9 = v2 & ~(v2 >> 63);
      v1 = &v215;
      *&v210 = v13 >> 62;
      sub_10019F3C0(0, v9, 0);
      v115 = v210;
      v116 = v215;
      if (v210 == 2)
      {
        v4 = *(v10 + 16);
      }

      else
      {
        if (v210 != 1)
        {
          if (v2 < 0)
          {
            goto LABEL_231;
          }

          v4 = 0;
LABEL_120:
          v204 = v10;
          v202 = v10 >> 32;
          v203 = BYTE6(v13);
          while (1)
          {
            if (!v9)
            {
              goto LABEL_209;
            }

            if (v115 == 2)
            {
              if (v4 < *(v10 + 16))
              {
                goto LABEL_210;
              }

              if (v4 >= *(v10 + 24))
              {
                goto LABEL_213;
              }

              v121 = __DataStorage._bytes.getter();
              if (!v121)
              {
                goto LABEL_240;
              }

              v10 = v121;
              v1 = v13 & 0x3FFFFFFFFFFFFFFFLL;
              v122 = __DataStorage._offset.getter();
              v120 = v4 - v122;
              if (__OFSUB__(v4, v122))
              {
                goto LABEL_215;
              }
            }

            else
            {
              if (v115 != 1)
              {
                if (v4 >= v203)
                {
                  goto LABEL_211;
                }

                v217 = v10;
                LOWORD(v218) = v13;
                BYTE2(v218) = BYTE2(v13);
                HIBYTE(v218) = BYTE3(v13);
                LOBYTE(v219) = BYTE4(v13);
                HIBYTE(v219) = BYTE5(v13);
                v1 = *(&v217 + v4);
                goto LABEL_137;
              }

              if (v4 < v204 || v4 >= v202)
              {
                goto LABEL_212;
              }

              v118 = __DataStorage._bytes.getter();
              if (!v118)
              {
                goto LABEL_239;
              }

              v10 = v118;
              v1 = v13 & 0x3FFFFFFFFFFFFFFFLL;
              v119 = __DataStorage._offset.getter();
              v120 = v4 - v119;
              if (__OFSUB__(v4, v119))
              {
                goto LABEL_214;
              }
            }

            v1 = *(v10 + v120);
LABEL_137:
            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v123 = swift_allocObject();
            *(v123 + 16) = v211;
            *(v123 + 56) = &type metadata for UInt8;
            *(v123 + 64) = &protocol witness table for UInt8;
            *(v123 + 32) = v1;
            a1 = String.init(format:_:)();
            v125 = v124;
            v215 = v116;
            v5 = v116[2];
            v126 = v116[3];
            if (v5 >= v126 >> 1)
            {
              v1 = &v215;
              sub_10019F3C0((v126 > 1), v5 + 1, 1);
              v116 = v215;
            }

            v116[2] = v5 + 1;
            v127 = &v116[2 * v5];
            v127[4] = a1;
            v127[5] = v125;
            ++v4;
            --v9;
            --v2;
            v13 = v212;
            v10 = v213;
            v115 = v210;
            if (!v2)
            {
              a1 = v201;
              v2 = v192;
              v4 = v207;
              goto LABEL_141;
            }
          }
        }

        v4 = v10;
      }

      if (v2 < 0)
      {
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      goto LABEL_120;
    }

    v102 = swift_allocObject();
    *(v102 + 16) = v10;
    *(v102 + 24) = v13;
    sub_100069E2C(v10, v13);
    if (qword_1005019E8 != -1)
    {
      swift_once();
    }

    v103 = swift_allocObject();
    *(v103 + 16) = sub_10023F790;
    *(v103 + 24) = v102;

    v104 = sub_1000CAA04();

    v10 = sub_1000CA810(v104);

    if (!v10)
    {

      v9 = v209;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "Failed to retrieve endpoint", v107, 2u);
      }

      sub_10006A178(v213, v13);

      goto LABEL_102;
    }

    v134 = [v10 homeUUIDString];
    if (v134)
    {
      v135 = v134;
      v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v138 = v137;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v214 = sub_10012EA44(0, *(v214 + 2) + 1, 1, v214);
      }

      v5 = *(v214 + 2);
      v139 = *(v214 + 3);
      if (v5 >= v139 >> 1)
      {
        v214 = sub_10012EA44((v139 > 1), v5 + 1, 1, v214);
      }

      v140 = v214;
      *(v214 + 2) = v5 + 1;
      v141 = &v140[16 * v5];
      *(v141 + 4) = v136;
      *(v141 + 5) = v138;
      v9 = v209;
      goto LABEL_193;
    }

    v142 = v213;
    sub_100069E2C(v213, v13);
    v9 = v209;
    v5 = Logger.logObject.getter();
    v143 = static os_log_type_t.default.getter();
    sub_10006A178(v142, v13);
    if (!os_log_type_enabled(v5, v143))
    {
      goto LABEL_192;
    }

    v195 = v5;
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v216[0] = v145;
    v193 = v144;
    *v144 = v197;
    v146 = v13 >> 62;
    v204 = HIDWORD(v142);
    LODWORD(v194) = v143;
    v191 = v145;
    if ((v13 >> 62) <= 1)
    {
      if (!v146)
      {
        v147 = BYTE6(v13);
        goto LABEL_158;
      }

      if (!__OFSUB__(v204, v213))
      {
        v147 = v204 - v213;
        goto LABEL_158;
      }

LABEL_243:
      __break(1u);
    }

    if (v146 != 2)
    {
      v152 = _swiftEmptyArrayStorage;
      goto LABEL_191;
    }

    v149 = *(v213 + 16);
    v148 = *(v213 + 24);
    v147 = v148 - v149;
    if (__OFSUB__(v148, v149))
    {
LABEL_242:
      __break(1u);
      goto LABEL_243;
    }

LABEL_158:
    if (!v147)
    {
      v152 = _swiftEmptyArrayStorage;
      goto LABEL_190;
    }

    v215 = _swiftEmptyArrayStorage;
    v150 = v147 & ~(v147 >> 63);
    *&v210 = v146;
    sub_10019F3C0(0, v150, 0);
    v151 = v210;
    v152 = v215;
    v203 = v213;
    v192 = v2;
    if (v210 == 2)
    {
      v153 = *(v213 + 16);
LABEL_165:
      if ((v147 & 0x8000000000000000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_241;
    }

    if (v210 == 1)
    {
      v153 = v203;
      goto LABEL_165;
    }

    if (v147 < 0)
    {
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      return;
    }

    v153 = 0;
LABEL_169:
    v196 = v213 >> 32;
    v202 = BYTE6(v212);
    while (2)
    {
      if (!v150)
      {
        goto LABEL_228;
      }

      if (v151 == 2)
      {
        if (v153 < *(v213 + 16))
        {
          goto LABEL_233;
        }

        if (v153 >= *(v213 + 24))
        {
          goto LABEL_236;
        }

        v158 = __DataStorage._bytes.getter();
        if (!v158)
        {
          goto LABEL_246;
        }

        v155 = v158;
        v159 = __DataStorage._offset.getter();
        v157 = v153 - v159;
        if (__OFSUB__(v153, v159))
        {
          goto LABEL_237;
        }

LABEL_183:
        v160 = *(v155 + v157);
      }

      else
      {
        if (v151 == 1)
        {
          if (v153 < v203 || v153 >= v196)
          {
            goto LABEL_232;
          }

          v154 = __DataStorage._bytes.getter();
          if (!v154)
          {
            goto LABEL_245;
          }

          v155 = v154;
          v156 = __DataStorage._offset.getter();
          v157 = v153 - v156;
          if (__OFSUB__(v153, v156))
          {
            goto LABEL_235;
          }

          goto LABEL_183;
        }

        if (v153 >= v202)
        {
          goto LABEL_234;
        }

        LODWORD(v217) = v213;
        BYTE4(v217) = v204;
        *(&v217 + 5) = *(&v213 + 5);
        HIBYTE(v217) = HIBYTE(v213);
        v218 = v212;
        v219 = WORD2(v212);
        v160 = *(&v217 + v153);
      }

      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v161 = swift_allocObject();
      *(v161 + 16) = v211;
      *(v161 + 56) = &type metadata for UInt8;
      *(v161 + 64) = &protocol witness table for UInt8;
      *(v161 + 32) = v160;
      v162 = String.init(format:_:)();
      v215 = v152;
      v165 = v152[2];
      v164 = v152[3];
      if (v165 >= v164 >> 1)
      {
        v190 = v162;
        v189 = v163;
        sub_10019F3C0((v164 > 1), v165 + 1, 1);
        v163 = v189;
        v162 = v190;
        v152 = v215;
      }

      v152[2] = v165 + 1;
      v166 = &v152[2 * v165];
      v166[4] = v162;
      v166[5] = v163;
      ++v153;
      --v150;
      --v147;
      v9 = v209;
      v151 = v210;
      if (v147)
      {
        continue;
      }

      break;
    }

    a1 = v201;
    v2 = v192;
LABEL_190:
    v13 = v212;
LABEL_191:
    v217 = v152;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v167 = BidirectionalCollection<>.joined(separator:)();
    v169 = v168;

    v170 = sub_1002FFA0C(v167, v169, v216);

    v171 = v193;
    *(v193 + 4) = v170;
    v5 = v195;
    _os_log_impl(&_mh_execute_header, v195, v194, "%s has no home UUID set", v171, 0xCu);
    sub_1000752F4(v191);

LABEL_192:

LABEL_193:
    v172 = v200;
    swift_beginAccess();
    v173 = (v9 + v172);
    v174 = v213;
    sub_10027EEE8(v173, v101, v213, v13);
    swift_endAccess();

    v112 = v174;
LABEL_101:
    sub_10006A178(v112, v13);
LABEL_102:
    v4 = v207;
LABEL_103:
    v93 = v205;
    v1 = v208;
    if (v208)
    {
      continue;
    }

    break;
  }

LABEL_81:
  while (2)
  {
    v95 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_207;
    }

    if (v95 < v93)
    {
      v1 = *(v4 + 8 * v95);
      ++v8;
      if (!v1)
      {
        continue;
      }

      v8 = v95;
      goto LABEL_85;
    }

    break;
  }

  if (qword_100501B00 != -1)
  {
    swift_once();
  }

  v175 = qword_10051B4D0;
  v176 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
  swift_beginAccess();
  v213 = v175;
  v177 = *(v175 + v176);
  v178 = v200;
  if (v177 >> 62)
  {
    v179 = _CocoaArrayWrapper.endIndex.getter();
    if (!v179)
    {
      goto LABEL_220;
    }

LABEL_198:
    if (v179 >= 1)
    {

      v180 = 0;
      do
      {
        if ((v177 & 0xC000000000000001) != 0)
        {
          v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v181 = *(v177 + 8 * v180 + 32);
        }

        v182 = v181;
        ++v180;
        v183 = *&v181[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8];
        v216[0] = *&v181[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID];
        v216[1] = v183;
        __chkstk_darwin(v181);
        *(&v188 - 2) = v216;

        v184 = sub_1002F784C(sub_10012E558, (&v188 - 4), v214);

        v182[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] = v184 & 1;
      }

      while (v179 != v180);

      v9 = v209;
      v178 = v200;
      goto LABEL_220;
    }

    __break(1u);
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v179 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v179)
  {
    goto LABEL_198;
  }

LABEL_220:

  sub_1001DD3DC();
  if (qword_100501BF0 != -1)
  {
    swift_once();
  }

  sub_1002A24A4(v198 == 2, 2, 2, *(*(v9 + v178) + 16) != 0, 0, 2);
  if (qword_100501B58 != -1)
  {
    swift_once();
  }

  v185 = *(v9 + v178);

  v187 = sub_1000E39D0(v186);
  sub_10022C6BC(v187);
}

void sub_10027EEE8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a2 + 16))
  {

LABEL_8:
    v15 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v20))
    {
LABEL_11:

      return;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v133 = v22;
    *v21 = 136315138;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = sub_1002FFA0C(v23, v24, &v133);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v20, "Primary reader identifier with key: %s expected to be a string", v21, 0xCu);
    sub_1000752F4(v22);

LABEL_10:

    goto LABEL_11;
  }

  v10 = sub_10008C908(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1000754F0(*(a2 + 56) + 32 * v10, &v133);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = sub_10013044C(v132, *(&v132 + 1));
  if (v14 >> 60 == 15)
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_11;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v133 = v18;
    *v17 = 136315138;
    v19 = sub_1002FFA0C(v132, *(&v132 + 1), &v133);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Cannot get data representation of %s", v17, 0xCu);
    sub_1000752F4(v18);

    goto LABEL_10;
  }

  v26 = v13;
  v27 = v14;

  sub_100069E2C(v26, v27);
  sub_100288640(8, v26, v27, &v133);
  v29 = v133;
  v28 = v134;
  sub_100069E2C(v133, v134);
  sub_100069E2C(a3, a4);
  v30 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = *a1;
  sub_1003155DC(a3, a4, -1, v29, v28, isUniquelyReferenced_nonNull_native);
  v130 = v29;
  v131 = v28;
  sub_10006A178(v29, v28);
  v128 = v133;
  *a1 = v133;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a2 + 16))
  {

LABEL_67:
    v103 = v26;
    sub_100069E2C(a3, a4);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    sub_10006A178(a3, a4);
    if (!os_log_type_enabled(v104, v105))
    {
LABEL_70:
      sub_10006A2D0(v103, v27);
      sub_10006A178(v130, v28);

      return;
    }

    v106 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v106 = 136315394;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = sub_1002FFA0C(v107, v108, &v133);

    *(v106 + 4) = v109;
    *(v106 + 12) = 2080;
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v110 = BidirectionalCollection<>.joined(separator:)();
    v112 = v111;

    v113 = sub_1002FFA0C(v110, v112, &v133);

    *(v106 + 14) = v113;
    v114 = "No ecp2info with key %s found for endpoint %s";
LABEL_69:
    _os_log_impl(&_mh_execute_header, v104, v105, v114, v106, 0x16u);
    swift_arrayDestroy();

    goto LABEL_70;
  }

  v34 = sub_10008C908(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_67;
  }

  sub_1000754F0(*(a2 + 56) + 32 * v34, &v133);
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v132 + 16))
  {
    v103 = v26;

LABEL_73:

LABEL_74:
    sub_100069E2C(a3, a4);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    sub_10006A178(a3, a4);
    if (!os_log_type_enabled(v104, v105))
    {
      goto LABEL_70;
    }

    v106 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v106 = 136315394;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = sub_1002FFA0C(v115, v116, &v133);

    *(v106 + 4) = v117;
    *(v106 + 12) = 2080;
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v118 = BidirectionalCollection<>.joined(separator:)();
    v120 = v119;

    v121 = sub_1002FFA0C(v118, v120, &v133);

    *(v106 + 14) = v121;
    v114 = "No aux keys with key: %s found for endpoint %s";
    goto LABEL_69;
  }

  v39 = sub_10008C908(v37, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    v103 = v26;
    goto LABEL_73;
  }

  sub_1000754F0(*(v132 + 56) + 32 * v39, &v133);

  sub_100068FC4(&unk_100503EC0, &unk_100417130);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v103 = v26;
    goto LABEL_74;
  }

  v42 = v132;
  v126 = *(v132 + 16);
  if (!v126)
  {
LABEL_77:

    sub_10006A178(v130, v131);
    sub_10006A2D0(v26, v27);
    return;
  }

  v43 = 0;
  v124 = v27;
  while (v43 < *(v42 + 16))
  {
    v127 = v43;
    v44 = *(v42 + 8 * v43 + 32);
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    if (!*(v44 + 16) || (v48 = v45, , v49 = sub_10008C908(v48, v47), v51 = v50, , (v51 & 1) == 0) || (sub_1000754F0(*(v44 + 56) + 32 * v49, &v133), (swift_dynamicCast() & 1) == 0))
    {

LABEL_28:
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v133 = v125;
        *v57 = 136315394;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v26;
        v61 = sub_1002FFA0C(v58, v59, &v133);
        v27 = v124;

        *(v57 + 4) = v61;
        v26 = v60;
        *(v57 + 12) = 2048;
        *(v57 + 14) = 8;
        _os_log_impl(&_mh_execute_header, v55, v56, "Auxiliary reader identifier with key %s expected to be a Data of length %ld", v57, 0x16u);
        sub_1000752F4(v125);
      }

      goto LABEL_30;
    }

    v52 = *(&v132 + 1);
    v53 = *(&v132 + 1) >> 62;
    if ((*(&v132 + 1) >> 62) > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_48;
      }

      v62 = *(v132 + 16);
      v63 = *(v132 + 24);
      v64 = __OFSUB__(v63, v62);
      v54 = v63 - v62;
      if (v64)
      {
        goto LABEL_79;
      }
    }

    else if (v53)
    {
      LODWORD(v54) = DWORD1(v132) - v132;
      if (__OFSUB__(DWORD1(v132), v132))
      {
        goto LABEL_80;
      }

      v54 = v54;
    }

    else
    {
      v54 = BYTE14(v132);
    }

    if (v54 != 8)
    {
LABEL_48:

      sub_10006A178(v132, *(&v132 + 1));
      goto LABEL_28;
    }

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v44 + 16))
    {

      goto LABEL_51;
    }

    v67 = sub_10008C908(v65, v66);
    v69 = v68;

    if ((v69 & 1) == 0)
    {

      v52 = *(&v132 + 1);
LABEL_51:
      v55 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v75))
      {
        v76 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v133 = v123;
        *v76 = 136315138;
        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = sub_1002FFA0C(v77, v78, &v133);

        *(v76 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v55, v75, "Priority with key %s expected as NSNumber", v76, 0xCu);
        sub_1000752F4(v123);

        v81 = *(&v132 + 1);
        v80 = v132;
      }

      else
      {
        v80 = v132;
        v81 = v52;
      }

      sub_10006A178(v80, v81);
LABEL_30:

      goto LABEL_31;
    }

    sub_1000754F0(*(v44 + 56) + 32 * v67, &v133);

    sub_100156F48();
    v52 = *(&v132 + 1);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

    if (*(v128 + 16) && (v70 = sub_10008C8DC(v132, *(&v132 + 1)), (v71 & 1) != 0) && (v72 = v26, v73 = *(*(v128 + 56) + 24 * v70 + 16), v74 = v73 < [v132 integerValue], v26 = v72, v74))
    {

      sub_10006A178(v132, *(&v132 + 1));
    }

    else
    {
      sub_100069E2C(a3, a4);
      v129 = [v132 integerValue];
      v82 = *a1;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *a1;
      v84 = v133;
      v86 = sub_10008C8DC(v132, *(&v132 + 1));
      v87 = *(v84 + 16);
      v88 = (v85 & 1) == 0;
      v89 = v87 + v88;
      if (__OFADD__(v87, v88))
      {
        goto LABEL_81;
      }

      if (*(v84 + 24) >= v89)
      {
        v93 = v132;
        if ((v83 & 1) == 0)
        {
          v102 = v85;
          sub_100311984();
          v85 = v102;
          v93 = v132;
        }
      }

      else
      {
        v122 = v85;
        sub_10030B160(v89, v83);
        v90 = sub_10008C8DC(v132, *(&v132 + 1));
        v92 = v91 & 1;
        v85 = v122;
        if ((v122 & 1) != v92)
        {
          goto LABEL_83;
        }

        v86 = v90;
        v93 = v132;
      }

      v94 = v129;
      v95 = v133;
      v128 = v133;
      if (v85)
      {
        v96 = (v133[7] + 24 * v86);
        v97 = *v96;
        v98 = v96[1];
        *v96 = a3;
        v96[1] = a4;
        v96[2] = v94;
        sub_10006A178(v97, v98);

        sub_10006A178(v132, *(&v132 + 1));
        *a1 = v95;
      }

      else
      {
        v133[(v86 >> 6) + 8] |= 1 << v86;
        *(v95[6] + 16 * v86) = v93;
        v99 = (v95[7] + 24 * v86);
        *v99 = a3;
        v99[1] = a4;
        v99[2] = v94;

        v100 = v95[2];
        v64 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v64)
        {
          goto LABEL_82;
        }

        v95[2] = v101;
        *a1 = v95;
      }
    }

LABEL_31:
    v42 = v132;
    v43 = v127 + 1;
    if (v126 == v127 + 1)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10027FC38(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v9, v5);
    if ((v12 & 1) == 0)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (*(v2 + 16) != 1)
    {
      break;
    }

    v71 = &_swiftEmptySetSingleton;
    v13 = OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints;
    swift_beginAccess();
    v5 = *(v2 + v13);
    v9 = (v5 + 64);
    v14 = 1 << *(v5 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v5 + 64);
    v17 = (v14 + 63) >> 6;
    if (a1)
    {
      v18 = 0;
    }

    else
    {
      v18 = a2 == 0xC000000000000000;
    }

    v19 = !v18;
    v68 = v19;
    v2 = a2 >> 62;
    v20 = __OFSUB__(HIDWORD(a1), a1);
    v64 = v20;
    v62 = a2;
    v63 = HIDWORD(a1) - a1;
    v66 = a1;
    v67 = BYTE6(a2);

    v6 = 0;
    v65 = 0;
    v69 = a2 >> 62;
LABEL_16:
    if (v16)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v21 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v21 >= v17)
      {

        return v71;
      }

      v16 = v9[v21];
      ++v6;
      if (v16)
      {
        v6 = v21;
LABEL_21:
        v22 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v23 = v22 | (v6 << 6);
        v24 = (*(v5 + 48) + 16 * v23);
        a2 = *v24;
        v25 = v24[1];
        v26 = (*(v5 + 56) + 24 * v23);
        a1 = *v26;
        v27 = v26[1];
        v28 = v27 >> 62;
        if (v27 >> 62 == 3)
        {
          if (a1)
          {
            v29 = 0;
          }

          else
          {
            v29 = v27 == 0xC000000000000000;
          }

          v31 = !v29 || v2 < 3;
          if (((v31 | v68) & 1) == 0)
          {
            sub_100069E2C(a2, v25);
            v32 = 0;
            v33 = 0xC000000000000000;
            goto LABEL_53;
          }

LABEL_43:
          v34 = 0;
          if (v2 > 1)
          {
LABEL_44:
            if (v2 == 2)
            {
              v40 = *(v66 + 16);
              v39 = *(v66 + 24);
              v37 = __OFSUB__(v39, v40);
              v38 = v39 - v40;
              if (!v37)
              {
                goto LABEL_46;
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
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
            }

            if (!v34)
            {
LABEL_52:
              sub_100069E2C(a2, v25);
              v32 = a1;
              v33 = v27;
LABEL_53:
              sub_100069E2C(v32, v33);
LABEL_54:
              sub_100069E2C(a2, v25);
              sub_1000D589C(&v72, a2, v25);
              sub_10006A178(a1, v27);
              sub_10006A178(a2, v25);
              v42 = *(&v72 + 1);
              v41 = v72;
LABEL_55:
              sub_10006A178(v41, v42);
              v2 = v69;
            }

            goto LABEL_16;
          }
        }

        else if (v28 > 1)
        {
          if (v28 != 2)
          {
            goto LABEL_43;
          }

          v36 = *(a1 + 16);
          v35 = *(a1 + 24);
          v37 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (v37)
          {
            goto LABEL_87;
          }

          if (v2 > 1)
          {
            goto LABEL_44;
          }
        }

        else if (v28)
        {
          LODWORD(v34) = HIDWORD(a1) - a1;
          if (__OFSUB__(HIDWORD(a1), a1))
          {
            goto LABEL_86;
          }

          v34 = v34;
          if (v2 > 1)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v34 = BYTE6(v27);
          if (v2 > 1)
          {
            goto LABEL_44;
          }
        }

        v38 = v67;
        if (v2)
        {
          v38 = v63;
          if (v64)
          {
            goto LABEL_84;
          }
        }

LABEL_46:
        if (v34 == v38)
        {
          if (v34 < 1)
          {
            goto LABEL_52;
          }

          v61 = v5;
          if (v28 > 1)
          {
            if (v28 != 2)
            {
              *(&v72 + 6) = 0;
              *&v72 = 0;
              sub_100069E2C(a2, v25);
              sub_100069E2C(a1, v27);
              goto LABEL_68;
            }

            v43 = *(a1 + 16);
            v59 = *(a1 + 24);
            v60 = v43;
            sub_100069E2C(a2, v25);
            sub_100069E2C(a1, v27);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v45 = v44;
              v46 = __DataStorage._offset.getter();
              v47 = v60;
              if (__OFSUB__(v60, v46))
              {
                goto LABEL_90;
              }

              v58 = v60 - v46 + v45;
            }

            else
            {
              v58 = 0;
              v47 = v60;
            }

            if (__OFSUB__(v59, v47))
            {
              goto LABEL_89;
            }

            __DataStorage._length.getter();
            v52 = v58;
          }

          else
          {
            if (!v28)
            {
              *&v72 = a1;
              WORD4(v72) = v27;
              BYTE10(v72) = BYTE2(v27);
              BYTE11(v72) = BYTE3(v27);
              BYTE12(v72) = BYTE4(v27);
              BYTE13(v72) = BYTE5(v27);
              sub_100069E2C(a2, v25);
              sub_100069E2C(a1, v27);
LABEL_68:
              v51 = v65;
              sub_10019F024(&v72, v66, v62, &v70);
              v65 = v51;
              v5 = v61;
              if (v70)
              {
                goto LABEL_54;
              }

LABEL_76:
              sub_10006A178(a2, v25);
              v41 = a1;
              v42 = v27;
              goto LABEL_55;
            }

            v60 = (a1 >> 32) - a1;
            if (a1 >> 32 < a1)
            {
              goto LABEL_88;
            }

            sub_100069E2C(a2, v25);
            sub_100069E2C(a1, v27);
            v48 = __DataStorage._bytes.getter();
            if (v48)
            {
              v59 = v48;
              v49 = __DataStorage._offset.getter();
              if (__OFSUB__(a1, v49))
              {
                goto LABEL_91;
              }

              v50 = a1 - v49 + v59;
            }

            else
            {
              v50 = 0;
            }

            __DataStorage._length.getter();
            v52 = v50;
          }

          v53 = v65;
          sub_10019F024(v52, v66, v62, &v72);
          v65 = v53;
          v5 = v61;
          if (v72)
          {
            goto LABEL_54;
          }

          goto LABEL_76;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_82:
    swift_once();
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "LyonExpress is not running", v56, 2u);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100280304(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v10 = v4 + 8;
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    v1 = sub_10012E5A4((v12 > 1), v7, 1, v1);
    goto LABEL_13;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v15 = sub_10008C908(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0 || (sub_1000754F0(*(a1 + 56) + 32 * v15, v68), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v68[0] = v24;
      *v23 = 136315138;
      v25 = Dictionary.description.getter();
      v27 = sub_1002FFA0C(v25, v26, v68);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot get data representation of primary reader identifier in %s", v23, 0xCu);
      sub_1000752F4(v24);
    }

    sub_100079E24();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v18 = v67[0];
  v10 = v67[1];

  v19 = sub_10013044C(v18, v10);
  if (v20 >> 60 == 15)
  {
LABEL_8:

    goto LABEL_9;
  }

  v30 = v19;
  v31 = v20;
  sub_100069E2C(v19, v20);
  v64 = v30;
  v65 = v31;
  sub_100288640(8, v30, v31, v68);
  v66 = v68[0];
  v1 = sub_10012E5A4(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v12 = *(v1 + 3);
  v7 = (v3 + 1);
  v63 = v18;
  if (v3 >= v12 >> 1)
  {
    goto LABEL_44;
  }

LABEL_13:
  *(v1 + 2) = v7;
  *&v1[16 * v3 + 32] = v66;
  v69 = v1;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_23:

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v48))
    {
LABEL_26:

      sub_100079E24();
      swift_allocError();
      *v54 = 0;
      swift_willThrow();
      return sub_10006A2D0(v64, v65);
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v68[0] = v50;
    *v49 = 136315138;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = sub_1002FFA0C(v51, v52, v68);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "No ecp2info with key %s found for endpoint", v49, 0xCu);
    sub_1000752F4(v50);

LABEL_25:

    goto LABEL_26;
  }

  v34 = sub_10008C908(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v34, v68);
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v37 = v67[0];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v37 + 16))
  {

    goto LABEL_38;
  }

  v40 = sub_10008C908(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {

    goto LABEL_38;
  }

  sub_1000754F0(*(v37 + 56) + 32 * v40, v68);

  sub_100068FC4(&unk_100503EC0, &unk_100417130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    v47 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v47, v58))
    {

      goto LABEL_26;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v68[0] = v60;
    *v59 = 136315138;
    v61 = sub_1002FFA0C(v63, v10, v68);

    *(v59 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v47, v58, "No aux keys found for endpoint with primary reader ID %s", v59, 0xCu);
    sub_1000752F4(v60);

    goto LABEL_25;
  }

  v43 = v67[0];
  v44 = *(v67[0] + 16);
  if (v44)
  {
    v45 = 0;
    v46 = _swiftEmptyArrayStorage;
    while (v45 < *(v43 + 16))
    {
      v67[0] = *(v43 + 32 + 8 * v45);

      sub_100280B20(v67, v68);

      if (*(&v68[0] + 1) >> 60 == 15)
      {
        result = sub_10006A2D0(*&v68[0], *(&v68[0] + 1));
      }

      else
      {
        v66 = v68[0];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10012E5A4(0, *(v46 + 2) + 1, 1, v46);
          v46 = result;
        }

        v56 = *(v46 + 2);
        v55 = *(v46 + 3);
        v57 = v66;
        if (v56 >= v55 >> 1)
        {
          result = sub_10012E5A4((v55 > 1), v56 + 1, 1, v46);
          v57 = v66;
          v46 = result;
        }

        *(v46 + 2) = v56 + 1;
        *&v46[16 * v56 + 32] = v57;
      }

      if (v44 == ++v45)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
LABEL_42:

    sub_1002F8F48(v46);
    sub_10006A2D0(v64, v65);
    return v69;
  }

  return result;
}

void sub_100280B20(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v3 + 16))
  {
    v6 = sub_10008C908(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_1000754F0(*(v3 + 56) + 32 * v6, v15);
      if (swift_dynamicCast())
      {
        sub_100288640(8, v13, v14, v15);
        v9 = *v15;
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Aux Reader identifier expected to be of type Data", v12, 2u);
  }

  v9 = xmmword_1004098E0;
LABEL_9:
  *a2 = v9;
}

uint64_t sub_100280C7C()
{
  v1 = OBJC_IVAR____TtC10seserviced11LyonExpress_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced11LyonExpress_activeExpressEndpoints);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LyonExpress()
{
  result = qword_100508C50;
  if (!qword_100508C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100280D7C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100280E4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100280E64()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100280E9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100280ED4()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced32CredentialServerInternalProtocol_];
  sub_10009393C(0, &qword_100508CE8, NSSet_ptr);
  sub_100068FC4(&qword_100504D48, &qword_10040C010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100413A40;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = sub_100068FC4(&qword_100508CF0, &qword_100413A50);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = sub_100068FC4(&qword_100508CF8, &qword_100413A58);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = sub_100068FC4(&qword_100508D00, &qword_100413A60);
  *(v0 + 96) = v3;
  v4 = sub_10009393C(0, &qword_100508D08, NSArray_ptr);
  *(v0 + 152) = sub_100068FC4(&qword_100508D10, &qword_100413A68);
  *(v0 + 128) = v4;
  v5 = sub_10009393C(0, &qword_100508D18, NSUUID_ptr);
  *(v0 + 184) = sub_100068FC4(&qword_100508D20, &qword_100413A70);
  *(v0 + 160) = v5;
  v6 = sub_10009393C(0, &qword_100508D28, NSString_ptr);
  *(v0 + 216) = sub_100068FC4(&qword_100508D30, &qword_100413A78);
  *(v0 + 192) = v6;
  v7 = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v0 + 248) = sub_100068FC4(&qword_100508D38, &unk_100413A80);
  *(v0 + 224) = v7;
  NSSet.init(objects:)();
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

void sub_10028115C()
{
  v2 = sub_100068FC4(&qword_100505440, &unk_100413B30);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  __chkstk_darwin(v2);
  v100 = &v80 - v4;
  v5 = sub_100068FC4(&qword_100505450, &qword_10040CCD8);
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = *(v94 + 64);
  __chkstk_darwin(v5);
  v8 = &v80 - v7;
  v98 = sub_100068FC4(&qword_100505460, &qword_100413B40);
  v93 = *(v98 - 8);
  v9 = *(v93 + 64);
  v10 = __chkstk_darwin(v98);
  v87 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v86 = &v80 - v13;
  v14 = __chkstk_darwin(v12);
  v85 = &v80 - v15;
  v16 = __chkstk_darwin(v14);
  v99 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v97 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v80 - v21;
  if (*(v0 + 112))
  {
    __chkstk_darwin(v20);
    *(&v80 - 2) = v23;
    v24 = v23;
    sub_100068FC4(&qword_100508E98, &qword_100413B18);
    NSManagedObjectContext.performAndWait<A>(_:)();
    v25 = v1;

    if (!v1)
    {
      v26 = v103;
      if (v103 >> 62)
      {
        goto LABEL_20;
      }

      v27 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        while (1)
        {
          v91 = v8;
          v103 = _swiftEmptyArrayStorage;
          sub_10019F788(0, v27 & ~(v27 >> 63), 0);
          if (v27 < 0)
          {
            break;
          }

          v28 = 0;
          v29 = v103;
          v96 = v26 & 0xC000000000000001;
          v92 = v26 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            v30 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v96)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *(v92 + 16))
              {
                goto LABEL_19;
              }

              v31 = *(v26 + 8 * v28 + 32);
            }

            v32 = v31;
            v102 = v31;
            sub_100281CC4(&v102, &v101, v22);
            v25 = 0;
            v8 = v26;

            v103 = v29;
            v34 = v29[2];
            v33 = v29[3];
            v35 = v29;
            if (v34 >= v33 >> 1)
            {
              sub_10019F788(v33 > 1, v34 + 1, 1);
              v35 = v103;
            }

            *(v35 + 16) = v34 + 1;
            sub_100285764(v22, v35 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v34, &qword_100505460, &qword_100413B40);
            ++v28;
            v29 = v35;
            v26 = v8;
            if (v30 == v27)
            {

              v8 = v91;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v27 = _CocoaArrayWrapper.endIndex.getter();
          if (!v27)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_21:

      v29 = _swiftEmptyArrayStorage;
LABEL_22:
      v39 = v29[2];
      v83 = v29;
      v96 = v39;
      if (v39)
      {
        v91 = 0;
        v103 = _swiftEmptyArrayStorage;
        sub_10019F748(0, v39, 0);
        v40 = v103;
        v41 = v29 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v92 = *(v93 + 72);
        v42 = v39;
        do
        {
          v43 = v97;
          sub_1000938D4(v41, v97, &qword_100505460, &qword_100413B40);
          v44 = *(v95 + 48);
          v45 = v99;
          sub_100285764(v43, v99, &qword_100505460, &qword_100413B40);
          v46 = *(v98 + 48);
          sub_10006A178(*(v45 + *(v98 + 64)), *(v45 + *(v98 + 64) + 8));
          v47 = type metadata accessor for CredentialType();
          (*(*(v47 - 8) + 32))(v8, v45 + v46, v47);
          *&v8[v44] = 1;
          v48 = type metadata accessor for UUID();
          (*(*(v48 - 8) + 8))(v45, v48);
          v103 = v40;
          v50 = v40[2];
          v49 = v40[3];
          if (v50 >= v49 >> 1)
          {
            sub_10019F748(v49 > 1, v50 + 1, 1);
            v40 = v103;
          }

          v40[2] = v50 + 1;
          sub_100285764(v8, v40 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v50, &qword_100505450, &qword_10040CCD8);
          v41 += v92;
          --v42;
        }

        while (v42);
        v25 = v91;
        if (v40[2])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v40 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_28:
          sub_100068FC4(&qword_100508EA0, &qword_100413B48);
          v51 = static _DictionaryStorage.allocate(capacity:)();
          goto LABEL_31;
        }
      }

      v51 = &_swiftEmptyDictionarySingleton;
LABEL_31:
      v52 = v96;
      v103 = v51;
      sub_1002852D4(v40, 1, &v103);
      v53 = v83;
      if (v25)
      {
LABEL_44:

        __break(1u);
LABEL_45:
        swift_unexpectedError();
        __break(1u);
        return;
      }

      if (v52)
      {
        v81 = 0;
        v82 = v103;
        v103 = _swiftEmptyArrayStorage;
        sub_10019F708(0, v52, 0);
        v54 = v103;
        v55 = v53 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v84 = *(v93 + 72);
        do
        {
          v95 = v54;
          v96 = v52;
          v94 = v55;
          v56 = v97;
          sub_1000938D4(v55, v97, &qword_100505460, &qword_100413B40);
          v93 = *(v89 + 48);
          v57 = v99;
          sub_1000938D4(v56, v99, &qword_100505460, &qword_100413B40);
          v58 = v98;
          v92 = *(v98 + 48);
          sub_10006A178(*(v57 + *(v98 + 64)), *(v57 + *(v98 + 64) + 8));
          v90 = type metadata accessor for UUID();
          v59 = *(v90 - 8);
          (*(v59 + 32))(v100, v57, v90);
          v60 = v85;
          sub_1000938D4(v56, v85, &qword_100505460, &qword_100413B40);
          v91 = *(v58 + 48);
          sub_10006A178(*(v60 + *(v58 + 64)), *(v60 + *(v58 + 64) + 8));
          v61 = v86;
          sub_1000938D4(v56, v86, &qword_100505460, &qword_100413B40);
          v62 = *(v58 + 48);
          sub_10006A178(*(v61 + *(v58 + 64)), *(v61 + *(v58 + 64) + 8));
          v63 = v87;
          sub_1000938D4(v56, v87, &qword_100505460, &qword_100413B40);
          v64 = *(v58 + 48);
          v65 = (v63 + *(v58 + 64));
          v67 = *v65;
          v66 = v65[1];
          v68 = objc_allocWithZone(type metadata accessor for Reservation());
          v69 = Reservation.init(uuid:type:metadata:)();
          sub_100075768(v56, &qword_100505460, &qword_100413B40);
          v70 = type metadata accessor for CredentialType();
          v71 = *(*(v70 - 8) + 8);
          v71(v63 + v64, v70);
          v72 = *(v59 + 8);
          v73 = v63;
          v74 = v90;
          v72(v73, v90);
          v72(v61, v74);
          v54 = v95;
          v71(&v91[v60], v70);
          *(v100 + v93) = v69;
          v71(v99 + v92, v70);
          v103 = v54;
          v76 = *(v54 + 16);
          v75 = *(v54 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_10019F708(v75 > 1, v76 + 1, 1);
            v54 = v103;
          }

          *(v54 + 16) = v76 + 1;
          sub_100285764(v100, v54 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v76, &qword_100505440, &unk_100413B30);
          v55 = v94 + v84;
          v52 = v96 - 1;
        }

        while (v96 != 1);

        v25 = v81;
        if (*(v54 + 16))
        {
          goto LABEL_38;
        }
      }

      else
      {

        if (_swiftEmptyArrayStorage[2])
        {
LABEL_38:
          sub_100068FC4(&unk_10050ABD0, &unk_100413B50);
          v77 = static _DictionaryStorage.allocate(capacity:)();
          goto LABEL_41;
        }
      }

      v77 = &_swiftEmptyDictionarySingleton;
LABEL_41:
      v103 = v77;

      sub_100284CFC(v78, 1, &v103);
      if (!v25)
      {

        v79 = objc_allocWithZone(type metadata accessor for ReservationState());
        ReservationState.init(counts:reservations:)();
        return;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v36 = objc_allocWithZone(NSError);
    v37 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v36 initWithDomain:v37 code:21 userInfo:isa];

    swift_willThrow();
  }
}

uint64_t sub_100281CC4@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v48 = a3;
  v4 = type metadata accessor for UUID();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v45 - v9;
  v10 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for CredentialType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = [v19 type];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_1002820E0(v22, v24, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100075768(v13, &qword_100507468, &qword_10040FA20);
  }

  else
  {
    v25 = *(v15 + 32);
    v25(v18, v13, v14);
    v26 = [v19 uuid];
    if (v26)
    {
      v47 = v25;
      v27 = v26;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v49;
      v29 = v8;
      v30 = v50;
      v46 = *(v49 + 32);
      v46(v51, v29, v50);
      v31 = [v19 metadata];
      if (v31)
      {
        v32 = v31;
        v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v34;

        v35 = sub_100068FC4(&qword_100505460, &qword_100413B40);
        v36 = *(v35 + 48);
        v37 = v48;
        v38 = &v48[*(v35 + 64)];
        v46(v48, v51, v30);
        result = v47(&v37[v36], v18, v14);
        v40 = v52;
        *v38 = v33;
        v38[1] = v40;
        return result;
      }

      (*(v28 + 8))(v51, v30);
    }

    (*(v15 + 8))(v18, v14);
  }

  v41 = objc_allocWithZone(NSError);
  v42 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v44 = [v41 initWithDomain:v42 code:23 userInfo:isa];

  result = swift_willThrow();
  *v52 = v44;
  return result;
}

uint64_t sub_1002820E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v36 - v11;
  v13 = type metadata accessor for CredentialType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v36 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v36 - v23;
  __chkstk_darwin(v22);
  if (!a2)
  {
    v31 = 1;
    return (*(v14 + 56))(a3, v31, 1, v13);
  }

  v37 = v36 - v25;
  v38 = a3;

  v26 = sub_10013044C(a1, a2);
  v28 = a1;
  if (v27 >> 60 != 15)
  {
    v29 = v26;
    v30 = v27;
    v36[1] = v28;
    sub_100069E2C(v26, v27);
    CredentialType.init(deserialize:)();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {

      v34 = v12;
      v32 = *(v14 + 32);
      v32(v24, v34, v13);
      (*(v14 + 16))(v21, v24, v13);
      v33 = v37;
      CredentialType.init(fromLegacy:)();
      sub_10006A2D0(v29, v30);
      goto LABEL_10;
    }

    sub_10006A2D0(v29, v30);
    sub_100075768(v12, &qword_100507468, &qword_10040FA20);
  }

  CredentialType.init(rawValue:)();
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    v32 = *(v14 + 32);
    v32(v18, v10, v13);
    (*(v14 + 16))(v21, v18, v13);
    v33 = v37;
    CredentialType.init(fromLegacy:)();
    v24 = v18;
LABEL_10:
    a3 = v38;
    (*(v14 + 8))(v24, v13);
    v32(a3, v33, v13);
    v31 = 0;
    return (*(v14 + 56))(a3, v31, 1, v13);
  }

  sub_100075768(v10, &qword_100507468, &qword_10040FA20);
  v31 = 1;
  a3 = v38;
  return (*(v14 + 56))(a3, v31, 1, v13);
}

void sub_100282498(uint64_t *a1@<X8>)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  type metadata accessor for Item();
  v6 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    *a1 = v6;
  }
}

unint64_t sub_100282540(void *a1)
{
  if (!*(v1 + 112))
  {
    v11 = objc_allocWithZone(NSError);
    v6 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v11 initWithDomain:v6 code:21 userInfo:isa];

    swift_willThrow();
    return v6;
  }

  __chkstk_darwin(a1);
  v16 = v4;
  v5 = v4;
  sub_100068FC4(&qword_100508E98, &qword_100413B18);
  v6 = v5;
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v2)
  {
    return v6;
  }

  __chkstk_darwin(v7);
  v16 = a1;
  result = sub_10033322C(sub_10028525C, &v15, v8);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    return 0;
  }

  v13 = result;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  result = v13;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v6 = v10;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100282770(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v22 = [*a1 uuid];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v5 + 56);
    v24(v21, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(v21, 1, 1, v4);
  }

  (*(v5 + 16))(v17, a2, v4);
  v24(v17, 0, 1, v4);
  v25 = *(v8 + 48);
  sub_1000938D4(v21, v11, &unk_10050BE80, &unk_10040B360);
  sub_1000938D4(v17, &v11[v25], &unk_10050BE80, &unk_10040B360);
  v26 = *(v5 + 48);
  if (v26(v11, 1, v4) != 1)
  {
    v28 = v33;
    sub_1000938D4(v11, v33, &unk_10050BE80, &unk_10040B360);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v29 = v32;
      (*(v5 + 32))(v32, &v11[v25], v4);
      sub_10028527C();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v5 + 8);
      v30(v29, v4);
      sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v21, &unk_10050BE80, &unk_10040B360);
      v30(v33, v4);
      sub_100075768(v11, &unk_10050BE80, &unk_10040B360);
      return v27 & 1;
    }

    sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v21, &unk_10050BE80, &unk_10040B360);
    (*(v5 + 8))(v28, v4);
    goto LABEL_9;
  }

  sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v21, &unk_10050BE80, &unk_10040B360);
  if (v26(&v11[v25], 1, v4) != 1)
  {
LABEL_9:
    sub_100075768(v11, &qword_1005031D0, &unk_100413B20);
    v27 = 0;
    return v27 & 1;
  }

  sub_100075768(v11, &unk_10050BE80, &unk_10040B360);
  v27 = 1;
  return v27 & 1;
}

char *sub_100282BF8(void *a1)
{
  v3 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100282540(a1);
  if (v1)
  {
    return v6;
  }

  v10 = v9;
  if (!v9)
  {
    return 0;
  }

  result = [v9 uuid];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v10 type];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  sub_1002820E0(v15, v17, v6);
  v18 = type metadata accessor for CredentialType();
  result = (*(*(v18 - 8) + 48))(v6, 1, v18);
  if (result == 1)
  {
    goto LABEL_13;
  }

  result = [v10 metadata];
  if (result)
  {
    v19 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = objc_allocWithZone(type metadata accessor for Reservation());
    v6 = Reservation.init(uuid:type:metadata:)();

    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

Class sub_100282E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = v4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 112);
  if (v14)
  {
    v15 = v14;
    v16 = UUID.init()();
    v21[1] = v21;
    __chkstk_darwin(v16);
    v21[-6] = v15;
    v21[-5] = a1;
    v21[-4] = v13;
    v21[-3] = a2;
    v21[-2] = a3;
    type metadata accessor for Reservation();
    NSManagedObjectContext.performAndWait<A>(_:)();
    v17 = (v10 + 8);

    if (!v4)
    {
      isa = v21[3];
    }

    (*v17)(v13, v9);
  }

  else
  {
    v18 = objc_allocWithZone(NSError);
    v19 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v18 initWithDomain:v19 code:21 userInfo:isa];

    swift_willThrow();
  }

  return isa;
}

void sub_10028305C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v32 = a2;
  v33 = a3;
  v35 = a1;
  v31 = a6;
  v39 = type metadata accessor for CredentialType();
  v8 = *(v39 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v39);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v34);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Item();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1];
  v16 = CredentialType.serialize()();
  v18 = v17;
  v19 = sub_100288788(v16, v17);
  v30 = v6;
  v40 = v19;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v16, v18);

  v20 = String._bridgeToObjectiveC()();

  [v15 setType:v20];

  v21 = v33;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v15 setUuid:isa];

  v23 = v37;
  v24 = v38;
  v25 = Data._bridgeToObjectiveC()().super.isa;
  [v15 setMetadata:v25];

  (*(v11 + 16))(v14, v21, v34);
  (*(v8 + 16))(v36, v32, v39);
  v26 = objc_allocWithZone(type metadata accessor for Reservation());
  sub_100069E2C(v23, v24);
  v27 = Reservation.init(uuid:type:metadata:)();
  v40 = 0;
  if ([v35 save:&v40])
  {
    v28 = v40;

    *v31 = v27;
  }

  else
  {
    v29 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1002833C4(void *a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v63 = a3;
  v59 = a5;
  v60 = a4;
  v62 = a2;
  v6 = type metadata accessor for UUID();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for CredentialType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  v22 = v64;
  v23 = sub_100282540(a1);
  if (!v22)
  {
    v54 = v18;
    v55 = v6;
    v56 = v9;
    v57 = v21;
    v64 = a1;
    v25 = v62;
    v24 = v63;
    v58 = v15;
    if (v23)
    {
      v53 = v23;
      v26 = [v23 type];
      if (v26)
      {
        v27 = v26;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v33 = v14;
      v34 = v61;
      sub_1002820E0(v28, v30, v13);
      v35 = v58;
      v36 = (*(v58 + 48))(v13, 1, v33);
      v37 = v53;
      if (v36 == 1)
      {
        sub_100075768(v13, &qword_100507468, &qword_10040FA20);
        v65 = 0;
        v66 = 0xE000000000000000;
        _StringGuts.grow(_:)(43);

        v65 = 0xD000000000000012;
        v66 = 0x8000000100469F50;
        v38 = [v37 type];
        if (v38)
        {
          v39 = v38;
          sub_1000B9C54();
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          v43._countAndFlagsBits = v40;
          v43._object = v42;
          String.append(_:)(v43);

          v44._countAndFlagsBits = 0xD000000000000017;
          v44._object = 0x8000000100469F70;
          String.append(_:)(v44);
          sub_10030990C(23, 0, v65, v66, 0);
          swift_willThrow();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v45 = v57;
        (*(v35 + 32))(v57, v13, v33);
        (*(v34 + 16))(v56, v64, v55);
        (*(v35 + 16))(v54, v45, v33);
        v46 = objc_allocWithZone(type metadata accessor for Reservation());
        sub_100069E2C(v25, v24);
        v47 = Reservation.init(uuid:type:metadata:)();
        isa = Data._bridgeToObjectiveC()().super.isa;
        [v37 setMetadata:isa];

        v65 = 0;
        if ([v60 save:&v65])
        {
          v49 = *(v35 + 8);
          v50 = v65;
          v49(v57, v33);

          *v59 = v47;
        }

        else
        {
          v51 = v65;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v35 + 8))(v57, v33);
        }
      }
    }

    else
    {
      sub_1000B9C54();
      v65 = 0;
      v66 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v65 = 0xD000000000000020;
      v66 = 0x8000000100469F20;
      v31._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v31);

      v32._countAndFlagsBits = 46;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      sub_10030990C(22, 0, v65, v66, 0);
      swift_willThrow();
    }
  }
}

void sub_100283934(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100282540(a2);
  if (!v3)
  {
    v6 = v5;
    if (v5)
    {
      [a3 deleteObject:v5];
      v11 = 0;
      if ([a3 save:&v11])
      {
        v7 = v11;
      }

      else
      {
        v10 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      sub_1000B9C54();
      _StringGuts.grow(_:)(35);

      v8._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 46;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      sub_10030990C(22, 0, 0xD000000000000020, 0x8000000100469F20, 0);
      swift_willThrow();
    }
  }
}

void sub_100283ABC(uint64_t a1, void *a2)
{
  if (*(a1 + 112))
  {
    __chkstk_darwin(a1);
    v5 = v4;
    sub_100068FC4(&qword_100508E98, &qword_100413B18);
    NSManagedObjectContext.performAndWait<A>(_:)();

    if (v2)
    {
      return;
    }

    if (v14 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v8 = *(v14 + i + 4);
          }

          v9 = v8;
          [a2 deleteObject:v8];
        }
      }
    }

    v14 = 0;
    if ([a2 save:&v14])
    {
      v13 = v14;
      return;
    }

    v12.super.isa = v14;
    _convertNSErrorToError(_:)();
    goto LABEL_16;
  }

  v10 = objc_allocWithZone(NSError);
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v10 initWithDomain:v11 code:21 userInfo:v12.super.isa];

LABEL_16:
  swift_willThrow();
}

uint64_t sub_100283D1C()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  sub_1000B6A94(v9, qword_100508D48);
  sub_1000958E4(v9, qword_100508D48);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t sub_100283EC8()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  sub_1000B6A94(v9, qword_100508D60);
  sub_1000958E4(v9, qword_100508D60);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

void sub_100284074()
{
  v1 = v0;
  v2 = type metadata accessor for NSPersistentStore.StoreType();
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  __chkstk_darwin(v2);
  v87 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v85 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v80 - v16;
  __chkstk_darwin(v15);
  v95 = &v80 - v18;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v84 = OBJC_IVAR____TtC10seserviced24SERPersistenceController_logger;
  Logger.init(subsystem:category:)();
  if (qword_100501BE0 != -1)
  {
    swift_once();
  }

  sub_1000958E4(v10, qword_100508D48);
  v19 = objc_allocWithZone(NSManagedObjectModel);
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v19 initWithContentsOfURL:v21];

  v93 = v23;
  if (!v23)
  {
    sub_1000B9C54();
    sub_10030990C(21, 0, 0xD00000000000001ELL, 0x8000000100469E60, 0);
    swift_willThrow();

    return;
  }

  v92 = v1;
  if (qword_100501BE8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000958E4(v10, qword_100508D60);
  v25 = v11[2];
  v83 = v24;
  v90 = v25;
  v91 = v11 + 2;
  (v25)(v17);
  v96[0] = 0xD000000000000022;
  v96[1] = 0x8000000100469E80;
  (*(v6 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_10012512C();
  URL.appending<A>(path:directoryHint:)();
  (*(v6 + 8))(v9, v5);
  v26 = v11 + 1;
  v27 = v11[1];
  v94 = v10;
  v27(v17, v10);
  v28 = objc_opt_self();
  URL.pathComponents.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v28 pathWithComponents:isa];

  v31 = v30;
  v32 = v30;
  v33 = v30;
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = String._bridgeToObjectiveC()();
  }

  v82 = v32;
  v34 = objc_opt_self();
  v35 = v30;
  v36 = [v34 defaultManager];
  v37 = v94;
  v90(v17, v83, v94);
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  v27(v17, v37);
  v96[0] = 0;
  LODWORD(v37) = [v36 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:v96];

  if (!v37)
  {
    v65 = v96[0];

    _convertNSErrorToError(_:)();
    swift_willThrow();

    v27(v95, v94);
    return;
  }

  v81 = v27;
  v83 = v26;
  v41 = v96[0];
  v42 = [v34 defaultManager];
  v43 = [v42 fileExistsAtPath:v33];

  v44 = [v34 defaultManager];
  v45 = v82;
  v46 = [v44 isReadableFileAtPath:v82];

  v47 = [v34 defaultManager];
  v48 = [v47 isWritableFileAtPath:v31];

  v49 = v85;
  v50 = v94;
  v51 = v95;
  v90(v85, v95, v94);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v49;
    v57 = v50;
    LODWORD(v91) = v48;
    v96[0] = v55;
    *v54 = 136315906;
    v58 = URL.description.getter();
    LODWORD(v90) = v46;
    v60 = v59;
    v81(v56, v57);
    v61 = sub_1002FFA0C(v58, v60, v96);

    *(v54 + 4) = v61;
    *(v54 + 12) = 2080;
    if (v43)
    {
      v62 = 1702195828;
    }

    else
    {
      v62 = 0x65736C6166;
    }

    if (v43)
    {
      v63 = 0xE400000000000000;
    }

    else
    {
      v63 = 0xE500000000000000;
    }

    v64 = sub_1002FFA0C(v62, v63, v96);

    *(v54 + 14) = v64;
    *(v54 + 22) = 1024;
    *(v54 + 24) = v90;
    *(v54 + 28) = 1024;
    *(v54 + 30) = v91;
    _os_log_impl(&_mh_execute_header, v52, v53, "Storage path %s for ReservationsManager exists %s R_OK %{BOOL}d W_OK %{BOOL}d ", v54, 0x22u);
    swift_arrayDestroy();

    v51 = v95;
  }

  else
  {

    v81(v49, v50);
  }

  sub_100068FC4(&qword_100508EA8, &qword_100413B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409900;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v67;
  *(inited + 48) = 1;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v68;
  *(inited + 72) = 1;
  v69 = sub_100091C10(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100508EB0, &qword_100413B68);
  swift_arrayDestroy();
  v70 = objc_allocWithZone(NSPersistentStoreCoordinator);
  v71 = v93;
  v72 = [v70 initWithManagedObjectModel:v93];
  v73 = v87;
  static NSPersistentStore.StoreType.sqlite.getter();
  sub_100195B30(v69);
  v74 = v86;
  v75 = NSPersistentStoreCoordinator.addPersistentStore(type:configuration:at:options:)();
  if (v74)
  {

    (*(v88 + 8))(v73, v89);
LABEL_24:
    v81(v51, v94);
    return;
  }

  v76 = v75;

  (*(v88 + 8))(v73, v89);
  v77 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v78 = *(v92 + 112);
  *(v92 + 112) = v77;
  v79 = v77;

  if (v79)
  {

    [v79 setPersistentStoreCoordinator:v72];

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_100284B60()
{
  v1 = OBJC_IVAR____TtC10seserviced24SERPersistenceController_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SERPersistenceController()
{
  result = qword_100508DA8;
  if (!qword_100508DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100284C34()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100284CFC(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100068FC4(&qword_100505440, &unk_100413B30);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v59 - v16;
  v64 = *(a1 + 16);
  if (!v64)
  {
  }

  v59[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  sub_1000938D4(a1 + v19, v59 - v16, &qword_100505440, &unk_100413B30);
  v60 = v8;
  v66 = *(v8 + 32);
  v67 = v7;
  v66(v11, v17, v7);
  v62 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_10008C808(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_10030D8B0(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_10008C808(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_100312EE0();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v70 = v31;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v32 = swift_dynamicCast();
    v33 = v60;
    if ((v32 & 1) == 0)
    {

      (*(v33 + 8))(v11, v67);
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v61 = *(v60 + 72);
  v38 = v22;
  v66((v37 + v61 * v22), v11, v67);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v65;
    if (v64 == 1)
    {
    }

    v42 = v65 + v63 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_1000938D4(v42, v17, &qword_100505440, &unk_100413B30);
      v66(v11, v17, v67);
      v20 = *&v17[v62];
      v44 = *a3;
      v45 = sub_10008C808(v11);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v26 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v26)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_10030D8B0(v49, 1);
        v51 = *a3;
        v45 = sub_10008C808(v11);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v66((v53[6] + v61 * v45), v11, v67);
      *(v53[7] + 8 * v54) = v20;
      v55 = v53[2];
      v26 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v53[2] = v56;
      v42 += v63;
      v41 = v65;
      if (v64 == v43)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v57._object = 0x8000000100466020;
  v57._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v57);
  _print_unlocked<A, B>(_:_:)();
  v58._countAndFlagsBits = 39;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10028527C()
{
  result = qword_100502C18;
  if (!qword_100502C18)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502C18);
  }

  return result;
}

uint64_t sub_1002852D4(uint64_t a1, char a2, uint64_t *a3)
{
  v62 = a3;
  v6 = type metadata accessor for CredentialType();
  v56 = *(v6 - 8);
  v7 = v56[8];
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100068FC4(&qword_100505450, &qword_10040CCD8);
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10);
  v61 = &v53 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return result;
  }

  v16 = *(result + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v53 = v17;
  v54 = a1;
  v18 = a1 + v17;
  v19 = v61;
  sub_1000938D4(v18, v61, &qword_100505450, &qword_10040CCD8);
  v20 = v56[4];
  v59 = v6;
  v60 = (v56 + 4);
  v20(v9, v19, v6);
  v57 = v16;
  v21 = *&v19[v16];
  v22 = *v62;
  v24 = sub_10008CD0C(v9);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_26;
  }

  LOBYTE(v3) = v23;
  if (v22[3] >= v27)
  {
    v19 = v60;
    if ((a2 & 1) == 0)
    {
      goto LABEL_29;
    }

    v32 = v21;
LABEL_8:
    while (1)
    {
      v55 = (v19 - 24);
      v21 = *v62;
      if ((v3 & 1) == 0)
      {
        break;
      }

      v33 = *(v21[7] + 8 * v24);
      v34 = v32 + v33;
      if (!__OFADD__(v33, v32))
      {
        v3 = v59;
        result = (*v55)(v9, v59);
        *(v21[7] + 8 * v24) = v34;
        goto LABEL_13;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      v32 = v21;
      sub_100313154();
    }

    v21[(v24 >> 6) + 8] |= 1 << v24;
    v3 = v59;
    result = (v20)(v21[6] + v56[9] * v24, v9, v59);
    *(v21[7] + 8 * v24) = v32;
    v35 = v21[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      v21[2] = v37;
LABEL_13:
      v20 = (v15 - 1);
      if (v15 == 1)
      {
        return result;
      }

      v15 = v54 + v58 + v53;
      while (1)
      {
        v40 = v61;
        sub_1000938D4(v15, v61, &qword_100505450, &qword_10040CCD8);
        v41 = *v19;
        (*v19)(v9, v40, v3);
        v21 = *(v40 + v57);
        v42 = *v62;
        v24 = sub_10008CD0C(v9);
        v44 = v42[2];
        v45 = (v43 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
          break;
        }

        LOBYTE(v3) = v43;
        if (v42[3] < v46)
        {
          v47 = v62;
          sub_10030DC8C(v46, 1);
          v48 = *v47;
          v49 = sub_10008CD0C(v9);
          if ((v3 & 1) != (v50 & 1))
          {
            goto LABEL_30;
          }

          v24 = v49;
        }

        v51 = *v62;
        if (v3)
        {
          v52 = *(v51[7] + 8 * v24);
          v36 = __OFADD__(v52, v21);
          v21 = (v21 + v52);
          v19 = v60;
          if (v36)
          {
            goto LABEL_28;
          }

          v3 = v59;
          result = (*v55)(v9, v59);
          *(v51[7] + 8 * v24) = v21;
        }

        else
        {
          v51[(v24 >> 6) + 8] |= 1 << v24;
          v3 = v59;
          v19 = v60;
          result = v41(v51[6] + v56[9] * v24, v9, v59);
          *(v51[7] + 8 * v24) = v21;
          v38 = v51[2];
          v36 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v36)
          {
            goto LABEL_27;
          }

          v51[2] = v39;
        }

        v15 += v58;
        v20 = (v20 - 1);
        if (!v20)
        {
          return result;
        }
      }

LABEL_26:
      __break(1u);
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v62;
  sub_10030DC8C(v27, a2 & 1);
  v29 = *v28;
  v30 = sub_10008CD0C(v9);
  if ((v3 & 1) == (v31 & 1))
  {
    v24 = v30;
    v32 = v21;
    v19 = v60;
    goto LABEL_8;
  }

LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100285764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100068FC4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1002857E4()
{
  v1[5] = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(sub_100068FC4(&qword_100504EF0, &unk_10040C470) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = *(*(sub_100068FC4(&qword_1005031F0, &unk_10040C4C0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100285988, v0, 0);
}

uint64_t sub_100285988()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v6 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v6, v3);
  UserDefaultBackedCodableOptional.wrappedValue.getter();
  (*(v4 + 8))(v2, v3);
  v7 = type metadata accessor for SESPeerIdentityData(0);
  if ((*(*(v7 - 8) + 48))(v1, 1, v7) == 1)
  {
    v8 = *(v0 + 96);
    v9 = &qword_100504EF0;
    v10 = &unk_10040C470;
LABEL_5:
    result = sub_100075768(v8, v9, v10);
    v18 = 0.0;
    goto LABEL_7;
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  sub_1002863E4(v11 + *(v7 + 32), v12);
  sub_1001A669C(v11);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 104);
  if (v15 == 1)
  {
    v9 = &qword_1005031F0;
    v10 = &unk_10040C4C0;
    v8 = *(v0 + 104);
    goto LABEL_5;
  }

  Date.timeIntervalSinceNow.getter();
  v18 = v19;
  result = (*(v14 + 8))(v16, v13);
LABEL_7:
  v20 = fabs(v18) / 3600.0;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v20 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v20 >= 4294967300.0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20;
  v22 = *(v0 + 40);
  v23 = *(v22 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_preconditionsMet);
  v24 = *(v22 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v46 = v26;
    v47 = v21;
    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 48);
    v45 = *(v0 + 40);
    v30 = swift_slowAlloc();
    *v30 = 67109888;
    v48 = v23 & 1;
    *(v30 + 4) = v48;
    *(v30 + 8) = 1024;
    *(v30 + 10) = v24 & 1;
    *(v30 + 14) = 1024;
    v31 = *(v28 + 16);
    v31(v27, v45 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__didRecoverTLK, v29);
    UserDefaultBacked.wrappedValue.getter();
    (*(v28 + 8))(v27, v29);
    v21 = v47;
    *(v30 + 16) = *(v0 + 113);
    v32 = v24 & 1;

    *(v30 + 20) = 1024;
    *(v30 + 22) = v47;
    _os_log_impl(&_mh_execute_header, v25, v46, "Reporting state preconditions %{BOOL}d allViewsSynchronized %{BOOL}d serverRecovery %{BOOL}d identityAge %u", v30, 0x1Au);

    v33 = v31;
  }

  else
  {
    v34 = *(v0 + 56);
    v35 = *(v0 + 40);

    v33 = *(v34 + 16);
    v48 = v23 & 1;
    v32 = v24 & 1;
  }

  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v38 = *(v0 + 88);
  v40 = *(v0 + 56);
  v39 = *(v0 + 64);
  v41 = *(v0 + 48);
  v33(v39, *(v0 + 40) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__didRecoverTLK, v41);
  UserDefaultBacked.wrappedValue.getter();
  (*(v40 + 8))(v39, v41);
  LODWORD(v41) = *(v0 + 112);
  v42 = objc_opt_self();
  v43 = 0x10000;
  if (!v41)
  {
    v43 = 0;
  }

  sub_10004DCE8(v42, v43 | (v21 << 32) | (v32 << 8) | v48);

  v44 = *(v0 + 8);

  return v44();
}

unint64_t sub_100285E10(char a1)
{
  result = 0x74616572436B6C74;
  switch(a1)
  {
    case 1:
      return 0x766F6365526B6C74;
    case 2:
      return 0x65726168536B6C74;
    case 3:
      return 0x726F706D496B6C74;
    case 4:
      return 0x6C6569467261656ELL;
    case 5:
      return 0x676E69646F636E65;
    case 6:
      return 0x676E69646F636564;
    case 7:
      return 0xD000000000000010;
    case 8:
      return 0x666E6F436D616C73;
    case 9:
    case 17:
      v3 = 11;
      goto LABEL_23;
    case 10:
      return 0xD000000000000010;
    case 11:
    case 14:
    case 15:
    case 18:
    case 19:
      return 0xD000000000000013;
    case 12:
      return 0x457473694C6B6C74;
    case 13:
    case 28:
    case 34:
      return 0xD000000000000011;
    case 16:
    case 21:
    case 23:
    case 30:
      v3 = 5;
      goto LABEL_23;
    case 20:
    case 31:
      return 0xD000000000000012;
    case 22:
      return 0xD000000000000010;
    case 24:
      return 0xD000000000000014;
    case 25:
      return 0xD000000000000010;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0xD000000000000010;
    case 29:
      return 0x6D73694D64697364;
    case 32:
      return 0xD000000000000010;
    case 33:
      v3 = 10;
LABEL_23:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002861E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100285E10(*a1);
  v5 = v4;
  if (v3 == sub_100285E10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100286270()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100285E10(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002862D4()
{
  sub_100285E10(*v0);
  String.hash(into:)();
}

Swift::Int sub_100286328()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100285E10(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100286388@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1002865FC();
  *a2 = result;
  return result;
}

unint64_t sub_1002863B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100285E10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002863E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for KeySyncEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeySyncEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002865A8()
{
  result = qword_100508EB8;
  if (!qword_100508EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508EB8);
  }

  return result;
}

uint64_t sub_1002865FC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100286650()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced25SECredentialServerSession_];
  sub_10009393C(0, &qword_100508CE8, NSSet_ptr);
  sub_100068FC4(&qword_100504D48, &qword_10040C010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100413A40;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = sub_100068FC4(&qword_100508CF0, &qword_100413A50);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = sub_100068FC4(&qword_100508CF8, &qword_100413A58);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = sub_100068FC4(&qword_100508D00, &qword_100413A60);
  *(v0 + 96) = v3;
  v4 = sub_10009393C(0, &qword_100508D08, NSArray_ptr);
  *(v0 + 152) = sub_100068FC4(&qword_100508D10, &qword_100413A68);
  *(v0 + 128) = v4;
  v5 = sub_10009393C(0, &qword_100508D18, NSUUID_ptr);
  *(v0 + 184) = sub_100068FC4(&qword_100508D20, &qword_100413A70);
  *(v0 + 160) = v5;
  v6 = sub_10009393C(0, &qword_100508D28, NSString_ptr);
  *(v0 + 216) = sub_100068FC4(&qword_100508D30, &qword_100413A78);
  *(v0 + 192) = v6;
  v7 = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v0 + 248) = sub_100068FC4(&qword_100508D38, &unk_100413A80);
  *(v0 + 224) = v7;
  NSSet.init(objects:)();
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_100286A48()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced27SECSessionCallbackInterface_];
  sub_10009393C(0, &qword_100508CE8, NSSet_ptr);
  sub_100068FC4(&qword_100504D48, &qword_10040C010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100413A40;
  v1 = type metadata accessor for CredentialInternal();
  *(v0 + 56) = sub_100068FC4(&qword_100508CF0, &qword_100413A50);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for InstanceInfoInternal();
  *(v0 + 88) = sub_100068FC4(&qword_100508CF8, &qword_100413A58);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for ApplicationInfoInternal();
  *(v0 + 120) = sub_100068FC4(&qword_100508D00, &qword_100413A60);
  *(v0 + 96) = v3;
  v4 = sub_10009393C(0, &qword_100508D08, NSArray_ptr);
  *(v0 + 152) = sub_100068FC4(&qword_100508D10, &qword_100413A68);
  *(v0 + 128) = v4;
  v5 = sub_10009393C(0, &qword_100508D18, NSUUID_ptr);
  *(v0 + 184) = sub_100068FC4(&qword_100508D20, &qword_100413A70);
  *(v0 + 160) = v5;
  v6 = sub_10009393C(0, &qword_100508D28, NSString_ptr);
  *(v0 + 216) = sub_100068FC4(&qword_100508D30, &qword_100413A78);
  *(v0 + 192) = v6;
  v7 = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(v0 + 248) = sub_100068FC4(&qword_100508D38, &unk_100413A80);
  *(v0 + 224) = v7;
  NSSet.init(objects:)();
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

void sub_100286CD0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    v5 = *(v3 + 56);
    if (v5 >> 60 == 15)
    {
      v6 = *(v3 + 48);
      *(v3 + 48) = a2;
      *(v3 + 56) = a3;
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v6, v5);
    }
  }

  v7 = *(v3 + 16);
  v112 = *(v3 + 24);
  v8 = String._bridgeToObjectiveC()();
  v110 = *(v3 + 40);
  v111 = *(v3 + 32);
  v9 = String._bridgeToObjectiveC()();
  v10 = *(v3 + 56);
  if (v10 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v12 = *(v3 + 48);
    sub_100069E2C(v12, *(v3 + 56));
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v12, v10);
  }

  v113 = 0;
  v13 = [a1 BOOLValueForSetting:4 manufacturer:v8 brand:v9 uuid:isa error:&v113];

  if (v13)
  {
    v14 = v113;
    v15 = [v13 BOOLValue];

    *(v3 + 64) = v15;
  }

  else
  {
    v16 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = *(v3 + 56);
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v21 = *(v3 + 48);
    sub_100069E2C(v21, *(v3 + 56));
    v20 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v21, v19);
  }

  v113 = 0;
  v22 = [a1 BOOLValueForSetting:7 manufacturer:v17 brand:v18 uuid:v20 error:&v113];

  if (v22)
  {
    v23 = v113;
    v24 = [v22 BOOLValue];

    *(v3 + 65) = v24;
  }

  else
  {
    v25 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = *(v3 + 56);
  if (v28 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v30 = *(v3 + 48);
    sub_100069E2C(v30, v28);
    v29 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v30, v28);
  }

  v113 = 0;
  v31 = [a1 intValueForSetting:0 manufacturer:v26 brand:v27 uuid:v29 error:&v113];

  if (v31)
  {
    v32 = v113;
    v33 = [v31 integerValue];

    *(v3 + 96) = v33;
  }

  else
  {
    v34 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v37 = *(v3 + 56);
  if (v37 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    v39 = *(v3 + 48);
    sub_100069E2C(v39, *(v3 + 56));
    v38 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v39, v37);
  }

  v113 = 0;
  v40 = [a1 intValueForSetting:1 manufacturer:v35 brand:v36 uuid:v38 error:&v113];

  if (v40)
  {
    v41 = v113;
    v42 = [v40 integerValue];

    *(v3 + 104) = v42;
  }

  else
  {
    v43 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = *(v3 + 56);
  if (v46 >> 60 == 15)
  {
    v47 = 0;
  }

  else
  {
    v48 = *(v3 + 48);
    sub_100069E2C(v48, *(v3 + 56));
    v47 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v48, v46);
  }

  v113 = 0;
  v49 = [a1 BOOLValueForSetting:9 manufacturer:v44 brand:v45 uuid:v47 error:&v113];

  if (v49)
  {
    v50 = v113;
    v51 = [v49 BOOLValue];

    *(v3 + 80) = v51;
  }

  else
  {
    v52 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v53 = String._bridgeToObjectiveC()();
  v54 = String._bridgeToObjectiveC()();
  v55 = *(v3 + 56);
  if (v55 >> 60 == 15)
  {
    v56 = 0;
  }

  else
  {
    v57 = *(v3 + 48);
    sub_100069E2C(v57, *(v3 + 56));
    v56 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v57, v55);
  }

  v113 = 0;
  v58 = [a1 arrayValueForSetting:0 manufacturer:v53 brand:v54 uuid:v56 error:&v113];

  v59 = v113;
  if (v58)
  {
    v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v59;

    v62 = sub_1000F1864(v60);

    if (v62)
    {
      v63 = *(v3 + 72);
      *(v3 + 72) = v62;
    }
  }

  else
  {
    v64 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v65 = String._bridgeToObjectiveC()();
  v66 = String._bridgeToObjectiveC()();
  v67 = *(v3 + 56);
  if (v67 >> 60 == 15)
  {
    v68 = 0;
  }

  else
  {
    v69 = *(v3 + 48);
    sub_100069E2C(v69, *(v3 + 56));
    v68 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v69, v67);
  }

  v113 = 0;
  v70 = [a1 dictValueForSetting:0 manufacturer:v65 brand:v66 uuid:v68 error:&v113];

  v71 = v113;
  if (v70)
  {
    v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v71;

    v74 = sub_10008AE84(v72);

    if (v74)
    {
      v108 = a1;
      v75 = 1 << *(v74 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v77 = v76 & *(v74 + 64);
      v78 = (v75 + 63) >> 6;

      v79 = 0;
      v109 = _swiftEmptyArrayStorage;
      if (!v77)
      {
        goto LABEL_51;
      }

      do
      {
LABEL_49:
        while (1)
        {
          v80 = __clz(__rbit64(v77));
          v77 &= v77 - 1;
          v81 = v80 | (v79 << 6);
          v82 = (*(v74 + 48) + 16 * v81);
          v83 = *v82;
          v84 = v82[1];
          v85 = *(*(v74 + 56) + 8 * v81);

          v86 = sub_100287784(v83, v84);
          v88 = v87;
          v90 = v89;

          if ((v90 & 1) == 0)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_51;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_10012EDF0(0, *(v109 + 2) + 1, 1, v109);
        }

        v93 = *(v109 + 2);
        v92 = *(v109 + 3);
        if (v93 >= v92 >> 1)
        {
          v109 = sub_10012EDF0((v92 > 1), v93 + 1, 1, v109);
        }

        *(v109 + 2) = v93 + 1;
        v94 = &v109[16 * v93];
        *(v94 + 16) = v86;
        *(v94 + 5) = v88;
      }

      while (v77);
      while (1)
      {
LABEL_51:
        v91 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          __break(1u);
        }

        if (v91 >= v78)
        {
          break;
        }

        v77 = *(v74 + 64 + 8 * v91);
        ++v79;
        if (v77)
        {
          v79 = v91;
          goto LABEL_49;
        }
      }

      if (*(v109 + 2))
      {
        sub_100068FC4(&qword_1005092B0, qword_100413D00);
        v95 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v95 = &_swiftEmptyDictionarySingleton;
      }

      a1 = v108;
      v113 = v95;

      sub_100287D14(v97, 1, &v113);

      v98 = *(v3 + 88);
      *(v3 + 88) = v113;
    }
  }

  else
  {
    v96 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v99 = String._bridgeToObjectiveC()();
  v100 = String._bridgeToObjectiveC()();
  v101 = *(v3 + 56);
  if (v101 >> 60 == 15)
  {
    v102 = 0;
  }

  else
  {
    v103 = *(v3 + 48);
    sub_100069E2C(v103, *(v3 + 56));
    v102 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A2D0(v103, v101);
  }

  v113 = 0;
  v104 = [a1 BOOLValueForSetting:10 manufacturer:v99 brand:v100 uuid:v102 error:{&v113, v108}];

  if (v104)
  {
    v105 = v113;
    v106 = [v104 BOOLValue];

    *(v3 + 112) = v106;
  }

  else
  {
    v107 = v113;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100287784(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v19 = result;

    v7 = sub_10028806C(v19, a2, 10);

    if ((v7 & 0x10000) != 0)
    {
      return 0;
    }

    return v7;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LOWORD(v7) = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v7) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v7 = (10 * v7) + v13;
              if ((v7 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v12;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LOWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v16 = *result - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v7) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v7 = (10 * v7) + v16;
            if ((v7 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v7) = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v21 = v3;
      if (v3)
      {
        return 0;
      }

      return v7;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LOWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v7) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v7 = (10 * v7) - v9;
            if ((v7 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v20[0] = result;
  v20[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LOWORD(v7) = 0;
        v17 = v20;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF0000) != 0)
          {
            break;
          }

          v7 = (10 * v7) + v18;
          if ((v7 & 0x10000) != 0)
          {
            break;
          }

          ++v17;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LOWORD(v7) = 0;
        v10 = v20 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF0000) != 0)
          {
            break;
          }

          v7 = (10 * v7) - v11;
          if ((v7 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v3)
  {
    if (--v3)
    {
      LOWORD(v7) = 0;
      v14 = v20 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        if (((10 * v7) & 0xF0000) != 0)
        {
          break;
        }

        v7 = (10 * v7) + v15;
        if ((v7 & 0x10000) != 0)
        {
          break;
        }

        ++v14;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_100287AB4()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_10006A2D0(v0[6], v0[7]);
  v3 = v0[9];

  v4 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_100287B1C()
{
  v1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier, v2);
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8));
  sub_10006A2D0(*(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer), *(v0 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8));
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaPeer()
{
  result = qword_100508EF0;
  if (!qword_100508EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100287D14(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = *a3;
  v10 = sub_10008CA34(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10030BD7C(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_10008CA34(v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_100312094();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 2 * v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    v40._object = 0x8000000100466020;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v27 = *v24;
      v26 = *(v24 - 4);
      v28 = *a3;
      v29 = sub_10008CA34(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_24;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_10030BD7C(v33, 1);
        v35 = *a3;
        v29 = sub_10008CA34(v26);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v37[6] + 2 * v29) = v26;
      *(v37[7] + 8 * v29) = v27;
      v38 = v37[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v25;
      v37[2] = v39;
      v24 += 2;
      if (v4 == v25)
      {
      }
    }

    goto LABEL_26;
  }
}

unsigned __int8 *sub_10028806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100189A78();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100288640@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_10008E6F8(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10008E694(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_10006A178(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_100288788(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 62;
  v26 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_48;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v42 = &_swiftEmptyArrayStorage;
    v8 = v4 & ~(v4 >> 63);
    sub_10019F3C0(0, v8, 0);
    v9 = a1;
    v7 = &_swiftEmptyArrayStorage;
    if (v3 == 2)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_18;
      }

      v10 = a1;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
LABEL_20:
      v25 = BYTE6(v2);
      v28 = v3;
      v29 = v2;
      while (1)
      {
        if (!v8)
        {
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
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }

        if (v3 == 2)
        {
          if (v10 < *(v9 + 16))
          {
            goto LABEL_42;
          }

          if (v10 >= *(v9 + 24))
          {
            goto LABEL_45;
          }

          v15 = __DataStorage._bytes.getter();
          if (!v15)
          {
            goto LABEL_51;
          }

          v12 = v15;
          v16 = __DataStorage._offset.getter();
          v14 = v10 - v16;
          if (__OFSUB__(v10, v16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v3 != 1)
          {
            if (v10 >= v25)
            {
              goto LABEL_43;
            }

            v30 = v9;
            v31 = *(&a1 + 1);
            v32 = BYTE3(v9);
            v33 = v26;
            v34 = BYTE5(v9);
            v35 = BYTE6(v9);
            v36 = HIBYTE(v9);
            v37 = v2;
            v38 = BYTE2(v2);
            v39 = BYTE3(v2);
            v40 = BYTE4(v2);
            v41 = BYTE5(v2);
            v17 = *(&v30 + v10);
            goto LABEL_37;
          }

          if (v10 < a1 || v10 >= a1 >> 32)
          {
            goto LABEL_44;
          }

          v11 = __DataStorage._bytes.getter();
          if (!v11)
          {
            goto LABEL_50;
          }

          v12 = v11;
          v13 = __DataStorage._offset.getter();
          v14 = v10 - v13;
          if (__OFSUB__(v10, v13))
          {
            goto LABEL_46;
          }
        }

        v17 = *(v12 + v14);
        v9 = a1;
LABEL_37:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1004098F0;
        *(v18 + 56) = &type metadata for UInt8;
        *(v18 + 64) = &protocol witness table for UInt8;
        *(v18 + 32) = v17;
        v19 = String.init(format:_:)();
        v3 = v20;
        v42 = v7;
        v22 = v7[2];
        v21 = v7[3];
        if (v22 >= v21 >> 1)
        {
          sub_10019F3C0((v21 > 1), v22 + 1, 1);
          v9 = a1;
          v7 = v42;
        }

        v7[2] = v22 + 1;
        v23 = &v7[2 * v22];
        v23[4] = v19;
        v23[5] = v3;
        ++v10;
        --v8;
        --v4;
        LODWORD(v3) = v28;
        v2 = v29;
        if (!v4)
        {
          return v7;
        }
      }
    }

    __break(1u);
LABEL_18:
    if (v4 < 0)
    {
      goto LABEL_49;
    }

    v10 = 0;
    goto LABEL_20;
  }

  return v7;
}

uint64_t sub_100288AE8()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22[-1] - v4;
  v6 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22[-1] - v8;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100409A40;
  *(v10 + 56) = &type metadata for String;
  strcpy((v10 + 32), "peerIdentifier");
  *(v10 + 47) = -18;
  v22[0] = sub_100288788(*v0, *(v0 + 8));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  *(v10 + 64) = v11;
  *(v10 + 72) = v13;
  *(v10 + 120) = &type metadata for String;
  *(v10 + 88) = &type metadata for String;
  strcpy((v10 + 96), "creationTime");
  *(v10 + 109) = 0;
  *(v10 + 110) = -5120;
  v14 = type metadata accessor for SESPeerIdentityData(0);
  sub_1000938D4(v1 + *(v14 + 32), v9, &qword_1005031F0, &unk_10040C4C0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_100075768(v9, &qword_1005031F0, &unk_10040C4C0);
    *(v10 + 152) = &type metadata for String;
    *(v10 + 128) = 0x3E6C696E3CLL;
    *(v10 + 136) = 0xE500000000000000;
  }

  else
  {
    v23 = v15;
    v17 = sub_1000B9634(v22);
    (*(v16 + 32))(v17, v9, v15);
    sub_100075D50(v22, (v10 + 128));
  }

  *(v10 + 184) = &type metadata for String;
  *(v10 + 160) = 0xD000000000000010;
  *(v10 + 168) = 0x80000001004660D0;
  sub_1000938D4(v1 + *(v14 + 36), v5, &qword_100504F08, &unk_10040DE20);
  v18 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v18 - 8) + 48))(v5, 1, v18) == 1)
  {
    sub_100075768(v5, &qword_100504F08, &unk_10040DE20);
    *(v10 + 216) = &type metadata for String;
    *(v10 + 192) = 0x3E6C696E3CLL;
    *(v10 + 200) = 0xE500000000000000;
  }

  else
  {
    v19 = sub_10028A3A4();
    v23 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    v22[0] = v19;
    sub_10028C290(v5, type metadata accessor for CreationMetadata);
    sub_100075D50(v22, (v10 + 192));
  }

  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
  return NSDictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100288EC8(uint64_t a1)
{
  v19._countAndFlagsBits = 8315;
  v19._object = 0xE200000000000000;
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1000BC094(v4, v17);
      sub_1000752B0(v17, v17[3]);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v6;
      sub_1000752F4(v17);
      v18 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_10019F3C0((v8 > 1), v9 + 1, 1);
        v2 = v18;
      }

      v2[2] = v9 + 1;
      v10 = &v2[2 * v9];
      v10[4] = v5;
      v10[5] = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v17[0] = v2;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  String.append(_:)(v19);
}

uint64_t SESViewInformation.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(45);

  strcpy(v22, "Current TLK ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  v2 = [v0 currentTLK];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 description];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x616853204B4C540ALL;
  v9._object = 0xEC00000020736572;
  String.append(_:)(v9);
  v10 = [v1 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Array.description.getter();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x756F69766572500ALL;
  v15._object = 0xEF20734B4C542073;
  String.append(_:)(v15);
  v16 = [v1 previousTLKs];
  sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = Array.description.getter();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return v22[0];
}

uint64_t sub_100289300()
{
  v1 = v0;
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004099F0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 2003134838;
  *(v2 + 40) = 0xE400000000000000;
  v3 = [v0 viewName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v2 + 64) = v4;
  *(v2 + 72) = v6;
  *(v2 + 120) = &type metadata for String;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 96) = 0x54746E6572727563;
  *(v2 + 104) = 0xEA00000000004B4CLL;
  v7 = [v1 currentTLK];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 dumpState];

    v31 = sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    *&v30 = v9;
    sub_100075D50(&v30, (v2 + 128));
  }

  else
  {
    *(v2 + 152) = &type metadata for String;
    *(v2 + 128) = 0x3E6C696E3CLL;
    *(v2 + 136) = 0xE500000000000000;
  }

  *(v2 + 184) = &type metadata for String;
  *(v2 + 160) = 0x72616853736B6C74;
  *(v2 + 168) = 0xEA00000000007365;
  v10 = [v1 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    *&v30 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 dumpState];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(v30 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v12 != v14);

    v19 = v30;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  v20 = sub_100068FC4(&qword_1005092C0, &unk_100413DB0);
  *(v2 + 192) = v19;
  *(v2 + 248) = &type metadata for String;
  *(v2 + 216) = v20;
  strcpy((v2 + 224), "previousTLKS");
  *(v2 + 237) = 0;
  *(v2 + 238) = -5120;
  v21 = [v1 previousTLKs];
  sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_26:

    v29 = _swiftEmptyArrayStorage;
LABEL_27:
    *(v2 + 280) = v20;
    *(v2 + 256) = v29;
    sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);
    return NSDictionary.init(dictionaryLiteral:)();
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_17:
  *&v30 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      v27 = [v25 dumpState];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v28 = *(v30 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v23 != v24);

    v29 = v30;
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t SESPeerIdentity.description.getter()
{
  v1 = sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for SESPeerIdentityData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PropertyListDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v13 = [v0 peerData];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10028C2F0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v14, v16);

  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = sub_10028C22C(v4, v9);
  v18 = sub_100289B6C(v17);
  sub_10028C290(v9, type metadata accessor for SESPeerIdentityData);
  return v18;
}

uint64_t sub_100289E10()
{
  v1 = sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for SESPeerIdentityData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PropertyListDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v13 = [v0 peerData];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10028C2F0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v14, v16);

  (*(v6 + 56))(v4, 0, 1, v5);
  sub_10028C22C(v4, v9);
  v17 = sub_100288AE8();
  sub_10028C290(v9, type metadata accessor for SESPeerIdentityData);
  return v17;
}

uint64_t sub_10028A19C()
{
  v1 = v0;
  _StringGuts.grow(_:)(41);

  v2 = type metadata accessor for CreationMetadata(0);
  String.append(_:)(*(v0 + v2[7]));
  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + v2[6]));
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 544108320;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6 = v2[5];
  type metadata accessor for Date();
  sub_10028C2F0(&qword_100504F38, &type metadata accessor for Date);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x746E756F6363410ALL;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  v9 = (&v1->_countAndFlagsBits + v2[8]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0xE500000000000000;
    v10 = 0x3E6C696E3CLL;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x20746C6120;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  v14 = (&v1->_countAndFlagsBits + v2[9]);
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
  }

  else
  {
    v16 = 0x3E6C696E3CLL;
  }

  if (v15)
  {
    v17 = v14[1];
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  String.append(_:)(v18);

  return 0x203A656369766544;
}

uint64_t sub_10028A3A4()
{
  sub_100068FC4(&qword_1005092B8, &qword_100413DA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10040A530;
  *(v1 + 32) = 0x6F69737265567773;
  *(v1 + 40) = 0xE90000000000006ELL;
  v2 = *v0;
  v3 = *(v0 + 1);
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 120) = &type metadata for String;
  *(v1 + 88) = &type metadata for String;
  *(v1 + 96) = 1702125924;
  *(v1 + 104) = 0xE400000000000000;
  v4 = type metadata accessor for CreationMetadata(0);
  v5 = v4[5];
  v6 = type metadata accessor for Date();
  *(v1 + 152) = v6;
  v7 = sub_1000B9634((v1 + 128));
  (*(*(v6 - 8) + 16))(v7, &v0[v5], v6);
  *(v1 + 184) = &type metadata for String;
  v8 = 0xE500000000000000;
  *(v1 + 160) = 0x6C65646F6DLL;
  *(v1 + 168) = 0xE500000000000000;
  v9 = &v0[v4[6]];
  v10 = *(v9 + 1);
  *(v1 + 192) = *v9;
  *(v1 + 200) = v10;
  *(v1 + 248) = &type metadata for String;
  *(v1 + 216) = &type metadata for String;
  *(v1 + 224) = 0x656369766564;
  *(v1 + 232) = 0xE600000000000000;
  v11 = &v0[v4[7]];
  v12 = *(v11 + 1);
  *(v1 + 256) = *v11;
  *(v1 + 264) = v12;
  *(v1 + 312) = &type metadata for String;
  *(v1 + 280) = &type metadata for String;
  *(v1 + 288) = 1684632420;
  *(v1 + 296) = 0xE400000000000000;
  v13 = &v0[v4[8]];
  v14 = *v13;
  v15 = v13[1];
  v16 = 0x3E6C696E3CLL;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v14 = 0x3E6C696E3CLL;
    v17 = 0xE500000000000000;
  }

  *(v1 + 320) = v14;
  *(v1 + 328) = v17;
  *(v1 + 376) = &type metadata for String;
  *(v1 + 344) = &type metadata for String;
  *(v1 + 352) = 0x44495344746C61;
  *(v1 + 360) = 0xE700000000000000;
  v18 = &v0[v4[9]];
  v19 = *v18;
  v20 = v18[1];
  *(v1 + 408) = &type metadata for String;
  if (v20)
  {
    v16 = v19;
    v8 = v20;
  }

  *(v1 + 384) = v16;
  *(v1 + 392) = v8;
  sub_10009393C(0, &qword_100504FE0, NSDictionary_ptr);

  return NSDictionary.init(dictionaryLiteral:)();
}

unint64_t SESTLKShare.description.getter()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504F80, &qword_10040C510);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = &v54 - v4;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v59 = 0xD000000000000014;
  v60 = 0x800000010046A0B0;
  v5 = [v0 tlkUUID];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100288640(4, v6, v8, &v57);
  v9 = v57;
  v10 = v58;
  v56 = sub_100288788(v57, v58);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;
  sub_10006A178(v9, v10);

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 2120480;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16 = [v1 sourcePeerIdentifier];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_100288640(4, v17, v19, &v57);
  v20 = v57;
  v21 = v58;
  v56 = sub_100288788(v57, v58);
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;
  sub_10006A178(v20, v21);

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 540945696;
  v26._object = 0xE400000000000000;
  String.append(_:)(v26);
  v27 = [v1 targetPeerIdentifier];
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_100288640(4, v28, v30, &v57);
  v31 = v57;
  v32 = v58;
  v56 = sub_100288788(v57, v58);
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;
  v36 = v32;
  v37 = v55;
  sub_10006A178(v31, v36);

  v38._countAndFlagsBits = v33;
  v38._object = v35;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x65726168530A5D20;
  v39._object = 0xED00002061746144;
  String.append(_:)(v39);
  v40 = type metadata accessor for PropertyListDecoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v43 = type metadata accessor for SESTLKShareData(0);
  v44 = [v1 shareData];
  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  sub_10028C2F0(&qword_100504F40, type metadata accessor for SESTLKShareData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10006A178(v45, v47);

  v48 = (*(*(v43 - 8) + 56))(v37, 0, 1, v43);
  v49 = sub_10028AADC(v48);
  v51 = v50;
  sub_10028C290(v37, type metadata accessor for SESTLKShareData);
  v52._countAndFlagsBits = v49;
  v52._object = v51;
  String.append(_:)(v52);

  return v59;
}