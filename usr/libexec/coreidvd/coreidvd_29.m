uint64_t sub_1002DFAE0@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  v13 = *a1;
  v14 = [*a1 title];
  if (v14)
  {
    v15 = v14;
    v26[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v13 actionType];
    IdentityProofingPrecursorPassMessageActionType.init(rawValue:)();
    if ((v16 & 1) == 0)
    {
      v21 = [v13 actionURL];
      if (v21)
      {
        v22 = v21;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
      }

      else
      {
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      }

      v25 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessageAction());
      result = IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)();
      goto LABEL_11;
    }
  }

  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "IdentityProofingDatabaseProvider failed to map precursor pass message action from stored proofing session", v19, 2u);
  }

  (*(v5 + 8))(v8, v4);
  result = 0;
LABEL_11:
  *a2 = result;
  return result;
}

void sub_1002DFDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CCBC(a2, a3);
  if (v4)
  {
    return;
  }

  if (!v13)
  {
LABEL_14:
    (*(v9 + 104))(v12, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v14 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    v23 = v13;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v13 = v23;
    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = [v16 piiTokenIdentifier];
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

  swift_beginAccess();
  v22 = *(a4 + 24);
  *(a4 + 16) = v19;
  *(a4 + 24) = v21;
}

void sub_1002E0070(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005791C8(a1, a2);
  if (v3)
  {
    return;
  }

  if (v12 >> 62)
  {
    v18 = v12;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v18;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_11:

    (*(v8 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 documentType];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = IdentityDocumentType.init(documentTypeString:)();
    *a3 = v17;
  }

  else
  {
    (*(v8 + 104))(v11, enum case for DIPError.Code.idTypeUnavailable(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void (*sub_1002E0404(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1002E0484;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002E048C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_1002E52A8;
  }

  __break(1u);
  return result;
}

void sub_1002E0538(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1002D95A0(*a1, &v4);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1002E0570(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 320) = a3;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 232) = v4;
  v5 = *(v4 - 8);
  *(v3 + 240) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v3 + 256) = v7;
  v8 = *(v7 - 8);
  *(v3 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_1002E0690, 0, 0);
}

uint64_t sub_1002E0690()
{
  v33 = v0;
  v1 = *(v0 + 272);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = IdentityTarget.debugDescription.getter();
    v9 = sub_100141FE4(v7, v8, v32);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    if (v4)
    {
      v10 = 0xE300000000000000;
      v11 = 4999502;
    }

    else
    {
      v15 = *(v0 + 224);
      v11 = IdentityDocumentType.description.getter();
      v10 = v16;
    }

    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 256);
    v20 = sub_100141FE4(v11, v10, v32);

    *(v6 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityDatabaseProvider attempting to delete all proofing sessions for %s of type %s", v6, 0x16u);
    swift_arrayDestroy();

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 256);

    (*(v13 + 8))(v12, v14);
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v21 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v21 + 54);
  sub_1000318FC(&v21[4], v0 + 16);
  os_unfair_lock_unlock(v21 + 54);
  v22 = *(v0 + 320);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 72);
  *(v0 + 280) = v25;

  sub_100031918(v0 + 16);
  v26 = swift_allocObject();
  *(v0 + 288) = v26;
  *(v26 + 16) = v24;
  *(v26 + 24) = v23;
  *(v26 + 32) = v22 & 1;
  v27 = *(v25 + 16);
  v28 = swift_allocObject();
  *(v0 + 296) = v28;
  *(v28 + 16) = sub_1002E0D10;
  *(v28 + 24) = v26;
  v29 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v30 = swift_task_alloc();
  *(v0 + 304) = v30;
  *v30 = v0;
  v30[1] = sub_1002E09E0;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v30, sub_1000280B4, v28, &type metadata for () + 8);
}

uint64_t sub_1002E09E0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_1002E0B80;
  }

  else
  {
    v6 = v2[36];
    v5 = v2[37];
    v7 = v2[35];

    v4 = sub_1002E0B10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E0B10()
{
  v1 = v0[34];
  v2 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002E0B80()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002E0D30()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E0D9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002E0DD4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v54 = a6;
  v45 = a7;
  *&v51 = type metadata accessor for Logger();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v51);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v50 = v17;
  v18 = os_log_type_enabled(v16, v17);
  v48 = a4;
  v49 = a2;
  v46 = a1;
  v47 = a3;
  if (v18)
  {
    v19 = a4;
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53[0] = v44;
    *v20 = 136315906;
    *(v20 + 4) = sub_100141FE4(a1, a2, v53);
    *(v20 + 12) = 2080;
    v21 = IdentityTarget.debugDescription.getter();
    v23 = sub_100141FE4(v21, v22, v53);

    *(v20 + 14) = v23;
    *(v20 + 22) = 2080;
    if (a5)
    {
      v24 = v19;
    }

    else
    {
      v24 = 7104878;
    }

    if (a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_100141FE4(v24, v25, v53);

    *(v20 + 24) = v26;
    *(v20 + 32) = 2080;
    v27 = IdentityDocumentType.description.getter();
    v29 = sub_100141FE4(v27, v28, v53);

    *(v20 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v16, v50, "hasUserAttemptedToProof called with parameters sessionLookupIdentifier: %s, target: %s, pairingID: %s, documentType:%s", v20, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v12 + 8))(v15, v51);
  v30 = a5;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  v31 = v52;
  sub_10057E28C();
  if (!v31)
  {
    v34 = v32;
    v35 = swift_allocObject();
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0;
    v36 = swift_allocObject();
    v37 = v54;
    v36[2] = v34;
    v36[3] = v37;
    v38 = v47;
    v36[4] = v46;
    v36[5] = v49;
    v36[6] = v38;
    v36[7] = v48;
    v36[8] = v30;
    v36[9] = v35;

    sub_10057C18C(sub_1002E42F4, v36);

    swift_beginAccess();
    v39 = *(v35 + 48);

    v40 = *(v35 + 32);
    v51 = *(v35 + 16);
    v52 = v40;

    v41 = v45;
    result = *&v51;
    v42 = v52;
    *v45 = v51;
    v41[1] = v42;
    *(v41 + 4) = v39;
  }

  return result;
}

uint64_t sub_1002E11E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v60 = a5;
  v59 = a4;
  v58 = a3;
  v57 = a1;
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DIPError();
  v65 = *(v66 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for Logger();
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = *(v70 + 64);
  v18 = __chkstk_darwin(v16);
  v62 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v55 = &v55 - v21;
  v22 = __chkstk_darwin(v20);
  v67 = &v55 - v23;
  __chkstk_darwin(v22);
  v56 = &v55 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = 3;
  v72 = (v25 + 16);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v69 = v25;
  v68 = v26;
  v28 = v27;
  v29 = swift_allocObject();
  v30 = a2;
  v31 = a7;
  v32 = v29;
  *(v29 + 16) = v57;
  *(v29 + 24) = v30;
  *(v29 + 32) = v58;
  *(v29 + 40) = v59 & 1;
  v33 = v60;
  *(v29 + 48) = v28;
  *(v29 + 56) = v33;
  *(v29 + 64) = v61;
  *(v29 + 72) = v31;
  *(v29 + 80) = v26;
  *(v29 + 88) = v25;

  sub_10057C18C(sub_1002E51D0, v32);

  v34 = v70;
  v35 = v71;
  v36 = v67;
  v37 = v72;
  swift_beginAccess();
  if (*(v26 + 16) == 1 && (swift_beginAccess(), v38 = *v37, v39 = IdentityProofingActionStatus.rawValue.getter(), v39 == IdentityProofingActionStatus.rawValue.getter()))
  {
    v40 = v56;
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "The action status is statusPending as the user is looking for an update too early", v43, 2u);
    }

    (*(v34 + 8))(v40, v35);
    v44 = 1;
  }

  else
  {
    defaultLogger()();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = v34;
      v49 = swift_slowAlloc();
      v73 = v49;
      *v47 = 136315138;
      swift_beginAccess();
      v50 = *v37;
      v51 = IdentityProofingActionStatus.debugDescription.getter();
      v53 = sub_100141FE4(v51, v52, &v73);
      v37 = v72;

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "The action status is %s", v47, 0xCu);
      sub_10000BB78(v49);

      (*(v48 + 8))(v36, v35);
    }

    else
    {

      (*(v34 + 8))(v36, v35);
    }

    swift_beginAccess();
    v44 = *v37;
  }

  return v44;
}

uint64_t sub_1002E1B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DIPError();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v18 = type metadata accessor for Logger();
  v9 = *(*(v18 - 8) + 64);
  v10 = __chkstk_darwin(v18);
  __chkstk_darwin(v10);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v12 = v11;
  v13 = swift_allocObject();
  v14 = a3;
  v15 = v13;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  v13[5] = v14;

  sub_10057C18C(sub_1002E435C, v15);
}

uint64_t sub_1002E1FD4()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[9];
  v0[27] = v2;

  sub_100031918((v0 + 2));
  v3 = *(v2 + 16);
  v4 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1002E2124;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 30, sub_1002E0538, 0, &type metadata for Bool);
}

uint64_t sub_1002E2124()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  *(v3 + 232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002E2264, 0, 0);
  }

  else
  {
    v4 = *(v3 + 216);

    v5 = *(v3 + 240);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1002E2264()
{
  v1 = v0[27];

  v2 = v0[1];
  v3 = v0[29];

  return v2(0);
}

uint64_t sub_1002E22CC(uint64_t a1, char *a2)
{
  v91 = a1;
  v104 = type metadata accessor for DIPError();
  v98 = *(v104 - 8);
  v3 = *(v98 + 64);
  __chkstk_darwin(v104);
  v97 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v99 = &v90 - v7;
  v100 = type metadata accessor for DIPError.Code();
  v8 = *(v100 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v100);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v106 = *(v12 - 8);
  v107 = v12;
  v13 = *(v106 + 64);
  v14 = __chkstk_darwin(v12);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v92 = &v90 - v17;
  v18 = __chkstk_darwin(v16);
  v102 = &v90 - v19;
  v20 = __chkstk_darwin(v18);
  v94 = &v90 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v90 - v23;
  __chkstk_darwin(v22);
  v26 = &v90 - v25;
  v27 = type metadata accessor for IdentityDocumentType.Category();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v105 = v32;
  *(v32 + 16) = 3;
  v33 = (v32 + 16);
  v34 = swift_allocObject();
  v103 = v34;
  *(v34 + 16) = 0;
  v101 = (v34 + 16);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v35 = (*(v28 + 88))(v31, v27);
  if (v35 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v36 = IdentityProofingConfiguration.state.getter();
    if (v37)
    {
      v38 = v37;
      v90 = v36;
      v93 = a2;
      v95 = v8;
      defaultLogger()();

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v109[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_100141FE4(v90, v38, v109);
        _os_log_impl(&_mh_execute_header, v39, v40, "The document type is mDL setting sessionLookupIdentifier as state: %s", v41, 0xCu);
        sub_10000BB78(v42);
      }

      v43 = *(v106 + 8);
      v43(v26, v107);
LABEL_11:
      type metadata accessor for IdentityProofingDataContext();
      swift_allocObject();
      sub_10057E28C();
      v55 = v54;
      v56 = swift_allocObject();
      v57 = v93;
      v56[2] = v55;
      v56[3] = v57;
      v56[4] = v90;
      v56[5] = v38;
      v58 = v103;
      v56[6] = v91;
      v56[7] = v58;
      v56[8] = v105;

      v59 = v57;

      sub_10057C18C(sub_1002E4A34, v56);

      goto LABEL_24;
    }

    v53 = v100;
    (*(v8 + 104))(v11, enum case for DIPError.Code.idStateUnavailable(_:), v100);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  else
  {
    v93 = a2;
    if (v35 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v93 = "it is watch proofing attempt";
      v50 = *(v8 + 104);
      v95 = v8;
      v51 = v100;
      v50(v11, enum case for DIPError.Code.idTypeUnavailable(_:), v100);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v52 = v27;
      v53 = v51;
      v8 = v95;
      (*(v28 + 8))(v31, v52);
      goto LABEL_16;
    }

    v44 = IdentityProofingConfiguration.country.getter();
    if (v45)
    {
      v38 = v45;
      v90 = v44;
      v95 = v8;
      defaultLogger()();

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v109[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_100141FE4(v90, v38, v109);
        _os_log_impl(&_mh_execute_header, v46, v47, "The document type is passport setting sessionLookupIdentifier as country: %s", v48, 0xCu);
        sub_10000BB78(v49);
      }

      v43 = *(v106 + 8);
      v43(v24, v107);
      goto LABEL_11;
    }

    v53 = v100;
    (*(v8 + 104))(v11, enum case for DIPError.Code.idCountryUnavailable(_:), v100);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_16:
  swift_getErrorValue();
  v60 = v99;
  Error.dipErrorCode.getter();
  if ((*(v8 + 48))(v60, 1, v53) == 1)
  {
    sub_10000BE18(v60, &qword_10083B020, &unk_1006D8ED0);
LABEL_21:
    (*(v8 + 104))(v11, enum case for DIPError.Code.internalError(_:), v53);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    v67 = v97;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v68 = v104;
    swift_allocError();
    v69 = v98;
    (*(v98 + 16))(v70, v67, v68);
    v71 = v96;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v43 = *(v106 + 8);
    v43(v71, v107);
    (*(v69 + 8))(v67, v68);

    goto LABEL_24;
  }

  v61 = (*(v8 + 88))(v60, v53);
  v62 = enum case for DIPError.Code.proofingSessionDoesntExist(_:);
  (*(v8 + 8))(v60, v53);
  if (v61 != v62)
  {
    goto LABEL_21;
  }

  v63 = v92;
  defaultLogger()();
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "No proofing session exists", v66, 2u);
  }

  else
  {
  }

  v43 = *(v106 + 8);
  v43(v63, v107);
LABEL_24:
  v72 = v101;
  swift_beginAccess();
  v73 = v102;
  if (*v72 == 1 && (swift_beginAccess(), v74 = *v33, v75 = IdentityProofingActionStatus.rawValue.getter(), v75 == IdentityProofingActionStatus.rawValue.getter()))
  {
    v76 = v94;
    defaultLogger()();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "The action status is statusPending as the user is looking for an update too early", v79, 2u);
    }

    v43(v76, v107);
    v80 = 1;
  }

  else
  {
    defaultLogger()();

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v108 = v84;
      *v83 = 136315138;
      swift_beginAccess();
      v85 = *v33;
      v86 = IdentityProofingActionStatus.debugDescription.getter();
      v88 = sub_100141FE4(v86, v87, &v108);

      *(v83 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v81, v82, "The action status is %s", v83, 0xCu);
      sub_10000BB78(v84);
    }

    v43(v73, v107);
    swift_beginAccess();
    v80 = *v33;
  }

  return v80;
}

uint64_t sub_1002E31A0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v4)
  {
    (*(v10 + 104))(v13, enum case for DIPError.Code.internalError(_:), v9);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v15 = v14;
    v16 = swift_allocObject();
    v22 = a2;
    v17 = v16;
    v18 = 1;
    if ((a1 & 3) == 2)
    {
      v18 = 2;
    }

    *(v16 + 16) = v18;
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = v15;
    v19[4] = v22;
    v19[5] = a3;
    v19[6] = v17;

    sub_10057C18C(sub_1002E50D4, v19);
  }
}

char *sub_1002E344C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  swift_allocObject();
  sub_10057E28C();
  if (!v2)
  {
    v12 = v11;
    v17 = v6;
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = v10;

    sub_10057C18C(sub_1002E4960, v13);

    swift_beginAccess();
    if (*(v10 + 24))
    {
      v9 = *(v10 + 16);
      v15 = *(v10 + 24);

      return v9;
    }

    (*(v17 + 104))(v9, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v9;
}

char *sub_1002E371C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v98 - v9;
  v11 = sub_1002DF674(a1);
  if (!v1)
  {
    v110 = v11;
    v115 = 0;
    v12 = [a1 proofingErrorMessage];
    if (v12)
    {
      v118 = v12;
      v13 = v12;
      v14 = v115;
      sub_1002DF830(&v118, &v116);
      v115 = v14;

      v111 = v116;
    }

    else
    {
      v111 = 0;
    }

    v15 = [a1 state];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v18;
      v109 = v17;
    }

    else
    {
      v108 = 0;
      v109 = 0;
    }

    v19 = [a1 country];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v22;
      v107 = v21;
    }

    else
    {
      v106 = 0;
      v107 = 0;
    }

    [a1 target];
    v105 = IdentityTarget.init(rawValue:)();
    v104 = v23;
    v24 = [a1 productIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = v27;
      v103 = v26;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    v112 = v8;
    v28 = [a1 extendedReviewURLString];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v31;
      v100 = v30;
    }

    else
    {
      v99 = 0;
      v100 = 0;
    }

    v113 = v4;
    v114 = v3;
    v32 = [a1 learnMoreURLString];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = [a1 supplementalProvisioningData];
    if (v34)
    {
      v35 = v34;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v36 = [a1 documentType];
    if (v36)
    {
      v37 = v36;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      IdentityDocumentType.init(documentTypeString:)();
    }

    v38 = objc_allocWithZone(type metadata accessor for IdentityProofingConfiguration());
    v101 = v111;
    v39 = IdentityProofingConfiguration.init(state:country:targetDevice:actionStatus:credentialIdentifier:productIdentifier:axSettings:accountKeyIdentifier:extendedReviewURLString:learnMoreURLString:supplementalProvisioningData:documentType:isPairedWatchUnsupported:proofingErrorMessage:piiTokenIdentifier:)();
    defaultLogger()();
    v40 = a1;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v116 = v44;
      *v43 = 136315138;
      v45 = [v40 proofingSessionID];
      if (v45)
      {
        v46 = v45;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
      }

      else
      {
        v49 = 0xE500000000000000;
        v47 = 0x3E6C696E3CLL;
      }

      v50 = sub_100141FE4(v47, v49, &v116);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "IdentityProofingDatabaseProvider mapping configuration for the proofing session with ID -> %s", v43, 0xCu);
      sub_10000BB78(v44);
    }

    v51 = v114;
    v52 = *(v113 + 8);
    v52(v10, v114);
    v53 = v112;
    defaultLogger()();
    v54 = v101;
    v10 = v39;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      LODWORD(v108) = v56;
      v57 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v118 = v109;
      *v57 = 136317442;
      v58 = IdentityProofingConfiguration.state.getter();
      if (!v59)
      {
        v58 = 0x3E6C696E3CLL;
      }

      v60 = 0xE500000000000000;
      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0xE500000000000000;
      }

      v62 = sub_100141FE4(v58, v61, &v118);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v63 = IdentityProofingConfiguration.country.getter();
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v63 = 0x3E6C696E3CLL;
        v65 = 0xE500000000000000;
      }

      v66 = sub_100141FE4(v63, v65, &v118);

      *(v57 + 14) = v66;
      *(v57 + 22) = 2080;
      v116 = IdentityProofingConfiguration.targetDevice.getter();
      v117 = v67 & 1;
      sub_100007224(&qword_10083EF70, &unk_1006DC4F0);
      v68 = Optional.debugDescription.getter();
      v70 = sub_100141FE4(v68, v69, &v118);

      *(v57 + 24) = v70;
      *(v57 + 32) = 2080;
      v71 = IdentityProofingActionStatus.debugDescription.getter();
      v73 = sub_100141FE4(v71, v72, &v118);

      *(v57 + 34) = v73;
      *(v57 + 42) = 2080;
      v116 = IdentityProofingConfiguration.actionStatus.getter();
      v117 = v74 & 1;
      sub_100007224(&qword_1008402E0, &unk_1006DD000);
      v75 = Optional.debugDescription.getter();
      v77 = sub_100141FE4(v75, v76, &v118);

      *(v57 + 44) = v77;
      *(v57 + 52) = 2080;
      IdentityProofingConfiguration.documentType.getter();
      v78 = IdentityDocumentType.description.getter();
      v80 = sub_100141FE4(v78, v79, &v118);

      *(v57 + 54) = v80;
      *(v57 + 62) = 2080;
      v81 = IdentityProofingConfiguration.productIdentifier.getter();
      if (v82)
      {
        v83 = v82;
      }

      else
      {
        v81 = 0x3E6C696E3CLL;
        v83 = 0xE500000000000000;
      }

      v84 = sub_100141FE4(v81, v83, &v118);

      *(v57 + 64) = v84;
      *(v57 + 72) = 2080;
      v85 = IdentityProofingConfiguration.extendedReviewURLString.getter();
      if (v86)
      {
        v87 = v86;
      }

      else
      {
        v85 = 0x3E6C696E3CLL;
        v87 = 0xE500000000000000;
      }

      v88 = sub_100141FE4(v85, v87, &v118);

      *(v57 + 74) = v88;
      *(v57 + 82) = 2080;
      v89 = IdentityProofingConfiguration.learnMoreURLString.getter();
      if (v90)
      {
        v91 = v90;
      }

      else
      {
        v89 = 0x3E6C696E3CLL;
        v91 = 0xE500000000000000;
      }

      v92 = sub_100141FE4(v89, v91, &v118);

      *(v57 + 84) = v92;
      *(v57 + 92) = 2080;
      if (v111)
      {
        v93 = IdentityProofingPrecursorPassMessage.description.getter();
        v60 = v94;
        v95 = v113;
      }

      else
      {
        v95 = v113;
        v93 = 0x3E6C696E3CLL;
      }

      v96 = sub_100141FE4(v93, v60, &v118);

      *(v57 + 94) = v96;
      _os_log_impl(&_mh_execute_header, v55, v108, "\n--- start logging proofing configuration ---\n  state: %s\n  country: %s\n  target: %s\n  status: %s\n  action status: %s\n  documentType: %s\n  product identifier: %s\n  extended review URL: %s\n  learn more URL: %s\n  proofing error message: %s\n--- end logging proofing status ---", v57, 0x66u);
      swift_arrayDestroy();

      (*(v95 + 8))(v112, v114);
    }

    else
    {

      v52(v53, v51);
    }
  }

  return v10;
}

uint64_t sub_1002E3FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  swift_allocObject();
  sub_10057E28C();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = v8;

  sub_10057C18C(a4, v11);

  swift_beginAccess();
  v12 = *(v8 + 16);
  v13 = *(v8 + 24);

  return v12;
}

uint64_t sub_1002E420C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E4264()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E42A4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002E431C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E437C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002E43C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E43DC(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002E449C, 0, 0);
}

uint64_t sub_1002E449C()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[9];
  v0[33] = v4;

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[34] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[35] = v7;
  *(v7 + 16) = sub_1002E4944;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1002E4660;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_100267820, v7, &type metadata for IdentityDocumentType);
}

uint64_t sub_1002E4660()
{
  v2 = *(*v1 + 288);
  v3 = *v1;
  v3[37] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002E47D0, 0, 0);
  }

  else
  {
    v4 = v3[34];
    v5 = v3[35];
    v7 = v3[32];
    v6 = v3[33];

    v8 = v3[27];

    v9 = v3[1];

    return v9(v8);
  }
}

uint64_t sub_1002E47D0()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[31];

  (*(v7 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

unint64_t sub_1002E4980()
{
  result = qword_10083EF78;
  if (!qword_10083EF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083EF78);
  }

  return result;
}

uint64_t sub_1002E49DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1002E4A5C()
{
  v1 = *(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(v1 + 64) + 7;
  v32 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v32 + 16) & ~v2;
  v33 = (((v4 + v5) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 39) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 15;
  v8 = (((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8;
  v31 = v8 + 17;
  v37 = (v8 + 41) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 32);

  v10 = *(v0 + 48);

  v11 = *(v0 + 64);

  v12 = *(v0 + 88);

  v13 = *(v0 + 104);

  v14 = *(v0 + 120);

  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v0 + v3, 1, v15))
  {
    (*(v16 + 8))(v0 + v3, v15);
  }

  v18 = v7 & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v32 + 8);

  if (!v17(v0 + v5, 1, v15))
  {
    (*(v16 + 8))(v0 + v5, v15);
  }

  v20 = (((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v33 + 8);

  v22 = *(v0 + v34 + 8);

  v23 = *(v0 + v35 + 8);

  v24 = *(v0 + v36);

  v25 = *(v0 + v18 + 8);

  v26 = *(v0 + (v31 & 0xFFFFFFFFFFFFFFF8) + 8);

  v27 = *(v0 + v37 + 8);
  if (v27 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v37), v27);
  }

  v28 = *(v0 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v29 = *(v0 + v20 + 8);
  if (v29 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v20), v29);
  }

  return _swift_deallocObject(v0, v20 + 16, v2 | 7);
}

uint64_t sub_1002E4D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002E4DC4()
{
  v1 = *(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 16) & ~v2;
  v7 = (v4 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v0 + 40);
  v33 = *(v0 + 56);
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v0 + v7);
  v32 = *(v0 + 72);
  v12 = *(v0 + v11);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v0 + v8);
  v16 = (v15 + 19) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 17) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 41) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v22 = v0 + v10;
  v23 = v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v0 + v15;
  v25 = v0 + v16;
  v26 = v0 + v17;
  v27 = v0 + v18;
  v28 = v0 + v19;
  v29 = v0 + v20;
  sub_100580840(*(v0 + 16), *(v0 + 24), *(v0 + 32), v34, *(v0 + 48), v33, *(v0 + 64), v32, *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v0 + v3, *(v0 + v5), *(v0 + v5 + 8), v0 + v6, v31, v30, *(v0 + v8 + 8), *(v0 + v9), *(v0 + v9 + 8), *v21, *(v21 + 8), *v22, *(v22 + 8), v12, *(v0 + v13), *(v0 + v14), *v23, *(v23 + 8), *(v23 + 16), *v24, *(v24 + 8), *(v24 + 9), *(v24 + 10), *(v24 + 11), *v25, *(v25 + 8), *(v25 + 9), *v26, *(v26 + 8), *(v26 + 16), *v27, *(v27 + 8), *v28, *(v28 + 8), *v29, *(v29 + 8));
}

uint64_t sub_1002E5084()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E50F8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1002E5178()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002E5210()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002E52B4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Logger();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1002E5444, 0, 0);
}

uint64_t sub_1002E5444()
{
  v125 = v0;
  v1 = v0[38];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting handleProvisioningCompletion", v4, 2u);
  }

  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[19];
  v8 = v0[20];

  v9 = *(v8 + 8);
  v0[39] = v9;
  v9(v5, v7);
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unarchiving Provisioning Receipt Data", v12, 2u);
  }

  v13 = v0[37];
  v14 = v0[19];
  v15 = v0[20];
  v17 = v0[16];
  v16 = v0[17];

  v9(v13, v14);
  sub_10001F8D4(0, &qword_100833A30, NSKeyedUnarchiver_ptr);
  sub_10001F8D4(0, &qword_1008403D8, PKPendingProvisioningReceipt_ptr);
  v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v0[40] = v18;
  v0[41] = 0;
  v19 = v18;
  if (!v18)
  {
    v50 = v0[22];
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[22];
    v55 = v0[19];
    v56 = v0[20];
    if (v53)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "the unarchived data object is not of type PKPendingProvisioningReceipt", v57, 2u);
    }

    goto LABEL_24;
  }

  v20 = v0[36];
  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Did receive the provisioning receipt. Checking for the receipt type to perform necessary actions", v23, 2u);
  }

  v24 = v0[36];
  v25 = v0[19];
  v26 = v0[20];

  v9(v24, v25);
  v27 = [v19 pendingProvisioning];
  v0[42] = v27;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
    v58 = v0[23];

    defaultLogger()();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    v61 = os_log_type_enabled(v59, v60);
    v54 = v0[23];
    v55 = v0[19];
    v62 = v0[20];
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Receipt's pendingProvisioning is not of type PKPendingIdentityCredential. Cannot perform Post Provisioning Cleanup", v63, 2u);
    }

    else
    {
    }

LABEL_24:
    v73 = v54;
    v74 = v55;
LABEL_36:
    v9(v73, v74);
    v92 = v0[37];
    v91 = v0[38];
    v94 = v0[35];
    v93 = v0[36];
    v96 = v0[33];
    v95 = v0[34];
    v97 = v0[31];
    v98 = v0[32];
    v100 = v0[29];
    v99 = v0[30];
    v111 = v0[28];
    v112 = v0[27];
    v114 = v0[26];
    v116 = v0[25];
    bufa = v0[24];
    v120 = v0[23];
    v121 = v0[22];
    v123 = v0[21];

    v101 = v0[1];

    return v101();
  }

  v29 = [v28 credentialIdentifier];
  if (!v29)
  {
    v64 = v0[24];
    defaultLogger()();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[24];
    v69 = v0[19];
    v70 = v0[20];
    if (v67)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Credential Identifier doesn't exist in the pending provisioning Cannot perform Post Provisioning Cleanup";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v65, v66, v72, v71, 2u);

LABEL_35:
      v73 = v68;
      v74 = v69;
      goto LABEL_36;
    }

LABEL_34:

    goto LABEL_35;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v0[43] = v31;
  v0[44] = v33;
  v34 = [v19 type];
  if (v34 == 2)
  {
LABEL_13:
    v35 = v0[35];
    defaultLogger()();
    v36 = v19;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v119 = v38;
      v122 = v31;
      v39 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v124 = v115;
      buf = v39;
      *v39 = 136315138;
      v40 = [v36 error];
      if (v40)
      {
        v41 = v40;
        swift_getErrorValue();
        v42 = v0[11];
        v43 = v0[12];
        v113 = v0[13];
        v44 = *(v43 - 8);
        v45 = *(v44 + 64) + 15;
        v46 = swift_task_alloc();
        (*(v44 + 16))(v46, v42, v43);

        v47 = Error.localizedDescription.getter();
        v49 = v48;
        (*(v44 + 8))(v46, v43);
      }

      else
      {
        v49 = 0xE500000000000000;
        v47 = 0x3E6C696E3CLL;
      }

      v102 = v0[35];
      v104 = v0[19];
      v103 = v0[20];
      v105 = sub_100141FE4(v47, v49, &v124);

      *(buf + 4) = v105;
      _os_log_impl(&_mh_execute_header, v37, v119, "Provisioning has failed with error: %s", buf, 0xCu);
      sub_10000BB78(v115);

      v9(v102, v104);
      v31 = v122;
    }

    else
    {
      v85 = v0[35];
      v87 = v0[19];
      v86 = v0[20];

      v9(v85, v87);
    }

    v106 = sub_1002E344C(v31, v33);
    v0[45] = v106;
    v0[46] = v107;
    v108 = v106;
    v109 = v107;
    v110 = swift_task_alloc();
    v0[47] = v110;
    *v110 = v0;
    v110[1] = sub_1002E5FDC;

    return sub_1002E43DC(v108, v109);
  }

  if (v34 != 1)
  {
    if (!v34)
    {
      goto LABEL_13;
    }

    v88 = v0[25];

    defaultLogger()();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    v89 = os_log_type_enabled(v65, v66);
    v68 = v0[25];
    v69 = v0[19];
    v90 = v0[20];
    if (v89)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Unhandled type of receipt data";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v75 = v0[28];
  defaultLogger()();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "Provisioning success", v78, 2u);
  }

  v79 = v0[28];
  v81 = v0[19];
  v80 = v0[20];

  v9(v79, v81);
  v82 = swift_task_alloc();
  v0[54] = v82;
  *v82 = v0;
  v82[1] = sub_1002E7478;
  v83 = v0[18];

  return sub_1002E8E30(v31, v33);
}

uint64_t sub_1002E5FDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v7 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = sub_1002E6AD4;
  }

  else
  {
    v5 = sub_1002E60F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002E60F0()
{
  v120 = v0;
  v1 = *(v0 + 392);
  v2 = swift_allocObject();
  *(v2 + 16) = 2;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v1)
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 352);
    v6 = *(v0 + 320);

    v11 = *(v0 + 168);
    defaultLogger()();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 312);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);
    if (v14)
    {
      v117 = *(v0 + 168);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v119 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v115 = v15;
      v22 = *(v0 + 16);
      v21 = *(v0 + 24);
      v23 = *(v0 + 32);
      v24 = Error.localizedDescription.getter();
      v26 = sub_100141FE4(v24, v25, &v119);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to retrieve the receipt data %s", v19, 0xCu);
      sub_10000BB78(v20);

      v115(v117, v18);
    }

    else
    {

      v15(v17, v18);
    }

    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 248);
    v34 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v109 = *(v0 + 224);
    v110 = *(v0 + 216);
    v111 = *(v0 + 208);
    v112 = *(v0 + 200);
    v113 = *(v0 + 192);
    v114 = *(v0 + 184);
    v116 = *(v0 + 176);
    v118 = *(v0 + 168);

    v37 = *(v0 + 8);

    return v37();
  }

  v7 = v3;
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v8;
  v10[5] = v2;

  sub_10057C18C(sub_1002EA378, v10);

  swift_beginAccess();
  v39 = *(v2 + 16);

  if (v39 == 2)
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 240);

    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Not a watch provisioning failure. Phone provisioning has failed. Will update status and show a notification", v44, 2u);
    }

    v46 = *(v0 + 360);
    v45 = *(v0 + 368);
    v47 = *(v0 + 312);
    v49 = *(v0 + 232);
    v48 = *(v0 + 240);
    v50 = *(v0 + 152);
    v51 = *(v0 + 160);

    v47(v48, v50);

    sub_1002E1B4C(v46, v45, 2);

    defaultLogger()();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Updated the proofing status to readyToAddID as provisioning as failed", v54, 2u);
    }

    v55 = *(v0 + 312);
    v56 = *(v0 + 232);
    v57 = *(v0 + 152);
    v58 = *(v0 + 160);

    v55(v56, v57);
    v59 = swift_task_alloc();
    *(v0 + 424) = v59;
    *v59 = v0;
    v60 = sub_1002E7218;
LABEL_16:
    v59[1] = v60;
    v61 = *(v0 + 384);
    v63 = *(v0 + 360);
    v62 = *(v0 + 368);

    return sub_1002E9DDC(v63, v62, v61);
  }

  v64 = *(v0 + 272);
  defaultLogger()();
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "This is a watch provisioning failure scenario. Checking for combo or watch only attempt...", v67, 2u);
  }

  v68 = *(v0 + 312);
  v69 = *(v0 + 272);
  v70 = *(v0 + 152);
  v71 = *(v0 + 160);

  v68(v69, v70);
  if (v39)
  {
    v85 = *(v0 + 352);
    v86 = *(v0 + 256);

    defaultLogger()();
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Watch provisioning has failed in watch only provisioning scenario, setting the proofing status to terminal state", v89, 2u);
    }

    v90 = *(v0 + 384);
    v92 = *(v0 + 360);
    v91 = *(v0 + 368);
    v93 = *(v0 + 312);
    v94 = *(v0 + 256);
    v95 = *(v0 + 152);
    v96 = *(v0 + 160);

    v93(v94, v95);

    sub_1002E1B4C(v92, v91, 7);

    v97 = IdentityDocumentType.rawValue.getter();
    if (v97 != IdentityDocumentType.rawValue.getter())
    {
      v101 = *(v0 + 248);
      defaultLogger()();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Will attempt to show the provisioning failure notification on the watch", v104, 2u);
      }

      v105 = *(v0 + 312);
      v106 = *(v0 + 248);
      v107 = *(v0 + 152);
      v108 = *(v0 + 160);

      v105(v106, v107);
      v59 = swift_task_alloc();
      *(v0 + 416) = v59;
      *v59 = v0;
      v60 = sub_1002E7100;
      goto LABEL_16;
    }

    v98 = *(v0 + 368);

    v99 = swift_task_alloc();
    *(v0 + 408) = v99;
    *v99 = v0;
    v99[1] = sub_1002E6EA4;
    v100 = *(v0 + 360);

    return sub_1002A2920(v100, v91, 2, 128);
  }

  else
  {
    v72 = *(v0 + 368);
    v73 = *(v0 + 264);

    defaultLogger()();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Watch provisioning has failed in combo provisioning scenario, deleting the watch proofing session", v76, 2u);
    }

    v77 = *(v0 + 312);
    v78 = *(v0 + 264);
    v79 = *(v0 + 152);
    v80 = *(v0 + 160);

    v77(v78, v79);
    v81 = swift_task_alloc();
    *(v0 + 400) = v81;
    *v81 = v0;
    v81[1] = sub_1002E6D8C;
    v83 = *(v0 + 344);
    v82 = *(v0 + 352);
    v84 = *(v0 + 144);

    return sub_1002E7E08(v83, v82);
  }
}

uint64_t sub_1002E6AD4()
{
  v46 = v0;
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[40];

  v5 = v0[49];
  v6 = v0[21];
  defaultLogger()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v41 = v0[21];
    v43 = v0[39];
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = Error.localizedDescription.getter();
    v18 = sub_100141FE4(v16, v17, &v45);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to retrieve the receipt data %s", v11, 0xCu);
    sub_10000BB78(v12);

    v43(v41, v10);
  }

  else
  {
    v19 = v0[39];
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[19];

    v19(v20, v22);
  }

  v24 = v0[37];
  v23 = v0[38];
  v26 = v0[35];
  v25 = v0[36];
  v28 = v0[33];
  v27 = v0[34];
  v29 = v0[31];
  v30 = v0[32];
  v32 = v0[29];
  v31 = v0[30];
  v35 = v0[28];
  v36 = v0[27];
  v37 = v0[26];
  v38 = v0[25];
  v39 = v0[24];
  v40 = v0[23];
  v42 = v0[22];
  v44 = v0[21];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1002E6D8C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_1002EA398, 0, 0);
}

uint64_t sub_1002E6EA4()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return _swift_task_switch(sub_1002E6FBC, 0, 0);
}

uint64_t sub_1002E6FBC()
{
  v1 = v0[31];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to show the provisioning failure notification on the watch", v4, 2u);
  }

  v5 = v0[39];
  v6 = v0[31];
  v7 = v0[19];
  v8 = v0[20];

  v5(v6, v7);
  v9 = swift_task_alloc();
  v0[52] = v9;
  *v9 = v0;
  v9[1] = sub_1002E7100;
  v10 = v0[48];
  v12 = v0[45];
  v11 = v0[46];

  return sub_1002E9DDC(v12, v11, v10);
}

uint64_t sub_1002E7100()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return _swift_task_switch(sub_1002EA398, 0, 0);
}

uint64_t sub_1002E7218()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return _swift_task_switch(sub_1002E7330, 0, 0);
}

uint64_t sub_1002E7330()
{
  v1 = *(v0 + 320);

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 216);
  v16 = *(v0 + 208);
  v17 = *(v0 + 200);
  v18 = *(v0 + 192);
  v19 = *(v0 + 184);
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002E7478()
{
  v1 = *(*v0 + 432);
  v3 = *v0;

  return _swift_task_switch(sub_1002E7574, 0, 0);
}

uint64_t sub_1002E7574()
{
  v79 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 216);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v75 = *(v0 + 312);
    v7 = *(v0 + 216);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v78[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v6, v5, v78);
    _os_log_impl(&_mh_execute_header, v3, v4, "Will attempt to delete the proofing session for the credential identifier %s", v10, 0xCu);
    sub_10000BB78(v11);

    v75(v7, v8);
  }

  else
  {
    v12 = *(v0 + 312);
    v13 = *(v0 + 216);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);

    v12(v13, v14);
  }

  v16 = *(v0 + 328);
  v17 = swift_allocObject();
  *(v17 + 16) = 2;
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v19 = *(v0 + 352);
  if (v16)
  {
    v20 = *(v0 + 320);

    v24 = *(v0 + 168);
    defaultLogger()();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 312);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    v31 = *(v0 + 152);
    if (v27)
    {
      v76 = *(v0 + 168);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v78[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v73 = v28;
      v35 = *(v0 + 16);
      v34 = *(v0 + 24);
      v36 = *(v0 + 32);
      v37 = Error.localizedDescription.getter();
      v39 = sub_100141FE4(v37, v38, v78);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to retrieve the receipt data %s", v32, 0xCu);
      sub_10000BB78(v33);

      v73(v76, v31);
    }

    else
    {

      v28(v30, v31);
    }

    v41 = *(v0 + 296);
    v40 = *(v0 + 304);
    v43 = *(v0 + 280);
    v42 = *(v0 + 288);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 248);
    v47 = *(v0 + 256);
    v49 = *(v0 + 232);
    v48 = *(v0 + 240);
    v67 = *(v0 + 224);
    v68 = *(v0 + 216);
    v69 = *(v0 + 208);
    v70 = *(v0 + 200);
    v71 = *(v0 + 192);
    v72 = *(v0 + 184);
    v74 = *(v0 + 176);
    v77 = *(v0 + 168);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v21 = v18;
    v22 = *(v0 + 344);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v19;
    v23[5] = v17;

    sub_10057C18C(sub_1002E9DBC, v23);
    v52 = *(v0 + 208);
    v53 = *(v0 + 144);

    swift_beginAccess();
    v54 = *(v17 + 16);
    *(v0 + 448) = v54;

    v55 = *(v53 + 16);
    defaultLogger()();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Attempting to notify provisioning complete to the server", v58, 2u);
    }

    if (v54 == 2)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    v60 = *(v0 + 312);
    v61 = *(v0 + 208);
    v62 = *(v0 + 152);
    v63 = *(v0 + 160);

    v60(v61, v62);
    v64 = swift_task_alloc();
    *(v0 + 440) = v64;
    *v64 = v0;
    v64[1] = sub_1002E7B94;
    v66 = *(v0 + 344);
    v65 = *(v0 + 352);

    return sub_10029AFAC(v66, v65, 0, v59);
  }
}

uint64_t sub_1002E7B94()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_1002E7C90, 0, 0);
}

uint64_t sub_1002E7C90()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  if (*(v0 + 448) == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  sub_1002A3AF8(*(v0 + 344), *(v0 + 352), 0, 0, v4, 0);

  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 192);
  v22 = *(v0 + 184);
  v23 = *(v0 + 176);
  v24 = *(v0 + 168);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002E7E08(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[34] = v4;
  v5 = *(v4 - 8);
  v3[35] = v5;
  v6 = *(v5 + 64) + 15;
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[37] = v7;
  v8 = *(v7 - 8);
  v3[38] = v8;
  v9 = *(v8 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1002E7F58, 0, 0);
}

uint64_t sub_1002E7F58()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[9];
  v0[44] = v4;

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[45] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  v0[46] = v7;
  *(v7 + 16) = sub_1002E9D0C;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[47] = v9;
  v10 = sub_100007224(&qword_1008403D0, &qword_1006DD0E0);
  *v9 = v0;
  v9[1] = sub_1002E812C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_1002E9D60, v7, v10);
}

uint64_t sub_1002E812C()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_1002E885C;
  }

  else
  {
    v5 = *(v2 + 360);
    v6 = *(v2 + 368);
    v7 = *(v2 + 352);

    *(v2 + 392) = *(v2 + 216);
    *(v2 + 408) = *(v2 + 232);
    *(v2 + 241) = *(v2 + 240);
    v4 = sub_1002E8280;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E8280()
{
  v53 = v0;
  if (!*(v0 + 400))
  {
    v14 = *(v0 + 320);
    v15 = *(v0 + 256);
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 320);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    if (v18)
    {
      v23 = *(v0 + 248);
      v22 = *(v0 + 256);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(v23, v22, v52);
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to delete the proofing data for watch with credential identifier %s", v24, 0xCu);
      sub_10000BB78(v25);
    }

    (*(v21 + 8))(v19, v20);
    (*(*(v0 + 280) + 104))(*(v0 + 288), enum case for DIPError.Code.failedToDeleteProofingDataProofingSessionUnavailable(_:), *(v0 + 272));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_9;
  }

  if (*(v0 + 241))
  {
    v1 = *(v0 + 328);
    v2 = *(v0 + 256);
    v3 = *(v0 + 400);

    defaultLogger()();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 328);
    v8 = *(v0 + 296);
    v9 = *(v0 + 304);
    if (v6)
    {
      v11 = *(v0 + 248);
      v10 = *(v0 + 256);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v52[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100141FE4(v11, v10, v52);
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to retrieve the target from the proofing session for %s", v12, 0xCu);
      sub_10000BB78(v13);
    }

    (*(v9 + 8))(v7, v8);
    (*(*(v0 + 280) + 104))(*(v0 + 288), enum case for DIPError.Code.failedToDeleteProofingDataTargetUnavailable(_:), *(v0 + 272));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_9:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v27 = *(v0 + 304);
    v26 = *(v0 + 312);
    v28 = *(v0 + 296);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v27 + 8))(v26, v28);
LABEL_10:
    v30 = *(v0 + 336);
    v29 = *(v0 + 344);
    v32 = *(v0 + 320);
    v31 = *(v0 + 328);
    v33 = *(v0 + 312);
    v34 = *(v0 + 288);

    v35 = *(v0 + 8);

    return v35();
  }

  v37 = *(v0 + 408);
  v38 = IdentityTarget.rawValue.getter();
  if (v38 != IdentityTarget.rawValue.getter())
  {

    goto LABEL_10;
  }

  v39 = *(v0 + 344);
  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "This is watch provisioning, will attempt to delete the proofing session.", v42, 2u);
  }

  v43 = *(v0 + 344);
  v44 = *(v0 + 296);
  v45 = *(v0 + 304);
  v46 = *(v0 + 264);

  v47 = *(v45 + 8);
  *(v0 + 416) = v47;
  v47(v43, v44);
  v48 = *(v46 + 16);
  v49 = swift_task_alloc();
  *(v0 + 424) = v49;
  *v49 = v0;
  v49[1] = sub_1002E8964;
  v50 = *(v0 + 392);
  v51 = *(v0 + 400);

  return sub_10029E160(0, 0, v50, v51, 2, 0);
}

uint64_t sub_1002E885C()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[44];

  v4 = v0[48];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v6 + 8))(v5, v7);
  v9 = v0[42];
  v8 = v0[43];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[39];
  v13 = v0[36];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002E8964()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 400);
  v4 = *v0;

  return _swift_task_switch(sub_1002E8A7C, 0, 0);
}

uint64_t sub_1002E8A7C()
{
  v1 = v0[42];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[52];
  v6 = v0[42];
  v7 = v0[37];
  v8 = v0[38];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deletion of watch proofing session and the credential successful", v9, 2u);
  }

  v5(v6, v7);
  v11 = v0[42];
  v10 = v0[43];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  v15 = v0[36];

  v16 = v0[1];

  return v16();
}

void sub_1002E8BC4(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100579D9C(a1, a2);
  if (!v3)
  {
    v30[1] = 0;
    if (v12)
    {
      v13 = v12;
      [v12 target];
      v14 = IdentityTarget.init(rawValue:)();
      v16 = v15;
      v17 = v13;
      v18 = [v13 proofingSessionID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {

        v20 = 0;
        v22 = 0;
      }

      *a3 = v20;
      *(a3 + 8) = v22;
      *(a3 + 16) = v14;
      v29 = v16 & 1;
    }

    else
    {
      defaultLogger()();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30[0] = v23;
        v27 = v26;
        v31 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_100141FE4(a1, a2, &v31);
        v28 = v30[0];
        _os_log_impl(&_mh_execute_header, v30[0], v24, "Proofing Session doesn't exist for Credential ID %s", v25, 0xCu);
        sub_10000BB78(v27);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v7);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v29 = 1;
    }

    *(a3 + 24) = v29;
  }
}

uint64_t sub_1002E8E30(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002E8F0C, 0, 0);
}

uint64_t sub_1002E8F0C()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if provisioning on watch is necessary after initial provisioning completion.", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];

  v8 = *(v7 + 8);
  v0[13] = v8;
  v8(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[14] = v9;
  v10 = v9;
  v12 = v0[5];
  v11 = v0[6];
  v13 = swift_allocObject();
  v0[15] = v13;
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v13;

  sub_10057C18C(sub_1002E9CB4, v14);

  swift_beginAccess();
  if (*(v13 + 16) == 1)
  {
    v0[16] = sub_1002F87D0();
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_1002E9254;
    v17 = v0[5];
    v16 = v0[6];

    return sub_1002F5264(v17, v16);
  }

  else
  {

    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1002E9254()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1002E9350, 0, 0);
}

uint64_t sub_1002E9350()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E93E0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1002E94DC, 0, 0);
}

uint64_t sub_1002E94DC()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  v5(v6, v7);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_1002E9628;
  v10 = v0[19];
  v12 = v0[5];
  v11 = v0[6];

  return sub_10029AFAC(v12, v11, 1, 2);
}

uint64_t sub_1002E9628()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_1002E9724, 0, 0);
}

uint64_t sub_1002E9724()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[9] + 8;
  sub_1002A3AF8(v0[5], v0[6], 0, 0, 2, 0);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

void *sub_1002E980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  result = sub_10057C738(a2, a3);
  if (!v4)
  {
    v19 = v12;
    v20 = v45;
    v42 = v8;
    v43 = 0;
    if (result)
    {
      v21 = result;
      [result target];
      IdentityTarget.init(rawValue:)();
      if (v22)
      {
        defaultLogger()();
        v23 = a3;

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = v15;
          v28 = v7;
          v29 = swift_slowAlloc();
          v44[0] = v29;
          *v26 = 136315138;
          *(v26 + 4) = sub_100141FE4(a2, v23, v44);
          _os_log_impl(&_mh_execute_header, v24, v25, "Unable to retrieve the target from the proofing session for %s", v26, 0xCu);
          sub_10000BB78(v29);

          return (*(v42 + 8))(v27, v28);
        }

        else
        {

          return (*(v42 + 8))(v15, v7);
        }
      }

      else
      {
        v37 = IdentityTarget.rawValue.getter();
        if (v37 == IdentityTarget.rawValue.getter())
        {
          defaultLogger()();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v38, v39, "Provisioning on watch is complete, do not attempt to reprovision", v40, 2u);
          }

          return (*(v42 + 8))(v17, v7);
        }

        else
        {

          result = swift_beginAccess();
          *(v20 + 16) = 1;
        }
      }
    }

    else
    {
      v30 = v19;
      defaultLogger()();
      v31 = a3;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      v34 = v7;
      if (os_log_type_enabled(v32, v33))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_100141FE4(a2, v31, v44);
        _os_log_impl(&_mh_execute_header, v32, v33, "Proofing Session doesn't exist for Credential ID %s", v35, 0xCu);
        sub_10000BB78(v36);
      }

      return (*(v42 + 8))(v30, v34);
    }
  }

  return result;
}

uint64_t sub_1002E9C28()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1002E9CD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002E9D28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002E9D60@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(&v10, *a1);
  if (!v3)
  {
    v8 = v11;
    v9 = v12;
    result = *&v10;
    *a2 = v10;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return result;
}

uint64_t sub_1002E9DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentType.Category();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002E9EFC, 0, 0);
}

uint64_t sub_1002E9EFC()
{
  v31 = v0;
  v1 = 0xD00000000000002CLL;
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[4];
  IdentityDocumentType.category.getter();
  v6 = (*(v3 + 88))(v2, v4);
  if (v6 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v7 = "ication.message.expired";
    v8 = "y.notification.title.expired";
    v9 = 0xD00000000000002ELL;
LABEL_5:
    v0[11] = v8;
    v0[12] = v7;
    v0[13] = sub_1002D11F0();
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_1002EA1D0;
    v11 = v0[2];
    v12 = v0[3];

    return sub_1002CD7D4(v1, v7 | 0x8000000000000000, v9, v8 | 0x8000000000000000, v11, v12, 0);
  }

  if (v6 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v9 = 0xD000000000000037;
    v1 = 0xD000000000000035;
    v7 = "ta target unavailable";
    v8 = "ication.title.expired";
    goto LABEL_5;
  }

  v14 = v0[7];
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[6];
  v18 = v0[7];
  v20 = v0[5];
  if (v17)
  {
    v21 = v0[4];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136315138;
    v24 = IdentityDocumentType.description.getter();
    v26 = sub_100141FE4(v24, v25, &v30);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "ProvisioningCompletionManager documentType %s not supported for notifying provisioning failure", v22, 0xCu);
    sub_10000BB78(v23);
  }

  (*(v19 + 8))(v18, v20);
  (*(v0[9] + 8))(v0[10], v0[8]);
  v27 = v0[10];
  v28 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1002EA1D0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_1002EA304, 0, 0);
}

uint64_t sub_1002EA304()
{
  v1 = v0[13];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

void sub_1002EA39C(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1002EE090(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1002EA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = type metadata accessor for Logger();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 56) = 0u;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0u;
  sub_10000BBC4(a1, &v27, &unk_100833B60, &qword_1006BF9E0);
  if (v28)
  {
    sub_10001F358(&v27, &v30);
  }

  else
  {
    v14 = [objc_allocWithZone(PKPaymentService) init];
    v31 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
    v32 = &off_10080C410;
    *&v30 = v14;
    if (v28)
    {
      sub_10000BE18(&v27, &unk_100833B60, &qword_1006BF9E0);
    }
  }

  sub_10001F358(&v30, v5 + 16);
  swift_beginAccess();
  sub_1002F2F08(a2, v5 + 56);
  swift_endAccess();
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  defaultLogger()();
  sub_10000BBC4(a2, &v30, &qword_1008404E8, &qword_1006DD168);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v25 = a1;
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    sub_10000BBC4(&v30, &v27, &qword_1008404E8, &qword_1006DD168);
    v18 = v28;
    if (v28)
    {
      v19 = v29;
      sub_10000BA08(&v27, v28);
      v20 = (*(v19 + 88))(v18, v19);
      v22 = v21;
      sub_10000BB78(&v27);
      if (v22 >> 60 == 15)
      {
        v23 = 0;
      }

      else
      {
        sub_10000BD94(v20, v22);
        v23 = 1;
      }
    }

    else
    {
      sub_10000BE18(&v27, &qword_1008404E8, &qword_1006DD168);
      v23 = 0;
    }

    sub_10000BE18(&v30, &qword_1008404E8, &qword_1006DD168);
    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "supplementalProvisioningData for exists at provisioning manager init ->%{BOOL}d", v17, 8u);

    a1 = v25;
  }

  else
  {
    sub_10000BE18(&v30, &qword_1008404E8, &qword_1006DD168);
  }

  sub_10000BE18(a2, &qword_1008404E8, &qword_1006DD168);
  sub_10000BE18(a1, &unk_100833B60, &qword_1006BF9E0);
  (*(v10 + 8))(v13, v26);
  return v5;
}

uint64_t sub_1002EA818()
{
  v1[33] = v0;
  v2 = type metadata accessor for Logger();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[38] = v5;
  v6 = *(v5 - 8);
  v1[39] = v6;
  v7 = *(v6 + 64) + 15;
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002EA940, 0, 0);
}

uint64_t sub_1002EA940()
{
  v1 = *(v0 + 264);
  swift_beginAccess();
  sub_10000BBC4(v1 + 56, v0 + 56, &qword_1008404E8, &qword_1006DD168);
  if (!*(v0 + 80))
  {
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 304);
    sub_10000BE18(v0 + 56, &qword_1008404E8, &qword_1006DD168);
    (*(v17 + 104))(v16, enum case for DIPError.Code.targetUnavailable(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_10001F358((v0 + 56), v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_10000BA08((v0 + 16), v2);
  (*(v3 + 8))(v2, v3);
  sub_1002EFBE8(v0 + 16);

  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceProvisioningFailure.getter();
  v7 = NSUserDefaults.internalBool(forKey:)(v6);

  if (v7)
  {
LABEL_3:
    v8 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
    (*(*(v0 + 312) + 104))(*(v0 + 320), enum case for DIPError.Code.provisioningIdentityFailed(_:), *(v0 + 304));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);
    v11 = *(v0 + 304);
    _StringGuts.grow(_:)(41);

    swift_getErrorValue();
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 216);
    v15._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v15);

    (*(v9 + 104))(v10, v8, v11);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BB78((v0 + 16));
LABEL_5:
    v19 = *(v0 + 320);
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = [v4 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceWatchProvisioningFailure.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (v26)
  {
    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v27);
    (*(v28 + 64))(v27, v28);
    v29 = IdentityTarget.rawValue.getter();
    if (v29 == IdentityTarget.rawValue.getter())
    {
      goto LABEL_3;
    }

    v30 = *(v0 + 296);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Internal setting for forceWatchProvisioningFailure is enabled but this is phone provisioning. Will continue provisioning", v33, 2u);
    }

    v34 = *(v0 + 296);
    v35 = *(v0 + 272);
    v36 = *(v0 + 280);

    (*(v36 + 8))(v34, v35);
  }

  v37 = swift_task_alloc();
  *(v0 + 328) = v37;
  *v37 = v0;
  v37[1] = sub_1002EAFC8;
  v38 = *(v0 + 264);

  return sub_1002ECC18();
}

uint64_t sub_1002EAFC8()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1002EC3B0;
  }

  else
  {
    v3 = sub_1002EB0DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EB0DC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000BA08(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[5];
  v4 = v0[6];
  sub_10000BA08(v0 + 2, v3);
  (*(v4 + 24))(v3, v4);
  v5 = v0[5];
  v6 = v0[6];
  sub_10000BA08(v0 + 2, v5);
  (*(v6 + 32))(v5, v6);
  v7 = objc_allocWithZone(PKShareablePassMetadata);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v7 initWithProvisioningCredentialIdentifier:v8 cardConfigurationIdentifier:v9 sharingInstanceIdentifier:v10];
  v0[43] = v11;

  if (!v11)
  {
    v27 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
    (*(v0[39] + 104))(v0[40], enum case for DIPError.Code.provisioningIdentityFailed(_:), v0[38]);
    sub_1000402AC(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_8;
  }

  v12 = v0[36];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "PKShareablePassMetadata created, invoking Wallet's provisionIdentityPass", v15, 2u);
  }

  v17 = v0[35];
  v16 = v0[36];
  v18 = v0[34];

  (*(v17 + 8))(v16, v18);
  v19 = v0[5];
  v20 = v0[6];
  sub_10000BA08(v0 + 2, v19);
  (*(v20 + 64))(v19, v20);
  v21 = IdentityTarget.rawValue.getter();
  v22 = IdentityTarget.rawValue.getter();
  v23 = v0[5];
  v24 = v0[6];
  sub_10000BA08(v0 + 2, v23);
  if (v21 != v22)
  {
    (*(v24 + 64))(v23, v24);
    v46 = IdentityTarget.rawValue.getter();
    v47 = IdentityTarget.rawValue.getter();
    v48 = v0[33];
    if (v46 != v47)
    {
      sub_10000BBC4((v48 + 7), (v0 + 12), &qword_1008404E8, &qword_1006DD168);
      if (v0[15])
      {
        v73 = v0[33];
        sub_100020260((v0 + 12), (v0 + 17));
        sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
        v74 = v0[21];
        sub_10000BA08(v0 + 17, v0[20]);
        v75 = v0[5];
        v76 = v0[6];
        sub_10000BA08(v0 + 2, v75);
        v77 = (*(v76 + 8))(v75, v76);
        v78 = *(v73 + 96);
        v79 = *(v73 + 104);
        (*(v74 + 96))(v77);

        sub_10000BB78(v0 + 17);
      }

      else
      {
        sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
      }

      v80 = v0[43];
      v81 = v0[40];
      v82 = v0[36];
      v83 = v0[37];
      _StringGuts.grow(_:)(104);
      v84._countAndFlagsBits = 0xD000000000000066;
      v84._object = 0x800000010070C230;
      String.append(_:)(v84);
      v85 = v0[5];
      v86 = v0[6];
      sub_10000BA08(v0 + 2, v85);
      v87._countAndFlagsBits = (*(v86 + 8))(v85, v86);
      String.append(_:)(v87);

      v88._countAndFlagsBits = 0;
      v89._countAndFlagsBits = 0x3162343038396564;
      v89._object = 0xE800000000000000;
      v88._object = 0xE000000000000000;
      logMilestone(tag:description:)(v89, v88);

      sub_10000BB78(v0 + 2);

      v45 = v0[1];
      goto LABEL_19;
    }

    v49 = v48[6];
    sub_10000BA08(v48 + 2, v48[5]);
    v50 = v0[5];
    v51 = v0[6];
    sub_10000BA08(v0 + 2, v50);
    (*(v51 + 40))(v50, v51);
    v0[50] = v52;
    v53 = v0[5];
    v54 = v0[6];
    sub_10000BA08(v0 + 2, v53);
    (*(v54 + 8))(v53, v54);
    v0[51] = v55;
    v56 = *(v49 + 16);
    v94 = v56 + *v56;
    v57 = v56[1];
    v58 = swift_task_alloc();
    v0[52] = v58;
    *v58 = v0;
    v58[1] = sub_1002EC058;
    v59 = v94;
LABEL_12:

    __asm { BRAA            X8, X16 }
  }

  v25 = (*(v24 + 88))(v23, v24);
  v0[44] = v25;
  v0[45] = v26;
  if (v26 >> 60 != 15)
  {
    v60 = v25;
    v61 = v26;
    v62 = v0[33];
    v63 = v62[6];
    sub_10000BA08(v62 + 2, v62[5]);
    v64 = v0[5];
    v65 = v0[6];
    sub_10000BA08(v0 + 2, v64);
    (*(v65 + 40))(v64, v65);
    v0[46] = v66;
    v68 = v0[5];
    v67 = v0[6];
    sub_10000BA08(v0 + 2, v68);
    (*(v67 + 8))(v68, v67);
    v0[47] = v69;
    v70 = *(v63 + 16);
    sub_10000B8B8(v60, v61);
    v92 = v70 + *v70;
    v71 = v70[1];
    v72 = swift_task_alloc();
    v0[48] = v72;
    *v72 = v0;
    v72[1] = sub_1002EBCE4;
    v59 = v92;
    goto LABEL_12;
  }

  v27 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  (*(v0[39] + 104))(v0[40], enum case for DIPError.Code.provisioningIdentityFailed(_:), v0[38]);
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v29 = v0[39];
  v28 = v0[40];
  v91 = v0[43];
  v93 = v0[38];
  _StringGuts.grow(_:)(66);
  v30._countAndFlagsBits = 0xD000000000000040;
  v30._object = 0x800000010070C2A0;
  String.append(_:)(v30);
  swift_getErrorValue();
  v32 = v0[28];
  v31 = v0[29];
  v33 = v0[30];
  v34._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v34);

  (*(v29 + 104))(v28, v27, v93);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_8:
  v35 = v0[39];
  v36 = v0[40];
  v37 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v39 = v0[25];
  v38 = v0[26];
  v40 = v0[27];
  v41._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v41);

  (*(v35 + 104))(v36, v27, v37);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  v42 = v0[40];
  v44 = v0[36];
  v43 = v0[37];

  v45 = v0[1];
LABEL_19:

  return v45();
}

uint64_t sub_1002EBCE4()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_1002EC598;
  }

  else
  {
    v6 = v2[46];
    v5 = v2[47];
    sub_10000BD94(v2[44], v2[45]);

    v4 = sub_1002EBE1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002EBE1C()
{
  sub_10000BD94(v0[44], v0[45]);
  sub_10000BBC4(v0[33] + 56, (v0 + 12), &qword_1008404E8, &qword_1006DD168);
  if (v0[15])
  {
    v1 = v0[33];
    sub_100020260((v0 + 12), (v0 + 17));
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
    v2 = v0[21];
    sub_10000BA08(v0 + 17, v0[20]);
    v3 = v0[5];
    v4 = v0[6];
    sub_10000BA08(v0 + 2, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = *(v1 + 96);
    v7 = *(v1 + 104);
    (*(v2 + 96))(v5);

    sub_10000BB78(v0 + 17);
  }

  else
  {
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
  }

  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[36];
  v11 = v0[37];
  _StringGuts.grow(_:)(104);
  v12._object = 0x800000010070C230;
  v12._countAndFlagsBits = 0xD000000000000066;
  String.append(_:)(v12);
  v13 = v0[5];
  v14 = v0[6];
  sub_10000BA08(v0 + 2, v13);
  v15._countAndFlagsBits = (*(v14 + 8))(v13, v14);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0;
  v17._countAndFlagsBits = 0x3162343038396564;
  v17._object = 0xE800000000000000;
  v16._object = 0xE000000000000000;
  logMilestone(tag:description:)(v17, v16);

  sub_10000BB78(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002EC058()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v8 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_1002EC8E8;
  }

  else
  {
    v6 = *(v2 + 400);
    v5 = *(v2 + 408);

    v4 = sub_1002EC17C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002EC17C()
{
  sub_10000BBC4(v0[33] + 56, (v0 + 12), &qword_1008404E8, &qword_1006DD168);
  if (v0[15])
  {
    v1 = v0[33];
    sub_100020260((v0 + 12), (v0 + 17));
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
    v2 = v0[21];
    sub_10000BA08(v0 + 17, v0[20]);
    v3 = v0[5];
    v4 = v0[6];
    sub_10000BA08(v0 + 2, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = *(v1 + 96);
    v7 = *(v1 + 104);
    (*(v2 + 96))(v5);

    sub_10000BB78(v0 + 17);
  }

  else
  {
    sub_10000BE18((v0 + 12), &qword_1008404E8, &qword_1006DD168);
  }

  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[36];
  v11 = v0[37];
  _StringGuts.grow(_:)(104);
  v12._object = 0x800000010070C230;
  v12._countAndFlagsBits = 0xD000000000000066;
  String.append(_:)(v12);
  v13 = v0[5];
  v14 = v0[6];
  sub_10000BA08(v0 + 2, v13);
  v15._countAndFlagsBits = (*(v14 + 8))(v13, v14);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0;
  v17._countAndFlagsBits = 0x3162343038396564;
  v17._object = 0xE800000000000000;
  v16._object = 0xE000000000000000;
  logMilestone(tag:description:)(v17, v16);

  sub_10000BB78(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002EC3B0()
{
  v1 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[27];
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  (*(v4 + 104))(v3, v1, v5);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  v10 = v0[40];
  v12 = v0[36];
  v11 = v0[37];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002EC598()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  sub_10000BD94(v4, v3);

  sub_10000BD94(v4, v3);
  v5 = v0[49];
  v27 = v0[43];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  _StringGuts.grow(_:)(66);
  v9._countAndFlagsBits = 0xD000000000000040;
  v9._object = 0x800000010070C2A0;
  String.append(_:)(v9);
  swift_getErrorValue();
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[30];
  v13._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v13);

  v26 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  (*(v7 + 104))(v6);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[27];
  v20._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v20);

  (*(v15 + 104))(v14, v26, v16);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  v21 = v0[40];
  v23 = v0[36];
  v22 = v0[37];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1002EC8E8()
{
  v2 = v0[50];
  v1 = v0[51];

  v3 = v0[53];
  v25 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  _StringGuts.grow(_:)(66);
  v7._countAndFlagsBits = 0xD000000000000040;
  v7._object = 0x800000010070C2A0;
  String.append(_:)(v7);
  swift_getErrorValue();
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[30];
  v11._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v11);

  v24 = enum case for DIPError.Code.provisioningIdentityFailed(_:);
  (*(v5 + 104))(v4);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[38];
  _StringGuts.grow(_:)(41);

  swift_getErrorValue();
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[27];
  v18._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v18);

  (*(v13 + 104))(v12, v24, v14);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  v19 = v0[40];
  v21 = v0[36];
  v20 = v0[37];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002ECC18()
{
  v1[15] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1002ECD4C, 0, 0);
}

uint64_t sub_1002ECD4C()
{
  v1 = *(v0 + 184);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Preparing secure enclave for provisioning", v4, 2u);
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = *(v0 + 120);

  v9 = *(v7 + 8);
  *(v0 + 192) = v9;
  v9(v5, v6);
  swift_beginAccess();
  sub_10000BBC4(v8 + 56, v0 + 56, &qword_1008404E8, &qword_1006DD168);
  if (*(v0 + 80))
  {
    v10 = *(v0 + 120);
    sub_10001F358((v0 + 56), v0 + 16);
    v11 = v10[5];
    v12 = v10[6];
    sub_10000BA08(v10 + 2, v11);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_10000BA08((v0 + 16), v13);
    v15 = (*(v14 + 40))(v13, v14);
    v17 = v16;
    *(v0 + 200) = v16;
    v18 = *(v12 + 24);
    v30 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 208) = v20;
    *v20 = v0;
    v20[1] = sub_1002ED100;

    return v30(v15, v17, v11, v12);
  }

  else
  {
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 128);
    sub_10000BE18(v0 + 56, &qword_1008404E8, &qword_1006DD168);
    (*(v23 + 104))(v22, enum case for DIPError.Code.targetUnavailable(_:), v24);
    sub_1000402AC(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = *(v0 + 144);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1002ED100()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1002ED388;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_1002ED21C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002ED21C()
{
  v1 = v0[22];
  v2._countAndFlagsBits = 0x6136343930366139;
  v3._object = 0x800000010070C140;
  v2._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0xD000000000000060;
  logMilestone(tag:description:)(v2, v3);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "PassKit responded to secure enclave preparation with success", v6, 2u);
  }

  v7 = v0[23];
  v8 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];

  v8(v9, v11);
  sub_10000BB78(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002ED388()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[21];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "PassKit responded to secure enclave preparation with error: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v0[27];
  v11 = v0[24];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[17];

  v11(v12, v15);
  (*(v17 + 104))(v14, enum case for DIPError.Code.failureToPrepareForProvisioning(_:), v16);
  swift_errorRetain();
  sub_1000402AC(&_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(v0 + 2);
  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[21];
  v21 = v0[18];

  v22 = v0[1];

  return v22();
}

void sub_1002ED618(uint64_t a1, void *a2)
{
  v86 = a1;
  v3 = type metadata accessor for Date();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  v5 = __chkstk_darwin(v3);
  v80 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = v67 - v6;
  v7 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v67 - v9;
  v11 = type metadata accessor for Logger();
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  __chkstk_darwin(v11);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPError.Code();
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  __chkstk_darwin(v15);
  v18 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v20 = a2[4];
  sub_10000BA08(a2, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v22 = v85;
  v85 = sub_10057C738(v21, v23);
  if (v22)
  {

    return;
  }

  v76 = v11;
  v77 = v14;
  v78 = v10;
  v72 = v4;

  if (!v85)
  {
    (*(v83 + 104))(v18, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v24 = [v85 proofingSessionID];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    sub_10057CCBC(v26, v28);
    isEscapingClosureAtFileLocation = 0;
    v31 = v83;
    v32 = v29;

    if (v32)
    {
      v34 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v36 = v82;
        v38 = v77;
        v37 = v78;
        v39 = v79;
        if (!i)
        {
          break;
        }

        v40 = 0;
        v79 = v32 & 0xC000000000000001;
        v70 = (v39 + 8);
        v75 = (v81 + 56);
        v67[3] = v81 + 16;
        v67[2] = v81 + 32;
        v67[1] = v88;
        v69 = (v81 + 8);
        *&v33 = 136315138;
        v68 = v33;
        v71 = v32;
        v73 = i;
        v74 = v34;
        while (1)
        {
          if (v79)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v40 >= *(v34 + 16))
            {
              goto LABEL_34;
            }

            v43 = *(v32 + 8 * v40 + 32);
          }

          v44 = v43;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          v83 = v40 + 1;
          v34 = isEscapingClosureAtFileLocation;
          [v43 target];
          IdentityTarget.init(rawValue:)();
          v45 = v36;
          if ((v46 & 1) == 0)
          {
            defaultLogger()();
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              aBlock[0] = v50;
              *v49 = v68;
              v51 = IdentityTarget.debugDescription.getter();
              v53 = sub_100141FE4(v51, v52, aBlock);

              *(v49 + 4) = v53;
              v38 = v77;
              _os_log_impl(&_mh_execute_header, v47, v48, "Setting proofing attempt date for target %s", v49, 0xCu);
              sub_10000BB78(v50);
              v45 = v82;
            }

            (*v70)(v38, v76);
            v37 = v78;
            v32 = v71;
          }

          v41 = [v44 provisioningAttemptDate];
          if (v41)
          {
            v42 = v41;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v36 = v45;
            (*v75)(v37, 0, 1, v45);
            sub_10000BE18(v37, &unk_100849400, &unk_1006BFBB0);
            isEscapingClosureAtFileLocation = v34;
          }

          else
          {
            (*v75)(v37, 1, 1, v45);
            sub_10000BE18(v37, &unk_100849400, &unk_1006BFBB0);
            v54 = v84;
            Date.init()();
            v55 = [v44 managedObjectContext];
            if (v55)
            {
              v56 = v55;
              v58 = v80;
              v57 = v81;
              (*(v81 + 16))(v80, v84, v45);
              v59 = (*(v57 + 80) + 24) & ~*(v57 + 80);
              v60 = swift_allocObject();
              *(v60 + 16) = v44;
              v61 = v58;
              v54 = v84;
              (*(v57 + 32))(v60 + v59, v61, v45);
              v62 = swift_allocObject();
              *(v62 + 16) = sub_1002F31FC;
              *(v62 + 24) = v60;
              v88[2] = sub_10021E8E8;
              v88[3] = v62;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v88[0] = sub_10057E264;
              v88[1] = &unk_10080CF28;
              v63 = _Block_copy(aBlock);
              v64 = v44;

              v38 = v77;

              [v56 performBlockAndWait:v63];

              v65 = v63;
              v45 = v82;
              _Block_release(v65);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
              v32 = v71;

              v37 = v78;

              if (isEscapingClosureAtFileLocation)
              {
                goto LABEL_35;
              }
            }

            v66 = v54;
            v36 = v45;
            (*v69)(v66, v45);
            sub_10057BA64();
            isEscapingClosureAtFileLocation = v34;
            if (v34)
            {

              goto LABEL_31;
            }
          }

          ++v40;
          v34 = v74;
          if (v83 == v73)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:

      goto LABEL_32;
    }

    (*(v31 + 104))(v18, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  else
  {
    (*(v83 + 104))(v18, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v15);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_32:
}

void sub_1002EE090(id *a1, void *a2)
{
  v81 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v82 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [*a1 casdAttestation];
  if (v17)
  {
    v79 = v5;
    v80 = v4;
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v16 keyAuthorization];
    if (v22)
    {
      v77 = v2;
      v23 = v22;
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = objc_allocWithZone(DIIdentityProvisioningTransactionKey);
      sub_10000B8B8(v19, v21);
      sub_10000B8B8(v24, v26);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v29.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v78 = v19;
      v30 = v29.super.isa;
      v74 = [v27 initWithCASDAttestation:isa authorization:v29.super.isa];

      v31 = v78;
      v75 = v26;
      v76 = v24;
      sub_10000B90C(v24, v26);

      sub_10000B90C(v31, v21);
      defaultLogger()();
      v32 = v16;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      v35 = v21;
      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v83 = v37;
        *v36 = 136315138;
        v73 = v32;
        v38 = [v32 casdAttestation];
        if (v38)
        {
          v39 = v38;
          v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v21;
          v41 = v40;
          v43 = v42;

          v44 = Data.base64EncodedString(options:)(0);
          countAndFlagsBits = v44._countAndFlagsBits;
          object = v44._object;
          v47 = v41;
          v35 = v72;
          sub_10000B90C(v47, v43);
        }

        else
        {
          countAndFlagsBits = 0;
          object = 0xE000000000000000;
        }

        v50 = sub_100141FE4(countAndFlagsBits, object, &v83);

        *(v36 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v33, v34, " Transaction Key CASD Attestation ->  %s", v36, 0xCu);
        sub_10000BB78(v37);

        v48 = v80;
        v49 = *(v79 + 8);
        v49(v10, v80);
        v31 = v78;
        v32 = v73;
      }

      else
      {

        v48 = v80;
        v49 = *(v79 + 8);
        v49(v10, v80);
      }

      v51 = v82;
      defaultLogger()();
      v52 = v32;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v73 = v49;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v83 = v56;
        *v55 = 136315138;
        v57 = [v52 keyAuthorization];
        if (v57)
        {
          v58 = v57;
          v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v35;
          v62 = v61;

          v63 = Data.base64EncodedString(options:)(0);
          v64 = v63._countAndFlagsBits;
          v65 = v63._object;
          v66 = v62;
          v35 = v60;
          v51 = v82;
          sub_10000B90C(v59, v66);
        }

        else
        {
          v64 = 0;
          v65 = 0xE000000000000000;
        }

        v67 = sub_100141FE4(v64, v65, &v83);

        *(v55 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v53, v54, " Transaction Key authorization ->  %s", v55, 0xCu);
        sub_10000BB78(v56);

        v73(v51, v80);
        v31 = v78;
      }

      else
      {

        v49(v51, v48);
      }

      v68 = v74;
      v69 = v81;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10000B90C(v76, v75);
      sub_10000B90C(v31, v35);
    }

    else
    {
      (*(v12 + 104))(v15, enum case for DIPError.Code.transactionKeyCASDAuthorizationUnavailable(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000B90C(v19, v21);
    }
  }

  else
  {
    (*(v12 + 104))(v15, enum case for DIPError.Code.transactionKeyCASDAttestationUnavailable(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

void sub_1002EE850(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CE48(a1, a2);
  if (!v3)
  {
    v13 = v12;
    if (v12)
    {
      v14 = [v12 serverAttestedProvisioningData];
      if (v14)
      {
        v15 = v14;
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if ([v13 issuerCurrentCredentialCapacity] <= 0)
        {
          (*(v8 + 104))(v11, enum case for DIPError.Code.issuerCurrentCredentialCapacityUnavailable(_:), v7);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100037214();
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_10000B90C(v16, v18);
        }

        else
        {
          *a3 = v16;
          a3[1] = v18;
          sub_10000B8B8(v16, v18);
          v19 = [v13 issuerCurrentCredentialCapacity];

          sub_10000B90C(v16, v18);
          a3[2] = v19;
        }
      }

      else
      {
        (*(v8 + 104))(v11, enum case for DIPError.Code.serverAttestedProvisioningDataUnavailable(_:), v7);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v20._countAndFlagsBits = 0xD000000000000015;
      v20._object = 0x80000001007088D0;
      String.append(_:)(v20);
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 0xD00000000000001ALL;
      v22._object = 0x800000010070BFE0;
      String.append(_:)(v22);
      v23._countAndFlagsBits = IdentityTarget.debugDescription.getter();
      String.append(_:)(v23);

      (*(v8 + 104))(v11, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1002EECD4()
{
  sub_10000BB78((v0 + 16));
  sub_10000BE18(v0 + 56, &qword_1008404E8, &qword_1006DD168);
  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1002EED50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002EEE14, 0, 0);
}

uint64_t sub_1002EEE14()
{
  v1 = v0[7];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to provision on phone", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  (*(v6 + 8))(v5, v7);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[8] = v8;
  v9 = v8;
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v11;
  v13[5] = v10;

  sub_10057C18C(sub_1002F2FC0, v13);

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1002EF038;
  v15 = v0[4];

  return sub_1002EA818();
}

uint64_t sub_1002EF038()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1002EF1B8;
  }

  else
  {
    v3 = sub_1002EF14C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EF14C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002EF1B8()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

void sub_1002EF224(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v87 = a4;
  v92 = a1;
  v91 = type metadata accessor for Logger();
  v90 = *(v91 - 8);
  v6 = *(v90 + 64);
  v7 = __chkstk_darwin(v91);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v81 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v81 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v81 - v16;
  __chkstk_darwin(v15);
  v19 = &v81 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v89 = *(v20 - 1);
  v21 = *(v89 + 64);
  __chkstk_darwin(v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v111;
  sub_10057BE48(a2, a3);
  if (v24)
  {
    return;
  }

  v92 = v20;
  v111 = v23;
  v86 = v11;
  if (!v25)
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v49._countAndFlagsBits = 0xD000000000000039;
    v49._object = 0x800000010070C080;
    String.append(_:)(v49);
    v50._countAndFlagsBits = a2;
    v50._object = a3;
    String.append(_:)(v50);
    (*(v89 + 104))(v111, enum case for DIPError.Code.internalError(_:), v92);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v111 = 0;
  v26 = v25;
  v27 = [v25 credentialIdentifier];
  if (!v27)
  {
    v17 = v19;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v33 = v91;
    if (!v53)
    {
      goto LABEL_19;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "The phone credentialIdentifier doesn't exist, will not be able to provision on the phone";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v51, v52, v55, v54, 2u);

LABEL_20:
    (*(v90 + 8))(v17, v33);
    return;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [v26 provisioningCredentialID];
  v33 = v91;
  if (!v32)
  {

    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_19;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "The phone provisioningCredentialID doesn't exist, will not be able to provision on the phone";
    goto LABEL_18;
  }

  v34 = v32;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = [v26 partnerSchemeID];
  if (!v38)
  {

    defaultLogger()();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "The phone partnerSchemeID doesn't exist, will not be able to provision on the phone", v58, 2u);
    }

    else
    {
    }

    (*(v90 + 8))(v14, v33);
    return;
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = [v26 provisioningTargetInstanceID];
  if (!v43)
  {

    v17 = v86;
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "The phone provisioningTargetInstanceID doesn't exist, will not be able to provision on the phone";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  v44 = v43;
  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v45;

  v84 = [v26 issuerCurrentCredentialCapacity];
  v46 = [v26 serverAttestedProvisioningData];
  v89 = v40;
  if (v46)
  {
    v47 = v46;
    v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v48;
  }

  else
  {
    v83 = 0;
    v82 = 0xF000000000000000;
  }

  v59 = v35;
  v92 = v26;
  v60 = [v26 supplementalProvisioningData];
  if (v60)
  {
    v61 = v60;
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xF000000000000000;
  }

  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v65 = *(qword_100882228 + 16);
  v109 = sub_10001F8D4(0, &qword_10083E400, DCCredentialStore_ptr);
  v110 = &off_10080D7B0;
  v108 = v65;
  v94 = v29;
  v95 = v31;
  v96 = v59;
  v97 = v37;
  v98 = v89;
  v99 = v42;
  v100 = v86;
  v101 = v85;
  v102 = v84;
  v103 = 0;
  v104 = v83;
  v105 = v82;
  v106 = v62;
  v107 = v64;
  v93[3] = &type metadata for IdentityPhoneProvisioningProvider;
  v93[4] = &off_10080C800;
  v93[0] = swift_allocObject();
  sub_10026C350(&v94, v93[0] + 16);
  v66 = v87;
  swift_beginAccess();
  v67 = v65;
  sub_1002F3068(v93, v66 + 56);
  swift_endAccess();
  v68 = v88;
  defaultLogger()();
  v69 = v92;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v93[0] = v73;
    *v72 = 136446210;
    v74 = [v69 proofingSessionID];
    v75 = v90;
    if (v74)
    {
      v76 = v74;
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v68 = v88;
    }

    else
    {
      v77 = 0;
      v79 = 0xE000000000000000;
    }

    v80 = sub_100141FE4(v77, v79, v93);

    *(v72 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v70, v71, "Trying to provision phone with proofingSessionID: %{public}s", v72, 0xCu);
    sub_10000BB78(v73);

    (*(v75 + 8))(v68, v91);
  }

  else
  {

    (*(v90 + 8))(v68, v91);
  }

  sub_10026C3C8(&v94);
}

uint64_t sub_1002EFBE8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = v16 - v6;
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Will save provisioning attempt locally", v10, 2u);
  }

  (*(v3 + 8))(v7, v2);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v12 = v11;
  sub_100020260(a1, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_10001F358(v16, v13 + 24);

  sub_10057C18C(sub_1002F3118, v13);
}

uint64_t sub_1002EFF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002F0054, 0, 0);
}

uint64_t sub_1002F0054()
{
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[14] = v1;
  v2 = v0[12];
  v18 = v0[13];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v1;
  v8 = swift_allocObject();
  v0[15] = v8;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v9 = *(v7 + 16);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = sub_1002F2E94;
  *(v10 + 24) = v8;
  v11 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v12 = *(v2 + 104);

  v12(v18, v11, v3);
  v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = sub_100007224(&qword_1008404E0, &unk_1006DD158);
  *v14 = v0;
  v14[1] = sub_1002F0278;
  v16 = v0[13];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v16, sub_1002F2EEC, v10, v15);
}

uint64_t sub_1002F0278()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v6 = sub_1002F04A0;
  }

  else
  {
    v7 = v2[15];
    v9 = v2[12];
    v8 = v2[13];
    v10 = v2[11];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1002F0404;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F0404()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];

  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  v7 = v0[1];

  return v7(v4, v5, v6);
}

uint64_t sub_1002F04A0()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002F0610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002F0790, 0, 0);
}

uint64_t sub_1002F0790()
{
  v25 = v0;
  v1 = v0[19];
  v2 = v0[3];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  v7 = v0[9];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v24);
    _os_log_impl(&_mh_execute_header, v3, v4, "Building provisioning attestations starting for credential identifier: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  v13 = *(v8 + 8);
  v13(v6, v7);
  v0[20] = v13;
  v14 = v0[4];
  v15 = v14[3];
  v16 = v14[4];
  sub_10000BA08(v14, v15);
  v17 = *(v16 + 32);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_1002F09D0;
  v21 = v0[2];
  v20 = v0[3];

  return v23(v21, v20, v15, v16);
}

uint64_t sub_1002F09D0(uint64_t a1)
{
  v3 = *(*v2 + 168);
  v4 = *v2;
  v4[22] = a1;

  if (v1)
  {
    v6 = v4[18];
    v5 = v4[19];
    v8 = v4[16];
    v7 = v4[17];
    v10 = v4[14];
    v9 = v4[15];
    v12 = v4[12];
    v11 = v4[13];
    v13 = v4[11];
    v14 = v4[8];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_1002F0BA0, 0, 0);
  }
}

uint64_t sub_1002F0BA0()
{
  v48 = v0;
  v1 = [*(v0 + 176) attestation];
  *(v0 + 184) = v1;
  v2 = *(v0 + 176);
  if (!v1)
  {
    (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for DIPError.Code.deviceEncryptionKeyAttestationUnavailable(_:), *(v0 + 48));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_7:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = v1;
  *(v0 + 192) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = [v2 keyAuthorization];
  if (!v4)
  {
    v2 = *(v0 + 176);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);

    (*(v21 + 104))(v20, enum case for DIPError.Code.deviceEncryptionKeyAuthorizationUnavailable(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_7;
  }

  v5 = *(v0 + 144);
  v6 = v4;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v0 + 200) = v7;
  *(v0 + 208) = v9;
  defaultLogger()();
  sub_10000B8B8(v7, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  sub_10000B90C(v7, v9);
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);
  v15 = *(v0 + 72);
  v45 = v7;
  v46 = *(v0 + 80);
  if (v12)
  {
    v44 = *(v0 + 72);
    v16 = swift_slowAlloc();
    v43 = v13;
    v17 = swift_slowAlloc();
    v47 = v17;
    *v16 = 136315138;
    v18 = Data.base64EncodedString(options:)(0);
    v19 = sub_100141FE4(v18._countAndFlagsBits, v18._object, &v47);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "deviceEncryptionKeyAuthorization: %s", v16, 0xCu);
    sub_10000BB78(v17);

    v43(v14, v44);
  }

  else
  {

    v13(v14, v15);
  }

  v35 = [*(v0 + 176) kskAttestation];
  *(v0 + 216) = v35;
  if (v35)
  {
    *(v0 + 224) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = swift_task_alloc();
    *(v0 + 232) = v36;
    *v36 = v0;
    v36[1] = sub_1002F1184;
    v37 = *(v0 + 40);
    v39 = *(v0 + 16);
    v38 = *(v0 + 24);

    return sub_1002EFF34(v39, v38, v37);
  }

  v2 = *(v0 + 176);
  v41 = *(v0 + 56);
  v40 = *(v0 + 64);
  v42 = *(v0 + 48);

  (*(v41 + 104))(v40, enum case for DIPError.Code.keySigningKeyAttestationUnavailable(_:), v42);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000B90C(v45, v9);
LABEL_8:

  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v28 = *(v0 + 112);
  v27 = *(v0 + 120);
  v30 = *(v0 + 96);
  v29 = *(v0 + 104);
  v31 = *(v0 + 88);
  v32 = *(v0 + 64);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1002F1184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 232);
  v14 = *v4;
  v5[30] = a1;
  v5[31] = a2;
  v5[32] = a3;
  v5[33] = v3;

  if (v3)
  {
    v8 = v5[27];
    v7 = v5[28];
    v11 = v5 + 23;
    v10 = v5[23];
    v9 = v11[1];

    v12 = sub_1002F1558;
  }

  else
  {
    v12 = sub_1002F12C0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1002F12C0()
{
  v32 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[17];
  defaultLogger()();
  sub_10000B8B8(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_10000B90C(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[30];
    v6 = v0[31];
    v29 = v0[20];
    v8 = v0[17];
    v9 = v0[9];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    v13 = Data.base64EncodedString(options:)(0);
    v14 = sub_100141FE4(v13._countAndFlagsBits, v13._object, &v31);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "serverAttestedProvisioningData during provisioning is %s", v11, 0xCu);
    sub_10000BB78(v12);

    v29(v8, v9);
  }

  else
  {
    v15 = v0[20];
    v16 = v0[17];
    v17 = v0[9];
    v18 = v0[10];

    v15(v16, v17);
  }

  v19 = v0[4];
  v20 = v19[3];
  v21 = v19[4];
  sub_10000BA08(v19, v20);
  v22 = *(v21 + 48);
  v30 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[34] = v24;
  *v24 = v0;
  v24[1] = sub_1002F1650;
  v25 = v0[32];
  v27 = v0[2];
  v26 = v0[3];

  return v30(v27, v26, v25, v20, v21);
}

uint64_t sub_1002F1558()
{
  v1 = v0[22];
  sub_10000B90C(v0[25], v0[26]);

  v14 = v0[33];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002F1650(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v12 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v6 = v3[27];
    v5 = v3[28];
    v9 = v3 + 23;
    v8 = v3[23];
    v7 = v9[1];

    v10 = sub_1002F2354;
  }

  else
  {
    v10 = sub_1002F1788;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002F1788()
{
  v155 = v0;
  v1 = v0[35];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_37:
    v104 = v0[35];
    v106 = v0[30];
    v105 = v0[31];
    v107 = v0[28];
    v108 = v152[27];
    v143 = v152[26];
    v109 = v152[25];
    v110 = v152[24];
    v111 = v152[23];
    v147 = v152[22];
    v112 = v152[8];
    v113 = v152[7];
    v114 = v152[6];

    v22 = v152;

    (*(v113 + 104))(v112, enum case for DIPError.Code.progenitorKeyAttestationUnavailable(_:), v114);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v106, v105);
    sub_10000B90C(v109, v143);

    goto LABEL_38;
  }

  if (v1 < 0)
  {
    v103 = v0[35];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v152 = v0;
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v127 = v0[35];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[35] + 32);
  }

  v4 = v3;
  v5 = [v3 progenitorKeyAttestation];

  if (!v5)
  {
    goto LABEL_37;
  }

  v6 = v0[16];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  defaultLogger()();
  sub_10000B8B8(v7, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  sub_10000B90C(v7, v9);
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[20];
  v14 = v0[16];
  v15 = v0[9];
  v16 = v0[10];
  v140 = v7;
  v141 = v9;
  if (v12)
  {
    v17 = v0[20];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v154[0] = v19;
    *v18 = 136315138;
    v20 = Data.base64EncodedString(options:)(0);
    v21 = sub_100141FE4(v20._countAndFlagsBits, v20._object, v154);

    *(v18 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "progenitorKeyAttestation -> %s", v18, 0xCu);
    sub_10000BB78(v19);

    v17(v14, v15);
  }

  else
  {

    v13(v14, v15);
  }

  v22 = v152;
  v23 = v152[35];
  v24 = v152[36];
  v153 = _swiftEmptyArrayStorage;
  sub_1002EA39C(v23, &v153);
  v25 = v152[35];
  if (v24)
  {
    v27 = v152[30];
    v26 = v152[31];
    v28 = v152[27];
    v29 = v152[28];
    v31 = v152[25];
    v30 = v152[26];
    v32 = v152[24];
    v33 = v152[22];

    sub_10000B90C(v31, v30);
    sub_10000B90C(v140, v141);

    sub_10000B90C(v27, v26);

LABEL_38:
    v116 = v22[18];
    v115 = v22[19];
    v118 = v22[16];
    v117 = v22[17];
    v120 = v22[14];
    v119 = v22[15];
    v122 = v22[12];
    v121 = v22[13];
    v123 = v22;
    v124 = v22[11];
    v125 = v123[8];

    v126 = v123[1];

    return v126();
  }

  v34 = v152[15];
  v35 = v152[3];
  v36 = v152[35];

  defaultLogger()();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v152[20];
  v41 = v152[15];
  v42 = v152[9];
  v43 = v152[10];
  if (v39)
  {
    v148 = v152[20];
    v45 = v152[2];
    v44 = v152[3];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v154[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_100141FE4(v45, v44, v154);
    _os_log_impl(&_mh_execute_header, v37, v38, "Building provisioning attestations complete for credential identifier: %s", v46, 0xCu);
    sub_10000BB78(v47);

    v148(v41, v42);
  }

  else
  {

    v40(v41, v42);
  }

  v48 = v152[14];
  defaultLogger()();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "authorizationKeyAttestations: ", v51, 2u);
  }

  v52 = v152[28];
  v53 = v152[20];
  v54 = v152[14];
  v55 = v152[9];
  v56 = v152[10];

  v53(v54, v55);
  v57 = *(v52 + 16);
  if (v57)
  {
    v58 = (v152[28] + 40);
    v144 = v152[10] + 8;
    do
    {
      v59 = v22[13];
      v60 = *(v58 - 1);
      v61 = *v58;

      defaultLogger()();

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      v64 = os_log_type_enabled(v62, v63);
      v149 = v22[20];
      v65 = v22[13];
      v66 = v22[9];
      if (v64)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v154[0] = v68;
        *v67 = 136315138;
        v69 = sub_100141FE4(v60, v61, v154);

        *(v67 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v62, v63, "%s", v67, 0xCu);
        sub_10000BB78(v68);

        v22 = v152;
      }

      else
      {
      }

      v149(v65, v66);
      v58 += 2;
      --v57;
    }

    while (v57);
  }

  v70 = v22[28];
  v71 = v22[12];

  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "deviceEncryptionKeyAttestations:", v74, 2u);
  }

  v75 = v22[24];
  v76 = v22[20];
  v77 = v22[12];
  v78 = v22[9];
  v79 = v22[10];

  v76(v77, v78);
  v80 = *(v75 + 16);
  if (v80)
  {
    v81 = (v22[24] + 40);
    v145 = v22[10] + 8;
    do
    {
      v82 = v22[11];
      v83 = *(v81 - 1);
      v84 = *v81;

      defaultLogger()();

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();

      v87 = os_log_type_enabled(v85, v86);
      v150 = v22[20];
      v88 = v22[11];
      v89 = v22[9];
      if (v87)
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v154[0] = v91;
        *v90 = 136315138;
        v92 = sub_100141FE4(v83, v84, v154);

        *(v90 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s", v90, 0xCu);
        sub_10000BB78(v91);

        v22 = v152;
      }

      else
      {
      }

      v150(v88, v89);
      v81 += 2;
      --v80;
    }

    while (v80);
  }

  v94 = v22[30];
  v93 = v22[31];
  v130 = v22[26];
  v95 = v22[24];
  v128 = v22[27];
  v129 = v22[25];
  v96 = v22[23];
  v132 = v22[22];
  v133 = v22[19];
  v134 = v22[18];
  v135 = v22[17];
  v136 = v22[16];
  v137 = v22[15];
  v138 = v22[14];
  v139 = v22[13];
  v142 = v22[12];
  v146 = v22[11];
  v151 = v22[8];

  v97 = objc_allocWithZone(DIIdentityProvisioningAttestations);
  sub_10000B8B8(v94, v93);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v99 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001F8D4(0, &qword_1008404D8, DIIdentityProvisioningTransactionKey_ptr);
  v100 = Array._bridgeToObjectiveC()().super.isa;
  v101 = Data._bridgeToObjectiveC()().super.isa;
  v131 = [v97 initWithAuthorizationKeyAttestation:v128 deviceEncryptionKeyAttestation:v96 deviceEncryptionKeyAuthorization:isa progenitorKeyCASDAttestation:v99 transactionKeys:v100 serverAttestedProvisioningData:v101];

  sub_10000B90C(v94, v93);
  sub_10000B90C(v140, v141);

  sub_10000B90C(v129, v130);
  sub_10000B90C(v94, v93);

  v102 = v152[1];

  return v102(v131);
}

uint64_t sub_1002F2354()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  sub_10000B90C(v0[30], v0[31]);
  sub_10000B90C(v1, v2);

  v16 = v0[36];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002F245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a2;
  v4[20] = a4;
  v4[18] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002F2588, 0, 0);
}

uint64_t sub_1002F2588()
{
  if (!v0[20])
  {
    v21 = v0[26];
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Building Provisioning attestation for the phone", v24, 2u);
    }

    v26 = v0[25];
    v25 = v0[26];
    v27 = v0[24];

    (*(v26 + 8))(v25, v27);
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v28 = *(qword_100882228 + 16);
    v0[31] = v28;
    v0[5] = sub_10001F8D4(0, &qword_10083E400, DCCredentialStore_ptr);
    v0[6] = &off_10080D7B0;
    v0[2] = v28;
    v29 = v28;
    v30 = swift_task_alloc();
    v0[32] = v30;
    *v30 = v0;
    v30[1] = sub_1002F2C0C;
    v12 = v0[19];
    v13 = v0[18];
    v14 = (v0 + 2);
    v15 = 1;
    goto LABEL_15;
  }

  v1 = v0[27];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Building Provisioning attestation for the watch", v4, 2u);
  }

  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];

  (*(v7 + 8))(v5, v6);
  if (qword_1008824A8)
  {
    v8 = *(qword_1008824A8 + 152);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
      v0[28] = v9;
      v0[10] = type metadata accessor for DIPWatch();
      v0[11] = &off_10080D850;
      v0[7] = v9;
      v10 = v9;
      v11 = swift_task_alloc();
      v0[29] = v11;
      *v11 = v0;
      v11[1] = sub_1002F29C4;
      v12 = v0[19];
      v13 = v0[18];
      v14 = (v0 + 7);
      v15 = 2;
LABEL_15:

      return sub_1002F0610(v13, v12, v14, v15);
    }
  }

  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.watchConnectionFailure(_:), v0[21]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[23];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002F29C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = v1;
  v5 = v3[29];
  v8 = *v2;
  v4[30] = v1;

  if (v1)
  {
    v6 = sub_1002F2B7C;
  }

  else
  {
    sub_10000BB78(v4 + 7);
    v6 = sub_1002F2AE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F2AE8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1002F2B7C()
{
  sub_10000BB78((v0 + 56));
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002F2C0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[15] = v2;
  v4[16] = a1;
  v4[17] = v1;
  v5 = v3[32];
  v8 = *v2;
  v4[33] = v1;

  if (v1)
  {
    v6 = sub_1002F2DC4;
  }

  else
  {
    sub_10000BB78(v4 + 2);
    v6 = sub_1002F2D30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F2D30()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1002F2DC4()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 264);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002F2E54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1002F2E94(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_1002EE850(*(v1 + 24), *(v1 + 32), a1);
}

uint64_t sub_1002F2EB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002F2F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008404E8, &qword_1006DD168);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F2F78()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002F2FE0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[13];
  if (v5 >> 60 != 15)
  {
    sub_10000B90C(v0[12], v5);
  }

  v6 = v0[15];
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(v0[14], v6);
  }

  sub_10000BB78(v0 + 16);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1002F3068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008404E8, &qword_1006DD168);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F30D8()
{
  v1 = *(v0 + 16);

  sub_10000BB78((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002F3138()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002F31FC()
{
  v1 = *(*(type metadata accessor for Date() - 8) + 80);
  v2 = *(v0 + 16);

  sub_100580FC8(v2);
}

uint64_t sub_1002F3270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002F3298(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a1;
  v56 = type metadata accessor for DIPError.Code();
  v55 = *(v56 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v56);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DIPError();
  v11 = *(v65 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v65);
  v62 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v61 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v57 = &v53 - v20;
  v21 = __chkstk_darwin(v19);
  v60 = &v53 - v22;
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  defaultLogger()();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  v27 = os_log_type_enabled(v25, v26);
  v64 = v15;
  v63 = v11;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v53 = v5;
    v29 = v28;
    v30 = swift_slowAlloc();
    v54 = v14;
    *&v66[0] = v30;
    *v29 = 136315394;
    v31 = IdentityTarget.debugDescription.getter();
    v33 = a4;
    v34 = a3;
    v35 = sub_100141FE4(v31, v32, v66);

    *(v29 + 4) = v35;
    a3 = v34;
    a4 = v33;
    *(v29 + 12) = 2080;
    v36 = v59;
    *(v29 + 14) = sub_100141FE4(v59, a2, v66);
    _os_log_impl(&_mh_execute_header, v25, v26, "Provisioning was initiated successfully for target: %s, credentialIdentifier: %s", v29, 0x16u);
    swift_arrayDestroy();
    v14 = v54;
    v37 = v64;

    v5 = v53;

    v38 = *(v37 + 8);
    v38(v24, v14);
  }

  else
  {

    v38 = *(v15 + 8);
    v38(v24, v14);
    v36 = v59;
  }

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v40 = v39;
  sub_10026C350(v5, v66);
  v41 = swift_allocObject();
  v42 = v66[7];
  *(v41 + 136) = v66[6];
  *(v41 + 152) = v42;
  *(v41 + 168) = v66[8];
  v43 = v66[3];
  *(v41 + 72) = v66[2];
  *(v41 + 88) = v43;
  v44 = v66[5];
  *(v41 + 104) = v66[4];
  *(v41 + 120) = v44;
  v45 = v66[1];
  *(v41 + 40) = v66[0];
  *(v41 + 16) = v40;
  *(v41 + 24) = v36;
  *(v41 + 32) = a2;
  v46 = v67;
  *(v41 + 56) = v45;
  *(v41 + 184) = v46;
  *(v41 + 192) = a3;
  *(v41 + 200) = a4;

  sub_10057C18C(sub_1002F5058, v41);

  v47 = IdentityTarget.rawValue.getter();
  if (v47 == IdentityTarget.rawValue.getter())
  {
    defaultLogger()();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Resetting watch prearm attempts", v50, 2u);
    }

    v38(v60, v14);
    v51 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.watchPrearmAttempts.getter();
    v52 = String._bridgeToObjectiveC()();

    [v51 removeObjectForKey:v52];
  }
}

void sub_1002F3C64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v56 = a3;
  v61 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v64 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v63 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v59 = v55 - v21;
  v22 = __chkstk_darwin(v20);
  v62 = v55 - v23;
  __chkstk_darwin(v22);
  v25 = v55 - v24;
  defaultLogger()();
  v66 = v5;
  sub_1002F5080(v5, &v67);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v65 = v15;
  v60 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v55[1] = v10;
    v55[0] = v7;
    v30 = v29;
    v67 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = IdentityTarget.debugDescription.getter();
    v32 = v16;
    v34 = v33;
    sub_1002F50DC(v66);
    v35 = sub_100141FE4(v31, v34, &v67);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = v61;
    *(v30 + 14) = sub_100141FE4(v61, a2, &v67);
    _os_log_impl(&_mh_execute_header, v26, v27, "Provisioning was initiated successfully for target: %s, credentialIdentifier: %s", v30, 0x16u);
    swift_arrayDestroy();

    v37 = *(v32 + 8);
    v37(v25, v65);
  }

  else
  {

    sub_1002F50DC(v66);
    v37 = *(v16 + 8);
    v37(v25, v15);
    v36 = v61;
  }

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v39 = v38;
  v40 = swift_allocObject();
  v41 = v66;
  v42 = *(v66 + 64);
  *(v40 + 120) = *(v66 + 80);
  v43 = *(v41 + 112);
  *(v40 + 136) = *(v41 + 96);
  *(v40 + 152) = v43;
  v44 = *v41;
  *(v40 + 56) = *(v41 + 16);
  v45 = *(v41 + 48);
  *(v40 + 72) = *(v41 + 32);
  *(v40 + 88) = v45;
  *(v40 + 104) = v42;
  *(v40 + 16) = v39;
  *(v40 + 24) = v36;
  *(v40 + 32) = a2;
  v46 = *(v41 + 128);
  *(v40 + 40) = v44;
  v47 = v56;
  *(v40 + 168) = v46;
  *(v40 + 176) = v47;
  *(v40 + 184) = v57;
  sub_1002F5080(v41, &v67);

  sub_10057C18C(sub_1002F51D8, v40);

  v54 = v65;
  v48 = IdentityTarget.rawValue.getter();
  if (v48 == IdentityTarget.rawValue.getter())
  {
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Resetting watch prearm attempts", v51, 2u);
    }

    v37(v62, v54);
    v52 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.watchPrearmAttempts.getter();
    v53 = String._bridgeToObjectiveC()();

    [v52 removeObjectForKey:v53];
  }
}

void sub_1002F4650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CE48(a2, a3);
  if (!v6)
  {
    v45 = a2;
    v46 = a3;
    v47 = v11;
    v48 = v12;
    v49 = a5;
    if (v16)
    {
      v43 = a6;
      v17 = v16;
      v18 = [v16 proofingSessionID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v23, 0);
        sub_10057BA64();
        v44 = v6;
        v24 = v17;
        v25 = v15;
        defaultLogger()();

        v26 = v46;

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v41 = v28;
          v30 = v29;
          v42 = swift_slowAlloc();
          v50 = v42;
          *v30 = 136315650;
          v31 = IdentityTarget.debugDescription.getter();
          v33 = sub_100141FE4(v31, v32, &v50);

          *(v30 + 4) = v33;
          *(v30 + 12) = 2080;
          v34 = sub_100141FE4(v20, v22, &v50);

          *(v30 + 14) = v34;
          *(v30 + 22) = 2080;
          *(v30 + 24) = sub_100141FE4(v45, v26, &v50);
          _os_log_impl(&_mh_execute_header, v27, v41, "Successfully updated the proofing status for target: %s, with proofingSessionID: %s, credentialIdentifier: %s", v30, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v48 + 8))(v25, v47);
        v35 = type metadata accessor for IdentityManagementSessionDelegate();
        v36 = [objc_opt_self() defaultCenter];
        v37 = String._bridgeToObjectiveC()();
        v50 = v35;
        sub_100007224(&qword_10083D698, &unk_1006DB6F0);
        [v36 postNotificationName:v37 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        v38 = [v24 workflowID];
        if (v38)
        {
          v39 = v38;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        type metadata accessor for DaemonAnalytics();

        static DaemonAnalytics.sendIdentityProvisioningAttemptedEvent(workflowID:trigger:target:wasSuccessful:)();
      }

      else
      {
      }
    }
  }
}

void sub_1002F4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54[19] = a6;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CE48(a2, a3);
  if (!v6)
  {
    v18 = v17;
    v53 = a1;
    v48 = a2;
    v49 = v16;
    v50 = v12;
    v51 = v13;
    v52 = a5;
    if (v17)
    {
      v19 = [v17 proofingSessionID];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v24, 0);
        sub_10057BA64();
        v53 = v6;
        v46 = v21;
        v47 = v18;
        v25 = v49;
        defaultLogger()();
        v26 = a4;
        sub_1002F5080(a4, v54);

        v27 = v23;
        v28 = a3;

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();

        v31 = v27;

        if (os_log_type_enabled(v29, v30))
        {
          v32 = swift_slowAlloc();
          HIDWORD(v44) = v30;
          v33 = v32;
          v45 = swift_slowAlloc();
          v54[0] = v45;
          *v33 = 136315650;
          v34 = IdentityTarget.debugDescription.getter();
          v36 = v35;
          sub_1002F50DC(v26);
          v37 = sub_100141FE4(v34, v36, v54);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          v38 = sub_100141FE4(v46, v31, v54);

          *(v33 + 14) = v38;
          *(v33 + 22) = 2080;
          *(v33 + 24) = sub_100141FE4(v48, v28, v54);
          _os_log_impl(&_mh_execute_header, v29, BYTE4(v44), "Successfully updated the proofing status for target: %s, with proofingSessionID: %s, credentialIdentifier: %s", v33, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1002F50DC(v26);
        }

        (*(v51 + 8))(v25, v50);
        v39 = type metadata accessor for IdentityManagementSessionDelegate();
        v40 = [objc_opt_self() defaultCenter];
        v41 = String._bridgeToObjectiveC()();
        v54[0] = v39;
        sub_100007224(&qword_10083D698, &unk_1006DB6F0);
        [v40 postNotificationName:v41 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        v42 = [v47 workflowID];
        if (v42)
        {
          v43 = v42;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        type metadata accessor for DaemonAnalytics();

        static DaemonAnalytics.sendIdentityProvisioningAttemptedEvent(workflowID:trigger:target:wasSuccessful:)();
      }

      else
      {
      }
    }
  }
}

void sub_1002F4F64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = v4[6];
  v12 = v4[7];
  v13 = *(v4 + 16);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v5 = *v4;
  v6 = v4[1];
  sub_1002F3C64(a1, a2, a3, a4);
}

uint64_t sub_1002F4FB8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[16];
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(v0[15], v7);
  }

  v8 = v0[18];
  if (v8 >> 60 != 15)
  {
    sub_10000B90C(v0[17], v8);
  }

  sub_10000BB78(v0 + 19);
  v9 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_1002F5130()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  v8 = *(v0 + 144);
  if (v8 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 136), v8);
  }

  v9 = *(v0 + 160);
  if (v9 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 152), v9);
  }

  v10 = *(v0 + 184);

  return _swift_deallocObject(v0, 192, 7);
}

__n128 sub_1002F51D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 152);
  v11[6] = *(v0 + 136);
  v11[7] = v7;
  v12 = *(v0 + 168);
  v8 = *(v0 + 56);
  v9 = *(v0 + 88);
  v11[2] = *(v0 + 72);
  v11[3] = v9;
  v11[4] = *(v0 + 104);
  v11[5] = v6;
  v11[0] = *(v0 + 40);
  v11[1] = v8;
  sub_1002F4A9C(v1, v2, v3, v11, v4, v5);
  return result;
}

uint64_t sub_1002F5264(uint64_t a1, uint64_t a2)
{
  v3[87] = v2;
  v3[86] = a2;
  v3[85] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[88] = v4;
  v5 = *(v4 - 8);
  v3[89] = v5;
  v6 = *(v5 + 64) + 15;
  v3[90] = swift_task_alloc();
  v7 = type metadata accessor for ProofingSession();
  v3[91] = v7;
  v8 = *(v7 - 8);
  v3[92] = v8;
  v9 = *(v8 + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v10 = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v3[96] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v3[99] = v12;
  v13 = *(v12 - 8);
  v3[100] = v13;
  v14 = *(v13 + 64) + 15;
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();

  return _swift_task_switch(sub_1002F5498, 0, 0);
}

uint64_t sub_1002F5498()
{
  v1 = v0[108];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to provision on watch", v4, 2u);
  }

  v5 = v0[108];
  v6 = v0[100];
  v7 = v0[99];

  v8 = *(v6 + 8);
  v0[109] = v8;
  v8(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_1000318FC(&v9[4], (v0 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[85];
  v13 = v0[9];
  v0[110] = v13;

  sub_100031918((v0 + 2));
  v14 = swift_allocObject();
  v0[111] = v14;
  v14[2] = v12;
  v14[3] = v11;
  v14[4] = v10;
  v15 = *(v13 + 16);
  v16 = swift_allocObject();
  v0[112] = v16;
  *(v16 + 16) = sub_1002F86E8;
  *(v16 + 24) = v14;
  v17 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v18 = swift_task_alloc();
  v0[113] = v18;
  *v18 = v0;
  v18[1] = sub_1002F5718;
  v19 = v0[98];
  v20 = v0[96];

  return AsyncCoreDataContainer.performRead<A>(_:)(v19, sub_10017F710, v16, v20);
}

uint64_t sub_1002F5718()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v9 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = sub_1002F6A7C;
  }

  else
  {
    v5 = v2[112];
    v6 = v2[111];
    v7 = v2[110];

    v4 = sub_1002F584C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002F584C()
{
  v195 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_10000BBC4(*(v0 + 784), v1, &qword_10083DC18, &unk_1006DB720);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 784);
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);
    v7 = *(v0 + 704);
    sub_10000BE18(*(v0 + 776), &qword_10083DC18, &unk_1006DB720);
    (*(v6 + 104))(v5, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_32:
    sub_10000BE18(v4, &qword_10083DC18, &unk_1006DB720);
    *(v0 + 1000) = v8;
    v102 = *(v0 + 872);
    v103 = *(v0 + 840);
    v104 = *(v0 + 832);
    v105 = *(v0 + 800);
    v106 = *(v0 + 792);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    *(v0 + 1008) = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v102(v103, v106);
    defaultLogger()();
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Provisioning on watch has failed, will delete the proofing", v109, 2u);
    }

    v110 = *(v0 + 872);
    v111 = *(v0 + 832);
    v112 = *(v0 + 792);
    v113 = *(v0 + 696);

    v110(v111, v112);
    v114 = *(v113 + 72);
    v115 = *(v113 + 80);
    *(v0 + 1016) = v115;
    if (v115)
    {
      v116 = *(v0 + 824);

      defaultLogger()();
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&_mh_execute_header, v117, v118, "Deleting the watch proofing session using the watch proofing session ID", v119, 2u);
      }

      v120 = *(v0 + 872);
      v121 = *(v0 + 824);
      v122 = *(v0 + 792);
      v123 = *(v0 + 696);

      v120(v121, v122);
      v124 = *(v123 + 16);
      v125 = swift_task_alloc();
      *(v0 + 1024) = v125;
      *v125 = v0;
      v125[1] = sub_1002F7214;

      return sub_10029E160(0, 0, v114, v115, 2, 0);
    }

    else
    {
      v127 = *(v0 + 696);
      v128 = *(v127 + 88);
      *(v0 + 1032) = v128;
      v129 = *(v127 + 96);
      *(v0 + 1040) = v129;
      if (v129)
      {
        v130 = *(v0 + 816);

        defaultLogger()();
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&_mh_execute_header, v131, v132, "Deleting the watch proofing session using watch credential identifier", v133, 2u);
        }

        v134 = *(v0 + 872);
        v135 = *(v0 + 816);
        v136 = *(v0 + 792);
        v137 = *(v0 + 696);

        v134(v135, v136);
        *(v0 + 1048) = *(v137 + 16);
        v138 = swift_task_alloc();
        *(v0 + 1056) = v138;
        *v138 = v0;
        v138[1] = sub_1002F7458;

        return sub_1002A2920(v128, v129, 0, 0);
      }

      else
      {

        v139 = *(v0 + 864);
        v140 = *(v0 + 856);
        v141 = *(v0 + 848);
        v142 = *(v0 + 840);
        v143 = *(v0 + 832);
        v144 = *(v0 + 824);
        v145 = *(v0 + 816);
        v146 = *(v0 + 808);
        v147 = *(v0 + 784);
        v148 = *(v0 + 776);
        v177 = *(v0 + 760);
        v181 = *(v0 + 752);
        v186 = *(v0 + 744);
        v191 = *(v0 + 720);

        v149 = *(v0 + 8);

        return v149();
      }
    }
  }

  v9 = *(v0 + 856);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 736);
  v13 = *(v0 + 728);
  (*(v12 + 32))(v10, *(v0 + 776), v13);
  defaultLogger()();
  v178 = *(v12 + 16);
  v178(v11, v10, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 872);
  v18 = *(v0 + 856);
  v19 = *(v0 + 800);
  v20 = *(v0 + 792);
  v21 = *(v0 + 752);
  v22 = *(v0 + 736);
  v23 = *(v0 + 728);
  if (v16)
  {
    v183 = *(v0 + 856);
    v24 = swift_slowAlloc();
    v175 = v20;
    v25 = swift_slowAlloc();
    v194[0] = v25;
    *v24 = 136315138;
    v26 = ProofingSession.proofingSessionID.getter();
    v173 = v17;
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v169 = v15;
    v30 = *(v22 + 8);
    v30(v21, v23);
    v31 = sub_100141FE4(v28, v29, v194);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v14, v169, "Proofing Session exists for watch with %s. Will attempt provisioning.", v24, 0xCu);
    sub_10000BB78(v25);

    v173(v183, v175);
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v21, v23);
    v17(v18, v20);
  }

  *(v0 + 920) = v30;
  v32 = *(*(v0 + 696) + 24);
  *(v0 + 928) = v32;
  if (!v32)
  {
    v184 = v30;
    v188 = *(v0 + 784);
    v84 = *(v0 + 760);
    v85 = *(v0 + 736);
    v86 = *(v0 + 728);
    (*(*(v0 + 712) + 104))(*(v0 + 720), enum case for DIPError.Code.watchListenerDoesntExist(_:), *(v0 + 704));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v4 = v188;
    v87 = v84;
    v88 = v86;
LABEL_28:
    v184(v87, v88);
    goto LABEL_32;
  }

  v33 = *(v0 + 760);
  v34 = v32;
  v35 = ProofingSession.credentialIdentifier.getter();
  if (!v36)
  {
    v184 = v30;
    v189 = *(v0 + 784);
    v180 = *(v0 + 760);
    v89 = *(v0 + 736);
    v90 = *(v0 + 728);
    (*(*(v0 + 712) + 104))(*(v0 + 720), enum case for DIPError.Code.watchCredentialIdentifierDoesNotExist(_:), *(v0 + 704));
    v91 = v34;
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v189;
    v87 = v180;
    v88 = v90;
    goto LABEL_28;
  }

  v37 = v35;
  v38 = v36;
  v176 = v34;
  v39 = *(v0 + 760);
  v40 = ProofingSession.provisioningCredentialID.getter();
  if (!v41)
  {
    v185 = *(v0 + 760);
    v190 = *(v0 + 784);
    v92 = *(v0 + 736);
    v93 = *(v0 + 728);
    v94 = *(v0 + 720);
    v95 = *(v0 + 712);
    v96 = v30;
    v97 = *(v0 + 704);

    (*(v95 + 104))(v94, enum case for DIPError.Code.watchProvisioningCredentialIDDoesntExist(_:), v97);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
LABEL_31:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v190;
    v96(v185, v93);
    goto LABEL_32;
  }

  v42 = v40;
  v43 = v41;
  v44 = *(v0 + 760);
  v45 = ProofingSession.partnerSchemeID.getter();
  if (!v46)
  {
    v185 = *(v0 + 760);
    v190 = *(v0 + 784);
    v98 = *(v0 + 736);
    v93 = *(v0 + 728);
    v99 = *(v0 + 720);
    v100 = *(v0 + 712);
    v96 = v30;
    v101 = *(v0 + 704);

    (*(v100 + 104))(v99, enum case for DIPError.Code.watchPartnerSchemeIDDoesntExist(_:), v101);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    goto LABEL_31;
  }

  v47 = v45;
  v48 = v46;
  v184 = v30;
  v49 = *(v0 + 760);
  v50 = ProofingSession.provisioningTargetInstanceID.getter();
  if (!v51)
  {
    v150 = *(v0 + 784);
    v192 = *(v0 + 760);
    v151 = *(v0 + 736);
    v152 = *(v0 + 728);
    v153 = *(v0 + 720);
    v154 = *(v0 + 712);
    v155 = *(v0 + 704);

    (*(v154 + 104))(v153, enum case for DIPError.Code.watchProvisioningTargetInstanceIDDoesntExist(_:), v155);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v87 = v192;
    v88 = v152;
    v4 = v150;
    goto LABEL_28;
  }

  v52 = v50;
  v53 = v51;
  v54 = *(v0 + 760);
  v55 = ProofingSession.pairingID.getter();
  if (!v56)
  {
    v156 = *(v0 + 784);
    v193 = *(v0 + 760);
    v157 = *(v0 + 736);
    v182 = *(v0 + 728);
    v158 = *(v0 + 720);
    v159 = *(v0 + 712);
    v160 = *(v0 + 704);

    (*(v159 + 104))(v158, enum case for DIPError.Code.watchPairingIDDoesNotExist(_:), v160);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v156;
    v87 = v193;
    v88 = v182;
    goto LABEL_28;
  }

  v166 = v56;
  v170 = *(v0 + 848);
  v171 = *(v0 + 744);
  v174 = *(v0 + 728);
  v167 = *(v0 + 696);
  v168 = *(v0 + 760);
  v164 = v55;
  v165 = ProofingSession.issuerCurrentCredentialCapacity.getter();
  v57 = ProofingSession.serverAttestedProvisioningData.getter();
  v162 = v58;
  v163 = v57;
  *(v0 + 936) = v57;
  *(v0 + 944) = v58;
  v59 = ProofingSession.supplementalProvisioningData.getter();
  *(v0 + 952) = v59;
  *(v0 + 960) = v60;
  LOBYTE(v194[0]) = 0;
  *(v0 + 216) = v37;
  *(v0 + 224) = v38;
  *(v0 + 232) = v42;
  *(v0 + 240) = v43;
  *(v0 + 248) = v47;
  *(v0 + 256) = v48;
  *(v0 + 264) = v52;
  *(v0 + 272) = v53;
  *(v0 + 280) = v164;
  *(v0 + 288) = v166;
  *(v0 + 296) = v165;
  *(v0 + 304) = 0;
  *(v0 + 312) = v163;
  *(v0 + 320) = v162;
  *(v0 + 328) = v59;
  *(v0 + 336) = v60;
  v61 = v60;
  *(v0 + 344) = v176;
  sub_10000BBC4(v167 + 32, v0 + 600, &unk_100833B60, &qword_1006BF9E0);
  *(v0 + 664) = &type metadata for IdentityWatchProvisioningProvider;
  *(v0 + 672) = &off_10080D0B8;
  v62 = swift_allocObject();
  *(v0 + 640) = v62;
  v63 = *(v0 + 328);
  *(v62 + 112) = *(v0 + 312);
  *(v62 + 128) = v63;
  *(v62 + 144) = *(v0 + 344);
  v64 = *(v0 + 264);
  *(v62 + 48) = *(v0 + 248);
  *(v62 + 64) = v64;
  v65 = *(v0 + 296);
  *(v62 + 80) = *(v0 + 280);
  *(v62 + 96) = v65;
  v66 = *(v0 + 232);
  *(v62 + 16) = *(v0 + 216);
  *(v62 + 32) = v66;
  type metadata accessor for IdentityProvisioningManager();
  *(v0 + 968) = swift_initStackObject();
  v67 = v176;
  sub_1000363B4(v163, v162);
  sub_1000363B4(v59, v61);
  sub_1002F5080(v0 + 216, v0 + 352);
  *(v0 + 976) = sub_1002EA490(v0 + 600, v0 + 640, 0, 0);
  defaultLogger()();
  v178(v171, v168, v174);
  v68 = Logger.logObject.getter();
  v187 = static os_log_type_t.default.getter();
  v69 = os_log_type_enabled(v68, v187);
  v70 = *(v0 + 872);
  v71 = *(v0 + 848);
  v72 = *(v0 + 800);
  v73 = *(v0 + 792);
  v74 = *(v0 + 744);
  v75 = *(v0 + 736);
  v76 = *(v0 + 728);
  if (v69)
  {
    v179 = *(v0 + 792);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v194[0] = v78;
    *v77 = 136446210;
    v79 = ProofingSession.proofingSessionID.getter();
    v172 = v70;
    if (v80)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0;
    }

    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = 0xE000000000000000;
    }

    v184(v74, v76);
    v83 = sub_100141FE4(v81, v82, v194);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v68, v187, "Trying to provision watch with proofingSessionID: %{public}s", v77, 0xCu);
    sub_10000BB78(v78);

    v172(v71, v179);
  }

  else
  {

    v184(v74, v76);
    v70(v71, v73);
  }

  v161 = swift_task_alloc();
  *(v0 + 984) = v161;
  *v161 = v0;
  v161[1] = sub_1002F6F5C;

  return sub_1002EA818();
}

uint64_t sub_1002F6A7C()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];

  v0[125] = v0[114];
  v4 = v0[109];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[100];
  v8 = v0[99];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v0[126] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v5, v8);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Provisioning on watch has failed, will delete the proofing", v11, 2u);
  }

  v12 = v0[109];
  v13 = v0[104];
  v14 = v0[99];
  v15 = v0[87];

  v12(v13, v14);
  v16 = *(v15 + 72);
  v17 = *(v15 + 80);
  v0[127] = v17;
  if (v17)
  {
    v18 = v0[103];

    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Deleting the watch proofing session using the watch proofing session ID", v21, 2u);
    }

    v22 = v0[109];
    v23 = v0[103];
    v24 = v0[99];
    v25 = v0[87];

    v22(v23, v24);
    v26 = *(v25 + 16);
    v27 = swift_task_alloc();
    v0[128] = v27;
    *v27 = v0;
    v27[1] = sub_1002F7214;

    return sub_10029E160(0, 0, v16, v17, 2, 0);
  }

  else
  {
    v29 = v0[87];
    v30 = *(v29 + 88);
    v0[129] = v30;
    v31 = *(v29 + 96);
    v0[130] = v31;
    if (v31)
    {
      v32 = v0[102];

      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Deleting the watch proofing session using watch credential identifier", v35, 2u);
      }

      v36 = v0[109];
      v37 = v0[102];
      v38 = v0[99];
      v39 = v0[87];

      v36(v37, v38);
      v0[131] = *(v39 + 16);
      v40 = swift_task_alloc();
      v0[132] = v40;
      *v40 = v0;
      v40[1] = sub_1002F7458;

      return sub_1002A2920(v30, v31, 0, 0);
    }

    else
    {

      v41 = v0[108];
      v42 = v0[107];
      v43 = v0[106];
      v44 = v0[105];
      v45 = v0[104];
      v46 = v0[103];
      v47 = v0[102];
      v48 = v0[101];
      v49 = v0[98];
      v50 = v0[97];
      v52 = v0[95];
      v53 = v0[94];
      v54 = v0[93];
      v55 = v0[90];

      v51 = v0[1];

      return v51();
    }
  }
}

uint64_t sub_1002F6F5C()
{
  v2 = *(*v1 + 984);
  v5 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = sub_1002F78F4;
  }

  else
  {
    v3 = sub_1002F7070;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002F7070()
{
  v1 = v0[122];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[98];
  v7 = v0[95];
  v8 = v0[92];
  v9 = v0[91];
  sub_10000BD94(v0[117], v0[118]);

  sub_10000BD94(v3, v2);
  sub_1002F50DC((v0 + 27));

  v5(v7, v9);
  sub_10000BE18(v6, &qword_10083DC18, &unk_1006DB720);
  v10 = v0[108];
  v11 = v0[107];
  v12 = v0[106];
  v13 = v0[105];
  v14 = v0[104];
  v15 = v0[103];
  v16 = v0[102];
  v17 = v0[101];
  v18 = v0[98];
  v19 = v0[97];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[90];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002F7214()
{
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 1016);
  v4 = *v0;

  return _swift_task_switch(sub_1002F732C, 0, 0);
}

uint64_t sub_1002F732C()
{
  v1 = v0[125];

  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[98];
  v11 = v0[97];
  v14 = v0[95];
  v15 = v0[94];
  v16 = v0[93];
  v17 = v0[90];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002F7458()
{
  v1 = *(*v0 + 1056);
  v3 = *v0;

  return _swift_task_switch(sub_1002F7554, 0, 0);
}

uint64_t sub_1002F7554()
{
  v1 = v0[101];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = v0[130];
  v6 = v0[126];
  v7 = v0[109];
  v8 = v0[101];
  v9 = v0[99];

  v7(v8, v9);
  v10 = swift_task_alloc();
  v0[133] = v10;
  *v10 = v0;
  v10[1] = sub_1002F76A0;
  v11 = v0[131];
  v12 = v0[129];

  return sub_10029AFAC(v12, v5, 1, 2);
}

uint64_t sub_1002F76A0()
{
  v1 = *(*v0 + 1064);
  v3 = *v0;

  return _swift_task_switch(sub_1002F779C, 0, 0);
}

uint64_t sub_1002F779C()
{
  v1 = v0[125];
  sub_1002A3AF8(v0[129], v0[130], 0, 0, 2, 0);

  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[98];
  v11 = v0[97];
  v14 = v0[95];
  v15 = v0[94];
  v16 = v0[93];
  v17 = v0[90];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002F78F4()
{
  v1 = v0[122];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[116];
  v5 = v0[115];
  v6 = v0[98];
  v7 = v0[95];
  v8 = v0[92];
  v9 = v0[91];
  sub_10000BD94(v0[117], v0[118]);

  sub_10000BD94(v3, v2);
  sub_1002F50DC((v0 + 27));

  v5(v7, v9);
  sub_10000BE18(v6, &qword_10083DC18, &unk_1006DB720);
  v0[125] = v0[124];
  v10 = v0[109];
  v11 = v0[105];
  v12 = v0[104];
  v13 = v0[100];
  v14 = v0[99];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v0[126] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v11, v14);
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Provisioning on watch has failed, will delete the proofing", v17, 2u);
  }

  v18 = v0[109];
  v19 = v0[104];
  v20 = v0[99];
  v21 = v0[87];

  v18(v19, v20);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  v0[127] = v23;
  if (v23)
  {
    v24 = v0[103];

    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Deleting the watch proofing session using the watch proofing session ID", v27, 2u);
    }

    v28 = v0[109];
    v29 = v0[103];
    v30 = v0[99];
    v31 = v0[87];

    v28(v29, v30);
    v32 = *(v31 + 16);
    v33 = swift_task_alloc();
    v0[128] = v33;
    *v33 = v0;
    v33[1] = sub_1002F7214;

    return sub_10029E160(0, 0, v22, v23, 2, 0);
  }

  else
  {
    v35 = v0[87];
    v36 = *(v35 + 88);
    v0[129] = v36;
    v37 = *(v35 + 96);
    v0[130] = v37;
    if (v37)
    {
      v38 = v0[102];

      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Deleting the watch proofing session using watch credential identifier", v41, 2u);
      }

      v42 = v0[109];
      v43 = v0[102];
      v44 = v0[99];
      v45 = v0[87];

      v42(v43, v44);
      v0[131] = *(v45 + 16);
      v46 = swift_task_alloc();
      v0[132] = v46;
      *v46 = v0;
      v46[1] = sub_1002F7458;

      return sub_1002A2920(v36, v37, 0, 0);
    }

    else
    {

      v47 = v0[108];
      v48 = v0[107];
      v49 = v0[106];
      v50 = v0[105];
      v51 = v0[104];
      v52 = v0[103];
      v53 = v0[102];
      v54 = v0[101];
      v55 = v0[98];
      v56 = v0[97];
      v58 = v0[95];
      v59 = v0[94];
      v60 = v0[93];
      v61 = v0[90];

      v57 = v0[1];

      return v57();
    }
  }
}

void sub_1002F7E34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v87 = a5;
  v8 = type metadata accessor for DIPError.Code();
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = *(v84 + 64);
  __chkstk_darwin(v8);
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v78 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v78 - v20;
  __chkstk_darwin(v19);
  v23 = &v78 - v22;
  v24 = v91;
  v25 = sub_100579D9C(a2, a3);
  if (!v24)
  {
    v79 = v23;
    v80 = a1;
    v78 = v18;
    v81 = a2;
    v83 = a3;
    v26 = v88;
    v27 = v89;
    v91 = 0;
    if (!v25)
    {
      v60 = v15;
      defaultLogger()();
      v61 = v83;

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v90[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_100141FE4(v81, v61, v90);
        _os_log_impl(&_mh_execute_header, v62, v63, "Proofing Session doesn't exist for Credential ID %s", v64, 0xCu);
        sub_10000BB78(v65);
      }

      (*(v27 + 8))(v60, v11);
      goto LABEL_16;
    }

    v82 = v25;
    [v25 target];
    IdentityTarget.init(rawValue:)();
    if ((v28 & 1) == 0)
    {
      v29 = IdentityTarget.rawValue.getter();
      if (v29 == IdentityTarget.rawValue.getter())
      {
        v30 = v11;
        v31 = v79;
        defaultLogger()();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v27;
        v36 = v81;
        v37 = v86;
        if (v34)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "The retrieved proofing session is from the Watch. Use the retrieved proofing session.", v38, 2u);
        }

        (*(v35 + 8))(v31, v30);
        v39 = *(v37 + 96);
        v40 = v83;
        *(v37 + 88) = v36;
        *(v37 + 96) = v40;

        v41 = v87;
        ProofingSession.init(_:)();
        v42 = 0;
        goto LABEL_17;
      }
    }

    v43 = v21;
    defaultLogger()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "The retrieved proofing session is from the phone. Will attempt to get the watch proofing session.", v46, 2u);
    }

    v49 = *(v27 + 8);
    v47 = v27 + 8;
    v48 = v49;
    v49(v43, v11);
    v50 = v82;
    v51 = [v82 proofingSessionID];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = v86;
      v57 = *(v86 + 80);
      *(v86 + 72) = v53;
      *(v56 + 80) = v55;

      v58 = v91;
      v59 = sub_1005792EC(v53, v55);
      if (v58)
      {

        return;
      }

      v91 = 0;
      if (v59)
      {

        v41 = v87;
        ProofingSession.init(_:)();

        v42 = 0;
        goto LABEL_17;
      }

      v70 = v78;
      defaultLogger()();

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = v11;
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v89 = v47;
        v90[0] = v75;
        v76 = v75;
        *v74 = 136315138;
        v77 = sub_100141FE4(v53, v55, v90);

        *(v74 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v71, v72, "Proofing Session doesn't exist for proofingSessionID %s", v74, 0xCu);
        sub_10000BB78(v76);

        v48(v70, v73);
      }

      else
      {

        v48(v70, v11);
      }

LABEL_16:
      v42 = 1;
      v41 = v87;
LABEL_17:
      v66 = type metadata accessor for ProofingSession();
      (*(*(v66 - 8) + 56))(v41, v42, 1, v66);
      return;
    }

    v90[0] = 0;
    v90[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v67._countAndFlagsBits = 0xD00000000000002BLL;
    v67._object = 0x800000010070C8D0;
    String.append(_:)(v67);
    v68._countAndFlagsBits = v81;
    v68._object = v83;
    String.append(_:)(v68);
    v69._countAndFlagsBits = 0x74276E73656F6420;
    v69._object = 0xEE00747369786520;
    String.append(_:)(v69);
    (*(v84 + 104))(v26, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v85);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1002F861C()
{
  v1 = *(v0 + 16);

  sub_10000BE18(v0 + 32, &unk_100833B60, &qword_1006BF9E0);
  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F86A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002F8708()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002F8740()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 120);
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 112), v6);
  }

  v7 = *(v0 + 136);
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 128), v7);
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1002F87D0()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10017ABC8();
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v24[3] = v5;
  v24[4] = &off_10080ADD0;
  v24[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v24, v5);
  v10 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v22 = v5;
  v23 = &off_10080ADD0;
  *&v21 = v14;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v15 = *(qword_1008824A8 + 152);
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v21, v8 + 24);
  *(v8 + 64) = v7;
  sub_10000BB78(v24);
  type metadata accessor for IdentityWatchProvisioningManager();
  result = swift_allocObject();
  v17 = 0uLL;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 16) = v8;
  if (qword_1008824A8)
  {
    v18 = *(qword_1008824A8 + 152);
    v19 = result;
    v20 = v18;
    v17 = 0uLL;
    result = v19;
  }

  else
  {
    v18 = 0;
  }

  *(result + 24) = v18;
  *(result + 32) = v17;
  *(result + 48) = v17;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1002F8A78()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1002F8AB0()
{
  v1 = *(v0 + 112);
  sub_1000363B4(v1, *(v0 + 120));
  return v1;
}

void *sub_1002F8AE4()
{
  v0 = sub_1002F8B54();
  type metadata accessor for IdentityProofingDataRetentionHelper();
  v1 = swift_allocObject();
  *(v1 + 16) = 90;
  type metadata accessor for IdentityBiomeBackgroundActivityProvider();
  swift_allocObject();
  result = sub_1002F8D40(v0, v1);
  qword_100882308 = result;
  return result;
}

uint64_t sub_1002F8B54()
{
  v0 = type metadata accessor for IdentityBMUserProofingStreamWrapper();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v3 = [v2 UserProofing];
  swift_unknownObjectRelease();
  v4 = [v3 Result];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = objc_allocWithZone(IdentityProofingBiomeDataDeletionManager);

  v6 = [v5 init];
  v18[3] = v0;
  v18[4] = &off_10080D6B8;
  v18[0] = v1;
  type metadata accessor for IdentityProofingBiomeManager();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v0);
  v9 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v16 = v0;
  v17 = &off_10080D6B8;
  *&v15 = v13;
  *(v7 + 64) = 90;
  sub_10012D290(&v15, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v18);

  return v7;
}

void *sub_1002F8D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0xD000000000000018;
  v3[3] = 0x800000010070C9D0;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "IdentityBiomeBackgroundActivityProvider initialized", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v3[4] = a1;
  v3[5] = a2;
  return v3;
}

uint64_t sub_1002F8EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002F8FEC, 0, 0);
}

uint64_t sub_1002F8FEC()
{
  v0[23] = os_transaction_create();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v1 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  v2 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccount()();
  if (v2)
  {
    v3 = v2;
    sub_10000BB78(v0 + 2);
    static DIPAccountManager.sharedInstance.getter();
    v4 = v0[11];
    sub_10000BA08(v0 + 7, v0[10]);
    v13 = dispatch thunk of DIPAccountManagerProtocol.isHSA2Enabled(account:)();
    sub_10000BB78(v0 + 7);
    if (v13)
    {

      type metadata accessor for IdentityProofingDataContext();
      swift_allocObject();
      sub_10057E28C();
      v0[24] = v14;
      v29 = v0[16];
      v30 = v0[14];
      v42 = v0[15];
      v43 = v0[17];
      v31 = v0[12];
      v32 = v0[13];
      v33 = *(v30 + 32);
      v34 = v14;
      v35 = swift_allocObject();
      v0[25] = v35;
      v35[2] = v34;
      v35[3] = v31;
      v35[4] = v32;
      v35[5] = v30;
      v35[6] = v33;
      v44 = *(v34 + 16);
      v36 = swift_allocObject();
      v0[26] = v36;
      *(v36 + 16) = sub_1002FA0DC;
      *(v36 + 24) = v35;
      v37 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
      v38 = *(v29 + 104);

      v38(v43, v37, v42);
      v39 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

      v40 = swift_task_alloc();
      v0[27] = v40;
      *v40 = v0;
      v40[1] = sub_1002F94D8;
      v41 = v0[17];

      return NSManagedObjectContext.perform<A>(schedule:_:)(v40, v41, sub_1002F2EEC, v36, &type metadata for () + 8);
    }

    v15 = v0[21];
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[21];
    v20 = v0[18];
    v21 = v0[19];
    if (v18)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping biome background activity because account is not HSA2", v22, 2u);
    }

    swift_unknownObjectRelease();
    (*(v21 + 8))(v19, v20);
  }

  else
  {
    v5 = v0[22];
    sub_10000BB78(v0 + 2);
    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[22];
    v10 = v0[18];
    v11 = v0[19];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Skipping biome background activity because user is not logged in", v12, 2u);
    }

    swift_unknownObjectRelease();

    (*(v11 + 8))(v9, v10);
  }

  v24 = v0[21];
  v23 = v0[22];
  v25 = v0[20];
  v26 = v0[17];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1002F94D8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[26];
  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v6 = sub_1002F96FC;
  }

  else
  {
    v7 = v2[25];
    v9 = v2[16];
    v8 = v2[17];
    v10 = v2[15];

    (*(v9 + 8))(v8, v10);
    v6 = sub_1002F9664;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F9664()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_unknownObjectRelease();

  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002F96FC()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = v0[28];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v5, v7);
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v11 = v0[17];

  v12 = v0[1];

  return v12();
}

void sub_1002F97F0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = a5;
  v99 = a4;
  v103 = a3;
  v104 = a2;
  v5 = type metadata accessor for Date();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  __chkstk_darwin(v5);
  v98 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v100 = &v87 - v10;
  v11 = type metadata accessor for DIPBackgroundDeferralStatus();
  v106 = *(v11 - 8);
  v12 = *(v106 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v87 - v16;
  v18 = type metadata accessor for Logger();
  v105 = *(v18 - 8);
  v19 = *(v105 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v87 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v87 - v27;
  __chkstk_darwin(v26);
  v30 = &v87 - v29;
  v31 = v107;
  v32 = sub_10057D18C();
  if (!v31)
  {
    v91 = v22;
    v92 = v28;
    v90 = v25;
    v94 = v11;
    v95 = v15;
    v34 = v105;
    v33 = v106;
    v96 = v18;
    v107 = 0;
    if (v32)
    {
      v93 = v32;
      v104();
      v36 = (v33 + 104);
      v35 = *(v33 + 104);
      v37 = v94;
      v38 = v95;
      v89 = enum case for DIPBackgroundDeferralStatus.shouldDefer(_:);
      v88 = v35;
      v35(v95);
      v39 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
      v42 = *(v33 + 8);
      v40 = v33 + 8;
      v41 = v42;
      v42(v38, v37);
      v42(v17, v37);
      if (v39)
      {

        return;
      }

      v46 = v34;
      v47 = v92;
      defaultLogger()();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Successfully fetched proofing biome data", v50, 2u);
        v47 = v92;
      }

      v92 = v36;

      v51 = v47;
      v52 = v96;
      v105 = *(v46 + 8);
      (v105)(v51, v96);
      v53 = *(v99 + 40);
      v54 = [v93 optInDate];
      v106 = v40;
      if (v54)
      {
        v55 = v98;
        v56 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = v100;
        v57 = v101;
        v59 = v55;
        v60 = v102;
        (*(v101 + 32))(v100, v59, v102);
        v61 = 0;
      }

      else
      {
        v61 = 1;
        v57 = v101;
        v60 = v102;
        v58 = v100;
      }

      (*(v57 + 56))(v58, v61, 1, v60);
      v62 = v107;
      v63 = sub_10017F818(v58);
      v64 = sub_100103444(v58);
      if (v62)
      {
        goto LABEL_16;
      }

      if (v63)
      {
        sub_1002FEF78();
LABEL_16:

        return;
      }

      (v104)(v64);
      v65 = v95;
      v88(v95, v89, v37);
      v66 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
      v41(v65, v37);
      v41(v17, v37);
      if (v66)
      {
        goto LABEL_16;
      }

      if ([v93 isDonated])
      {
        v67 = v91;
        defaultLogger()();
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          v71 = "The biome data has already been donated.";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v68, v69, v71, v70, 2u);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v72 = [v93 proofingSessionID];
      if (!v72)
      {
        v67 = v90;
        defaultLogger()();
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          v71 = "Proofing Session ID doesn't exist in the proofing biome meta data. Exiting...";
          goto LABEL_28;
        }

LABEL_29:

        (v105)(v67, v52);
        return;
      }

      v73 = v72;
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = [v93 proofingDecision];
      if (!v77 || (v78 = v77, v79 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v81 = v80, v78, v108._countAndFlagsBits = v79, v108._object = v81, v82 = sub_100265C7C(v108), v82 == 6))
      {

        goto LABEL_16;
      }

      v83 = v82;
      v107 = v74;
      v104();
      v84 = v94;
      v85 = v95;
      v88(v95, v89, v94);
      v86 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
      v41(v85, v84);
      v41(v17, v84);
      if ((v86 & 1) == 0)
      {
        sub_1002FD90C(v107, v76, v83);
      }
    }

    else
    {
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "No proofing biome data exists. Exiting...", v45, 2u);
      }

      (*(v34 + 8))(v30, v96);
    }
  }
}

uint64_t sub_1002FA020()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1002FA08C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002FA100()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002FA15C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17[-1] - v6;
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Removing scheduled dynamic background activity for identity proofing", v10, 2u);
  }

  v11 = *(v1 + 8);
  v11(v7, v0);
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(v17, v17[3]);
  dispatch thunk of BackgroundActivityManaging.unregisterActivity(identifier:)();
  sub_10000BB78(v17);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "dynamic background activity for identity proofing unregistration complete", v14, 2u);
  }

  return (v11)(v5, v0);
}

uint64_t sub_1002FA39C()
{
  v0 = type metadata accessor for BackgroundActivitySettings();
  v46 = *(v0 - 8);
  v47 = v0;
  v1 = *(v46 + 64);
  __chkstk_darwin(v0);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Date();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v41 = &v40 - v13;
  v14 = __chkstk_darwin(v12);
  v48 = &v40 - v15;
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Creating a dynamic background activity for identity proofing", v20, 2u);
  }

  v21 = *(v8 + 8);
  v21(v17, v7);
  Date.addingTimeInterval(_:)();
  result = Date.timeIntervalSinceNow.getter();
  v24 = v23 + 5.0;
  if (COERCE__INT64(fabs(v23 + 5.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v43 = v6;
  defaultLogger()();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v24 % 3600;
    v28 = (((34953 * v27) >> 16) >> 5) + (((v27 + ((-30583 * v27) >> 16)) & 0x8000) >> 15);
    v29 = (v27 - 60 * v28);
    v30 = v7;
    v31 = v28;
    v32 = swift_slowAlloc();
    *v32 = 134218496;
    *(v32 + 4) = v24 / 3600;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v31;
    v7 = v30;
    *(v32 + 22) = 2048;
    *(v32 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "time left before pending actions can be invoked: %ldhour(s) %ldminute(s) %ldsecond(s)", v32, 0x20u);
  }

  v21(v48, v7);
  v33 = v44;
  BackgroundActivitySettings.init()();
  BackgroundActivitySettings.requiresNetworkConnectivity.setter();
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(v49, v49[3]);
  dispatch thunk of BackgroundActivityManaging.scheduleActivity(identifier:after:gracePeriod:settings:)();
  sub_10000BB78(v49);
  v34 = v41;
  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "dynamic background activity for identity proofing scheduling complete", v37, 2u);
  }

  v21(v34, v7);
  v38._countAndFlagsBits = 0x3833353963323166;
  v39._countAndFlagsBits = 0xD00000000000003CLL;
  v39._object = 0x800000010070CA50;
  v38._object = 0xE800000000000000;
  logMilestone(tag:description:)(v38, v39);
  (*(v46 + 8))(v33, v47);
  return (*(v3 + 8))(v43, v45);
}

void sub_1002FAAE0(uint64_t a1, int a2, uint64_t a3)
{
  v41 = a3;
  v40 = a2;
  v4 = type metadata accessor for Logger();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v34 - v13);
  type metadata accessor for StoredProofingBiomeData();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  Date.init()();
  v16 = [v15 managedObjectContext];
  if (v16)
  {
    v34 = 0x800000010070CA90;
    v35 = v16;
    v17 = v8;
    (*(v9 + 16))(v12, v14, v8);
    v18 = *(v9 + 80);
    v36 = v14;
    v37 = a1;
    v19 = v7;
    v20 = (v18 + 57) & ~v18;
    v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v15;
    *(v22 + 24) = 0xD000000000000015;
    *(v22 + 32) = 0x800000010070CAB0;
    *(v22 + 40) = 0xD000000000000018;
    *(v22 + 48) = v34;
    *(v22 + 56) = v40 & 1;
    v23 = v22 + v20;
    v7 = v19;
    (*(v9 + 32))(v23, v12, v8);
    *(v22 + v21) = v41;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1002FB6A4;
    *(v24 + 24) = v22;
    aBlock[4] = sub_10021E8E8;
    v43 = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_10080D218;
    v25 = _Block_copy(aBlock);
    v8 = v43;
    v14 = v15;
    v26 = v15;

    v15 = v35;
    [v35 performBlockAndWait:v25];

    _Block_release(v25);
    v27 = *(v9 + 8);
    v9 += 8;
    v27(v36, v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v28 = v14;
  v14 = v15;
  (*(v9 + 8))(v28, v8);
LABEL_5:
  v29 = v44;
  sub_1005783D4();
  if (v29)
  {
  }

  else
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "The biome data has been updated successfully", v32, 2u);

      v33 = v14;
    }

    else
    {
      v33 = v30;
      v30 = v14;
    }

    (*(v38 + 8))(v7, v39);
  }
}

uint64_t sub_1002FAF68(char a1, uint64_t a2)
{
  *(v2 + 248) = a2;
  *(v2 + 328) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 256) = v3;
  v4 = *(v3 - 8);
  *(v2 + 264) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002FB038, 0, 0);
}

uint64_t sub_1002FB038()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v2 = *(v0 + 248);
  v3 = *(v0 + 328);
  v4 = *(v0 + 72);
  *(v0 + 288) = v4;

  sub_100031918(v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 296) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  *(v0 + 304) = v7;
  *(v7 + 16) = sub_1002FB56C;
  *(v7 + 24) = v5;
  v8 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  *v9 = v0;
  v9[1] = sub_1002FB1F8;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v9, sub_10017F710, v7, &type metadata for () + 8);
}

uint64_t sub_1002FB1F8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v9 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1002FB328;
  }

  else
  {
    v6 = v2[37];
    v5 = v2[38];
    v7 = v2[36];

    v4 = sub_1002A5920;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002FB328()
{
  v32 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];

  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[40];
    v9 = v0[35];
    v10 = v0[32];
    v11 = v0[33];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[29];
    v17 = Error.localizedDescription.getter();
    v19 = sub_100141FE4(v17, v18, &v31);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received an error during injection of Biome Fed Stats Data %s", v12, 0xCu);
    sub_10000BB78(v13);

    v20 = *(v11 + 8);
    v20(v9, v10);
  }

  else
  {
    v21 = v0[35];
    v22 = v0[32];
    v23 = v0[33];

    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  v24 = v0[40];
  v25 = v0[34];
  v26 = v0[32];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v20(v25, v26);
  v28 = v0[34];
  v27 = v0[35];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1002FB58C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002FB5C4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1002FB6A4()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 57) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100581D30(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1002FB740(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002FB75C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v225 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v161 - v13;
  result = sub_100576B70(a2, a3);
  if (!v4)
  {
    v16 = result;
    v222 = a2;
    v223 = v8;
    v224 = 0;
    if (result)
    {
      defaultLogger()();
      v17 = a3;

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      v20 = os_log_type_enabled(v18, v19);
      v226 = v16;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v228[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100141FE4(v222, v17, v228);
        _os_log_impl(&_mh_execute_header, v18, v19, "Successfully fetched biome metadata for proofingSessionID: %s", v21, 0xCu);
        sub_10000BB78(v22);
        v16 = v226;
      }

      (*(v223 + 8))(v14, v7);
      v23 = [v16 proofingSessionID];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v222 = v26;
        v223 = v25;
      }

      else
      {
        v222 = 0;
        v223 = 0;
      }

      v33 = [v16 dob];
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v220 = v36;
        v221 = v35;
      }

      else
      {
        v220 = 0;
        v221 = 0;
      }

      v37 = [v16 ethnicity];
      if (v37)
      {
        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v40;
        v219 = v39;
      }

      else
      {
        v218 = 0;
        v219 = 0;
      }

      v41 = [v16 gender];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v216 = v44;
        v217 = v43;
      }

      else
      {
        v216 = 0;
        v217 = 0;
      }

      v215 = [v16 skinTone];
      v45 = [v16 deviceLanguage];
      if (v45)
      {
        v46 = v45;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v213 = v48;
        v214 = v47;
      }

      else
      {
        v213 = 0;
        v214 = 0;
      }

      v49 = [v16 issuer];
      if (v49)
      {
        v50 = v49;
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v211 = v52;
        v212 = v51;
      }

      else
      {
        v211 = 0;
        v212 = 0;
      }

      v228[0] = [v16 livenessAssessment];
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v209 = v54;
      v210 = v53;
      v228[0] = [v226 gestureAssessment];
      v55 = v226;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v207 = v57;
      v208 = v56;
      v58 = [v55 axSettings];
      if (v58)
      {
        v228[0] = 0;
        v59 = v58;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();

        v206 = v228[0];
      }

      else
      {
        v206 = 0;
      }

      v60 = [v55 facVersion];
      if (v60)
      {
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v204 = v63;
        v205 = v62;
      }

      else
      {
        v204 = 0;
        v205 = 0;
      }

      v64 = [v55 facePoseVersion];
      if (v64)
      {
        v65 = v64;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v202 = v67;
        v203 = v66;
      }

      else
      {
        v202 = 0;
        v203 = 0;
      }

      v68 = [v55 prdVersion];
      if (v68)
      {
        v69 = v68;
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v200 = v71;
        v201 = v70;
      }

      else
      {
        v200 = 0;
        v201 = 0;
      }

      v72 = [v55 padtoolVersion];
      if (v72)
      {
        v73 = v72;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v198 = v75;
        v199 = v74;
      }

      else
      {
        v198 = 0;
        v199 = 0;
      }

      v230 = [v55 didStepUp];
      v228[0] = [v55 passiveLivenessAssessment];
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v196 = v77;
      v197 = v76;
      v228[0] = [v226 passiveGestureAssessment];
      v78 = v226;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v194 = v80;
      v195 = v79;
      v81 = [v78 passiveLivenessFacVersion];
      if (v81)
      {
        v82 = v81;
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v192 = v84;
        v193 = v83;
      }

      else
      {
        v192 = 0;
        v193 = 0;
      }

      v85 = [v78 passiveLivenessFacePoseVersion];
      if (v85)
      {
        v86 = v85;
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v190 = v88;
        v191 = v87;
      }

      else
      {
        v190 = 0;
        v191 = 0;
      }

      v89 = [v78 passiveLivenessPrdVersion];
      if (v89)
      {
        v90 = v89;
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v188 = v92;
        v189 = v91;
      }

      else
      {
        v188 = 0;
        v189 = 0;
      }

      v93 = [v78 passiveLivenessPadtoolVersion];
      if (v93)
      {
        v94 = v93;
        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v184 = v96;
        v185 = v95;
      }

      else
      {
        v184 = 0;
        v185 = 0;
      }

      v97 = [v78 livenessShadowLabel];
      if (v97)
      {
        v98 = v97;
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v186 = v100;
        v187 = v99;
      }

      else
      {
        v186 = 0;
        v187 = 0;
      }

      v101 = [v78 livenessShadowFacVersion];
      if (v101)
      {
        v102 = v101;
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v182 = v104;
        v183 = v103;
      }

      else
      {
        v182 = 0;
        v183 = 0;
      }

      v105 = [v78 livenessShadowFacePoseVersion];
      if (v105)
      {
        v106 = v105;
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v108;
        v181 = v107;
      }

      else
      {
        v180 = 0;
        v181 = 0;
      }

      v109 = [v78 livenessShadowPrdVersion];
      if (v109)
      {
        v110 = v109;
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v178 = v112;
        v179 = v111;
      }

      else
      {
        v178 = 0;
        v179 = 0;
      }

      v113 = [v78 livenessShadowPadtoolVersion];
      if (v113)
      {
        v114 = v113;
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v116;
        v177 = v115;
      }

      else
      {
        v176 = 0;
        v177 = 0;
      }

      v117 = [v78 livenessShadowLivenessAssessment];
      if (v117)
      {
        v118 = v117;
        v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = v120;
        v175 = v119;
      }

      else
      {
        v174 = 0;
        v175 = 0;
      }

      v121 = [v78 livenessShadowGestureAssessment];
      if (v121)
      {
        v122 = v121;
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = v124;
        v173 = v123;
      }

      else
      {
        v172 = 0;
        v173 = 0;
      }

      v125 = [v78 livenessShadowLivenessType];
      if (v125)
      {
        v126 = v125;
        v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v128;
        v171 = v127;
      }

      else
      {
        v170 = 0;
        v171 = 0;
      }

      v129 = [v78 faceMatchingAssessment];
      if (v129)
      {
        v130 = v129;
        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v132;
        v169 = v131;
      }

      else
      {
        v168 = 0;
        v169 = 0;
      }

      v133 = [v78 faceMatchingModelVersion];
      if (v133)
      {
        v134 = v133;
        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v166 = v136;
        v167 = v135;
      }

      else
      {
        v166 = 0;
        v167 = 0;
      }

      v137 = [v78 faceMatchingDetectorModelVersion];
      if (v137)
      {
        v138 = v137;
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v164 = v140;
        v165 = v139;
      }

      else
      {
        v164 = 0;
        v165 = 0;
      }

      v141 = [v78 faceMatchingShadowAssessment];
      if (v141)
      {
        v142 = v141;
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v162 = v144;
        v163 = v143;
      }

      else
      {
        v162 = 0;
        v163 = 0;
      }

      v145 = [v78 faceMatchingShadowModelVersion];
      if (v145)
      {
        v146 = v145;
        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;
      }

      else
      {
        v147 = 0;
        v149 = 0;
      }

      v150 = [v78 faceMatchingShadowDetectorModelVersion];
      if (v150)
      {
        v151 = v150;
        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v153;
      }

      else
      {
        v152 = 0;
        v154 = 0;
      }

      v155 = [v78 identityType];
      if (v155)
      {
        v156 = v155;
        v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v159 = v158;
      }

      else
      {

        v157 = 0;
        v159 = 0;
      }

      v227[0] = v223;
      v227[1] = v222;
      v227[2] = v221;
      v227[3] = v220;
      v227[4] = v219;
      v227[5] = v218;
      v227[6] = v217;
      v227[7] = v216;
      v227[8] = v215;
      v227[10] = v214;
      v227[11] = v213;
      v227[12] = v212;
      v227[13] = v211;
      v227[14] = v210;
      v227[15] = v209;
      v227[16] = v208;
      v227[17] = v207;
      v227[18] = v206;
      v227[19] = v205;
      v227[20] = v204;
      v227[21] = v203;
      v227[22] = v202;
      v227[23] = v201;
      v227[24] = v200;
      v227[25] = v199;
      v227[26] = v198;
      LOBYTE(v227[27]) = v230;
      v227[28] = v197;
      v227[29] = v196;
      v227[30] = v195;
      v227[31] = v194;
      v227[32] = v193;
      v227[33] = v192;
      v227[34] = v191;
      v227[35] = v190;
      v227[36] = v189;
      v227[37] = v188;
      v227[38] = v185;
      v227[39] = v184;
      v229 = 0;
      LOBYTE(v227[9]) = 0;
      v227[40] = v187;
      v227[41] = v186;
      v227[42] = v183;
      v227[43] = v182;
      v227[44] = v181;
      v227[45] = v180;
      v227[46] = v179;
      v227[47] = v178;
      v227[48] = v177;
      v227[49] = v176;
      v227[50] = v175;
      v227[51] = v174;
      v227[52] = v173;
      v227[53] = v172;
      v227[54] = v171;
      v227[55] = v170;
      v227[56] = v169;
      v227[57] = v168;
      v227[58] = v167;
      v227[59] = v166;
      v227[60] = v165;
      v227[61] = v164;
      v227[62] = v163;
      v227[63] = v162;
      v227[64] = v147;
      v227[65] = v149;
      v227[66] = v152;
      v227[67] = v154;
      v227[68] = v157;
      v227[69] = v159;
      nullsub_7(v227);
      v160 = v225;
      swift_beginAccess();
      memcpy(v228, (v160 + 16), 0x230uLL);
      memcpy((v160 + 16), v227, 0x230uLL);
      return sub_10000BE18(v228, &unk_100840940, &unk_1006DD4C0);
    }

    else
    {
      defaultLogger()();
      v27 = a3;
      v28 = v12;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v228[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100141FE4(v222, v27, v228);
        _os_log_impl(&_mh_execute_header, v29, v30, "Stored biome metadata doesnt exist for proofingSessionID: %s", v31, 0xCu);
        sub_10000BB78(v32);
      }

      return (*(v223 + 8))(v28, v7);
    }
  }

  return result;
}