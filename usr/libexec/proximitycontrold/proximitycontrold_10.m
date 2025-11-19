uint64_t sub_1000E5AE4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1000E5B44(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_1000E5B80(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_1000E5BE4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_1000E5C44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = a1[1];
  v9[0] = *a1;
  v6 = v9[0];
  v9[1] = v7;
  v4(v9);
  *a2 = v6;
  a2[1] = v7;
}

uint64_t sub_1000E5CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100035D04(&qword_1003430B8, &qword_100278F30);
  return v4(a1, *(a1 + *(v5 + 48)));
}

void *sub_1000E5D30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  result = sub_1001BF234(*a1, *(a1 + 8), *(a1 + 16), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

uint64_t sub_1000E5DF0(uint64_t a1)
{
  v4 = *(type metadata accessor for ViewServiceInput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009D6D4;

  return sub_1000DCE14(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000E5EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E6000@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1000E6034@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_1000E6048(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000E605C(uint64_t result)
{
  if ((result - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1000E6078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E60E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E6128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E6190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E62A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int16 a8)
{
  v9 = a8 >> 14;
  if (v9 == 3)
  {
    return sub_1000E6358(result, a2, a3, a4, a5, a6, a7, a8, HIBYTE(a8) & 0x3F);
  }

  if (v9 == 2)
  {

    return sub_1000E62F0(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1000E62F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 3)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_1000E6358(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, char a9)
{
  if (a9 == 2)
  {

    return sub_1000E63DC(result, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (a9 != 1)
    {
      if (a9)
      {
        return result;
      }
    }
  }
}

uint64_t sub_1000E63DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 != 0xFF)
  {
    return sub_1000E63F0(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

uint64_t sub_1000E63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 < 2u)
  {
  }

  if (a8 == 2)
  {
  }

  return result;
}

uint64_t sub_1000E6464(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E6584;

  return sub_1000E2378(a1, v4, v5, v6, (v1 + 40));
}

unint64_t sub_1000E6530()
{
  result = qword_100343160;
  if (!qword_100343160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343160);
  }

  return result;
}

uint64_t sub_1000E6590()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343168);
  sub_100003078(v0, qword_100343168);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E6614()
{
  type metadata accessor for MeDeviceMonitor();
  swift_allocObject();
  result = sub_1000E6650();
  qword_10038B0F8 = result;
  return result;
}

uint64_t sub_1000E6650()
{
  *(v0 + 16) = 2;
  v1 = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 24) = v1;
  v2 = qword_1003391E8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setDispatchQueue:qword_10038B5B8];

  [*(v0 + 24) setMeDeviceUseFindMyLocate:1];
  v4 = *(v0 + 24);
  v5 = swift_allocObject();
  swift_weakInit();
  v17 = sub_1000E6CB8;
  v18 = v5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100018AB8;
  v16 = &unk_100306F50;
  v6 = _Block_copy(&v13);
  v7 = v4;

  [v7 setMeDeviceChangedHandler:v6];
  _Block_release(v6);

  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = v8;

  v17 = sub_1000E6CDC;
  v18 = v9;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100018AB8;
  v16 = &unk_100306F78;
  v11 = _Block_copy(&v13);

  [v10 activateWithCompletion:v11];
  _Block_release(v11);

  return v0;
}

uint64_t sub_1000E68A0(uint64_t a1, const char *a2)
{
  if (qword_100338F50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343168);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000E6A28();
  }

  return result;
}

uint64_t sub_1000E69BC()
{
  [*(v0 + 24) invalidate];

  return swift_deallocClassInstance();
}

void sub_1000E6A28()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if ([v2 meDeviceValid])
  {
    v3 = [v2 meDeviceIsMe];
  }

  else
  {
    v3 = 2;
  }

  if (qword_100338F50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100343168);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    if (v3 == 2)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v10 = String.init<A>(describing:)();
      v9 = v11;
    }

    v12 = sub_100017494(v10, v9, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "isLocalDeviceMeDevice updated: %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  *(v1 + 16) = v3;
}

uint64_t sub_1000E6D08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E6D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E6D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E6DD4(uint64_t a1)
{
  v40 = type metadata accessor for URLQueryItem();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v40);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v38 = v6;
  v33 = v1;
  v43 = _swiftEmptyArrayStorage;
  sub_1000CE124(0, v7, 0);
  v8 = v43;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v42 = *(a1 + 36);
  v36 = a1 + 64;
  v37 = v3 + 32;
  v34 = a1 + 72;
  v35 = v7;
  v39 = v3;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v42 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v41 = v13;
    v16 = (*(a1 + 48) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + 16 * v12);
    v20 = a1;
    v22 = *v19;
    v21 = v19[1];

    v23 = v38;
    URLQueryItem.init(name:value:)();

    v43 = v8;
    v25 = v8[2];
    v24 = v8[3];
    if (v25 >= v24 >> 1)
    {
      sub_1000CE124(v24 > 1, v25 + 1, 1);
      v8 = v43;
    }

    v8[2] = v25 + 1;
    result = (*(v39 + 32))(v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v23, v40);
    v14 = 1 << *(v20 + 32);
    if (v12 >= v14)
    {
      goto LABEL_25;
    }

    v9 = v36;
    v26 = *(v36 + 8 * v15);
    if ((v26 & (1 << v12)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v20;
    if (v42 != *(v20 + 36))
    {
      goto LABEL_27;
    }

    v27 = v26 & (-2 << (v12 & 0x3F));
    if (v27)
    {
      v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v15 << 6;
      v29 = v15 + 1;
      v30 = (v34 + 8 * v15);
      while (v29 < (v14 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_100059628(v12, v42, 0);
          v14 = __clz(__rbit64(v31)) + v28;
          goto LABEL_20;
        }
      }

      result = sub_100059628(v12, v42, 0);
LABEL_20:
      a1 = v20;
    }

    v13 = v41 + 1;
    v12 = v14;
    if (v41 + 1 == v35)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000E7120()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343250);
  sub_100003078(v0, qword_100343250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E719C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v127 = a1;
  v3 = sub_100035D04(&qword_100343270, &qword_100279128);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v125 - v5;
  v7 = sub_100035D04(&qword_100343278, &unk_100279130);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v129 = &v125 - v9;
  v10 = type metadata accessor for URLComponents();
  v130 = *(v10 - 8);
  v11 = *(v130 + 64);
  __chkstk_darwin(v10);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v136 = v14;
  v137 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v135 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = _swiftEmptyDictionarySingleton;
  if (*(v1 + 16) != 10)
  {
    v18 = sub_10013FCC0();
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = _swiftEmptyDictionarySingleton;
    sub_10004CE88(v18, v20, 0x6966697373616C43, 0xEE006E6F69746163, isUniquelyReferenced_nonNull_native);
    v140 = v139[0];
  }

  v22 = *(v1 + 8);
  if (v22)
  {
    v23 = *v1;
    v24 = *(v1 + 8);

    sub_1001CF7F0(v23, v22, 0x7470697263736544, 0xEB000000006E6F69);
  }

  v25 = *(v1 + 88);
  if (v25 <= 2)
  {
    v28 = 0xEC00000079725420;
    v29 = 0x74276E6469442049;
    if (v25 != 1)
    {
      v29 = 0x6C70704120746F4ELL;
      v28 = 0xEE00656C62616369;
    }

    if (*(v1 + 88))
    {
      v26 = v29;
    }

    else
    {
      v26 = 0x737961776C41;
    }

    if (*(v1 + 88))
    {
      v27 = v28;
    }

    else
    {
      v27 = 0xE600000000000000;
    }
  }

  else if (*(v1 + 88) > 4u)
  {
    if (v25 != 5)
    {
      goto LABEL_24;
    }

    v27 = 0xE600000000000000;
    v26 = 0x656C62616E55;
  }

  else
  {
    if (v25 == 3)
    {
      v26 = 0x796C65726152;
    }

    else
    {
      v26 = 0x656D6974656D6F53;
    }

    if (v25 == 3)
    {
      v27 = 0xE600000000000000;
    }

    else
    {
      v27 = 0xE900000000000073;
    }
  }

  v30 = v140;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v139[0] = v30;
  sub_10004CE88(v26, v27, 0x6375646F72706552, 0xEF7974696C696269, v31);
  v140 = v139[0];
LABEL_24:
  v132 = v6;
  v128 = v13;
  v32 = v2[13];
  if (v32)
  {
    v33 = v2[12];
    v34 = v2[13];

    sub_1001CF7F0(v33, v32, 0x656C746954, 0xE500000000000000);
  }

  v131 = v10;
  v35 = v2[4];
  if (v35)
  {
    v36 = v2[8];
    v134 = v2[7];
    v38 = v2[5];
    v37 = v2[6];
    v39 = v2;
    v40 = v2[3];

    v41 = v140;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v41;
    v43 = v40;
    v2 = v39;
    sub_10004CE88(v43, v35, 0x6E656E6F706D6F43, 0xEB00000000444974, v42);
    v44 = v139[0];

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v44;
    sub_10004CE88(v38, v37, 0x6E656E6F706D6F43, 0xED0000656D614E74, v45);
    v46 = v139[0];

    v47 = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v46;
    sub_10004CE88(v134, v36, 0xD000000000000010, 0x800000010029F6C0, v47);
    v140 = v139[0];
  }

  v48 = v2[10];
  if (v48)
  {
    v49 = *(v48 + 16);
    if (v49)
    {
      if (qword_100338F60 != -1)
      {
        swift_once();
      }

      v126 = v2;
      v50 = type metadata accessor for Logger();
      sub_100003078(v50, qword_100343250);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v139[0] = v54;
        *v53 = 136315138;
        v55 = Array.description.getter();
        v57 = sub_100017494(v55, v56, v139);

        *(v53 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Have device IDs %s", v53, 0xCu);
        sub_10000903C(v54);
      }

      v139[0] = _swiftEmptyArrayStorage;
      sub_1000CDF40(0, v49, 0);
      v58 = v139[0];
      v59 = *(v137 + 16);
      v60 = v48 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
      v133 = *(v137 + 72);
      v134 = v59;
      v137 += 16;
      v61 = (v137 - 8);
      do
      {
        v62 = v135;
        v63 = v136;
        v134(v135, v60, v136);
        v64 = UUID.uuidString.getter();
        v66 = v65;
        (*v61)(v62, v63);
        v139[0] = v58;
        v68 = *(v58 + 16);
        v67 = *(v58 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1000CDF40((v67 > 1), v68 + 1, 1);
          v58 = v139[0];
        }

        *(v58 + 16) = v68 + 1;
        v69 = v58 + 16 * v68;
        *(v69 + 32) = v64;
        *(v69 + 40) = v66;
        v60 += v133;
        --v49;
      }

      while (v49);
      v139[0] = v58;
      sub_100035D04(&qword_1003397D0, &qword_1002729A0);
      sub_10001CAF4();
      v70 = BidirectionalCollection<>.joined(separator:)();
      v72 = v71;

      v73 = v140;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v73;
      sub_10004CE88(v70, v72, 0x4449656369766544, 0xE900000000000073, v74);
      v140 = v139[0];
      v2 = v126;
    }
  }

  v75 = v2[9];
  v76 = *(v75 + 16);
  v77 = v132;
  if (v76)
  {
    if (qword_100338F60 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100003078(v78, qword_100343250);
    sub_1000E8EC0(v2, v139);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    sub_1000E8EF8(v2);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v139[0] = v82;
      *v81 = 136315138;
      v83 = Array.description.getter();
      v85 = sub_100017494(v83, v84, v139);

      *(v81 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v79, v80, "Have keywords %s", v81, 0xCu);
      sub_10000903C(v82);
    }

    v139[0] = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v76, 0);
    v86 = v139[0];
    v87 = (v75 + 32);
    v88 = *(v139[0] + 16);
    v89 = 16 * v88;
    v90 = 0x34393339353931;
    do
    {
      if (*v87)
      {
        v91 = 0x34333733343831;
      }

      else
      {
        v91 = v90;
      }

      v139[0] = v86;
      v92 = *(v86 + 24);
      v93 = v88 + 1;
      if (v88 >= v92 >> 1)
      {
        v95 = v90;
        sub_1000CDF40((v92 > 1), v88 + 1, 1);
        v90 = v95;
        v86 = v139[0];
      }

      *(v86 + 16) = v93;
      v94 = v86 + v89;
      *(v94 + 32) = v91;
      *(v94 + 40) = 0xE700000000000000;
      v89 += 16;
      ++v87;
      v88 = v93;
      --v76;
    }

    while (v76);
    v139[0] = v86;
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v96 = BidirectionalCollection<>.joined(separator:)();
    v98 = v97;

    v99 = v140;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v99;
    sub_10004CE88(v96, v98, 0x7364726F7779654BLL, 0xE800000000000000, v100);
    v140 = v139[0];
    v77 = v132;
  }

  v101 = v129;
  URLComponents.init(string:)();
  v102 = v130;
  v103 = v131;
  if ((*(v130 + 48))(v101, 1, v131) == 1)
  {

    sub_1000097E8(v101, &qword_100343278, &unk_100279130);
    if (qword_100338F60 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_100003078(v104, qword_100343250);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v139[0] = v108;
      *v107 = 136315138;
      *(v107 + 4) = sub_100017494(0xD000000000000012, 0x800000010029F6A0, v139);
      _os_log_impl(&_mh_execute_header, v105, v106, "### Failed to create urlComponents with '%s'", v107, 0xCu);
      sub_10000903C(v108);
    }

    sub_1000E8FD8();
    swift_allocError();
    *v109 = 1;
    return swift_willThrow();
  }

  else
  {
    v111 = v128;
    (*(v102 + 32))(v128, v101, v103);

    sub_1000E6DD4(v112);
    swift_bridgeObjectRelease_n();
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v113 = type metadata accessor for URL();
    v114 = *(v113 - 8);
    if ((*(v114 + 48))(v77, 1, v113) == 1)
    {
      sub_1000097E8(v77, &qword_100343270, &qword_100279128);
      if (qword_100338F60 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_100003078(v115, qword_100343250);
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v138 = v119;
        *v118 = 136315138;
        v120 = v128;
        swift_beginAccess();
        sub_1000E902C(&qword_100343288, &type metadata accessor for URLComponents);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v123 = sub_100017494(v121, v122, &v138);

        *(v118 + 4) = v123;
        _os_log_impl(&_mh_execute_header, v116, v117, "### Failed to create URL with components %s", v118, 0xCu);
        sub_10000903C(v119);
        v103 = v131;
      }

      else
      {

        v120 = v128;
      }

      sub_1000E8FD8();
      swift_allocError();
      *v124 = 0;
      swift_willThrow();
      return (*(v130 + 8))(v120, v103);
    }

    else
    {
      (*(v114 + 32))(v127, v77, v113);
      return (*(v102 + 8))(v111, v103);
    }
  }
}

id sub_1000E8064(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v64 = a2;
  v65 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v57 - v12;
  v62 = v14;
  __chkstk_darwin(v11);
  v16 = &v57 - v15;
  if (qword_100338F60 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100003078(v17, qword_100343250);
  sub_1000E8EC0(v5, aBlock);
  v67 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_1000E8EF8(v5);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v61 = v6;
    v22 = v21;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v22 = 136315138;
    v23 = sub_1000E8608();
    v25 = sub_100017494(v23, v24, aBlock);
    LODWORD(v59) = v20;
    v26 = v16;
    v27 = v13;
    v28 = v7;
    v29 = v25;

    *(v22 + 4) = v29;
    v7 = v28;
    v13 = v27;
    v16 = v26;
    v4 = v3;
    _os_log_impl(&_mh_execute_header, v19, v59, "Triggering %s", v22, 0xCu);
    sub_10000903C(v60);

    v6 = v61;
  }

  result = sub_1000E719C(v16);
  if (!v4)
  {
    v61 = 0;
    v31 = v7[2];
    v31(v13, v16, v6);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v59 = v16;
      v35 = v34;
      v36 = swift_slowAlloc();
      v60 = v7;
      v37 = v6;
      v38 = v36;
      aBlock[0] = v36;
      *v35 = 136315138;
      sub_1000E902C(&qword_100343268, &type metadata accessor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v31;
      v40 = v39;
      v42 = v41;
      v67 = v60[1];
      v67(v13, v37);
      v43 = sub_100017494(v40, v42, aBlock);

      *(v35 + 4) = v43;
      v31 = v58;
      _os_log_impl(&_mh_execute_header, v32, v33, "Triggering with URL %s", v35, 0xCu);
      sub_10000903C(v38);
      v6 = v37;
      v7 = v60;

      v16 = v59;
    }

    else
    {

      v67 = v7[1];
      v67(v13, v6);
    }

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v45 = result;
      URL._bridgeToObjectiveC()(v44);
      v47 = v46;
      v48 = v63;
      v31(v63, v16, v6);
      v49 = v16;
      v50 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v51 = (v62 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      (v7[4])(v52 + v50, v48, v6);
      v53 = (v52 + v51);
      v55 = v64;
      v54 = v65;
      *v53 = v65;
      v53[1] = v55;
      aBlock[4] = sub_1000E8F28;
      aBlock[5] = v52;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000E8DA0;
      aBlock[3] = &unk_100307060;
      v56 = _Block_copy(aBlock);
      sub_10009D4E0(v54);

      [v45 openURL:v47 configuration:0 completionHandler:v56];
      _Block_release(v56);

      return (v67)(v49, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000E8608()
{
  v45 = *(v0 + 96);
  if (*(&v45 + 1))
  {
    sub_1000E8E50(&v45, &v43);
    sub_10000B584(24);
    sub_1000097E8(&v45, &qword_10033A238, &qword_10027D3E0);
  }

  else
  {
    Substring.init(_:)();
  }

  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10026F050;
  v43 = 0x726F706552677542;
  v44 = 0xEB00000000203A74;
  v2 = static String._fromSubstring(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6 = v44;
  *(v1 + 32) = v43;
  *(v1 + 40) = v6;
  v7 = *(v0 + 32);
  if (v7)
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 24);
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v43 = 0xD000000000000010;
    v44 = 0x800000010029F650;
    v11._countAndFlagsBits = v9;
    v11._object = v8;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x3D6469202CLL;
    v12._object = 0xE500000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v10;
    v13._object = v7;
    String.append(_:)(v13);
    v14 = v43;
    v15 = v44;
    v17 = *(v1 + 16);
    v16 = *(v1 + 24);
    if (v17 >= v16 >> 1)
    {
      v1 = sub_100009088((v16 > 1), v17 + 1, 1, v1);
    }

    *(v1 + 16) = v17 + 1;
    v18 = v1 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
  }

  if (*(v0 + 16) != 10)
  {
    v19 = sub_10013FCC0();
    v22 = *(v1 + 16);
    v21 = *(v1 + 24);
    if (v22 >= v21 >> 1)
    {
      v40 = v19;
      v41 = v20;
      v42 = sub_100009088((v21 > 1), v22 + 1, 1, v1);
      v20 = v41;
      v1 = v42;
      v19 = v40;
    }

    *(v1 + 16) = v22 + 1;
    v23 = v1 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
  }

  v24 = *(v0 + 88);
  if (v24 <= 2)
  {
    if (*(v0 + 88))
    {
      if (v24 == 1)
      {
        v25 = 0xEC00000079725420;
        v26 = 0x74276E6469442049;
      }

      else
      {
        v25 = 0xEE00656C62616369;
        v26 = 0x6C70704120746F4ELL;
      }
    }

    else
    {
      v25 = 0xE600000000000000;
      v26 = 0x737961776C41;
    }
  }

  else if (*(v0 + 88) > 4u)
  {
    if (v24 != 5)
    {
      goto LABEL_27;
    }

    v25 = 0xE600000000000000;
    v26 = 0x656C62616E55;
  }

  else if (v24 == 3)
  {
    v25 = 0xE600000000000000;
    v26 = 0x796C65726152;
  }

  else
  {
    v25 = 0xE900000000000073;
    v26 = 0x656D6974656D6F53;
  }

  v28 = *(v1 + 16);
  v27 = *(v1 + 24);
  if (v28 >= v27 >> 1)
  {
    v1 = sub_100009088((v27 > 1), v28 + 1, 1, v1);
  }

  *(v1 + 16) = v28 + 1;
  v29 = v1 + 16 * v28;
  *(v29 + 32) = v26;
  *(v29 + 40) = v25;
LABEL_27:
  v30 = *(v0 + 80);
  if (v30 && *(v30 + 16))
  {
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v31;
    v32._countAndFlagsBits = 0x2865636976656420;
    v32._object = 0xEA00000000002973;
    String.append(_:)(v32);
    v33 = v43;
    v34 = v44;
    v36 = *(v1 + 16);
    v35 = *(v1 + 24);
    if (v36 >= v35 >> 1)
    {
      v1 = sub_100009088((v35 > 1), v36 + 1, 1, v1);
    }

    *(v1 + 16) = v36 + 1;
    v37 = v1 + 16 * v36;
    *(v37 + 32) = v33;
    *(v37 + 40) = v34;
  }

  v43 = v1;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v38 = BidirectionalCollection<>.joined(separator:)();

  return v38;
}

void sub_1000E8A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_6:
    if (!a4)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_errorRetain();
  if (qword_100338F60 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100343250);
  (*(v10 + 16))(v13, a3, v9);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v18 = 138412546;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    *(v18 + 12) = 2080;
    sub_1000E902C(&qword_100343268, &type metadata accessor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = a4;
    v24 = v23;
    (*(v10 + 8))(v13, v9);
    v25 = sub_100017494(v21, v24, &v29);
    a4 = v22;

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "### Failed to open TTR with error: %@, URL=%s", v18, 0x16u);
    sub_1000097E8(v26, &qword_100339940, &unk_100272C50);

    sub_10000903C(v27);

    goto LABEL_6;
  }

  (*(v10 + 8))(v13, v9);
  if (!a4)
  {
    return;
  }

LABEL_7:
  a4(a2);
}

uint64_t sub_1000E8DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1000E8E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000E8F28(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1000E8A6C(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_1000E8FD8()
{
  result = qword_100343280;
  if (!qword_100343280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343280);
  }

  return result;
}

uint64_t sub_1000E902C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E9074()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343290);
  sub_100003078(v0, qword_100343290);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E90F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL sub_1000E9168(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 24);

  CurrentValueSubject.value.getter();
  v7 = v21;
  if (v21)
  {
  }

  else
  {
    v8 = *(v5 + 16);
    CurrentValueSubject.value.getter();

    v7 = v22[0];
  }

  v9 = (v7 + 40);
  v10 = -*(v7 + 16);
  v11 = -1;
  do
  {
    v12 = v10 + v11;
    if (v10 + v11 == -1)
    {
      break;
    }

    if (++v11 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v13 = v9 + 2;
    v14 = *v9;
    v22[0] = *(v9 - 1);
    v22[1] = v14;
    sub_10001369C();
    v15 = StringProtocol.contains<A>(_:)();
    v9 = v13;
  }

  while ((v15 & 1) == 0);

  if (qword_100338F68 == -1)
  {
    goto LABEL_9;
  }

LABEL_13:
  swift_once();
LABEL_9:
  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_100343290);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100017494(0xD000000000000019, 0x800000010029F820, v22);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100017494(a1, a2, v22);
    *(v19 + 22) = 1024;
    *(v19 + 24) = v12 != -1;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: identifier=%s, %{BOOL}d", v19, 0x1Cu);
    swift_arrayDestroy();
  }

  return v12 != -1;
}

uint64_t sub_1000E93D4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17proximitycontrold22FrontBoardMonitorState__orientation;
  v3 = sub_100035D04(&qword_100343498, qword_100279210);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FrontBoardMonitorState()
{
  result = qword_1003432D8;
  if (!qword_1003432D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E94D8()
{
  sub_1000E9578();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000E9578()
{
  if (!qword_1003432E8)
  {
    type metadata accessor for BSInterfaceOrientation(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003432E8);
    }
  }
}

uint64_t sub_1000E95D0()
{
  v0 = type metadata accessor for FrontBoardMonitorState();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = sub_100035D04(&qword_100343480, &unk_1002791B8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v3 + 16) = sub_10002B750(_swiftEmptyArrayStorage, 0, 0, 0, 0, 0);
  type metadata accessor for BSInterfaceOrientation(0);
  Published.init(initialValue:)();
  type metadata accessor for FrontBoardMonitor();
  swift_allocObject();
  v7 = sub_1000EB68C(v3);

  qword_10038B100 = v7;
  return result;
}

uint64_t sub_1000E96A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  v8 = *(v65 + 64);
  __chkstk_darwin(v67);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338F68 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_100343290);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v69 = v5;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      if (a2)
      {
        v74 = v11;
        sub_100003118(0, &qword_100343490, FBSDisplayLayout_ptr);
        v17 = v11;
        v18 = String.init<A>(describing:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_100017494(v18, v20, aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "New layout: %s", v15, 0xCu);
      sub_10000903C(v16);
    }

    v22 = swift_allocObject();
    if (!a2 || (v23 = [v11 elements], sub_100003118(0, &qword_100343488, FBSDisplayLayoutElement_ptr), v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v23, *(v22 + 16) = v24, (objc_msgSend(v11, "backlightState") & 0xFFFFFFFFFFFFFFFELL) != 2))
    {
      *(v22 + 16) = _swiftEmptyArrayStorage;
    }

    v25 = 0;
    v26 = 0;
    v70 = v22;
    do
    {
      v28 = v25;
      v29 = &off_100300ED0 + 2 * v26;
      v30 = v29[4];
      a2 = v29[5];
      v5 = *(v22 + 16);
      v71 = v28;
      if (v5 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v31)
      {
        v32 = 0;
        v72 = v5 & 0xFFFFFFFFFFFFFF8;
        v73 = v5 & 0xC000000000000001;
        while (1)
        {
          if (v73)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v32 >= *(v72 + 16))
            {
              goto LABEL_71;
            }

            v33 = *(v5 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_70;
          }

          v36 = [v33 bundleIdentifier];
          if (!v36)
          {
            v36 = [v34 identifier];
          }

          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          if (v37 == v30 && v39 == a2)
          {
            break;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v41)
          {
            goto LABEL_32;
          }

          ++v32;
          if (v35 == v31)
          {
            goto LABEL_11;
          }
        }

LABEL_32:

        v22 = v70;
        v5 = *(v70 + 16);
        aBlock[0] = _swiftEmptyArrayStorage;
        if (v5 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v42)
        {
          v43 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v43 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_69;
              }

              v44 = *(v5 + 8 * v43 + 32);
            }

            v45 = v44;
            v46 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            a2 = &selRef_requestIdentifier;
            v47 = [v44 level];
            if (v47 >= [v34 level])
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              a2 = *(aBlock[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v43;
            if (v46 == v42)
            {
              v48 = aBlock[0];
              v22 = v70;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v48 = _swiftEmptyArrayStorage;
LABEL_47:

        *(v22 + 16) = v48;
      }

      else
      {
LABEL_11:

        v22 = v70;
      }

      v27 = v71;

      v25 = 1;
      v26 = 1;
    }

    while ((v27 & 1) == 0);
    swift_arrayDestroy();
    a2 = *(v22 + 16);
    aBlock[0] = _swiftEmptyArrayStorage;
    v49 = a2 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v49)
    {
      break;
    }

    v50 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v51 = *(a2 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if ([v51 layoutRole] == 5)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v50;
      if (v53 == v49)
      {
        v54 = aBlock[0];
        v22 = v70;
        goto LABEL_65;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_65:

  *(v22 + 16) = v54;

  aBlock[0] = sub_1001282B8(v55);
  sub_1000EAAB8(aBlock);

  *(v22 + 16) = aBlock[0];

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v56 = swift_allocObject();
  v57 = v63;
  *(v56 + 16) = v22;
  *(v56 + 24) = v57;
  aBlock[4] = sub_1000EB960;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307178;
  v58 = _Block_copy(aBlock);

  v59 = v64;
  static DispatchQoS.unspecified.getter();
  v74 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v60 = v66;
  v61 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v58);
  (*(v68 + 8))(v60, v61);
  (*(v65 + 8))(v59, v67);
}

char *sub_1000E9FC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v28 = *(a1 + 16);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v30 = _swiftEmptyArrayStorage;

    result = sub_1000CDF40(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = a2;
    v8 = 0;
    v6 = v30;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v10 bundleIdentifier];
      if (!v11)
      {
        v11 = [v10 identifier];
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v30 = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000CDF40((v16 > 1), v17 + 1, 1);
        v6 = v30;
      }

      ++v8;
      v6[2] = v17 + 1;
      v18 = &v6[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v5 != v8);

    a2 = v29;
  }

  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_100343290);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v22 = 136315138;
    v24 = Array.description.getter();
    v26 = sub_100017494(v24, v25, &v30);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "New activeSceneIDs: %s", v22, 0xCu);
    sub_10000903C(v23);
  }

  v27 = *(a2 + 16);

  sub_1001C12F0(v6);
}

void sub_1000EA2A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t sub_1000EA348(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1000EB958;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307100;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000EA5F4(void *a1)
{
  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343290);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    [v3 orientation];
    v8 = BSInterfaceOrientationDescription();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100017494(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Device orientation updated: %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v13 = [v3 orientation];
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v13;

  return static Published.subscript.setter();
}

uint64_t sub_1000EA7D8()
{
  v1 = v0;
  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343290);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  [*(v1 + 24) invalidate];
  [*(v1 + 16) invalidate];
  v6 = *(*(v1 + 32) + 16);

  sub_1001C12F0(_swiftEmptyArrayStorage);

  v7 = *(v1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();

  v8 = *(v1 + 32);

  return v1;
}

uint64_t sub_1000EA96C()
{
  sub_1000EA7D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EA9C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000EAA44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000EAAB8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100014BBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000EAB34(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000EAB34(uint64_t *a1)
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
        sub_100003118(0, &qword_100343488, FBSDisplayLayoutElement_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1000EAD40(v8, v9, a1, v4);
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
    sub_1000EAC48(0, v2, 1, a1);
  }
}

void sub_1000EAC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 level];
      v13 = [v11 level];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
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

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000EAD40(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001282A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1000EB3A8((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001282A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_100128218(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 level];
      v104 = [v14 level];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 level];
        v7 = [v18 level];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1000AF9AC((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1000EB3A8((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_100128218(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 level];
    v41 = [v39 level];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_1000EB3A8(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 level];
          v35 = [v33 level];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 level];
          v20 = [v18 level];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void *sub_1000EB68C(uint64_t a1)
{
  v2 = v1;
  v1[3] = [objc_allocWithZone(FBSOrientationObserver) init];
  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100343290);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Init", v7, 2u);
  }

  v2[4] = a1;
  v8 = objc_opt_self();

  v9 = [v8 configurationForDefaultMainDisplayMonitor];
  [v9 setNeedsUserInteractivePriority:1];
  v19 = sub_1000EB948;
  v20 = a1;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000EA2A8;
  v18 = &unk_100307088;
  v10 = _Block_copy(&v15);

  [v9 setTransitionHandler:v10];
  _Block_release(v10);
  v2[2] = [objc_opt_self() monitorWithConfiguration:v9];
  v11 = v2[3];
  v19 = sub_1000EB950;
  v20 = a1;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100002B88;
  v18 = &unk_1003070B0;
  v12 = _Block_copy(&v15);

  v13 = v11;

  [v13 setHandler:v12];
  _Block_release(v12);

  return v2;
}

uint64_t type metadata accessor for NearbySharingInteractionDisplayContext()
{
  result = qword_1003434F8;
  if (!qword_1003434F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EB9F4()
{
  sub_1000EBA78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EBA78()
{
  if (!qword_100343508)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100343508);
    }
  }
}

uint64_t sub_1000EBAC8(uint64_t a1, int a2)
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

uint64_t sub_1000EBB10(uint64_t result, int a2, int a3)
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

uint64_t sub_1000EBB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100035D04(&qword_100343598, &qword_100279368);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000ECA20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000EBCF4(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100343568, &qword_100279358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000EC5C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v13[7] = 0;
  sub_100035D04(&qword_100343548, &qword_100279350);
  sub_1000EC72C(&qword_100343570, sub_1000EC7A4);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for NearbySharingInteractionDisplayContext() + 20);
    v13[6] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    sub_1000EC7F8(&qword_100343580);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000EBEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100035D04(&qword_100343538, &qword_100279348);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v30);
  v9 = &v22 - v8;
  v10 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000EC5C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v25 = a1;
  v15 = v13;
  v17 = v28;
  v16 = v29;
  sub_100035D04(&qword_100343548, &qword_100279350);
  v32 = 0;
  sub_1000EC72C(&qword_100343550, sub_1000EC618);
  v18 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v15;
  v24 = v33;
  *v15 = v33;
  v31 = 1;
  sub_1000EC7F8(&qword_100343560);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v9, v18);
  v19 = *(v10 + 20);
  v20 = v23;
  (*(v26 + 32))(&v23[v19], v6, v16);
  sub_1000EC66C(v20, v27);
  sub_10000903C(v25);
  return sub_1000EC6D0(v20);
}

uint64_t sub_1000EC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_1000EC324(uint64_t a1)
{
  v2 = sub_1000ECA20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC360(uint64_t a1)
{
  v2 = sub_1000ECA20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EC39C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000EC83C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1000EC3EC()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x53746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1000EC434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53746E65746E6F63 && a2 == 0xEC00000073627574;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010029F840 == a2)
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

uint64_t sub_1000EC51C(uint64_t a1)
{
  v2 = sub_1000EC5C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC558(uint64_t a1)
{
  v2 = sub_1000EC5C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000EC5C4()
{
  result = qword_100343540;
  if (!qword_100343540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343540);
  }

  return result;
}

unint64_t sub_1000EC618()
{
  result = qword_100343558;
  if (!qword_100343558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343558);
  }

  return result;
}

uint64_t sub_1000EC66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EC6D0(uint64_t a1)
{
  v2 = type metadata accessor for NearbySharingInteractionDisplayContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EC72C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100343548, &qword_100279350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EC7A4()
{
  result = qword_100343578;
  if (!qword_100343578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343578);
  }

  return result;
}

uint64_t sub_1000EC7F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EC83C(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_100343588, &qword_100279360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000ECA20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000903C(a1);
  return v8;
}

unint64_t sub_1000ECA20()
{
  result = qword_100343590;
  if (!qword_100343590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343590);
  }

  return result;
}

unint64_t sub_1000ECA98()
{
  result = qword_1003435A0;
  if (!qword_1003435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435A0);
  }

  return result;
}

unint64_t sub_1000ECAF0()
{
  result = qword_1003435A8;
  if (!qword_1003435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435A8);
  }

  return result;
}

unint64_t sub_1000ECB48()
{
  result = qword_1003435B0;
  if (!qword_1003435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435B0);
  }

  return result;
}

unint64_t sub_1000ECBA0()
{
  result = qword_1003435B8;
  if (!qword_1003435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435B8);
  }

  return result;
}

unint64_t sub_1000ECBF8()
{
  result = qword_1003435C0;
  if (!qword_1003435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435C0);
  }

  return result;
}

unint64_t sub_1000ECC50()
{
  result = qword_1003435C8;
  if (!qword_1003435C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435C8);
  }

  return result;
}

uint64_t sub_1000ECCAC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003435D0);
  sub_100003078(v0, qword_1003435D0);
  return Logger.init(subsystem:category:)();
}

char *sub_1000ECD2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR___Application_isActive] = 0;
  *&v0[OBJC_IVAR___Application_handoffFeature] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = sub_1001CBDD8(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = &v0[OBJC_IVAR___Application_tasks];
  *v11 = 0;
  *(v11 + 1) = v10;
  *&v0[OBJC_IVAR___Application_xpcServer] = 0;
  v12 = OBJC_IVAR___Application_handoffEnabledSettingManager;
  *&v1[v12] = [objc_allocWithZone(type metadata accessor for HandoffEnabledSettingManager()) init];
  *&v1[OBJC_IVAR___Application_handoffEnabledListenerTask] = 0;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_1003435D0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Application init", v16, 2u);
  }

  v17 = type metadata accessor for Application();
  v33.receiver = v1;
  v33.super_class = v17;
  v18 = objc_msgSendSuper2(&v33, "init");
  v19 = qword_1003391E8;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_10038B5B8;
  v22 = objc_allocWithZone(type metadata accessor for HandoffFeature());
  v23 = sub_100200E6C(v21);
  v24 = *&v20[OBJC_IVAR___Application_handoffFeature];
  *&v20[OBJC_IVAR___Application_handoffFeature] = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  aBlock[4] = sub_1000EF160;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307408;
  v26 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v30 + 8))(v5, v2);
  (*(v28 + 8))(v9, v29);

  sub_1000ED1C0();

  return v20;
}

void sub_1000ED1C0()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_1003436B8, &qword_1002795C8);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v37 = &v37 - v4;
  v5 = sub_100035D04(&unk_1003436C0, qword_1002795D0);
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v38 = &v37 - v7;
  v43 = sub_100035D04(&qword_10033F580, &qword_1002761D8);
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v43);
  v11 = &v37 - v10;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_1003435D0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v44 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v44);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_10000903C(v16);
  }

  sub_1000EED1C();
  sub_1000EE0DC();
  v17 = *(v1 + OBJC_IVAR___Application_handoffEnabledSettingManager);
  v18 = OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod;
  v19 = *(v17 + OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod);

  v44 = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v20 = Publisher.eraseToAnyPublisher()();

  v44 = v20;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  Publisher.dropFirst(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_1003436F0, &qword_10033F580, &qword_1002761D8);
  v21 = v43;
  v22 = Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v11, v21);
  v23 = (v1 + OBJC_IVAR___Application_tasks);
  os_unfair_lock_lock((v1 + OBJC_IVAR___Application_tasks));

  sub_10006421C(&v44, v22);

  os_unfair_lock_unlock(v23);

  sub_1000EE644(*(*(v17 + v18) + 24));
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v24 = *(qword_10038B0B8 + 1064);
  v25 = *(v24 + *((swift_isaMask & *v24) + 0x70));
  if (v25)
  {
    v26 = (v24 + *((swift_isaMask & *v24) + 0x68));
    v27 = *v26;
    v28 = v26[1];
    v29 = v24;
    v30 = v25;
    v31 = String._bridgeToObjectiveC()();
    [v30 setBool:0 forKey:v31];
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  if (qword_10038B240)
  {
    swift_getKeyPath();
    v32 = v37;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000E244(&qword_1003436F8, &qword_1003436B8, &qword_1002795C8);
    v33 = v38;
    v34 = v40;
    Publisher.filter(_:)();
    (*(v39 + 8))(v32, v34);
    sub_10000E244(&unk_100343700, &unk_1003436C0, qword_1002795D0);
    v35 = v42;
    v36 = Publisher<>.sink(receiveValue:)();
    (*(v41 + 8))(v33, v35);
    os_unfair_lock_lock(v23);

    sub_10006421C(&v44, v36);

    os_unfair_lock_unlock(v23);
  }
}

void sub_1000ED918(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000EE644(v1);
  }
}

void sub_1000ED974()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 1064);
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = (v0 + *((swift_isaMask & *v0) + 0x68));
    v3 = *v2;
    v4 = v2[1];
    v5 = v0;
    v6 = v1;
    v7 = String._bridgeToObjectiveC()();
    [v6 setBool:0 forKey:v7];
  }

  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_1003435D0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "### forceKillProximitycontrold set to true, exiting...", v11, 2u);
  }

  exit(0);
}

void sub_1000EDB24()
{
  v1 = v0;
  v2 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR___Application_isActive) = 1;
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.begin.getter();
  if (qword_100338F28 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v10 + 8))(v13, v9);
  v14 = *(v1 + OBJC_IVAR___Application_handoffFeature);
  if (v14)
  {
    swift_allocObject();
    v15 = v3;
    swift_unknownObjectWeakInit();
    v16 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v29 = v14;
    v19 = Future.init(_:)();
    v20 = type metadata accessor for Logger();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v30 = v19;
    sub_1000EF05C(v8, v6);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_10007E4B8(v6, v22 + v21);
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0);
    v23 = Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v8, &unk_10033D8B0, &qword_100275520);

    v24 = (v1 + OBJC_IVAR___Application_tasks);
    os_unfair_lock_lock(v24);

    sub_10006421C(&v30, v23);

    os_unfair_lock_unlock(v24);
  }

  else
  {
    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003078(v25, qword_1003435D0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "### No handoffFeature??", v28, 2u);
    }
  }
}

void sub_1000EDFF4()
{
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003435D0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Activated", v2, 2u);
  }
}

void sub_1000EE0DC()
{
  v1 = v0;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003435D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000013, 0x800000010029F930, v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B5B8;
  v8 = objc_allocWithZone(type metadata accessor for XPCServer());
  v9 = sub_100101BB4(v7);
  swift_unknownObjectWeakAssign();
  v10 = &v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler];
  v11 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler];
  v12 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler + 8];
  *v10 = sub_1000EE3B4;
  v10[1] = 0;
  sub_10002689C(v11);
  v13 = &v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler];
  v14 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler];
  v15 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler + 8];
  *v13 = sub_1000EE3D4;
  v13[1] = 0;
  sub_10002689C(v14);
  v19[4] = sub_1000EE3F4;
  v19[5] = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100124498;
  v19[3] = &unk_100307340;
  v16 = _Block_copy(v19);
  [v9 activateWithCompletion:v16];
  _Block_release(v16);
  v17 = *(v1 + OBJC_IVAR___Application_xpcServer);
  *(v1 + OBJC_IVAR___Application_xpcServer) = v9;
  v18 = v9;

  if (qword_1003391C0 != -1)
  {
    swift_once();
  }
}

void sub_1000EE3F4(uint64_t a1)
{
  if (!a1)
  {
    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_1003435D0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "XPCServer activated", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_1003435D0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "### XPCServer activation failed: %@", v3, 0xCu);
    sub_1000097E8(v4, &qword_100339940, &unk_100272C50);

LABEL_10:

    return;
  }
}

void sub_1000EE644(char a1)
{
  v2 = v1;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003435D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD00000000000002DLL, 0x800000010029F900, &v21);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: enabled=%{BOOL}d", v7, 0x12u);
    sub_10000903C(v8);
  }

  if (a1)
  {
    if ((*(v1 + OBJC_IVAR___Application_isActive) & 1) == 0)
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Application activating...", v11, 2u);
      }

      sub_1000EDB24();
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "State does not allow Handoff feature.", v14, 2u);
    }

    v15 = OBJC_IVAR___Application_isActive;
    if (*(v1 + OBJC_IVAR___Application_isActive) == 1)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Application deactivating...", v18, 2u);
      }

      *(v2 + v15) = 0;
      v19 = *(v2 + OBJC_IVAR___Application_handoffFeature);
      if (v19)
      {
        v20 = v19;
        sub_100201D80();
      }
    }
  }
}

id sub_1000EE990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000EED1C()
{
  if (_set_user_dir_suffix())
  {
    v0 = NSTemporaryDirectory();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;

    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_1003435D0);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_100017494(v1, v3, &v13);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Successfully set user directory suffix for tmp folder: %s", v6, 0xCu);
      sub_10000903C(v7);

LABEL_10:

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_1003435D0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "### Failed to set user directory suffix for tmp folder", v11, 2u);
      goto LABEL_10;
    }
  }

LABEL_12:
}

void sub_1000EEF5C(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003435D0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000EF05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF0CC(uint64_t *a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1001479CC(a1, v4, v5, v6);
}

void sub_1000EF198(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_10013FF24();
  if (!v3)
  {
    v10 = v8;
    v11 = v9;
    v12 = [a1 userInfo];
    v13 = &selRef_requestIdentifier;
    if (!v12)
    {
      sub_10024D824(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v13 = &selRef_requestIdentifier;

      [a1 setUserInfo:isa];
      v12 = isa;
    }

    v15 = [a1 userInfo];
    if (v15)
    {
      v16 = v13;
      v17 = v15;
      v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      (*(a3 + 24))(a2, a3);
      AnyHashable.init<A>(_:)();
      v23 = &type metadata for Data;
      *&v22 = v10;
      *(&v22 + 1) = v11;
      sub_1000516B4(&v22, v21);
      sub_10006DA04(v10, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v18;
      sub_10004D368(v21, v24, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v24);
      if (v25)
      {
        v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v20.super.isa = 0;
      }

      [a1 v16[6]];
      sub_100010708(v10, v11);
    }

    else
    {
      [a1 v13[6]];
      sub_100010708(v10, v11);
    }
  }
}

uint64_t sub_1000EF418(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000EFB30(a1);
  (*(*(*(v2 + qword_10038B108) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1000EF498()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343730);
  sub_100003078(v0, qword_100343730);
  return Logger.init(subsystem:category:)();
}

id sub_1000EF528()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  if (qword_100338F80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343730);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD000000000000018, 0x800000010029F990, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v8 = *(v2 + qword_10038B108);
  v9 = *(v2 + qword_10038B108 + 8);
  v10 = type metadata accessor for LockscreenViewableUIHostingController();
  v17.receiver = v1;
  v17.super_class = v10;
  result = objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v12 = (v1 + *((swift_isaMask & *v1) + qword_10038B108 + 16));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    v15 = sub_10009D4E0(*v12);
    v13(v15);
    return sub_10002689C(v13);
  }

  return result;
}

void sub_1000EF740(void *a1)
{
  v1 = a1;
  sub_1000EF528();
}

void *sub_1000EF7CC(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10038B108);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v15 - v7;
  v10 = (v2 + *(v9 + 16));
  *v10 = 0;
  v10[1] = 0;
  (*(v5 + 16))(v8);
  v11 = UIHostingController.init(coder:rootView:)();
  v12 = *(v5 + 8);
  v13 = v11;
  v12(a2, v4);
  if (v11)
  {
  }

  return v11;
}

id sub_1000EF914(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = (v1 + *(v3 + qword_10038B108 + 16));
  *v4 = 0;
  v4[1] = 0;
  v5 = *(v3 + qword_10038B108);
  v6 = *(v3 + qword_10038B108 + 8);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LockscreenViewableUIHostingController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1000EF9FC()
{
  v1 = (v0 + *((swift_isaMask & *v0) + qword_10038B108 + 16));
  v2 = v1[1];
  return sub_10002689C(*v1);
}

id sub_1000EFA4C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_10038B108);
  v3 = *(v1 + qword_10038B108 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LockscreenViewableUIHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000EFAC8(void *a1)
{
  v1 = (a1 + *((swift_isaMask & *a1) + qword_10038B108 + 16));
  v2 = v1[1];
  return sub_10002689C(*v1);
}

uint64_t sub_1000EFB30(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_10038B108) - 8) + 64);
  __chkstk_darwin(a1);
  v4 = &v9 - v3;
  v6 = (v1 + *(v5 + 16));
  *v6 = 0;
  v6[1] = 0;
  (*(v7 + 16))(v4);
  return UIHostingController.init(rootView:)();
}

unint64_t sub_1000EFC28()
{
  v1 = *v0;
  v2 = 0x44497472656C61;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x736E6F69746361;
  }

  v4 = 0x6C65694674786574;
  if (v1 != 3)
  {
    v4 = 0x74756F656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EFD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F122C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EFD44(uint64_t a1)
{
  v2 = sub_1000F00B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EFD80(uint64_t a1)
{
  v2 = sub_1000F00B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PCUserAlertPresentationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_1003437C8, &unk_100279710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000F00B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = 0;
  type metadata accessor for UUID();
  sub_1000F08CC(&qword_1003437D8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for PCUserAlertPresentationContext();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v32 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v31 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v30 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v29 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + v11[9]);
    v28 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v3 + v11[10]);
    v26[15] = 6;
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_1000F0680(&qword_1003437E0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000F00B8()
{
  result = qword_1003437D0;
  if (!qword_1003437D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003437D0);
  }

  return result;
}

uint64_t type metadata accessor for PCUserAlertPresentationContext()
{
  result = qword_1003438E8;
  if (!qword_1003438E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PCUserAlertPresentationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for UUID();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100035D04(&qword_1003437E8, &qword_100279720);
  v34 = *(v38 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v10 = type metadata accessor for PCUserAlertPresentationContext();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000F00B8();
  v37 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v15 = v13;
  v17 = v34;
  v16 = v35;
  v46 = 0;
  sub_1000F08CC(&qword_1003437F0, &type metadata accessor for UUID);
  v18 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v15, v18, v4);
  v45 = 1;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v4;
  v20 = (v15 + v10[5]);
  *v20 = v19;
  v20[1] = v21;
  v44 = 2;
  v36 = 0;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = (v15 + v10[6]);
  *v23 = v22;
  v23[1] = v24;
  v43 = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = (v15 + v10[7]);
  *v26 = v25;
  v26[1] = v27;
  v42 = 4;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v15 + v10[8];
  *v29 = v28;
  *(v29 + 8) = v30 & 1;
  v41 = 5;
  *(v15 + v10[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  v40 = 6;
  sub_1000F0680(&qword_1003437F8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v37, v38);
  *(v15 + v10[10]) = v39;
  sub_1000F06EC(v15, v33);
  sub_10000903C(a1);
  return sub_1000F0750(v15);
}

uint64_t sub_1000F0680(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_1003397D0, &qword_1002729A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F06EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCUserAlertPresentationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0750(uint64_t a1)
{
  v2 = type metadata accessor for PCUserAlertPresentationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F07AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for PCUserAlertResult();
  v9 = (a5 + *(result + 28));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1000F0848(uint64_t a1)
{
  *(a1 + 8) = sub_1000F08CC(&qword_100343800, type metadata accessor for PCUserAlertPresentationContext);
  result = sub_1000F08CC(qword_100343808, type metadata accessor for PCUserAlertPresentationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F08CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F0944()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000F0980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000F09A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F09EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000F0A80()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000F0BB0(319, &qword_1003438F8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000F0BB0(319, &qword_100343900, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000F0BB0(319, &unk_100343908, &type metadata for String, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F0BB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000F0C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1000F0BB0(319, &qword_1003438F8, &type metadata for String, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F0CB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1000F0DF8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDevice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDevice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F1128()
{
  result = qword_1003439D0;
  if (!qword_1003439D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003439D0);
  }

  return result;
}

unint64_t sub_1000F1180()
{
  result = qword_1003439D8;
  if (!qword_1003439D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003439D8);
  }

  return result;
}

unint64_t sub_1000F11D8()
{
  result = qword_1003439E0;
  if (!qword_1003439E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003439E0);
  }

  return result;
}

uint64_t sub_1000F122C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497472656C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65694674786574 && a2 == 0xEF74706D6F725064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010029F9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000F1480()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B118);
  sub_100003078(v0, qword_10038B118);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F1504()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003439E8);
  v1 = sub_100003078(v0, qword_1003439E8);
  if (qword_100338F88 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B118);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000F15CC()
{
  type metadata accessor for MediaRemoteProxy();
  v0 = swift_allocObject();
  result = sub_1000F1854();
  qword_10038B130 = v0;
  return result;
}

uint64_t sub_1000F1608()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 40);
    sub_100035D04(&qword_100343BF0, &qword_100279A98);
    sub_10000E244(&qword_100343C90, &qword_100343BF0, &qword_100279A98);
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1000F16CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 64);
    sub_100035D04(&qword_100343BF8, &qword_100279AA0);
    sub_10000E244(&qword_100343C88, &qword_100343BF8, &qword_100279AA0);
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1000F1790()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v5 = *(v0 + 72);
    sub_100035D04(&qword_100343C00, &qword_100279AA8);
    sub_10000E244(&qword_100343C80, &qword_100343C00, &qword_100279AA8);
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1000F1854()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100343BC8, &qword_100279A70);
  v90 = *(v2 - 8);
  v91 = v2;
  v3 = *(v90 + 64);
  __chkstk_darwin(v2);
  v89 = &v72 - v4;
  v83 = sub_100035D04(&qword_100343BD0, &qword_100279A78);
  v84 = *(v83 - 8);
  v5 = *(v84 + 64);
  __chkstk_darwin(v83);
  v82 = &v72 - v6;
  v7 = sub_100035D04(&qword_100343BD8, &qword_100279A80);
  v87 = *(v7 - 8);
  v88 = v7;
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v86 = &v72 - v9;
  v10 = sub_100035D04(&qword_100343BE0, &qword_100279A88);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  __chkstk_darwin(v10);
  v92 = &v72 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v96 = v16;
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_100035D04(&qword_100343BE8, &qword_100279A90);
  v80 = *(v81 - 8);
  v18 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v72 - v19;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v20 = sub_100035D04(&qword_100343BF0, &qword_100279A98);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 40) = PassthroughSubject.init()();
  *(v0 + 56) = 0;
  swift_unknownObjectWeakInit();
  v23 = sub_100035D04(&qword_100343BF8, &qword_100279AA0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v0 + 64) = PassthroughSubject.init()();
  v26 = sub_100035D04(&qword_100343C00, &qword_100279AA8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v85 = v26;
  swift_allocObject();
  *(v0 + 72) = PassthroughSubject.init()();
  v29 = [objc_allocWithZone(MRProximityProvider) init];
  *(v0 + 88) = &_swiftEmptySetSingleton;
  *(v0 + 80) = v29;
  *(v0 + 96) = 0;
  v98 = v0 + 88;
  *(v0 + 104) = 0;
  v30 = qword_1003391E8;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setDispatchQueue:qword_10038B5B8];

  v32 = *(v1 + 80);
  v33 = swift_allocObject();
  swift_weakInit();
  v103 = sub_10001C2E0;
  v104 = v33;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v101 = sub_10001C258;
  v102 = &unk_100307680;
  v34 = _Block_copy(&aBlock);
  v35 = v32;

  [v35 setDisplayContextHandler:v34];
  _Block_release(v34);

  v36 = *(v1 + 80);
  v37 = swift_allocObject();
  swift_weakInit();
  v103 = sub_1000F3860;
  v104 = v37;
  aBlock = _NSConcreteStackBlock;
  v100 = 1107296256;
  v101 = sub_10001C258;
  v102 = &unk_1003076A8;
  v38 = _Block_copy(&aBlock);
  v39 = v36;

  [v39 setProgressEventHandler:v38];
  _Block_release(v38);

  v40 = sub_1000F1608();
  v97 = v1;
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v41 = sub_100003078(v13, qword_1003439E8);
  v78 = v41;
  v42 = static os_log_type_t.info.getter();
  aBlock = v40;
  v77 = *(v14 + 16);
  v73 = v17;
  v77(v17, v41, v13);
  v72 = v40;
  v43 = *(v14 + 80);
  v74 = v13;
  v44 = &v96[(v43 + 64) & ~v43];
  v76 = (v43 + 64) & ~v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0xD000000000000014;
  *(v45 + 40) = 0x800000010029FBF0;
  *(v45 + 48) = 0;
  *(v45 + 56) = 0xE000000000000000;
  v75 = *(v14 + 32);
  v75(v45 + ((v43 + 64) & ~v43), v17, v13);
  v44[v45] = v42;
  sub_100035D04(&qword_100343C08, &qword_100279AB0);
  sub_100003118(0, &unk_10034B580, PCDisplayContext_ptr);
  v96 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_100343C10, &qword_100343C08, &qword_100279AB0);
  v46 = v79;
  Publisher.map<A>(_:)();

  v95 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_100343C18, &qword_100343BE8, &qword_100279A90);
  v47 = v81;
  v48 = Publisher.eraseToAnyPublisher()();

  (*(v80 + 8))(v46, v47);
  aBlock = v48;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v49 = sub_1000F16CC();
  v50 = static os_log_type_t.info.getter();
  aBlock = v49;
  v51 = v73;
  v52 = v74;
  v77(v73, v78, v74);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = 0xD000000000000013;
  *(v53 + 40) = 0x800000010029FC10;
  *(v53 + 48) = 0;
  *(v53 + 56) = 0xE000000000000000;
  v75(v53 + v76, v51, v52);
  v44[v53] = v50;
  sub_100035D04(&qword_100343C20, &qword_100279AB8);
  sub_100003118(0, &qword_100343C28, PCProgressEvent_ptr);
  v81 = sub_10000E244(&qword_100343C30, &qword_100343C20, &qword_100279AB8);
  v54 = v82;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100343C38, &qword_100343BD0, &qword_100279A78);
  v55 = v83;
  v56 = Publisher.eraseToAnyPublisher()();

  v84 = *(v84 + 8);
  (v84)(v54, v55);
  v57 = swift_allocObject();
  swift_weakInit();
  aBlock = v56;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1000F395C;
  *(v58 + 24) = v57;

  Publisher.map<A>(_:)();

  v59 = Publisher.eraseToAnyPublisher()();

  (v84)(v54, v55);
  aBlock = v59;
  sub_100035D04(&qword_100343C40, &qword_100279AC0);
  v60 = v86;
  Publisher.map<A>(_:)();

  v61 = swift_allocObject();
  v62 = v97;
  swift_weakInit();

  v63 = swift_allocObject();
  *(v63 + 16) = sub_1000F39BC;
  *(v63 + 24) = v61;
  sub_10000E244(&qword_100343C48, &qword_100343BD8, &qword_100279A80);

  v65 = v88;
  v64 = v89;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100343C50, &qword_100343BC8, &qword_100279A70);
  v66 = v91;
  v67 = Publisher.eraseToAnyPublisher()();

  (*(v90 + 8))(v64, v66);
  (*(v87 + 8))(v60, v65);
  aBlock = v67;
  sub_100035D04(&qword_100343C58, &qword_100279AC8);
  sub_100035D04(&qword_100343C60, &unk_100279AD0);
  sub_10000E244(&qword_100343C68, &qword_100343C58, &qword_100279AC8);
  v68 = v92;
  Publisher.map<A>(_:)();

  v69 = *(v62 + 72);
  sub_10000E244(&qword_100343C70, &qword_100343BE0, &qword_100279A88);
  sub_10000E244(&qword_100343C78, &qword_100343C00, &qword_100279AA8);
  v70 = v94;
  Publisher.subscribe<A>(_:)();
  (*(v93 + 8))(v68, v70);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v62;
}

uint64_t sub_1000F26D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 64);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000F2750(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F2998(v1);
  }

  return result;
}

void sub_1000F27B0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_100042544(*a1);
  v4 = [v3 mediaRemoteID];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  a2[1] = v5;
  a2[2] = v7;
}

uint64_t sub_1000F2818(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F3574(v1);
  }

  return result;
}

uint64_t sub_1000F2878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = 0uLL;
  if (*a1 > 1)
  {
    if (v3 == 3)
    {
      v8 = 0;
      v9 = 0;
      v7 = 2;
      goto LABEL_12;
    }

    if (v3 == 2)
    {
      v8 = 0;
      v9 = 0;
      v7 = 1;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
    sub_10001618C();
    v10 = swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 11;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
LABEL_8:
    v10 = *a1;
LABEL_10:
    sub_1000E6048(v3);
    sub_10014FEEC(v10, &v14);
    v6 = v14;
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v12 = v18;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_12:
  v12 = 0uLL;
LABEL_13:
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v12;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
}

void sub_1000F2998(void *a1)
{
  v2 = [a1 eventType];
  if (v2 == 2)
  {
LABEL_19:
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003078(v23, qword_1003439E8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Handoff completed, informing coordinator", v26, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000AD598();
      swift_unknownObjectRelease();
    }

    return;
  }

  if (v2 == 1)
  {
    return;
  }

  if (!v2)
  {
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_1003439E8);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      v9 = [v4 error];
      if (v9)
      {
        v10 = v9;
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = v12;
      }

      else
      {
        v13 = 0xE100000000000000;
        v11 = 63;
      }

      v22 = sub_100017494(v11, v13, &v28);

      *(v7 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Progress event with error: %s", v7, 0xCu);
      sub_10000903C(v8);
    }

    goto LABEL_19;
  }

  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_1003439E8);
  v15 = a1;
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    [v15 eventType];
    type metadata accessor for PCProgressEventType(0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100017494(v19, v20, &v28);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, oslog, v16, "### Unsupported progress event type %s", v17, 0xCu);
    sub_10000903C(v18);
  }

  else
  {
  }
}

uint64_t sub_1000F2DA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  sub_10007763C(v0 + 48);
  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  return v0;
}

uint64_t sub_1000F2E08()
{
  sub_1000F2DA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2E3C(uint64_t a1)
{
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003439E8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1000092A0();
    v9 = sub_100017494(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tracking %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate + 8) = &off_100307648;

  return swift_unknownObjectWeakAssign();
}

void sub_1000F2FCC(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, swift_unknownObjectRelease(), v4 == v1))
  {
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_1003439E8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_1000092A0();
      v15 = sub_100017494(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Untracking %s", v11, 0xCu);
      sub_10000903C(v12);
    }

    *(v2 + 8) = 0;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_1003439E8);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "### UntrackIfNeeded: device.proximityDelegate != self", v7, 2u);
    }
  }
}

void sub_1000F3250(uint64_t a1, unint64_t a2)
{
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_1003439E8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD00000000000002CLL, 0x800000010029FB80, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100017494(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: mediaRouteID=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 96))
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "### Migrate in progress", v11, 2u);
    }

    sub_1000F380C();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  else
  {
    v13 = objc_allocWithZone(PCProximityEvent);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithType:1 mediaRemoteID:v14 info:0];

    [v15 setExpectsDisplayContext:1];
    sub_10001BD68(v15);
  }
}

uint64_t sub_1000F34F8@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v8[0] = *a1;
  v4 = v8[0];
  v8[1] = v5;
  v8[2] = v6;
  a2(v8);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  sub_1000E6048(v4);
}

void sub_1000F3574(uint64_t a1)
{
  v2 = v1;
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003439E8);
  sub_1000E6048(a1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000E605C(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000024, 0x800000010029FB50, &v14);
    *(v7 + 12) = 2080;
    v8 = sub_100042408(a1);
    v10 = sub_100017494(v8, v9, &v14);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: event=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v1 + 96) = (a1 - 1) <= 1;

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = *(v2 + 96);

    _os_log_impl(&_mh_execute_header, oslog, v11, "migrateInProgress updated to '%{BOOL}d'", v12, 8u);
  }

  else
  {
  }
}

unint64_t sub_1000F380C()
{
  result = qword_100343BC0;
  if (!qword_100343BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343BC0);
  }

  return result;
}

id sub_1000F3898@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for Logger() - 8);
  v10 = *(v3 + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + *(v7 + 64));
  v8 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  *a3 = v8;

  return v8;
}

id sub_1000F3964@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8 = *a1;
  v7 = v8;
  v4(&v8);
  *a2 = v7;

  return v7;
}

uint64_t sub_1000F39D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_100035D04(&qword_10033E818, qword_100274990);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100035D04(&qword_10033E818, qword_100274990);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000F3A68()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343C98);
  sub_100003078(v0, qword_100343C98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F3AE8()
{
  v1 = v0;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v0 + 16) = v2;
  if (qword_100338FA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343C98);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Init", v6, 2u);
  }

  v7 = [objc_opt_self() currentDevice];
  [v7 setBatteryMonitoringEnabled:1];

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v1 selector:"batteryStateDidChange" name:UIDeviceBatteryStateDidChangeNotification object:0];

  sub_1000F3DA0();
  return v1;
}

uint64_t sub_1000F3C84()
{
  v1 = v0;
  if (qword_100338FA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343C98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  return v1;
}

uint64_t sub_1000F3D6C()
{
  sub_1000F3C84();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F3DA0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1000F427C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307788;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_1000F4028(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 batteryState];

  v4 = v3 != 1;
  v5 = *(a1 + 16);
  *(v5 + 24) = v4;

  sub_10005E50C();
  v12 = *(v5 + 24);
  CurrentValueSubject.send(_:)();

  if (qword_100338FA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100343C98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000017, 0x800000010029FC80, &v11);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(*(a1 + 16) + 24);

    _os_log_impl(&_mh_execute_header, v7, v8, "%s: isCharging=%{BOOL}d", v9, 0x12u);
    sub_10000903C(v10);
  }

  else
  {
  }
}

uint64_t Publisher.conditionalDebounce<A>(for:tolerance:scheduler:options:when:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v67 = a5;
  v65 = a4;
  v66 = a6;
  v64 = a3;
  v61 = a1;
  v62 = a2;
  v68 = a9;
  v55 = a8;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v72 = *(v13 - 8);
  v73 = v13;
  v63 = *(v72 + 64);
  v14 = __chkstk_darwin(v13);
  v71 = &v46 - v15;
  v69 = *(a8 - 8);
  v59 = *(v69 + 64);
  __chkstk_darwin(v14);
  v70 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v49 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v46 - v22;
  v51 = &v46 - v22;
  v48 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v46 - v26;
  v50 = &v46 - v26;
  v53 = a10;
  v52 = a7;
  swift_getAssociatedTypeWitness();
  v56 = type metadata accessor for AnyPublisher();
  v28 = type metadata accessor for Publishers.Map();
  v29 = *(v28 - 8);
  v57 = v28;
  v58 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v54 = &v46 - v31;
  (*(v24 + 16))(v27, v61, AssociatedTypeWitness);
  v32 = v19;
  v47 = v19;
  (*(v19 + 16))(v23, v62, v18);
  v33 = v69;
  v34 = v55;
  (*(v69 + 16))(v70, v64, v55);
  v35 = v72;
  (*(v72 + 16))(v71, v65, v73);
  v36 = (*(v24 + 80) + 64) & ~*(v24 + 80);
  v37 = (v25 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v20 + *(v33 + 80) + v37) & ~*(v33 + 80);
  v39 = (v59 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v52;
  *(v40 + 3) = v34;
  v41 = v60;
  *(v40 + 4) = v53;
  *(v40 + 5) = v41;
  v42 = v66;
  *(v40 + 6) = v67;
  *(v40 + 7) = v42;
  (*(v24 + 32))(&v40[v36], v50, v48);
  (*(v47 + 32))(&v40[v37], v51, v49);
  (*(v69 + 32))(&v40[v38], v70, v34);
  (*(v72 + 32))(&v40[v39], v71, v73);

  v43 = v54;
  Publisher.map<A>(_:)();

  v44 = v57;
  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v58 + 8))(v43, v44);
}

uint64_t sub_1000F48A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v33 = a4;
  v39 = a3;
  v40 = a2;
  v41 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Just();
  v38 = *(v17 - 8);
  v18 = *(v38 + 64);
  __chkstk_darwin(v17);
  v20 = &v30 - v19;
  WitnessTable = swift_getWitnessTable();
  v42 = v17;
  v43 = a9;
  v32 = a9;
  v44 = WitnessTable;
  v45 = a11;
  v34 = a11;
  v22 = type metadata accessor for Publishers.Delay();
  v31 = *(v22 - 8);
  v23 = *(v31 + 64);
  __chkstk_darwin(v22);
  v25 = &v30 - v24;
  v26 = v40(a1);
  (*(v13 + 16))(v16, a1, AssociatedTypeWitness);
  Just.init(_:)();
  v27 = (v38 + 8);
  if (v26)
  {
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    (*v27)(v20, v17);
    swift_getWitnessTable();
    v28 = Publisher.eraseToAnyPublisher()();
    result = (*(v31 + 8))(v25, v22);
  }

  else
  {
    v28 = Publisher.eraseToAnyPublisher()();
    result = (*v27)(v20, v17);
  }

  *v41 = v28;
  return result;
}

uint64_t sub_1000F4BB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v17 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v13 = *(*(v4 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v14 = *(type metadata accessor for Optional() - 8);
  return sub_1000F48A0(a1, *(v2 + 48), *(v2 + 56), v2 + v8, v2 + v11, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a2, v4, v6, v5);
}

uint64_t sub_1000F4DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10012B694();

  return sub_1000F4E30(a1, a2);
}

uint64_t sub_1000F4E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F4EA0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343D78);
  sub_100003078(v0, qword_100343D78);
  return Logger.init(subsystem:category:)();
}

BOOL sub_1000F50C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000F5EB8(v5, v7);
}

uint64_t sub_1000F5114()
{
  v1 = v0[3];
  sub_10002689C(v0[2]);
  v2 = v0[5];
  sub_10002689C(v0[4]);
  v3 = v0[6];

  return swift_deallocClassInstance();
}

void sub_1000F5180()
{
  type metadata accessor for WiFiMonitorModel();
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  type metadata accessor for WiFiMonitorState();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v6[0] = 0;
  v6[1] = 0;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 1;
  v2 = sub_100035D04(&qword_100344028, &qword_100279DA8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v1 + 48) = sub_100032500(v6, 0, 0, 0);
  type metadata accessor for WiFiMonitor();
  v5 = swift_allocObject();
  sub_1000F5260(v0, v1);
  sub_1000F54A8();
  qword_10038B138 = v5;
}

uint64_t sub_1000F5260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100343D78);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_1000F5358()
{
  v1 = v0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 24);

  return v1;
}

uint64_t sub_1000F5450()
{
  sub_1000F5358();

  return swift_deallocClassInstance();
}

void sub_1000F54A8()
{
  v1 = v0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 24);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = v7[2];
  v10 = v7[3];
  v7[2] = sub_1000F6534;
  v7[3] = v8;

  sub_10002689C(v9);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v7[4];
  v13 = v7[5];
  v7[4] = sub_1000F653C;
  v7[5] = v11;

  sub_10002689C(v12);

  v14 = [objc_allocWithZone(CUWiFiManager) init];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  [v14 setDispatchQueue:qword_10038B5B8];
  v23 = sub_1000F59D8;
  v24 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100018AB8;
  v22 = &unk_100307888;
  v15 = _Block_copy(&v19);
  [v14 setInvalidationHandler:v15];
  _Block_release(v15);
  v23 = sub_1000F6544;
  v24 = v1;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100018AB8;
  v22 = &unk_1003078B0;
  v16 = _Block_copy(&v19);

  [v14 setWifiStateChangedHandler:v16];
  _Block_release(v16);
  v23 = sub_1000F6548;
  v24 = v1;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100124498;
  v22 = &unk_1003078D8;
  v17 = _Block_copy(&v19);

  [v14 activateWithCompletion:v17];
  _Block_release(v17);
  v18 = *(v1 + 32);
  *(v1 + 32) = v14;
}

uint64_t sub_1000F58A0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F6330(v8);
    v6 = v8[1];
    v7 = v8[0];
    v3 = v9;

    v4 = v6;
    v5 = v7;
  }

  else
  {
    v3 = 0;
    v4 = xmmword_100271890;
    v5 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000F5934@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F6550(a1, a2, v12);
    v10 = v12[1];
    v11 = v12[0];
    v7 = v13;

    v8 = v10;
    v9 = v11;
  }

  else
  {
    v7 = 0;
    v8 = xmmword_100271890;
    v9 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  return result;
}

void sub_1000F59D8()
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100343D78);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### wifiManager invalidated", v2, 2u);
  }
}

void sub_1000F5AC0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_100343D78);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "### Activate wifiManager failed: %@", v3, 0xCu);
      sub_1000097E8(v4, &qword_100339940, &unk_100272C50);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100343D78);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Activated wifiManager.", v9, 2u);
    }

    sub_1000F5D30();
  }
}

uint64_t sub_1000F5D30()
{
  v1 = v0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000017, 0x800000010029FDE0, v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 24);
  sub_1000F6330(v10);
  v8 = *(v7 + 48);

  sub_1001C1780(v10);
}

BOOL sub_1000F5EB8(void *a1, void *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v3 != v4)
    {
      v6 = a1;
      v7 = a1[1];
      v8 = a2;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v8;
      v10 = v9;
      a1 = v6;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v11 = a1[4];
  v12 = a2[4];
  if (!v11)
  {
    return !v12;
  }

  return v12 && (a1[3] == a2[3] && v11 == v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

void sub_1000F5F84(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100343D78);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "### Error: %d", v8, 8u);
LABEL_6:

LABEL_7:

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_8;
  }

  if (!a1)
  {
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003078(v23, qword_100343D78);
    v6 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v24))
    {
      goto LABEL_7;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v6, v24, "### No wifiInfo", v25, 2u);
    goto LABEL_6;
  }

  v29 = 1852141679;
  v30 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_1000851E8(v28), (v16 & 1) == 0))
  {
    sub_1000516C4(v28);
    goto LABEL_15;
  }

  sub_10001766C(*(a1 + 56) + 32 * v15, &v29);
  sub_1000516C4(v28);
  if (!swift_dynamicCast())
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = v26;
LABEL_16:
  v29 = 0x7274536B7370;
  v30 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v17 = sub_1000851E8(v28), (v18 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v17, &v29);
    sub_1000516C4(v28);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v10 = v26;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v13 = v27;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1000516C4(v28);
    v10 = 0;
    v13 = 0;
  }

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v20 = sub_1000851E8(v28), (v21 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v20, &v29);
    sub_1000516C4(v28);
    v22 = swift_dynamicCast();
    v11 = 1684632435;
    v12 = 0xE400000000000000;
    if (!v22)
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1000516C4(v28);
    v11 = 0;
    v12 = 0;
  }

LABEL_8:
  *a3 = v9;
  a3[1] = v10;
  a3[2] = v13;
  a3[3] = v11;
  a3[4] = v12;
}

double sub_1000F6330@<D0>(uint64_t a1@<X8>)
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000022, 0x800000010029FE00, v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = WiFiCopyCurrentNetworkInfoEx();
  if (!v7 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (*&v11[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), (v8 = *&v11[0]) == 0))
  {
    v8 = 0;
  }

  sub_1000F5F84(v8, 0, v11);

  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

double sub_1000F6550@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100343D78);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *&v15[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD00000000000001ALL, 0x800000010029FE30, v15);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100017494(a1, a2, v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: ssid=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *&v15[0] = 1684632435;
  *(&v15[0] + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = WiFiCopyNetworkInfo();

  if (v12)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    *&v15[0] = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    v12 = *&v15[0];
    if (!*&v15[0])
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  sub_1000F5F84(v12, 0, v15);

  result = *v15;
  v14 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v14;
  *(a3 + 32) = v16;
  return result;
}

double sub_1000F6880@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000F6908(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[1];
  v6 = *a1;

  return static Published.subscript.setter();
}

uint64_t sub_1000F699C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100344040);
  sub_100003078(v0, qword_100344040);
  return Logger.init(subsystem:category:)();
}

void *sub_1000F6A1C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  type metadata accessor for HandoffDevice();
  type metadata accessor for UUID();
  sub_100018A70(&qword_100344208, type metadata accessor for HandoffDevice);
  KeyPath = swift_getKeyPath();
  v5 = sub_100035D04(&qword_100344210, &unk_10027EEB0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_10006CF14(KeyPath, 0);

  v2[15] = v8;
  if (qword_1003391E0 != -1)
  {
    swift_once();
  }

  v9 = qword_10038B5B0;
  v2[16] = qword_10038B5B0;
  v2[17] = &_swiftEmptySetSingleton;
  v2[2] = a1;
  v10 = v9;
  return v2;
}

uint64_t sub_1000F6B6C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034A450, &qword_100278A90);
  v81 = *(v2 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin(v2);
  v80 = &v60 - v4;
  v5 = sub_100035D04(&qword_100344218, &qword_10027A048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = sub_100035D04(&qword_100344220, &unk_10027A050);
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  __chkstk_darwin(v10);
  v77 = &v60 - v12;
  v13 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v70 = &v60 - v15;
  v16 = sub_100035D04(&qword_10033E6F0, &qword_10027A060);
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = *(v71 + 64);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = sub_100035D04(&qword_100344228, &unk_10027A068);
  v74 = *(v20 - 8);
  v75 = v20;
  v21 = *(v74 + 64);
  __chkstk_darwin(v20);
  v73 = &v60 - v22;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003078(v23, qword_100344040);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Activate", v26, 2u);
  }

  v27 = [objc_allocWithZone(SFProximityClient) init];
  v28 = *(v1 + 112);
  *(v1 + 112) = v27;
  v29 = v27;

  sub_1000FA160(v27);
  v76 = v1;
  v30 = *(v1 + 16);
  v84[0] = *(v30 + 32);
  v31 = sub_100035D04(&qword_100339828, &unk_100270300);
  v32 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
  v68 = v31;
  v67 = v32;
  v85 = Publisher.eraseToAnyPublisher()();
  __chkstk_darwin(v85);
  *(&v60 - 4) = type metadata accessor for HandoffDevice();
  *(&v60 - 3) = type metadata accessor for UUID();
  *(&v60 - 2) = sub_100018A70(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v69 = v30;
  v33 = v30 + qword_100346AF8;
  os_unfair_lock_lock((v30 + qword_100346AF8));
  v84[0] = *(v33 + 8);

  swift_getAtKeyPath();

  v34 = v84[5];
  os_unfair_lock_unlock(v33);

  v35 = *(v34 + 16);
  v82 = v6;
  v83 = v5;
  if (v35)
  {
    v36 = sub_100009194(v35, 0);
    v37 = sub_100009A04(v84, v36 + 4, v35, v34);
    sub_100004F98();
    if (v37 == v35)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_9:
  v65 = v2;
  v66 = v9;
  v84[0] = v36;
  v38 = sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_100035D04(&qword_10033BAA0, &unk_100274880);
  v39 = sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
  sub_10000E244(&qword_10033E750, &qword_10033BAA0, &unk_100274880);
  v40 = v19;
  v64 = v38;
  v63 = v39;
  Publisher.prepend<A>(_:)();

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v41 = qword_10038B5B8;
  v84[0] = qword_10038B5B8;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v42 - 8);
  v61 = *(v43 + 56);
  v62 = v43 + 56;
  v44 = v70;
  v61(v70, 1, 1, v42);
  v60 = sub_100035CB8();
  sub_10000E244(&qword_10033E758, &qword_10033E6F0, &qword_10027A060);
  sub_100018A70(&qword_10034B420, sub_100035CB8);
  v45 = v41;
  v46 = v72;
  v47 = v73;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v44, &qword_10034C680, &qword_100270390);
  (*(v71 + 8))(v40, v46);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100344230, &qword_100344228, &unk_10027A068);
  v48 = v75;
  Publisher<>.sink(receiveValue:)();

  (*(v74 + 8))(v47, v48);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v84[0] = *(v69 + 48);
  v84[0] = Publisher.eraseToAnyPublisher()();
  v85 = v45;
  v61(v44, 1, 1, v42);
  v49 = v77;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v44, &qword_10034C680, &qword_100270390);

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100344238, &qword_100344220, &unk_10027A050);
  v50 = v79;
  Publisher<>.sink(receiveValue:)();

  (*(v78 + 8))(v49, v50);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100339130 != -1)
  {
    swift_once();
  }

  v84[0] = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v51 = Publisher.eraseToAnyPublisher()();

  v84[0] = v51;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  v52 = v80;
  Publisher<>.removeDuplicates()();

  sub_10000E244(&qword_10034A4C0, &qword_10034A450, &qword_100278A90);
  v53 = v66;
  v54 = v65;
  Publisher.dropFirst(_:)();
  (*(v81 + 8))(v52, v54);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100344240, &qword_100344218, &qword_10027A048);
  v55 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v82 + 8))(v53, v55);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  v56 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1000F78D8(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1000F794C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344040);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "uwbRangingAvailable changed: %{BOOL}d", v5, 8u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000F8610();
  }

  return result;
}

void sub_1000F7A78(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 112);
    v7 = v6;

    if (v6)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1000FBAA8;
      *(v8 + 24) = v4;
      aBlock[4] = sub_1000FBAB4;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100124498;
      aBlock[3] = &unk_100307E10;
      v9 = _Block_copy(aBlock);

      [v7 activateWithCompletion:v9];
      _Block_release(v9);

      return;
    }
  }

  else
  {
  }
}

uint64_t sub_1000F7BE0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100344040);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Activate failed: %@", v7, 0xCu);
      sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100344040);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Activated", v14, 2u);
    }

    return (a2)(0, 0);
  }
}

uint64_t sub_1000F7E5C()
{
  v1 = v0;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344040);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_1000F7FB4();
  v6 = *(v1 + 16);

  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  sub_1000AEDE0(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));

  v10 = *(v1 + 120);

  v11 = *(v1 + 136);

  return v1;
}

uint64_t sub_1000F7F80()
{
  sub_1000F7E5C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F7FB4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100344040);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Invalidate", v13, 2u);
  }

  v14 = v1[14];
  if (v14)
  {
    [v14 invalidate];
    v15 = v1[14];
    v1[14] = 0;
  }

  v16 = v1[15];
  __chkstk_darwin(v14);
  *(&v30 - 4) = type metadata accessor for HandoffDevice();
  *(&v30 - 3) = type metadata accessor for UUID();
  *(&v30 - 2) = sub_100018A70(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v17 = v16 + qword_100346AF8;

  os_unfair_lock_lock(v17);
  aBlock[0] = *(v17 + 8);

  swift_getAtKeyPath();

  v18 = v34;
  os_unfair_lock_unlock(v17);

  v19 = v18[2];
  v32 = v6;
  if (v19)
  {
    v20 = sub_100009194(v19, 0);
    v21 = sub_100009A04(aBlock, v20 + 4, v19, v18);
    result = sub_100004F98();
    if (v21 != v19)
    {
      __break(1u);
      return result;
    }

    v23 = v2;
  }

  else
  {
    v23 = v2;

    v20 = _swiftEmptyArrayStorage;
  }

  v24 = v3;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  aBlock[4] = sub_1000FBA30;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307D98;
  v26 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  v27 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v24 + 8))(v27, v23);
  (*(v30 + 8))(v9, v32);

  v28 = v1[15];

  sub_1001AC430();

  swift_beginAccess();
  v29 = v1[17];
  v1[17] = &_swiftEmptySetSingleton;
}

unint64_t sub_1000F8534(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      ++v3;
      v5 = *(v4 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed);

      sub_100005000(0);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_1000F8610()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033D440, &unk_1002730B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v38 = &v37 - v4;
  if (qword_100338FB8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100344040);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v42[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100017494(0xD000000000000025, 0x800000010029FF60, v42);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
      sub_10000903C(v9);
    }

    v10 = *(v1 + 16);
    __chkstk_darwin(v11);
    *(&v37 - 4) = type metadata accessor for HandoffDevice();
    *(&v37 - 3) = type metadata accessor for UUID();
    v35 = sub_100018A70(&qword_100339848, &type metadata accessor for UUID);
    swift_getKeyPath();
    v12 = v10 + qword_100346AF8;
    os_unfair_lock_lock(v12);
    v42[0] = *(v12 + 8);

    swift_getAtKeyPath();

    v13 = v40;
    os_unfair_lock_unlock(v12);

    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_9:
    if ((v15 & 0x4000000000000000) != 0)
    {
LABEL_39:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
      }

      goto LABEL_11;
    }

    v18 = *(v15 + 16);
    if (!v18)
    {
    }

LABEL_11:
    v19 = 0;
    v20 = v15 & 0xC000000000000001;
    v39 = v15;
    while (v20)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_36;
      }

LABEL_17:
      v23 = sub_100010FF4();
      if ((v23 & 8) == 0)
      {
        if (qword_100339130 != -1)
        {
          swift_once();
        }

        if (*(off_10034A1A8 + 24) != 1)
        {
          goto LABEL_33;
        }

        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v24 = *(qword_10038B0B8 + 1536);
        v25 = sub_1000177F8();

        if (v25 == 2)
        {
          v25 = sub_100017C84();
        }

        v15 = v39;
        if ((v23 & 2) == 0 || (v25 & 1) == 0)
        {
LABEL_33:
          sub_1000F9264(v21);
          goto LABEL_13;
        }

        v26 = sub_100017E14();
        if (v26)
        {
          if (v26 <= 2299999)
          {
            goto LABEL_33;
          }
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v27 = v42[0];
          if (!v42[0])
          {
            goto LABEL_33;
          }

          v28 = [v42[0] firmwareVersion];

          if (!v28)
          {
            goto LABEL_33;
          }

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v42[0] = v29;
          v42[1] = v31;
          v40 = 875443249;
          v41 = 0xE400000000000000;
          v32 = type metadata accessor for Locale();
          v33 = v38;
          (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
          v35 = sub_10001369C();
          v36 = v35;
          v34 = StringProtocol.compare<A>(_:options:range:locale:)();
          sub_1000097E8(v33, &qword_10033D440, &unk_1002730B0);

          if (v34 > 1)
          {
            goto LABEL_33;
          }
        }
      }

      sub_100016F18(v21);
LABEL_13:

      ++v19;
      if (v22 == v18)
      {
      }
    }

    if (v19 >= *(v15 + 16))
    {
      goto LABEL_37;
    }

    v21 = *(v15 + 8 * v19 + 32);

    v22 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_17;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v15 = sub_100009194(*(v13 + 16), 0);
  v16 = sub_100009A04(v42, v15 + 32, v14, v13);
  result = sub_100004F98();
  if (v16 == v14)
  {
    if (v15 < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F8C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    if (!a1)
    {
      v40 = v11;
      v42 = v6;
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100003078(v27, qword_100344040);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      v30 = os_log_type_enabled(v28, v29);
      v41 = v10;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v39 = v16;
        v32 = v31;
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v32 = 136315138;
        v34 = sub_1000092A0();
        v36 = sub_100017494(v34, v35, aBlock);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v28, v29, "Successfully suppressed v1 for %s", v32, 0xCu);
        sub_10000903C(v33);

        v16 = v39;
      }

      v37 = *(v16 + 120);

      sub_100049880(a3);

      if (qword_1003391E8 != -1)
      {
        swift_once();
      }

      aBlock[4] = sub_1000FBA10;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018AB8;
      aBlock[3] = &unk_100307D48;
      v38 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v43 = _swiftEmptyArrayStorage;
      sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100035D04(&unk_100343710, &qword_100271800);
      sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v42 + 8))(v9, v5);
      (*(v40 + 8))(v14, v41);
    }

    swift_errorRetain();
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003078(v17, qword_100344040);
    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v20 = 136315394;
      v23 = sub_1000092A0();
      v25 = sub_100017494(v23, v24, aBlock);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to suppress %s: %@", v20, 0x16u);
      sub_1000097E8(v21, &qword_100339940, &unk_100272C50);

      sub_10000903C(v22);
    }
  }

  return result;
}

uint64_t sub_1000F9264(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100344040);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v1;
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100017494(0xD00000000000001BLL, 0x800000010029FF20, aBlock);
    *(v15 + 12) = 2080;
    v17 = sub_1000092A0();
    v19 = sub_100017494(v17, v18, aBlock);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: device=%s", v15, 0x16u);
    swift_arrayDestroy();
    v2 = v27;
  }

  v20 = *(v2 + 128);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  aBlock[4] = sub_1000FB9D8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307C08;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);
}

void sub_1000F96D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 120);

    v6 = sub_100018F00(a2);

    if (!v6)
    {
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100003078(v24, qword_100344040);
      v20 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v20, v25, "Not already suppressed", v26, 2u);
      }

      goto LABEL_15;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000DF0C();
    v8 = v7;

    if (v8)
    {
      v9 = *(v4 + 112);
      if (v9)
      {
        v10 = qword_100338FB8;
        v11 = v9;
        if (v10 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100003078(v12, qword_100344040);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v27 = v11;
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          aBlock[0] = v16;
          *v15 = 136315138;
          v17 = sub_1000092A0();
          v19 = sub_100017494(v17, v18, aBlock);

          *(v15 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v13, v14, "Stop suppressing v1 for %s", v15, 0xCu);
          sub_10000903C(v16);

          v11 = v27;
        }

        v20 = String._bridgeToObjectiveC()();

        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = a2;
        aBlock[4] = sub_1000FB9E0;
        aBlock[5] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100124498;
        aBlock[3] = &unk_100307C58;
        v23 = _Block_copy(aBlock);

        [v11 stopSuppressingDevice:v20 completion:v23];

        _Block_release(v23);

LABEL_15:
        return;
      }
    }
  }
}

uint64_t sub_1000F9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v46 = v9;
    v47 = v10;
    v44 = v14;
    v45 = v11;
    if (a1)
    {
      v43 = v6;
      swift_errorRetain();
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003078(v17, qword_100344040);
      swift_errorRetain();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v42 = v5;
        v21 = v20;
        v22 = swift_slowAlloc();
        v23 = v16;
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v21 = 136315394;
        v25 = sub_1000092A0();
        v27 = sub_100017494(v25, v26, aBlock);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2112;
        swift_errorRetain();
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 14) = v28;
        *v22 = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to stop suppressing %s: %@", v21, 0x16u);
        sub_1000097E8(v22, &qword_100339940, &unk_100272C50);

        sub_10000903C(v24);
        v16 = v23;

        v5 = v42;
      }

      else
      {
      }

      v6 = v43;
    }

    else
    {
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003078(v29, qword_100344040);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v32 = 136315138;
        v34 = sub_1000092A0();
        v36 = v16;
        v37 = sub_100017494(v34, v35, aBlock);

        *(v32 + 4) = v37;
        v16 = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Successfully stop suppressing v1 for %s", v32, 0xCu);
        sub_10000903C(v33);
      }
    }

    v38 = *(v16 + 120);

    sub_1002096F0(a3);

    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    aBlock[4] = sub_1000FB9E8;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100307C80;
    v39 = _Block_copy(aBlock);

    v40 = v44;
    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    v41 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v6 + 8))(v41, v5);
    (*(v45 + 8))(v40, v47);
  }

  return result;
}

uint64_t sub_1000FA110(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__isHandoffV1Suppressed);

  sub_100005000(a2);
}

void sub_1000FA160(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = qword_100338FB8;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100344040);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring SFProximityClient", v8, 2u);
    }

    [v4 setDispatchQueue:*(v2 + 128)];
    v31 = sub_1000FA844;
    v32 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100018AB8;
    v30 = &unk_1003079B0;
    v9 = _Block_copy(&v27);
    [v4 setInvalidationHandler:v9];
    _Block_release(v9);
    v31 = sub_100019538;
    v32 = v2;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100018AB8;
    v30 = &unk_1003079D8;
    v10 = _Block_copy(&v27);

    [v4 setInterruptionHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB910;
    v32 = v11;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307A28;
    v12 = _Block_copy(&v27);

    [v4 setDeviceEnteredImmediateHandler:v12];
    _Block_release(v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB930;
    v32 = v13;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307A50;
    v14 = _Block_copy(&v27);

    [v4 setDeviceExitedImmediateHandler:v14];
    _Block_release(v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v31 = sub_100019630;
    v32 = v15;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307A78;
    v16 = _Block_copy(&v27);

    [v4 setDeviceEnteredNearbyHandler:v16];
    _Block_release(v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB950;
    v32 = v17;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307AA0;
    v18 = _Block_copy(&v27);

    [v4 setDeviceExitedNearbyHandler:v18];
    _Block_release(v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB970;
    v32 = v19;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307AC8;
    v20 = _Block_copy(&v27);

    [v4 setDeviceWasSelectedHandler:v20];
    _Block_release(v20);
    v21 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB990;
    v32 = v21;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307AF0;
    v22 = _Block_copy(&v27);

    [v4 setDeviceWillTriggerHandler:v22];
    _Block_release(v22);
    v23 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB9B0;
    v32 = v23;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307B18;
    v24 = _Block_copy(&v27);

    [v4 setDeviceDidUntriggerHandler:v24];
    _Block_release(v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v31 = sub_10001C238;
    v32 = v25;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000FB3A8;
    v30 = &unk_100307B40;
    v26 = _Block_copy(&v27);

    [v4 setDeviceWasDismissedHandlerEx:v26];
    _Block_release(v26);
  }
}

void sub_1000FA844()
{
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100344040);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SFProximityClient invalidated", v2, 2u);
  }
}

uint64_t sub_1000FA92C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  __chkstk_darwin(v0);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  __chkstk_darwin(v3);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for DispatchTime();
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v33);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003078(v18, qword_100344040);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "### SFProximityClient interrupted", v21, 2u);
  }

  sub_100035CB8();
  v32 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v10 = 1;
  (*(v7 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v6);
  + infix(_:_:)();
  (*(v7 + 8))(v10, v6);
  v31 = *(v11 + 8);
  v22 = v33;
  v31(v15, v33);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000FB9D0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307BB8;
  v24 = _Block_copy(aBlock);

  v25 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  v26 = v35;
  v27 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v32;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v24);

  (*(v38 + 8))(v26, v27);
  (*(v36 + 8))(v25, v37);
  return (v31)(v17, v22);
}

void sub_1000FAE84()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100003078(v0, qword_100344040);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Reactivating...", v3, 2u);
    }

    v4 = sub_1000F7FB4();
    sub_1000F6B6C(v4);
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0);
    Publisher.sink(receiveCompletion:receiveValue:)();
  }

  else
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100344040);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "### interruptionHandler: nil self", v8, 2u);
    }
  }
}

void sub_1000FB0FC(void *a1)
{
  if (!*a1)
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100344040);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Reactivated", v8, 2u);
LABEL_10:

LABEL_11:

    return;
  }

  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100344040);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "### Reactivated: %@", v3, 0xCu);
    sub_1000097E8(v4, &qword_100339940, &unk_100272C50);

    goto LABEL_10;
  }
}

uint64_t sub_1000FB324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100019650(6, a1, a2, a3, 0);
  }

  return result;
}

uint64_t sub_1000FB3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v5(v6, v8, a3);
}

uint64_t sub_1000FB424()
{
  v1 = *v0;
  v2 = 0x6972746E55646964;
  v3 = 0x696D736944736177;
  if (v1 != 6)
  {
    v3 = 0x63656C6553736177;
  }

  v4 = 0x6E4579627261656ELL;
  if (v1 != 4)
  {
    v4 = 0x784579627261656ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676972546C6C6977;
  }

  if (*v0 > 1u)
  {
    v2 = 0x74616964656D6D69;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SFNotificationDismissReason.description.getter(uint64_t a1)
{
  v1 = sub_1000FB5B4(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

__CFString *sub_1000FB5B4(uint64_t a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 3)
  {
    v2 = @"?";
    v3 = @"?";
  }

  else
  {
    v2 = off_100307EC8[v1];
    v3 = off_100307EE8[v1];
  }

  v4 = v2;

  return v3;
}

uint64_t sub_1000FB61C()
{
  v1 = sub_1000FB5B4(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

BOOL sub_1000FB6A0()
{
  v1 = *(v0 + 16);

  swift_getAtKeyPath();

  v2 = v0 + qword_100346AF8;
  os_unfair_lock_lock((v0 + qword_100346AF8));
  v3 = *(v2 + 8);
  if (*(v3 + 16) && (v4 = sub_100004B58(v8, v9), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v2);

  return v6 != 0;
}

uint64_t sub_1000FB764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_11:
    v13 = *(*(a1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v14 = sub_10000DF0C();
    v16 = v15;

    if (v16)
    {
      if (v14 == a2 && v16 == a3)
      {

        return v13;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {

        return v13;
      }
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SharingProxy.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingProxy.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FBC10()
{
  result = qword_100344248;
  if (!qword_100344248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344248);
  }

  return result;
}

uint64_t sub_1000FBD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000FBD80(uint64_t a1)
{
  v2 = sub_1000FC290();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FBDBC(uint64_t a1)
{
  v2 = sub_1000FC290();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FBDF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100035D04(&qword_100344250, &qword_10027A200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000FC290();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_10000903C(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000FBF74(void *a1)
{
  v3 = sub_100035D04(&qword_100344260, &qword_10027A208);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000FC290();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000FC0CC()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;

  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v2;
  *(inited + 80) = v1;
  v4 = sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000FC194(inited + 32);
  return v4;
}

uint64_t sub_1000FC194(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100344038, qword_100279DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000FC244(uint64_t result, int a2, int a3)
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

unint64_t sub_1000FC290()
{
  result = qword_100344258;
  if (!qword_100344258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344258);
  }

  return result;
}

unint64_t sub_1000FC2F8()
{
  result = qword_100344268;
  if (!qword_100344268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344268);
  }

  return result;
}

unint64_t sub_1000FC350()
{
  result = qword_100344270;
  if (!qword_100344270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344270);
  }

  return result;
}

unint64_t sub_1000FC3A8()
{
  result = qword_100344278;
  if (!qword_100344278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344278);
  }

  return result;
}

uint64_t sub_1000FC3FC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100344280);
  sub_100003078(v0, qword_100344280);
  return Logger.init(subsystem:category:)();
}

id sub_1000FC474()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8PillView_title);
    v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8PillView_title + 8);
    v6 = objc_allocWithZone(PLPillContentItem);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithText:v7 style:1];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1000FC528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem] = 0;
  v7 = OBJC_IVAR____TtC17proximitycontrold8PillView_leadingImageView;
  *&v2[v7] = [objc_allocWithZone(UIImageView) initWithImage:0];
  *&v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitleTask] = 0;
  if (qword_100338FC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100344280);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Init", v11, 2u);
  }

  v12 = &v3[OBJC_IVAR____TtC17proximitycontrold8PillView_title];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = *&v3[v7];
  v18.receiver = v3;
  v18.super_class = type metadata accessor for PillView();
  v14 = objc_msgSendSuper2(&v18, "initWithLeadingAccessoryView:trailingAccessoryView:", v13, 0);
  LODWORD(v15) = 1144750080;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1144750080;
  [v14 setContentHuggingPriority:0 forAxis:v16];
  [v14 setClipsToBounds:0];

  return v14;
}

id sub_1000FC70C()
{
  v1 = v0;
  if (qword_100338FC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344280);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for PillView();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1000FC910(char a1)
{
  v2 = v1;
  if (qword_100338FC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100344280);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD000000000000011, 0x80000001002A0070, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v9 = [v2 superview];
  if (v9)
  {

    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100271B90;
    *(v10 + 32) = sub_1000FC474();
    if (*&v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle + 8])
    {
      v11 = *&v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle];
      v12 = *&v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle + 8];
    }

    v13 = objc_allocWithZone(PLPillContentItem);

    v14 = String._bridgeToObjectiveC()();

    v15 = [v13 initWithText:v14 style:2];

    *(v10 + 40) = v15;
    sub_1000FCBF4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setCenterContentItems:isa animated:a1 & 1];
  }
}

unint64_t sub_1000FCBF4()
{
  result = qword_10033B110;
  if (!qword_10033B110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033B110);
  }

  return result;
}

uint64_t sub_1000FCC40()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003442E8);
  sub_100003078(v0, qword_1003442E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000FCCC0()
{
  type metadata accessor for SystemLockStateMonitor();
  v0 = swift_allocObject();
  result = sub_1000FCCFC();
  qword_10038B140 = v0;
  return result;
}

uint64_t sub_1000FCCFC()
{
  sub_100035D04(&qword_1003443E0, qword_10027A410);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  v2 = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 24) = v2;
  v3 = qword_1003391E8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setDispatchQueue:qword_10038B5B8];

  v5 = *(v0 + 24);
  v16 = sub_1000FD384;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_1003080A0;
  v6 = _Block_copy(&v12);
  v7 = v5;

  [v7 setSystemLockStateChangedHandler:v6];
  _Block_release(v6);

  v8 = *(v0 + 24);
  v16 = sub_1000FD38C;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_1003080C8;
  v9 = _Block_copy(&v12);

  v10 = v8;

  [v10 activateWithCompletion:v9];
  _Block_release(v9);

  return v0;
}

uint64_t sub_1000FCF10(uint64_t a1)
{
  v2 = [*(a1 + 24) systemLockState];
  if (qword_100338FC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_1003442E8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = CUSystemLockState.description.getter(v2);
    v10 = sub_100017494(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "System lock state updated: %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v11 = *(a1 + 16);
  *(v11 + 24) = v2;

  sub_10005EA38();
  v14 = *(v11 + 24);
  CurrentValueSubject.send(_:)();
}

uint64_t sub_1000FD0AC(uint64_t a1)
{
  v2 = [*(a1 + 24) systemLockState];
  v3 = *(a1 + 16);
  *(v3 + 24) = v2;

  sub_10005EA38();
  v5 = *(v3 + 24);
  CurrentValueSubject.send(_:)();
}