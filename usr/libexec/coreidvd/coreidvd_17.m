uint64_t sub_1001976BC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v8 = *v2;
  *(v3 + 348) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_100197F38;
  }

  else
  {
    v6 = *(v3 + 304);

    v5 = sub_1001977DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001977DC()
{
  if (*(v0 + 344) == 1)
  {
    if ((*(v0 + 348) & 1) == 0)
    {
      v51 = *(v0 + 345);
      v14 = *(v0 + 208);
      v13 = *(v0 + 216);
      v47 = *(v0 + 200);
      v49 = *(v0 + 248);
      v16 = *(v0 + 160);
      v15 = *(v0 + 168);
      v17 = *(v0 + 152);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.failedToStartWatchProofingMissingPIIToken(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      v18 = *(v16 + 16);
      v18(v19, v15, v17);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v14 + 8))(v13, v47);

      swift_allocError();
      v18(v20, v15, v17);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v16 + 8))(v15, v17);
      goto LABEL_17;
    }

    v1 = 1;
  }

  else if (*(v0 + 347) & *(v0 + 348))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 136);
  IdentityProofingConfiguration.country.getter();
  if (!v3)
  {
    v10 = *(v0 + 345);
    v11 = *(v0 + 248);
    v12 = *(v0 + 152);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.idCountryUnavailable(_:), *(v0 + 176));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    if (v10 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v4 = *(v0 + 320);
  v5 = *(v0 + 136);
  v6 = String.lowercased()();

  v7 = IdentityProofingConfiguration.documentType.getter();
  v8 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  swift_allocObject();
  sub_10057E28C();
  if (v4)
  {

    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = *(v0 + 200);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v24 + 8))(v23, v25);
  }

  else
  {
    v21 = v9;
    v22 = swift_allocObject();
    v22[1]._countAndFlagsBits = v21;
    v22[1]._object = v7;
    v22[2] = v6;
    v22[3]._countAndFlagsBits = v8;

    sub_10057C18C(sub_1001A2918, v22);
  }

  swift_beginAccess();
  v27 = *(v8 + 16);
  v26 = *(v8 + 24);
  v29 = *(v8 + 32);
  v28 = *(v8 + 40);
  sub_1000AB7D8(v27, v26);

  if (v26)
  {
    v51 = *(v0 + 345);
    v30 = *(v0 + 184);
    v31 = *(v0 + 192);
    v32 = *(v0 + 176);
    v48 = *(v0 + 152);
    v50 = *(v0 + 248);
    _StringGuts.grow(_:)(104);
    v33._countAndFlagsBits = 0xD00000000000004FLL;
    v33._object = 0x80000001007040F0;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v29;
    v34._object = v28;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0xD000000000000015;
    v35._object = 0x8000000100704140;
    String.append(_:)(v35);
    v36._countAndFlagsBits = v27;
    v36._object = v26;
    String.append(_:)(v36);

    (*(v30 + 104))(v31, enum case for DIPError.Code.proofingInProgressError(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_17:
    if ((v51 & 1) == 0)
    {
LABEL_19:
      v38 = *(v0 + 240);
      v39 = *(v0 + 216);
      v40 = *(v0 + 192);
      v41 = *(v0 + 168);

      v42 = *(v0 + 8);

      return v42();
    }

LABEL_18:
    v37 = *(*(v0 + 144) + 152);

    sub_1001AC570();

    goto LABEL_19;
  }

  v44 = swift_task_alloc();
  *(v0 + 328) = v44;
  *v44 = v0;
  v44[1] = sub_100198004;
  v45 = *(v0 + 136);
  v46 = *(v0 + 144);

  return sub_1001A2C54(v45, v1);
}

uint64_t sub_100197F38()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 345);
  v3 = *(v0 + 248);
  swift_unknownObjectRelease();

  if (v2 == 1)
  {
    v4 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v5 = *(v0 + 320);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100198004(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[41];
  v8 = *v2;
  v4[42] = v1;

  if (v1)
  {
    v6 = sub_10019842C;
  }

  else
  {
    v6 = sub_100198120;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100198120()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 120);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_1001981E8()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease_n();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001982AC()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10019836C()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10019842C()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001984EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100198634, 0, 0);
}

uint64_t sub_100198634()
{
  v1 = v0[17];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "check if there are assets left to be uploaded and if the device is on an expensive network and if the shouldScheduleUploads have been set to true", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[12];
  v7 = v0[13];

  v8 = *(v7 + 8);
  v0[18] = v8;
  v8(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[19] = v9;
  v10 = v0[10];
  v26 = v0[11];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  v15 = v9;
  v16 = swift_allocObject();
  v0[20] = v16;
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v13;
  v16[5] = v12;
  v17 = *(v15 + 16);
  v18 = swift_allocObject();
  v0[21] = v18;
  *(v18 + 16) = sub_1001A2488;
  *(v18 + 24) = v16;
  v19 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v20 = *(v10 + 104);

  v20(v26, v19, v11);
  v21 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v22 = swift_task_alloc();
  v0[22] = v22;
  v23 = sub_100007224(&qword_10083D098, &unk_1006DAF98);
  *v22 = v0;
  v22[1] = sub_1001989FC;
  v24 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v24, sub_1001A24E0, v18, v23);
}

uint64_t sub_1001989FC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v12 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    v5 = sub_1001990E0;
  }

  else
  {
    v7 = *(v2 + 160);
    v6 = *(v2 + 168);
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = *(v2 + 72);

    (*(v9 + 8))(v8, v10);
    *(v2 + 192) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v5 = sub_100198B84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100198B84()
{
  v1 = *(v0 + 25);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);

    v3 = *(v0 + 120);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      _os_log_impl(&_mh_execute_header, v4, v5, "Should change the proofing status to isWaitingForWifi: -> %{BOOL}d", v6, 8u);
    }

    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v12 = *(v0 + 104);
    v11 = *(v0 + 112);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);

    v8(v10, v13);

    v15 = *(v0 + 8);

    return v15(0);
  }

  else
  {
    *(v0 + 200) = *(*(v0 + 64) + 80);

    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    v17[1] = sub_100198D84;
    v18 = *(v0 + 192);
    v19 = *(v0 + 32);

    return sub_1002C7430(v19, v18, v1 & 1);
  }
}

uint64_t sub_100198D84(char a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 26) = a1;

  return _swift_task_switch(sub_100198EA4, 0, 0);
}

uint64_t sub_100198EA4()
{
  v29 = *(v0 + 26);
  if (v29 == 1)
  {
    v1 = *(v0 + 128);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "The device is on an expensive network AND the data size is greater than the threshold AND the user has not given consent to upload on cellular network. Update the proofing status to wait for wifi", v4, 2u);
    }

    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 64);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    v6(v7, v8);
    v13 = *(v10 + 56);

    sub_1002E1B4C(v12, v11, 9);
  }

  else
  {
    v14 = *(v0 + 152);
  }

  v15 = *(v0 + 120);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "Should change the proofing status to isWaitingForWifi: -> %{BOOL}d", v18, 8u);
  }

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);
  v26 = *(v0 + 88);
  v25 = *(v0 + 96);

  v19(v22, v25);

  v27 = *(v0 + 8);

  return v27(v29);
}

uint64_t sub_1001990E0()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[23];
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v4(v5, v7);
  v8 = v0[15];
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    _os_log_impl(&_mh_execute_header, v9, v10, "Should change the proofing status to isWaitingForWifi: -> %{BOOL}d", v11, 8u);
  }

  v12 = v0[17];
  v13 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];

  v13(v15, v18);

  v20 = v0[1];

  return v20(0);
}

void sub_10019928C(unint64_t a1@<X0>, void (**a2)(char *, char *)@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a1;
  v73 = a5;
  v8 = type metadata accessor for Logger();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  v10 = __chkstk_darwin(v8);
  v75 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v74 = (&v65 - v13);
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  v16 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v65 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v78;
  sub_10057BE48(a2, a3);
  if (v25)
  {
    return;
  }

  v77 = v21;
  v78 = a4;
  v68 = a2;
  v69 = 0;
  v76 = v20;
  v28 = v74;
  v27 = v75;
  v70 = v24;
  v66 = v15;
  if (v26)
  {
    v67 = v26;
    v29 = [v26 uploadAssets];
    if (v29)
    {
      v30 = v29;
      v31 = sub_10031F088(v30);

      v32 = sub_10057A09C(v31);

      if (v32)
      {
        v33 = v32 & 0xFFFFFFFFFFFFFF8;
        if (v32 >> 62)
        {
          goto LABEL_39;
        }

        v78 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v34 = v19;
        v19 = v77;
        if (v78)
        {
          v65 = v30;
          v79 = _swiftEmptyArrayStorage;
          while (1)
          {
            v35 = 0;
            v77 = v32 & 0xC000000000000001;
            v74 = (v19 + 32);
            v75 = (v19 + 48);
            v68 = (v19 + 8);
            while (1)
            {
              if (v77)
              {
                v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v35 >= *(v33 + 16))
                {
                  goto LABEL_38;
                }

                v36 = *(v32 + 8 * v35 + 32);
              }

              v19 = v36;
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              v38 = [v36 assetFileURL];
              if (v38)
              {
                v39 = v32;
                v30 = v38;
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                URL.init(string:)();
                v28 = v76;

                if ((*v75)(v34, 1, v28) == 1)
                {

                  sub_10000BE18(v34, &unk_100844540, &unk_1006BFBC0);
                }

                else
                {
                  v40 = v70;
                  (*v74)(v70, v34, v28);
                  v30 = URL.isFileOnDisk.getter();
                  (*v68)(v40, v28);
                  if (v30)
                  {
                    v30 = &v79;
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    v41 = v79[2];
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                  }

                  else
                  {
                  }

                  v32 = v39;
                }
              }

              else
              {
              }

              ++v35;
              if (v37 == v78)
              {
                v30 = v79;
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v61 = _CocoaArrayWrapper.endIndex.getter();
            v34 = v19;
            v19 = v77;
            if (v61 <= 0)
            {
              break;
            }

            v65 = v30;
            v30 = _swiftEmptyArrayStorage;
            v79 = _swiftEmptyArrayStorage;
            v78 = _CocoaArrayWrapper.endIndex.getter();
            if (!v78)
            {
LABEL_27:

              v51 = v72;
              v50 = v73;
              v52 = v71;
              v53 = v66;
              if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
              {
                v54 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v54 = *(v30 + 16);
              }

              if (v54 <= 0)
              {
                defaultLogger()();
                v56 = Logger.logObject.getter();
                v57 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v56, v57))
                {
                  v58 = swift_slowAlloc();
                  *v58 = 0;
                  _os_log_impl(&_mh_execute_header, v56, v57, "Upload assets doesn't exist to be uploaded.", v58, 2u);

                  v59 = v65;
                  v60 = v67;
                }

                else
                {
                  v59 = v56;
                  v56 = v67;
                  v60 = v65;
                }

                (*(v52 + 8))(v53, v51);
                v49 = 0;
                v48 = 2;
              }

              else
              {
                v55 = v67;
                v49 = [v67 totalUploadAssetsFileSizeInBytes];
                v48 = [v55 canUploadOnExpensiveNetwork];
              }

              goto LABEL_48;
            }
          }
        }
      }

      else
      {
      }
    }

    v27 = v28;
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Upload assets doesn't exist to be uploaded.", v64, 2u);
    }
  }

  else
  {
    defaultLogger()();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_100141FE4(v68, a3, &v79);
      *(v44 + 12) = 2080;
      v45 = IdentityTarget.debugDescription.getter();
      v47 = sub_100141FE4(v45, v46, &v79);

      *(v44 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "No proofing session for proofingSessionID %s and target %s", v44, 0x16u);
      v48 = 2;
      swift_arrayDestroy();

      (*(v71 + 8))(v27, v72);
      v49 = 0;
      goto LABEL_47;
    }
  }

  (*(v71 + 8))(v27, v72);
  v49 = 0;
  v48 = 2;
LABEL_47:
  v50 = v73;
LABEL_48:
  *v50 = v49;
  *(v50 + 8) = v48;
}

uint64_t sub_100199A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_100007224(&qword_10083BD28, &qword_1006DA240) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for IdentityProofingDisplayMessage();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100199BF8, 0, 0);
}

uint64_t sub_100199BF8()
{
  v1 = *(*(v0[6] + 128) + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  if (*(v2 + 16) && (v3 = sub_10003ADCC(v0[3], v0[4]), (v4 & 1) != 0))
  {
    (*(v0[15] + 16))(v0[16], *(v2 + 56) + *(v0[15] + 72) * v3, v0[14]);

    v5 = v0[13];
    v7 = v0[9];
    v6 = v0[10];
    (*(v0[15] + 32))(v0[2], v0[16], v0[14]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[13];

    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "The actions repository doesn't contain the display message. Will call pending actions from the server", v13, 2u);
    }

    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    v17 = v0[6];
    v18 = v0[4];

    (*(v15 + 8))(v14, v16);
    v19 = *(v17 + 32);

    v0[17] = sub_100266DA8(3, 0);

    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_100199E7C;
    v21 = v0[5];
    v22 = v0[3];

    return sub_10025AE6C(v22, v18, v21, 0);
  }
}

uint64_t sub_100199E7C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10019A1F0;
  }

  else
  {

    v3 = sub_100199F9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100199F9C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  sub_10025CDEC(v0[3], v0[4], v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[17];
    v6 = v0[9];
    v7 = v0[7];
    v8 = v0[8];
    sub_10000BE18(v0[10], &qword_10083BD28, &qword_1006DA240);
    (*(v8 + 104))(v6, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[16];
    v10 = v0[13];
    v12 = v0[9];
    v11 = v0[10];
  }

  else
  {
    v14 = v0[17];

    v15 = v0[16];
    v16 = v0[13];
    v17 = v0[9];
    (*(v0[15] + 32))(v0[2], v0[10], v0[14]);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10019A1F0()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019A284(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  if (!a2)
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Credential Identifier is nil, cannot fetch the ID Type", v21, 2u);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v16 = *(v2 + 88);

  sub_100511C48(a1, a2);
  v18 = v17;

  if (!v18)
  {
    defaultLogger()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100141FE4(a1, a2, &v32);
      _os_log_impl(&_mh_execute_header, v22, v23, "No pass exists with the credential identifier - %s ", v24, 0xCu);
      sub_10000BB78(v25);
    }

    (*(v6 + 8))(v13, v5);
    return 0;
  }

  if (*(v18 + 56) > 4u && *(v18 + 56) != 5)
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to retrieve the pass type", v30, 2u);
    }

    else
    {
    }

    (*(v6 + 8))(v15, v5);
    return 0;
  }

  v27 = IdentityDocumentType.init(documentTypeString:)();

  return v27;
}

uint64_t sub_10019A69C(uint64_t a1, char a2, char a3)
{
  *(v4 + 1032) = v3;
  *(v4 + 746) = a3;
  *(v4 + 745) = a2;
  *(v4 + 1024) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 1040) = v5;
  v6 = *(v5 - 8);
  *(v4 + 1048) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 1056) = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v4 + 1064) = v8;
  v9 = *(v8 - 8);
  *(v4 + 1072) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 1080) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v4 + 1088) = v11;
  v12 = *(v11 - 8);
  *(v4 + 1096) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 1104) = swift_task_alloc();
  *(v4 + 1112) = swift_task_alloc();
  *(v4 + 1120) = swift_task_alloc();
  *(v4 + 1128) = swift_task_alloc();
  *(v4 + 1136) = swift_task_alloc();
  *(v4 + 1144) = swift_task_alloc();
  *(v4 + 1152) = swift_task_alloc();
  *(v4 + 1160) = swift_task_alloc();
  *(v4 + 1168) = swift_task_alloc();
  *(v4 + 1176) = swift_task_alloc();
  v14 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v4 + 1184) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v4 + 1192) = swift_task_alloc();
  *(v4 + 1200) = swift_task_alloc();

  return _swift_task_switch(sub_10019A8C8, 0, 0);
}

uint64_t sub_10019A8C8()
{
  v1 = *(v0 + 1024);
  IdentityProofingConfiguration.state.getter();
  if (v2)
  {
    v3 = *(v0 + 1032);
    v4 = *(v0 + 1024);
    v5 = String.lowercased()();

    *(v0 + 1208) = v5;
    *(v0 + 1224) = *(v3 + 152);

    v6 = IdentityProofingConfiguration.documentType.getter();
    v7 = swift_task_alloc();
    *(v0 + 1232) = v7;
    *v7 = v0;
    v7[1] = sub_10019AC94;
    v8 = *(v0 + 1200);

    return sub_1001AA1E4(v8, v6);
  }

  else
  {
    (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 1040));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = *(v0 + 1200);
    v12 = *(v0 + 1192);
    v13 = *(v0 + 1176);
    v14 = *(v0 + 1168);
    v15 = *(v0 + 1160);
    v16 = *(v0 + 1152);
    v17 = *(v0 + 1144);
    v18 = *(v0 + 1136);
    v19 = *(v0 + 1128);
    v20 = *(v0 + 1120);
    v21 = *(v0 + 1112);
    v22 = *(v0 + 1104);
    v23 = *(v0 + 1080);
    (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10019AC94()
{
  v2 = *v1;
  v3 = *(*v1 + 1232);
  v4 = *v1;
  v2[155] = v0;

  v5 = v2[153];
  if (v0)
  {
    v6 = v2[152];

    v7 = sub_10019FB74;
  }

  else
  {

    v7 = sub_10019ADD8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10019ADD8()
{
  v224 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  *(v0 + 1008) = _swiftEmptyArrayStorage;
  v3 = *(v1 + *(v2 + 40));
  *(v0 + 1248) = v3;
  if (!v3)
  {
    goto LABEL_70;
  }

  v4 = (v0 + 752);
  v5 = *(v3 + 16);
  *(v0 + 1256) = v5;
  if (!v5)
  {
    v118 = *(v0 + 1216);

    v6 = 0;
    *(v0 + 752) = 1;
    *(v0 + 760) = 0u;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    *(v0 + 808) = 0;
    v119 = _swiftEmptyArrayStorage;
    v8 = 0xE000000000000000;
    goto LABEL_83;
  }

  *(v0 + 816) = 1;
  *(v0 + 872) = 0;
  *(v0 + 824) = 0u;
  *(v0 + 840) = 0u;
  *(v0 + 856) = 0u;
  *(v0 + 1264) = 0;
  if (!*(v3 + 16))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    v114 = *(v0 + 1216);
    v115 = *(v0 + 1056);
    v116 = *(v0 + 1048);
    v117 = *(v0 + 1040);

    (*(v116 + 104))(v115, enum case for DIPError.Code.invalidStaticWorkflow(_:), v117);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    goto LABEL_90;
  }

  v6 = 0;
  v7 = 0;
  v202 = (v0 + 880);
  v207 = (v0 + 816);
  v209 = (v0 + 1008);
  v198 = (v0 + 1176);
  v199 = (v0 + 1168);
  v8 = 0xE000000000000000;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1 = *(v0 + 1024);
    v9 = (v3 + 112 * v7);
    v11 = v9[3];
    v10 = v9[4];
    *(v0 + 16) = v9[2];
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    v12 = v9[8];
    v14 = v9[5];
    v13 = v9[6];
    *(v0 + 96) = v9[7];
    *(v0 + 112) = v12;
    *(v0 + 64) = v14;
    *(v0 + 80) = v13;
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);

    sub_10009FB70(v0 + 16, v0 + 128);
    v17 = IdentityProofingConfiguration.state.getter();
    if (!v18)
    {
      sub_10009FBA8(v0 + 16);

      v19 = (v0 + 816);
      goto LABEL_67;
    }

    if (v16 == v17 && v18 == v15)
    {
    }

    else
    {
      v1 = v18;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        sub_10009FBA8(v0 + 16);
        v19 = (v0 + 816);
        goto LABEL_67;
      }
    }

    v21 = *(v0 + 745);
    sub_10000BE18(v207, &qword_100835910, &qword_1006C1B68);
    v22 = *(v0 + 746);
    if (v21 == 1)
    {
      v23 = (v0 + 1168);
      if (*(v0 + 746))
      {
        v24 = *v198;
        defaultLogger()();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v25, v26))
        {
          v31 = v4;
          v43 = *v198;
          goto LABEL_28;
        }

        v23 = (v0 + 1176);
        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = v26;
        v29 = v25;
        v30 = "Preparing UI for watch device migration flow";
      }

      else
      {
        v41 = *v199;
        defaultLogger()();
        v25 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v25, v42))
        {
          v31 = v4;
          v43 = *v199;
          goto LABEL_28;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = v42;
        v29 = v25;
        v30 = "Preparing UI from static workflow for watch";
      }

      _os_log_impl(&_mh_execute_header, v29, v28, v30, v27, 2u);
      v31 = v4;
      v43 = *v23;

LABEL_28:
      v52 = *(v0 + 1096);
      v53 = *(v0 + 1088);

      v39 = *(v52 + 8);
      v39(v43, v53);
      v40 = *(v0 + 112);
LABEL_29:
      if (v40)
      {
        v51 = v40;
      }

      else
      {
        v51 = _swiftEmptyArrayStorage;
      }

      goto LABEL_32;
    }

    v31 = v4;
    if (*(v0 + 746))
    {
      v32 = *(v0 + 1160);
      defaultLogger()();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Preparing UI from static workflow for device migration", v35, 2u);
      }

      v36 = *(v0 + 1160);
      v37 = *(v0 + 1096);
      v38 = *(v0 + 1088);

      v39 = *(v37 + 8);
      v39(v36, v38);
      v40 = *(v0 + 120);
      goto LABEL_29;
    }

    v44 = *(v0 + 1152);
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Preparing UI from static workflow for phone", v47, 2u);
    }

    v48 = *(v0 + 1152);
    v49 = *(v0 + 1096);
    v50 = *(v0 + 1088);

    v39 = *(v49 + 8);
    v39(v48, v50);
    v51 = *(v0 + 40);
LABEL_32:
    *(v0 + 1280) = v51;
    *(v0 + 1272) = v39;
    v54 = v51[2];
    *(v0 + 1288) = v54;

    v4 = v31;
    if (v54)
    {
      break;
    }

LABEL_66:

    *(v0 + 1016) = *(v0 + 32);
    sub_10000BBC4(v0 + 48, v0 + 944, &qword_100835910, &qword_1006C1B68);
    v1 = v0 + 1016;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v111;
    sub_10009FBA8(v0 + 16);
    v19 = (v0 + 48);
LABEL_67:
    v112 = *(v0 + 1256);
    v7 = *(v0 + 1264) + 1;
    v113 = v19[1];
    *v202 = *v19;
    *(v0 + 896) = v113;
    *(v0 + 912) = v19[2];
    *(v0 + 921) = *(v19 + 41);
    if (v7 == v112)
    {
      v149 = *(v0 + 1216);

      v150 = *(v0 + 896);
      v119 = v4;
      v4 = (v0 + 752);
      *(v0 + 752) = *v202;
      *(v0 + 768) = v150;
      *(v0 + 784) = *(v0 + 912);
      *(v0 + 793) = *(v0 + 921);
LABEL_83:
      *(v0 + 1424) = v119;
      *(v0 + 1416) = v119;
      *(v0 + 1408) = v8;
      *(v0 + 1400) = v6;
      v151 = v4[1];
      *(v0 + 688) = *v4;
      *(v0 + 704) = v151;
      *(v0 + 720) = v4[2];
      *(v0 + 729) = *(v4 + 41);
      if (v119 >> 62)
      {
LABEL_104:
        v152 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v152 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v1 = *(v0 + 1200);
      if (v152 >= 1)
      {
        v153 = *(v0 + 1192);
        v154 = *(v0 + 1112);
        defaultLogger()();
        sub_1001A2050(v1, v153);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.debug.getter();
        v157 = os_log_type_enabled(v155, v156);
        v158 = *(v0 + 1192);
        if (v157)
        {
          v159 = *(v0 + 1184);
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v223[0] = v161;
          *v160 = 136315138;
          v162 = (v158 + *(v159 + 44));
          if (v162[1])
          {
            v163 = *v162;
            v164 = v162[1];
          }

          else
          {
            v164 = 0xE300000000000000;
            v163 = 7104878;
          }

          v176 = *(v0 + 1192);
          v221 = *(v0 + 1112);
          v177 = *(v0 + 1096);
          v178 = *(v0 + 1088);

          sub_1001A1FAC(v176);
          v179 = sub_100141FE4(v163, v164, v223);

          *(v160 + 4) = v179;
          _os_log_impl(&_mh_execute_header, v155, v156, "The learnMoreURL is %s", v160, 0xCu);
          sub_10000BB78(v161);

          v175 = *(v177 + 8);
          v175(v221, v178);
        }

        else
        {
          v172 = *(v0 + 1112);
          v173 = *(v0 + 1096);
          v174 = *(v0 + 1088);

          sub_1001A1FAC(v158);
          v175 = *(v173 + 8);
          v175(v172, v174);
        }

        if (*(*(v0 + 1200) + *(*(v0 + 1184) + 76)))
        {
          IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
          IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
          IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
        }

        v180 = *(v0 + 1104);
        v181 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
        *(v0 + 1432) = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
        defaultLogger()();
        v182 = Logger.logObject.getter();
        v183 = static os_log_type_t.debug.getter();
        v184 = os_log_type_enabled(v182, v183);
        v185 = *(v0 + 1104);
        v186 = *(v0 + 1096);
        v187 = *(v0 + 1088);
        if (v184)
        {
          v188 = *(v0 + 746);
          v222 = v175;
          v189 = *(v0 + 745);
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v223[0] = v191;
          *v190 = 136315650;
          *(v190 + 4) = sub_100141FE4(0xD000000000000057, 0x8000000100703E60, v223);
          *(v190 + 12) = 1024;
          *(v190 + 14) = v189;
          *(v190 + 18) = 1024;
          *(v190 + 20) = v188;
          _os_log_impl(&_mh_execute_header, v182, v183, "%s isWatchModeOnly = %{BOOL}d, isDeviceMigration = %{BOOL}d", v190, 0x18u);
          sub_10000BB78(v191);

          v222(v185, v187);
        }

        else
        {

          v175(v185, v187);
        }

        v192 = *(v0 + 1200);
        v193 = *(v0 + 1024);
        *(v0 + 1440) = *(*(v0 + 1032) + 136);
        v194 = *(v192 + 64);

        v195 = IdentityProofingConfiguration.documentType.getter();
        v196 = swift_task_alloc();
        *(v0 + 1448) = v196;
        *v196 = v0;
        v196[1] = sub_10019F2B4;
        v197 = *(v0 + 1080);

        return sub_1002A77FC(v197, v194, v195);
      }

      v165 = *(v0 + 1056);
      v166 = *(v0 + 1048);
      v167 = *(v0 + 1040);

      sub_10000BE18(v4, &qword_100835910, &qword_1006C1B68);

      (*(v166 + 104))(v165, enum case for DIPError.Code.invalidStaticWorkflow(_:), v167);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_90:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1001A1FAC(v1);
      v168 = *(v0 + 1200);
      v169 = *(v0 + 1192);
      v170 = *(v0 + 1176);
      v200 = *(v0 + 1168);
      v201 = *(v0 + 1160);
      v203 = *(v0 + 1152);
      v204 = *(v0 + 1144);
      v205 = *(v0 + 1136);
      v206 = *(v0 + 1128);
      v208 = *(v0 + 1120);
      v210 = *(v0 + 1112);
      v211 = *(v0 + 1104);
      v213 = *(v0 + 1080);
      (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v171 = *(v0 + 8);

      return v171();
    }

    memmove(v207, v19, 0x39uLL);
    *(v0 + 1264) = v7;
    v3 = *(v0 + 1248);
    if (v7 >= *(v3 + 16))
    {
      goto LABEL_69;
    }
  }

  v55 = 0;
  while (1)
  {
    *(v0 + 1304) = v55;
    *(v0 + 1296) = v4;
    v56 = &v51[14 * v55];
    v57 = v56[5];
    v58 = v56[6];
    v59 = v56[8];
    *(v0 + 320) = v56[7];
    *(v0 + 336) = v59;
    *(v0 + 304) = v58;
    v60 = v56[3];
    v61 = v56[4];
    *(v0 + 240) = v56[2];
    *(v0 + 256) = v60;
    *(v0 + 272) = v61;
    *(v0 + 288) = v57;
    v63 = *(v0 + 312);
    v62 = *(v0 + 320);
    if (v62)
    {
      if (v63 == 0xD00000000000001ELL && 0x8000000100703F80 == v62 || (v64 = *(v0 + 312), v65 = *(v0 + 320), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v63 == 0xD000000000000017 && 0x8000000100703FA0 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v63 == 0xD000000000000016 && 0x8000000100703FC0 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v66 = *(v0 + 1144);
        sub_1000F01B0(v0 + 240, v0 + 464);
        defaultLogger()();
        sub_1000F01B0(v0 + 240, v0 + 576);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();
        sub_1000F01E8(v0 + 240);
        v69 = os_log_type_enabled(v67, v68);
        v218 = *(v0 + 1272);
        v70 = *(v0 + 1144);
        v71 = *(v0 + 1088);
        v72 = *(v0 + 1096) + 8;
        if (v69)
        {
          v73 = swift_slowAlloc();
          v214 = v4;
          v74 = swift_slowAlloc();
          v223[0] = v74;
          *v73 = 136315138;

          sub_1000F01E8(v0 + 240);
          v75 = sub_100141FE4(v63, v62, v223);

          *(v73 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v67, v68, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v73, 0xCu);
          sub_10000BB78(v74);
          v4 = v214;
        }

        else
        {
          sub_1000F01E8(v0 + 240);
        }

        v218(v70, v71);
        goto LABEL_61;
      }
    }

    *(v0 + 1312) = sub_100308788(v63, v62);
    *(v0 + 1320) = v76;
    v77 = objc_opt_self();
    sub_1000F01B0(v0 + 240, v0 + 352);
    v78 = [v77 standardUserDefaults];
    v79._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchStrings.getter();
    v80 = NSUserDefaults.internalBool(forKey:)(v79);

    if (v80)
    {
      break;
    }

    v81 = *(v0 + 344);
    *(v0 + 1360) = v81;
    if (v81)
    {
      v133 = *(v0 + 1128);
      v134 = *(v0 + 1320);

      defaultLogger()();

      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = *(v0 + 1320);
        v138 = *(v0 + 1312);
        v217 = *(v0 + 1128);
        v220 = *(v0 + 1272);
        v139 = *(v0 + 1088);
        v140 = *(v0 + 1096) + 8;
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v223[0] = v142;
        *v141 = 136315138;
        *(v141 + 4) = sub_100141FE4(v138, v137, v223);
        _os_log_impl(&_mh_execute_header, v135, v136, "Image assets field exists for the page -> %s", v141, 0xCu);
        sub_10000BB78(v142);

        v220(v217, v139);
      }

      else
      {
        v143 = *(v0 + 1272);
        v144 = *(v0 + 1128);
        v145 = *(v0 + 1096);
        v146 = *(v0 + 1088);

        v143(v144, v146);
      }

      *(v0 + 1368) = *(*(v0 + 1032) + 144);

      v147 = swift_task_alloc();
      *(v0 + 1376) = v147;
      *v147 = v0;
      v147[1] = sub_10019DBC8;
      v130 = *(v0 + 1216);
      v132 = *(v0 + 1208);
      v131 = v81;
      goto LABEL_79;
    }

    v82 = *(v0 + 280);
    if (*(v0 + 1312) == 0xD000000000000012 && 0x80000001006FE390 == *(v0 + 1320) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v82[2] >= 2uLL)
    {
      v83 = *(v0 + 1024);
      v84 = *(*(v0 + 1032) + 152);
      v85 = v82[6];
      v86 = v82[7];

      sub_1001B286C(v83, v85, v86);
    }

    v219 = *(v0 + 1320);
    v87 = *(v0 + 1120);
    v88 = *(v0 + 328);
    v89 = *(v0 + 336);
    v90 = *(v0 + 272);
    v212 = *(v0 + 264);
    v215 = *(v0 + 1312);
    v91 = *(v0 + 248);
    v92 = *(v0 + 256);
    v93 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    v94 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_1000F01E8(v0 + 240);
    defaultLogger()();
    v95 = v94;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();

    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 1272);
    v100 = *(v0 + 1120);
    v101 = *(v0 + 1096);
    v102 = *(v0 + 1088);
    if (v98)
    {
      v216 = *(v0 + 1272);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v223[0] = v104;
      *v103 = 136446210;
      v105 = IdentityProofingUIConfig.view.getter();
      v107 = sub_100141FE4(v105, v106, v223);

      *(v103 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v96, v97, "%{public}s to be shown to the user from static views", v103, 0xCu);
      sub_10000BB78(v104);

      v216(v100, v102);
    }

    else
    {

      v99(v100, v102);
    }

    v108 = v95;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v109 = *((*v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = *v209;
LABEL_61:
    v55 = *(v0 + 1304) + 1;
    v51 = *(v0 + 1280);
    if (v55 == *(v0 + 1288))
    {
      v110 = *(v0 + 1280);

      goto LABEL_66;
    }

    if (v55 >= v51[2])
    {
      __break(1u);
      goto LABEL_104;
    }
  }

  v120 = *(v0 + 1136);

  defaultLogger()();
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "Adding assets to the page as the internal setting is switched on", v123, 2u);
  }

  v124 = *(v0 + 1272);
  v125 = *(v0 + 1136);
  v126 = *(v0 + 1096);
  v127 = *(v0 + 1088);
  v128 = *(v0 + 1032);

  v124(v125, v127);
  *(v0 + 1328) = *(v128 + 144);

  v129 = swift_task_alloc();
  *(v0 + 1336) = v129;
  *v129 = v0;
  v129[1] = sub_10019C4D8;
  v130 = *(v0 + 1216);
  v131 = &off_1007FB260;
  v132 = *(v0 + 1208);
LABEL_79:

  return sub_10026F6BC(v132, v130, v131);
}

uint64_t sub_10019C4D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1336);
  v13 = *v2;
  *(*v2 + 1344) = v1;

  v6 = v4[166];
  if (v1)
  {
    v7 = v4[165];
    v8 = v4[162];
    v9 = v4[160];
    v10 = v4[152];

    sub_1000F01E8((v4 + 30));
    sub_10009FBA8((v4 + 2));
    sub_10004D860(&unk_1007FB280);

    v11 = sub_10019FDC8;
  }

  else
  {

    v4[169] = a1;
    sub_10004D860(&unk_1007FB280);
    v11 = sub_10019C66C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10019C66C()
{
  v227 = v0;
  v215 = (v0 + 752);
  v1 = (v0 + 816);
  v2 = (v0 + 880);
  v221 = *(v0 + 1352);
  v198 = (v0 + 1008);
LABEL_2:
  v3 = *(v0 + 344);
  *(v0 + 1360) = v3;
  if (!v3)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 1312) == 0xD000000000000012 && 0x80000001006FE390 == *(v0 + 1320);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v4[2] >= 2uLL)
    {
      v6 = *(v0 + 1024);
      v7 = *(*(v0 + 1032) + 152);
      v8 = v4[6];
      v9 = v4[7];

      sub_1001B286C(v6, v8, v9);
    }

    v217 = *(v0 + 1320);
    v10 = *(v0 + 1120);
    v11 = *(v0 + 336);
    v12 = *(v0 + 272);
    v206 = *(v0 + 264);
    v210 = *(v0 + 1312);
    v13 = *(v0 + 256);
    v200 = *(v0 + 328);
    v202 = *(v0 + 248);
    objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    LOBYTE(v194) = 1;
    v193 = v221;
    LOBYTE(v192) = 1;
    LOBYTE(v191) = 1;
    v190 = v11;
    v189 = v4;
    v14 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_1000F01E8(v0 + 240);
    defaultLogger()();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1272);
    v20 = *(v0 + 1120);
    v21 = *(v0 + 1096);
    v22 = *(v0 + 1088);
    if (v18)
    {
      v211 = *(v0 + 1120);
      v23 = swift_slowAlloc();
      v207 = v22;
      v24 = swift_slowAlloc();
      v226[0] = v24;
      *v23 = 136446210;
      v25 = IdentityProofingUIConfig.view.getter();
      v203 = v19;
      v27 = sub_100141FE4(v25, v26, v226);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s to be shown to the user from static views", v23, 0xCu);
      sub_10000BB78(v24);

      v203(v211, v207);
    }

    else
    {

      v19(v20, v22);
    }

    v28 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v110 = *((*v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v218 = *v198;
    while (1)
    {
      v29 = *(v0 + 1304) + 1;
      v30 = *(v0 + 1280);
      if (v29 == *(v0 + 1288))
      {
        break;
      }

      if (v29 >= v30[2])
      {
        __break(1u);
LABEL_99:
        v115 = _CocoaArrayWrapper.endIndex.getter();
LABEL_69:
        v116 = *(v0 + 1200);
        if (v115 < 1)
        {
          v129 = *(v0 + 1056);
          v130 = *(v0 + 1048);
          v131 = *(v0 + 1040);

          sub_10000BE18(v215, &qword_100835910, &qword_1006C1B68);

          (*(v130 + 104))(v129, enum case for DIPError.Code.invalidStaticWorkflow(_:), v131);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_1001A1FAC(v116);
          v195 = *(v0 + 1200);
          v196 = *(v0 + 1192);
          v197 = *(v0 + 1176);
          v199 = *(v0 + 1168);
          v201 = *(v0 + 1160);
          v205 = *(v0 + 1152);
          v209 = *(v0 + 1144);
          v213 = *(v0 + 1136);
          v214 = *(v0 + 1128);
          v216 = *(v0 + 1120);
          v219 = *(v0 + 1112);
          v222 = *(v0 + 1104);
          v132 = *(v0 + 1080);
          (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v133 = *(v0 + 8);

          return v133();
        }

        else
        {
          v117 = *(v0 + 1192);
          v118 = *(v0 + 1112);
          defaultLogger()();
          sub_1001A2050(v116, v117);
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.debug.getter();
          v121 = os_log_type_enabled(v119, v120);
          v122 = *(v0 + 1192);
          if (v121)
          {
            v123 = *(v0 + 1184);
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v226[0] = v125;
            *v124 = 136315138;
            v126 = (v122 + *(v123 + 44));
            if (v126[1])
            {
              v127 = *v126;
              v128 = v126[1];
            }

            else
            {
              v128 = 0xE300000000000000;
              v127 = 7104878;
            }

            v139 = *(v0 + 1192);
            v223 = *(v0 + 1112);
            v140 = *(v0 + 1096);
            v141 = *(v0 + 1088);

            sub_1001A1FAC(v139);
            v142 = sub_100141FE4(v127, v128, v226);

            *(v124 + 4) = v142;
            _os_log_impl(&_mh_execute_header, v119, v120, "The learnMoreURL is %s", v124, 0xCu);
            sub_10000BB78(v125);

            v138 = *(v140 + 8);
            v138(v223, v141);
          }

          else
          {
            v135 = *(v0 + 1112);
            v136 = *(v0 + 1096);
            v137 = *(v0 + 1088);

            sub_1001A1FAC(v122);
            v138 = *(v136 + 8);
            v138(v135, v137);
          }

          if (*(*(v0 + 1200) + *(*(v0 + 1184) + 76)))
          {
            IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
          }

          v143 = *(v0 + 1104);
          v144 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
          *(v0 + 1432) = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
          defaultLogger()();
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.debug.getter();
          v147 = os_log_type_enabled(v145, v146);
          v148 = *(v0 + 1104);
          v149 = *(v0 + 1096);
          v150 = *(v0 + 1088);
          if (v147)
          {
            v151 = *(v0 + 746);
            v224 = v138;
            v152 = *(v0 + 745);
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v226[0] = v154;
            *v153 = 136315650;
            *(v153 + 4) = sub_100141FE4(0xD000000000000057, 0x8000000100703E60, v226);
            *(v153 + 12) = 1024;
            *(v153 + 14) = v152;
            *(v153 + 18) = 1024;
            *(v153 + 20) = v151;
            _os_log_impl(&_mh_execute_header, v145, v146, "%s isWatchModeOnly = %{BOOL}d, isDeviceMigration = %{BOOL}d", v153, 0x18u);
            sub_10000BB78(v154);

            v224(v148, v150);
          }

          else
          {

            v138(v148, v150);
          }

          v155 = *(v0 + 1200);
          v156 = *(v0 + 1024);
          *(v0 + 1440) = *(*(v0 + 1032) + 136);
          v157 = *(v155 + 64);

          v158 = IdentityProofingConfiguration.documentType.getter();
          v159 = swift_task_alloc();
          *(v0 + 1448) = v159;
          *v159 = v0;
          v159[1] = sub_10019F2B4;
          v160 = *(v0 + 1080);

          return sub_1002A77FC(v160, v157, v158);
        }
      }

LABEL_51:
      *(v0 + 1304) = v29;
      *(v0 + 1296) = v218;
      v86 = &v30[14 * v29];
      v87 = v86[5];
      v88 = v86[6];
      v89 = v86[8];
      *(v0 + 320) = v86[7];
      *(v0 + 336) = v89;
      *(v0 + 304) = v88;
      v90 = v86[3];
      v91 = v86[4];
      *(v0 + 240) = v86[2];
      *(v0 + 256) = v90;
      *(v0 + 272) = v91;
      *(v0 + 288) = v87;
      v92 = *(v0 + 312);
      v93 = *(v0 + 320);
      if (!v93 || (v92 != 0xD00000000000001ELL || 0x8000000100703F80 != v93) && (v94 = *(v0 + 312), v95 = *(v0 + 320), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) && (v92 != 0xD000000000000017 || 0x8000000100703FA0 != v93) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v92 != 0xD000000000000016 || 0x8000000100703FC0 != v93) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *(v0 + 1312) = sub_100308788(v92, v93);
        *(v0 + 1320) = v105;
        v106 = objc_opt_self();
        sub_1000F01B0(v0 + 240, v0 + 352);
        v107 = [v106 standardUserDefaults];
        v108._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchStrings.getter();
        v109 = NSUserDefaults.internalBool(forKey:)(v108);

        if (!v109)
        {
          goto LABEL_2;
        }

LABEL_95:
        v179 = *(v0 + 1136);

        defaultLogger()();
        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          *v182 = 0;
          _os_log_impl(&_mh_execute_header, v180, v181, "Adding assets to the page as the internal setting is switched on", v182, 2u);
        }

        v183 = *(v0 + 1272);
        v184 = *(v0 + 1136);
        v185 = *(v0 + 1096);
        v186 = *(v0 + 1088);
        v187 = *(v0 + 1032);

        v183(v184, v186);
        *(v0 + 1328) = *(v187 + 144);

        v188 = swift_task_alloc();
        *(v0 + 1336) = v188;
        *v188 = v0;
        v188[1] = sub_10019C4D8;
        v176 = *(v0 + 1216);
        v178 = &off_1007FB260;
        v177 = *(v0 + 1208);
        goto LABEL_91;
      }

      v96 = *(v0 + 1144);
      sub_1000F01B0(v0 + 240, v0 + 464);
      defaultLogger()();
      sub_1000F01B0(v0 + 240, v0 + 576);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 240);
      v99 = os_log_type_enabled(v97, v98);
      v100 = *(v0 + 1272);
      v101 = *(v0 + 1088);
      v208 = *(v0 + 1096) + 8;
      v212 = *(v0 + 1144);
      if (v99)
      {
        v204 = *(v0 + 1272);
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v226[0] = v103;
        *v102 = 136315138;

        sub_1000F01E8(v0 + 240);
        v104 = sub_100141FE4(v92, v93, v226);

        *(v102 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v97, v98, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v102, 0xCu);
        sub_10000BB78(v103);

        v204(v212, v101);
      }

      else
      {
        sub_1000F01E8(v0 + 240);

        v100(v212, v101);
      }
    }

    v31 = *(v0 + 1280);

LABEL_18:
    *(v0 + 1016) = *(v0 + 32);
    sub_10000BBC4(v0 + 48, v0 + 944, &qword_100835910, &qword_1006C1B68);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_10009FBA8(v0 + 16);
    v35 = *(v0 + 1256);
    v36 = *(v0 + 1264) + 1;
    v37 = *(v0 + 64);
    *v2 = *(v0 + 48);
    *(v0 + 896) = v37;
    *(v0 + 912) = *(v0 + 80);
    for (i = *(v0 + 89); ; i = *(v0 + 857))
    {
      *(v0 + 921) = i;
      if (v36 == v35)
      {
        break;
      }

      v40 = *(v0 + 896);
      *v1 = *v2;
      *(v0 + 832) = v40;
      *(v0 + 848) = *(v0 + 912);
      *(v0 + 857) = *(v0 + 921);
      *(v0 + 1264) = v36;
      v41 = *(v0 + 1248);
      if (v36 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_95;
      }

      v42 = *(v0 + 1024);
      v43 = (v41 + 112 * v36);
      v45 = v43[3];
      v44 = v43[4];
      *(v0 + 16) = v43[2];
      *(v0 + 32) = v45;
      *(v0 + 48) = v44;
      v46 = v43[8];
      v48 = v43[5];
      v47 = v43[6];
      *(v0 + 96) = v43[7];
      *(v0 + 112) = v46;
      *(v0 + 64) = v48;
      *(v0 + 80) = v47;
      v50 = *(v0 + 16);
      v49 = *(v0 + 24);

      sub_10009FB70(v0 + 16, v0 + 128);
      v51 = IdentityProofingConfiguration.state.getter();
      if (v52)
      {
        if (v50 == v51 && v52 == v49)
        {

LABEL_29:

          v54 = *(v0 + 745);
          sub_10000BE18(v0 + 816, &qword_100835910, &qword_1006C1B68);
          v55 = *(v0 + 746);
          if (v54 == 1)
          {
            if (*(v0 + 746))
            {
              v56 = (v0 + 1176);
              v57 = *(v0 + 1176);
              defaultLogger()();
              v58 = Logger.logObject.getter();
              v59 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v58, v59))
              {
                v60 = swift_slowAlloc();
                *v60 = 0;
                v61 = v59;
                v62 = v58;
                v63 = "Preparing UI for watch device migration flow";
                goto LABEL_39;
              }

LABEL_43:
              v75 = *v56;
            }

            else
            {
              v56 = (v0 + 1168);
              v73 = *(v0 + 1168);
              defaultLogger()();
              v58 = Logger.logObject.getter();
              v74 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v58, v74))
              {
                goto LABEL_43;
              }

              v60 = swift_slowAlloc();
              *v60 = 0;
              v61 = v74;
              v62 = v58;
              v63 = "Preparing UI from static workflow for watch";
LABEL_39:
              _os_log_impl(&_mh_execute_header, v62, v61, v63, v60, 2u);
              v75 = *v56;
            }

            v83 = *(v0 + 1096);
            v84 = *(v0 + 1088);

            v71 = *(v83 + 8);
            v71(v75, v84);
            v72 = *(v0 + 112);
LABEL_45:
            if (v72)
            {
              v30 = v72;
            }

            else
            {
              v30 = _swiftEmptyArrayStorage;
            }
          }

          else
          {
            if (*(v0 + 746))
            {
              v64 = *(v0 + 1160);
              defaultLogger()();
              v65 = Logger.logObject.getter();
              v66 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                *v67 = 0;
                _os_log_impl(&_mh_execute_header, v65, v66, "Preparing UI from static workflow for device migration", v67, 2u);
              }

              v68 = *(v0 + 1160);
              v69 = *(v0 + 1096);
              v70 = *(v0 + 1088);

              v71 = *(v69 + 8);
              v71(v68, v70);
              v72 = *(v0 + 120);
              goto LABEL_45;
            }

            v76 = *(v0 + 1152);
            defaultLogger()();
            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 0;
              _os_log_impl(&_mh_execute_header, v77, v78, "Preparing UI from static workflow for phone", v79, 2u);
            }

            v80 = *(v0 + 1152);
            v81 = *(v0 + 1096);
            v82 = *(v0 + 1088);

            v71 = *(v81 + 8);
            v71(v80, v82);
            v30 = *(v0 + 40);
          }

          *(v0 + 1280) = v30;
          *(v0 + 1272) = v71;
          v85 = v30[2];
          *(v0 + 1288) = v85;

          if (!v85)
          {

            goto LABEL_18;
          }

          v29 = 0;
          v221 = _swiftEmptyArrayStorage;
          goto LABEL_51;
        }

        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v53)
        {
          goto LABEL_29;
        }

        sub_10009FBA8(v0 + 16);
      }

      else
      {
        sub_10009FBA8(v0 + 16);
      }

      v35 = *(v0 + 1256);
      v36 = *(v0 + 1264) + 1;
      v39 = *(v0 + 832);
      *v2 = *v1;
      *(v0 + 896) = v39;
      *(v0 + 912) = *(v0 + 848);
    }

    v111 = *(v0 + 1216);

    v113 = *(v0 + 896);
    v112 = *(v0 + 912);
    *(v0 + 768) = v113;
    *(v0 + 784) = v112;
    *(v0 + 793) = *(v0 + 921);
    v114 = *v2;
    *v215 = *v2;
    *(v0 + 1424) = v218;
    *(v0 + 1416) = v218;
    *(v0 + 1408) = v34;
    *(v0 + 1400) = v32;
    *(v0 + 688) = v114;
    *(v0 + 704) = v113;
    *(v0 + 720) = *(v0 + 784);
    *(v0 + 729) = *(v0 + 793);
    if (v218 >> 62)
    {
      goto LABEL_99;
    }

    v115 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_69;
  }

  v161 = *(v0 + 1128);
  v162 = *(v0 + 1320);

  defaultLogger()();

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = *(v0 + 1320);
    v166 = *(v0 + 1312);
    v220 = *(v0 + 1128);
    v225 = *(v0 + 1272);
    v167 = *(v0 + 1088);
    v168 = *(v0 + 1096) + 8;
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v226[0] = v170;
    *v169 = 136315138;
    *(v169 + 4) = sub_100141FE4(v166, v165, v226);
    _os_log_impl(&_mh_execute_header, v163, v164, "Image assets field exists for the page -> %s", v169, 0xCu);
    sub_10000BB78(v170);

    v225(v220, v167);
  }

  else
  {
    v171 = *(v0 + 1272);
    v172 = *(v0 + 1128);
    v173 = *(v0 + 1096);
    v174 = *(v0 + 1088);

    v171(v172, v174);
  }

  *(v0 + 1368) = *(*(v0 + 1032) + 144);

  v175 = swift_task_alloc();
  *(v0 + 1376) = v175;
  *v175 = v0;
  v175[1] = sub_10019DBC8;
  v176 = *(v0 + 1216);
  v177 = *(v0 + 1208);
  v178 = v3;
LABEL_91:

  return sub_10026F6BC(v177, v176, v178);
}

uint64_t sub_10019DBC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1376);
  v15 = *v2;
  *(*v2 + 1384) = v1;

  v6 = v4[171];
  if (v1)
  {
    v7 = v4[170];
    v8 = v4[165];
    v9 = v4[162];
    v10 = v4[160];
    v11 = v4[152];

    sub_10009FBA8((v4 + 2));
    sub_1000F01E8((v4 + 30));

    v12 = sub_1001A0024;
  }

  else
  {
    v13 = v4[170];

    v4[174] = a1;
    v12 = sub_10019DD5C;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10019DD5C()
{
  v228 = v0;
  v216 = (v0 + 752);
  v1 = (v0 + 816);
  v2 = (v0 + 880);
  v222 = *(v0 + 1392);
  v199 = (v0 + 1008);
  while (2)
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 1312) == 0xD000000000000012 && 0x80000001006FE390 == *(v0 + 1320);
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v3[2] >= 2uLL)
    {
      v5 = *(v0 + 1024);
      v6 = *(*(v0 + 1032) + 152);
      v7 = v3[6];
      v8 = v3[7];

      sub_1001B286C(v5, v7, v8);
    }

    v218 = *(v0 + 1320);
    v9 = *(v0 + 1120);
    v10 = *(v0 + 336);
    v11 = *(v0 + 272);
    v207 = *(v0 + 264);
    v211 = *(v0 + 1312);
    v12 = *(v0 + 256);
    v201 = *(v0 + 328);
    v203 = *(v0 + 248);
    objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    LOBYTE(v195) = 1;
    v194 = v222;
    LOBYTE(v193) = 1;
    LOBYTE(v192) = 1;
    v191 = v10;
    v190 = v3;
    v13 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_1000F01E8(v0 + 240);
    defaultLogger()();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1272);
    v19 = *(v0 + 1120);
    v20 = *(v0 + 1096);
    v21 = *(v0 + 1088);
    if (v17)
    {
      v212 = *(v0 + 1120);
      v22 = swift_slowAlloc();
      v208 = v21;
      v23 = swift_slowAlloc();
      v227[0] = v23;
      *v22 = 136446210;
      v24 = IdentityProofingUIConfig.view.getter();
      v204 = v18;
      v26 = sub_100141FE4(v24, v25, v227);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s to be shown to the user from static views", v22, 0xCu);
      sub_10000BB78(v23);

      v204(v212, v208);
    }

    else
    {

      v18(v19, v21);
    }

    v27 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v110 = *((*v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v219 = *v199;
    while (1)
    {
      v28 = *(v0 + 1304) + 1;
      v29 = *(v0 + 1280);
      if (v28 == *(v0 + 1288))
      {
        v30 = *(v0 + 1280);

LABEL_17:
        *(v0 + 1016) = *(v0 + 32);
        sub_10000BBC4(v0 + 48, v0 + 944, &qword_100835910, &qword_1006C1B68);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        sub_10009FBA8(v0 + 16);
        v34 = *(v0 + 1256);
        v35 = *(v0 + 1264) + 1;
        v36 = *(v0 + 64);
        *v2 = *(v0 + 48);
        *(v0 + 896) = v36;
        *(v0 + 912) = *(v0 + 80);
        for (i = *(v0 + 89); ; i = *(v0 + 857))
        {
          *(v0 + 921) = i;
          if (v35 == v34)
          {
            break;
          }

          v39 = *(v0 + 896);
          *v1 = *v2;
          *(v0 + 832) = v39;
          *(v0 + 848) = *(v0 + 912);
          *(v0 + 857) = *(v0 + 921);
          *(v0 + 1264) = v35;
          v40 = *(v0 + 1248);
          if (v35 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_88;
          }

          v41 = *(v0 + 1024);
          v42 = (v40 + 112 * v35);
          v44 = v42[3];
          v43 = v42[4];
          *(v0 + 16) = v42[2];
          *(v0 + 32) = v44;
          *(v0 + 48) = v43;
          v45 = v42[8];
          v47 = v42[5];
          v46 = v42[6];
          *(v0 + 96) = v42[7];
          *(v0 + 112) = v45;
          *(v0 + 64) = v47;
          *(v0 + 80) = v46;
          v49 = *(v0 + 16);
          v48 = *(v0 + 24);

          sub_10009FB70(v0 + 16, v0 + 128);
          v50 = IdentityProofingConfiguration.state.getter();
          if (v51)
          {
            if (v49 == v50 && v51 == v48)
            {

LABEL_28:

              v53 = *(v0 + 745);
              sub_10000BE18(v0 + 816, &qword_100835910, &qword_1006C1B68);
              v54 = *(v0 + 746);
              if (v53 == 1)
              {
                v55 = (v0 + 1168);
                if (*(v0 + 746))
                {
                  v55 = (v0 + 1176);
                  v56 = *(v0 + 1176);
                  defaultLogger()();
                  v57 = Logger.logObject.getter();
                  v58 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v57, v58))
                  {
                    v59 = swift_slowAlloc();
                    *v59 = 0;
                    v60 = v58;
                    v61 = v57;
                    v62 = "Preparing UI for watch device migration flow";
                    goto LABEL_38;
                  }

LABEL_42:
                  v74 = *v55;
                }

                else
                {
                  v72 = *(v0 + 1168);
                  defaultLogger()();
                  v57 = Logger.logObject.getter();
                  v73 = static os_log_type_t.debug.getter();
                  if (!os_log_type_enabled(v57, v73))
                  {
                    goto LABEL_42;
                  }

                  v59 = swift_slowAlloc();
                  *v59 = 0;
                  v60 = v73;
                  v61 = v57;
                  v62 = "Preparing UI from static workflow for watch";
LABEL_38:
                  _os_log_impl(&_mh_execute_header, v61, v60, v62, v59, 2u);
                  v74 = *v55;
                }

                v82 = *(v0 + 1096);
                v83 = *(v0 + 1088);

                v70 = *(v82 + 8);
                v70(v74, v83);
                v71 = *(v0 + 112);
LABEL_44:
                if (v71)
                {
                  v29 = v71;
                }

                else
                {
                  v29 = _swiftEmptyArrayStorage;
                }
              }

              else
              {
                if (*(v0 + 746))
                {
                  v63 = *(v0 + 1160);
                  defaultLogger()();
                  v64 = Logger.logObject.getter();
                  v65 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v64, v65))
                  {
                    v66 = swift_slowAlloc();
                    *v66 = 0;
                    _os_log_impl(&_mh_execute_header, v64, v65, "Preparing UI from static workflow for device migration", v66, 2u);
                  }

                  v67 = *(v0 + 1160);
                  v68 = *(v0 + 1096);
                  v69 = *(v0 + 1088);

                  v70 = *(v68 + 8);
                  v70(v67, v69);
                  v71 = *(v0 + 120);
                  goto LABEL_44;
                }

                v75 = *(v0 + 1152);
                defaultLogger()();
                v76 = Logger.logObject.getter();
                v77 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  *v78 = 0;
                  _os_log_impl(&_mh_execute_header, v76, v77, "Preparing UI from static workflow for phone", v78, 2u);
                }

                v79 = *(v0 + 1152);
                v80 = *(v0 + 1096);
                v81 = *(v0 + 1088);

                v70 = *(v80 + 8);
                v70(v79, v81);
                v29 = *(v0 + 40);
              }

              *(v0 + 1280) = v29;
              *(v0 + 1272) = v70;
              v84 = v29[2];
              *(v0 + 1288) = v84;

              if (!v84)
              {

                goto LABEL_17;
              }

              v28 = 0;
              v222 = _swiftEmptyArrayStorage;
              goto LABEL_50;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v52)
            {
              goto LABEL_28;
            }

            sub_10009FBA8(v0 + 16);
          }

          else
          {
            sub_10009FBA8(v0 + 16);
          }

          v34 = *(v0 + 1256);
          v35 = *(v0 + 1264) + 1;
          v38 = *(v0 + 832);
          *v2 = *v1;
          *(v0 + 896) = v38;
          *(v0 + 912) = *(v0 + 848);
        }

        v111 = *(v0 + 1216);

        v113 = *(v0 + 896);
        v112 = *(v0 + 912);
        *(v0 + 768) = v113;
        *(v0 + 784) = v112;
        *(v0 + 793) = *(v0 + 921);
        v114 = *v2;
        *v216 = *v2;
        *(v0 + 1424) = v219;
        *(v0 + 1416) = v219;
        *(v0 + 1408) = v33;
        *(v0 + 1400) = v31;
        *(v0 + 688) = v114;
        *(v0 + 704) = v113;
        *(v0 + 720) = *(v0 + 784);
        *(v0 + 729) = *(v0 + 793);
        if (v219 >> 62)
        {
          goto LABEL_99;
        }

        v115 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_69;
      }

      if (v28 >= v29[2])
      {
        __break(1u);
LABEL_99:
        v115 = _CocoaArrayWrapper.endIndex.getter();
LABEL_69:
        v116 = *(v0 + 1200);
        if (v115 < 1)
        {
          v129 = *(v0 + 1056);
          v130 = *(v0 + 1048);
          v131 = *(v0 + 1040);

          sub_10000BE18(v216, &qword_100835910, &qword_1006C1B68);

          (*(v130 + 104))(v129, enum case for DIPError.Code.invalidStaticWorkflow(_:), v131);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_1001A1FAC(v116);
          v196 = *(v0 + 1200);
          v197 = *(v0 + 1192);
          v198 = *(v0 + 1176);
          v200 = *(v0 + 1168);
          v202 = *(v0 + 1160);
          v206 = *(v0 + 1152);
          v210 = *(v0 + 1144);
          v214 = *(v0 + 1136);
          v215 = *(v0 + 1128);
          v217 = *(v0 + 1120);
          v220 = *(v0 + 1112);
          v223 = *(v0 + 1104);
          v132 = *(v0 + 1080);
          (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v133 = *(v0 + 8);

          return v133();
        }

        else
        {
          v117 = *(v0 + 1192);
          v118 = *(v0 + 1112);
          defaultLogger()();
          sub_1001A2050(v116, v117);
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.debug.getter();
          v121 = os_log_type_enabled(v119, v120);
          v122 = *(v0 + 1192);
          if (v121)
          {
            v123 = *(v0 + 1184);
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v227[0] = v125;
            *v124 = 136315138;
            v126 = (v122 + *(v123 + 44));
            if (v126[1])
            {
              v127 = *v126;
              v128 = v126[1];
            }

            else
            {
              v128 = 0xE300000000000000;
              v127 = 7104878;
            }

            v139 = *(v0 + 1192);
            v224 = *(v0 + 1112);
            v140 = *(v0 + 1096);
            v141 = *(v0 + 1088);

            sub_1001A1FAC(v139);
            v142 = sub_100141FE4(v127, v128, v227);

            *(v124 + 4) = v142;
            _os_log_impl(&_mh_execute_header, v119, v120, "The learnMoreURL is %s", v124, 0xCu);
            sub_10000BB78(v125);

            v138 = *(v140 + 8);
            v138(v224, v141);
          }

          else
          {
            v135 = *(v0 + 1112);
            v136 = *(v0 + 1096);
            v137 = *(v0 + 1088);

            sub_1001A1FAC(v122);
            v138 = *(v136 + 8);
            v138(v135, v137);
          }

          if (*(*(v0 + 1200) + *(*(v0 + 1184) + 76)))
          {
            IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
          }

          v143 = *(v0 + 1104);
          v144 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
          *(v0 + 1432) = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
          defaultLogger()();
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.debug.getter();
          v147 = os_log_type_enabled(v145, v146);
          v148 = *(v0 + 1104);
          v149 = *(v0 + 1096);
          v150 = *(v0 + 1088);
          if (v147)
          {
            v151 = *(v0 + 746);
            v225 = v138;
            v152 = *(v0 + 745);
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v227[0] = v154;
            *v153 = 136315650;
            *(v153 + 4) = sub_100141FE4(0xD000000000000057, 0x8000000100703E60, v227);
            *(v153 + 12) = 1024;
            *(v153 + 14) = v152;
            *(v153 + 18) = 1024;
            *(v153 + 20) = v151;
            _os_log_impl(&_mh_execute_header, v145, v146, "%s isWatchModeOnly = %{BOOL}d, isDeviceMigration = %{BOOL}d", v153, 0x18u);
            sub_10000BB78(v154);

            v225(v148, v150);
          }

          else
          {

            v138(v148, v150);
          }

          v155 = *(v0 + 1200);
          v156 = *(v0 + 1024);
          *(v0 + 1440) = *(*(v0 + 1032) + 136);
          v157 = *(v155 + 64);

          v158 = IdentityProofingConfiguration.documentType.getter();
          v159 = swift_task_alloc();
          *(v0 + 1448) = v159;
          *v159 = v0;
          v159[1] = sub_10019F2B4;
          v160 = *(v0 + 1080);

          return sub_1002A77FC(v160, v157, v158);
        }
      }

LABEL_50:
      *(v0 + 1304) = v28;
      *(v0 + 1296) = v219;
      v85 = &v29[14 * v28];
      v86 = v85[5];
      v87 = v85[6];
      v88 = v85[8];
      *(v0 + 320) = v85[7];
      *(v0 + 336) = v88;
      *(v0 + 304) = v87;
      v89 = v85[3];
      v90 = v85[4];
      *(v0 + 240) = v85[2];
      *(v0 + 256) = v89;
      *(v0 + 272) = v90;
      *(v0 + 288) = v86;
      v91 = *(v0 + 312);
      v92 = *(v0 + 320);
      if (!v92)
      {
        break;
      }

      if (v91 != 0xD00000000000001ELL || 0x8000000100703F80 != v92)
      {
        v93 = *(v0 + 312);
        v94 = *(v0 + 320);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v91 != 0xD000000000000017 || 0x8000000100703FA0 != v92) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v91 != 0xD000000000000016 || 0x8000000100703FC0 != v92) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      v95 = *(v0 + 1144);
      sub_1000F01B0(v0 + 240, v0 + 464);
      defaultLogger()();
      sub_1000F01B0(v0 + 240, v0 + 576);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 240);
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 1272);
      v100 = *(v0 + 1088);
      v209 = *(v0 + 1096) + 8;
      v213 = *(v0 + 1144);
      if (v98)
      {
        v205 = *(v0 + 1272);
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v227[0] = v102;
        *v101 = 136315138;

        sub_1000F01E8(v0 + 240);
        v103 = sub_100141FE4(v91, v92, v227);

        *(v101 + 4) = v103;
        _os_log_impl(&_mh_execute_header, v96, v97, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v101, 0xCu);
        sub_10000BB78(v102);

        v205(v213, v100);
      }

      else
      {
        sub_1000F01E8(v0 + 240);

        v99(v213, v100);
      }
    }

    *(v0 + 1312) = sub_100308788(v91, v92);
    *(v0 + 1320) = v104;
    v105 = objc_opt_self();
    sub_1000F01B0(v0 + 240, v0 + 352);
    v106 = [v105 standardUserDefaults];
    v107._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchStrings.getter();
    v108 = NSUserDefaults.internalBool(forKey:)(v107);

    if (v108)
    {
LABEL_88:
      v161 = *(v0 + 1136);

      defaultLogger()();
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        *v164 = 0;
        _os_log_impl(&_mh_execute_header, v162, v163, "Adding assets to the page as the internal setting is switched on", v164, 2u);
      }

      v165 = *(v0 + 1272);
      v166 = *(v0 + 1136);
      v167 = *(v0 + 1096);
      v168 = *(v0 + 1088);
      v169 = *(v0 + 1032);

      v165(v166, v168);
      *(v0 + 1328) = *(v169 + 144);

      v170 = swift_task_alloc();
      *(v0 + 1336) = v170;
      *v170 = v0;
      v170[1] = sub_10019C4D8;
      v171 = *(v0 + 1216);
      v172 = &off_1007FB260;
      v173 = *(v0 + 1208);
    }

    else
    {
      v109 = *(v0 + 344);
      *(v0 + 1360) = v109;
      if (!v109)
      {
        continue;
      }

      v174 = *(v0 + 1320);
      v175 = *(v0 + 1128);

      defaultLogger()();

      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v176, v177))
      {
        v179 = *(v0 + 1320);
        v180 = *(v0 + 1312);
        v221 = *(v0 + 1128);
        v226 = *(v0 + 1272);
        v181 = *(v0 + 1088);
        v182 = *(v0 + 1096) + 8;
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v227[0] = v184;
        *v183 = 136315138;
        *(v183 + 4) = sub_100141FE4(v180, v179, v227);
        _os_log_impl(&_mh_execute_header, v176, v177, "Image assets field exists for the page -> %s", v183, 0xCu);
        sub_10000BB78(v184);

        v226(v221, v181);
      }

      else
      {
        v185 = *(v0 + 1272);
        v186 = *(v0 + 1128);
        v187 = *(v0 + 1096);
        v188 = *(v0 + 1088);

        v185(v186, v188);
      }

      *(v0 + 1368) = *(*(v0 + 1032) + 144);

      v189 = swift_task_alloc();
      *(v0 + 1376) = v189;
      *v189 = v0;
      v189[1] = sub_10019DBC8;
      v171 = *(v0 + 1216);
      v173 = *(v0 + 1208);
      v172 = v109;
    }

    break;
  }

  return sub_10026F6BC(v173, v171, v172);
}

uint64_t sub_10019F2B4()
{
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v7 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v4 = *(v2 + 1408);

    sub_10000BE18(v2 + 752, &qword_100835910, &qword_1006C1B68);
    v5 = sub_10019F8D4;
  }

  else
  {
    v5 = sub_10019F3E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10019F3E8()
{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1064);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = *(v0 + 1440);
  if (v1)
  {
    v8 = *(v0 + 1424);
    v9 = *(v0 + 1408);
    v10 = *(v0 + 1080);
    v11 = *(v0 + 1072);
    v12 = *(v0 + 1064);

    sub_10000BE18(v0 + 752, &qword_100835910, &qword_1006C1B68);

    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 1432);
    v14 = *(v0 + 1200);
    v15 = *(v0 + 1184);
    v16 = *(v0 + 1024);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006DAE90;
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v17 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    v19 = (v14 + *(v15 + 44));
    v20 = *v19;
    v21 = v19[1];

    IdentityProofingConfiguration.documentType.getter();
    v22 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v61 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v62 = *(v0 + 1432);
    v23 = *(v0 + 1416);
    v24 = *(v0 + 1408);
    v57 = *(v0 + 1400);
    v25 = *(v0 + 1200);
    v26 = *(v0 + 1184);
    v27 = *(v0 + 1080);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 1064);
    v55 = *(v0 + 746);
    v53 = *(v0 + 745);
    v50 = *(v0 + 1024);
    v51 = *(v0 + 1032);

    (*(v28 + 8))(v27, v29);

    sub_1001A20B4((v0 + 688), v57);

    sub_10000BE18(v0 + 752, &qword_100835910, &qword_1006C1B68);
    v30 = (v25 + v26[11]);
    v31 = v30[1];
    v52 = *v30;
    v32 = (v25 + v26[13]);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = (v25 + v26[14]);
    v36 = *v35;
    LOBYTE(v28) = *(v35 + 8);

    v37 = IdentityProofingConfiguration.credentialIdentifier.getter();
    sub_10019A284(v37, v38);

    v39 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v61 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  v40 = *(v0 + 1192);
  v41 = *(v0 + 1176);
  v42 = *(v0 + 1168);
  v43 = *(v0 + 1160);
  v44 = *(v0 + 1152);
  v45 = *(v0 + 1144);
  v46 = *(v0 + 1136);
  v47 = *(v0 + 1128);
  v54 = *(v0 + 1120);
  v56 = *(v0 + 1112);
  v58 = *(v0 + 1104);
  v59 = *(v0 + 1080);
  v60 = *(v0 + 1056);
  sub_1001A1FAC(*(v0 + 1200));

  v48 = *(v0 + 8);

  return v48(v61);
}

uint64_t sub_10019F8D4()
{
  v1 = v0[180];
  v2 = v0[178];

  v3 = v0[182];
  v4 = v0[179];
  v5 = v0[150];
  v6 = v0[148];
  v7 = v0[128];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006DAE90;
  v9 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v8 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v10 = (v5 + *(v6 + 44));
  v11 = *v10;
  v12 = v10[1];

  IdentityProofingConfiguration.documentType.getter();
  v13 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v29 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v14 = v0[149];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[145];
  v18 = v0[144];
  v19 = v0[143];
  v20 = v0[142];
  v21 = v0[141];
  v24 = v0[140];
  v25 = v0[139];
  v26 = v0[138];
  v27 = v0[135];
  v28 = v0[132];
  sub_1001A1FAC(v0[150]);

  v22 = v0[1];

  return v22(v29);
}

uint64_t sub_10019FB74()
{
  v1 = v0[155];
  v2 = v0[150];
  v3 = v0[149];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[145];
  v9 = v0[144];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[141];
  v13 = v0[140];
  v14 = v0[139];
  v15 = v0[138];
  v16 = v0[135];
  (*(v0[131] + 104))(v0[132], enum case for DIPError.Code.internalError(_:), v0[130]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10019FDC8()
{
  sub_1001A1FAC(v0[150]);
  v1 = v0[168];
  v2 = v0[150];
  v3 = v0[149];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[145];
  v9 = v0[144];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[141];
  v13 = v0[140];
  v14 = v0[139];
  v15 = v0[138];
  v16 = v0[135];
  (*(v0[131] + 104))(v0[132], enum case for DIPError.Code.internalError(_:), v0[130]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001A0024()
{
  sub_1001A1FAC(v0[150]);
  v1 = v0[173];
  v2 = v0[150];
  v3 = v0[149];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[145];
  v9 = v0[144];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[141];
  v13 = v0[140];
  v14 = v0[139];
  v15 = v0[138];
  v16 = v0[135];
  (*(v0[131] + 104))(v0[132], enum case for DIPError.Code.internalError(_:), v0[130]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001A0280()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 96);

  v10 = *(v0 + 104);

  v11 = *(v0 + 112);

  v12 = *(v0 + 120);

  v13 = *(v0 + 128);

  v14 = *(v0 + 136);

  v15 = *(v0 + 144);

  v16 = *(v0 + 152);

  return v0;
}

uint64_t sub_1001A0328()
{
  sub_1001A0280();

  return swift_deallocClassInstance();
}

char *sub_1001A0380()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  countAndFlagsBits = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    IdentityProofingConfiguration.state.getter();
    if (!v11)
    {
      (*(v1 + 104))(countAndFlagsBits, enum case for DIPError.Code.idStateUnavailable(_:), v0);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
LABEL_9:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return countAndFlagsBits;
    }
  }

  else
  {
    if (v10 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v15 = 0xD000000000000028;
      v16 = 0x8000000100704540;
      IdentityProofingConfiguration.documentType.getter();
      v13._countAndFlagsBits = IdentityDocumentType.description.getter();
      String.append(_:)(v13);

      v17 = v15;
      (*(v1 + 104))(countAndFlagsBits, enum case for DIPError.Code.unableToCreateAssetReplacementID(_:), v0);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      return countAndFlagsBits;
    }

    IdentityProofingConfiguration.country.getter();
    if (!v12)
    {
      (*(v1 + 104))(countAndFlagsBits, enum case for DIPError.Code.idCountryUnavailable(_:), v0);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_9;
    }
  }

  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001A08A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v9 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v11 = *(v10 + 64) + 15;
  v8[18] = swift_task_alloc();
  v12 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v8[20] = v13;
  v14 = *(v13 - 8);
  v8[21] = v14;
  v15 = *(v14 + 64) + 15;
  v8[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001A09F4, 0, 0);
}

uint64_t sub_1001A09F4()
{
  v22 = v0;
  v1 = v0[12];
  v2 = IdentityProofingActionStatus.rawValue.getter();
  if (v2 == IdentityProofingActionStatus.rawValue.getter())
  {
    v3 = 0xEE00776569766552;
    v4 = 0x6465646E65747865;
  }

  else
  {
    v5 = v0[12];
    v6 = IdentityProofingActionStatus.rawValue.getter();
    v7 = IdentityProofingActionStatus.rawValue.getter();
    if (v6 == v7)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0x676E69646E6570;
    }

    if (v6 == v7)
    {
      v3 = 0x8000000100703DC0;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  v0[23] = v4;
  v0[24] = v3;
  v8 = v0[22];
  defaultLogger()();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;

    v17 = sub_100141FE4(v4, v3, &v21);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Based on the action status, will show %s state UI.", v15, 0xCu);
    sub_10000BB78(v16);
  }

  (*(v13 + 8))(v12, v14);
  v0[25] = *(v0[15] + 152);

  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_1001A0C54;
  v19 = v0[9];

  return sub_1001B20D0(v19);
}

uint64_t sub_1001A0C54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 208);
  v8 = *v3;
  v6[27] = v2;

  v9 = v6[25];
  if (v2)
  {
    v10 = v6[24];

    v11 = sub_1001A1A78;
  }

  else
  {

    v6[28] = a2;
    v6[29] = a1;
    v11 = sub_1001A0DB0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1001A0DB0()
{
  v2 = v0[28];
  v1 = v0[29];
  v0[30] = *(v0[15] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[31] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_1001A0EA0;
  v6 = v0[10];
  v5 = v0[11];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_1001A0EA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = a1;
  v4[34] = v1;

  v7 = v3[31];
  v8 = v3[30];
  if (v1)
  {
    v9 = v4[24];
    swift_setDeallocating();
    sub_10004D860(v7 + 32);

    v10 = sub_1001A1C34;
  }

  else
  {

    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v10 = sub_1001A1030;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1001A1030()
{
  v1 = v0[9];
  v0[35] = *(v0[15] + 152);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1001A10EC;
  v4 = v0[19];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001A10EC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  v2[37] = v0;

  v5 = v2[35];
  if (v0)
  {
    v6 = v2[33];
    v7 = v2[24];

    v8 = sub_1001A1DF0;
  }

  else
  {

    v8 = sub_1001A1240;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001A1240()
{
  v1 = v0[19];
  v2 = v0[9];
  v0[38] = *(v0[15] + 136);
  v3 = *(v1 + 64);

  v4 = IdentityProofingConfiguration.documentType.getter();
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1001A1310;
  v6 = v0[18];

  return sub_1002A77FC(v6, v3, v4);
}

uint64_t sub_1001A1310()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = *(v2 + 192);

    v6 = sub_1001A18AC;
  }

  else
  {
    v6 = sub_1001A1438;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001A1438()
{
  v1 = v0[40];
  v2 = v0[18];
  v3 = v0[16];
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v0[38];
  v10 = v0[33];
  v11 = v0[24];
  if (v1)
  {
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];
    v15 = v0[33];

    (*(v13 + 8))(v12, v14);

    sub_1001A1FAC(v0[19]);
    v16 = v0[9];
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006DAE90;
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v17 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    IdentityProofingConfiguration.documentType.getter();
    v19 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v20 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v40 = v7;
    v41 = v8;
    v39 = v0[23];
    v21 = v0[17];
    v22 = v0[18];
    v23 = v0[16];
    v24 = v0[8];

    (*(v21 + 8))(v22, v23);
    IdentityProofingDisplayMessage.title.getter();
    IdentityProofingDisplayMessage.url.getter();
    IdentityProofingDisplayMessage.primaryButtonTitle.getter();
    IdentityProofingDisplayMessage.secondaryButtonTitle.getter();
    IdentityProofingDisplayMessage.messages.getter();
    v25 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    v26 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006DAE90;
    *(v27 + 32) = v26;
    v28 = v26;
    IdentityProofingDisplayMessage.learnMoreURL.getter();
    if (!v29)
    {
      v31 = v0[13];
      v30 = v0[14];
    }

    v32 = v0[19];
    v33 = v0[9];
    IdentityProofingConfiguration.documentType.getter();
    objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    sub_10000B8B8(v40, v41);
    v20 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v40, v41);
    sub_1001A1FAC(v32);
  }

  v34 = v0[22];
  v36 = v0[18];
  v35 = v0[19];

  v37 = v0[1];

  return v37(v20);
}

uint64_t sub_1001A18AC()
{
  v1 = v0[38];

  v2 = v0[40];
  sub_1001A1FAC(v0[19]);
  v3 = v0[9];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006DAE90;
  v5 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v4 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v6 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v7 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];

  v11 = v0[1];

  return v11(v7);
}

uint64_t sub_1001A1A78()
{
  v1 = v0[27];
  v2 = v0[9];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006DAE90;
  v4 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v3 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v5 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_1001A1C34()
{
  v1 = v0[34];
  v2 = v0[9];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006DAE90;
  v4 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v3 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v5 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_1001A1DF0()
{
  v1 = v0[37];
  v2 = v0[9];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006DAE90;
  v4 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v3 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v5 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v6 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_1001A1FAC(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A2008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A2050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A20B4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[4];
  v36 = a2;
  v37 = v3;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Workflow did not contain doc scan settings, using default config.", v12, 2u);
    }

    (*(v6 + 8))(v9, v5);
  }

  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.pdf417NotRequired.getter();
  v16 = NSUserDefaults.internalBool(forKey:)(v15);

  if (!v16 && *a1 != 1)
  {
    v17 = *(a1 + 8);
  }

  v18 = [v13 standardUserDefaults];
  v19._countAndFlagsBits = static DaemonInternalDefaultsKeys.aamvaCompliantNotRequired.getter();
  v20 = NSUserDefaults.internalBool(forKey:)(v19);

  if (!v20 && *a1 != 1)
  {
    v21 = *(a1 + 9);
  }

  v22 = [v13 standardUserDefaults];
  v23._countAndFlagsBits = static DaemonInternalDefaultsKeys.stateMatchNotRequired.getter();
  v24 = NSUserDefaults.internalBool(forKey:)(v23);

  if (!v24 && *a1 != 1)
  {
    v25 = *(a1 + 10);
  }

  v26 = [v13 standardUserDefaults];
  v27._countAndFlagsBits = static DaemonInternalDefaultsKeys.docScanMaxRetakeCount.getter();
  v38 = NSUserDefaults.internalInt(forKey:)(v27);
  is_nil = v38.is_nil;

  v29 = *a1;
  if (is_nil)
  {
    if (*a1 == 1)
    {
      v37 = 0;
    }

    else
    {
      v30 = a1[2];
      v31 = *(a1 + 24);
      if ((a1[7] & 1) == 0)
      {
        v34 = a1[6];
      }
    }
  }

  else if (*a1 == 1)
  {
    v37 = 0;
  }

  else
  {
    v32 = a1[2];
    v33 = *(a1 + 24);
  }

  type metadata accessor for IdentityDocScanConfig();

  return IdentityDocScanConfig.__allocating_init(pdf417ParsingConfigs:requiresPDF417:requiresAAMVACompliant:requiresStateMatch:issuerIdentificationNumber:crTimeout:crManualDelay:maxRetakeCount:)();
}

uint64_t sub_1001A2448()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A24A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001A24E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v8);
  if (!v2)
  {
    v7 = v9;
    *a1 = v8;
    *(a1 + 8) = v7;
  }

  return result;
}

uint64_t sub_1001A252C(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return _swift_task_switch(sub_1001A254C, 0, 0);
}

uint64_t sub_1001A254C()
{
  if (v0[19])
  {
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v1 = v0[18];
    v2 = *(qword_100882228 + 16);
    v0[20] = v2;
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v0[21] = v4;
    v0[2] = v0;
    v0[7] = v0 + 23;
    v0[3] = sub_1001A2714;
    v5 = swift_continuation_init();
    v0[17] = sub_100007224(&qword_1008486C0, &unk_1006DAFB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10058DEE8;
    v0[13] = &unk_10080A4D0;
    v0[14] = v5;
    [v3 isPIITokenAvailableForIdentifier:v4 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_1001A2714()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001A2894;
  }

  else
  {
    v3 = sub_1001A2824;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A2824()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001A2894()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4(0);
}

uint64_t sub_1001A2944()
{
  if (*(v0 + 24))
  {

    v1 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A2988()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A2A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083BD28, &qword_1006DA240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D0A0, &qword_1006DAFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A2B20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001A2B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100027B9C;

  return sub_1001949B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001A2C54(uint64_t a1, char a2)
{
  *(v3 + 2944) = v2;
  *(v3 + 921) = a2;
  *(v3 + 2936) = a1;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 2952) = v4;
  v5 = *(v4 - 8);
  *(v3 + 2960) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 2968) = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v3 + 2976) = v7;
  v8 = *(v7 - 8);
  *(v3 + 2984) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 2992) = swift_task_alloc();
  v10 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v3 + 3000) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 3008) = swift_task_alloc();
  *(v3 + 3016) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v3 + 3024) = v12;
  v13 = *(v12 - 8);
  *(v3 + 3032) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 3040) = swift_task_alloc();
  *(v3 + 3048) = swift_task_alloc();
  *(v3 + 3056) = swift_task_alloc();
  *(v3 + 3064) = swift_task_alloc();
  *(v3 + 3072) = swift_task_alloc();

  return _swift_task_switch(sub_1001A2E40, 0, 0);
}

uint64_t sub_1001A2E40()
{
  countAndFlagsBits = v0[192]._countAndFlagsBits;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "prepare UI Passport proofing from static workflow", v4, 2u);
  }

  v5 = v0[192]._countAndFlagsBits;
  object = v0[189]._object;
  v7 = v0[189]._countAndFlagsBits;
  v8 = v0[183]._object;

  v9 = object[1];
  v0[192]._object = v9;
  v9(v5, v7);
  IdentityProofingConfiguration.country.getter();
  if (v10)
  {
    v11 = v0[184]._countAndFlagsBits;
    v12 = v0[183]._object;
    v13 = String.lowercased()();

    v0[193] = v13;
    v0[194]._countAndFlagsBits = *(v11 + 152);

    v14 = IdentityProofingConfiguration.documentType.getter();
    v15 = swift_task_alloc();
    v0[194]._object = v15;
    *v15 = v0;
    v15[1] = sub_1001A3268;
    v16 = v0[188]._object;

    return sub_1001AA1E4(v16, v14);
  }

  else
  {
    (*(v0[185]._countAndFlagsBits + 104))(v0[185]._object, enum case for DIPError.Code.idStateUnavailable(_:), v0[184]._object);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = v0[192]._countAndFlagsBits;
    v20 = v0[191]._object;
    v21 = v0[191]._countAndFlagsBits;
    v22 = v0[190]._object;
    v23 = v0[190]._countAndFlagsBits;
    v24 = v0[188]._object;
    v25 = v0[188]._countAndFlagsBits;
    v26 = v0[187]._countAndFlagsBits;
    (*(v0[185]._countAndFlagsBits + 104))(v0[185]._object, enum case for DIPError.Code.internalError(_:), v0[184]._object);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v0->_object;

    return v18();
  }
}

uint64_t sub_1001A3268()
{
  v2 = *v1;
  v3 = *(*v1 + 3112);
  v4 = *v1;
  v2[390] = v0;

  v5 = v2[388];
  if (v0)
  {
    v6 = v2[387];

    v7 = sub_1001A6340;
  }

  else
  {

    v7 = sub_1001A33AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001A33AC()
{
  v151 = v0;
  v1 = v0[377];
  v2 = v0[375];
  v0[366] = _swiftEmptyArrayStorage;
  v3 = *(v1 + *(v2 + 88));
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v129 = v0 + 366;
      v6 = (v3 + 40);
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_77;
        }

        v7 = *v6;
        v0[391] = *v6;
        ++v5;
        v8 = *(v6 - 8);
        v9 = 0x6863746177;
        if (v8 != 1)
        {
          v9 = 28004;
        }

        v10 = 0xE500000000000000;
        if (v8 != 1)
        {
          v10 = 0xE200000000000000;
        }

        if (*(v6 - 8))
        {
          v11 = v9;
        }

        else
        {
          v11 = 1819047270;
        }

        if (*(v6 - 8))
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        v13 = *(v0 + 921);
        if (*(v0 + 921))
        {
          if (v13 == 1)
          {
            v14 = 0x6863746177;
          }

          else
          {
            v14 = 28004;
          }

          if (v13 == 1)
          {
            v15 = 0xE500000000000000;
          }

          else
          {
            v15 = 0xE200000000000000;
          }

          if (v11 != v14)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = 0xE400000000000000;
          if (v11 != 1819047270)
          {
            goto LABEL_26;
          }
        }

        if (v12 == v15)
        {

LABEL_34:
          v26 = *(v7 + 16);
          v0[392] = v26;
          v27 = _swiftEmptyArrayStorage;
          if (v26)
          {
            v0[394] = _swiftEmptyArrayStorage;
            v0[393] = 0;
            v28 = v0[391];
            if (*(v28 + 16))
            {
              v29 = 0;
              v149 = v0;
              while (1)
              {
                v30 = v0[383];
                v31 = (v28 + 112 * v29);
                v0[395] = v31[5];
                v0[396] = v31[6];
                v0[397] = v31[7];
                v0[398] = v31[8];
                v0[399] = v31[9];
                v32 = v31[14];
                v140 = v31[13];
                v0[400] = v32;
                v0[401] = v31[15];
                v149[402] = v31[16];
                v33 = v31[17];
                v149[403] = v33;
                v149[404] = v31[12];
                v149[405] = v31[10];

                defaultLogger()();

                v34 = Logger.logObject.getter();
                LOBYTE(v30) = static os_log_type_t.debug.getter();

                v35 = v32;

                v0 = v149;

                v145 = v33;

                v138 = v30;
                v36 = os_log_type_enabled(v34, v30);
                v37 = v149[385];
                v38 = v149[383];
                v39 = v149[379];
                v40 = v149[378];
                if (v36)
                {
                  v41 = swift_slowAlloc();
                  v136 = v37;
                  v42 = swift_slowAlloc();
                  v150[0] = v42;
                  *v41 = 136315138;
                  if (v32)
                  {
                    v43 = v140;
                  }

                  else
                  {
                    v43 = 0;
                  }

                  v44 = v35;
                  if (!v35)
                  {
                    v35 = 0xE000000000000000;
                  }

                  v45 = sub_100141FE4(v43, v35, v150);

                  *(v41 + 4) = v45;
                  _os_log_impl(&_mh_execute_header, v34, v138, "PAGE %s", v41, 0xCu);
                  sub_10000BB78(v42);

                  v136(v38, v40);
                  v46 = v140;
                  v47 = v44;
                  v0 = v149;
                }

                else
                {

                  v37(v38, v40);
                  v46 = v140;
                  v47 = v32;
                }

                v48 = sub_100308788(v46, v47);
                v0[406] = v48;
                v0[407] = v49;
                if (v33)
                {
                  break;
                }

                if (v48 == 0xD000000000000012 && 0x80000001006FE390 == v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  v50 = v0[399];
                  if (v50[2] >= 2uLL)
                  {
                    v51 = v0[367];
                    v52 = *(v0[368] + 152);
                    v53 = v50[6];
                    v54 = v50[7];

                    sub_1001B286C(v51, v53, v54);
                  }
                }

                v132 = v0[406];
                v134 = v0[407];
                v55 = v0[405];
                v141 = v0[404];
                v146 = v0[403];
                v56 = v0[402];
                v57 = v0[401];
                v139 = v0[400];
                v58 = v0[399];
                v59 = v0[398];
                v60 = v0[397];
                v61 = v0[396];
                v62 = v0[395];
                v63 = v0[381];
                v64 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

                v65 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

                defaultLogger()();
                v66 = v65;
                v67 = Logger.logObject.getter();
                v68 = static os_log_type_t.debug.getter();

                v69 = os_log_type_enabled(v67, v68);
                v70 = v0[385];
                v71 = v0[381];
                v72 = v0[378];
                if (v69)
                {
                  v147 = v0[379] + 8;
                  v142 = v0[385];
                  v73 = swift_slowAlloc();
                  v74 = swift_slowAlloc();
                  v150[0] = v74;
                  *v73 = 136446210;
                  v75 = IdentityProofingUIConfig.view.getter();
                  v77 = sub_100141FE4(v75, v76, v150);

                  *(v73 + 4) = v77;
                  _os_log_impl(&_mh_execute_header, v67, v68, "%{public}s to be shown to the user from static views", v73, 0xCu);
                  sub_10000BB78(v74);

                  v142(v71, v72);
                }

                else
                {

                  v70(v71, v72);
                }

                v78 = v66;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v81 = *((*v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                v79 = v0[392];
                v80 = v0[393] + 1;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v27 = v0[366];
                if (v80 == v79)
                {

                  goto LABEL_62;
                }

                v29 = v0[393] + 1;
                v0[394] = v27;
                v0[393] = v29;
                v28 = v0[391];
                if (v29 >= *(v28 + 16))
                {
                  goto LABEL_76;
                }
              }

              v82 = v48;
              v83 = v0[382];
              v84 = v49;

              defaultLogger()();

              v85 = Logger.logObject.getter();
              v86 = static os_log_type_t.debug.getter();
              v87 = v84;

              v88 = os_log_type_enabled(v85, v86);
              v89 = v0[385];
              v90 = v0[382];
              v91 = v0[378];
              if (v88)
              {
                v143 = v0[379] + 8;
                v92 = swift_slowAlloc();
                v93 = swift_slowAlloc();
                v150[0] = v93;
                *v92 = 136315138;
                *(v92 + 4) = sub_100141FE4(v82, v87, v150);
                _os_log_impl(&_mh_execute_header, v85, v86, "Image assets field exists for the page -> %s", v92, 0xCu);
                sub_10000BB78(v93);
                v33 = v145;
              }

              v89(v90, v91);
              v0[408] = *(v0[368] + 144);

              v113 = swift_task_alloc();
              v0[409] = v113;
              *v113 = v0;
              v113[1] = sub_1001A43D0;
              v114 = v0[387];
              v115 = v0[386];

              return sub_10026F6BC(v115, v114, v33);
            }

LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              goto LABEL_79;
            }
          }

          else
          {
LABEL_62:
            v0[412] = v27;
            v94 = v0[391];
            v95 = v0[387];

            if (v27 >> 62)
            {
              goto LABEL_78;
            }

            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
            {
LABEL_79:
              v1 = v0[377];
              v126 = v0[371];
              v127 = v0[370];
              v128 = v0[369];

              (*(v127 + 104))(v126, enum case for DIPError.Code.invalidStaticWorkflow(_:), v128);
              sub_1000402AC(_swiftEmptyArrayStorage);
              type metadata accessor for DIPError();
              sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
              swift_allocError();
              goto LABEL_30;
            }
          }

          v96 = v0[380];
          v97 = v0[377];
          v98 = v0[376];
          defaultLogger()();
          sub_1001A2050(v97, v98);
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = v0[376];
            v102 = v0[375];
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v150[0] = v104;
            *v103 = 136315138;
            v105 = (v101 + *(v102 + 44));
            if (v105[1])
            {
              v106 = *v105;
              v107 = v105[1];
            }

            else
            {
              v107 = 0xE300000000000000;
              v106 = 7104878;
            }

            v144 = v0[380];
            v148 = v0[385];
            v116 = v0[379];
            v117 = v0[378];
            v118 = v0[376];

            sub_1001A1FAC(v118);
            v119 = sub_100141FE4(v106, v107, v150);

            *(v103 + 4) = v119;
            _os_log_impl(&_mh_execute_header, v99, v100, "The learnMoreURL is %s", v103, 0xCu);
            sub_10000BB78(v104);

            v148(v144, v117);
          }

          else
          {
            v108 = v0[385];
            v109 = v0[380];
            v110 = v0[379];
            v111 = v0[378];
            v112 = v0[376];

            sub_1001A1FAC(v112);
            v108(v109, v111);
          }

          v120 = v0[377];
          v121 = v0[367];
          v0[413] = *(v0[368] + 136);
          v122 = *(v120 + 64);

          v123 = IdentityProofingConfiguration.documentType.getter();
          v124 = swift_task_alloc();
          v0[414] = v124;
          *v124 = v0;
          v124[1] = sub_1001A5320;
          v125 = v0[374];

          return sub_1002A77FC(v125, v122, v123);
        }

LABEL_26:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_34;
        }

        v6 += 2;
        if (v4 == v5)
        {
          v1 = v0[377];
          break;
        }
      }
    }
  }

  v17 = v0[387];
  v18 = v0[371];
  v19 = v0[370];
  v20 = v0[369];

  (*(v19 + 104))(v18, enum case for DIPError.Code.invalidStaticWorkflow(_:), v20);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
LABEL_30:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001A1FAC(v1);
  v21 = v0[384];
  v22 = v0[383];
  v23 = v0[382];
  v130 = v0[381];
  v131 = v0[380];
  v133 = v0[377];
  v135 = v0[376];
  v137 = v0[374];
  (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001A43D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3272);
  v6 = *v2;
  v4[410] = v1;

  v7 = v4[408];
  if (v1)
  {
    v8 = v4[407];
    v21 = v4[404];
    v22 = v4[405];
    v9 = v4[403];
    v10 = v4[402];
    v20 = v4[400];
    v11 = v4[399];
    v12 = v4[398];
    v13 = v4[396];
    v14 = v4[394];
    v15 = v4[391];
    v16 = v4[387];

    swift_bridgeObjectRelease_n();

    v17 = sub_1001A6548;
  }

  else
  {
    v18 = v4[403];

    v4[411] = a1;
    v17 = sub_1001A45D4;
  }

  return _swift_task_switch(v17, 0, 0);
}

uint64_t sub_1001A45D4()
{
  v130 = v0;
  v106 = v0 + 366;
  v107 = v0[411];
  v1 = v0[407];
  v2 = v0[406];
  while (1)
  {
    v3 = v2 == 0xD000000000000012 && 0x80000001006FE390 == v1;
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = v0[399];
      if (v4[2] >= 2uLL)
      {
        v5 = v0[367];
        v6 = *(v0[368] + 152);
        v7 = v4[6];
        v8 = v4[7];

        sub_1001B286C(v5, v7, v8);
      }
    }

    v110 = v0[406];
    v112 = v0[407];
    v119 = v0[404];
    v124 = v0[403];
    v9 = v0[402];
    v10 = v0[401];
    v115 = v0[405];
    v117 = v0[400];
    v11 = v0[399];
    v12 = v0[398];
    v13 = v0[397];
    v14 = v0[396];
    v15 = v0[395];
    v16 = v0[381];
    v17 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    v18 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    defaultLogger()();
    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[385];
    v24 = v0[381];
    v25 = v0[379];
    v26 = v0[378];
    if (v22)
    {
      v120 = v0[385];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v129[0] = v28;
      *v27 = 136446210;
      v29 = IdentityProofingUIConfig.view.getter();
      v31 = sub_100141FE4(v29, v30, v129);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s to be shown to the user from static views", v27, 0xCu);
      sub_10000BB78(v28);

      v120(v24, v26);
    }

    else
    {

      v23(v24, v26);
    }

    v32 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v54 = *((*v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v33 = v0[392];
    v34 = v0[393] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v35 = v0[366];
    if (v34 == v33)
    {
      break;
    }

    v36 = v0[393] + 1;
    v0[394] = v35;
    v0[393] = v36;
    v37 = v0[391];
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v38 = v0[383];
    v39 = (v37 + 112 * v36);
    v0[395] = v39[5];
    v0[396] = v39[6];
    v0[397] = v39[7];
    v0[398] = v39[8];
    v0[399] = v39[9];
    v40 = v39[14];
    v125 = v39[13];
    v0[400] = v40;
    v0[401] = v39[15];
    v0[402] = v39[16];
    v41 = v39[17];
    v0[403] = v41;
    v0[404] = v39[12];
    v0[405] = v39[10];

    defaultLogger()();

    v121 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    v43 = v41;

    v44 = os_log_type_enabled(v121, v42);
    v45 = v0[385];
    v46 = v0[383];
    v47 = v0[379];
    v48 = v0[378];
    if (v44)
    {
      v49 = swift_slowAlloc();
      v113 = v45;
      v50 = swift_slowAlloc();
      v129[0] = v50;
      *v49 = 136315138;
      if (v40)
      {
        v51 = v125;
      }

      else
      {
        v51 = 0;
      }

      if (v40)
      {
        v52 = v40;
      }

      else
      {
        v52 = 0xE000000000000000;
      }

      v53 = sub_100141FE4(v51, v52, v129);
      v43 = v41;

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v121, v42, "PAGE %s", v49, 0xCu);
      sub_10000BB78(v50);

      v113(v46, v48);
    }

    else
    {

      v45(v46, v48);
    }

    v2 = sub_100308788(v125, v40);
    v0[406] = v2;
    v0[407] = v1;
    if (v43)
    {
      v126 = v2;
      v70 = v0[382];
      v71 = v1;

      defaultLogger()();

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      v74 = v71;

      v75 = os_log_type_enabled(v72, v73);
      v76 = v0[385];
      v77 = v0[382];
      v78 = v0[379];
      v79 = v0[378];
      if (v75)
      {
        v80 = swift_slowAlloc();
        v81 = v43;
        v82 = swift_slowAlloc();
        v129[0] = v82;
        *v80 = 136315138;
        *(v80 + 4) = sub_100141FE4(v126, v74, v129);
        _os_log_impl(&_mh_execute_header, v72, v73, "Image assets field exists for the page -> %s", v80, 0xCu);
        sub_10000BB78(v82);
        v43 = v81;
      }

      v76(v77, v79);
      v0[408] = *(v0[368] + 144);

      v83 = swift_task_alloc();
      v0[409] = v83;
      *v83 = v0;
      v83[1] = sub_1001A43D0;
      v84 = v0[387];
      v85 = v0[386];

      return sub_10026F6BC(v85, v84, v43);
    }
  }

  v0[412] = v35;
  v55 = v0[391];
  v56 = v0[387];

  if (!(v35 >> 62))
  {
    v57 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_28;
  }

LABEL_47:
  v57 = _CocoaArrayWrapper.endIndex.getter();
LABEL_28:
  v58 = v0[377];
  if (v57 < 1)
  {
    v87 = v0[371];
    v88 = v0[370];
    v89 = v0[369];

    (*(v88 + 104))(v87, enum case for DIPError.Code.invalidStaticWorkflow(_:), v89);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001A1FAC(v58);
    v108 = v0[384];
    v109 = v0[383];
    v111 = v0[382];
    v114 = v0[381];
    v116 = v0[380];
    v118 = v0[377];
    v122 = v0[376];
    v127 = v0[374];
    (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v90 = v0[1];

    return v90();
  }

  else
  {
    v59 = v0[380];
    v60 = v0[376];
    defaultLogger()();
    sub_1001A2050(v58, v60);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v0[376];
      v64 = v0[375];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v129[0] = v66;
      *v65 = 136315138;
      v67 = (v63 + *(v64 + 44));
      if (v67[1])
      {
        v68 = *v67;
        v69 = v67[1];
      }

      else
      {
        v69 = 0xE300000000000000;
        v68 = 7104878;
      }

      v123 = v0[380];
      v128 = v0[385];
      v96 = v0[379];
      v97 = v0[378];
      v98 = v0[376];

      sub_1001A1FAC(v98);
      v99 = sub_100141FE4(v68, v69, v129);

      *(v65 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v61, v62, "The learnMoreURL is %s", v65, 0xCu);
      sub_10000BB78(v66);

      v128(v123, v97);
    }

    else
    {
      v91 = v0[385];
      v92 = v0[380];
      v93 = v0[379];
      v94 = v0[378];
      v95 = v0[376];

      sub_1001A1FAC(v95);
      v91(v92, v94);
    }

    v100 = v0[377];
    v101 = v0[367];
    v0[413] = *(v0[368] + 136);
    v102 = *(v100 + 64);

    v103 = IdentityProofingConfiguration.documentType.getter();
    v104 = swift_task_alloc();
    v0[414] = v104;
    *v104 = v0;
    v104[1] = sub_1001A5320;
    v105 = v0[374];

    return sub_1002A77FC(v105, v102, v103);
  }
}

uint64_t sub_1001A5320()
{
  v2 = *(*v1 + 3312);
  v5 = *v1;
  *(*v1 + 3320) = v0;

  if (v0)
  {
    v3 = sub_1001A59C8;
  }

  else
  {
    v3 = sub_1001A5434;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001A5434()
{
  v1 = v0[415];
  v2 = v0[374];
  v3 = v0[372];
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A6758(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v0[416] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[417] = v7;
  v8 = v0[374];
  v9 = v0[372];
  v10 = (v0[373] + 8);
  if (v1)
  {
    v11 = v0[413];
    v12 = v0[412];

    (*v10)(v8, v9);

    v13 = v0[377];
    v14 = v0[375];
    v15 = v0[367];
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006DAE90;
    v17 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v16 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    v18 = (v13 + *(v14 + 44));
    v19 = *v18;
    v20 = v18[1];

    IdentityProofingConfiguration.documentType.getter();
    v21 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v45 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    v22 = v0[384];
    v23 = v0[383];
    v24 = v0[382];
    v25 = v0[381];
    v26 = v0[380];
    v27 = v0[376];
    v28 = v0[374];
    v29 = v0[371];
    sub_1001A1FAC(v0[377]);

    v30 = v0[1];

    v30(v45);
    return;
  }

  v31 = v0[413];
  v32 = v0[377];
  v33 = v0[375];

  (*v10)(v8, v9);
  v34 = *(v32 + *(v33 + 92));
  if (v34 && (v35 = *(v34 + 16)) != 0)
  {
    v36 = 0;
    v37 = (v34 + 48);
    while (v36 < *(v34 + 16))
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v40 = *(v37 - 2);
      objc_allocWithZone(type metadata accessor for RegionMinimumAge());

      RegionMinimumAge.init(countryCode:age:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v36;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v37 += 3;
      if (v35 == v36)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v0[418] = _swiftEmptyArrayStorage;
    if (*(v0[377] + *(v0[375] + 76)))
    {
      IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
      IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
      IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
    }

    v42 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
    v0[419] = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
    if (qword_100832B60 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v43 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v43 + 54);
  sub_1000318FC(&v43[4], (v0 + 328));
  os_unfair_lock_unlock(v43 + 54);
  sub_100020260((v0 + 328), (v0 + 361));
  sub_100031918((v0 + 328));
  v0[420] = *sub_10000BA08(v0 + 361, v0[364]);
  v44 = swift_task_alloc();
  v0[421] = v44;
  *v44 = v0;
  v44[1] = sub_1001A5C18;

  sub_10050886C((v0 + 2));
}

uint64_t sub_1001A59C8()
{
  v1 = v0[413];
  v2 = v0[412];

  v3 = v0[415];
  v4 = v0[377];
  v5 = v0[375];
  v6 = v0[367];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006DAE90;
  v8 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v7 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v9 = (v4 + *(v5 + 44));
  v10 = *v9;
  v11 = v9[1];

  IdentityProofingConfiguration.documentType.getter();
  v12 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v23 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v13 = v0[384];
  v14 = v0[383];
  v15 = v0[382];
  v16 = v0[381];
  v17 = v0[380];
  v18 = v0[376];
  v19 = v0[374];
  v20 = v0[371];
  sub_1001A1FAC(v0[377]);

  v21 = v0[1];

  return v21(v23);
}

uint64_t sub_1001A5C18()
{
  v2 = *v1;
  v3 = *(*v1 + 3368);
  v7 = *v1;
  *(*v1 + 3376) = v0;

  if (v0)
  {
    v4 = *(v2 + 3360);
    v5 = sub_1001A6028;
  }

  else
  {
    v5 = sub_1001A5D34;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001A5D34()
{
  memcpy((v0 + 1776), (v0 + 48), 0x1A1uLL);
  sub_1000AA624(v0 + 1776, v0 + 2200);
  sub_1000F2758(v0 + 16);
  memcpy((v0 + 1352), (v0 + 1776), 0x1A1uLL);
  nullsub_7(v0 + 1352);
  memcpy((v0 + 504), (v0 + 1352), 0x1A1uLL);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3000);
  v3 = *(v0 + 2936);
  sub_10000BB78((v0 + 2888));
  *(v0 + 2824) = 1;
  *(v0 + 2832) = 0u;
  *(v0 + 2848) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 2880) = 0;
  sub_1001A20B4((v0 + 2824), 0);
  v4 = (v1 + v2[11]);
  v39 = *v4;
  v5 = v4[1];
  v6 = (v1 + v2[13]);
  v38 = *v6;
  v37 = *(v6 + 8);
  v7 = (v1 + v2[14]);
  v36 = *v7;
  v35 = *(v7 + 8);

  IdentityProofingConfiguration.documentType.getter();
  v8 = *(v1 + v2[20]);
  v9 = (v1 + v2[24]);
  v34 = *v9;
  v33 = *(v9 + 8);
  v10 = (v1 + v2[25]);
  v32 = *v10;
  v11 = *(v10 + 8);
  memcpy((v0 + 928), (v0 + 504), 0x1A1uLL);
  v12 = sub_10010F2A8(v0 + 928);

  if (v12 != 1)
  {
    sub_10010F2C0(v0 + 504);
    v13 = *(v0 + 1344);
  }

  v14 = *(v0 + 3352);
  v15 = *(v0 + 3344);
  v16 = *(v0 + 3336);
  v17 = *(v0 + 3328);
  v18 = *(v0 + 3296);
  v19 = *(v0 + 921) - 1 < 2;
  v20 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  v21 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v40 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  v22 = *(v0 + 3072);
  v23 = *(v0 + 3064);
  v24 = *(v0 + 3056);
  v25 = *(v0 + 3048);
  v26 = *(v0 + 3040);
  v27 = *(v0 + 3008);
  v28 = *(v0 + 2992);
  v29 = *(v0 + 2968);
  sub_1001A1FAC(*(v0 + 3016));

  v30 = *(v0 + 8);

  return v30(v40);
}

uint64_t sub_1001A6028()
{
  v1 = *(v0 + 3376);

  return _swift_task_switch(sub_1001A6090, 0, 0);
}

uint64_t sub_1001A6090()
{
  sub_10010ED70(v0 + 504);
  v1 = *(v0 + 3016);
  v2 = *(v0 + 3000);
  v3 = *(v0 + 2936);
  sub_10000BB78((v0 + 2888));
  *(v0 + 2824) = 1;
  *(v0 + 2832) = 0u;
  *(v0 + 2848) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 2880) = 0;
  sub_1001A20B4((v0 + 2824), 0);
  v4 = (v1 + v2[11]);
  v39 = *v4;
  v5 = v4[1];
  v6 = (v1 + v2[13]);
  v38 = *v6;
  v37 = *(v6 + 8);
  v7 = (v1 + v2[14]);
  v36 = *v7;
  v35 = *(v7 + 8);

  IdentityProofingConfiguration.documentType.getter();
  v8 = *(v1 + v2[20]);
  v9 = (v1 + v2[24]);
  v34 = *v9;
  v33 = *(v9 + 8);
  v10 = (v1 + v2[25]);
  v32 = *v10;
  v11 = *(v10 + 8);
  memcpy((v0 + 928), (v0 + 504), 0x1A1uLL);
  v12 = sub_10010F2A8(v0 + 928);

  if (v12 != 1)
  {
    sub_10010F2C0(v0 + 504);
    v13 = *(v0 + 1344);
  }

  v14 = *(v0 + 3352);
  v15 = *(v0 + 3344);
  v16 = *(v0 + 3336);
  v17 = *(v0 + 3328);
  v18 = *(v0 + 3296);
  v19 = *(v0 + 921) - 1 < 2;
  v20 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  v21 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v40 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  v22 = *(v0 + 3072);
  v23 = *(v0 + 3064);
  v24 = *(v0 + 3056);
  v25 = *(v0 + 3048);
  v26 = *(v0 + 3040);
  v27 = *(v0 + 3008);
  v28 = *(v0 + 2992);
  v29 = *(v0 + 2968);
  sub_1001A1FAC(*(v0 + 3016));

  v30 = *(v0 + 8);

  return v30(v40);
}

uint64_t sub_1001A6340()
{
  v1 = v0[390];
  v2 = v0[384];
  v3 = v0[383];
  v6 = v0[382];
  v7 = v0[381];
  v8 = v0[380];
  v9 = v0[377];
  v10 = v0[376];
  v11 = v0[374];
  (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001A6548()
{
  sub_1001A1FAC(v0[377]);
  v1 = v0[410];
  v2 = v0[384];
  v3 = v0[383];
  v6 = v0[382];
  v7 = v0[381];
  v8 = v0[380];
  v9 = v0[377];
  v10 = v0[376];
  v11 = v0[374];
  (*(v0[370] + 104))(v0[371], enum case for DIPError.Code.internalError(_:), v0[369]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A6758(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001A6758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A67A0()
{
  sub_100007224(&qword_10083D4C8, &unk_1006DB220);
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BF740;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DIPError.Code.topekaWorkflowBlockedDeviceLimitReached(_:), v0);
  result = (v6)(v5 + v2, enum case for DIPError.Code.topekaWorkflowBlockedIDLimitReached(_:), v0);
  qword_10083D0B0 = v4;
  return result;
}

uint64_t sub_1001A68B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D4A0, &qword_1006DFB20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = *(a2 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 88) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1003C5A18(0, v9[2] + 1, 1, v9);
    *(a2 + 88) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1003C5A18(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 88) = v9;
  return result;
}

uint64_t sub_1001A6A30(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 120);
  sub_10000BBC4(a1, v20, &qword_10083D0A0, &qword_1006DAFC0);
  v14 = swift_allocObject();
  v15 = v20[1];
  *(v14 + 24) = v20[0];
  *(v14 + 16) = v1;
  *(v14 + 40) = v15;
  *(v14 + 56) = v21;
  aBlock[4] = sub_1001B71F0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_10080A5C0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001B7214(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_100031834();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1001A6D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(0xD000000000000020, 0x8000000100704DE0, &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s updating with new workflow", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  sub_1001B725C(a2, a1 + 144);
  return swift_endAccess();
}

uint64_t sub_1001A6ED4(void *a1)
{
  v3 = *v1;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = v1[14];
  v1[14] = 0;

  dispatch_group_enter(v1[13]);
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;
  v11[6] = v3;

  v12 = a1;
  v13 = sub_1003E653C(0, 0, v7, &unk_1006DB1F8, v11);
  v14 = v1[16];
  v1[16] = v13;

  v10(v7, 1, 1, v9);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_1003E653C(0, 0, v7, &unk_1006DB208, v15);
}

uint64_t sub_1001A70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_100007224(&qword_10083D4C0, &unk_1006DB210);
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v9 = sub_100007224(&qword_10083D4A0, &qword_1006DFB20);
  v5[32] = v9;
  v10 = *(v9 - 8);
  v5[33] = v10;
  v11 = *(v10 + 64) + 15;
  v5[34] = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  v5[35] = v12;
  v13 = *(v12 - 8);
  v5[36] = v13;
  v14 = *(v13 + 64) + 15;
  v5[37] = swift_task_alloc();
  v15 = type metadata accessor for DIPError();
  v5[38] = v15;
  v16 = *(v15 - 8);
  v5[39] = v16;
  v17 = *(v16 + 64) + 15;
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v5[44] = v18;
  v19 = *(v18 - 8);
  v5[45] = v19;
  v20 = *(v19 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v21 = type metadata accessor for IdentityDocumentType.Category();
  v5[50] = v21;
  v22 = *(v21 - 8);
  v5[51] = v22;
  v23 = *(v22 + 64) + 15;
  v5[52] = swift_task_alloc();

  return _swift_task_switch(sub_1001A73A0, 0, 0);
}

uint64_t sub_1001A73A0()
{
  if (qword_100832C28 != -1)
  {
    swift_once();
  }

  sub_100188010();
  if (qword_100832B40 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_1001A74A0;

  return sub_100024CD8();
}

uint64_t sub_1001A74A0()
{
  v1 = *(*v0 + 424);
  v3 = *v0;

  return _swift_task_switch(sub_1001A759C, 0, 0);
}

uint64_t sub_1001A759C()
{
  v0[54] = *(v0[27] + 24);

  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1001A764C;
  v2 = v0[28];

  return sub_1002D5BFC((v0 + 8), v2);
}

uint64_t sub_1001A764C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_1001A8D54;
  }

  else
  {
    v5 = *(v2 + 432);

    v4 = sub_1001A7768;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001A7768()
{
  v1 = v0[27];
  sub_100020260((v0 + 8), (v0 + 13));
  swift_beginAccess();
  sub_1000B2764((v0 + 13), v1 + 144, &qword_10083D0A0, &qword_1006DAFC0);
  swift_endAccess();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_1001A784C;
  v4 = v0[27];
  v3 = v0[28];

  return sub_1001AAAAC((v0 + 2), (v0 + 8), v3);
}

uint64_t sub_1001A784C()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1001A9410;
  }

  else
  {
    v3 = sub_1001A7960;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A7960()
{
  v1 = v0[58];
  v2 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  v3 = dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  v0[59] = v3;
  v0[60] = v4;
  if (v1)
  {
    sub_1001B7154((v0 + 2));
    sub_10000BB78(v0 + 8);
    v5 = v0[43];
    v6 = v0[38];
    v0[24] = v1;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if (swift_dynamicCast())
    {
      (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
      if (qword_100832C30 != -1)
      {
        swift_once();
      }

      v7 = v0[42];
      v9 = v0[36];
      v8 = v0[37];
      v10 = v0[35];
      v11 = qword_10083D0B0;
      DIPError.code.getter();
      LOBYTE(v7) = sub_10032D978(v8, v11);
      v12 = *(v9 + 8);
      v12(v8, v10);
      if (v7)
      {
        v13 = v0[47];
        v15 = v0[41];
        v14 = v0[42];
        v16 = v0[38];
        v17 = v0[39];

        defaultLogger()();
        v18 = *(v17 + 16);
        v18(v15, v14, v16);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        v21 = os_log_type_enabled(v19, v20);
        v22 = v0[41];
        v23 = v0[39];
        v99 = v18;
        if (v21)
        {
          v24 = v0[37];
          v92 = v0[35];
          v96 = v0[38];
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          DIPError.code.getter();
          v26 = DIPError.Code.rawValue.getter();
          v12(v24, v92);
          v27 = *(v23 + 8);
          v27(v22, v96);
          *(v25 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v19, v20, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v25, 0xCu);
        }

        else
        {
          v27 = *(v23 + 8);
          v27(v22, v0[38]);
        }

        v57 = v0[47];
        v58 = v0[44];
        v59 = v0[45];
        v60 = v0[27];

        (*(v59 + 8))(v57, v58);
        v61 = *(v60 + 88);
        v62 = *(v61 + 16);
        if (v62)
        {
          v63 = v0[33];
          v94 = *(v63 + 16);
          v64 = v61 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
          v89 = (v0[30] + 8);
          v91 = *(v63 + 72);
          v85 = v27;
          v87 = (v63 + 8);

          do
          {
            v65 = v0[42];
            v66 = v0[38];
            v67 = v0[34];
            v69 = v0[31];
            v68 = v0[32];
            v70 = v0[29];
            v94(v67, v64, v68);
            sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
            v71 = swift_allocError();
            v99(v72, v65, v66);
            v0[26] = v71;
            AsyncStream.Continuation.yield(_:)();
            (*v89)(v69, v70);
            (*v87)(v67, v68);
            v64 += v91;
            --v62;
          }

          while (v62);

          v27 = v85;
        }

        v73 = v0[39] + 8;
        v27(v0[42], v0[38]);
        v74 = v0[24];
        goto LABEL_24;
      }

      (*(v0[39] + 8))(v0[42], v0[38]);
    }

    v100 = v0[45];
    v102 = v0[44];
    v90 = v0[39];
    v93 = v0[46];
    v36 = v0[37];
    v86 = v0[40];
    v88 = v0[38];
    v38 = v0[35];
    v37 = v0[36];
    v97 = v0[27];
    v39 = v0[24];

    swift_getErrorValue();
    v41 = v0[18];
    v40 = v0[19];
    v42 = v0[20];
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v37 + 104))(v36, enum case for DIPError.Code.internalError(_:), v38);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v90 + 16))(v43, v86, v88);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v100 + 8))(v93, v102);

    v44 = swift_allocError();
    (*(v90 + 32))(v45, v86, v88);

    v46 = *(v97 + 112);
    *(v97 + 112) = v44;
LABEL_24:

    v75 = v0[52];
    v77 = v0[48];
    v76 = v0[49];
    v79 = v0[46];
    v78 = v0[47];
    v81 = v0[42];
    v80 = v0[43];
    v82 = v0[41];
    v95 = v0[40];
    v98 = v0[37];
    v101 = v0[34];
    v103 = v0[31];
    v83 = v0[27];
    sub_1001AC570();
    sub_1001A9ACC(v83);

    v84 = v0[1];

    return v84();
  }

  v28 = v3;
  v29 = v4;
  v31 = v0[51];
  v30 = v0[52];
  v32 = v0[50];
  v33 = v0[28];
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v34 = (*(v31 + 88))(v30, v32);
  if (v34 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v35 = 63;
  }

  else if (v34 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v35 = 16;
  }

  else
  {
    (*(v0[51] + 8))(v0[52], v0[50]);
    v35 = 0;
  }

  v48 = v0[27];
  v47 = v0[28];
  v49 = PKPassKitCoreBundle();
  type metadata accessor for SupplementalDeviceDataFetcher();
  swift_allocObject();
  sub_10000B8B8(v28, v29);
  v50 = sub_10059F7F0(v35, v28, v29, v49);
  v51 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher;
  v52 = *(v48 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher);
  *(v48 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher) = v50;

  sub_10059FA1C();

  v0[61] = *(v48 + 32);

  v53 = IdentityProofingConfiguration.documentType.getter();
  v54 = *(v48 + v51);
  v0[62] = v54;

  v55 = swift_task_alloc();
  v0[63] = v55;
  *v55 = v0;
  v55[1] = sub_1001A8208;

  return sub_1001D0B30(v53, (v0 + 8), (v0 + 2), v54);
}

uint64_t sub_1001A8208()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);

  if (v0)
  {
    v7 = sub_1001A8688;
  }

  else
  {
    v7 = sub_1001A8358;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001A8358()
{
  v1 = sub_10000BA08(v0 + 8, v0[11]);
  v2 = type metadata accessor for Workflow();
  v3 = v1 + *(v2 + 124);
  if (v3[8])
  {
    v4 = v0[48];
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = 3;
      _os_log_impl(&_mh_execute_header, v5, v6, "using default cloudKitMaxRetryCount: %ld as workflow cloudKitMaxRetryCount is nil.", v7, 0xCu);
    }

    v8 = v0[48];
    v9 = v0[44];
    v10 = v0[45];

    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v11 = *v3;
    v12 = v0[49];
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v13, v14, "using workflow received defaultCloudKitRetryCount: %ld", v15, 0xCu);
    }

    v16 = v0[49];
    v17 = v0[44];
    v18 = v0[45];
    v19 = v0[27];

    (*(v18 + 8))(v16, v17);
    *(v19 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount) = v11;
  }

  v20 = sub_10000BA08(v0 + 8, v0[11]) + *(v2 + 128);
  if ((v20[8] & 1) == 0)
  {
    *(v0[27] + 96) = *v20;
  }

  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v22 = v0[59];
  v21 = v0[60];
  sub_10002ADA0(*(v0[27] + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount));
  sub_10000B90C(v22, v21);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 8);
  v23 = v0[52];
  v25 = v0[48];
  v24 = v0[49];
  v27 = v0[46];
  v26 = v0[47];
  v29 = v0[42];
  v28 = v0[43];
  v30 = v0[41];
  v34 = v0[40];
  v35 = v0[37];
  v36 = v0[34];
  v37 = v0[31];
  v31 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1001A8688()
{
  sub_10000B90C(v0[59], v0[60]);
  sub_1001B7154((v0 + 2));
  sub_10000BB78(v0 + 8);
  v0[24] = v0[64];
  v1 = v0[43];
  v2 = v0[38];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
  if (qword_100832C30 != -1)
  {
    swift_once();
  }

  v3 = v0[42];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v7 = qword_10083D0B0;
  DIPError.code.getter();
  LOBYTE(v3) = sub_10032D978(v5, v7);
  v8 = *(v4 + 8);
  v8(v5, v6);
  if ((v3 & 1) == 0)
  {
    (*(v0[39] + 8))(v0[42], v0[38]);
LABEL_8:
    v78 = v0[45];
    v80 = v0[44];
    v67 = v0[40];
    v69 = v0[39];
    v72 = v0[46];
    v24 = v0[37];
    v23 = v0[38];
    v26 = v0[35];
    v25 = v0[36];
    v75 = v0[27];
    v27 = v0[24];

    swift_getErrorValue();
    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[20];
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v25 + 104))(v24, enum case for DIPError.Code.internalError(_:), v26);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v69 + 16))(v31, v67, v23);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v78 + 8))(v72, v80);

    v32 = swift_allocError();
    (*(v69 + 32))(v33, v67, v23);

    v34 = *(v75 + 112);
    *(v75 + 112) = v32;
    goto LABEL_15;
  }

  v9 = v0[47];
  v11 = v0[41];
  v10 = v0[42];
  v12 = v0[38];
  v13 = v0[39];

  defaultLogger()();
  v77 = *(v13 + 16);
  v77(v11, v10, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[41];
  v18 = v0[39];
  if (v16)
  {
    v19 = v0[37];
    v71 = v0[35];
    v74 = v0[38];
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    DIPError.code.getter();
    v21 = DIPError.Code.rawValue.getter();
    v8(v19, v71);
    v22 = *(v18 + 8);
    v22(v17, v74);
    *(v20 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v20, 0xCu);
  }

  else
  {
    v22 = *(v18 + 8);
    v22(v17, v0[38]);
  }

  v35 = v0[47];
  v37 = v0[44];
  v36 = v0[45];
  v38 = v0[27];

  (*(v36 + 8))(v35, v37);
  v39 = *(v38 + 88);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v0[33];
    v73 = *(v41 + 16);
    v42 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v68 = (v0[30] + 8);
    v70 = *(v41 + 72);
    v65 = v22;
    v66 = (v41 + 8);
    v64 = *(v38 + 88);

    do
    {
      v43 = v0[42];
      v44 = v0[38];
      v45 = v0[34];
      v47 = v0[31];
      v46 = v0[32];
      v48 = v0[29];
      v73(v45, v42, v46);
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
      v49 = swift_allocError();
      v77(v50, v43, v44);
      v0[26] = v49;
      AsyncStream.Continuation.yield(_:)();
      (*v68)(v47, v48);
      (*v66)(v45, v46);
      v42 += v70;
      --v40;
    }

    while (v40);

    v22 = v65;
  }

  v51 = v0[39] + 8;
  v22(v0[42], v0[38]);
  v52 = v0[24];
LABEL_15:

  v53 = v0[52];
  v55 = v0[48];
  v54 = v0[49];
  v57 = v0[46];
  v56 = v0[47];
  v59 = v0[42];
  v58 = v0[43];
  v60 = v0[41];
  v76 = v0[40];
  v79 = v0[37];
  v81 = v0[34];
  v82 = v0[31];
  v61 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v61);

  v62 = v0[1];

  return v62();
}

uint64_t sub_1001A8D54()
{
  v1 = v0[54];

  v0[24] = v0[56];
  v2 = v0[43];
  v3 = v0[38];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
  if (qword_100832C30 != -1)
  {
    swift_once();
  }

  v4 = v0[42];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  v8 = qword_10083D0B0;
  DIPError.code.getter();
  LOBYTE(v4) = sub_10032D978(v6, v8);
  v9 = *(v5 + 8);
  v9(v6, v7);
  if ((v4 & 1) == 0)
  {
    (*(v0[39] + 8))(v0[42], v0[38]);
LABEL_8:
    v79 = v0[45];
    v81 = v0[44];
    v68 = v0[40];
    v70 = v0[39];
    v73 = v0[46];
    v25 = v0[37];
    v24 = v0[38];
    v27 = v0[35];
    v26 = v0[36];
    v76 = v0[27];
    v28 = v0[24];

    swift_getErrorValue();
    v30 = v0[18];
    v29 = v0[19];
    v31 = v0[20];
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v26 + 104))(v25, enum case for DIPError.Code.internalError(_:), v27);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v70 + 16))(v32, v68, v24);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v79 + 8))(v73, v81);

    v33 = swift_allocError();
    (*(v70 + 32))(v34, v68, v24);

    v35 = *(v76 + 112);
    *(v76 + 112) = v33;
    goto LABEL_15;
  }

  v10 = v0[47];
  v12 = v0[41];
  v11 = v0[42];
  v13 = v0[38];
  v14 = v0[39];

  defaultLogger()();
  v78 = *(v14 + 16);
  v78(v12, v11, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[41];
  v19 = v0[39];
  if (v17)
  {
    v20 = v0[37];
    v72 = v0[35];
    v75 = v0[38];
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    DIPError.code.getter();
    v22 = DIPError.Code.rawValue.getter();
    v9(v20, v72);
    v23 = *(v19 + 8);
    v23(v18, v75);
    *(v21 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v21, 0xCu);
  }

  else
  {
    v23 = *(v19 + 8);
    v23(v18, v0[38]);
  }

  v36 = v0[47];
  v38 = v0[44];
  v37 = v0[45];
  v39 = v0[27];

  (*(v37 + 8))(v36, v38);
  v40 = *(v39 + 88);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v0[33];
    v74 = *(v42 + 16);
    v43 = v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v69 = (v0[30] + 8);
    v71 = *(v42 + 72);
    v66 = v23;
    v67 = (v42 + 8);
    v65 = *(v39 + 88);

    do
    {
      v44 = v0[42];
      v45 = v0[38];
      v46 = v0[34];
      v48 = v0[31];
      v47 = v0[32];
      v49 = v0[29];
      v74(v46, v43, v47);
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
      v50 = swift_allocError();
      v78(v51, v44, v45);
      v0[26] = v50;
      AsyncStream.Continuation.yield(_:)();
      (*v69)(v48, v49);
      (*v67)(v46, v47);
      v43 += v71;
      --v41;
    }

    while (v41);

    v23 = v66;
  }

  v52 = v0[39] + 8;
  v23(v0[42], v0[38]);
  v53 = v0[24];
LABEL_15:

  v54 = v0[52];
  v56 = v0[48];
  v55 = v0[49];
  v58 = v0[46];
  v57 = v0[47];
  v60 = v0[42];
  v59 = v0[43];
  v61 = v0[41];
  v77 = v0[40];
  v80 = v0[37];
  v82 = v0[34];
  v83 = v0[31];
  v62 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v62);

  v63 = v0[1];

  return v63();
}

uint64_t sub_1001A9410()
{
  sub_10000BB78(v0 + 8);
  v0[24] = v0[58];
  v1 = v0[43];
  v2 = v0[38];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  (*(v0[39] + 32))(v0[42], v0[43], v0[38]);
  if (qword_100832C30 != -1)
  {
    swift_once();
  }

  v3 = v0[42];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[35];
  v7 = qword_10083D0B0;
  DIPError.code.getter();
  LOBYTE(v3) = sub_10032D978(v5, v7);
  v8 = *(v4 + 8);
  v8(v5, v6);
  if ((v3 & 1) == 0)
  {
    (*(v0[39] + 8))(v0[42], v0[38]);
LABEL_8:
    v78 = v0[45];
    v80 = v0[44];
    v67 = v0[40];
    v69 = v0[39];
    v72 = v0[46];
    v24 = v0[37];
    v23 = v0[38];
    v26 = v0[35];
    v25 = v0[36];
    v75 = v0[27];
    v27 = v0[24];

    swift_getErrorValue();
    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[20];
    Error.localizedDescription.getter();
    sub_1001B4470();
    (*(v25 + 104))(v24, enum case for DIPError.Code.internalError(_:), v26);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    (*(v69 + 16))(v31, v67, v23);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v78 + 8))(v72, v80);

    v32 = swift_allocError();
    (*(v69 + 32))(v33, v67, v23);

    v34 = *(v75 + 112);
    *(v75 + 112) = v32;
    goto LABEL_15;
  }

  v9 = v0[47];
  v11 = v0[41];
  v10 = v0[42];
  v12 = v0[38];
  v13 = v0[39];

  defaultLogger()();
  v77 = *(v13 + 16);
  v77(v11, v10, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[41];
  v18 = v0[39];
  if (v16)
  {
    v19 = v0[37];
    v71 = v0[35];
    v74 = v0[38];
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    DIPError.code.getter();
    v21 = DIPError.Code.rawValue.getter();
    v8(v19, v71);
    v22 = *(v18 + 8);
    v22(v17, v74);
    *(v20 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "IdentityProofingFetchedAssetManager fetch dynamic workflow returned error code: %ld", v20, 0xCu);
  }

  else
  {
    v22 = *(v18 + 8);
    v22(v17, v0[38]);
  }

  v35 = v0[47];
  v37 = v0[44];
  v36 = v0[45];
  v38 = v0[27];

  (*(v36 + 8))(v35, v37);
  v39 = *(v38 + 88);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v0[33];
    v73 = *(v41 + 16);
    v42 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v68 = (v0[30] + 8);
    v70 = *(v41 + 72);
    v65 = v22;
    v66 = (v41 + 8);
    v64 = *(v38 + 88);

    do
    {
      v43 = v0[42];
      v44 = v0[38];
      v45 = v0[34];
      v47 = v0[31];
      v46 = v0[32];
      v48 = v0[29];
      v73(v45, v42, v46);
      sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
      v49 = swift_allocError();
      v77(v50, v43, v44);
      v0[26] = v49;
      AsyncStream.Continuation.yield(_:)();
      (*v68)(v47, v48);
      (*v66)(v45, v46);
      v42 += v70;
      --v40;
    }

    while (v40);

    v22 = v65;
  }

  v51 = v0[39] + 8;
  v22(v0[42], v0[38]);
  v52 = v0[24];
LABEL_15:

  v53 = v0[52];
  v55 = v0[48];
  v54 = v0[49];
  v57 = v0[46];
  v56 = v0[47];
  v59 = v0[42];
  v58 = v0[43];
  v60 = v0[41];
  v76 = v0[40];
  v79 = v0[37];
  v81 = v0[34];
  v82 = v0[31];
  v61 = v0[27];
  sub_1001AC570();
  sub_1001A9ACC(v61);

  v62 = v0[1];

  return v62();
}

uint64_t sub_1001A9ACC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(*(a1 + 104));
  v7 = *(a1 + 128);
  *(a1 + 128) = 0;

  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Signaling Dynamic WF Lock", v10, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1001A9C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001A9CD8, 0, 0);
}

uint64_t sub_1001A9CD8()
{
  v1 = *(*(v0 + 16) + 104);
  v2 = async function pointer to OS_dispatch_group.wait()[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1001A9D70;

  return OS_dispatch_group.wait()();
}

uint64_t sub_1001A9D70()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_1001A9E6C, 0, 0);
}

uint64_t sub_1001A9E6C()
{
  v0[7] = *(v0[2] + 32);

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1001A9F10;

  return sub_1001C7CB4();
}

uint64_t sub_1001A9F10()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001AA054, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1001AA054()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingFetchedAssetManager failed liveness video: %@", v8, 0xCu);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v11 = v0[9];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001AA1E4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_10083D4B0, &qword_1006DC940) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001AA348, 0, 0);
}

uint64_t sub_1001AA348()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
  v0[19] = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
  swift_beginAccess();
  sub_10000BBC4(v4 + v5, v1, &qword_10083D4B0, &qword_1006DC940);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[18];
  if (v6 == 1)
  {
    v8 = v0[9];
    sub_10000BE18(v0[18], &qword_10083D4B0, &qword_1006DC940);
    v0[20] = sub_1006146AC();
    v9 = sub_10058CB08();
    v0[21] = v10;
    v0[22] = v11;
    v17 = v9;
    v18 = v10;
    v20 = v19;
    v21 = v11;
    v22 = swift_task_alloc();
    v0[23] = v22;
    *v22 = v0;
    v22[1] = sub_1001AA684;
    v23 = v0[16];

    return sub_100612ED4(v23, v17, v18, v20, v21);
  }

  else
  {
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[13];
    sub_1001B6DE4(v0[18], v0[8]);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1001AA684()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[20];

  if (v0)
  {
    v8 = sub_1001AA904;
  }

  else
  {
    v8 = sub_1001AA7F0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001AA7F0()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[10];
  sub_1001A2050(v0[16], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_1000B2764(v2, v5 + v1, &qword_10083D4B0, &qword_1006DC940);
  swift_endAccess();
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[13];
  sub_1001B6DE4(v0[16], v0[8]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001AA904()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001AAAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for DIPKeyAlgorithm();
  v4[40] = v5;
  v6 = *(v5 - 8);
  v4[41] = v6;
  v7 = *(v6 + 64) + 15;
  v4[42] = swift_task_alloc();
  v8 = type metadata accessor for KeystoreKeyType();
  v4[43] = v8;
  v9 = *(v8 - 8);
  v4[44] = v9;
  v10 = *(v9 + 64) + 15;
  v4[45] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[46] = v11;
  v12 = *(v11 - 8);
  v4[47] = v12;
  v13 = *(v12 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v14 = type metadata accessor for DIPError.Code();
  v4[51] = v14;
  v15 = *(v14 - 8);
  v4[52] = v15;
  v16 = *(v15 + 64) + 15;
  v4[53] = swift_task_alloc();
  v17 = type metadata accessor for IdentityDocumentType.Category();
  v4[54] = v17;
  v18 = *(v17 - 8);
  v4[55] = v18;
  v19 = *(v18 + 64) + 15;
  v4[56] = swift_task_alloc();

  return _swift_task_switch(sub_1001AACF8, 0, 0);
}

uint64_t sub_1001AACF8()
{
  v77 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v0 + 304);
  type metadata accessor for DIPKeystoreManager();
  inited = swift_initStackObject();
  *(v0 + 456) = inited;
  *(inited + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(inited + 24) = 2;
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v7 = *(v0 + 304);
    v8 = IdentityProofingConfiguration.state.getter();
    v10 = 0xE700000000000000;
    v11 = 0x61746E6567616DLL;
    goto LABEL_5;
  }

  if (v6 == enum case for IdentityDocumentType.Category.passport(_:))
  {
    v12 = *(v0 + 304);
    v13 = sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
    v11 = v13[6];
    v10 = v13[7];

    v8 = IdentityProofingConfiguration.country.getter();
LABEL_5:
    *(v0 + 464) = v11;
    *(v0 + 472) = v10;
    v71 = v11;
    v14 = *(v0 + 400);
    v15 = *(v0 + 304);
    if (v9)
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    v74 = v16;
    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    defaultLogger()();
    v18 = v15;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v75 = v17;
    if (os_log_type_enabled(v19, v20))
    {
      v68 = v10;
      v21 = *(v0 + 304);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v76[0] = v23;
      *v22 = 136315138;
      IdentityProofingConfiguration.targetDevice.getter();
      if (v24)
      {
        v25 = 0xE300000000000000;
        v26 = 7104878;
      }

      else
      {
        v26 = IdentityTarget.debugDescription.getter();
        v25 = v32;
      }

      v66 = *(v0 + 400);
      v33 = *(v0 + 368);
      v34 = *(v0 + 376);
      v35 = sub_100141FE4(v26, v25, v76);

      *(v22 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v19, v20, "fetchIdentityKeyPair checking if proofing was attempted for configuration %s", v22, 0xCu);
      sub_10000BB78(v23);

      v30 = *(v34 + 8);
      v30(v66, v33);
      v10 = v68;
    }

    else
    {
      v27 = *(v0 + 400);
      v28 = *(v0 + 368);
      v29 = *(v0 + 376);

      v30 = *(v29 + 8);
      v30(v27, v28);
    }

    *(v0 + 480) = v30;
    v36 = *(v0 + 304);
    v37 = *(*(v0 + 312) + 40);

    v38 = IdentityProofingConfiguration.targetDevice.getter();
    if (v39)
    {
      v40 = 1;
    }

    else
    {
      v40 = v38;
    }

    v41 = IdentityProofingConfiguration.documentType.getter();
    sub_1002E0DD4(v74, v75, v40, 0, 0, v41, v76);
    v51 = *(&v76[0] + 1);

    if (v51)
    {

      v53 = *(v0 + 352);
      v52 = *(v0 + 360);
      v54 = *(v0 + 344);
      sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
      v55 = sub_1000FEC7C();
      *(v0 + 504) = v55;
      (*(v53 + 104))(v52, enum case for KeystoreKeyType.extended(_:), v54);
      v56 = swift_task_alloc();
      *(v0 + 512) = v56;
      *v56 = v0;
      v56[1] = sub_1001AB834;
      v57 = *(v0 + 456);

      return sub_10003736C(v0 + 112, v55, 0, 0, 0xF000000000000000);
    }

    else
    {
      v58 = *(v0 + 392);
      defaultLogger()();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "No existing proofing session; deleting existing keys and certificates for a fresh start", v61, 2u);
      }

      v62 = *(v0 + 392);
      v63 = *(v0 + 368);
      v64 = *(v0 + 376);

      v30(v62, v63);
      v65 = swift_task_alloc();
      *(v0 + 488) = v65;
      *v65 = v0;
      v65[1] = sub_1001AB4C4;

      return sub_100038F4C(v71, v10);
    }
  }

  v31 = *(v0 + 440);
  v69 = *(v0 + 432);
  v72 = *(v0 + 448);
  (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for DIPError.Code.unexpectedIDType(_:), *(v0 + 408));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v31 + 8))(v72, v69);
  v42 = *(v0 + 448);
  v44 = *(v0 + 416);
  v43 = *(v0 + 424);
  v46 = *(v0 + 400);
  v45 = *(v0 + 408);
  v47 = *(v0 + 392);
  v67 = *(v0 + 384);
  v70 = *(v0 + 360);
  v73 = *(v0 + 336);
  v48 = *(v0 + 312);
  swift_errorRetain();
  sub_1001B4470();
  (*(v44 + 104))(v43, enum case for DIPError.Code.internalError(_:), v45);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1001AB4C4()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_1001AB6D8;
  }

  else
  {
    v3 = sub_1001AB5D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AB5D8()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
  v4 = sub_1000FEC7C();
  *(v0 + 504) = v4;
  (*(v2 + 104))(v1, enum case for KeystoreKeyType.extended(_:), v3);
  v5 = swift_task_alloc();
  *(v0 + 512) = v5;
  *v5 = v0;
  v5[1] = sub_1001AB834;
  v6 = *(v0 + 456);

  return sub_10003736C(v0 + 112, v4, 0, 0, 0xF000000000000000);
}

uint64_t sub_1001AB6D8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v8 = *(v0 + 344);
  sub_10000BA08(*(v0 + 296), *(*(v0 + 296) + 24));
  v9 = sub_1000FEC7C();
  *(v0 + 504) = v9;
  (*(v7 + 104))(v6, enum case for KeystoreKeyType.extended(_:), v8);
  v10 = swift_task_alloc();
  *(v0 + 512) = v10;
  *v10 = v0;
  v10[1] = sub_1001AB834;
  v11 = *(v0 + 456);

  return sub_10003736C(v0 + 112, v9, 0, 0, 0xF000000000000000);
}

uint64_t sub_1001AB834()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  v2[65] = v0;

  v5 = v2[63];
  if (v0)
  {
    v6 = v2[59];

    v7 = sub_1001ABCA4;
  }

  else
  {

    v7 = sub_1001AB978;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001AB978()
{
  v1 = v0[65];
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v2 = v0[23];
  sub_10000BA08(v0 + 19, v0[22]);
  v3 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  v0[66] = v4;
  if (v1)
  {
    v5 = v0[59];
    (*(v0[44] + 8))(v0[45], v0[43]);

    sub_10000BB78(v0 + 19);
    sub_10000BB78(v0 + 14);
    v6 = v0[57];

    v7 = v0[56];
    v8 = v0[52];
    v9 = v0[53];
    v10 = v0[51];
    v24 = v0[50];
    v25 = v0[49];
    v26 = v0[48];
    v27 = v0[45];
    v28 = v0[42];
    v11 = v0[39];
    swift_errorRetain();
    sub_1001B4470();
    (*(v8 + 104))(v9, enum case for DIPError.Code.internalError(_:), v10);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v16 = v0[42];
    sub_10000BB78(v0 + 19);
    v17 = v0[18];
    sub_10000BA08(v0 + 14, v0[17]);
    sub_10061B2DC(v16);
    v18 = async function pointer to DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)[1];
    v19 = swift_task_alloc();
    v0[67] = v19;
    *v19 = v0;
    v19[1] = sub_1001ABE94;
    v20 = v0[58];
    v21 = v0[59];
    v22 = v0[45];
    v23 = v0[42];

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 24, v20, v21, v14, v15, v22, v23, 0);
  }
}

uint64_t sub_1001ABCA4()
{
  (*(v0[44] + 8))(v0[45], v0[43]);
  v1 = v0[65];
  v2 = v0[57];

  v3 = v0[56];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[51];
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[45];
  v14 = v0[42];
  v7 = v0[39];
  swift_errorRetain();
  sub_1001B4470();
  (*(v4 + 104))(v5, enum case for DIPError.Code.internalError(_:), v6);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001ABE94()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = v2[66];
  v6 = v2[59];
  (*(v2[41] + 8))(v2[42], v2[40]);

  if (v0)
  {
    v7 = sub_1001AC378;
  }

  else
  {
    v7 = sub_1001AC03C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001AC03C()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 224);
  sub_10000BA08((v0 + 192), *(v0 + 216));
  v3 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_10000BB78((v0 + 192));
    sub_10000BB78((v0 + 112));
    v4 = *(v0 + 456);

    v5 = *(v0 + 448);
    v6 = *(v0 + 416);
    v7 = *(v0 + 424);
    v8 = *(v0 + 408);
    v25 = *(v0 + 400);
    v26 = *(v0 + 392);
    v27 = *(v0 + 384);
    v28 = *(v0 + 360);
    v29 = *(v0 + 336);
    v9 = *(v0 + 312);
    swift_errorRetain();
    sub_1001B4470();
    (*(v6 + 104))(v7, enum case for DIPError.Code.internalError(_:), v8);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v11 = v3;
    v12 = *(v0 + 448);
    v13 = *(v0 + 456);
    v14 = *(v0 + 424);
    v15 = *(v0 + 392);
    v16 = *(v0 + 400);
    v17 = *(v0 + 384);
    v30 = *(v0 + 336);
    v18 = *(v0 + 312);
    v19 = *(v0 + 288);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_100020260(v0 + 192, v0 + 16);
    *(v0 + 56) = v11;
    sub_10000BB78((v0 + 192));
    sub_10000BB78((v0 + 112));
    swift_setDeallocating();
    v20 = *(v13 + 16);

    sub_1001B6EF4(v0 + 16, v0 + 64);
    v21 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair;
    swift_beginAccess();
    sub_1000B2764(v0 + 64, v18 + v21, &qword_10083D4B8, &qword_1006DB470);
    swift_endAccess();
    v22 = *(v0 + 16);
    v23 = *(v0 + 48);
    v19[1] = *(v0 + 32);
    v19[2] = v23;
    *v19 = v22;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001AC378()
{
  (*(v0[44] + 8))(v0[45], v0[43]);
  sub_10000BB78(v0 + 14);
  v1 = v0[68];
  v2 = v0[57];

  v3 = v0[56];
  v4 = v0[52];
  v5 = v0[53];
  v6 = v0[51];
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[45];
  v14 = v0[42];
  v7 = v0[39];
  swift_errorRetain();
  sub_1001B4470();
  (*(v4 + 104))(v5, enum case for DIPError.Code.internalError(_:), v6);
  type metadata accessor for DIPError();
  sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001AC570()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_10083D4A0, &qword_1006DFB20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = *(v0 + 88);
  v12 = *(v11 + 16);
  if (v12)
  {
    v23 = v5;
    v24 = v0;
    v25 = v2;
    v26 = v1;
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v13 = v15;
    v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);

    do
    {
      v13(v10, v16, v6);
      AsyncStream.Continuation.finish()();
      (*(v14 - 8))(v10, v6);
      v16 += v17;
      --v12;
    }

    while (v12);

    v0 = v24;
    v2 = v25;
    v18 = *(v24 + 88);
    v1 = v26;
    v5 = v23;
  }

  *(v0 + 88) = _swiftEmptyArrayStorage;

  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "IdentityProofingFetchedAssetManager notified and cleared continuations", v21, 2u);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1001AC7E8(uint64_t a1)
{
  v2[10754] = a1;
  v2[10755] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[10756] = v3;
  v4 = *(v3 - 8);
  v2[10757] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10758] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083D4B0, &qword_1006DC940) - 8) + 64) + 15;
  v2[10759] = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[10760] = v7;
  v8 = *(v7 - 8);
  v2[10761] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10762] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[10763] = v10;
  v11 = *(v10 - 8);
  v2[10764] = v11;
  v12 = *(v11 + 64) + 15;
  v2[10765] = swift_task_alloc();

  return _swift_task_switch(sub_1001AC99C, 0, 0);
}

uint64_t sub_1001AC99C()
{
  v1 = (v0 + 85880);
  type metadata accessor for IdentityProofingImageQualitySettingsProvider();
  v2 = swift_allocObject();
  *(v0 + 86128) = v2;
  *(v2 + 16) = vdupq_n_s64(5uLL);
  *(v2 + 32) = 5;
  *(v2 + 40) = 1036831949;
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v2 + 48) = JSONEncoder.init()();
  *(v2 + 56) = xmmword_1006DAFF0;
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.overrideImageQualitySettings.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v9 = *(v0 + 86120);
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Overriding workflow image quality settings, using internal settings.", v12, 2u);
    }

    v14 = *(v0 + 86112);
    v13 = *(v0 + 86120);
    v15 = *(v0 + 86104);

    (*(v14 + 8))(v13, v15);
    v16 = sub_1002BC714();

    v17 = *(v0 + 86120);
    v18 = *(v0 + 86096);
    v20 = *(v0 + 86064);
    v19 = *(v0 + 86072);

    v21 = *(v0 + 8);

    return v21(v16);
  }

  else
  {
    v23 = *(v0 + 86040);
    v24 = *(v23 + 128);
    *(v0 + 86136) = v24;
    if (v24)
    {
      v25 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
      swift_retain_n();
      v26 = swift_task_alloc();
      *(v0 + 86144) = v26;
      *v26 = v0;
      v26[1] = sub_1001AD4F4;
      v27.n128_u64[0] = 10.0;

      return withTaskTimeoutHandler<A>(timeout:operation:)(v26, &unk_1006DB1E0, v24, &type metadata for () + 8, v27);
    }

    else
    {
      v28 = *(v0 + 86032);
      IdentityProofingConfiguration.documentType.getter();
      swift_beginAccess();
      sub_10000BBC4(v23 + 144, v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
      v29 = *v1;
      if (*v1)
      {
        v30 = sub_10000BA08((v0 + 85856), *v1);
        v31 = *(v29 - 8);
        v32 = *(v31 + 64) + 15;
        v33 = swift_task_alloc();
        (*(v31 + 16))(v33, v30, v29);
        sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
        v34 = type metadata accessor for Workflow();
        memcpy((v0 + 68688), (v33 + *(v34 + 156)), 0x2181uLL);
        sub_10000BBC4(v0 + 68688, v0 + 77272, &qword_100839990, &unk_1006C19E0);
        (*(v31 + 8))(v33, v29);

        memcpy((v0 + 60104), (v0 + 68688), 0x2181uLL);
        if (sub_1001B6DC0(v0 + 60104) != 1)
        {
          sub_10000BE18(v0 + 68688, &qword_100839990, &unk_1006C19E0);
        }
      }

      else
      {
        sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
      }

      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)();

      sub_10000BBC4(v23 + 144, v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
      if (*(v0 + 85960))
      {
        sub_10001F358((v0 + 85936), v0 + 85896);
        v35 = sub_10000BA08((v0 + 85896), *(v0 + 85920));
        v36 = type metadata accessor for Workflow();
        v37 = *(v36 + 156);
        memcpy((v0 + 17184), v35 + v37, 0x2181uLL);
        memmove((v0 + 8600), v35 + v37, 0x2181uLL);
        if (sub_1001B6DC0(v0 + 8600) != 1)
        {
          v48 = *(v0 + 86080);
          v49 = *(v0 + 86088);
          v50 = *(v0 + 86072);
          v51 = *(v0 + 86040);
          memcpy((v0 + 16), (v0 + 8600), 0x2181uLL);
          v52 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
          swift_beginAccess();
          sub_10000BBC4(v51 + v52, v50, &qword_10083D4B0, &qword_1006DC940);
          if ((*(v49 + 48))(v50, 1, v48) == 1)
          {
            v53 = *(v0 + 86072);
            memcpy((v0 + 25768), (v0 + 17184), 0x2181uLL);
            sub_1000F0958(v0 + 25768, v0 + 34352);
            sub_10000BE18(v53, &qword_10083D4B0, &qword_1006DC940);
          }

          else
          {
            v54 = *(v0 + 86032);
            sub_1001B6DE4(*(v0 + 86072), *(v0 + 86096));
            memcpy((v0 + 42936), (v0 + 17184), 0x2181uLL);
            sub_1000F0958(v0 + 42936, v0 + 51520);
            v55 = IdentityProofingConfiguration.state.getter();
            v57 = v56;
            v58 = *(v0 + 86096);
            if (v56)
            {
              v59 = *(*(v0 + 86080) + 40);
              v60 = *(v58 + v59);
              if (v60)
              {
                v69 = *(v58 + v59);
                v71 = v36;
                v61 = *(v60 + 16) + 1;
                v62 = (v60 + 72);
                while (--v61)
                {
                  v63 = *(v62 - 2);
                  v64 = *(v62 - 1);
                  v72 = *(v62 - 3);
                  v73 = *v62;
                  v65 = v62[1];
                  v74 = v62[2];
                  v79 = v62[3];
                  v77 = v62[5];
                  v78 = v62[4];
                  v76 = *(v62 + 48);
                  v75 = v62[7];
                  v80 = v62[8];
                  if (*(v62 - 5) != v55 || v57 != *(v62 - 4))
                  {
                    v62 += 14;
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      continue;
                    }
                  }

                  v70 = *(v0 + 86096);

                  sub_1001B6E48(v64);

                  *(v0 + 86024) = v72;
                  dispatch thunk of CustomStringConvertible.description.getter();

                  sub_1000F4824(v64);

                  sub_1001A1FAC(v70);
                  goto LABEL_36;
                }

                v66 = *(v0 + 86096);

                sub_1001A1FAC(v66);

LABEL_36:
                v36 = v71;
              }

              else
              {
                sub_1001A1FAC(v58);
              }
            }

            else
            {
              sub_1001A1FAC(v58);
            }
          }

          v67 = *(v0 + 86128);
          v68 = *(sub_10000BA08((v0 + 85896), *(v0 + 85920)) + *(v36 + 80));

          sub_1002B2220(v0 + 16);
        }

        v38 = *(v0 + 86128);
        (*(*(v0 + 86056) + 104))(*(v0 + 86064), enum case for DIPError.Code.missingImageQualityModel(_:), *(v0 + 86048));
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_10000BB78((v0 + 85896));
      }

      else
      {
        v39 = *(v0 + 86128);
        v41 = *(v0 + 86056);
        v40 = *(v0 + 86064);
        v42 = *(v0 + 86048);
        sub_10000BE18(v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
        (*(v41 + 104))(v40, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v42);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      v43 = *(v0 + 86120);
      v44 = *(v0 + 86096);
      v46 = *(v0 + 86064);
      v45 = *(v0 + 86072);

      v47 = *(v0 + 8);

      return v47();
    }
  }
}

uint64_t sub_1001AD4F4()
{
  v2 = *v1;
  v3 = *(*v1 + 86144);
  v7 = *v1;
  *(*v1 + 86152) = v0;

  if (v0)
  {
    v4 = sub_1001ADF74;
  }

  else
  {
    v5 = *(v2 + 86136);

    v4 = sub_1001AD628;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001AD628()
{
  v1 = *(v0 + 86136);

  v2 = *(v0 + 86032);
  v3 = *(v0 + 86040);
  IdentityProofingConfiguration.documentType.getter();
  swift_beginAccess();
  sub_10000BBC4(v3 + 144, v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  v4 = *(v0 + 85880);
  if (v4)
  {
    v5 = sub_10000BA08((v0 + 85856), *(v0 + 85880));
    v6 = *(v4 - 8);
    v7 = *(v6 + 64) + 15;
    v8 = swift_task_alloc();
    (*(v6 + 16))(v8, v5, v4);
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
    v9 = type metadata accessor for Workflow();
    memcpy((v0 + 68688), (v8 + *(v9 + 156)), 0x2181uLL);
    sub_10000BBC4(v0 + 68688, v0 + 77272, &qword_100839990, &unk_1006C19E0);
    (*(v6 + 8))(v8, v4);

    memcpy((v0 + 60104), (v0 + 68688), 0x2181uLL);
    if (sub_1001B6DC0(v0 + 60104) != 1)
    {
      sub_10000BE18(v0 + 68688, &qword_100839990, &unk_1006C19E0);
    }
  }

  else
  {
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  }

  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)();

  sub_10000BBC4(v3 + 144, v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 85960))
  {
    sub_10001F358((v0 + 85936), v0 + 85896);
    v10 = sub_10000BA08((v0 + 85896), *(v0 + 85920));
    v11 = type metadata accessor for Workflow();
    v12 = *(v11 + 156);
    memcpy((v0 + 17184), v10 + v12, 0x2181uLL);
    memmove((v0 + 8600), v10 + v12, 0x2181uLL);
    if (sub_1001B6DC0(v0 + 8600) != 1)
    {
      v24 = *(v0 + 86080);
      v25 = *(v0 + 86088);
      v26 = *(v0 + 86072);
      v27 = *(v0 + 86040);
      memcpy((v0 + 16), (v0 + 8600), 0x2181uLL);
      v28 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
      swift_beginAccess();
      sub_10000BBC4(v27 + v28, v26, &qword_10083D4B0, &qword_1006DC940);
      if ((*(v25 + 48))(v26, 1, v24) == 1)
      {
        v29 = *(v0 + 86072);
        memcpy((v0 + 25768), (v0 + 17184), 0x2181uLL);
        sub_1000F0958(v0 + 25768, v0 + 34352);
        sub_10000BE18(v29, &qword_10083D4B0, &qword_1006DC940);
      }

      else
      {
        v30 = *(v0 + 86032);
        sub_1001B6DE4(*(v0 + 86072), *(v0 + 86096));
        memcpy((v0 + 42936), (v0 + 17184), 0x2181uLL);
        sub_1000F0958(v0 + 42936, v0 + 51520);
        v31 = IdentityProofingConfiguration.state.getter();
        v33 = v32;
        v34 = *(v0 + 86096);
        if (v32)
        {
          v35 = *(*(v0 + 86080) + 40);
          v36 = *(v34 + v35);
          if (v36)
          {
            v45 = *(v34 + v35);
            v47 = v11;
            v37 = *(v36 + 16) + 1;
            v38 = (v36 + 72);
            while (--v37)
            {
              v39 = *(v38 - 2);
              v40 = *(v38 - 1);
              v48 = *(v38 - 3);
              v49 = *v38;
              v41 = v38[1];
              v50 = v38[2];
              v55 = v38[3];
              v53 = v38[5];
              v54 = v38[4];
              v52 = *(v38 + 48);
              v51 = v38[7];
              v56 = v38[8];
              if (*(v38 - 5) != v31 || v33 != *(v38 - 4))
              {
                v38 += 14;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  continue;
                }
              }

              v46 = *(v0 + 86096);

              sub_1001B6E48(v40);

              *(v0 + 86024) = v48;
              dispatch thunk of CustomStringConvertible.description.getter();

              sub_1000F4824(v40);

              sub_1001A1FAC(v46);
              goto LABEL_26;
            }

            v42 = *(v0 + 86096);

            sub_1001A1FAC(v42);

LABEL_26:
            v11 = v47;
          }

          else
          {
            sub_1001A1FAC(v34);
          }
        }

        else
        {
          sub_1001A1FAC(v34);
        }
      }

      v43 = *(v0 + 86128);
      v44 = *(sub_10000BA08((v0 + 85896), *(v0 + 85920)) + *(v11 + 80));

      sub_1002B2220(v0 + 16);
    }

    v13 = *(v0 + 86128);
    (*(*(v0 + 86056) + 104))(*(v0 + 86064), enum case for DIPError.Code.missingImageQualityModel(_:), *(v0 + 86048));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BB78((v0 + 85896));
  }

  else
  {
    v14 = *(v0 + 86128);
    v16 = *(v0 + 86056);
    v15 = *(v0 + 86064);
    v17 = *(v0 + 86048);
    sub_10000BE18(v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v16 + 104))(v15, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v18 = *(v0 + 86120);
  v19 = *(v0 + 86096);
  v21 = *(v0 + 86064);
  v20 = *(v0 + 86072);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1001ADF74()
{
  v1 = *(v0 + 86152);
  v2 = *(v0 + 86136);

  v3 = *(v0 + 86032);
  v4 = *(v0 + 86040);
  IdentityProofingConfiguration.documentType.getter();
  swift_beginAccess();
  sub_10000BBC4(v4 + 144, v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  v5 = *(v0 + 85880);
  if (v5)
  {
    v6 = sub_10000BA08((v0 + 85856), *(v0 + 85880));
    v7 = *(v5 - 8);
    v8 = *(v7 + 64) + 15;
    v9 = swift_task_alloc();
    (*(v7 + 16))(v9, v6, v5);
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
    v10 = type metadata accessor for Workflow();
    memcpy((v0 + 68688), (v9 + *(v10 + 156)), 0x2181uLL);
    sub_10000BBC4(v0 + 68688, v0 + 77272, &qword_100839990, &unk_1006C19E0);
    (*(v7 + 8))(v9, v5);

    memcpy((v0 + 60104), (v0 + 68688), 0x2181uLL);
    if (sub_1001B6DC0(v0 + 60104) != 1)
    {
      sub_10000BE18(v0 + 68688, &qword_100839990, &unk_1006C19E0);
    }
  }

  else
  {
    sub_10000BE18(v0 + 85856, &qword_10083D0A0, &qword_1006DAFC0);
  }

  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendImageQualitySettingsNeededEvent(providerID:wasFetchedInTime:didError:)();

  sub_10000BBC4(v4 + 144, v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 85960))
  {
    sub_10001F358((v0 + 85936), v0 + 85896);
    v11 = sub_10000BA08((v0 + 85896), *(v0 + 85920));
    v12 = type metadata accessor for Workflow();
    v13 = *(v12 + 156);
    memcpy((v0 + 17184), v11 + v13, 0x2181uLL);
    memmove((v0 + 8600), v11 + v13, 0x2181uLL);
    if (sub_1001B6DC0(v0 + 8600) != 1)
    {
      v25 = *(v0 + 86080);
      v26 = *(v0 + 86088);
      v27 = *(v0 + 86072);
      v28 = *(v0 + 86040);
      memcpy((v0 + 16), (v0 + 8600), 0x2181uLL);
      v29 = OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow;
      swift_beginAccess();
      sub_10000BBC4(v28 + v29, v27, &qword_10083D4B0, &qword_1006DC940);
      if ((*(v26 + 48))(v27, 1, v25) == 1)
      {
        v30 = *(v0 + 86072);
        memcpy((v0 + 25768), (v0 + 17184), 0x2181uLL);
        sub_1000F0958(v0 + 25768, v0 + 34352);
        sub_10000BE18(v30, &qword_10083D4B0, &qword_1006DC940);
      }

      else
      {
        v31 = *(v0 + 86032);
        sub_1001B6DE4(*(v0 + 86072), *(v0 + 86096));
        memcpy((v0 + 42936), (v0 + 17184), 0x2181uLL);
        sub_1000F0958(v0 + 42936, v0 + 51520);
        v32 = IdentityProofingConfiguration.state.getter();
        v34 = v33;
        v35 = *(v0 + 86096);
        if (v33)
        {
          v36 = *(*(v0 + 86080) + 40);
          v37 = *(v35 + v36);
          if (v37)
          {
            v46 = *(v35 + v36);
            v48 = v12;
            v38 = *(v37 + 16) + 1;
            v39 = (v37 + 72);
            while (--v38)
            {
              v40 = *(v39 - 2);
              v41 = *(v39 - 1);
              v49 = *(v39 - 3);
              v50 = *v39;
              v42 = v39[1];
              v51 = v39[2];
              v56 = v39[3];
              v54 = v39[5];
              v55 = v39[4];
              v53 = *(v39 + 48);
              v52 = v39[7];
              v57 = v39[8];
              if (*(v39 - 5) != v32 || v34 != *(v39 - 4))
              {
                v39 += 14;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  continue;
                }
              }

              v47 = *(v0 + 86096);

              sub_1001B6E48(v41);

              *(v0 + 86024) = v49;
              dispatch thunk of CustomStringConvertible.description.getter();

              sub_1000F4824(v41);

              sub_1001A1FAC(v47);
              goto LABEL_26;
            }

            v43 = *(v0 + 86096);

            sub_1001A1FAC(v43);

LABEL_26:
            v12 = v48;
          }

          else
          {
            sub_1001A1FAC(v35);
          }
        }

        else
        {
          sub_1001A1FAC(v35);
        }
      }

      v44 = *(v0 + 86128);
      v45 = *(sub_10000BA08((v0 + 85896), *(v0 + 85920)) + *(v12 + 80));

      sub_1002B2220(v0 + 16);
    }

    v14 = *(v0 + 86128);
    (*(*(v0 + 86056) + 104))(*(v0 + 86064), enum case for DIPError.Code.missingImageQualityModel(_:), *(v0 + 86048));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BB78((v0 + 85896));
  }

  else
  {
    v15 = *(v0 + 86128);
    v17 = *(v0 + 86056);
    v16 = *(v0 + 86064);
    v18 = *(v0 + 86048);
    sub_10000BE18(v0 + 85936, &qword_10083D0A0, &qword_1006DAFC0);
    (*(v17 + 104))(v16, enum case for DIPError.Code.missingIdentityWorkFlow(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v19 = *(v0 + 86120);
  v20 = *(v0 + 86096);
  v22 = *(v0 + 86064);
  v21 = *(v0 + 86072);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1001AE8D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to Task<>.value.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001B72CC;

  return Task<>.value.getter(a1, a2, &type metadata for () + 8);
}

uint64_t sub_1001AE980(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Logger();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[29] = v6;
  *v6 = v2;
  v6[1] = sub_1001AEAA0;

  return sub_1001AF940(v1);
}

uint64_t sub_1001AEAA0(char a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_1001AEBA0, 0, 0);
}

uint64_t sub_1001AEBA0()
{
  if (*(v0 + 296))
  {
    v1 = *(v0 + 200);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingFetchedAssetManager has existing proofing requests, returning nil", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);
LABEL_5:
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 192);

    v14 = *(v0 + 8);

    return v14(0);
  }

  v16 = *(v0 + 224);
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    _os_log_impl(&_mh_execute_header, v17, v18, "hasExistingProofingSession: %{BOOL}d. Will fetch dynamic workflow", v19, 8u);
  }

  v20 = *(v0 + 224);
  v21 = *(v0 + 176);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);

  v24 = *(v22 + 8);
  *(v0 + 240) = v24;
  *(v0 + 248) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v21);
  v25 = *(v23 + 128);
  *(v0 + 256) = v25;
  if (v25)
  {
    v26 = async function pointer to withTaskTimeoutHandler<A>(timeout:operation:)[1];
    swift_retain_n();
    v27 = swift_task_alloc();
    *(v0 + 264) = v27;
    *v27 = v0;
    v27[1] = sub_1001AF05C;
    v28.n128_u64[0] = 10.0;

    return withTaskTimeoutHandler<A>(timeout:operation:)(v27, &unk_1006DB1C8, v25, &type metadata for () + 8, v28);
  }

  else
  {
    v29 = *(v0 + 168);
    swift_beginAccess();
    sub_10000BBC4(v29 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    if (!*(v0 + 80))
    {
      v41 = *(v0 + 208);
      sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
      defaultLogger()();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = os_log_type_enabled(v42, v43);
      v46 = *(v0 + 240);
      v45 = *(v0 + 248);
      v47 = *(v0 + 208);
      v48 = *(v0 + 176);
      if (v44)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Dynamic workflow is nil. Cannot build the consent UI", v49, 2u);
      }

      v46(v47, v48);
      goto LABEL_5;
    }

    v30 = *(v0 + 216);
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Fetch the unorderedUI for fedstats from the dynamic workflow", v33, 2u);
    }

    v35 = *(v0 + 240);
    v34 = *(v0 + 248);
    v36 = *(v0 + 216);
    v37 = *(v0 + 176);

    v35(v36, v37);
    sub_100020260(v0 + 16, v0 + 96);
    v38 = swift_task_alloc();
    *(v0 + 280) = v38;
    *v38 = v0;
    v38[1] = sub_1001AF42C;
    v39 = *(v0 + 160);
    v40 = *(v0 + 168);

    return sub_1001AFF4C(v39, v0 + 96);
  }
}

uint64_t sub_1001AF05C()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_1001AF5EC;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_1001AF178;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001AF178()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 168);
  swift_beginAccess();
  sub_10000BBC4(v2 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 216);
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Fetch the unorderedUI for fedstats from the dynamic workflow", v6, 2u);
    }

    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 216);
    v10 = *(v0 + 176);

    v8(v9, v10);
    sub_100020260(v0 + 16, v0 + 96);
    v11 = swift_task_alloc();
    *(v0 + 280) = v11;
    *v11 = v0;
    v11[1] = sub_1001AF42C;
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);

    return sub_1001AFF4C(v12, v0 + 96);
  }

  else
  {
    v15 = *(v0 + 208);
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v21 = *(v0 + 208);
    v22 = *(v0 + 176);
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Dynamic workflow is nil. Cannot build the consent UI", v23, 2u);
    }

    v20(v21, v22);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v27 = *(v0 + 200);
    v26 = *(v0 + 208);
    v28 = *(v0 + 192);

    v29 = *(v0 + 8);

    return v29(0);
  }
}

uint64_t sub_1001AF42C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v5 = *v1;
  *(v2 + 288) = a1;

  sub_10000BE18(v2 + 96, &qword_10083D0A0, &qword_1006DAFC0);

  return _swift_task_switch(sub_1001AF544, 0, 0);
}

uint64_t sub_1001AF544()
{
  sub_10000BB78(v0 + 2);
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_1001AF5EC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 192);

  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  if (v5)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "The dynamic workflow timed out", v11, 2u);
  }

  v8(v9, v10);
  v12 = *(v0 + 168);
  swift_beginAccess();
  sub_10000BBC4(v12 + 144, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (*(v0 + 80))
  {
    v13 = *(v0 + 216);
    sub_10001F358((v0 + 56), v0 + 16);
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Fetch the unorderedUI for fedstats from the dynamic workflow", v16, 2u);
    }

    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 216);
    v20 = *(v0 + 176);

    v18(v19, v20);
    sub_100020260(v0 + 16, v0 + 96);
    v21 = swift_task_alloc();
    *(v0 + 280) = v21;
    *v21 = v0;
    v21[1] = sub_1001AF42C;
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);

    return sub_1001AFF4C(v22, v0 + 96);
  }

  else
  {
    v25 = *(v0 + 208);
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v31 = *(v0 + 208);
    v32 = *(v0 + 176);
    if (v28)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Dynamic workflow is nil. Cannot build the consent UI", v33, 2u);
    }

    v30(v31, v32);
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);

    v39 = *(v0 + 8);

    return v39(0);
  }
}

uint64_t sub_1001AF940(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001AFA00, 0, 0);
}

uint64_t sub_1001AFA00()
{
  v0[6] = *(v0[2] + 40);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1001AFAB4;

  return sub_1002E1FB8();
}

uint64_t sub_1001AFAB4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1001AFC14, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v4 + 40);

    v9 = *(v6 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_1001AFC14()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingFetchedAssetManager failed to determine if there are any active proofing requests: %@", v8, 0xCu);
    sub_10000BE18(v9, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
    v11 = v0[8];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = v0[5];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1001AFDA4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to Task<>.value.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001AFE54;

  return Task<>.value.getter(a1, a2, &type metadata for () + 8);
}

uint64_t sub_1001AFE54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001AFF4C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for IdentityProofingUnorderedUIElement();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[33] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v9 = type metadata accessor for IdentityDocumentType.Category();
  v3[35] = v9;
  v10 = *(v9 - 8);
  v3[36] = v10;
  v11 = *(v10 + 64) + 15;
  v3[37] = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083D4A8, &qword_1006DB1A8) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v3[42] = v13;
  v14 = *(v13 - 8);
  v3[43] = v14;
  v15 = *(v14 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_1001B0190, 0, 0);
}

uint64_t sub_1001B0190()
{
  v108 = v0;
  v1 = *(v0 + 392);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "prepareBiomeFedStatsUIConfig: attempting to build Biome FedStats UI", v4, 2u);
  }

  v5 = *(v0 + 392);
  v6 = *(v0 + 336);
  v7 = *(v0 + 344);
  v8 = *(v0 + 224);

  v9 = *(v7 + 8);
  *(v0 + 400) = v9;
  v9(v5, v6);
  sub_10000BBC4(v8, v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
  if (!*(v0 + 80))
  {
    v35 = *(v0 + 352);
    sub_10000BE18(v0 + 56, &qword_10083D0A0, &qword_1006DAFC0);
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 344);
    v39 = *(v0 + 352);
    v41 = *(v0 + 336);
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "The dynamic workflow is not available. Cannot build Biome FedStats UI", v42, 2u);
    }

    v9(v39, v41);
    goto LABEL_18;
  }

  sub_10001F358((v0 + 56), v0 + 16);
  v10 = sub_10000BA08((v0 + 16), *(v0 + 40));
  v11 = type metadata accessor for Workflow();
  v12 = *(v10 + *(v11 + 148));
  if (v12 == 2 || (v12 & 1) == 0)
  {
    v28 = *(v0 + 384);
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "isBiomeFedStatsEnabled is not enabled from the dynamic workflow", v31, 2u);
    }

    v32 = *(v0 + 384);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);

    v9(v32, v33);
    goto LABEL_14;
  }

  v13 = v11;
  v14 = *(v0 + 328);
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  v18 = *(v0 + 240);
  v19 = *(v0 + 248);
  v20 = *(v0 + 216);
  v21 = *(v19 + 56);
  *(v0 + 408) = v21;
  *(v0 + 416) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v21(v14, 1, 1, v18);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v22 = (*(v16 + 88))(v15, v17);
  if (v22 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v23 = *(sub_10000BA08((v0 + 16), *(v0 + 40)) + *(v13 + 120));
    if (v23 && *(v23 + 16))
    {

      v24 = sub_10003ADCC(0xD000000000000016, 0x8000000100704C40);
      v25 = *(v0 + 328);
      if (v26)
      {
        (*(*(v0 + 248) + 16))(*(v0 + 320), *(v23 + 56) + *(*(v0 + 248) + 72) * v24, *(v0 + 240));
        sub_10000BE18(v25, &qword_10083D4A8, &qword_1006DB1A8);

        v27 = 0;
LABEL_30:
        v76 = *(v0 + 320);
        v77 = *(v0 + 328);
        v21(v76, v27, 1, *(v0 + 240));
        sub_1001B6CB4(v76, v77);
        v78 = *(v0 + 304);
        v79 = *(v0 + 240);
        v80 = *(v0 + 248);
        sub_10000BBC4(*(v0 + 328), v78, &qword_10083D4A8, &qword_1006DB1A8);
        v81 = (*(v80 + 48))(v78, 1, v79);
        v82 = *(v0 + 304);
        if (v81 == 1)
        {
          v83 = *(v0 + 360);
          sub_10000BE18(*(v0 + 304), &qword_10083D4A8, &qword_1006DB1A8);
          defaultLogger()();
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "fedStatsUnorderedUIElement doesn't exist. Cannot build Biome FedStats UI", v86, 2u);
          }

          v87 = *(v0 + 400);
          v88 = *(v0 + 360);
          v89 = *(v0 + 336);
          v90 = *(v0 + 344);
          v91 = *(v0 + 328);

          v87(v88, v89);
          sub_10000BE18(v91, &qword_10083D4A8, &qword_1006DB1A8);
          goto LABEL_14;
        }

        v92 = *(v0 + 232);
        (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 304), *(v0 + 240));
        *(v0 + 464) = *(v92 + 64);
        swift_beginAccess();
        sub_10000BBC4(v92 + 144, v0 + 96, &qword_10083D0A0, &qword_1006DAFC0);

        v93 = swift_task_alloc();
        *(v0 + 472) = v93;
        *v93 = v0;
        v93[1] = sub_1001B15E0;
        v94 = *(v0 + 232);

        return sub_1001B4B70(0, v0 + 96);
      }

      v58 = v25;
    }

    else
    {
      v58 = *(v0 + 328);
    }

    sub_10000BE18(v58, &qword_10083D4A8, &qword_1006DB1A8);
    v27 = 1;
    goto LABEL_30;
  }

  if (v22 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v59 = *(v0 + 368);
    v60 = *(v0 + 216);
    defaultLogger()();
    v61 = v60;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 368);
    v67 = *(v0 + 336);
    v66 = *(v0 + 344);
    v68 = *(v0 + 328);
    if (v64)
    {
      v106 = *(v0 + 328);
      v69 = *(v0 + 216);
      v104 = *(v0 + 368);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v107 = v71;
      *v70 = 136315138;
      IdentityProofingConfiguration.documentType.getter();
      v72 = IdentityDocumentType.description.getter();
      v74 = sub_100141FE4(v72, v73, &v107);

      *(v70 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unrecognized document type: %s. Cannot build Biome FedStats UI", v70, 0xCu);
      sub_10000BB78(v71);

      v9(v104, v67);
      v75 = v106;
    }

    else
    {

      v9(v65, v67);
      v75 = v68;
    }

    sub_10000BE18(v75, &qword_10083D4A8, &qword_1006DB1A8);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
LABEL_14:
    sub_10000BB78((v0 + 16));
LABEL_18:
    v44 = *(v0 + 384);
    v43 = *(v0 + 392);
    v46 = *(v0 + 368);
    v45 = *(v0 + 376);
    v48 = *(v0 + 352);
    v47 = *(v0 + 360);
    v50 = *(v0 + 320);
    v49 = *(v0 + 328);
    v52 = *(v0 + 304);
    v51 = *(v0 + 312);
    v102 = *(v0 + 296);
    v103 = *(v0 + 272);
    v105 = *(v0 + 256);

    v53 = *(v0 + 8);

    return v53(0);
  }

  *(v0 + 424) = sub_1006146AC();
  v55 = sub_10058CB08();
  *(v0 + 432) = v56;
  *(v0 + 440) = v57;
  v95 = v55;
  v96 = v56;
  v98 = v97;
  v99 = v57;
  v100 = swift_task_alloc();
  *(v0 + 448) = v100;
  *v100 = v0;
  v100[1] = sub_1001B0C00;
  v101 = *(v0 + 272);

  return sub_100612ED4(v101, v95, v96, v98, v99);
}

uint64_t sub_1001B0C00()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = v2[55];
  v6 = v2[54];
  v7 = v2[53];

  if (v0)
  {
    v8 = sub_1001B1178;
  }

  else
  {
    v8 = sub_1001B0D6C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001B0D6C()
{
  v1 = v0[34];
  v2 = *(v1 + *(v0[33] + 48));
  if (v2)
  {
    if (*(v2 + 16) && (v3 = sub_10003ADCC(0xD000000000000016, 0x8000000100704C40), (v4 & 1) != 0))
    {
      (*(v0[31] + 16))(v0[39], *(v2 + 56) + *(v0[31] + 72) * v3, v0[30]);
      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v7 = v0[51];
    v6 = v0[52];
    v8 = v0[39];
    v9 = v0[34];
    v10 = v0[30];
    sub_10000BE18(v0[41], &qword_10083D4A8, &qword_1006DB1A8);
    v7(v8, v5, 1, v10);
    sub_1001A1FAC(v9);
  }

  else
  {
    v12 = v0[51];
    v11 = v0[52];
    v13 = v0[39];
    v14 = v0[30];
    sub_10000BE18(v0[41], &qword_10083D4A8, &qword_1006DB1A8);
    sub_1001A1FAC(v1);
    v12(v13, 1, 1, v14);
  }

  sub_1001B6CB4(v0[39], v0[41]);
  v15 = v0[38];
  v16 = v0[30];
  v17 = v0[31];
  sub_10000BBC4(v0[41], v15, &qword_10083D4A8, &qword_1006DB1A8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  v19 = v0[38];
  if (v18 == 1)
  {
    v20 = v0[45];
    sub_10000BE18(v0[38], &qword_10083D4A8, &qword_1006DB1A8);
    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "fedStatsUnorderedUIElement doesn't exist. Cannot build Biome FedStats UI", v23, 2u);
    }

    v24 = v0[50];
    v25 = v0[45];
    v26 = v0[42];
    v27 = v0[43];
    v28 = v0[41];

    v24(v25, v26);
    sub_10000BE18(v28, &qword_10083D4A8, &qword_1006DB1A8);
    sub_10000BB78(v0 + 2);
    v30 = v0[48];
    v29 = v0[49];
    v32 = v0[46];
    v31 = v0[47];
    v34 = v0[44];
    v33 = v0[45];
    v36 = v0[40];
    v35 = v0[41];
    v38 = v0[38];
    v37 = v0[39];
    v44 = v0[37];
    v45 = v0[34];
    v46 = v0[32];

    v39 = v0[1];

    return v39(0);
  }

  else
  {
    v41 = v0[29];
    (*(v0[31] + 32))(v0[32], v0[38], v0[30]);
    v0[58] = *(v41 + 64);
    swift_beginAccess();
    sub_10000BBC4(v41 + 144, (v0 + 12), &qword_10083D0A0, &qword_1006DAFC0);

    v42 = swift_task_alloc();
    v0[59] = v42;
    *v42 = v0;
    v42[1] = sub_1001B15E0;
    v43 = v0[29];

    return sub_1001B4B70(0, (v0 + 12));
  }
}

uint64_t sub_1001B1178()
{
  v54 = v0;
  v1 = v0[57];
  v2 = v0[47];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v49 = v0[47];
    v51 = v0[50];
    v6 = v0[42];
    v5 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v53 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[25];
    v12 = Error.localizedDescription.getter();
    v14 = sub_100141FE4(v12, v13, &v53);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "received an error while fetching static workflow to build %s", v7, 0xCu);
    sub_10000BB78(v8);

    v51(v49, v6);
  }

  else
  {
    v15 = v0[50];
    v16 = v0[47];
    v17 = v0[42];
    v18 = v0[43];

    v15(v16, v17);
  }

  v19 = v0[38];
  v20 = v0[30];
  v21 = v0[31];
  sub_10000BBC4(v0[41], v19, &qword_10083D4A8, &qword_1006DB1A8);
  v22 = (*(v21 + 48))(v19, 1, v20);
  v23 = v0[38];
  if (v22 == 1)
  {
    v24 = v0[45];
    sub_10000BE18(v0[38], &qword_10083D4A8, &qword_1006DB1A8);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "fedStatsUnorderedUIElement doesn't exist. Cannot build Biome FedStats UI", v27, 2u);
    }

    v28 = v0[50];
    v29 = v0[45];
    v30 = v0[42];
    v31 = v0[43];
    v32 = v0[41];

    v28(v29, v30);
    sub_10000BE18(v32, &qword_10083D4A8, &qword_1006DB1A8);
    sub_10000BB78(v0 + 2);
    v34 = v0[48];
    v33 = v0[49];
    v36 = v0[46];
    v35 = v0[47];
    v38 = v0[44];
    v37 = v0[45];
    v40 = v0[40];
    v39 = v0[41];
    v42 = v0[38];
    v41 = v0[39];
    v48 = v0[37];
    v50 = v0[34];
    v52 = v0[32];

    v43 = v0[1];

    return v43(0);
  }

  else
  {
    v45 = v0[29];
    (*(v0[31] + 32))(v0[32], v0[38], v0[30]);
    v0[58] = *(v45 + 64);
    swift_beginAccess();
    sub_10000BBC4(v45 + 144, (v0 + 12), &qword_10083D0A0, &qword_1006DAFC0);

    v46 = swift_task_alloc();
    v0[59] = v46;
    *v46 = v0;
    v46[1] = sub_1001B15E0;
    v47 = v0[29];

    return sub_1001B4B70(0, (v0 + 12));
  }
}

uint64_t sub_1001B15E0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v5 = *v1;
  *(v2 + 480) = a1;

  sub_10000BE18(v2 + 96, &qword_10083D0A0, &qword_1006DAFC0);

  return _swift_task_switch(sub_1001B16F8, 0, 0);
}

uint64_t sub_1001B16F8()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 328);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v24 = sub_100284B08(v3, *(v0 + 480));

  (*(v4 + 8))(v3, v5);
  sub_10000BE18(v2, &qword_10083D4A8, &qword_1006DB1A8);
  v7 = *(v6 + 64);
  swift_beginAccess();
  v8 = *(v6 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect);
  *(v6 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect) = *(v7 + 16);

  sub_10000BB78((v0 + 16));
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v14 = *(v0 + 352);
  v13 = *(v0 + 360);
  v16 = *(v0 + 320);
  v15 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 272);
  v23 = *(v0 + 256);

  v19 = *(v0 + 8);

  return v19(v24);
}

uint64_t sub_1001B189C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_100007224(&qword_10083D4A8, &qword_1006DB1A8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001B19D0, 0, 0);
}

uint64_t sub_1001B19D0()
{
  v1 = v0[2];
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1001B1A78;
  v4 = v0[10];
  v5 = v0[3];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_1001B1A78()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1001B2044;
  }

  else
  {
    v3 = sub_1001B1B8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B1B8C()
{
  v1 = *(v0[10] + *(v0[9] + 48));
  if (v1 && *(v1 + 16))
  {
    v2 = sub_10003ADCC(0x6F54676E69646461, 0xEE0074656C6C6157);
    v3 = v0[8];
    if (v4)
    {
      v5 = v2;
      v6 = *(v1 + 56);
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v3, v6 + *(v8 + 72) * v5, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
    }

    else
    {
      v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    }
  }

  else
  {
    v9 = v0[8];
    v7 = type metadata accessor for IdentityProofingUnorderedUIElement();
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  }

  v10 = v0[7];
  sub_10000BBC4(v0[8], v10, &qword_10083D4A8, &qword_1006DB1A8);
  type metadata accessor for IdentityProofingUnorderedUIElement();
  v11 = *(v7 - 8);
  v12 = (*(v11 + 48))(v10, 1, v7);
  v13 = v0[7];
  if (v12 == 1)
  {
    sub_10000BE18(v0[7], &qword_10083D4A8, &qword_1006DB1A8);
LABEL_15:
    v24 = v0[10];
    v25 = v0[8];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.imageAssetsUnavailable(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001B7214(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v25, &qword_10083D4A8, &qword_1006DB1A8);
    sub_1001A1FAC(v24);
    v26 = v0[10];
    v27 = v0[7];
    v28 = v0[8];
    v29 = v0[6];

    v30 = v0[1];

    return v30();
  }

  v14 = v0[7];
  v15 = IdentityProofingUnorderedUIElement.imageAssets.getter();
  (*(v11 + 8))(v13, v7);
  if (!v15)
  {
    goto LABEL_15;
  }

  if (!v15[2])
  {

    goto LABEL_15;
  }

  v16 = v0[10];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  v20 = v15[4];
  v21 = v15[5];

  sub_10000BE18(v17, &qword_10083D4A8, &qword_1006DB1A8);
  sub_1001A1FAC(v16);

  v22 = v0[1];

  return v22(v20, v21);
}