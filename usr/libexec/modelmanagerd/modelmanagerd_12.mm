void sub_100112288()
{
  sub_100003324(v1 + 2);
  sub_100003324(v1 + 27);
  sub_100003324(v1 + 12);
  v2 = v1[76];
  sub_10000AA64();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000F1E0())
  {
    v3 = sub_10000EF54();
    v4(v3);
    sub_100008744();
    sub_100015F54(v5, v6);
    v7 = sub_100012B30();
    v9 = sub_100008990(v7, v8);
    v10(v9);
    swift_willThrow();

    v11 = sub_10000C9F4();
    v12(v11);
    v13 = v1[47];
    goto LABEL_17;
  }

  sub_100009B94();
  v1[48] = v2;
  swift_errorRetain();
  if (sub_10000F1E0())
  {
    v14 = sub_10000CE84();
    v15(v14);
    sub_100011980();
    if (v17)
    {
      (*(v16 + 96))(v0);
      v19 = *v0;
      v18 = v0[1];
      if (qword_1001B89C0 != -1)
      {
        sub_100005264();
        swift_once();
      }

      v20 = sub_1000111C8();
      sub_10000641C(v20, qword_1001BC8F8);
      sub_100019498();

      v21 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      sub_10001E6A4();

      if (sub_100010C0C())
      {
        v23 = v1[51];
        v22 = v1[52];
        sub_100002F10();
        v24 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_1000456DC(4.8151e-34);
        v25 = sub_100005980();
        v28 = sub_100004A3C(v25, v26, v27);
        v30 = sub_100007E88(v28, v29);

        *(v24 + 14) = v30;
        sub_10000A318();
        _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
        swift_arrayDestroy();
        sub_100005864();

        sub_100007C2C();
      }

      else
      {
      }

      v63 = v1[57];
      v62 = v1[58];
      v65 = v1[51];
      v64 = v1[52];
      sub_100008744();
      sub_100015F54(v66, v67);
      sub_100007894();
      v68 = swift_allocError();
      v70 = sub_100003624(v68, v69);
      (*(v62 + 104))(v70, enum case for ModelManagerError.assetNotFound(_:), v63);
      sub_100036E50();

      v71 = v1[48];
LABEL_17:

      sub_10000A950();

      sub_100001F00();
      sub_100003540();

      __asm { BRAA            X1, X16 }
    }

    v36 = sub_10000C75C(v16);
    v37(v36);
  }

  v38 = v1[48];

  v1[49] = v2;
  swift_errorRetain();
  swift_errorRetain();
  v39 = String.init<A>(describing:)();
  v41 = v40;
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v42 = sub_1000111C8();
  sub_10000641C(v42, qword_1001BC8F8);
  sub_100019498();

  v43 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10001E6A4();

  if (sub_100010C0C())
  {
    v45 = v1[51];
    v44 = v1[52];
    sub_100002F10();
    v46 = swift_slowAlloc();
    sub_100011828();
    swift_slowAlloc();
    sub_1000456DC(4.8151e-34);
    v47 = sub_100019678();
    v50 = sub_100004A3C(v47, v48, v49);
    *(v46 + 14) = sub_100007E88(v50, v51);
    sub_10000A318();
    _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
    sub_1000188F0();
    sub_100002BD0();

    sub_100007C2C();
  }

  v58 = v1[57];
  v57 = v1[58];
  sub_100008744();
  sub_100015F54(v59, v60);
  sub_100012B30();
  *v61 = v39;
  v61[1] = v41;
  (*(v57 + 104))(v61, enum case for ModelManagerError.modelCatalogError(_:), v58);
  sub_100036E50();

  goto LABEL_17;
}

void sub_10011275C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ModelCatalogAsset(0);
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100002B8C();
  v14 = (v13 - v12);
  v15._countAndFlagsBits = 0x706D655478616A41;
  v15._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v15))
  {
    v16 = a3 + v6[8];
    AssetCost.init(onDeviceMemory:)();
    *a3 = a1;
    a3[1] = a2;
    a3[2] = &_swiftEmptyArrayStorage;
    a3[3] = &off_1001AFEB0;
    a3[4] = &_swiftEmptyArrayStorage;
    *(a3 + v6[9]) = 1;
    *(a3 + v6[10]) = 0;
    *(a3 + v6[11]) = 0;
    *(a3 + v6[12]) = 0;
    *(a3 + v6[13]) = 0;
    *(a3 + v6[14]) = &_swiftEmptyArrayStorage;
    *(a3 + v6[15]) = 0;
    sub_100009BFC(a3, 0, 1, v6);
    sub_100002EEC();
  }

  else
  {
    if (qword_1001B8A68 != -1)
    {
LABEL_19:
      sub_1000030C4();
    }

    v18 = 0;
    v19 = qword_1001BEB10;
    v20 = *(qword_1001BEB10 + 16);
    while (v20 != v18)
    {
      if (v18 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v21 = *(v9 + 80);
      sub_10000657C();
      v22 = *(v9 + 72);
      sub_100003C40();
      sub_100116600(v23, v14);
      v24 = *v14 == a1 && v14[1] == a2;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100003C40();
        sub_10000C43C(v14, a3);
        v26 = a3;
        v27 = 0;
        goto LABEL_17;
      }

      sub_10000574C();
      sub_100116658(v14, v25);
      ++v18;
    }

    v26 = a3;
    v27 = 1;
LABEL_17:
    sub_100009BFC(v26, v27, 1, v6);
    sub_100002EEC();
  }
}

uint64_t sub_1001129A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v8, v9, v10, v11);
  sub_1000119E4();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;

  sub_10000C65C();
  sub_100128ED0();
}

uint64_t sub_100112A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_100065020(&qword_1001BCB50, &qword_100173310);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001BCB58, &qword_100173318);
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100112BB0, 0, 0);
}

uint64_t sub_100112BB0()
{
  sub_100003884();
  v1 = v0[15];
  sub_100065020(&qword_1001BCB60, &qword_100173320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10016FF40;
  static Catalog.Resource.DisabledUseCaseList.All()();
  v4 = v0[5];
  v3 = v0[6];
  sub_100003370(v0 + 2, v4);
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v3 + 8);
  sub_10000366C((v2 + 32));
  sub_100006098(v4);
  (*(v5 + 16))();
  sub_100003324(v0 + 2);
  static Catalog.monitorUpdates(for:on:)();
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  AsyncStream.makeAsyncIterator()();
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  sub_100007CD4(v10);
  v11 = v0[12];
  v12 = v0[10];
  sub_1000059F8();

  return AsyncStream.Iterator.next(isolation:)(v13);
}

uint64_t sub_100112D6C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100112E54()
{
  sub_100003884();
  if (v0[7])
  {
    v1 = v0[8];

    v14 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_100112FD0;
    v4 = v0[9];

    return v14();
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v11 = sub_10000C75C(v0[11]);
    v12(v11);
    (*(v7 + 8))(v6, v8);

    sub_100001F00();

    return v13();
  }
}

uint64_t sub_100112FD0()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[17];
  v5 = *v0;
  *v3 = *v0;

  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v2[16] = v7;
  *v7 = v5;
  sub_100007CD4();
  v8 = v1[12];
  v9 = v1[10];
  sub_1000059F8();

  return AsyncStream.Iterator.next(isolation:)(v10);
}

uint64_t sub_100113110(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_100004B70(sub_10011312C, v1);
}

uint64_t sub_10011312C()
{
  sub_100003884();
  v1 = sub_1001134A4(v0[6]);
  v0[8] = v1;
  if (*(v1 + 16) && (v2 = v0[7], v3 = OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers, swift_beginAccess(), v4 = *(v2 + v3), v0[9] = v4, v5 = v4[2], (v0[10] = v5) != 0))
  {
    v0[11] = 0;
    v6 = v0[8];
    v7 = v4[4];
    v0[12] = v4[5];

    v0[5] = v6;
    sub_100012BD8();
    sub_1000186EC();
    v22 = v8;
    v9 = *(v7 + 4);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v18 = sub_100013DC8(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22);

    return v18();
  }

  else
  {

    sub_100001F00();

    return v20();
  }
}

uint64_t sub_100113274()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[7];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  return _swift_task_switch(sub_100113390, v4, 0);
}

uint64_t sub_100113390()
{
  sub_100003884();
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {
    v3 = v0[8];
    v2 = v0[9];

    sub_100001F00();

    return v4();
  }

  else
  {
    v0[11] = v1;
    v6 = v0[8];
    v7 = v0[9] + 16 * v1;
    v8 = *(v7 + 32);
    v0[12] = *(v7 + 40);
    v0[5] = v6;
    sub_100012BD8();
    sub_1000186EC();
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v11 = sub_100013DC8();

    return v11();
  }
}

uint64_t sub_1001134A4(uint64_t a1)
{
  if (a1 && (v1 = a1, *(a1 + 16)))
  {
    v2 = qword_1001B89C0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000641C(v3, qword_1001BC8F8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315138;
      v8 = Set.description.getter();
      v10 = sub_100004A3C(v8, v9, v34);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Setting assets have updated for %s", v6, 0xCu);
      sub_100003324(v7);
    }
  }

  else
  {
    if (qword_1001B89D8 != -1)
    {
      swift_once();
    }

    v11 = dispatch thunk of CatalogClient.resources()();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = _swiftEmptyArrayStorage;
      v14 = v11 + 32;
      do
      {
        sub_100007130(v14, v34);
        sub_100007130(v34, v30);
        sub_100065020(&qword_1001BCB38, &qword_1001732E0);
        sub_100065020(&qword_1001BCB40, &qword_1001732E8);
        if (swift_dynamicCast())
        {
          v15 = v33;
          sub_100003370(&v31, *(&v32 + 1));
          v16 = *(v15 + 8);
          v17 = dispatch thunk of CatalogResource.id.getter();
          v19 = v18;
          sub_100003324(v34);
          sub_100003324(&v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10013FAFC(0, v13[2] + 1, 1, v13);
            v13 = v23;
          }

          v21 = v13[2];
          v20 = v13[3];
          if (v21 >= v20 >> 1)
          {
            sub_10013FAFC(v20 > 1, v21 + 1, 1, v13);
            v13 = v24;
          }

          v13[2] = v21 + 1;
          v22 = &v13[2 * v21];
          v22[4] = v17;
          v22[5] = v19;
        }

        else
        {
          sub_100003324(v34);
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          sub_10000ECD8(&v31, &qword_1001BCB48, &unk_1001732F0);
        }

        v14 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = _swiftEmptyArrayStorage;
    }

    if (qword_1001B89C0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000641C(v25, qword_1001BC8F8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Setting assets have updated for all assets", v28, 2u);
    }

    return sub_100077254(v13);
  }

  return v1;
}

void sub_100113988(char a1)
{
  *(v1 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_ignoreAssetUpdates) = a1;
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002FD0(v3, qword_1001BC8F8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    sub_10000A05C();
    v5 = swift_slowAlloc();
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x6465726F6E6769;
    }

    else
    {
      v7 = 0x65737365636F7270;
    }

    if (a1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    v9 = sub_100004A3C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "ModelCatalog asset updates will be %s", v5, 0xCu);
    sub_100003324(v6);
    sub_100002BD0();

    sub_100002BD0();
  }
}

uint64_t sub_100113AF8()
{
  v1 = static Obfuscation.readObfuscatedData(fileURL:fallback:)();
  v3 = v2;
  if (v0)
  {
    v41 = v0;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    v40 = String.init<A>(describing:)();
    v5 = v4;
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000641C(v6, qword_1001BC8F8);
    v7 = type metadata accessor for URL();
    v39 = &v35;
    v8 = sub_100002BDC(v7);
    v10 = v9;
    v12 = *(v11 + 64);
    __chkstk_darwin(v8);
    sub_100002B8C();
    v15 = v14 - v13;
    v16 = *(v10 + 16);
    v17 = sub_1000062B0();
    v18(v17);

    v19 = v5;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      sub_100002F10();
      v22 = swift_slowAlloc();
      v37 = v3;
      v23 = v22;
      sub_100011828();
      v36 = swift_slowAlloc();
      v41 = v36;
      *v23 = 136315394;
      v35 = v19;
      v24 = URL.path(percentEncoded:)(1);
      v38 = v1;
      (*(v10 + 8))(v15, v7);
      v25 = sub_100004A3C(v24._countAndFlagsBits, v24._object, &v41);
      v1 = v38;

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = v40;
      v27 = v35;
      *(v23 + 14) = sub_100004A3C(v40, v35, &v41);
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get obfuscated data for file %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();

      v28 = v27;
    }

    else
    {

      (*(v10 + 8))(v15, v7);
      v28 = v19;
      v26 = v40;
    }

    sub_100003B1C();
    v29 = type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v30, v31);
    sub_100007894();
    swift_allocError();
    *v32 = v26;
    v32[1] = v28;
    sub_100006098(v29);
    (*(v33 + 104))();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100113E5C()
{
  sub_10000ECD8(v0 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_assetLock, &qword_1001BCBB0, &unk_1001733A8);
  v1 = *(v0 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100113EB4()
{
  sub_100113E5C();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100113EE8()
{
  sub_100113FB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100113FB8()
{
  if (!qword_1001BC9F8)
  {
    type metadata accessor for AssetLock();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BC9F8);
    }
  }
}

__n128 sub_100114010(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_100114024(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100114064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001140B8(uint64_t *a1)
{
  v2 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v26 - v4);
  v6 = type metadata accessor for ModelCatalogAsset(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v17 = *a1;
  v16 = a1[1];
  type metadata accessor for ModelCatalogProvider(0);
  sub_10011275C(v17, v16, v5);
  if (sub_10000C6C0(v5, 1, v6) == 1)
  {
    sub_10000ECD8(v5, &qword_1001BCB68, &unk_100173328);
    if (qword_1001B89C0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000641C(v18, qword_1001BC8F8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100004A3C(v17, v16, &v27);
      _os_log_impl(&_mh_execute_header, v19, v20, "Dependent asset %s not found in test assets", v21, 0xCu);
      sub_100003324(v22);
    }

    v23 = type metadata accessor for ModelManagerError();
    sub_100015F54(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    swift_allocError();
    *v24 = v17;
    v24[1] = v16;
    (*(*(v23 - 8) + 104))(v24, enum case for ModelManagerError.assetNotFound(_:), v23);
    swift_willThrow();
  }

  else
  {
    sub_10000C43C(v5, v15);
    sub_100116600(v15, v10);
    sub_100008B58();
    sub_100116658(v13, type metadata accessor for ModelCatalogAsset);
    return sub_100116658(v15, type metadata accessor for ModelCatalogAsset);
  }
}

uint64_t sub_10011443C()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BE978);
  v6 = sub_10000641C(v5, qword_1001BE978);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD00000000000001ALL;
  *(v6 + 1) = 0x8000000100175620;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AF868;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_1001145B4()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BE990);
  v6 = sub_10000641C(v5, qword_1001BE990);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD00000000000001ALL;
  *(v6 + 1) = 0x8000000100177810;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFD50;
  *(v6 + 4) = &off_1001AFD98;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100114734()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BE9A8);
  v6 = sub_10000641C(v5, qword_1001BE9A8);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x8000000100175640;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AF8B0;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_1001148A4()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BE9C0);
  v6 = sub_10000641C(v5, qword_1001BE9C0);
  if (qword_1001B89C8 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD00000000000001BLL;
  *(v6 + 1) = 0x8000000100177A70;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AF8F8;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100114A48()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BE9D8);
  v6 = sub_10000641C(v5, qword_1001BE9D8);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000021;
  *(v6 + 1) = 0x8000000100177A40;
  *(v6 + 2) = &off_1001AF940;
  *(v6 + 3) = &off_1001AF980;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100114BC0()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BE9F0);
  v6 = sub_10000641C(v5, qword_1001BE9F0);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000021;
  *(v6 + 1) = 0x8000000100177A10;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AF9C8;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 0;
  v6[v5[10]] = 0;
  v6[v5[11]] = 1;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100114D34()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA08);
  v6 = sub_10000641C(v5, qword_1001BEA08);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000020;
  *(v6 + 1) = 0x80000001001779B0;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFA58;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100114EA8()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA20);
  v6 = sub_10000641C(v5, qword_1001BEA20);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000028;
  *(v6 + 1) = 0x80000001001779E0;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFA10;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_10011501C()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA38);
  v6 = sub_10000641C(v5, qword_1001BEA38);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD00000000000001ELL;
  *(v6 + 1) = 0x8000000100177990;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFAA0;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100115190()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA50);
  v6 = sub_10000641C(v5, qword_1001BEA50);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000025;
  *(v6 + 1) = 0x8000000100177960;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFAE8;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 1;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100115300()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA68);
  v6 = sub_10000641C(v5, qword_1001BEA68);
  if (qword_1001B89C8 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000025;
  *(v6 + 1) = 0x8000000100177930;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFB30;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_1001154A4()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA80);
  v6 = sub_10000641C(v5, qword_1001BEA80);
  if (qword_1001B89C8 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000026;
  *(v6 + 1) = 0x8000000100177900;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFB78;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100115648()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEA98);
  v6 = sub_10000641C(v5, qword_1001BEA98);
  if (qword_1001B89D0 != -1)
  {
    swift_once();
  }

  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000025;
  *(v6 + 1) = 0x80000001001778D0;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFBC0;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_1001157EC()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEAB0);
  v6 = sub_10000641C(v5, qword_1001BEAB0);
  if (qword_1001B89D0 != -1)
  {
    swift_once();
  }

  result = qword_1001BE968 + 1;
  if (qword_1001BE968 == -1)
  {
    __break(1u);
  }

  else
  {
    AssetCost.init(onDeviceMemory:)();
    *v6 = 0xD00000000000002FLL;
    *(v6 + 1) = 0x80000001001778A0;
    *(v6 + 2) = &_swiftEmptyArrayStorage;
    *(v6 + 3) = &off_1001AFC08;
    *(v6 + 4) = &_swiftEmptyArrayStorage;
    result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
    v6[v5[9]] = 1;
    v6[v5[10]] = 0;
    v6[v5[11]] = 0;
    v6[v5[12]] = 0;
    v6[v5[13]] = 0;
    *&v6[v5[14]] = &_swiftEmptyArrayStorage;
    v6[v5[15]] = 0;
  }

  return result;
}

uint64_t sub_10011599C()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEAC8);
  v6 = sub_10000641C(v5, qword_1001BEAC8);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000023;
  *(v6 + 1) = 0x8000000100177870;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFC50;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100115B14()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEAE0);
  v6 = sub_10000641C(v5, qword_1001BEAE0);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x8000000100177850;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFCC0;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100115C88()
{
  v0 = type metadata accessor for AssetCost();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelCatalogAsset(0);
  sub_100065A60(v5, qword_1001BEAF8);
  v6 = sub_10000641C(v5, qword_1001BEAF8);
  AssetCost.init(onDeviceMemory:)();
  *v6 = 0xD000000000000018;
  *(v6 + 1) = 0x8000000100177830;
  *(v6 + 2) = &_swiftEmptyArrayStorage;
  *(v6 + 3) = &off_1001AFD08;
  *(v6 + 4) = &_swiftEmptyArrayStorage;
  result = (*(v1 + 32))(&v6[v5[8]], v4, v0);
  v6[v5[9]] = 1;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  *&v6[v5[14]] = &_swiftEmptyArrayStorage;
  v6[v5[15]] = 0;
  return result;
}

uint64_t sub_100115DFC()
{
  sub_100065020(&qword_1001BCB90, &qword_100173370);
  v0 = type metadata accessor for ModelCatalogAsset(0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100173190;
  v4 = v3 + v2;
  if (qword_1001B89E0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000641C(v0, qword_1001BE978);
  sub_100116600(v5, v4);
  if (qword_1001B89F0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000641C(v0, qword_1001BE9A8);
  sub_100116600(v6, v4 + v1);
  if (qword_1001B89F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000641C(v0, qword_1001BE9C0);
  sub_100116600(v7, v4 + 2 * v1);
  if (qword_1001B8A00 != -1)
  {
    swift_once();
  }

  v8 = sub_10000641C(v0, qword_1001BE9D8);
  sub_100116600(v8, v4 + 3 * v1);
  if (qword_1001B8A08 != -1)
  {
    swift_once();
  }

  v9 = sub_10000641C(v0, qword_1001BE9F0);
  sub_100116600(v9, v4 + 4 * v1);
  if (qword_1001B8A18 != -1)
  {
    swift_once();
  }

  v10 = sub_10000641C(v0, qword_1001BEA20);
  sub_100116600(v10, v4 + 5 * v1);
  if (qword_1001B8A10 != -1)
  {
    swift_once();
  }

  v11 = sub_10000641C(v0, qword_1001BEA08);
  sub_100116600(v11, v4 + 6 * v1);
  if (qword_1001B8A20 != -1)
  {
    swift_once();
  }

  v12 = sub_10000641C(v0, qword_1001BEA38);
  sub_100116600(v12, v4 - v1 + 8 * v1);
  if (qword_1001B8A28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000641C(v0, qword_1001BEA50);
  sub_100116600(v13, v4 + 8 * v1);
  if (qword_1001B8A30 != -1)
  {
    swift_once();
  }

  v14 = sub_10000641C(v0, qword_1001BEA68);
  sub_100116600(v14, v4 + 9 * v1);
  if (qword_1001B8A38 != -1)
  {
    swift_once();
  }

  v15 = sub_10000641C(v0, qword_1001BEA80);
  sub_100116600(v15, v4 + 10 * v1);
  if (qword_1001B8A40 != -1)
  {
    swift_once();
  }

  v16 = sub_10000641C(v0, qword_1001BEA98);
  sub_100116600(v16, v4 + 11 * v1);
  if (qword_1001B8A48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000641C(v0, qword_1001BEAB0);
  sub_100116600(v17, v4 + 12 * v1);
  if (qword_1001B8A50 != -1)
  {
    swift_once();
  }

  v18 = sub_10000641C(v0, qword_1001BEAC8);
  sub_100116600(v18, v4 + 13 * v1);
  if (qword_1001B8A58 != -1)
  {
    swift_once();
  }

  v19 = sub_10000641C(v0, qword_1001BEAE0);
  sub_100116600(v19, v4 + 14 * v1);
  if (qword_1001B8A60 != -1)
  {
    swift_once();
  }

  v20 = sub_10000641C(v0, qword_1001BEAF8);
  sub_100116600(v20, v4 - v1 + 16 * v1);
  if (qword_1001B89E8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000641C(v0, qword_1001BE990);
  result = sub_100116600(v21, v4 + 16 * v1);
  qword_1001BEB10 = v3;
  return result;
}

uint64_t sub_100116540()
{
  sub_100003884();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v8 = sub_100007D94(v6);

  return sub_100112A7C(v8, v9, v10, v11, v3);
}

uint64_t sub_100116600(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v5 = v4(v3);
  sub_100002C00(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

uint64_t sub_100116658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1001166B0()
{
  sub_100003884();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  v10 = sub_100004B00(v9);
  *v10 = v11;
  v10[1] = sub_10006FA64;

  return sub_10010F7EC(v6, v4, v2, v8);
}

uint64_t sub_100116774()
{
  sub_100003884();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v9 = sub_100007D94(v7);

  return sub_10010F8EC(v9, v10, v11, v12, v4, v5);
}

unint64_t sub_10011681C()
{
  result = qword_1001B8BD8;
  if (!qword_1001B8BD8)
  {
    sub_10006A614(&qword_1001B8BD0, &qword_10016F7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8BD8);
  }

  return result;
}

uint64_t sub_100116880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001168C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100116934()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001169A8(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return FilePath.init(stringLiteral:)();
}

uint64_t OSEligibilityChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100065AC4();
  *(v0 + 112) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t sub_100116A78(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00747365757165;
  v3 = 0x5265747563657865;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7165526575657571;
    }

    else
    {
      v5 = 0x536D726177657270;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000074736575;
    }

    else
    {
      v6 = 0xEE006E6F69737365;
    }
  }

  else
  {
    v5 = 0x5265747563657865;
    v6 = 0xEE00747365757165;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7165526575657571;
    }

    else
    {
      v3 = 0x536D726177657270;
    }

    if (a2 == 1)
    {
      v2 = 0xEC00000074736575;
    }

    else
    {
      v2 = 0xEE006E6F69737365;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100116BEC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_10011859C(a4, a5);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100116CC4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x73694C776F6C6C41;
  }

  else
  {
    v3 = 0x73656963696C6F50;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (a2)
  {
    v5 = 0x73694C776F6C6C41;
  }

  else
  {
    v5 = 0x73656963696C6F50;
  }

  if (a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100116DB0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BCC48);
  sub_10000641C(v0, qword_1001BCC48);
  return generalLogHandle.getter();
}

uint64_t OSEligibilityChecker.init()()
{
  swift_defaultActor_initialize();
  sub_100065AC4();
  *(v0 + 112) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

Swift::Void __swiftcall OSEligibilityChecker.prewarm(for:)(modelmanagerd::OSEligibilityDomain a1)
{
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v7._object = 0x8000000100177AD0;
  v7._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v7);
  v11[1] = a1.rawValue;
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = type metadata accessor for TaskPriority();
  sub_100009BFC(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2].rawValue = 0;
  v10[3].rawValue = 0;
  v10[4].rawValue = v1;
  v10[5].rawValue = a1.rawValue;

  sub_1000652FC();
}

uint64_t sub_100116FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100117048;

  return OSEligibilityChecker.isEligible(for:)();
}

uint64_t sub_100117048()
{
  sub_100002BAC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_100117130()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100117048;

  return sub_100116FAC();
}

uint64_t OSEligibilityChecker.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t OSEligibilityChecker.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100117250()
{
  sub_100002BAC();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

unint64_t sub_10011739C(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_100117458(a1, v4);
}

unint64_t sub_1001173E4()
{
  v1 = *(v0 + 40);
  type metadata accessor for UUID();
  sub_10005F300(&qword_1001B8C00);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v2 = sub_1000055A4();

  return sub_1001174B8(v2, v3);
}

unint64_t sub_100117458(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1001174B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = a1;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, *(v3 + 48) + *(v12 + 72) * i, v7);
    sub_10005F300(&qword_1001B94A8);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v8 + 8))(v11, v7);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100117650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_10005E2C8(a2);
  sub_100005278(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_100065020(&qword_1001B8F80, &qword_10016FB90);
  v14 = sub_100002DF8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_10005E2C8(a2);
  if ((v13 & 1) != (v18 & 1))
  {
LABEL_13:
    type metadata accessor for DaemonRequest(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v17;
LABEL_5:
  v19 = *v3;
  if (v13)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v12);
    *(v20 + 8 * v12) = a1;
    sub_100009C38();
  }

  else
  {
    sub_1001181C8(v12, a2, a1, v19);
    sub_100009C38();
  }
}

uint64_t sub_10011778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000236F4(a3, a4);
  sub_100005278(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_100065020(&qword_1001BCD30, &qword_1001734F0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_1000236F4(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
    sub_100002EEC();
  }

  else
  {
    sub_10011820C(v18, a3, a4, a1, a2, v23);
    sub_100002EEC();
  }
}

unint64_t sub_1001178C4(char a1, Swift::UInt64 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100014804(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_100065020(&qword_1001BCD70, &qword_100173528);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = sub_100014804(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + v14) = a1 & 1;
  }

  else
  {

    return sub_100118258(v14, a2, a1 & 1, v19);
  }

  return result;
}

uint64_t sub_1001179FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = sub_10000A6E0(a1, a2);
  v10 = sub_1000236F4(v8, v9);
  sub_100005278(v10, v11);
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  sub_100065020(&qword_1001BCD58, &unk_100173508);
  if (!sub_100012874())
  {
    goto LABEL_5;
  }

  v17 = *v4;
  v18 = sub_1000236F4(a2, a3);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v5;
  if (v16)
  {
    sub_100003324((v20[7] + 40 * v15));
    sub_100009C38();

    return sub_100004A04(v21, v22);
  }

  else
  {
    sub_10011829C(v15, a2, a3, v3, v20);
    sub_100009C38();
  }
}

void sub_100117B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v32 - v12;
  v14 = *v2;
  sub_10005E448(a2, &qword_1001B8F48, &qword_10016FB30, &qword_1001B9580, &qword_1001B9588);
  sub_100005278(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  sub_100065020(&qword_1001BCD60, &qword_100173518);
  if (sub_100012874())
  {
    v22 = *v3;
    sub_10005E448(a2, &qword_1001B8F48, &qword_10016FB30, &qword_1001B9580, &qword_1001B9588);
    if ((v21 & 1) == (v24 & 1))
    {
      v20 = v23;
      goto LABEL_5;
    }

LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_5:
  v25 = *v3;
  if (v21)
  {
    v26 = v25[7];
    v27 = type metadata accessor for RequestPriority();
    sub_100002C00(v27);
    v29 = *(v28 + 40);
    sub_1000058C4(*(v28 + 72));
    sub_100002EEC();

    __asm { BRAA            X3, X16 }
  }

  (*(v9 + 16))(v13, a2, v6);
  sub_10011830C(v20, v13, a1, v25);
  sub_100002EEC();
}

uint64_t sub_100117D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v11 = v8;
  v15 = sub_10000A6E0(a1, a2);
  v17 = sub_1000236F4(v15, v16);
  sub_100005278(v17, v18);
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v19;
  v23 = v20;
  sub_100065020(a5, a6);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v8))
  {
    goto LABEL_5;
  }

  v24 = *v8;
  v25 = sub_1000236F4(a2, a3);
  if ((v23 & 1) != (v26 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = v25;
LABEL_5:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = a7(0);
    sub_100002C00(v29);
    v31 = *(v30 + 40);
    v32 = sub_1000058C4(*(v30 + 72));

    return v33(v32);
  }

  else
  {
    sub_10011840C(v22, a2, a3, v7, v27);
  }
}

unint64_t sub_100117EB0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_10011739C(a2);
  sub_100005278(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_100065020(&qword_1001BCD48, &qword_1001734F8);
  v14 = sub_100002DF8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_10011739C(a2);
  if ((v13 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v17;
LABEL_5:
  if (v13)
  {
    v19 = *(*v3 + 56);
    v20 = *(v19 + 8 * v12);
    *(v19 + 8 * v12) = a1;
    sub_100009C38();
  }

  else
  {
    sub_100009C38();

    return sub_100118494(v23, v24, v25, v26);
  }
}

void sub_100117FB8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  sub_10000A6E0(a1, a2);
  v6 = sub_1001173E4();
  sub_100005278(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  sub_100065020(&qword_1001BCD50, &qword_100173500);
  v13 = sub_100002DF8();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_1001173E4();
  if ((v12 & 1) != (v17 & 1))
  {
LABEL_11:
    type metadata accessor for UUID();
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v16;
LABEL_5:
  v18 = *v4;
  if (v12)
  {
    sub_100003324((v18[7] + 40 * v11));
    sub_100009C38();

    sub_100004A04(v19, v20);
  }

  else
  {
    v22 = type metadata accessor for UUID();
    v23 = sub_100002BDC(v22);
    v25 = *(v24 + 64);
    __chkstk_darwin(v23);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, a2);
    sub_1001184D8(v11, v27, v2, v18);
    sub_100009C38();
  }
}

uint64_t sub_100118154(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005D74(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  result = sub_100025E18(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = *(a5 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }

  return result;
}

unint64_t sub_1001181C8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_10011820C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
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

unint64_t sub_100118258(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
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

uint64_t sub_10011829C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100004A04(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10011830C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RequestPriority();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_10011840C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005D74(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  sub_100002C00(v11);
  result = (*(v12 + 32))(v9 + *(v12 + 72) * a1, a4);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

unint64_t sub_100118494(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
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

uint64_t sub_1001184D8(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100004A04(a3, a4[7] + 40 * a1);
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

uint64_t sub_10011859C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001185E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100005D74(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_10011863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100002BAC();
  v15 = *(v14[2] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask);
  v14[3] = v15;
  if (v15)
  {

    Task.cancel()();
    v16 = async function pointer to Task<>.value.getter[1];
    v17 = swift_task_alloc();
    v14[4] = v17;
    *v17 = v14;
    v17[1] = sub_100118744;

    return Task<>.value.getter(v17, v15, &type metadata for () + 8, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_100043844();
    sub_100001F00();

    return v23();
  }
}

uint64_t sub_100118744()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10011883C()
{
  sub_100002BAC();
  v1 = *(v0 + 24);

  v2 = *(v0 + 16);
  sub_100043844();
  sub_100001F00();

  return v3();
}

uint64_t sub_10011889C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BCD78);
  sub_10000641C(v0, qword_1001BCD78);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10011890C()
{
  sub_100003884();
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  v3 = *(v0 + 264);

  *(v0 + 145) = 0;
  v4 = *(v0 + 256);

  if (qword_1001B8A78 != -1)
  {
    sub_10000877C();
  }

  v5 = type metadata accessor for Logger();
  sub_100002FD0(v5, qword_1001BCD78);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_100002F80(v7))
  {
    v8 = sub_100007648();
    sub_10000A240(v8);
    sub_100003DD0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_100002F64();
  }

  v14 = *(v0 + 152);

  sub_100004C24();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    sub_100005CE0();
    os_activity_scope_leave((v6 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100004CC8();

    __asm { BRAA            X1, X16 }
  }

  sub_100004CC8();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100118AD0()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 328);
  v7 = *(v2 + 264);
  if (v0)
  {
  }

  sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);

  return _swift_task_switch(sub_100041C40, v7, 0);
}

uint64_t sub_100118C40()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 480);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 264);

    v11 = sub_100002C10();

    return _swift_task_switch(v11, v12, v13);
  }

  return result;
}

uint64_t sub_100118D3C()
{
  v152 = v1;
  v3 = v1[33];
  v4 = sub_100010EB0();
  v5 = v4;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_25:
    v107 = v1[45];

    Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (sub_100002F80(v108))
    {
      v109 = sub_100007648();
      sub_10000A240(v109);
      sub_100003DD0();
      _os_log_impl(v110, v111, v112, v113, v114, 2u);
      sub_100002F64();
    }

    sub_100003630();
    v115 = sub_100006348();
    v2(v115);
    sub_100003978();
    sub_100009BFC(v116, v117, v118, v0);
LABEL_28:
    v119 = sub_100006588();
    v2(v119);
    v120 = v1[31];

    sub_100001F00();
LABEL_29:
    sub_100007968();

    return v121();
  }

LABEL_24:
  if (!sub_10001890C())
  {
    goto LABEL_25;
  }

LABEL_3:
  sub_10002CC90(v5);
  sub_100036758();
  sub_100019274();
  v9 = sub_10002D264(v6, v7, v8);
  v11 = v10;
  v132 = v0;

  v0 = *(v11 + 16);
  if (!v0)
  {
    v51 = v1;
    v52 = v1[45];
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (sub_100006168(v54))
    {
      v55 = sub_100007698();
      v56 = sub_1000031E0();
      v151[0] = v56;
      *v55 = 136315138;
      type metadata accessor for InferenceProviderAsset(0);
      sub_100002E08();
      sub_10002C7C4(v57, v58);

      v59 = Set.description.getter();
      v61 = v60;

      v62 = sub_100004A3C(v59, v61, v151);

      *(v55 + 4) = v62;
      sub_100007CF4(&_mh_execute_header, v63, v64, "All remaining assets that need transitioning have failed to unload or move to dynamic, %s");
      sub_100003324(v56);
      sub_100012A9C();
      sub_100002F64();
    }

    v65 = v1[49];
    v66 = v1[46];
    v67 = v1[47];
    v68 = type metadata accessor for ModelManagerError();
    sub_10000528C();
    sub_10002C7C4(v69, v70);
    sub_100008194();
    sub_100006098(v68);
    (*(v71 + 104))();
    swift_willThrow();

    v2 = *(v67 + 8);
    (v2)(v65, v66);
LABEL_17:
    sub_100012894();
    v149 = v1[35];
    v2(v51);

    sub_100001F00();
    goto LABEL_29;
  }

  v12 = v1[46];
  v5 = v1[47];
  v141 = v1[34];
  v13 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v13);
  v126 = *(v14 + 64) + 15;
  v135 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v15, v16, v17, v12);
  v144 = (v5 + 16);
  v129 = v9;

  v18 = 0;
  v146 = (v5 + 8);
  v123 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v138 = v11;
  while (1)
  {
    if (v18 >= v0)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_10000A980();
    v19 = *(v11 + 8 * v18 + 32);
    v20 = swift_task_alloc();
    v21 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v21 + v19, v2);
    v22 = swift_task_alloc();
    v5 = sub_10000AA84(v22, v23, v24, v25, v26, v27, v28, v29, v123, v126, v129, v132, v135, v138, v141);

    v30 = sub_100018A64();
    v38 = sub_100013EE0(v30, v31, v32, v33, v34, v35, v36, v37, v124, v127, v130, v133, v136, v139, v142, v144);
    v5(v38);
    v39 = sub_1000193F0(v2);
    sub_100011990(v39, v40, v41, v42, v43, v44, v45, v46, v125, v128, v131, v134, v137, v140, v143, v145, v146, v147, v148);
    v2 = *v146;
    v47 = sub_10000CDA4();
    v2(v47);

    v48 = static Date.> infix(_:_:)();

    if (v48)
    {
      break;
    }

    ++v18;
    (v2)(v20, v1[46]);

    v11 = v138;
    v0 = *(v138 + 16);
    if (v18 == v0)
    {
      v49 = v129;

      v50 = v135;
      goto LABEL_13;
    }
  }

  v72 = v1[46];
  v73 = v1[47];
  v49 = v129;

  v11 = v138;

  v50 = v135;
  sub_10002C278(v135, &qword_1001BBA80, &qword_100172440);
  (*(v73 + 32))(v135, v20, v72);
  sub_1000070D0(v135);

LABEL_13:
  v74 = v1[46];
  v75 = sub_100005FA4();
  sub_10002CC20(v50, v75);
  sub_100007204();
  sub_10002C278(v75, &qword_1001BBA80, &qword_100172440);

  if (v74 == 1)
  {
    v76 = v1[45];

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v50 = sub_100007698();
      v79 = sub_1000031E0();
      v151[0] = v79;
      *v50 = 136315138;
      v80 = sub_1001196B4(v49, v11);
      v19 = v49;
      v82 = sub_100004A3C(v80, v81, v151);

      *(v50 + 4) = v82;
      sub_1000034C8(&_mh_execute_header, v83, v84, "Remaining transition candidates %s generated task wake times in the past.  Ending asset transition task");
      sub_100003324(v79);
      sub_100002BB8();
      sub_100012A9C();
    }

    v51 = sub_1000076D8();
    sub_10000528C();
    sub_10002C7C4(v85, v86);
    sub_10000A418();
    sub_100006098(v51);
    (*(v87 + 104))();
    swift_willThrow();

    (v2)(v50, v19);
    sub_10002C278(v135, &qword_1001BBA80, &qword_100172440);

    goto LABEL_17;
  }

  sub_1000082B4();
  sub_100003904();
  (v5)();
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v88, v89))
  {
    v102 = v1[49];
    v103 = v1[46];

    v104 = sub_10000F200();
    v2(v104);
    v105 = sub_100001F70();
    v2(v105);

    goto LABEL_22;
  }

  v90 = v1[46];
  v91 = sub_100007698();
  *v91 = 134217984;
  sub_100004BA0();
  sub_100005FA4();
  v92 = sub_10000CDA4();
  sub_10002CC20(v92, v93);
  v94 = sub_10000205C();
  result = sub_10000C6C0(v94, v95, v90);
  if (result != 1)
  {
    sub_1000456E8();
    v98 = v97;
    v99 = sub_10000F200();
    v2(v99);
    v100 = sub_100001F70();
    v2(v100);

    *(v91 + 4) = v98;
    sub_1000080F4(&_mh_execute_header, v101, v89, "Additional assets need transitioning, next task wake in %f seconds");
    sub_100002BB8();

    (v2)(v150, v90);
LABEL_22:
    v106 = v1[32];
    sub_100004BA0();
    sub_10002CC20(v135, v106);
    sub_10002C278(v135, &qword_1001BBA80, &qword_100172440);

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100119624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000B4668;

  return sub_100025A00();
}

uint64_t sub_1001196B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  for (i = 1; v2; --v2)
  {
    v5 = *v3;

    if ((i & 1) == 0)
    {
      v6._countAndFlagsBits = 8236;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
    }

    sub_100065020(&unk_1001BCD90, &qword_100173570);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10016FF40;
    *(v7 + 56) = type metadata accessor for InferenceProviderAsset(0);
    *(v7 + 32) = v5;

    debugPrint<A>(_:separator:terminator:to:)();

    i = 0;
    ++v3;
  }

  v8._countAndFlagsBits = 93;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 91;
}

uint64_t sub_1001197EC()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;
  sub_100019274();

  return sub_100119624();
}

uint64_t sub_100119890()
{
  sub_100065020(&unk_1001BCE50, &qword_1001735B0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1001BCDA0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelManager(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ModelManager(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100119A3C()
{
  result = qword_1001BCE60;
  if (!qword_1001BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativeModels(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100119B40()
{
  result = qword_1001BCE68;
  if (!qword_1001BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE68);
  }

  return result;
}

uint64_t ProcessHandle.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ProcessHandle.executablePath.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

__n128 sub_100119BF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100119C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100119C7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 5))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_100119CC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100119DA0()
{
  result = qword_1001BCE70;
  if (!qword_1001BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCE70);
  }

  return result;
}

void *sub_100119DF4(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for InferenceProviderAssetDescriptor();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v61);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v48 = a2;
    v70 = v2;
    v71 = _swiftEmptyArrayStorage;
    sub_100071060();
    v9 = v71;
    v10 = sub_10001E724(a1);
    v12 = v11;
    v13 = a1 + 56;
    result = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
    v69 = 0;
    v54 = v5 + 8;
    v55 = v5 + 16;
    v56 = result;
    v15 = v10;
    v16 = *(result - 1);
    v59 = *(v16 + 64);
    v52 = v16 + 32;
    v53 = v16;
    v49 = a1 + 64;
    v50 = v8;
    v51 = a1;
    v57 = v5;
    v58 = a1 + 56;
    while (1)
    {
      result = __chkstk_darwin(result);
      v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((v15 & 0x8000000000000000) != 0 || v15 >= v18 << *(a1 + 32))
      {
        break;
      }

      if ((*(v13 + 8 * (v15 >> 6)) & (v18 << v15)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v17)
      {
        goto LABEL_27;
      }

      v62 = v18 << v15;
      v63 = v15 >> 6;
      v65 = v17;
      v66 = v19;
      v67 = v12;
      v22 = *(a1 + 48);
      v23 = *(v5 + 72);
      v64 = v15;
      v24 = v22 + v23 * v15;
      v25 = *(v5 + 16);
      v68 = v9;
      v27 = v60;
      v26 = v61;
      v25(v60, v24, v61);
      v28 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v30 = v29;
      v31 = InferenceProviderAssetDescriptor.version.getter();
      v33 = v32;
      v34 = __chkstk_darwin(v31);
      *(&v48 - 4) = v28;
      *(&v48 - 3) = v30;
      *(&v48 - 2) = v34;
      *(&v48 - 1) = v33;
      v35 = v56;
      v36 = v70;
      static Buildable.with(_:)();
      v70 = v36;
      v5 = v57;

      v37 = v27;
      v9 = v68;
      (*(v5 + 8))(v37, v26);
      v71 = v9;
      v38 = v9[2];
      if (v38 >= v9[3] >> 1)
      {
        sub_100071060();
        v9 = v71;
      }

      v9[2] = v38 + 1;
      result = (*(v53 + 32))(v9 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v38, v21, v35);
      v13 = v58;
      if (v67)
      {
        goto LABEL_31;
      }

      v39 = v50;
      a1 = v51;
      v15 = 1 << *(v51 + 32);
      result = v64;
      if (v64 >= v15)
      {
        goto LABEL_28;
      }

      v40 = *(v58 + 8 * v63);
      if ((v40 & v62) == 0)
      {
        goto LABEL_29;
      }

      if (*(v51 + 36) != v65)
      {
        goto LABEL_30;
      }

      v41 = v40 & (-2 << (v64 & 0x3F));
      if (v41)
      {
        v15 = __clz(__rbit64(v41)) | v64 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v63 << 6;
        v43 = v63 + 1;
        v44 = (v49 + 8 * v63);
        while (v43 < (v15 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            result = sub_100016E94(v64, v65, 0);
            v15 = __clz(__rbit64(v45)) + v42;
            goto LABEL_20;
          }
        }

        result = sub_100016E94(v64, v65, 0);
      }

LABEL_20:
      if (v69 + 1 == v39)
      {

        return v9;
      }

      ++v69;
      v12 = 0;
      v47 = *(a1 + 36);
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t EventReporterWrapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

void *sub_10011A2E4(void *a1)
{
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  sub_100004B1C();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_100065020(&qword_1001BD0C8, &qword_1001739B0);
  v8 = Dictionary.init(dictionaryLiteral:)();
  sub_100065020(&qword_1001BD0D0, qword_1001739B8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  a1[2] = v9;
  a1[3] = sub_10011A448;
  a1[4] = 0;
  v10 = type metadata accessor for AuditToken();
  sub_100009BFC(v7, 1, 1, v10);
  sub_10011A448(v7, v16);
  sub_10000ECD8(v7, &qword_1001BB3F8, &qword_100171D50);
  sub_100004A04(v16, (a1 + 5));
  v11 = type metadata accessor for TelemetrySignposter();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  a1[10] = sub_1000E2800();
  return a1;
}

uint64_t sub_10011A448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  sub_10002E90C(a1, &v15 - v6, &qword_1001BB3F8, &qword_100171D50);
  v8 = type metadata accessor for AuditToken();
  sub_10000C6C0(v7, 1, v8);
  sub_10000ECD8(v7, &qword_1001BB3F8, &qword_100171D50);
  v9 = type metadata accessor for EventReporter();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = EventReporter.init()();
  v13 = type metadata accessor for EventReporterWrapper();
  result = swift_allocObject();
  *(result + 16) = v12;
  a2[3] = v13;
  a2[4] = &off_1001B2530;
  *a2 = result;
  return result;
}

void sub_10011A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, unsigned int a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, uint64_t a29)
{
  sub_1000055B0();
  v88 = v30;
  v89 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v82 = a29;
  v84 = a28;
  v85 = a27;
  v86 = a26;
  v44 = a24;
  v83 = a25;
  v45 = a22;
  v46 = a23;
  v87 = a21;
  if (sub_1000136A8())
  {
    v47 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v71 = &v68;
    sub_100002F04(v47);
    v49 = *(v48 + 64);
    sub_100004B1C();
    __chkstk_darwin(v50);
    v69 = &v68 - v51;
    v52 = sub_100003370(v29 + 5, v29[8]);
    v70 = &v68;
    v53 = __chkstk_darwin(v52);
    v76 = v43;
    v77 = v41;
    *(&v68 - 14) = v43;
    *(&v68 - 13) = v41;
    v78 = v39;
    v79 = v37;
    *(&v68 - 12) = v39;
    *(&v68 - 11) = v37;
    v80 = v35;
    v81 = v33;
    v55 = v88;
    v54 = v89;
    *(&v68 - 10) = v35;
    *(&v68 - 9) = v55;
    v75 = v29;
    *(&v68 - 8) = v29;
    *(&v68 - 7) = v33;
    v61 = v54;
    v62 = a22;
    v63 = a23;
    v56 = v69;
    v64 = a24;
    v65 = v83;
    LOBYTE(v66) = v86 & 1;
    BYTE1(v66) = v85 & 1;
    BYTE2(v66) = v84 & 1;
    v67 = v87;
    sub_1000084CC(v53);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    HIDWORD(v74) = a24;
    v72 = a22;
    v73 = a23;
    v57 = sub_1000128AC();
    sub_100005914(v56, v58, v59, v57);
    sub_10000ECD8(v56, &qword_1001BD070, &qword_100173948);
    v45 = v72;
    v35 = v80;
    v33 = v81;
    v39 = v78;
    v37 = v79;
    v43 = v76;
    v41 = v77;
    v29 = v75;
    v44 = HIDWORD(v74);
    v46 = v73;
  }

  v60 = v29[10];
  BYTE2(v66) = v84 & 1;
  BYTE1(v66) = v85 & 1;
  LOBYTE(v66) = v86 & 1;
  sub_1000E2A20(v43, v41, v39, v37, v35, v88, v33, v89, v87, v45, v46, __SPAIR64__(v83, v44), v66, v82, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, SHIDWORD(v77), v78, BYTE1(v78));
  sub_100002EEC();
}

uint64_t sub_10011A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, int a12, int a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17)
{
  v34 = a7;
  v33 = a6;
  v32 = a5;
  v57 = a17;
  v38 = a15;
  v39 = a16;
  v36 = a13;
  v37 = a14;
  v35 = a12;
  v31 = a9;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v53 = a8;
  v54 = a9;
  v55 = a10;
  v56 = a11;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v23 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = (&v31 - v25);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest();
  v27 = swift_allocBox();
  v40 = v35;
  v41 = v36;
  v42 = v37;
  v43 = v38;
  v44 = v39;
  v45 = v57;
  v46 = a8;
  static Buildable.with(_:)();
  *v26 = v27;
  v28 = enum case for GenerativeFunctionsInstrumentationMetadata.mmExecuteRequest(_:);
  v29 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v29 - 8) + 104))(v26, v28, v29);
  sub_100009BFC(v26, 0, 1, v29);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_10011AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23[0] = a4;
  v23[1] = a6;
  v31 = a11;
  v26 = a12;
  v24 = a9;
  v25 = a10;
  v12 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v15 = type metadata accessor for UUID();
  sub_100009BFC(v23 - v14, 0, 1, v15);
  v16 = GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  __chkstk_darwin(v16);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  sub_100009BFC(v23 - v14, 0, 1, v15);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.clientRequestIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter();
  v17 = sub_100065020(&qword_1001BD088, &qword_100173968);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v23 - v19;
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v27 = v24;
  v28 = v25;
  v29 = 0;
  v30 = 0;
  static Buildable.with(_:)();
  sub_100009BFC(v20, 0, 1, v21);
  GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();

  return GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
}

uint64_t sub_10011ACFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.createdByPID.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.onBehalfOfPID.setter();
  v11 = sub_100065020(&qword_1001BD0C0, &unk_1001739A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  v16 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.streaming(_:);
  if (a4)
  {
    v16 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.oneShot(_:);
  }

  (*(*(v15 - 8) + 104))(v14, *v16, v15);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  sub_100009BFC(v14, 0, 1, v15);
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.requestType.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.isFallbackRequest.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.isInference.setter();

  sub_100119DF4(a7, a8);
  return GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.assets.setter();
}

void sub_10011AE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21)
{
  sub_1000055B0();
  v68 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = HIBYTE(a21);
  if (sub_1000136A8())
  {
    v38 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v58 = &v56;
    sub_100002F04(v38);
    v40 = *(v39 + 64);
    sub_100004B1C();
    __chkstk_darwin(v41);
    v42 = v21;
    v43 = v24;
    v45 = &v56 - v44;
    v46 = *(v42 + 64);
    v60 = v42;
    v47 = sub_100003370((v42 + 40), v46);
    v57 = &v56;
    v48 = __chkstk_darwin(v47);
    v61 = v36;
    v62 = v34;
    *(&v56 - 10) = v36;
    *(&v56 - 9) = v34;
    v63 = v32;
    v64 = v30;
    *(&v56 - 8) = v32;
    *(&v56 - 7) = v30;
    v65 = v28;
    v66 = v26;
    *(&v56 - 6) = v28;
    *(&v56 - 5) = v26;
    v67 = v43;
    v49 = v68;
    *(&v56 - 4) = v43;
    *(&v56 - 3) = v49;
    LOWORD(v54) = a21 & 0x101;
    sub_1000084CC(v48);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    HIDWORD(v59) = HIBYTE(a21);
    v50 = sub_1000128AC();
    sub_100005914(v45, v51, v52, v50);
    sub_10000ECD8(v45, &qword_1001BD070, &qword_100173948);
    v26 = v66;
    v24 = v67;
    v30 = v64;
    v28 = v65;
    v34 = v62;
    v32 = v63;
    v21 = v60;
    v36 = v61;
    v37 = BYTE4(v59);
  }

  v53 = *(v21 + 80);
  BYTE1(v54) = v37 & 1;
  LOBYTE(v54) = a21 & 1;
  sub_1000E30E0(v36, v34, v32, v30, v28, v26, v24, v68, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  sub_100002EEC();
}

uint64_t sub_10011B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v28 = a8;
  v27 = a7;
  v39 = a10;
  v40 = a11;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v27;
  v37 = v28;
  v38 = a9;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v18 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = (&v26 - v20);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest();
  v22 = swift_allocBox();
  v29 = v39;
  v30 = v40;
  static Buildable.with(_:)();
  *v21 = v22;
  v23 = enum case for GenerativeFunctionsInstrumentationMetadata.mmExecuteRequest(_:);
  v24 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  sub_100009BFC(v21, 0, 1, v24);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_10011B2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[2] = a6;
  v14[3] = a8;
  v14[0] = a3;
  v14[1] = a4;
  v8 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v11 = type metadata accessor for UUID();
  sub_100009BFC(v14 - v10, 0, 1, v11);
  v12 = GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  __chkstk_darwin(v12);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  sub_100009BFC(v14 - v10, 0, 1, v11);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.clientRequestIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter();

  return GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
}

uint64_t sub_10011B444(uint64_t a1, char a2)
{
  v3 = sub_100065020(&qword_1001BD0C0, &unk_1001739A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  v8 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.streaming(_:);
  if (a2)
  {
    v8 = &enum case for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType.oneShot(_:);
  }

  (*(*(v7 - 8) + 104))(v6, *v8, v7);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.RequestType();
  sub_100009BFC(v6, 0, 1, v7);
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.requestType.setter();
  GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.isInference.setter();
  return GenerativeFunctionsInstrumentationMetadata.MMExecuteRequest.assets.setter();
}

void sub_10011B564()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_1000136A8())
  {
    v9 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v22[0] = v22;
    sub_100002F04(v9);
    v11 = *(v10 + 64);
    sub_100004B1C();
    __chkstk_darwin(v12);
    v14 = v22 - v13;
    v15 = sub_100003370(v0 + 5, v0[8]);
    __chkstk_darwin(v15);
    sub_100009CB4();
    *(v16 - 32) = v8;
    *(v16 - 24) = v4;
    *(v16 - 16) = v2;
    *(v16 - 8) = v6;
    sub_1000084CC(v17);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v18 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v14, v19, v20, v18);
    sub_10000ECD8(v14, &qword_1001BD070, &qword_100173948);
  }

  v21 = v0[10];
  sub_1000E3650();
  sub_100002EEC();
}

uint64_t sub_10011B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  static Buildable.with(_:)();
  result = GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  if (a5)
  {
    v12 = sub_100065020(&qword_1001BD080, &unk_100173958);
    v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v12 - 8);
    v15 = &v19[-v14];
    swift_getErrorValue();
    v16 = v23;
    v17 = v24;
    swift_errorRetain();
    sub_1000BA718(v16, v17, v15);
    v18 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    sub_100009BFC(v15, 0, 1, v18);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  return result;
}

void sub_10011B888()
{
  sub_1000055B0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (sub_1000136A8())
  {
    v12 = sub_100065020(&qword_1001BD070, &qword_100173948);
    sub_100002F04(v12);
    v14 = *(v13 + 64);
    sub_100004B1C();
    __chkstk_darwin(v15);
    sub_100003C70();
    v16 = sub_100003370((v1 + 40), *(v1 + 64));
    __chkstk_darwin(v16);
    sub_10000A328();
    *(v17 - 48) = v11;
    *(v17 - 40) = v9;
    *(v17 - 32) = v1;
    *(v17 - 24) = v7;
    *(v17 - 16) = v5;
    *(v17 - 8) = v3;
    sub_1000084CC(v18);
    sub_1000030E4();
    if (v5)
    {
    }

    v19 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_10000A6F0(v19);
    sub_10000ECD8(v0, &qword_1001BD070, &qword_100173948);
  }

  sub_100002EEC();
}

uint64_t sub_10011B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a7;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v12 = sub_100065020(&qword_1001BD078, &qword_100173950);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v26 - v14;
  v16 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:);
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  sub_100009BFC(v15, 0, 1, v17);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v18 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = a4;
  v26[7] = a5;
  v26[8] = a6;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v20 = sub_100065020(&qword_1001BD080, &unk_100173958);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = (v26 - v22);
  swift_getErrorValue();
  sub_1000BA718(v26[10], v26[11], v23);
  v24 = type metadata accessor for GenerativeFunctionsInstrumentationError();
  sub_100009BFC(v23, 0, 1, v24);
  return GenerativeFunctionsInstrumentationEvent.error.setter();
}

uint64_t sub_10011BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  UUIDIdentifier.uuid.getter();
  v11 = type metadata accessor for UUID();
  sub_100009BFC(&v19[-v10], 0, 1, v11);
  v12 = GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  __chkstk_darwin(v12);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  sub_100009BFC(&v19[-v10], 0, 1, v11);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
  v13 = sub_100065020(&qword_1001BD088, &qword_100173968);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19[-v15];
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v20 = a5;
  v21 = a6;
  v22 = 0;
  v23 = 0;
  static Buildable.with(_:)();
  sub_100009BFC(v16, 0, 1, v17);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

void *sub_10011BE1C()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_100003324(v0 + 5);
  v3 = v0[10];

  return v0;
}

uint64_t sub_10011BE54()
{
  sub_10011BE1C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10011C028()
{
  sub_1000052AC();
  v9 = *(v0 + 72);
  return sub_10011B2A8(v1, v2, v3, v4, v5, v6, v7, *(v0 + 64));
}

uint64_t sub_10011C138()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for RemoteIPCRequest();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10011C1F8, 0, 0);
}

uint64_t sub_10011C1F8()
{
  sub_100002BAC();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  TaskCancellingXPCReceivedMessage.decode()();
  v4 = *(v2 + 16);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10011C2A0;
  v6 = v0[7];
  v7 = v0[2];

  return sub_1000B1D1C(v7, v4);
}

uint64_t sub_10011C2A0()
{
  sub_100002BAC();
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10011C41C;
  }

  else
  {
    v3 = sub_10011C3B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10011C3B0()
{
  sub_100002BAC();
  v1 = sub_100005C38();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011C41C()
{
  v1 = v0[9];
  v2 = v0[2];
  v2[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  v2[4] = sub_10011C9EC(&qword_1001B9A10);
  v2[5] = sub_1000052BC(&qword_1001B99F8);
  sub_10000366C(v2);
  swift_errorRetain();
  ModelManagerError.init(wrapping:)();
  swift_storeEnumTagMultiPayload();

  v3 = sub_100005C38();
  v4(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10011C524@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_100065020(&qword_1001B99F0, &qword_100170530);
  a1[4] = sub_1000052BC(&qword_1001B99F8);
  v2 = sub_10000366C(a1);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  _print_unlocked<A, B>(_:_:)();
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = enum case for ModelManagerError.ipcError(_:);
  v4 = type metadata accessor for ModelManagerError();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10011C654()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10011CAD4;

  return sub_10011C138();
}

uint64_t sub_10011C700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10011CAD4;

  return TaskCancellablePeerHandler.handleIncomingRequestWithReply(_:callback:)(a1, a2, a3, a4, a5);
}

uint64_t sub_10011C7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TaskCancellablePeerHandler.handleIncomingRequest(_:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10011CAD4;

  return TaskCancellablePeerHandler.handleIncomingRequest(_:)(a1, a2, a3);
}

uint64_t sub_10011C878(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to TaskCancellablePeerHandler.handleCancellation()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000BCE90;

  return TaskCancellablePeerHandler.handleCancellation()(a1, a2);
}

uint64_t sub_10011C9A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10011C9EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B99F0, &qword_100170530);
    sub_10011C9A4(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
    sub_10011C9A4(&qword_1001B9A08, &type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100002BAC();
  v15 = *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v14[2]);
  v14[3] = v15;
  if (v15)
  {

    Task.cancel()();
    v16 = async function pointer to Task<>.value.getter[1];
    v17 = swift_task_alloc();
    v14[4] = v17;
    *v17 = v14;
    v17[1] = sub_10011CC00;

    return Task<>.value.getter(v17, v15, &type metadata for () + 8, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_100043D74();
    sub_100001F00();

    return v23();
  }
}

uint64_t sub_10011CC00()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10011CCF8()
{
  sub_100002BAC();
  v1 = *(v0 + 24);

  v2 = *(v0 + 16);
  sub_100043D74();
  sub_100001F00();

  return v3();
}

uint64_t sub_10011CD58()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD218);
  sub_10000641C(v0, qword_1001BD218);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

BOOL sub_10011CDC8()
{
  v1 = type metadata accessor for Date();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Date.now.getter();
  v9 = sub_1000C1318();
  v14 = v0;
  v15 = v8;
  v10 = sub_10003DADC(sub_1001230F0, v13, v9);
  v11 = sub_10000E8DC(v10);

  (*(v4 + 8))(v8, v1);
  return v11 != 0;
}

uint64_t sub_10011CED4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v3;
  swift_beginAccess();
  v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = *(v8 + 32);
  __chkstk_darwin(v8);
  v10 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v10, &v7[v11], v4);
  v12 = a2 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  swift_beginAccess();
  v13 = *(v12 + *(_s6PolicyVMa_0() + 24));
  static Date.+ infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v10, v4);
  sub_10002B0EC();
  v15 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v14(v10, v4);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = v7[*(v8 + 24)] ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_10011D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10011D214, 0, 0);
}

uint64_t sub_10011D214()
{
  sub_100003884();
  v1 = *(v0 + 152);
  type metadata accessor for _OSActivity();
  *(v0 + 216) = swift_initStackObject();
  *(v0 + 224) = sub_10001B160("Purge Inactive Assets", 21, 2);
  sub_100004BA0();
  v2 = *(v0 + 152);
  v3 = type metadata accessor for Date();
  *(v0 + 232) = v3;
  sub_100002BDC(v3);
  *(v0 + 240) = v4;
  *(v0 + 248) = *(v5 + 64);
  *(v0 + 256) = sub_100002C58();
  v6 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  *(v0 + 264) = sub_100002C58();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    sub_100003100(v10);
    sub_100004CC8();

    return sub_10011E1E8();
  }

  else
  {
    sub_100003978();
    sub_100009BFC(v13, v14, v15, v3);
    sub_10002C278(*(v0 + 264), &qword_1001BBA80, &qword_100172440);
    v16 = *(v0 + 264);

    *(v0 + 145) = 1;
    v17 = *(v0 + 256);

    if (qword_1001B8A88 != -1)
    {
      sub_100011558();
    }

    v18 = type metadata accessor for Logger();
    sub_10000641C(v18, qword_1001BD218);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (sub_100002F80(v20))
    {
      v21 = sub_100007648();
      sub_10000A240(v21);
      sub_100003DD0();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      sub_100002F64();
    }

    v27 = *(v0 + 152);

    sub_100004C24();
    v28 = swift_weakLoadStrong();
    *(v0 + 336) = v28;
    if (!v28)
    {
      sub_100005CE0();
      os_activity_scope_leave((v19 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    sub_100004CC8();

    return _swift_task_switch(v29, v30, v31);
  }
}

uint64_t sub_10011D544()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v2 + 288) = v0;

  if (v0)
  {
    v8 = sub_10011DF70;
  }

  else
  {
    v9 = *(v2 + 272);

    v8 = sub_10011D680;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10011D680()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = sub_10000205C();
  if (sub_10000C6C0(v3, v4, v2) == 1)
  {
    sub_10002C278(v1, &qword_1001BBA80, &qword_100172440);
    v5 = *(v0 + 264);

    *(v0 + 145) = 1;
    v6 = *(v0 + 256);

    if (qword_1001B8A88 != -1)
    {
      sub_100011558();
    }

    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001BD218);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (sub_100002F80(v9))
    {
      v10 = sub_100007648();
      sub_10000A240(v10);
      sub_100003DD0();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_100002F64();
    }

    v16 = *(v0 + 152);

    sub_100004C24();
    Strong = swift_weakLoadStrong();
    *(v0 + 336) = Strong;
    if (!Strong)
    {
      sub_100005CE0();
      os_activity_scope_leave((v8 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_10000A7FC();

      __asm { BRAA            X1, X16 }
    }

    sub_10000A7FC();

    return _swift_task_switch(v18, v19, v20);
  }

  else
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    v26 = *(v0 + 192);
    v42 = *(v0 + 176);
    v27 = *(v0 + 248) + 15;
    (*(v22 + 32))(*(v0 + 256), v1, v2);

    static ContinuousClock.Instant.now.getter();
    v28 = swift_task_alloc();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v29 = *(v22 + 8);
    *(v0 + 296) = v29;
    *(v0 + 304) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v28, v2);

    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    *(v0 + 312) = *(v26 + 8);
    *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = sub_100003754();
    v31(v30);
    *(v0 + 128) = xmmword_1001723E0;
    *(v0 + 144) = 0;
    static Clock<>.continuous.getter();
    v32 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
    v33 = swift_task_alloc();
    *(v0 + 328) = v33;
    sub_10002C7C4(&qword_1001BBA88, &type metadata accessor for ContinuousClock);
    sub_1000060CC();
    *v33 = v34;
    v33[1] = sub_10011DA34;
    v35 = *(v0 + 208);
    v36 = *(v0 + 176);
    v37 = *(v0 + 160);
    sub_10000A7FC();

    return static Task<>.sleep<A>(until:tolerance:clock:)();
  }
}

uint64_t sub_10011DA34()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;

  if (v0)
  {
    v9 = v2[39];
    v8 = v2[40];
    v10 = v2[26];
    v12 = v2[22];
    v11 = v2[23];
    v15 = v2 + 20;
    v13 = v2[20];
    v14 = v15[1];

    (*(v14 + 8))(v12, v13);
    v16 = sub_100003754();
    v9(v16);
  }

  else
  {
    v18 = v2[39];
    v17 = v2[40];
    v19 = v2[26];
    v20 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v18(v19, v20);
  }

  return _swift_task_switch(sub_10011DBE4, 0, 0);
}

uint64_t sub_10011DBE4()
{
  sub_100003884();
  v2 = sub_1000166C4();
  v3 = sub_1000060A4();
  v1(v3);
  if ((v2 & 1) == 0)
  {
    v4 = v0[32];

    v5 = v0[19];
    v6 = type metadata accessor for Date();
    v0[29] = v6;
    sub_100002BDC(v6);
    v0[30] = v7;
    v0[31] = *(v8 + 64);
    v0[32] = sub_100002C58();
    v9 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    sub_100002F04(v9);
    v11 = *(v10 + 64);
    v0[33] = sub_100002C58();
    Strong = swift_weakLoadStrong();
    v0[34] = Strong;
    if (Strong)
    {
      v13 = swift_task_alloc();
      v0[35] = v13;
      *v13 = v0;
      sub_100003100();
      sub_100003E20();
      sub_100003D20();

      return sub_10011E1E8();
    }

    sub_100003978();
    sub_100009BFC(v16, v17, v18, v6);
    sub_10002C278(v0[33], &qword_1001BBA80, &qword_100172440);
    v19 = v0[33];
  }

  sub_10000EC80();
  if (qword_1001B8A88 != -1)
  {
    sub_100011558();
  }

  v20 = type metadata accessor for Logger();
  sub_10000641C(v20, qword_1001BD218);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (sub_100002F80(v22))
  {
    v23 = sub_100007648();
    sub_10000A240(v23);
    sub_100003DD0();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    sub_100002F64();
  }

  v29 = v0[19];

  sub_100004C24();
  v30 = swift_weakLoadStrong();
  v0[42] = v30;
  if (!v30)
  {
    sub_100005CE0();
    os_activity_scope_leave((v21 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  sub_100003D20();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_10011DED4()
{
  sub_100002BAC();
  v1 = *(v0 + 336);
  sub_100121D70(*(v0 + 145));

  return _swift_task_switch(sub_100042C44, 0, 0);
}

uint64_t sub_10011DF70()
{
  sub_100003884();
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  v3 = *(v0 + 264);

  *(v0 + 145) = 0;
  v4 = *(v0 + 256);

  if (qword_1001B8A88 != -1)
  {
    sub_100011558();
  }

  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BD218);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_100002F80(v7))
  {
    v8 = sub_100007648();
    sub_10000A240(v8);
    sub_100003DD0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_100002F64();
  }

  v14 = *(v0 + 152);

  sub_100004C24();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    sub_100005CE0();
    os_activity_scope_leave((v6 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100004CC8();

    __asm { BRAA            X1, X16 }
  }

  sub_100004CC8();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10011E138()
{
  sub_100001ED0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006F558;

  return sub_10011D0C0(v3, v4, v5, v6);
}

uint64_t sub_10011E1E8()
{
  sub_100002BAC();
  v1[31] = v2;
  v1[32] = v0;
  State = type metadata accessor for LoadState();
  v1[33] = State;
  v4 = *(State - 8);
  v1[34] = v4;
  v5 = *(v4 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v6 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  v1[37] = sub_100002C58();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10011E2D4()
{
  sub_100008010();
  sub_1000134A0();
  if (qword_1001B8A88 != -1)
  {
    sub_100011558();
  }

  v1 = *(v0 + 256);
  v2 = type metadata accessor for Logger();
  *(v0 + 304) = sub_10000641C(v2, qword_1001BD218);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 256);
    v7 = sub_100007698();
    *v7 = 134217984;
    v8 = v6 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
    sub_100004BA0();
    *(v7 + 4) = *(v8 + *(_s6PolicyVMa_0() + 24));
    sub_100003DD0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100002F64();
  }

  v14 = *(v0 + 256);
  v15 = type metadata accessor for Date();
  *(v0 + 312) = v15;
  v16 = *(v15 - 8);
  *(v0 + 320) = v16;
  *(v0 + 328) = *(v16 + 64);
  *(v0 + 336) = swift_task_alloc();
  static Date.now.getter();
  *(v0 + 240) = &_swiftEmptySetSingleton;
  v17 = swift_task_alloc();
  v18 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  *(v0 + 344) = v17;
  *(v0 + 352) = v18;
  v19 = v14 + v18;
  sub_100004BA0();
  v20 = _s6PolicyVMa_0();
  *(v0 + 360) = v20;
  v21 = *(v19 + *(v20 + 24));
  static Date.- infix(_:_:)();
  v22 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  *(v0 + 368) = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v23 = *&v22[v14];

  v24 = sub_1000B55EC(v14, v23);

  sub_10002B918(v24);
  v26 = v25;
  v27 = swift_task_alloc();
  *(v27 + 16) = v17;

  v28 = v26;
  v29 = 0;
  sub_100038E28(v28, v14, sub_10002B910, v27);

  sub_10002B524();
  v31 = v30;
  *(v0 + 376) = v30;

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_23:
    v54 = *(v0 + 304);
    v31 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = sub_100002F80(v55);
    v27 = *(v0 + 376);
    if (v56)
    {
      v57 = sub_100007648();
      sub_100018D38(v57);
      sub_10000A4A4();
      _os_log_impl(v58, v59, v60, v61, &OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy, 2u);
      sub_100002BB8();
LABEL_27:

      v31 = *(v0 + 256);
      if (sub_100019684())
      {
        v62 = *(v0 + 256);
        v63 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

        v64 = swift_task_alloc();
        sub_100123144(v64);
        sub_100065020(&qword_1001BB430, &qword_100171E18);
        sub_1000060CC();
        *v63 = v65;
        sub_100003C80();
        sub_100002E2C(&type metadata for Never);
        sub_10000A9AC();

        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v66, v67, v68);
      }

      sub_1000034E8();
      v69 = sub_100001F70();
      sub_1000B55EC(v69, v70);
      sub_100003170();

      sub_10010C604(v71);
      sub_10000879C();
      sub_100121E30(v72, v73);
      goto LABEL_34;
    }

LABEL_26:

    goto LABEL_27;
  }

  v32 = _CocoaArrayWrapper.endIndex.getter();
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_7:
  *(v0 + 448) = enum case for LoadState.loaded(_:);
  *(v0 + 384) = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_100019610();
  if (!v35)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
    *(v0 + 392) = v29;
    sub_100012E68(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed);
    if (v35 && (sub_10000C00C(), v39 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(v39), (v40 & 1) == 0))
    {
      v50 = swift_task_alloc();
      v51 = sub_100018DE0(v50);
      *v51 = v52;
      sub_10000A710(v51);
      sub_100007A90();

      return sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v41, v42, v43, v44);
      v45 = swift_task_alloc();
      v46 = sub_10000CD64(v45);
      *v46 = v47;
      sub_1000084D8(v46);
      sub_100007A90();

      return sub_10002BA5C();
    }
  }

  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900(v33, v34);
    if (!v38)
    {
      sub_100011174(v36, v37);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:

  v74 = v213;
  if ((v213 & 0x8000000000000000) != 0 || (v213 & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (!*(v213 + 16))
  {
LABEL_57:
    sub_1000486B8();
    Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();
    if (sub_100002F80(v186))
    {
      v187 = sub_100007648();
      sub_10000A240(v187);
      sub_100003DD0();
      _os_log_impl(v188, v189, v190, v191, v192, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v180 = v5[1];
    v193 = sub_1000060A4();
    v180(v193);
    sub_100003978();
    sub_100009BFC(v194, v195, v196, v29);
LABEL_60:
    v197 = sub_100005764();
    v180(v197);
    v198 = *(v0 + 240);

    sub_100002F54();
    goto LABEL_61;
  }

LABEL_37:
  sub_10002CC90(v74);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v75, v76, v77);
  sub_10000C208();
  v211 = v31;
  if (!*(v31 + 16))
  {
    v101 = *(v0 + 304);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (sub_100003A34(v103))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v104 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      sub_10002C7C4(v105, v106);

      sub_100018958();
      v107 = sub_10001E6BC();
      sub_10000D598(v107, v108, v109, v110, v111, v112, v113, v114, v201, v203);
      sub_100014490();
      *(v29 + 4) = v104;
      sub_100018A84();
      _os_log_impl(v115, v116, v117, v118, v119, 0xCu);
      sub_100003324(&OBJC_IVAR____TtC13modelmanagerd13PolicyManager_allowList);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v120, v121);
    v122 = sub_100008194();
    sub_10002AB60(v122, v123);
    sub_1000038AC();
    (*(v124 + 104))();
    swift_willThrow();

    v125 = sub_100004C50();
    (v27)(v125);
LABEL_49:
    v168 = sub_100009CC4();
    (v27)(v168);

    sub_100001F00();
LABEL_61:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v78 = *(v0 + 312);
  v74 = *(v0 + 320);
  v79 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v79);
  v201 = *(v80 + 64) + 15;
  v205 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v81, v82, v83);
  v209 = v85;
  v210 = v84;

  v5 = 0;
  while (1)
  {
    v31 = v211;
    if (!*(v211 + 16))
    {
      __break(1u);
LABEL_56:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_57;
      }

      goto LABEL_37;
    }

    sub_100003254();
    v86 = *(v0 + 312);
    v27 = *(v0 + 256) + v87;
    v29 = sub_100123150();
    sub_100007ED0();
    v88 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    v89 = swift_task_alloc();
    sub_100123130(v89, v90, v91, v92, v93, v94, v95, v96, v201, v203, v205, v207, v209);
    v97();
    v98 = *(v27 + *(v212 + 24));

    sub_10002ABD4();
    v99 = *v210;
    (*v210)(v74, v86);

    sub_100011A58();
    sub_10001B250();
    if (v74)
    {
      break;
    }

    v100 = sub_10001996C();
    v99(v100);
  }

  v126 = *(v0 + 312);
  v127 = *(v0 + 320);

  v27 = v205;
  sub_10002C278(v205, &qword_1001BBA80, &qword_100172440);
  v128 = sub_10000F210();
  v129(v128);
  sub_100007D14();
  v130 = *(v0 + 312);
  v131 = sub_1000187B4();
  sub_10002CC20(v205, v131);
  sub_100013B9C(v131);
  sub_10002C278(v131, &qword_1001BBA80, &qword_100172440);

  if (v130 == 1)
  {
    v140 = *(v0 + 304);
    sub_10003F878(v132, v133, v134, v135, v136, v137, v138, v139, v201, v203, v205, v207);

    v141 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      OBJC_IVAR____TtC13modelmanagerd13PolicyManager_allowList = 136315138;
      v142 = sub_1001196B4(v208, v211);
      sub_10000A3BC(v142, v143, v144, v145, v146, v147, v148, v149, v202, v204, v206, v208);
      sub_100026850();
      *algn_100170004 = v86;
      sub_100003920(&_mh_execute_header, v150, v151, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    v152 = sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v153, v154);
    sub_10001376C();
    v155 = swift_allocError();
    sub_10002AB60(v155, v156);
    sub_100006098(v152);
    (*(v157 + 104))();
    swift_willThrow();

    v158 = sub_1000128C4(v210);
    v159 = (v27)(v158);
    v165 = sub_100018C84(v159, &qword_1001BBA80, &qword_100172440, v160, v161, v162, v163, v164, v202, v204, v206);
    sub_10002C278(v165, v166, v167);

    goto LABEL_49;
  }

  v169 = sub_100019540();
  sub_10002A138();
  v170();
  v171 = Logger.logObject.getter();
  v172 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v171, v172))
  {
    sub_1000302A8();

    v180 = *v210;
    (*v210)(v169, v131);
    v183 = sub_100001F70();
    v180(v183);

LABEL_54:
    sub_100005EF8();
    sub_1000125A4();
    v184 = sub_1000062B0();
    sub_10002CC20(v184, v185);
    sub_10002C278(v205, &qword_1001BBA80, &qword_100172440);

    goto LABEL_60;
  }

  v173 = *(v0 + 312);
  v174 = sub_100007698();
  sub_100007F6C(v174, 3.852e-34);
  sub_100004BA0();
  v175 = sub_1000187B4();
  sub_100045708(v175);
  v176 = sub_10000205C();
  v66 = sub_100040314(v176, v177);
  if (!v35)
  {
    sub_100123114();
    v179 = v178;
    v180 = *v210;
    (*v210)(v169, v99);
    v181 = sub_1000037BC();
    v180(v181);

    *(v174 + 4) = v179;
    _os_log_impl(&_mh_execute_header, v171, v172, "Additional inactive assets need purging, next task wake in %f seconds", v174, 0xCu);
    sub_100012A9C();

    v182 = sub_100004CDC();
    v180(v182);
    goto LABEL_54;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v66, v67, v68);
}

uint64_t sub_10011EF58()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 400);
  *v4 = *v1;
  *(v3 + 408) = v0;

  v6 = *(v2 + 256);
  if (v0)
  {

    v7 = sub_100121240;
  }

  else
  {
    v7 = sub_10011F084;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10011F084()
{
  sub_100008010();
  sub_1000134A0();
  v6 = v2[51];
  sub_1000032F0();
  v7 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  v9 = sub_1000316BC();
  v10(v9);
  v11 = sub_100045778();
  v12(v11);
  sub_10000A338();
  v15 = sub_10002C7C4(v13, v14);
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v3;
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100009BB0();
  v17 = v17 && v3 == v0;
  if (v17)
  {
    v29 = *v8;
    (*v8)(v15, v4);
    v30 = sub_1000071D0();
    v29(v30);
  }

  else
  {
    sub_10003DDA0();
    v18 = sub_100057878();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v18);
    v19 = sub_1000071D0();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v19);
    v7 = v1;

    if ((v5 & 1) == 0)
    {
      v28 = v2[49];
      goto LABEL_9;
    }
  }

  sub_10001C168(v20, v21, v22, v23, v24, v25, v26, v27, v201, v204);
LABEL_9:

  v31 = v2[48];
  if (!v31)
  {
    v53 = v2[38];
    v16 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = sub_100002F80(v54);
    v3 = v2[47];
    if (v55)
    {
      v56 = sub_100007648();
      sub_100018D38(v56);
      sub_10000A4A4();
      _os_log_impl(v57, v58, v59, v60, v4, 2u);
      sub_100002BB8();
      goto LABEL_29;
    }

LABEL_28:

LABEL_29:

    v16 = v2[32];
    if (sub_100019684())
    {
      v61 = v2[32];
      v62 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

      v63 = swift_task_alloc();
      sub_100123144(v63);
      sub_100065020(&qword_1001BB430, &qword_100171E18);
      sub_1000060CC();
      *v62 = v64;
      sub_100003C80();
      sub_100002E2C(&type metadata for Never);
      sub_10000A9AC();

      return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v65, v66, v67);
    }

    sub_1000034E8();
    v68 = sub_100001F70();
    sub_1000B55EC(v68, v69);
    sub_100003170();

    sub_10010C604(v70);
    sub_10000879C();
    v1 = v215;
    sub_100121E30(v71, v72);
    if (v215)
    {

      sub_100007A90();
    }

    goto LABEL_39;
  }

  v2[48] = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_100019610();
  if (!v17)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v2[49] = v1;
    sub_100012E68(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed);
    if (v17 && (v37 = *v7, sub_10000C00C(), v38 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(v38), (v39 & 1) == 0))
    {
      v49 = swift_task_alloc();
      v50 = sub_100018DE0(v49);
      *v50 = v51;
      sub_10000A710();
      sub_100007A90();

      return sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v40, v41, v42, v43);
      v44 = swift_task_alloc();
      v45 = sub_10000CD64(v44);
      *v45 = v46;
      sub_1000084D8();
      sub_100007A90();

      return sub_10002BA5C();
    }
  }

  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900(v32, v33);
    if (!v36)
    {
      sub_100011174(v34, v35);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_39:

  v74 = v216;
  if ((v216 & 0x8000000000000000) != 0 || (v216 & 0x4000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (!*(v216 + 16))
  {
LABEL_62:
    sub_1000486B8();
    Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();
    if (sub_100002F80(v186))
    {
      v187 = sub_100007648();
      sub_10000A240(v187);
      sub_100003DD0();
      _os_log_impl(v188, v189, v190, v191, v192, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v86 = *(v4 + 8);
    v193 = sub_1000060A4();
    (v86)(v193);
    sub_100003978();
    sub_100009BFC(v194, v195, v196, v1);
LABEL_65:
    v197 = sub_100005764();
    (v86)(v197);
    v198 = v2[30];

    sub_100002F54();
    goto LABEL_66;
  }

LABEL_42:
  sub_10002CC90(v74);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v75, v76, v77);
  sub_1000118AC();
  v214 = v16;
  if (!v16[2])
  {
    v99 = v2[38];
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (sub_100003A34(v101))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v102 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      v105 = sub_10002C7C4(v103, v104);
      sub_100018C84(v105, v106, v107, v108, v109, v110, v111, v112, v201, v204, v207);

      sub_100018958();
      v113 = sub_10001E6BC();
      sub_10000D598(v113, v114, v115, v116, v117, v118, v119, v120, v202, v205);
      sub_100014490();
      *(v1 + 4) = v102;
      sub_100018A84();
      _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
      sub_100003324(v15);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v126, v127);
    v128 = sub_100008194();
    sub_10002AB60(v128, v129);
    sub_1000038AC();
    (*(v130 + 104))();
    swift_willThrow();

    v131 = sub_100004C50();
    v3(v131);
LABEL_54:
    v166 = sub_100009CC4();
    v3(v166);

    sub_100001F00();
LABEL_66:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v16 = v2[39];
  v74 = v2[40];
  v78 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v78);
  v204 = *(v79 + 64) + 15;
  v209 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v80, v81, v82);
  v212 = v84;
  v213 = v83;

  v4 = 0;
  while (1)
  {
    v1 = v214;
    if (!*(v214 + 16))
    {
      __break(1u);
LABEL_61:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_62;
      }

      goto LABEL_42;
    }

    v85 = v2[44];
    v86 = v2[45];
    sub_100012E14();
    sub_1000464D8();
    sub_100007ED0();
    v15 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    v87 = swift_task_alloc();
    sub_100018460(v87, v88, v89, v90, v91, v92, v93, v94, v201, v204, v207, v209, v211, v212);
    v95();
    v96 = *(v16 + *(v86 + 24));

    sub_10002ABD4();
    v16 = v213;
    v97 = sub_10000C670();
    v8(v97);

    sub_100011A58();
    sub_10001B250();
    if (v74)
    {
      break;
    }

    v98 = sub_10001996C();
    v8(v98);
  }

  v132 = v2[39];
  v133 = v2[40];

  v140 = sub_10003F878(v134, &qword_1001BBA80, &qword_100172440, v135, v136, v137, v138, v139, v201, v204, v207, v209);
  sub_10002C278(v140, v141, v142);
  v143 = sub_10000F210();
  v144(v143);
  sub_100007D14();
  v145 = v2[39];
  v146 = sub_100005FA4();
  sub_10002CC20(v210, v146);
  sub_100013B9C(v146);
  sub_10002C278(v146, &qword_1001BBA80, &qword_100172440);

  if (v145 == 1)
  {
    v147 = v2[38];
    v3 = v211;

    v148 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      *v15 = 136315138;
      v149 = sub_1001196B4(v211, v214);
      sub_10000A3BC(v149, v150, v151, v152, v153, v154, v155, v156, v203, v206, v208, v210);
      sub_100026850();
      *(v15 + 4) = v86;
      sub_100003920(&_mh_execute_header, v157, v158, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    v159 = sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v160, v161);
    sub_10001376C();
    v162 = swift_allocError();
    sub_10002AB60(v162, v163);
    sub_100006098(v159);
    (*(v164 + 104))();
    swift_willThrow();

    v165 = sub_1000128C4(v213);
    v211(v165);
    sub_10002C278(v210, &qword_1001BBA80, &qword_100172440);

    goto LABEL_54;
  }

  sub_100019540();
  sub_10002A138();
  v167();
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.default.getter();
  if (!sub_10002660C(v169))
  {
    sub_1000302A8();

    v182 = sub_100011C18();
    (v86)(v182);
    v183 = sub_100001F70();
    (v86)(v183);

LABEL_59:
    sub_100005EF8();
    sub_1000125A4();
    v184 = sub_1000062B0();
    sub_10002CC20(v184, v185);
    sub_10002C278(v210, &qword_1001BBA80, &qword_100172440);

    goto LABEL_65;
  }

  v170 = v2[39];
  v171 = sub_100007698();
  sub_100007F6C(v171, 3.852e-34);
  sub_100004BA0();
  v172 = sub_100005FA4();
  sub_100045708(v172);
  v173 = sub_10000205C();
  v65 = sub_100040314(v173, v174);
  if (!v17)
  {
    sub_100123114();
    v176 = v175;
    v177 = sub_10000C768();
    (v86)(v177);
    v178 = sub_1000037BC();
    (v86)(v178);

    *(v171 + 4) = v176;
    sub_10000CEA8(&_mh_execute_header, v179, v180, "Additional inactive assets need purging, next task wake in %f seconds");
    sub_100012A9C();

    v181 = sub_100004CDC();
    (v86)(v181);
    goto LABEL_59;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v65, v66, v67);
}

uint64_t sub_10011FB60()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[52];
  *v4 = *v1;
  *(v3 + 424) = v0;

  v6 = v2[37];
  v7 = v2[32];
  if (v0)
  {

    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    v8 = sub_100123110;
  }

  else
  {
    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    v8 = sub_10011FCD0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10011FCD0()
{
  sub_100008010();
  sub_1000134A0();
  v6 = v2[53];
  sub_1000032F0();
  v7 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  v9 = sub_1000316BC();
  v10(v9);
  v11 = sub_100045778();
  v12(v11);
  sub_10000A338();
  v15 = sub_10002C7C4(v13, v14);
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v3;
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100009BB0();
  v17 = v17 && v3 == v0;
  if (v17)
  {
    v29 = *v8;
    (*v8)(v15, v4);
    v30 = sub_1000071D0();
    v29(v30);
  }

  else
  {
    sub_10003DDA0();
    v18 = sub_100057878();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v18);
    v19 = sub_1000071D0();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v19);
    v7 = v1;

    if ((v5 & 1) == 0)
    {
      v28 = v2[49];
      goto LABEL_9;
    }
  }

  sub_10001C168(v20, v21, v22, v23, v24, v25, v26, v27, v201, v204);
LABEL_9:

  v31 = v2[48];
  if (!v31)
  {
    v53 = v2[38];
    v16 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = sub_100002F80(v54);
    v3 = v2[47];
    if (v55)
    {
      v56 = sub_100007648();
      sub_100018D38(v56);
      sub_10000A4A4();
      _os_log_impl(v57, v58, v59, v60, v4, 2u);
      sub_100002BB8();
      goto LABEL_29;
    }

LABEL_28:

LABEL_29:

    v16 = v2[32];
    if (sub_100019684())
    {
      v61 = v2[32];
      v62 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

      v63 = swift_task_alloc();
      sub_100123144(v63);
      sub_100065020(&qword_1001BB430, &qword_100171E18);
      sub_1000060CC();
      *v62 = v64;
      sub_100003C80();
      sub_100002E2C(&type metadata for Never);
      sub_10000A9AC();

      return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v65, v66, v67);
    }

    sub_1000034E8();
    v68 = sub_100001F70();
    sub_1000B55EC(v68, v69);
    sub_100003170();

    sub_10010C604(v70);
    sub_10000879C();
    v1 = v215;
    sub_100121E30(v71, v72);
    if (v215)
    {

      sub_100007A90();
    }

    goto LABEL_39;
  }

  v2[48] = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_100019610();
  if (!v17)
  {
    v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v2[49] = v1;
    sub_100012E68(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed);
    if (v17 && (v37 = *v7, sub_10000C00C(), v38 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(v38), (v39 & 1) == 0))
    {
      v49 = swift_task_alloc();
      v50 = sub_100018DE0(v49);
      *v50 = v51;
      sub_10000A710(v50);
      sub_100007A90();

      return sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v40, v41, v42, v43);
      v44 = swift_task_alloc();
      v45 = sub_10000CD64(v44);
      *v45 = v46;
      sub_1000084D8();
      sub_100007A90();

      return sub_10002BA5C();
    }
  }

  if (v32 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900(v32, v33);
    if (!v36)
    {
      sub_100011174(v34, v35);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_39:

  v74 = v216;
  if ((v216 & 0x8000000000000000) != 0 || (v216 & 0x4000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (!*(v216 + 16))
  {
LABEL_62:
    sub_1000486B8();
    Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();
    if (sub_100002F80(v186))
    {
      v187 = sub_100007648();
      sub_10000A240(v187);
      sub_100003DD0();
      _os_log_impl(v188, v189, v190, v191, v192, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v86 = *(v4 + 8);
    v193 = sub_1000060A4();
    (v86)(v193);
    sub_100003978();
    sub_100009BFC(v194, v195, v196, v1);
LABEL_65:
    v197 = sub_100005764();
    (v86)(v197);
    v198 = v2[30];

    sub_100002F54();
    goto LABEL_66;
  }

LABEL_42:
  sub_10002CC90(v74);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v75, v76, v77);
  sub_1000118AC();
  v214 = v16;
  if (!v16[2])
  {
    v99 = v2[38];
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (sub_100003A34(v101))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v102 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      v105 = sub_10002C7C4(v103, v104);
      sub_100018C84(v105, v106, v107, v108, v109, v110, v111, v112, v201, v204, v207);

      sub_100018958();
      v113 = sub_10001E6BC();
      sub_10000D598(v113, v114, v115, v116, v117, v118, v119, v120, v202, v205);
      sub_100014490();
      *(v1 + 4) = v102;
      sub_100018A84();
      _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
      sub_100003324(v15);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v126, v127);
    v128 = sub_100008194();
    sub_10002AB60(v128, v129);
    sub_1000038AC();
    (*(v130 + 104))();
    swift_willThrow();

    v131 = sub_100004C50();
    v3(v131);
LABEL_54:
    v166 = sub_100009CC4();
    v3(v166);

    sub_100001F00();
LABEL_66:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v16 = v2[39];
  v74 = v2[40];
  v78 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v78);
  v204 = *(v79 + 64) + 15;
  v209 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v80, v81, v82);
  v212 = v84;
  v213 = v83;

  v4 = 0;
  while (1)
  {
    v1 = v214;
    if (!*(v214 + 16))
    {
      __break(1u);
LABEL_61:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_62;
      }

      goto LABEL_42;
    }

    v85 = v2[44];
    v86 = v2[45];
    sub_100012E14();
    sub_1000464D8();
    sub_100007ED0();
    v15 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    v87 = swift_task_alloc();
    sub_100018460(v87, v88, v89, v90, v91, v92, v93, v94, v201, v204, v207, v209, v211, v212);
    v95();
    v96 = *(v16 + *(v86 + 24));

    sub_10002ABD4();
    v16 = v213;
    v97 = sub_10000C670();
    v8(v97);

    sub_100011A58();
    sub_10001B250();
    if (v74)
    {
      break;
    }

    v98 = sub_10001996C();
    v8(v98);
  }

  v132 = v2[39];
  v133 = v2[40];

  v140 = sub_10003F878(v134, &qword_1001BBA80, &qword_100172440, v135, v136, v137, v138, v139, v201, v204, v207, v209);
  sub_10002C278(v140, v141, v142);
  v143 = sub_10000F210();
  v144(v143);
  sub_100007D14();
  v145 = v2[39];
  v146 = sub_100005FA4();
  sub_10002CC20(v210, v146);
  sub_100013B9C(v146);
  sub_10002C278(v146, &qword_1001BBA80, &qword_100172440);

  if (v145 == 1)
  {
    v147 = v2[38];
    v3 = v211;

    v148 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      *v15 = 136315138;
      v149 = sub_1001196B4(v211, v214);
      sub_10000A3BC(v149, v150, v151, v152, v153, v154, v155, v156, v203, v206, v208, v210);
      sub_100026850();
      *(v15 + 4) = v86;
      sub_100003920(&_mh_execute_header, v157, v158, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    v159 = sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v160, v161);
    sub_10001376C();
    v162 = swift_allocError();
    sub_10002AB60(v162, v163);
    sub_100006098(v159);
    (*(v164 + 104))();
    swift_willThrow();

    v165 = sub_1000128C4(v213);
    v211(v165);
    sub_10002C278(v210, &qword_1001BBA80, &qword_100172440);

    goto LABEL_54;
  }

  sub_100019540();
  sub_10002A138();
  v167();
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.default.getter();
  if (!sub_10002660C(v169))
  {
    sub_1000302A8();

    v182 = sub_100011C18();
    (v86)(v182);
    v183 = sub_100001F70();
    (v86)(v183);

LABEL_59:
    sub_100005EF8();
    sub_1000125A4();
    v184 = sub_1000062B0();
    sub_10002CC20(v184, v185);
    sub_10002C278(v210, &qword_1001BBA80, &qword_100172440);

    goto LABEL_65;
  }

  v170 = v2[39];
  v171 = sub_100007698();
  sub_100007F6C(v171, 3.852e-34);
  sub_100004BA0();
  v172 = sub_100005FA4();
  sub_100045708(v172);
  v173 = sub_10000205C();
  v65 = sub_100040314(v173, v174);
  if (!v17)
  {
    sub_100123114();
    v176 = v175;
    v177 = sub_10000C768();
    (v86)(v177);
    v178 = sub_1000037BC();
    (v86)(v178);

    *(v171 + 4) = v176;
    sub_10000CEA8(&_mh_execute_header, v179, v180, "Additional inactive assets need purging, next task wake in %f seconds");
    sub_100012A9C();

    v181 = sub_100004CDC();
    (v86)(v181);
    goto LABEL_59;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v65, v66, v67);
}

uint64_t sub_1001207AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 440) = v0;

  if (!v0)
  {
    v10 = *(v3 + 256);

    v11 = sub_100002C10();

    return _swift_task_switch(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1001208AC()
{
  sub_1000134A0();
  v133 = v0;
  v2 = v0[55];
  sub_1000034E8();
  v3 = sub_100001F70();
  sub_1000B55EC(v3, v4);
  sub_100003170();

  sub_10010C604(v5);
  sub_10000879C();
  sub_100121E30(v6, v7);
  if (v2)
  {

    sub_10000A9AC();
  }

  v10 = v132[0];
  if ((v132[0] & 0x8000000000000000) == 0 && (v132[0] & 0x4000000000000000) == 0)
  {
    if (*(v132[0] + 16))
    {
      goto LABEL_8;
    }

LABEL_31:
    sub_1000486B8();
    Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (sub_100002F80(v109))
    {
      v110 = sub_100007648();
      sub_10000A240(v110);
      sub_100003DD0();
      _os_log_impl(v111, v112, v113, v114, v115, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v102 = v1[1];
    v116 = sub_1000060A4();
    (v102)(v116);
    sub_100003978();
    sub_100009BFC(v117, v118, v119, v2);
LABEL_34:
    v120 = sub_100005764();
    (v102)(v120);
    v121 = v0[30];

    sub_100002F54();
LABEL_35:
    sub_10000A9AC();

    return v122();
  }

LABEL_30:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_31;
  }

LABEL_8:
  sub_10002CC90(v10);
  sub_100007984();
  sub_100019274();
  v14 = sub_10002D264(v11, v12, v13);
  v16 = v15;

  v129 = *(v16 + 16);
  if (!v129)
  {
    v33 = v0[38];
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (sub_100003A34(v35))
    {
      sub_100007698();
      v36 = sub_10000767C();
      v132[0] = v36;
      sub_10000E89C(4.8149e-34);
      sub_100002E08();
      sub_10002C7C4(v37, v38);

      v39 = Set.description.getter();
      v41 = v40;

      v42 = sub_100004A3C(v39, v41, v132);

      *(v2 + 4) = v42;
      sub_100018A84();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_100003324(v36);
      sub_100012A9C();
      sub_100002F64();
    }

    v48 = v0[42];
    v50 = v0[39];
    v49 = v0[40];
    type metadata accessor for ModelManagerError();
    sub_10000528C();
    sub_10002C7C4(v51, v52);
    v53 = sub_100008194();
    sub_10002AB60(v53, v54);
    sub_1000038AC();
    (*(v55 + 104))();
    swift_willThrow();

    v56 = *(v49 + 8);
    v56(v48, v50);
LABEL_23:
    v83 = v0[42];
    v85 = v0[36];
    v84 = v0[37];
    v86 = v0[35];
    v56(v0[43], v0[39]);

    sub_100001F00();
    goto LABEL_35;
  }

  v17 = v0[39];
  v2 = v0[40];
  v18 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v18);
  v125 = *(v19 + 64) + 15;
  v126 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v20, v21, v22, v17);
  v128 = (v2 + 16);
  v1 = (v2 + 8);
  v124 = v14;

  v23 = 0;
  v127 = (v2 + 8);
  while (1)
  {
    if (v129 == v23)
    {
      v57 = v124;

      v58 = v126;
      goto LABEL_19;
    }

    if (v23 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    sub_100003254();
    v24 = v0[39];
    v26 = v0[32] + v25;
    v10 = v16;
    v27 = *(v16 + 8 * v23 + 32);
    v28 = swift_task_alloc();
    sub_100007ED0();
    v29 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    v30 = swift_task_alloc();
    (*v128)(v30, v16 + v29, v24);
    v31 = *(v26 + *(v130 + 24));
    v1 = v127;

    static Date.+ infix(_:_:)();
    v32 = *v127;
    (*v127)(v30, v24);

    v2 = static Date.> infix(_:_:)();

    if (v2)
    {
      break;
    }

    ++v23;
    v32(v28, v0[39]);

    v16 = v10;
  }

  v59 = v0[39];
  v60 = v0[40];
  v57 = v124;

  v16 = v10;

  v58 = v126;
  sub_10002C278(v126, &qword_1001BBA80, &qword_100172440);
  v61 = *(v60 + 32);
  v62 = sub_1000062B0();
  v63(v62);
  sub_100009BFC(v126, 0, 1, v59);

LABEL_19:
  v64 = v0[39];
  v65 = swift_task_alloc();
  v66 = sub_1000060A4();
  sub_10002CC20(v66, v67);
  sub_100013B9C(v65);
  sub_10002C278(v65, &qword_1001BBA80, &qword_100172440);

  if (v64 == 1)
  {
    v68 = v0[38];

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();

    if (sub_10000A098())
    {
      v71 = sub_100007698();
      v72 = swift_slowAlloc();
      v132[0] = v72;
      *v71 = 136315138;
      v73 = sub_1001196B4(v57, v16);
      v75 = sub_100004A3C(v73, v74, v132);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task", v71, 0xCu);
      sub_100003324(v72);
      v58 = v126;
      sub_100002BB8();
      sub_100012A9C();
    }

    v76 = v0[42];
    v77 = v0[39];
    type metadata accessor for ModelManagerError();
    sub_10000528C();
    sub_10002C7C4(v78, v79);
    v80 = sub_100008194();
    sub_10002AB60(v80, v81);
    sub_1000038AC();
    (*(v82 + 104))();
    swift_willThrow();

    v56 = *v1;
    v56(v76, v77);
    sub_10002C278(v58, &qword_1001BBA80, &qword_100172440);

    goto LABEL_23;
  }

  v87 = v0[41];
  v88 = v0[42];
  v89 = v0[38];
  v90 = v0[39];
  v91 = sub_100002C58();
  (*v128)(v91, v88, v90);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v92, v93))
  {
    v104 = v0[42];
    v105 = v0[39];

    v102 = *v127;
    v106 = sub_100003754();
    (v102)(v106);
    v102(v104, v105);

    goto LABEL_28;
  }

  v94 = v0[39];
  v95 = sub_100007698();
  sub_100007F6C(v95, 3.852e-34);
  sub_100004BA0();
  v96 = swift_task_alloc();
  sub_10002CC20(v126, v96);
  v97 = sub_10000205C();
  result = sub_10000C6C0(v97, v98, v94);
  if (result != 1)
  {
    v131 = v0[42];
    v99 = v0[39];
    Date.timeIntervalSince(_:)();
    v101 = v100;
    v102 = *v127;
    (*v127)(v91, v99);
    v103 = sub_1000037BC();
    (v102)(v103);

    *(v95 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v92, v93, "Additional inactive assets need purging, next task wake in %f seconds", v95, 0xCu);
    sub_100002BB8();

    v102(v131, v99);
LABEL_28:
    sub_100005EF8();
    sub_1000125A4();
    v107 = sub_1000062B0();
    sub_10002CC20(v107, v108);
    sub_10002C278(v126, &qword_1001BBA80, &qword_100172440);

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_100121240()
{
  sub_100008010();
  sub_1000134A0();
  v2 = *(v0 + 392);
  v3 = *(v0 + 448);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v9 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  (*(v7 + 16))(v4, &v9[v2], v6);
  (*(v7 + 104))(v5, v3, v6);
  sub_10000A338();
  sub_10002C7C4(v10, v11);
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v0 + 216);
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v15 = *(v0 + 264);
  v16 = (*(v0 + 272) + 8);
  v17 = *(v0 + 208) == *(v0 + 224) && v12 == *(v0 + 232);
  if (v17)
  {
    v18 = *v16;
    (*v16)(*(v0 + 280), *(v0 + 264));
    v29 = sub_100003754();
    (v18)(v29);
  }

  else
  {
    v18 = sub_10003DDA0();
    v1 = *v16;
    (*v16)(v14, v15);
    v19 = sub_100003754();
    v1(v19);

    if ((v18 & 1) == 0)
    {
      v28 = *(v0 + 392);
      goto LABEL_9;
    }
  }

  sub_10001C168(v20, v21, v22, v23, v24, v25, v26, v27, v201, v203);
LABEL_9:

  v30 = *(v0 + 384);
  if (!v30)
  {
    v51 = *(v0 + 304);
    v12 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = sub_100002F80(v52);
    v54 = *(v0 + 376);
    if (v53)
    {
      v15 = sub_100007648();
      *v15 = 0;

      sub_10000A4A4();
      _os_log_impl(v55, v56, v57, v58, v15, 2u);
      sub_100002BB8();
LABEL_29:

      v12 = *(v0 + 256);
      if (sub_100019684())
      {
        v59 = *(v0 + 256);
        v60 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

        v61 = swift_task_alloc();
        sub_100123144(v61);
        sub_100065020(&qword_1001BB430, &qword_100171E18);
        sub_1000060CC();
        *v60 = v62;
        sub_100003C80();
        sub_100002E2C(&type metadata for Never);
        sub_10000A9AC();

        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v63, v64, v65);
      }

      sub_1000034E8();
      v66 = sub_100001F70();
      sub_1000B55EC(v66, v67);
      sub_100003170();

      sub_10010C604(v68);
      sub_10000879C();
      v13 = 0;
      sub_100121E30(v69, v70);
      goto LABEL_36;
    }

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 384) = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_100019610();
  if (!v17)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    *(v0 + 392) = v13;
    sub_100012E68(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed);
    if (v17 && (sub_10000C00C(), v36 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0), sub_10000CCA8(v36), (v37 & 1) == 0))
    {
      v47 = swift_task_alloc();
      v48 = sub_100018DE0(v47);
      *v48 = v49;
      sub_10000A710();
      sub_100007A90();

      return sub_1000486EC();
    }

    else
    {
      sub_1000294E8();
      sub_100003978();
      sub_100009BFC(v38, v39, v40, v41);
      v42 = swift_task_alloc();
      v43 = sub_10000CD64(v42);
      *v43 = v44;
      sub_1000084D8();
      sub_100007A90();

      return sub_10002BA5C();
    }
  }

  if (v31 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007900(v31, v32);
    if (!v35)
    {
      sub_100011174(v33, v34);
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:

  v71 = v213;
  if ((v213 & 0x8000000000000000) != 0 || (v213 & 0x4000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (!*(v213 + 16))
  {
LABEL_59:
    sub_1000486B8();
    Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();
    if (sub_100002F80(v186))
    {
      v187 = sub_100007648();
      sub_10000A240(v187);
      sub_100003DD0();
      _os_log_impl(v188, v189, v190, v191, v192, 2u);
      sub_100002F64();
    }

    sub_10000CFBC();
    v8 = *(v14 + 8);
    v193 = sub_1000060A4();
    v8(v193);
    sub_100003978();
    sub_100009BFC(v194, v195, v196, v13);
LABEL_62:
    v197 = sub_100005764();
    v8(v197);
    v198 = *(v0 + 240);

    sub_100002F54();
    goto LABEL_63;
  }

LABEL_39:
  sub_10002CC90(v71);
  sub_100007984();
  sub_100019274();
  sub_10002D264(v72, v73, v74);
  sub_10000C208();
  v211 = v12;
  if (!v12[2])
  {
    v99 = *(v0 + 304);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (sub_100003A34(v101))
    {
      sub_100007698();
      sub_10000767C();
      sub_100010CCC();
      v102 = sub_10000E89C(4.8149e-34);
      sub_100002E08();
      sub_10002C7C4(v103, v104);

      sub_100018958();
      v105 = sub_10001E6BC();
      sub_10000D598(v105, v106, v107, v108, v109, v110, v111, v112, v201, v203);
      sub_100014490();
      *(v13 + 4) = v102;
      sub_100018A84();
      _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
      sub_100003324(v18);
      sub_100012684();
      sub_100002F64();
    }

    sub_1000063F0();
    sub_10000528C();
    sub_10002C7C4(v118, v119);
    v120 = sub_100008194();
    sub_10002AB60(v120, v121);
    sub_1000038AC();
    (*(v122 + 104))();
    swift_willThrow();

    v123 = sub_100004C50();
    (v15)(v123);
LABEL_51:
    v166 = sub_100009CC4();
    (v15)(v166);

    sub_100001F00();
LABEL_63:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v75 = *(v0 + 312);
  v71 = *(v0 + 320);
  v76 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v76);
  v201 = *(v77 + 64) + 15;
  v205 = swift_task_alloc();
  sub_100003978();
  sub_10000E73C(v78, v79, v80);
  v209 = v82;
  v210 = v81;

  v14 = 0;
  while (1)
  {
    v12 = v211;
    if (!*(v211 + 16))
    {
      __break(1u);
LABEL_58:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_59;
      }

      goto LABEL_39;
    }

    v83 = *(v0 + 352);
    v212 = *(v0 + 360);
    sub_100012E14();
    v18 = v85 + v84;
    v13 = sub_100123150();
    sub_100007ED0();
    v86 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
    v87 = swift_task_alloc();
    sub_100123130(v87, v88, v89, v90, v91, v92, v93, v94, v201, v203, v205, v207, v209);
    v95();
    v96 = *(v18 + *(v212 + 24));

    sub_10002ABD4();
    v97 = sub_10000C670();
    v1(v97);

    sub_100011A58();
    sub_10001B250();
    if (v71)
    {
      break;
    }

    v98 = sub_10001996C();
    v1(v98);
  }

  v124 = *(v0 + 312);
  v125 = *(v0 + 320);

  v15 = v205;
  sub_10002C278(v205, &qword_1001BBA80, &qword_100172440);
  v126 = sub_10000F210();
  v127(v126);
  sub_100007D14();
  v128 = *(v0 + 312);
  v129 = sub_1000187B4();
  sub_10002CC20(v205, v129);
  sub_100013B9C(v129);
  sub_10002C278(v129, &qword_1001BBA80, &qword_100172440);

  if (v128 == 1)
  {
    v138 = *(v0 + 304);
    sub_10003F878(v130, v131, v132, v133, v134, v135, v136, v137, v201, v203, v205, v207);

    v139 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      sub_100007698();
      sub_100003E34();
      sub_10000CC14();
      *v18 = 136315138;
      v140 = sub_1001196B4(v208, v211);
      sub_10000A3BC(v140, v141, v142, v143, v144, v145, v146, v147, v202, v204, v206, v208);
      sub_100026850();
      *(v18 + 4) = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100003920(&_mh_execute_header, v148, v149, "Remaining purge candidates %s generated task wake times in the past.  Ending inactive asset purge task");
      sub_100005AA4();
      sub_100012684();
    }

    v150 = sub_100036778();
    sub_10000528C();
    sub_10002C7C4(v151, v152);
    sub_10001376C();
    v153 = swift_allocError();
    sub_10002AB60(v153, v154);
    sub_100006098(v150);
    (*(v155 + 104))();
    swift_willThrow();

    v156 = sub_1000128C4(v210);
    v157 = (v15)(v156);
    v163 = sub_100018C84(v157, &qword_1001BBA80, &qword_100172440, v158, v159, v160, v161, v162, v202, v204, v206);
    sub_10002C278(v163, v164, v165);

    goto LABEL_51;
  }

  sub_100019540();
  sub_10002A138();
  v167();
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.default.getter();
  if (!sub_10002660C(v169))
  {
    sub_1000302A8();

    v182 = sub_100011C18();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v182);
    v183 = sub_100001F70();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v183);

LABEL_56:
    sub_100005EF8();
    sub_1000125A4();
    v184 = sub_1000062B0();
    sub_10002CC20(v184, v185);
    sub_10002C278(v205, &qword_1001BBA80, &qword_100172440);

    goto LABEL_62;
  }

  v170 = *(v0 + 312);
  v171 = sub_100007698();
  sub_100007F6C(v171, 3.852e-34);
  sub_100004BA0();
  v172 = sub_1000187B4();
  sub_100045708(v172);
  v173 = sub_10000205C();
  v63 = sub_100040314(v173, v174);
  if (!v17)
  {
    sub_100123114();
    v176 = v175;
    v177 = sub_10000C768();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v177);
    v178 = sub_1000037BC();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v178);

    *(v171 + 4) = v176;
    sub_10000CEA8(&_mh_execute_header, v179, v180, "Additional inactive assets need purging, next task wake in %f seconds");
    sub_100012A9C();

    v181 = sub_100004CDC();
    (OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState)(v181);
    goto LABEL_56;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v63, v64, v65);
}

uint64_t sub_100121D70(char a1)
{
  v3 = *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v1);
  *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v1) = 0;

  if (a1)
  {
    v5 = sub_1000C1318();
    v6 = sub_10000E8DC(v5);

    if (v6)
    {

      return sub_100043D74();
    }
  }

  return result;
}

uint64_t sub_100121E30(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v38 = a2;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_10014AFE0(v11);
    *a1 = v11;
  }

  v13 = *(v11 + 16);
  v31 = v11 + 32;
  v37[0] = (v11 + 32);
  v37[1] = v13;
  v14 = _minimumMergeRunLength(_:)(v13);
  if (v14 >= v13)
  {
    if (v13 >= 2)
    {
      v29[1] = a1;
      v29[2] = v2;
      v18 = -1;
      v19 = 1;
      v20 = v31;
      v30 = v13;
      do
      {
        v33 = v19;
        v34 = v18;
        v21 = *(v31 + 8 * v19);
        v32 = v20;
        v22 = v20;
        do
        {
          v23 = *v22;
          v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v24 + v21, v10);
          v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v25 + v23, v8);

          LOBYTE(v25) = v38(v10, v8);
          sub_1000193F0(v8);
          sub_1000193F0(v10);

          if ((v25 & 1) == 0)
          {
            break;
          }

          v26 = *v22;
          v21 = v22[1];
          *v22 = v21;
          v22[1] = v26;
          --v22;
        }

        while (!__CFADD__(v18++, 1));
        v19 = v33 + 1;
        v20 = v32 + 1;
        v18 = v34 - 1;
      }

      while (v33 + 1 != v30);
    }
  }

  else
  {
    v15 = v14;
    v16 = sub_100065B18(v13 >> 1);
    v36[0] = v17;
    v36[1] = (v13 >> 1);
    sub_10012208C(v36, v35, v37, v15, v38);
    *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_10012208C(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v163 = a5;
  v146 = a1;
  v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v162 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = &v144 - v11;
  v151 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v145 = a4;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v13;
      v16 = v13 + 1;
      if (v13 + 1 < v12)
      {
        v150 = v14;
        v17 = *&(*v151)[8 * v16];
        v18 = &(*v151)[8 * v13];
        i = (8 * v13);
        v20 = *v18;
        v19 = (v18 + 16);
        v21 = (v13 + 1);
        v14 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v160 = v12;
        swift_beginAccess();
        v23 = v161;
        sub_10001938C(v22 + v17, v161);
        v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v25 = v24 + v20;
        v16 = v21;
        v26 = v162;
        sub_10001938C(v25, v162);

        LODWORD(v159) = v163(v23, v26);
        sub_1000193F0(v26);
        sub_1000193F0(v23);

        v27 = v160;
        v157 = v15;
        v28 = v15 + 2;
        while (1)
        {
          v29 = v28;
          v30 = (v16 + 1);
          if (v30 >= v27)
          {
            break;
          }

          v32 = *(v19 - 1);
          v31 = *v19;
          v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v14 = v30;
          v34 = v161;
          sub_10001938C(v33 + v31, v161);
          v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v36 = v162;
          sub_10001938C(v35 + v32, v162);

          LODWORD(v35) = v163(v34, v36) & 1;
          sub_1000193F0(v36);
          v37 = v34;
          v16 = v14;
          sub_1000193F0(v37);

          ++v19;
          v28 = v29 + 1;
          v27 = v160;
          if ((v159 & 1) != v35)
          {
            goto LABEL_9;
          }
        }

        v16 = v27;
LABEL_9:
        if (v159)
        {
          v15 = v157;
          if (v16 < v157)
          {
            goto LABEL_153;
          }

          if (v157 >= v16)
          {
            v14 = v150;
          }

          else
          {
            if (v27 >= v29)
            {
              v38 = v29;
            }

            else
            {
              v38 = v27;
            }

            v39 = 8 * v38 - 8;
            v40 = v16;
            v41 = v157;
            v14 = v150;
            v42 = i;
            do
            {
              if (v41 != --v40)
              {
                v43 = *v151;
                if (!*v151)
                {
                  goto LABEL_159;
                }

                v44 = *&v42[v43];
                *&v42[v43] = *&v43[v39];
                *&v43[v39] = v44;
              }

              ++v41;
              v39 -= 8;
              v42 += 8;
            }

            while (v41 < v40);
          }
        }

        else
        {
          v14 = v150;
          v15 = v157;
        }
      }

      v45 = v151[1];
      if (v16 < v45)
      {
        if (__OFSUB__(v16, v15))
        {
          goto LABEL_152;
        }

        if (v16 - v15 < v145)
        {
          v46 = (v15 + v145);
          if (__OFADD__(v15, v145))
          {
            goto LABEL_154;
          }

          if (v46 >= v45)
          {
            v46 = v151[1];
          }

          if (v46 < v15)
          {
            goto LABEL_155;
          }

          if (v16 != v46)
          {
            v150 = v14;
            v14 = *v151;
            v47 = &(*v151)[8 * v16 - 8];
            v157 = v15;
            v48 = (v15 - v16);
            i = v46;
            do
            {
              v148 = v16;
              v49 = *&v14[8 * v16];
              v159 = v48;
              v160 = v47;
              do
              {
                v50 = *v47;
                v51 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v52 = v161;
                sub_10001938C(v51 + v49, v161);
                v53 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v54 = v162;
                sub_10001938C(v53 + v50, v162);

                LOBYTE(v53) = v163(v52, v54);
                sub_1000193F0(v54);
                sub_1000193F0(v52);

                if ((v53 & 1) == 0)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_156;
                }

                v55 = *v47;
                v49 = *(v47 + 1);
                *v47 = v49;
                *(v47 + 1) = v55;
                v47 -= 8;
                v104 = __CFADD__(v48++, 1);
              }

              while (!v104);
              v16 = v148 + 1;
              v47 = v160 + 8;
              v48 = v159 - 1;
            }

            while ((v148 + 1) != i);
            v16 = i;
            v14 = v150;
            v15 = v157;
          }
        }
      }

      if (v16 < v15)
      {
        goto LABEL_151;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v133 = *(v14 + 2);
        sub_10013FB2C();
        v14 = v134;
      }

      v57 = *(v14 + 2);
      v58 = v57 + 1;
      if (v57 >= *(v14 + 3) >> 1)
      {
        sub_10013FB2C();
        v14 = v135;
      }

      *(v14 + 2) = v58;
      v59 = v14 + 32;
      v60 = &v14[16 * v57 + 32];
      v61 = v148;
      *v60 = v15;
      *(v60 + 1) = v61;
      v160 = *v146;
      if (!v160)
      {
        goto LABEL_161;
      }

      if (v57)
      {
        break;
      }

LABEL_119:
      v12 = v151[1];
      v13 = v148;
      if (v148 >= v12)
      {
        goto LABEL_122;
      }
    }

    v150 = v14;
    v149 = v14 + 32;
    while (1)
    {
      v62 = v58 - 1;
      v63 = &v59[16 * v58 - 16];
      v64 = &v14[16 * v58];
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v65 = *(v14 + 4);
        v66 = *(v14 + 5);
        v75 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        v68 = v75;
LABEL_60:
        if (v68)
        {
          goto LABEL_139;
        }

        v80 = *v64;
        v79 = *(v64 + 1);
        v81 = __OFSUB__(v79, v80);
        v82 = v79 - v80;
        v83 = v81;
        if (v81)
        {
          goto LABEL_142;
        }

        v84 = *(v63 + 1);
        v85 = v84 - *v63;
        if (__OFSUB__(v84, *v63))
        {
          goto LABEL_145;
        }

        if (__OFADD__(v82, v85))
        {
          goto LABEL_146;
        }

        if (v82 + v85 >= v67)
        {
          if (v67 < v85)
          {
            v62 = v58 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v86 = *v64;
      v87 = *(v64 + 1);
      v75 = __OFSUB__(v87, v86);
      v82 = v87 - v86;
      v83 = v75;
LABEL_74:
      if (v83)
      {
        goto LABEL_141;
      }

      v89 = *v63;
      v88 = *(v63 + 1);
      v75 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v75)
      {
        goto LABEL_144;
      }

      if (v90 < v82)
      {
        goto LABEL_119;
      }

LABEL_81:
      if (v62 - 1 >= v58)
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
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
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v94 = *v151;
      if (!*v151)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        return;
      }

      v153 = &v59[16 * v62 - 16];
      v95 = *v153;
      v156 = v62;
      v152 = &v59[16 * v62];
      v96 = &v94[8 * v95];
      v97 = 8 * *v152;
      v98 = &v94[v97];
      v99 = 8 * *(v152 + 1);
      v154 = *(v152 + 1);
      v100 = &v94[v99];
      v155 = v95;
      v101 = v97 - 8 * v95;
      v102 = v99 - v97;
      if (v101 >> 3 < (v99 - v97) >> 3)
      {
        v14 = v160;
        sub_100060E68(v96);
        v103 = &v14[v101];
        v159 = v100;
        for (i = &v14[v101]; ; v103 = i)
        {
          v104 = v14 >= v103 || v98 >= v100;
          if (v104)
          {
            v98 = v96;
            goto LABEL_109;
          }

          v105 = v96;
          v106 = v98;
          v107 = *v98;
          v108 = *v14;
          v109 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v110 = v161;
          sub_10001938C(v109 + v107, v161);
          v111 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v112 = v162;
          sub_10001938C(v111 + v108, v162);

          LOBYTE(v111) = v163(v110, v112);
          sub_1000193F0(v112);
          sub_1000193F0(v110);

          if ((v111 & 1) == 0)
          {
            break;
          }

          v113 = v106;
          v98 = v106 + 8;
          v114 = v105;
          if (v105 != v106)
          {
            goto LABEL_93;
          }

LABEL_94:
          v96 = v114 + 8;
          v100 = v159;
        }

        v113 = v14;
        v114 = v105;
        v115 = v105 == v14;
        v14 += 8;
        v98 = v106;
        if (v115)
        {
          goto LABEL_94;
        }

LABEL_93:
        *v114 = *v113;
        goto LABEL_94;
      }

      v116 = v160;
      sub_100060E68(v98);
      v103 = v116 + v102;
      v157 = v96;
LABEL_96:
      v117 = v98 - 8;
      v100 -= 8;
      v159 = v98;
      for (i = v98 - 8; v103 > v160 && v96 < v98; v117 = i)
      {
        v119 = *(v103 - 1);
        v120 = *v117;
        v121 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v122 = v161;
        sub_10001938C(v121 + v119, v161);
        v123 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v124 = v162;
        sub_10001938C(v123 + v120, v162);

        LOBYTE(v123) = v163(v122, v124);
        sub_1000193F0(v124);
        sub_1000193F0(v122);

        v125 = v100 + 8;
        if (v123)
        {
          v126 = i;
          v98 = i;
          v96 = v157;
          if (v125 != v159)
          {
            *v100 = *i;
            v98 = v126;
          }

          goto LABEL_96;
        }

        if (v103 != v125)
        {
          *v100 = *(v103 - 1);
        }

        v100 -= 8;
        v103 -= 8;
        v96 = v157;
        v98 = v159;
      }

      v14 = v160;
LABEL_109:
      v127 = (v103 - v14) / 8;
      if (v98 != v14 || v98 >= &v14[8 * v127])
      {
        memmove(v98, v14, 8 * v127);
      }

      v129 = v154;
      v130 = v156;
      if (v154 < v155)
      {
        goto LABEL_134;
      }

      v14 = v150;
      v131 = *(v150 + 2);
      if (v156 > v131)
      {
        goto LABEL_135;
      }

      v132 = v153;
      *v153 = v155;
      *(v132 + 1) = v129;
      if (v130 >= v131)
      {
        goto LABEL_136;
      }

      v58 = v131 - 1;
      sub_100147E04(v152 + 16, v131 - 1 - v130, v152);
      *(v14 + 2) = v131 - 1;
      v59 = v149;
      if (v131 <= 2)
      {
        goto LABEL_119;
      }
    }

    v69 = &v59[16 * v58];
    v70 = *(v69 - 8);
    v71 = *(v69 - 7);
    v75 = __OFSUB__(v71, v70);
    v72 = v71 - v70;
    if (v75)
    {
      goto LABEL_137;
    }

    v74 = *(v69 - 6);
    v73 = *(v69 - 5);
    v75 = __OFSUB__(v73, v74);
    v67 = v73 - v74;
    v68 = v75;
    if (v75)
    {
      goto LABEL_138;
    }

    v76 = *(v64 + 1);
    v77 = v76 - *v64;
    if (__OFSUB__(v76, *v64))
    {
      goto LABEL_140;
    }

    v75 = __OFADD__(v67, v77);
    v78 = v67 + v77;
    if (v75)
    {
      goto LABEL_143;
    }

    if (v78 >= v72)
    {
      v92 = *v63;
      v91 = *(v63 + 1);
      v75 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v75)
      {
        goto LABEL_147;
      }

      if (v67 < v93)
      {
        v62 = v58 - 2;
      }

      goto LABEL_81;
    }

    goto LABEL_60;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_122:
  v162 = *v146;
  if (!v162)
  {
    goto LABEL_162;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_157:
    v14 = sub_100147DF0(v14);
  }

  v136 = v14 + 16;
  v137 = *(v14 + 2);
  while (v137 >= 2)
  {
    if (!*v151)
    {
      goto LABEL_160;
    }

    v138 = v14;
    v14 += 16 * v137;
    v139 = *v14;
    v140 = &v136[2 * v137];
    v141 = *(v140 + 1);
    v142 = v147;
    sub_100122CE4(&(*v151)[8 * *v14], &(*v151)[8 * *v140], &(*v151)[8 * v141], v162, v163);
    v147 = v142;
    if (v142)
    {
      break;
    }

    if (v141 < v139)
    {
      goto LABEL_148;
    }

    if (v137 - 2 >= *v136)
    {
      goto LABEL_149;
    }

    *v14 = v139;
    *(v14 + 1) = v141;
    v143 = *v136 - v137;
    if (*v136 < v137)
    {
      goto LABEL_150;
    }

    v137 = *v136 - 1;
    sub_100147E04(v140 + 16, v143, v140);
    *v136 = v137;
    v14 = v138;
  }
}

uint64_t sub_100122CE4(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v49 = a5;
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v42 - v13;
  v14 = a2 - a1;
  v15 = a3 - a2;
  if (v14 < v15)
  {
    sub_100060E68(a1);
    v16 = &a4[v14];
    v45 = v16;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v16 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v18 = *a2;
      v19 = *a4;
      v20 = a4;
      v21 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v22 = v47;
      sub_10001938C(v21 + v18, v47);
      v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v24 = v48;
      sub_10001938C(v23 + v19, v48);

      LOBYTE(v23) = v49(v22, v24);
      sub_1000193F0(v24);
      sub_1000193F0(v22);

      if ((v23 & 1) == 0)
      {
        break;
      }

      v25 = a2;
      v26 = a1 == a2++;
      a4 = v20;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++a1;
      v16 = v45;
    }

    v25 = v20;
    a4 = v20 + 1;
    if (a1 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a1 = *v25;
    goto LABEL_13;
  }

  sub_100060E68(a2);
  v16 = &a4[v15];
  v43 = a4;
  v44 = a1;
LABEL_15:
  v27 = a2 - 1;
  v28 = a3 - 1;
  v45 = a2 - 1;
  for (i = a2; v16 > a4 && a2 > a1; a2 = i)
  {
    v30 = v28;
    v31 = *(v16 - 1);
    v32 = *v27;
    v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v34 = v47;
    sub_10001938C(v33 + v31, v47);
    v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v36 = v48;
    sub_10001938C(v35 + v32, v48);

    LOBYTE(v35) = v49(v34, v36);
    sub_1000193F0(v36);
    sub_1000193F0(v34);

    a3 = v30;
    v37 = v30 + 1;
    if (v35)
    {
      v38 = v45;
      a2 = v45;
      a4 = v43;
      a1 = v44;
      if (v37 != i)
      {
        *v30 = *v45;
        a2 = v38;
      }

      goto LABEL_15;
    }

    if (v16 != v37)
    {
      *v30 = *(v16 - 1);
    }

    v28 = v30 - 1;
    --v16;
    a4 = v43;
    a1 = v44;
    v27 = v45;
  }

LABEL_28:
  v39 = v16 - a4;
  if (a2 != a4 || a2 >= &a4[v39])
  {
    memmove(a2, a4, 8 * v39);
  }

  return 1;
}

uint64_t sub_10012304C()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;
  sub_100019274();

  return sub_1000E65C8();
}

uint64_t sub_100123114()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);

  return Date.timeIntervalSince(_:)();
}

uint64_t sub_100123150()
{
  v3 = *(v0 + 8 * v1 + 32);

  return swift_task_alloc();
}

uint64_t sub_100123170()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD230);
  sub_10000641C(v0, qword_1001BD230);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001231E0()
{
  if (&_sendAneSignal)
  {
    if (qword_1001B8A90 != -1)
    {
      sub_1000052E0();
    }

    v0 = type metadata accessor for Logger();
    sub_10000641C(v0, qword_1001BD230);

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *(v3 + 4) = sub_100005DA0(4.8149e-34, v35, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34);
      sub_100011578(&_mh_execute_header, v11, v12, "Sending abort ANE session signal for %s");
      sub_100003324(v35);
      sub_100002BB8();
      sub_100002BB8();
    }

    sub_100065020(&qword_1001BD2E8, &unk_100173AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016FF40;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x8000000100178050;
    v14 = String._bridgeToObjectiveC()();
    type metadata accessor for CFString(0);
    *(inited + 72) = v15;
    *(inited + 48) = v14;
    sub_1000087C0();
    Dictionary.init(dictionaryLiteral:)();
    v16 = String._bridgeToObjectiveC()();
    sub_1000087C0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sendAneSignal();
  }

  result = os_variant_has_internal_content();
  if (result)
  {
    if (qword_1001B8A90 != -1)
    {
      sub_1000052E0();
    }

    v19 = type metadata accessor for Logger();
    sub_10000641C(v19, qword_1001BD230);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *(v22 + 4) = sub_100005DA0(4.8149e-34, v36, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34);
      sub_100011578(&_mh_execute_header, v30, v31, "Sending abort ANE session notification for %s");
      sub_100003324(v36);
      sub_100002BB8();
      sub_100002BB8();
    }

    return notify_post("ModelManagerAbort");
  }

  return result;
}

uint64_t sub_1001234E8()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD2F0);
  sub_10000641C(v0, qword_1001BD2F0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10012355C()
{
  v0 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v1 = sub_100002BDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002B8C();
  static OS_dispatch_source.MemoryPressureEvent.critical.getter();
  sub_100011598();
  sub_100015F9C(v6, v7);
  sub_100002CBC();
  v8 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v9 = *(v3 + 8);
  v10 = sub_100002CBC();
  v9(v10);
  if (v8)
  {
    return 0;
  }

  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  sub_100002CBC();
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v13 = sub_100002CBC();
  v9(v13);
  v11 = 1;
  if ((v12 & 1) == 0)
  {
    static OS_dispatch_source.MemoryPressureEvent.normal.getter();
    sub_100002CBC();
    v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v15 = sub_100002CBC();
    v9(v15);
    if (v14)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v11;
}

uint64_t sub_1001236BC(uint64_t a1)
{
  v74 = a1;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v1 = sub_100002BDC(v73);
  v69 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002B8C();
  v68 = v6 - v5;
  v71 = type metadata accessor for DispatchQoS();
  v7 = sub_100002BDC(v71);
  v67 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100002B8C();
  v66 = v12 - v11;
  v72 = sub_100065020(&qword_1001BD318, &qword_100173B30);
  v13 = sub_100002BDC(v72);
  v65 = v14;
  v70 = *(v15 + 64);
  __chkstk_darwin(v13);
  v64 = v59 - v16;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = sub_100002BDC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_100002B8C();
  v25 = v24 - v23;
  v26 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100002B8C();
  v32 = v31 - v30;
  v63 = sub_10000E2C0(0, &qword_1001BD320, OS_dispatch_source_ptr);
  sub_100065020(&qword_1001BD328, &qword_100173B38);
  v33 = *(v27 + 72);
  v34 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100172BA0;
  static OS_dispatch_source.MemoryPressureEvent.all.getter();
  static OS_dispatch_source.MemoryPressureEvent.procLimitWarn.getter();
  static OS_dispatch_source.MemoryPressureEvent.procLimitCritical.getter();
  aBlock = v35;
  sub_100011598();
  sub_100015F9C(v36, v37);
  sub_100065020(&qword_1001BD330, qword_100173B40);
  sub_1001249E8(&unk_1001BD338, &qword_1001BD330, qword_100173B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000E2C0(0, &qword_1001B8BC0, OS_dispatch_queue_ptr);
  (*(v20 + 104))(v25, enum case for DispatchQoS.QoSClass.userInitiated(_:), v17);
  v38 = static OS_dispatch_queue.global(qos:)();
  (*(v20 + 8))(v25, v17);
  v39 = static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();

  (*(v28 + 8))(v32, v26);
  getpid();
  if (memorystatus_control())
  {
    if (qword_1001B8A98 != -1)
    {
      sub_100005300();
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000641C(v40, qword_1001BD2F0);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      *(v43 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v41, v42, "Warning: Failed to set memory pressure listener privileged mode: %d", v43, 8u);
    }
  }

  ObjectType = swift_getObjectType();
  v46 = v64;
  v45 = v65;
  v47 = *(v65 + 16);
  v62 = v65 + 16;
  v63 = v47;
  v48 = v72;
  v47(v64, v74, v72);
  v49 = *(v45 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v39;
  v65 = *(v45 + 32);
  (v65)(v50 + ((v49 + 24) & ~v49), v46, v48);
  v79 = sub_100124904;
  v80 = v50;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v61 = &v77;
  v77 = sub_10000E6BC;
  v78 = &unk_1001B2658;
  v51 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v52 = v66;
  static DispatchQoS.unspecified.getter();
  v53 = v68;
  v59[1] = ObjectType;
  sub_100124364();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v51);
  v60 = v39;
  v69 = *(v69 + 8);
  (v69)(v53, v73);
  v67 = *(v67 + 8);
  (v67)(v52, v71);

  v54 = v72;
  v63(v46, v74, v72);
  v55 = swift_allocObject();
  (v65)(v55 + ((v49 + 16) & ~v49), v46, v54);
  v79 = sub_100124974;
  v80 = v55;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_10000E6BC;
  v78 = &unk_1001B26A8;
  v56 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100124364();
  v57 = v60;
  OS_dispatch_source.setCancelHandler(qos:flags:handler:)();
  _Block_release(v56);
  (v69)(v53, v73);
  (v67)(v52, v71);

  OS_dispatch_source.activate()();
  *(swift_allocObject() + 16) = v57;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t sub_100123EB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100065020(&qword_1001BD3C0, &qword_100173B58);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v32 = &v28 - v5;
  v6 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  swift_getObjectType();
  OS_dispatch_source_memorypressure.data.getter();
  if (qword_1001B8A98 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000641C(v14, qword_1001BD2F0);
  (*(v7 + 16))(v11, v13, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v3;
    v18 = v17;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v18 = 136315138;
    sub_100015F9C(&qword_1001BD3C8, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = a2;
    v21 = v20;
    v22 = v11;
    v23 = v6;
    v24 = *(v7 + 8);
    v24(v22, v6);
    v25 = sub_100004A3C(v19, v21, &v34);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received dispatch memory pressure event: %s", v18, 0xCu);
    sub_100003324(v29);

    v3 = v30;
  }

  else
  {

    v24 = *(v7 + 8);
    v24(v11, v6);
    v23 = v6;
  }

  v35 = sub_10012355C();
  sub_100065020(&qword_1001BD318, &qword_100173B30);
  v26 = v32;
  AsyncStream.Continuation.yield(_:)();
  (*(v33 + 8))(v26, v3);
  return (v24)(v13, v23);
}

void sub_10012426C()
{
  if (qword_1001B8A98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000641C(v0, qword_1001BD2F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dispatch memory pressure source cancelled", v3, 2u);
  }

  sub_100065020(&qword_1001BD318, &qword_100173B30);
  AsyncStream.Continuation.finish()();
}

uint64_t sub_100124364()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100015F9C(&qword_1001B9CE8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_1001249E8(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_10012443C()
{
  if (qword_1001B8A98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000641C(v0, qword_1001BD2F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dispatch memory pressure event stream cancelled", v3, 2u);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t sub_100124528()
{
  v1 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v24 = 8;
  v25[0] = 0;
  if (!sysctlbyname("kern.memorystatus_vm_pressure_level", v25, &v24, 0, 0))
  {
    OS_dispatch_source.MemoryPressureEvent.init(rawValue:)();
    v0 = sub_10012355C();
    if (v0 == 2)
    {
      if (qword_1001B8A98 != -1)
      {
        sub_100005300();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000641C(v17, qword_1001BD2F0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_17;
      }

      v20 = swift_slowAlloc();
      sub_100008510(v20, 3.852e-34);
      *(v20 + 4) = v25[0];
      v21 = "kern.memorystatus_vm_pressure_level contains system memory pressure: %lu";
    }

    else
    {
      if (qword_1001B8A98 != -1)
      {
        sub_100005300();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000641C(v22, qword_1001BD2F0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_17;
      }

      v20 = swift_slowAlloc();
      sub_100008510(v20, 3.852e-34);
      *(v20 + 4) = v25[0];
      v21 = "kern.memorystatus_vm_pressure_level: %lu";
    }

    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 0xCu);

LABEL_17:

    (*(v4 + 8))(v9, v1);
    return v0;
  }

  v10 = errno.getter();
  if (qword_1001B8A98 != -1)
  {
    sub_100005300();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000641C(v11, qword_1001BD2F0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "sysctlbyname(kern.memorystatus_vm_pressure_level) failed: %{darwin.errno}d", v14, 8u);
  }

  v15 = type metadata accessor for ModelManagerError();
  sub_100015F9C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, enum case for ModelManagerError.internalError(_:), v15);
  swift_willThrow();
  return v0;
}

uint64_t sub_100124904()
{
  v1 = *(sub_100065020(&qword_1001BD318, &qword_100173B30) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100123EB0(v2, v3);
}

void sub_100124974()
{
  v0 = *(*(sub_100065020(&qword_1001BD318, &qword_100173B30) - 8) + 80);

  sub_10012426C();
}

uint64_t sub_1001249E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100124A44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001AFFA0, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100124A98(char a1)
{
  if (a1)
  {
    return 0x73694C776F6C6C41;
  }

  else
  {
    return 0x73656963696C6F50;
  }
}

uint64_t sub_100124AD4()
{
  v0 = type metadata accessor for FilePath();
  sub_100065A60(v0, qword_1001BEB20);
  sub_10000641C(v0, qword_1001BEB20);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_100124B38()
{
  v0 = type metadata accessor for FilePath();
  sub_100065A60(v0, qword_1001BEB38);
  sub_10000641C(v0, qword_1001BEB38);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_100124BC0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100124A44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100124BF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100124A98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100124C24@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100124A44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100124C58(uint64_t a1)
{
  v2 = sub_100124EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100124C94(uint64_t a1)
{
  v2 = sub_100124EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PolicyFile.init(from:)(uint64_t *a1)
{
  v2 = sub_100065020(&qword_1001BD430, &qword_100173B60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100003370(a1, a1[3]);
  sub_100124EA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100065020(&qword_1001BD440, &qword_100173B68);
  HIBYTE(v10) = 0;
  sub_100124EF4();
  sub_100005314();
  v9 = v11;
  sub_100065020(&qword_1001B9F28, &qword_100174190);
  HIBYTE(v10) = 1;
  sub_100124FD8();
  sub_100005314();
  (*(v3 + 8))(v6, v2);
  sub_100003324(a1);
  return v9;
}

unint64_t sub_100124EA0()
{
  result = qword_1001BD438;
  if (!qword_1001BD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD438);
  }

  return result;
}

unint64_t sub_100124EF4()
{
  result = qword_1001BD448;
  if (!qword_1001BD448)
  {
    sub_10006A614(&qword_1001BD440, &qword_100173B68);
    sub_100124F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD448);
  }

  return result;
}

unint64_t sub_100124F80()
{
  result = qword_1001BD450;
  if (!qword_1001BD450)
  {
    type metadata accessor for Policy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD450);
  }

  return result;
}

unint64_t sub_100124FD8()
{
  result = qword_1001BD458;
  if (!qword_1001BD458)
  {
    sub_10006A614(&qword_1001B9F28, &qword_100174190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD458);
  }

  return result;
}

uint64_t sub_100125054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PolicyFile.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100125080(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001250C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyFile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PolicyFile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100125280()
{
  result = qword_1001BD460;
  if (!qword_1001BD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD460);
  }

  return result;
}

unint64_t sub_1001252D8()
{
  result = qword_1001BD468;
  if (!qword_1001BD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD468);
  }

  return result;
}

unint64_t sub_100125330()
{
  result = qword_1001BD470;
  if (!qword_1001BD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BD470);
  }

  return result;
}

uint64_t sub_100125384()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BD478);
  sub_10000641C(v0, qword_1001BD478);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_1001253F0()
{
  sub_1000055B0();
  v29 = sub_100065020(&qword_1001BD628, &qword_100173DE0);
  sub_100002BDC(v29);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_100004B1C();
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v30 = sub_100065020(&qword_1001BD600, &qword_100173D98);
  sub_100002BDC(v30);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_100004B1C();
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v28 = sub_100065020(&qword_1001BD620, &qword_100173DD8);
  sub_100002BDC(v28);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_100004B1C();
  __chkstk_darwin(v19);
  v21 = &v27 - v20;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors) = &_swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  v23 = enum case for InferenceMonitor.Event.inferencesNotRunning(_:);
  v24 = type metadata accessor for InferenceMonitor.Event();
  sub_100002C00(v24);
  (*(v25 + 104))(v0 + v22, v23, v24);
  *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction) = 0;
  v26 = v29;
  (*(v2 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v29);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v2 + 8))(v7, v26);
  (*(v16 + 32))(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__events, v21, v28);
  (*(v9 + 32))(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__continuation, v14, v30);
  sub_100002EEC();
}

uint64_t sub_100125690()
{
  v1 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64);
  sub_100004B1C();
  __chkstk_darwin(v2);
  v4 = &v11 - v3;
  static TaskPriority.userInitiated.getter();
  v5 = type metadata accessor for TaskPriority();
  sub_100009BFC(v4, 0, 1, v5);
  sub_100005DC0();
  v8 = sub_100126624(v6, v7);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v0;
  swift_retain_n();
  sub_1000652FC();
}

uint64_t sub_1001257BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = type metadata accessor for InferenceMonitor.Event();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = *(*(sub_100065020(&qword_1001BD610, &qword_100173DC8) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = sub_100065020(&qword_1001BD618, &qword_100173DD0);
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100125920, a4, 0);
}

uint64_t sub_100125920()
{
  v1 = v0[15];
  v2 = v0[8];
  sub_100065020(&qword_1001BD620, &qword_100173DD8);
  AsyncStream.makeAsyncIterator()();
  sub_100005DC0();
  v5 = sub_100126624(v3, v4);
  v6 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  v0[16] = v5;
  v0[17] = v6;
  v0[18] = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors;
  swift_beginAccess();
  v7 = v0[16];
  v8 = v0[8];
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v11 = sub_1000087D4(v10);

  return AsyncStream.Iterator.next(isolation:)(v11);
}

void sub_100125A28()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25 = type metadata accessor for InferenceMonitor.Event();
  v8 = sub_100002BDC(v25);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002B8C();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors;
  swift_beginAccess();
  if (!*(*(v0 + v16) + 16))
  {
    type metadata accessor for _OSTransaction();
    v17 = _OSTransaction.__allocating_init(_:)();
    v18 = *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction);
    *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction) = v17;
  }

  swift_beginAccess();

  sub_10007D4FC();
  swift_endAccess();

  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v7;
  *(v19 + 32) = v5;
  *(v19 + 40) = v3;
  v20 = __chkstk_darwin(v19);
  *(&v24 - 2) = &unk_100173DA8;
  *(&v24 - 1) = v20;

  os_unfair_lock_lock((v3 + 32));
  sub_100126608((v3 + 16));
  os_unfair_lock_unlock((v3 + 32));

  v21 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  swift_beginAccess();
  v22 = v1 + v21;
  v23 = v25;
  (*(v10 + 16))(v15, v22, v25);
  sub_100125DE0();
  (*(v10 + 8))(v15, v23);
  sub_100002EEC();
}

uint64_t sub_100125C94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_100125CC0, a1, 0);
}

uint64_t sub_100125CC0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  sub_100125D28(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100125D28(Swift::UInt a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors;
  swift_beginAccess();
  sub_10014366C(a1);
  v6 = v5;
  swift_endAccess();
  result = sub_100126518(v6);
  if (!*(*(v2 + v4) + 16))
  {
    v8 = *(v2 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction);
    *(v2 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction) = 0;
  }

  return result;
}

void sub_100125DE0()
{
  sub_1000055B0();
  v1 = v0;
  v26 = v2;
  v3 = type metadata accessor for InferenceMonitor.Event();
  v4 = sub_100002BDC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  v11 = v10 - v9;
  if (qword_1001B8AB0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000641C(v12, qword_1001BD478);
  (*(v6 + 16))(v11, v1, v3);
  swift_retain_n();
  swift_retain_n();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v15 = 136315394;
    sub_1000115B0();
    sub_100126624(v16, v17);
    v24 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v6 + 8))(v11, v3);
    v21 = sub_100004A3C(v18, v20, &v27);

    *(v15 + 4) = v21;
    *(v15 + 12) = 1024;

    *(v15 + 14) = v26;

    _os_log_impl(&_mh_execute_header, v13, v24, "Sending inference monitor event: %s to pid %d", v15, 0x12u);
    sub_100003324(v25);
  }

  else
  {

    (*(v6 + 8))(v11, v3);
  }

  sub_1000115B0();
  sub_100126624(v22, v23);
  dispatch thunk of XPCSession.send<A>(_:)();
  sub_100002EEC();
}

uint64_t sub_1001261D4()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__events;
  v2 = sub_100065020(&qword_1001BD620, &qword_100173DD8);
  sub_100002C00(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__continuation;
  v5 = sub_100065020(&qword_1001BD600, &qword_100173D98);
  sub_100002C00(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__inferenceMonitors);

  v8 = OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__mostRecentState;
  v9 = type metadata accessor for InferenceMonitor.Event();
  sub_100002C00(v9);
  (*(v10 + 8))(v0 + v8);
  v11 = *(v0 + OBJC_IVAR____TtC13modelmanagerd23InferenceMonitorManager__transaction);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001262DC()
{
  sub_1001261D4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for InferenceMonitorManager()
{
  result = qword_1001BD4B8;
  if (!qword_1001BD4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012635C()
{
  sub_1001264B8(319, &qword_1001BD4C8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1001264B8(319, &unk_1001BD4D0, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for InferenceMonitor.Event();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001264B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for InferenceMonitor.Event();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100126518(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100126558()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10010CE5C;

  return sub_100125C94(v2, v3, v4, v5);
}

uint64_t sub_100126624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012666C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10010D2F0;

  return sub_1001257BC(a1, v4, v5, v6);
}

uint64_t sub_100126720()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *(*(sub_100065020(&qword_1001BD748, &qword_100173E90) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001267B0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  sub_100009BFC(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_continuation;
  swift_beginAccess();
  sub_100127EB8(v1, v2 + v5);
  swift_endAccess();

  sub_100001F00();

  return v6();
}

uint64_t sub_1001268AC()
{
  sub_100002BAC();
  v1[8] = v0;
  v2 = *(*(sub_100065020(&qword_1001BD748, &qword_100173E90) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001269B0()
{
  sub_100003884();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC13modelmanagerd15TimeoutExecutor_continuation;
  swift_beginAccess();
  sub_100127DE0(v3 + v4, v1);
  if (sub_10000C6C0(v1, 1, v2) == 1)
  {
    sub_100127E50(v0[10]);
  }

  else
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[9];
    (*(v6 + 32))(v5, v0[10], v7);
    sub_100009BFC(v8, 1, 1, v7);
    swift_beginAccess();
    sub_100127EB8(v8, v3 + v4);
    swift_endAccess();
    CheckedContinuation.resume(returning:)();
    (*(v6 + 8))(v5, v7);
  }

  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];

  sub_100001F00();

  return v12();
}

uint64_t sub_100126B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_100002C10();
  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100126B34()
{
  sub_100003884();
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100127B60();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_100126C44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100126C44()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_100126D78;
  }

  else
  {
    v12 = v3[6];
    v11 = v3[7];

    v10 = sub_100126D50;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100126D78()
{
  sub_100002BAC();
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2(0);
}

uint64_t sub_100126DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v8 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_100009BFC(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = sub_100127B60();
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = v18;
  *(v21 + 4) = a2;
  (*(v9 + 32))(&v21[v19], v12, v8);
  v22 = &v21[v20];
  v23 = v28;
  *v22 = v27;
  *(v22 + 1) = v23;
  v24 = &v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8];
  v25 = v30;
  *v24 = v29;
  *(v24 + 1) = v25;
  swift_retain_n();

  sub_100128ED0();
}

uint64_t sub_100126FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v13;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a4;
  v9 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[8] = v10;
  *v10 = v8;
  v10[1] = sub_1001270E0;

  return sub_100126720();
}

uint64_t sub_1001270E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 64);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001271D8()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  sub_100009BFC(v1, 1, 1, v6);
  v7 = sub_100127B60();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v4;
  swift_retain_n();
  sub_100128ED0();

  v13 = (v2 + *v2);
  v9 = v2[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100127364;
  v11 = v0[6];

  return v13();
}