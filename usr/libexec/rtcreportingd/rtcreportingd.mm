uint64_t sub_100001658(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000016B8(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    type = xpc_get_type(a1);
    ObjectType = swift_getObjectType();
    if (type == &_xpc_type_error)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *XPCMessage.init(fromXPC:)(void *a1)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v9 - v4);
  swift_getObjectType();
  if (OS_xpc_object.type()()._rawValue == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(a1, "type");
    XPCObject.init(_:)(v6, v5);
    v7 = type metadata accessor for XPCObject();
    if (sub_100002694(v5, 1, v7) == 1)
    {
      swift_unknownObjectRelease();
      sub_100062450(v5);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      swift_unknownObjectRelease();
      sub_10002E5EC(v5);
      return 0;
    }

    if (XPCMessage.MessageType.init(rawValue:)(*v5).value != RTCUtility_XPCMessage_MessageType_unknownDefault)
    {
      return a1;
    }
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1000018E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v4);
  v6 = *(v5 + 64);
  sub_100003EC8();
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  sub_100001D80(v10);
  v12 = *(v11 + 64);
  sub_100003EC8();
  __chkstk_darwin(v13);
  v15 = (&v40 - v14);
  v16 = swift_unknownObjectRetain();
  v17 = XPCMessage.init(fromXPC:)(v16);
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    swift_unknownObjectRetain();
    v21 = MessageKeys.sessionID.unsafeMutableAddressor();
    v22 = *v21;
    v23 = v21[1];

    RTCXPCDictionary.subscript.getter(v19, v15);
    swift_unknownObjectRelease();

    v24 = type metadata accessor for XPCObject();
    if (sub_100002694(v15, 1, v24) == 1)
    {
      sub_1000026E4(v15, &qword_10008F360, &qword_100070A20);
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      v28 = v15[1];
      if (v20 != 1)
      {
        v36 = *v15;
        type metadata accessor for TaskPriority();
        v37 = sub_10000B7A4();
        sub_1000026BC(v37, v38, 1, v39);
        v34 = swift_allocObject();
        *(v34 + 16) = 0;
        *(v34 + 24) = 0;
        *(v34 + 32) = v2;
        *(v34 + 40) = v36;
        *(v34 + 48) = v28;
        *(v34 + 56) = v19;
        *(v34 + 64) = v20;
        swift_unknownObjectRetain();

        v35 = &unk_10006E080;
        goto LABEL_16;
      }

      v29 = v15[1];
    }

    else
    {
      sub_10002E5EC(v15);
    }

    type metadata accessor for TaskPriority();
    v31 = sub_10000B7A4();
    sub_1000026BC(v31, v32, 1, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v2;
    *(v34 + 40) = v19;
    *(v34 + 48) = v20;
    swift_unknownObjectRetain();

    v35 = &unk_10006E070;
LABEL_16:
    sub_10002D48C(0, 0, v9, v35, v34);
    swift_unknownObjectRelease();

    return;
  }

  if (qword_10008DD30 != -1)
  {
    sub_1000097DC();
  }

  v25 = type metadata accessor for Logger();
  sub_10000B6D0(v25, qword_10008E7B0);

  v40 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v26))
  {
    sub_100004D20();
    v27 = sub_100004414();
    v41 = v27;
    *a1 = 136446210;
    *(a1 + 4) = sub_1000053A0(*(v2 + 128), *(v2 + 136), &v41);
    _os_log_impl(&_mh_execute_header, v40, v26, "received invalid XPC message from %{public}s", a1, 0xCu);
    sub_100005284(v27);
    sub_100001D1C();
    sub_100003910();
  }

  else
  {
    v30 = v40;
  }
}

uint64_t sub_100001C68()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100001CB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100001D1C()
{
}

uint64_t sub_100001D34()
{

  return swift_willThrow();
}

uint64_t sub_100001D4C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100001D64()
{
}

uint64_t sub_100001D8C()
{
  result = v0[42];
  v2 = v0[39];
  v3 = v0[36];
  return result;
}

unint64_t sub_100001DB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_100001DFC()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_100001E10()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[21];
}

uint64_t sub_100001E44(uint64_t result)
{
  *(result + 8) = sub_10005D5A8;
  v2 = *(v1 + 632);
  return result;
}

uint64_t sub_100001E68()
{

  return sub_10005A254(0, 0, v0, &unk_1000709F0, v1);
}

uint64_t sub_100001EBC()
{

  return swift_once();
}

uint64_t sub_100001EF0()
{
  v2 = v0[23];
  result = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  return result;
}

uint64_t sub_100001F0C()
{
  v2 = *(v0 - 112);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100001FCC()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
}

uint64_t sub_100002018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = a1;
  *v27 = a19;

  return sub_1000053A0(v28, v29, &a27);
}

uint64_t sub_100002044(unint64_t *a1)
{

  return sub_100015CBC(a1);
}

uint64_t sub_1000020B8()
{

  return swift_once();
}

uint64_t sub_1000020EC()
{

  return swift_once();
}

uint64_t type metadata accessor for XPCObject()
{
  result = qword_1000903F0;
  if (!qword_1000903F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100001EAC();
  v12 = v11 - v10;
  v13 = type metadata accessor for XPCObject();
  v14 = sub_100003C44(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000286C();
  v19 = (v17 - v18);
  v21 = __chkstk_darwin(v20);
  v23 = (&v51 - v22);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  if (a1)
  {
    v26 = swift_unknownObjectRetain();
    type = xpc_get_type(v26);
    if (type == &_xpc_type_null)
    {
      sub_100007B98();
      sub_10000210C();
    }

    else
    {
      v28 = type;
      if (type == &_xpc_type_connection || type == &_xpc_type_endpoint)
      {
        swift_unknownObjectRelease();
        sub_1000099E8();
      }

      else if (type == &_xpc_type_BOOL)
      {
        value = xpc_BOOL_get_value(a1);
        sub_100007B98();
        *v25 = value;
        sub_10000210C();
      }

      else if (type == &_xpc_type_int64)
      {
        v31 = xpc_int64_get_value(a1);
        sub_100007B98();
        *v25 = v31;
        sub_10000210C();
      }

      else if (type == &_xpc_type_uint64)
      {
        v32 = xpc_uint64_get_value(a1);
        sub_100007B98();
        *v25 = v32;
        sub_10000210C();
      }

      else if (type == &_xpc_type_double)
      {
        v33 = xpc_double_get_value(a1);
        sub_100007B98();
        *v25 = v33;
        sub_10000210C();
      }

      else
      {
        if (type != &_xpc_type_date)
        {
          if (type == &_xpc_type_data)
          {
            result = xpc_data_get_bytes_ptr(a1);
            if (result)
            {
              xpc_data_get_length(a1);
              v35 = Data.init(bytes:count:)();
              v37 = v36;
              sub_100007B98();
              *v23 = v35;
              v23[1] = v37;
              swift_storeEnumTagMultiPayload();
              v38 = v23;
LABEL_34:
              sub_100004254(v38, v25);
              goto LABEL_29;
            }

            __break(1u);
          }

          else
          {
            if (type != &_xpc_type_string)
            {
              if (type != &_xpc_type_uuid)
              {
                swift_unknownObjectRelease();
                if (v28 != &_xpc_type_shmem && v28 != &_xpc_type_array && v28 != &_xpc_type_dictionary)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_17;
                }

                sub_1000099E8();
                goto LABEL_28;
              }

              result = xpc_uuid_get_bytes(a1);
              if (result)
              {
                v42 = *(result + 1);
                v43 = result[7];
                v44 = result[6];
                v45 = result[5];
                v46 = result[4];
                v47 = result[3];
                v48 = result[2];
                v49 = result[1];
                v50 = *result;
                UUID.init(uuid:)();
                sub_100007B98();
                (*(v7 + 32))(v25, v12, v4);
                sub_10000210C();
                goto LABEL_28;
              }

LABEL_40:
              __break(1u);
              return result;
            }

            result = xpc_string_get_string_ptr(a1);
            if (result)
            {
              v39 = String.init(cString:)();
              v41 = v40;
              sub_100007B98();
              *v19 = v39;
              v19[1] = v41;
              swift_storeEnumTagMultiPayload();
              v38 = v19;
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v34 = xpc_date_get_value(a1);
        sub_100007B98();
        *v25 = v34;
        sub_10000210C();
      }
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_100004254(v25, a2);
    return sub_1000026BC(a2, 0, 1, v13);
  }

LABEL_17:

  return sub_1000026BC(a2, 1, 1, v13);
}

BOOL sub_100002630()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100002668(uint64_t a1, void *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1000026E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000228D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002744(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1000053A0(v2, v3, va);
}

uint64_t sub_10000277C()
{

  return swift_beginAccess();
}

uint64_t sub_1000027A8()
{

  return String.hash(into:)();
}

uint64_t sub_1000027CC()
{
  v3 = *(*(*(v1 - 104) + 48) + 16 * v0 + 8);
}

uint64_t sub_10000282C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000284C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000287C(uint64_t a1)
{
  *(v1 + 408) = a1;
  *v2 = *(v1 + 80);
  v5 = *(v1 + 296);

  return sub_1000053A0(v5, v3, (v1 + 408));
}

unsigned __int8 *sub_1000028C8()
{

  return RTCXPCDictionary.subscript.getter(v1, v0);
}

uint64_t sub_1000028E8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100002958()
{
  v2 = v1[13];
  v1[39] = *v0;
  v1[40] = v0[1];
  v3 = *(v2 + 16);
}

unint64_t sub_100002974()
{
  v2 = *v0;

  return sub_100003BC0();
}

uint64_t sub_1000029E0(uint64_t a1)
{
  qword_100095AF0 = a1;
}

uint64_t sub_100002A38(uint64_t result)
{
  *(result + 8) = sub_100065CEC;
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[32];
  v6 = *(v2 - 80);
  return result;
}

unsigned __int8 *RTCXPCDictionary.subscript.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = String.utf8CString.getter();
  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  return XPCObject.init(_:)(v5, a2);
}

uint64_t sub_100002AD0()
{
  if (*(v0 + 313) != 1)
  {
    if (*(v0 + 313))
    {
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC();
      }

      v22 = *(v0 + 96);
      v21 = *(v0 + 104);
      v23 = type metadata accessor for Logger();
      sub_10000B6D0(v23, qword_10008E7B0);

      swift_unknownObjectRetain();
      v24 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (!sub_100004CAC())
      {
        goto LABEL_31;
      }

      v25 = *(v0 + 104);
      v26 = *(v0 + 313);
      sub_1000175B0();
      v160 = sub_100008CF8();
      *v21 = 136315394;
      *(v0 + 312) = v26;
      v27 = String.init<A>(describing:)();
      v29 = sub_1000053A0(v27, v28, &v160);

      *(v21 + 4) = v29;
      sub_100016718();
      *(v21 + 14) = sub_1000053A0(*(v25 + 128), *(v25 + 136), &v160);
      sub_1000028B8();
      _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
      swift_arrayDestroy();
      goto LABEL_30;
    }

    v2 = *(v0 + 192);
    v3 = *(v0 + 96);
    v4 = MessageKeys.clientName.unsafeMutableAddressor();
    v5 = *v4;
    v6 = *(v4 + 1);

    RTCXPCDictionary.subscript.getter(v3, v2);

    v7 = type metadata accessor for XPCObject();
    v8 = sub_100002694(v2, 1, v7);
    v9 = *(v0 + 192);
    if (v8 == 1)
    {
      v10 = *(v0 + 192);
LABEL_5:
      sub_1000026E4(v10, &qword_10008F360, &qword_100070A20);
LABEL_26:
      if (qword_10008DD30 != -1)
      {
        sub_1000097DC();
      }

      v69 = *(v0 + 104);
      v70 = type metadata accessor for Logger();
      sub_10000B6D0(v70, qword_10008E7B0);

      v24 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (!sub_100004CAC())
      {
        goto LABEL_31;
      }

      v71 = *(v0 + 104);
      sub_100004D20();
      v72 = sub_100004414();
      v160 = v72;
      *v69 = 136446210;
      *(v69 + 4) = sub_1000053A0(*(v71 + 128), *(v71 + 136), &v160);
      sub_1000028B8();
      _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
      sub_100005284(v72);
LABEL_30:
      sub_100004664();
      sub_100003910();
LABEL_31:

LABEL_41:
      sub_100001EF0();

      sub_100001D4C();

      return v89();
    }

    sub_100004EA4();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v35 = *(v0 + 184);
      v36 = *(v0 + 96);
      v37 = *v9;
      *(v0 + 200) = v9[1];
      v38 = MessageKeys.serviceName.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      RTCXPCDictionary.subscript.getter(v36, v35);

      v41 = sub_100002694(v35, 1, v7);
      v42 = *(v0 + 184);
      if (v41 == 1)
      {

        v10 = v42;
        goto LABEL_5;
      }

      v90 = *(v0 + 184);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v91 = *(v0 + 176);
        v92 = *(v0 + 96);
        v93 = *v42;
        *(v0 + 208) = v42[1];
        v94 = MessageKeys.clientType.unsafeMutableAddressor();
        v95 = *v94;
        v96 = v94[1];
        v1 = v0;

        sub_1000028C8();

        v97 = sub_100007BD0();
        v98 = *(v0 + 176);
        if (v97 == 1)
        {

          v10 = v98;
          goto LABEL_5;
        }

        v115 = *(v0 + 176);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v116 = *(v0 + 168);
          v117 = *(v0 + 96);
          v157 = *v98;
          *(v0 + 216) = v98[1];
          v118 = MessageKeys.realtime.unsafeMutableAddressor();
          v120 = *v118;
          v119 = v118[1];

          RTCXPCDictionary.subscript.getter(v117, v116);

          v121 = sub_100002694(v116, 1, v7);
          v122 = *(v0 + 168);
          if (v121 == 1)
          {

            v10 = v122;
            goto LABEL_5;
          }

          if (sub_1000122D8() == 2)
          {
            v123 = *(v0 + 160);
            v124 = *(v0 + 96);
            v125 = *v122;
            v126 = MessageKeys.hierarchyToken.unsafeMutableAddressor();
            sub_100011CA0(v126);
            sub_1000028C8();
            sub_100005B94();
            v127 = sub_100007BD0();
            v128 = *(v0 + 160);
            v159 = v125;
            if (v127 == 1)
            {
LABEL_66:
              sub_1000026E4(v128, &qword_10008F360, &qword_100070A20);
LABEL_75:
              v131 = 0;
LABEL_76:
              *(v0 + 224) = v131;
              v134 = *(v0 + 144);
              v135 = *(v0 + 96);
              v136 = MessageKeys.samplingUUID.unsafeMutableAddressor();
              sub_100011CA0(v136);
              sub_1000028C8();
              sub_100005B94();
              v137 = sub_100007BD0();
              v138 = *(v0 + 144);
              if (v137 == 1)
              {
                sub_1000026E4(*(v0 + 144), &qword_10008F360, &qword_100070A20);
              }

              else
              {
                if (sub_1000122D8() == 8)
                {
                  v139 = v138[1];
                  v154 = *v138;
                  goto LABEL_82;
                }

                sub_10002E5EC(v138);
              }

              v139 = 0;
LABEL_82:
              *(v0 + 232) = v139;
              v140 = *(v0 + 136);
              v141 = *(v0 + 96);
              v142 = MessageKeys.eager.unsafeMutableAddressor();
              sub_100011CA0(v142);
              sub_1000028C8();
              sub_100005B94();
              if (sub_100007BD0() != 1)
              {
                sub_10002E6E0(*(v0 + 136), *(v0 + 128), &qword_10008F360, &qword_100070A20);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  v143 = **(v0 + 128);
                  sub_1000026E4(*(v0 + 136), &qword_10008F360, &qword_100070A20);
                  if ((v159 & 1) != 0 || !v143 || qword_10008DDC0 == -1)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_101;
                }

                sub_10002E5EC(*(v0 + 128));
              }

              sub_1000026E4(*(v0 + 136), &qword_10008F360, &qword_100070A20);
              goto LABEL_90;
            }

            if (sub_1000122D8() == 8)
            {
              v129 = *(v0 + 152);
              v130 = *(v0 + 96);
              v131 = v128[1];
              v156 = *v128;
              v132 = MessageKeys.hierarchyLevel.unsafeMutableAddressor();
              sub_100011CA0(v132);
              sub_1000028C8();
              sub_100005B94();
              v133 = sub_100007BD0();
              v128 = *(v0 + 152);
              if (v133 == 1)
              {

                goto LABEL_66;
              }

              if (sub_1000122D8() == 3)
              {
                v155 = *v128;
                goto LABEL_76;
              }
            }

            sub_10002E5EC(v128);
            goto LABEL_75;
          }

          v68 = v122;
        }

        else
        {

          v68 = v98;
        }
      }

      else
      {

        v68 = v42;
      }
    }

    else
    {
      v68 = v9;
    }

    sub_10002E5EC(v68);
    goto LABEL_26;
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  v13 = MessageKeys.sessionID.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];

  RTCXPCDictionary.subscript.getter(v12, v11);

  v16 = type metadata accessor for XPCObject();
  v17 = sub_10000B7A4();
  v19 = sub_100002694(v17, v18, v16);
  v20 = *(v0 + 112);
  if (v19 == 1)
  {
    sub_1000026E4(*(v0 + 112), &qword_10008F360, &qword_100070A20);
LABEL_33:
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC();
    }

    v78 = *(v0 + 104);
    v79 = type metadata accessor for Logger();
    sub_10000B6D0(v79, qword_10008E7B0);

    v80 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100004CAC())
    {
      v1 = *(v0 + 104);
      sub_100004D20();
      v81 = sub_100004414();
      v160 = v81;
      *v78 = 136446210;
      *(v78 + 4) = sub_1000053A0(v1[16], v1[17], &v160);
      sub_1000028B8();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      sub_100005284(v81);
      sub_100004664();
      sub_100003910();
    }

    reply = xpc_dictionary_create_reply(*(v0 + 96));
    if (!reply)
    {
      goto LABEL_41;
    }

    v88 = *(*(v0 + 104) + 112);
    if (!v88)
    {
      __break(1u);
LABEL_101:
      swift_once();
LABEL_90:
      v144 = *(v0 + 120);
      v145 = *(v0 + 96);
      v146 = MessageKeys.overrideSampling.unsafeMutableAddressor();
      sub_100011CA0(v146);
      sub_1000028C8();

      v147 = sub_100007BD0();
      v148 = v1[15];
      if (v147 == 1)
      {
        result = sub_1000026E4(v1[15], &qword_10008F360, &qword_100070A20);
      }

      else
      {
        result = sub_1000122D8();
        if (result == 5)
        {
          v149 = *v148;
        }

        else
        {
          result = sub_10002E5EC(v148);
        }
      }

      v150 = v1[13];
      if (*(v150 + 112))
      {
        v151 = *(v150 + 112);

        XPCConnection.remoteUID.getter();

        v152 = qword_100095AE8;
        v1[30] = qword_100095AE8;
        if (v152)
        {

          v153 = swift_task_alloc();
          v1[31] = v153;
          *v153 = v1;
          v153[1] = sub_1000117D4;

          return sub_100004DDC();
        }

LABEL_105:
        __break(1u);
        return result;
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    xpc_connection_send_message(*(v88 + 16), reply);
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v43 = *(v0 + 112);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10002E5EC(v20);
    goto LABEL_33;
  }

  v44 = *(v0 + 104);
  v46 = *v20;
  v45 = v20[1];
  swift_beginAccess();
  sub_100004E98();
  v47 = sub_100011D40();
  *(v0 + 296) = v47;
  swift_endAccess();
  if (!v47)
  {
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC();
    }

    v99 = *(v0 + 104);
    v100 = type metadata accessor for Logger();
    sub_10000B6D0(v100, qword_10008E7B0);

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (sub_100005B24())
    {
      v103 = *(v0 + 104);
      v104 = sub_1000175B0();
      v160 = sub_100005BFC();
      *v104 = 136446466;
      v105 = sub_100004E98();
      *(v104 + 4) = sub_1000053A0(v105, v106, v107);
      *(v104 + 12) = 2082;
      *(v104 + 14) = sub_1000053A0(*(v103 + 128), *(v103 + 136), &v160);
      _os_log_impl(&_mh_execute_header, v101, v102, "attempt to close non-existing session %{public}s from %{public}s", v104, 0x16u);
      swift_arrayDestroy();
      sub_100001D64();
      sub_100001D1C();
    }

    result = xpc_dictionary_create_reply(*(v0 + 96));
    if (!result)
    {

      goto LABEL_41;
    }

    v108 = *(v0 + 104);
    v109 = *(v108 + 112);
    if (v109)
    {
      v110 = *(v108 + 112);

      v111 = *(v109 + 16);
      swift_unknownObjectRetain();

      v112 = sub_100004EA4();
      xpc_connection_send_message(v112, v113);
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (qword_10008DD30 != -1)
  {
    sub_1000097DC();
  }

  v48 = *(v0 + 104);
  v49 = type metadata accessor for Logger();
  sub_10000B6D0(v49, qword_10008E7B0);

  v50 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_1000127C4())
  {
    v51 = *(v0 + 104);
    v52 = sub_1000175B0();
    v160 = sub_100005BFC();
    *v52 = 136446466;
    v53 = sub_100004E98();
    *(v52 + 4) = sub_1000053A0(v53, v54, v55);
    *(v52 + 12) = 2082;
    *(v52 + 14) = sub_1000053A0(*(v51 + 128), *(v51 + 136), &v160);
    sub_100003C34();
    _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
    sub_100004D38();
    sub_100001D1C();
    sub_100001D64();
  }

  result = xpc_dictionary_create_reply(*(v0 + 96));
  if (!result)
  {

    goto LABEL_56;
  }

  v62 = *(v0 + 104);
  v63 = *(v62 + 112);
  if (!v63)
  {
    __break(1u);
    goto LABEL_103;
  }

  v64 = *(v62 + 112);

  v65 = *(v63 + 16);
  swift_unknownObjectRetain();

  v66 = sub_100004EA4();
  xpc_connection_send_message(v66, v67);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_56:
  v114 = swift_task_alloc();
  *(v0 + 304) = v114;
  *v114 = v0;
  v114[1] = sub_100014714;

  return sub_100012534(1);
}

uint64_t sub_100003910()
{
}

uint64_t sub_10000393C()
{
  sub_100005284(v0);
}

uint64_t sub_100003970(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_100003990(uint64_t result)
{
  *(result + 8) = sub_10003C634;
  v2 = *(v1 + 56);
  return result;
}

uint64_t sub_1000039F4()
{
  v2 = v0[28];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
}

unint64_t sub_100003A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100003AF0(sqlite3 *a1, const char *a2)
{

  return sqlite3_exec(a1, a2, 0, 0, 0);
}

BOOL sub_100003B24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100003B40(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = a1 + ((*(v1 + 568) + 32) & ~*(v1 + 568));

  return sub_100037808(v4, v3);
}

BOOL sub_100003B90()
{

  return sub_100015F14((v2 - 128), v1, v0);
}

unint64_t sub_100003BC0()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = sub_100007C1C();

  return sub_100003A3C(v2, v3, v4);
}

uint64_t sub_100003C88(uint64_t a1)
{

  return sub_10003F034(a1, v1, type metadata accessor for SQLiteDB.Location);
}

uint64_t sub_100003D60()
{

  return swift_task_alloc();
}

uint64_t sub_100003D78()
{
}

uint64_t sub_100003D94@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 240);
  v5 = v1 + ((*(v2 + 568) + 32) & ~*(v2 + 568));
  v6 = *(*(v2 + 160) + 72);
  *(v2 + 304) = v6;

  return sub_100037808(v5 + v6 * a1, v4);
}

uint64_t sub_100003E48(uint64_t a1)
{
  *(a1 + 8) = sub_1000137B4;
  v3 = *(v2 + 80);
  return v1;
}

uint64_t sub_100003E88()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100003ED4()
{
}

void sub_100003EEC()
{

  sub_100022FE0();
}

char *sub_100003F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100018000(v5, a2, a3, a4, v4);
}

uint64_t sub_100003F7C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100003FB4()
{

  return swift_once();
}

void sub_100003FD4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100003FF4()
{
  sub_100004F30();
  sub_100008E60();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_100003900(v2);
  *v3 = v4;
  v5 = sub_1000043F4(v3);

  return sub_100004090(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_100004090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100010C30;

  return sub_10000413C(a5, a6);
}

uint64_t sub_10000413C(uint64_t a1, char a2)
{
  *(v3 + 313) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(*(sub_1000228D4(&qword_10008F360, &qword_100070A20) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100002AD0, v2, 0);
}

uint64_t sub_100004254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000042B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010D10;

  return v7(a1);
}

void sub_1000043B0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1000043C0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100004414()
{

  return swift_slowAlloc();
}

void sub_10000443C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1000044A0()
{
  v0[50] = 0;
  v0[52] = 0;
  v0[54] = 0;
  v0[56] = 0;
}

void sub_100004518()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[38];
}

uint64_t sub_100004530()
{

  return swift_beginAccess();
}

RTCUtility::XPCMessage::MessageType_optional __swiftcall XPCMessage.MessageType.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 5)
  {
    LOBYTE(rawValue) = 5;
  }

  return rawValue;
}

uint64_t sub_10000456C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100003900(v3);
  *v4 = v5;
  v6 = sub_10000C650(v4);

  return v7(v6);
}

uint64_t sub_100004604(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_10000461C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100004664()
{
}

uint64_t sub_10000468C()
{
  v2 = *(v0 - 112);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000046E8()
{

  return swift_once();
}

uint64_t sub_100004794(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return sub_1000228D4(a2, a3);
}

uint64_t sub_100004854()
{
  v57 = v0;
  result = *(v0 + 160);
  *(v0 + 16) = result;
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 168);
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  if (v2)
  {
    v7 = *(v0 + 208);
    v54 = 0;
    v55 = 0xE000000000000000;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else if (v7 + 1 >= 1)
    {
      if (v7)
      {
        v9 = -v7;
        v10 = 1;
        v11 = qword_10008EC18;
        p_type = &stru_10008CFF0.type;
        v64 = -v7;
        do
        {
          v13 = *(v0 + 256);
          sub_100005504(*(v0 + 216), v2, v10);
          if (v15)
          {
            v16 = v14;
            v17 = v15;
            v18 = v54 & 0xFFFFFFFFFFFFLL;
            if ((v55 & 0x2000000000000000) != 0)
            {
              v18 = HIBYTE(v55) & 0xF;
            }

            if (v18)
            {
              v56._countAndFlagsBits = 46;
              v56._object = 0xE100000000000000;
              v19._countAndFlagsBits = v14;
              v19._object = v15;
              String.append(_:)(v19);

              String.append(_:)(v56);
            }

            else
            {

              v54 = v16;
              v55 = v17;
            }
          }

          else
          {
            if (p_type[424] != -1)
            {
              sub_10000986C();
              swift_once();
            }

            v20 = type metadata accessor for Logger();
            sub_10000B6D0(v20, v11);

            v21 = Logger.logObject.getter();
            v22 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = v11;
              v24 = *(v0 + 208);
              v25 = *(v0 + 216);
              v26 = swift_slowAlloc();
              v56._countAndFlagsBits = sub_100004F18();
              *v26 = 136315394;
              *(v26 + 4) = sub_1000053A0(v25, v2, &v56._countAndFlagsBits);
              *(v26 + 12) = 2048;
              *(v26 + 14) = v24;
              v11 = v23;
              v9 = v64;

              _os_log_impl(&_mh_execute_header, v21, v22, "gap in hierarchy: %s level %ld", v26, 0x16u);
              sub_1000387B0();
              sub_100001D1C();
              p_type = (&stru_10008CFF0 + 16);
              sub_100001D1C();
            }

            else
            {
            }
          }

          ++v10;
        }

        while (v9 + v10 != 1);
        v8 = v55;
        if (v54)
        {
LABEL_23:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_25:
            result = *(v0 + 160);
            v6 = *(v0 + 168);
            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      if (v8 == 0xE000000000000000)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    __break(1u);
    return result;
  }

LABEL_26:
  v27 = *(v0 + 256);
  if (sub_1000055F0(result, v6))
  {
    v28 = *(v0 + 264);
    v53 = *(v0 + 256);
    LODWORD(v64) = *(v0 + 310);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);
    v52 = *(v0 + 200);
    v32 = *(v0 + 184);
    v33 = *(v0 + 168);
    type metadata accessor for CachedSession(0);
    sub_1000058C8();
    sub_1000026BC(v34, v35, v36, v37);
    if (!v2)
    {
      v30 = 0;
    }

    v38 = type metadata accessor for Session(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();

    v41 = swift_task_alloc();
    *(v0 + 272) = v41;
    *v41 = v0;
    v41[1] = sub_10001111C;
    v42 = *(v0 + 256);
    v43 = *(v0 + 264);
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    v47 = *(v0 + 224);
    v46 = *(v0 + 232);
    v48 = *(v0 + 304);
    v49 = *(v0 + 309);
    v62 = v30;
    v63 = v47;
    v61 = v43;
    v60 = v64 & 1;
    v59 = v45;

    return sub_10005B5B8();
  }

  else
  {

    v50 = *(v0 + 264);

    sub_10000FF74();

    return v51(0);
  }
}

BOOL sub_100004CAC()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100004D10()
{
  result = v0[46];
  v2 = v0[44];
  v3 = *(v0[45] + 8);
  return result;
}

uint64_t sub_100004D20()
{

  return swift_slowAlloc();
}

uint64_t sub_100004D38()
{

  return swift_arrayDestroy();
}

uint64_t sub_100004D7C()
{

  return sub_10000A864(v0, type metadata accessor for SessionConfiguration.BackendHTTP);
}

uint64_t sub_100004DDC()
{
  sub_100004680();
  *(v1 + 248) = v21;
  *(v1 + 256) = v0;
  *(v1 + 310) = v22;
  *(v1 + 240) = v20;
  *(v1 + 208) = v18;
  *(v1 + 224) = v19;
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  *(v1 + 160) = v6;
  *(v1 + 168) = v7;
  *(v1 + 309) = v8;
  *(v1 + 304) = v9;
  v10 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  sub_100001D80(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 264) = swift_task_alloc();
  v13 = sub_100009A40();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100004EB0()
{
  v2 = v0[12];
  v1 = v0[13];
  return v0[11] + 136;
}

uint64_t sub_100004ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 16);

  return sub_10004ADC8(a1, a2, v9, a4, a5, v5, v6);
}

uint64_t sub_100004F00()
{

  return swift_allocError();
}

uint64_t sub_100004F18()
{

  return swift_slowAlloc();
}

uint64_t sub_100004F3C()
{
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
}

uint64_t sub_100004F60()
{
  v2 = *(v0 + 104);
  *(v0 + 504) = v2;
  v3 = *(v2 + 32);
  *(v0 + 572) = v3;
  v4 = -1;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v5 = v4 & *(v2 + 56);
}

uint64_t sub_100004FE0()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100005000(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000228D4(a2, a3);
  sub_100003C44(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100005058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 4) = v9;
  *(v10 + 12) = 2082;

  return sub_1000053A0(v12, v11, &a9);
}

uint64_t sub_100005080(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = v1;
}

uint64_t sub_1000050C4()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t sub_1000050E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005150()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100005160()
{
}

uint64_t sub_100005184()
{

  return sub_10000A80C(v0, type metadata accessor for XPCObject);
}

void sub_1000051AC()
{
  v0[50] = 0;
  v0[52] = 0;
  v0[54] = 0;
  v0[56] = 0;
}

uint64_t sub_10000522C()
{

  return swift_once();
}

uint64_t sub_100005284(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000052DC()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];

  return Error.localizedDescription.getter();
}

uint64_t sub_1000052F4()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return swift_getErrorValue();
}

id sub_100005328()
{
  v3 = v1[45];
  v9 = v1[46];
  v5 = v1[43];
  v4 = v1[44];
  v6 = v1[42];
  v7 = v1[39];

  return v0;
}

uint64_t sub_1000053A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000BD28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000BE28(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005284(v11);
  return v7;
}

uint64_t sub_100005470()
{

  return swift_beginAccess();
}

uint64_t sub_100005494()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return swift_getErrorValue();
}

BOOL sub_1000054D0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_1000054E8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100005504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008D90();
  v5 = *(v3 + 144);
  v6 = *(v5 + 16);

  if (v6 && (v7 = sub_100003BC0(), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v10 = v9 + 4;
  v11 = v9[2] + 1;
  while (--v11)
  {
    v12 = v10 + 3;
    v13 = *v10;
    v10 += 3;
    if (v13 == a3)
    {
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);

      break;
    }
  }

  return sub_10000534C();
}

uint64_t sub_1000055F0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  sub_10000277C();
  v8 = *(v2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v2 + 120);
  *(v2 + 120) = 0x8000000000000000;
  sub_100007C1C();
  v10 = sub_100003BC0();
  v12 = *(v36 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  else
  {
    v15 = v10;
    v3 = v11;
    sub_1000228D4(&unk_10008F3A0, &qword_10006E890);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
    {
      sub_100007C1C();
      v16 = sub_100003BC0();
      if ((v3 & 1) != (v17 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v15 = v16;
    }

    *(v2 + 120) = v36;
    if ((v3 & 1) == 0)
    {
      sub_10000D044(v15, a1, a2, 0, v36);
    }

    v18 = *(v36 + 56);
    v19 = *(v18 + 8 * v15);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v18 + 8 * v15) = v21;
      swift_endAccess();
      v22 = *(v2 + 128);
      v23 = (v22 + 1);
      v4 = v23 != v22 + 1;
      if (v23 == v22 + 1)
      {
        LOWORD(v22) = v22 + 1;
      }

      *(v2 + 128) = v22;
      if (qword_10008DD40 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  sub_10000986C();
  swift_once();
LABEL_11:
  v24 = type metadata accessor for Logger();
  sub_10000B6D0(v24, qword_10008EC18);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    swift_slowAlloc();
    sub_100006FB8();
    *v3 = 136446722;
    v27 = sub_100007C1C();
    *(v3 + 4) = sub_1000053A0(v27, v28, v29);
    *(v3 + 12) = 2048;
    v30 = *(v2 + 120);
    if (*(v30 + 16))
    {
      v31 = *(v5 + 120);

      sub_100007C1C();
      v32 = sub_100003BC0();
      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v32);
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
    }

    *(v3 + 14) = v34;

    *(v3 + 22) = 512;
    *(v3 + 24) = *(v5 + 128);

    _os_log_impl(&_mh_execute_header, v25, v26, "registered use for session config for %{public}s, now %lld uses. Total Active Sessions: %hu", v3, 0x1Au);
    sub_1000387B0();
    sub_100001D1C();
    sub_100003D78();
  }

  else
  {
  }

  return !v4;
}

uint64_t sub_1000058D4()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

void sub_100005908()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 65);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
}

uint64_t sub_10000591C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000059AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_100010C2C;

  return sub_100009BFC(a5, a6, a7, a8);
}

uint64_t sub_100005A70()
{
  sub_100008E60();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v5 = sub_100003900(v4);
  *v5 = v6;
  v7 = sub_1000043F4(v5);

  return sub_1000059AC(v7, v8, v9, v10, v11, v1, v2, v3);
}

BOOL sub_100005B24()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100005B94()
{
}

uint64_t sub_100005BB8()
{
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];

  return sub_100037808(v2, v4);
}

void sub_100005BD0()
{
  v1 = v0[3];
  v9 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
}

uint64_t sub_100005BFC()
{

  return swift_slowAlloc();
}

uint64_t sub_100005C14(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_100005C34()
{
  v2 = v0[78];
  v3 = v0[74];
  v4 = v0[69];
}

uint64_t sub_100005C50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000053A0(a1, a2, va);
}

uint64_t sub_100005C68()
{
  sub_100061548();
  v3 = sub_1000228D4(v1, v2);
  sub_100003C44(v3);
  v5 = *(v4 + 16);
  v6 = sub_100004EA4();
  v7(v6);
  return v0;
}

uint64_t sub_100005D30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 32);

    return sub_1000026BC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100005DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 32);

    return sub_100002694(v9, a2, v8);
  }
}

uint64_t sub_100005E6C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_1000228D4(&qword_10008E210, &qword_10006CC70) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10000A8C8, v1, 0);
}

uint64_t sub_100005FE4(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return Data.InlineData.init(_:)();
    }

    else
    {
      v5 = type metadata accessor for __DataStorage();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100006094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[58] = a3;
  v4[59] = a4;
  v4[56] = a1;
  v4[57] = a2;
  v5 = type metadata accessor for Date();
  v4[60] = v5;
  v6 = *(v5 - 8);
  v4[61] = v6;
  v7 = *(v6 + 64) + 15;
  v4[62] = swift_task_alloc();
  v8 = type metadata accessor for TimeZone();
  v4[63] = v8;
  v9 = *(v8 - 8);
  v4[64] = v9;
  v10 = *(v9 + 64) + 15;
  v4[65] = swift_task_alloc();

  return _swift_task_switch(sub_1000061B4, 0, 0);
}

uint64_t sub_1000061B4()
{
  v1 = *(v0 + 456);
  *(v0 + 352) = *v1;
  *(v0 + 368) = v1[1];
  *(v0 + 384) = v1[2];
  v2 = v1[2];
  v3 = *v1;
  *(v0 + 320) = v1[1];
  *(v0 + 336) = v2;
  *(v0 + 304) = v3;
  sub_100005CC0(v0 + 352, v0 + 400);
  sub_100005CC0(v0 + 368, v0 + 416);
  sub_100005CC0(v0 + 384, v0 + 432);
  if (qword_10008DDC0 != -1)
  {
    sub_100001EBC();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD8 != -1)
    {
      swift_once();
    }

    v4 = 5;
    if (!byte_100095B11)
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 528) = v4;
  v5 = *(v0 + 520);
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  v9 = *(v0 + 488);
  v8 = *(v0 + 496);
  v10 = *(v0 + 480);
  static TimeZone.current.getter();
  Date.init()();
  *(v0 + 536) = TimeZone.secondsFromGMT(for:)();
  (*(v9 + 8))(v8, v10);
  result = (*(v7 + 8))(v5, v6);
  v12 = qword_100095AF0;
  *(v0 + 544) = qword_100095AF0;
  if (v12)
  {

    v13 = swift_task_alloc();
    *(v0 + 552) = v13;
    *v13 = v0;
    v13[1] = sub_10000D848;
    v14 = *(v0 + 456);

    return sub_100005E6C(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for EventValue()
{
  result = qword_10008F428;
  if (!qword_10008F428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000063F0()
{
  v134 = v1;
  v6 = *(v1 + 184);
  v7 = OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents;
  v8 = *(v6 + OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_49:
    sub_10000522C();
    goto LABEL_25;
  }

  v2 = 4079420;
  v11 = *(v1 + 232);
  v12 = *(v1 + 176);
  *(v6 + OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents) = v10;
  sub_10000BC78(v12, v11);
  v13 = type metadata accessor for EventValue();
  if (sub_100002694(v11, 1, v13) != 1)
  {
    v15 = *(v1 + 224);
    v14 = *(v1 + 232);
    sub_100005C68();
    sub_100003B18();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v1 + 224);
    if (EnumCaseMultiPayload == 2)
    {
      *(v1 + 160) = *v17;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *(v1 + 168) = *v17;
LABEL_7:
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v5 = v18;
      goto LABEL_10;
    }

    sub_10000A864(v17, type metadata accessor for EventValue);
  }

  v5 = 0xE300000000000000;
  v127 = 4079420;
LABEL_10:
  v19 = *(v1 + 216);
  v20 = *(v1 + 176);
  sub_100005000(*(v1 + 232), &unk_10008F2F0, &qword_10006FFF0);
  sub_10000BC78(v20, v19);
  if (sub_100002694(v19, 1, v13) != 1)
  {
    v22 = *(v1 + 208);
    v21 = *(v1 + 216);
    sub_100005C68();
    sub_100003B18();
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v1 + 208);
    if (v23 == 2)
    {
      *(v1 + 144) = *v24;
      goto LABEL_15;
    }

    if (v23 == 1)
    {
      *(v1 + 152) = *v24;
LABEL_15:
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      v3 = v25;
      goto LABEL_18;
    }

    sub_10000A864(v24, type metadata accessor for EventValue);
  }

  v3 = 0xE300000000000000;
LABEL_18:
  v26 = *(v1 + 296);
  sub_100005000(*(v1 + 216), &unk_10008F2F0, &qword_10006FFF0);
  if (v26)
  {
    v0 = 0x69746C616572202DLL;
  }

  else
  {
    v0 = 0;
  }

  if (v26)
  {
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (qword_10008DDE8 != -1)
  {
    goto LABEL_49;
  }

LABEL_25:
  v27 = *(v1 + 184);
  v28 = type metadata accessor for Logger();
  *(v1 + 240) = sub_1000050E4(v28, qword_10008FB00);
  swift_retain_n();

  v29 = Logger.logObject.getter();
  LOBYTE(v27) = static os_log_type_t.default.getter();

  v128 = v27;
  v30 = os_log_type_enabled(v29, v27);
  v31 = v5;
  v32 = *(v1 + 184);
  if (v30)
  {
    log = v29;
    v122 = v0;
    v123 = v31;
    v124 = v2;
    v33 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v33 = 136447490;
    *(v33 + 4) = sub_1000053A0(v32[14], v32[15], &v131);
    *(v33 + 12) = 2082;
    v34 = v32[25];
    v35 = v32[26];
    v36 = v32[27];
    v125 = v7;
    v126 = v6;
    v37 = v32[28];
    v38 = v32[29];
    v132 = v32[24];
    v133 = v34;

    v39._countAndFlagsBits = 58;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v40._countAndFlagsBits = v35;
    v40._object = v36;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 58;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v37;
    v42._object = v38;
    String.append(_:)(v42);
    v43 = sub_1000053A0(v132, v133, &v131);

    *(v33 + 14) = v43;
    *(v33 + 22) = 2050;
    v44 = *(v126 + v125);

    if (!v44)
    {
      __break(1u);
      goto LABEL_51;
    }

    v46 = *(v1 + 184);
    *(v33 + 24) = v44 - 1;

    *(v33 + 32) = 2082;
    v47 = sub_1000053A0(v127, v123, &v131);

    *(v33 + 34) = v47;
    *(v33 + 42) = 2082;
    v48 = sub_1000053A0(v124, v3, &v131);

    *(v33 + 44) = v48;
    *(v33 + 52) = 2080;
    v49 = sub_1000053A0(v122, v4, &v131);

    *(v33 + 54) = v49;
    _os_log_impl(&_mh_execute_header, log, v128, "session %{public}s (%{public}s) sending message %{public}llu %{public}s:%{public}s%s", v33, 0x3Eu);
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100001D1C();
  }

  else
  {
    v50 = *(v1 + 184);
  }

  v52 = *(v1 + 176);
  v51 = *(v1 + 184);
  v53 = *(v51 + 112);
  *(v1 + 248) = v53;
  v54 = *(v51 + 120);
  *(v1 + 256) = v54;
  memcpy((v1 + 16), (v51 + OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider), 0x60uLL);

  v55 = sub_1000070A0();
  swift_isUniquelyReferenced_nonNull_native();
  v132 = v52;
  sub_100007B80();
  sub_100007670(v55, v56, 0, v57, &v132);
  v58 = v132;
  *(v1 + 264) = v132;
  v59 = qword_10008DDC0;

  if (v59 != -1)
  {
    result = swift_once();
  }

  if (byte_100095B00 == 1)
  {
    v60 = *(v1 + 200);
    v61 = *(v1 + 184);
    type metadata accessor for TaskPriority();
    v62 = sub_100004FCC();
    sub_1000026BC(v62, v63, v64, v65);
    sub_100002A00();
    v68 = sub_100010240(v66, v67);
    v69 = swift_allocObject();
    v69[2] = v61;
    v69[3] = v68;
    v69[4] = v61;
    v69[5] = v53;
    v69[6] = v54;
    v69[7] = v58;
    swift_retain_n();

    v70 = sub_10001234C();
    sub_10005A254(v70, v71, v72, v73, v69);
  }

  v74 = *(v1 + 184);
  v75 = *(v74 + OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend);
  if (v75)
  {
    v76 = *(v1 + 200);
    v129 = *(v1 + 192);
    v77 = v53;
    v78 = *(v74 + OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend + 8);
    type metadata accessor for TaskPriority();
    v79 = sub_100004FCC();
    sub_1000026BC(v79, v80, v81, v82);
    sub_100002A00();
    v85 = sub_100010240(v83, v84);
    sub_100061664();
    v86 = swift_allocObject();
    v86[2] = v74;
    v86[3] = v85;
    v86[4] = v75;
    v86[5] = v78;
    v53 = v77;
    v86[6] = v77;
    v86[7] = v54;
    v86[8] = v58;
    v86[9] = v74;
    v86[10] = v129;
    swift_retain_n();

    swift_unknownObjectRetain();
    v87 = sub_10001234C();
    sub_10002D48C(v87, v88, v89, v90, v86);
  }

  if (*(v1 + 296))
  {
    v91 = *(v1 + 184);

    v92 = v91 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend;
    v93 = *(v91 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend);
    if (v93)
    {
      v130 = v54;
      v94 = v53;
      v96 = *(v1 + 192);
      v95 = *(v1 + 200);
      v97 = *(v1 + 184);
      v98 = *(v92 + 8);
      type metadata accessor for TaskPriority();
      v99 = sub_100004FCC();
      sub_1000026BC(v99, v100, v101, v102);
      sub_100002A00();
      v105 = sub_100010240(v103, v104);
      sub_100061664();
      v106 = swift_allocObject();
      v106[2] = v97;
      v106[3] = v105;
      v106[4] = v97;
      v106[5] = v93;
      v106[6] = v98;
      v106[7] = v94;
      v106[8] = v130;
      v106[9] = v58;
      v106[10] = v96;
      swift_retain_n();
      swift_unknownObjectRetain();
      v107 = sub_10001234C();
      sub_10002D48C(v107, v108, v109, v110, v106);
    }

    else
    {

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v113, v114))
      {
        *swift_slowAlloc() = 0;
        sub_1000028B8();
        _os_log_impl(v115, v116, v117, v118, v119, 2u);
        sub_100001D1C();
      }
    }

    sub_100061618();

    sub_100001D4C();

    return v120();
  }

  v111 = qword_100095AD8;
  *(v1 + 272) = qword_100095AD8;
  if (!v111)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v112 = swift_task_alloc();
  *(v1 + 280) = v112;
  *v112 = v1;
  v112[1] = sub_1000106EC;

  return sub_10000810C();
}

uint64_t sub_100006DB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[8];

  v5 = v0[9];

  sub_100061664();

  return _swift_deallocObject(v6, v7, v8);
}

uint64_t sub_100006E08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  sub_100061664();

  return _swift_deallocObject(v6, v7, v8);
}

uint64_t sub_100006E5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100006EAC()
{
  sub_100061548();
  v2 = v1(0);
  sub_100003C44(v2);
  v4 = *(v3 + 16);
  v5 = sub_100004EA4();
  v6(v5);
  return v0;
}

uint64_t sub_100006F04()
{
  sub_100061548();
  v2 = v1(0);
  sub_100003C44(v2);
  v4 = *(v3 + 32);
  v5 = sub_100004EA4();
  v6(v5);
  return v0;
}

uint64_t sub_100006F6C(unsigned __int8 a1)
{

  return sub_10001A320(a1, v1 + 56);
}

uint64_t sub_100006F9C(uint64_t a1)
{
  v3 = *(v1 - 136);

  return sub_100002694(a1, 1, v3);
}

uint64_t sub_100006FB8()
{

  return swift_slowAlloc();
}

uint64_t (*sub_100006FD4(uint64_t a1))()
{
  *(v2 + 48) = a1;
  *(a1 + 16) = v1;
  return sub_10003E4FC;
}

uint64_t sub_100007064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1000070A0()
{
  v1 = type metadata accessor for EventValue();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = (&v56 - v5);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v6 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10006D1C0;
  v61 = v9;
  v10 = (v9 + v8);
  v11 = *(v6 + 48);
  *v10 = 0x7265646E65735FLL;
  v10[1] = 0xE700000000000000;
  v67 = *(v0 + 3);
  *(v10 + v11) = v67;
  sub_10000461C();
  v12 = (v10 + v7);
  v13 = *(v6 + 48);
  *v12 = 0x4E746E65696C635FLL;
  v12[1] = 0xEB00000000656D61;
  v66 = *(v0 + 4);
  sub_1000097A8(v10 + v7, v66);
  v14 = v10 + 2 * v7;
  v15 = *(v6 + 48);
  strcpy(v14, "_serviceName");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  v65 = *(v0 + 5);
  sub_1000097A8(v14, v65);
  v16 = (v10 + 3 * v7);
  v17 = *(v6 + 48);
  *v16 = 0x6E6F69737365735FLL;
  v16[1] = 0xEA00000000004449;
  v64 = *(v0 + 1);
  sub_1000097A8(v16, v64);
  v18 = (v10 + 4 * v7);
  v19 = *(v6 + 48);
  *v18 = 0x616E7265746E695FLL;
  v18[1] = 0xE90000000000006CLL;
  v20 = *v0;
  sub_10000284C(v18);
  v21 = (v10 + 5 * v7);
  v22 = *(v6 + 48);
  *v21 = 0x6E6F7A656D69745FLL;
  v21[1] = 0xEF74657366664F65;
  v23 = v0[1];
  sub_10000284C(v21);
  v24 = (v10 + 6 * v7);
  v25 = *(v6 + 48);
  *v24 = 0x6449746E65696C63;
  v24[1] = 0xE800000000000000;
  v63 = *(v0 + 2);
  sub_1000097A8(v24, v63);
  v26 = &v10[v7] - v7;
  v27 = &v26[*(v6 + 48)];
  strcpy(v26, "_productFamily");
  v26[15] = -18;
  sub_100005CC0(&v67, v62);
  sub_100005CC0(&v66, v62);
  sub_100005CC0(&v65, v62);
  sub_100005CC0(&v64, v62);
  sub_100005CC0(&v63, v62);
  if (qword_10008DD10 != -1)
  {
    swift_once();
  }

  v28 = *algn_10008E438;
  v60 = *algn_10008E438;
  *v27 = qword_10008E430;
  *(v27 + 1) = v28;
  sub_10000461C();
  v29 = &v10[v7];
  v30 = (v29 + *(v6 + 48));
  *v29 = 0x656D614E736F5FLL;
  v29[1] = 0xE700000000000000;
  v31 = unk_10008E448;
  v59 = unk_10008E448;
  *v30 = qword_10008E440;
  v30[1] = v31;
  sub_10000461C();
  v32 = v10 + 9 * v7;
  v33 = &v32[*(v6 + 48)];
  strcpy(v32, "_productModel");
  *(v32 + 7) = -4864;
  v34 = unk_10008E458;
  *v33 = qword_10008E450;
  *(v33 + 1) = v34;
  sub_10000461C();
  v35 = sub_10000512C(10);
  *v36 = 0x6973726556736F5FLL;
  v36[1] = 0xEA00000000006E6FLL;
  v37 = unk_10008E468;
  *v35 = qword_10008E460;
  v35[1] = v37;
  sub_10000461C();
  v38 = sub_10000512C(11);
  *v39 = 0x646C6975625FLL;
  v39[1] = 0xE600000000000000;
  v40 = unk_10008E478;
  *v38 = qword_10008E470;
  v38[1] = v40;
  sub_10000461C();
  v41 = sub_10000512C(12);
  *v42 = 0x5674726F7065725FLL;
  v42[1] = 0xEB00000000737265;
  v43 = unk_10008E488;
  *v41 = qword_10008E480;
  v41[1] = v43;
  sub_10000461C();
  v44 = (v10 + 13 * v7);
  v45 = *(v6 + 48);
  sub_100007A24();
  *v44 = v46 | 1;
  v44[1] = v47;

  *(v44 + v45) = sub_10000C2E8();
  swift_storeEnumTagMultiPayload();
  v48 = (v10 + 14 * v7);
  v49 = *(v6 + 48);
  sub_100007A24();
  *v48 = v51;
  v48[1] = v50;
  *(v48 + v49) = sub_10000CB08();
  swift_storeEnumTagMultiPayload();
  v52 = Dictionary.init(dictionaryLiteral:)();
  if (qword_10008DDC0 != -1)
  {
    sub_100001EBC();
  }

  if (byte_100095B00 == 1)
  {
    v53 = *algn_10008E498;
    v54 = v57;
    *v57 = qword_10008E490;
    *(v54 + 8) = v53;
    sub_10000461C();
    sub_1000166B4(v54, v58);

    swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v52;
    sub_100016564();
    return v62[0];
  }

  return v52;
}

uint64_t sub_100007670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for EventValue();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v46 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v45 - v14;
  v16 = sub_1000228D4(&unk_10008FD50, &unk_100070050);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (v45 - v18);
  sub_100007064(a1, a2, a3, v51);
  v47 = v51[0];
  v48 = v51[1];
  v49 = v51[2];
  v50 = v52;
  v45[1] = a1;

  v45[0] = a3;

  while (1)
  {
    sub_100007C94(v19);
    v20 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    if (sub_100002694(v19, 1, v20) == 1)
    {
      sub_100008104();
    }

    v21 = *(v20 + 48);
    v23 = *v19;
    v22 = v19[1];
    sub_100006F04();
    v24 = *a5;
    v26 = sub_100003BC0();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_1000601E8(v29, a4 & 1);
      v31 = *a5;
      v32 = sub_100003BC0();
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v26 = v32;
    }

    v34 = *a5;
    if (v30)
    {
      v35 = v34[7];
      v36 = *(v53 + 72) * v26;
      v37 = v46;
      sub_100006EAC();
      sub_10000A864(v15, type metadata accessor for EventValue);

      sub_100020548(v37, v34[7] + v36);
      a4 = 1;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v38 = (v34[6] + 16 * v26);
      *v38 = v23;
      v38[1] = v22;
      v39 = v34[7];
      v40 = *(v53 + 72);
      sub_100006F04();
      v41 = v34[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_15;
      }

      v34[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100007A78()
{

  return sub_10003F094(v0, type metadata accessor for SQLiteDB.Location);
}

uint64_t sub_100007AA0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + ((a1 << 10) | (16 * v1)));
  *(v3 + 536) = v5[1];
  *(v3 + 544) = *v5;
}

void sub_100007ADC()
{
  v0[52] = 0;
  v0[54] = 0;
  v0[56] = 0;
}

uint64_t sub_100007B04()
{
}

uint64_t sub_100007B20(uint64_t a1)
{
  *(a1 + 8) = sub_100054D80;
  v2 = *(v1 + 312);
  return *(v1 + 304);
}

NSString sub_100007B50()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100007B98()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_100007BBC()
{
  v2 = *(v0 + 288);
  v3 = **(v0 + 280);
  return v1;
}

uint64_t sub_100007BD0()
{

  return sub_100002694(v1, 1, v0);
}

uint64_t sub_100007BEC()
{
  v2 = v0[52];
  v3 = v0[53];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[44];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
}

void sub_100007C34(int a1@<W8>)
{
  v1[52] = a1;
  v1[54] = a1;
  v1[56] = a1;
}

uint64_t sub_100007C50(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 128);
  return v2 + 16;
}

BOOL sub_100007C60(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100007C94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = type metadata accessor for EventValue();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = (&v36 - v15);
  v18 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v20 = v1[3];
  v21 = v1[4];
  v37 = v6;
  v41 = v19;
  if (v21)
  {
    v38 = v13;
    v39 = a1;
    v22 = v3;
    v23 = v20;
LABEL_7:
    v24 = (v21 - 1) & v21;
    v25 = *(v18 + 56);
    v26 = (*(v18 + 48) + 16 * (__clz(__rbit64(v21)) | (v23 << 6)));
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v40 + 72);
    sub_100006EAC();
    v30 = *(v22 + 48);
    *v16 = v27;
    v16[1] = v28;
    v3 = v22;
    sub_100006F04();
    sub_1000026BC(v16, 0, 1, v22);

    v13 = v38;
    a1 = v39;
LABEL_8:
    *v1 = v18;
    v1[1] = v17;
    v1[2] = v41;
    v1[3] = v20;
    v1[4] = v24;
    v31 = v1[5];
    v32 = v1[6];
    sub_100007FDC();
    v33 = 1;
    if (sub_100002694(v13, 1, v3) != 1)
    {
      v34 = v37;
      sub_100007FDC();
      v31(v34);
      sub_100005000(v34, &unk_10008FD40, &unk_100070040);
      v33 = 0;
    }

    v35 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    return sub_1000026BC(a1, v33, 1, v35);
  }

  else
  {
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= ((v19 + 64) >> 6))
      {
        sub_1000026BC(&v36 - v15, 1, 1, v3);
        v24 = 0;
        goto LABEL_8;
      }

      v21 = *(v17 + 8 * v23);
      ++v20;
      if (v21)
      {
        v38 = v13;
        v39 = a1;
        v22 = v3;
        v20 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100007FDC()
{
  sub_100061548();
  v3 = sub_1000228D4(v1, v2);
  sub_100003C44(v3);
  v5 = *(v4 + 32);
  v6 = sub_100004EA4();
  v7(v6);
  return v0;
}

uint64_t sub_100008034(uint64_t a1, uint64_t a2)
{
  sub_100006EAC();

  return a2;
}

uint64_t sub_100008088@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_1000228D4(&unk_10008FD40, &unk_100070040) + 48);
  v5 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  v6 = a1[1];
  result = sub_100008034(a2 + *(v5 + 48), *a1);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_10000810C()
{
  sub_100004680();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = type metadata accessor for String.Encoding();
  sub_100001D80(v5);
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100008198, v0, 0);
}

uint64_t sub_100008198()
{
  v1 = v0[5];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = JSONEncoder.init()();
  v0[2] = v1;
  v0[8] = v5;

  sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
  sub_10000847C();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;
  v0[9] = 0;
  v0[10] = v6;
  v0[11] = v7;
  v9 = v0[5];

  sub_100009AEC();
  if (Data.count.getter() > 0x400000)
  {
    if (qword_10008DD58 != -1)
    {
      sub_1000046E8();
    }

    v10 = type metadata accessor for Logger();
    sub_1000050E4(v10, qword_10008F040);
    v11 = sub_100009AEC();
    sub_100025CD8(v11, v12);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      v24 = sub_100009AEC();
      sub_100005954(v24, v25);
      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    *v15 = 134349312;
    v16 = v15;
    v17 = 0;
    switch(v8 >> 62)
    {
      case 1uLL:
        LODWORD(v17) = HIDWORD(v6) - v6;
        if (!__OFSUB__(HIDWORD(v6), v6))
        {
          v17 = v17;
LABEL_15:
          *(v15 + 4) = v17;
          v29 = sub_100009AEC();
          sub_100005954(v29, v30);
          *(v16 + 12) = 2050;
          *(v16 + 14) = 0x400000;
          _os_log_impl(&_mh_execute_header, v13, v14, "event too large: (%{public}ld > %{public}lld", v16, 0x16u);
          sub_100001D1C();
LABEL_16:

          sub_100022DA8();
          sub_100011748();
          swift_allocError();
          *v31 = 0;
          swift_willThrow();
          v32 = sub_100009AEC();
          sub_100005954(v32, v33);

          v34 = v0[7];

          sub_100001D4C();
          sub_100005358();

          __asm { BRAA            X1, X16 }
        }

        __break(1u);
LABEL_20:
        __break(1u);
        break;
      case 2uLL:
        v27 = *(v6 + 16);
        v26 = *(v6 + 24);
        v28 = __OFSUB__(v26, v27);
        v17 = v26 - v27;
        if (!v28)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      case 3uLL:
        goto LABEL_15;
      default:
        v17 = BYTE6(v8);
        goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    JUMPOUT(0x10000846CLL);
  }

  v18 = v0[7];
  static String.Encoding.utf8.getter();
  sub_100009AEC();
  v0[12] = String.init(data:encoding:)();
  v0[13] = v19;
  if (!v19)
  {
    goto LABEL_21;
  }

  v0[14] = *(v0[6] + 112);
  sub_100005358();

  return _swift_task_switch(v20, v21, v22);
}

unint64_t sub_10000847C()
{
  result = qword_10008E788;
  if (!qword_10008E788)
  {
    sub_100025D78(&qword_10008E780, &unk_10006FFD0);
    sub_10002C5B4(&qword_10008E790, type metadata accessor for EventValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E788);
  }

  return result;
}

uint64_t sub_100008538(void *a1)
{
  v4 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v5 = sub_100001D80(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000286C();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = (&v111 - v12);
  v117 = sub_1000228D4(&qword_10008F378, &qword_10006EEC0);
  sub_100001EDC(v117);
  v111 = v14;
  v16 = *(v15 + 64);
  sub_100003EC8();
  __chkstk_darwin(v17);
  v118 = &v111 - v18;
  v19 = type metadata accessor for UUID();
  v20 = sub_100001EDC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_100001EAC();
  v27 = v26 - v25;
  v28 = type metadata accessor for EventValue();
  v29 = sub_100001EDC(v28);
  v115 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10000286C();
  v116 = v33 - v34;
  sub_1000029A4();
  __chkstk_darwin(v35);
  v114 = &v111 - v36;
  sub_1000029A4();
  __chkstk_darwin(v37);
  sub_100012314();
  __chkstk_darwin(v38);
  v40 = (&v111 - v39);
  sub_1000098A8();
  sub_1000096D4();
  v120 = v28;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v90 = *v40;
      v91 = a1[3];
      v92 = a1[4];
      sub_100003DCC();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008F48();
      sub_1000050A0();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      goto LABEL_19;
    case 2u:
      v52 = *v40;
      v53 = a1[3];
      v54 = a1[4];
      sub_100003DCC();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008F48();
      sub_1000050A0();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      goto LABEL_19;
    case 3u:
      v55 = *v40;
      v56 = a1[3];
      v57 = a1[4];
      v58 = sub_100045EC4();
      sub_100008DE4(v58, v59);
      sub_100003F98();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008ED4(v122, v123);
      v1 = v121;
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      goto LABEL_19;
    case 4u:
      v49 = *v40;
      v50 = a1[3];
      v51 = a1[4];
      sub_100003DCC();
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008F48();
      sub_1000050A0();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
LABEL_19:
      v48 = v1;
      goto LABEL_20;
    case 5u:
      (*(v22 + 32))(v27, v40, v19);
      v94 = a1[3];
      v95 = a1[4];
      v96 = sub_100045EC4();
      sub_100008DE4(v96, v97);
      sub_100003F98();
      dispatch thunk of Encoder.singleValueContainer()();
      UUID.uuidString.getter();
      sub_100008F48();
      sub_100045EC4();
      v98 = v121;
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      v121 = v98;
      (*(v22 + 8))(v27, v19);
      goto LABEL_28;
    case 6u:
      v99 = *v40;
      v100 = a1[3];
      v101 = a1[4];
      sub_100003DCC();
      dispatch thunk of Encoder.unkeyedContainer()();
      v102 = 0;
      v103 = *(v99 + 16);
      v104 = v115;
      while (2)
      {
        if (v103 == v102)
        {
          goto LABEL_28;
        }

        if (v102 >= *(v99 + 16))
        {
          goto LABEL_33;
        }

        v105 = v99 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
        v106 = *(v104 + 72);
        sub_1000098A8();
        sub_1000096D4();
        sub_100008ED4(v122, v123);
        sub_10001E858();
        v107 = v121;
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        v121 = v107;
        if (!v107)
        {
          ++v102;
          sub_100001FE8();
          sub_10000A80C(v2, v108);
          continue;
        }

        break;
      }

      sub_100001FE8();
      sub_10000A80C(v2, v109);
LABEL_28:

      return sub_100005284(v122);
    case 7u:
      v60 = *v40;
      v61 = a1[4];
      sub_100008DE4(a1, a1[3]);
      sub_1000164A0();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v62 = 0;
      v64 = v60 + 64;
      v63 = *(v60 + 64);
      v112 = v13;
      v113 = v60;
      v65 = *(v60 + 32);
      sub_100009754();
      v68 = v67 & v66;
      v70 = (v69 + 63) >> 6;
      v119 = v10;
      if ((v67 & v66) != 0)
      {
        goto LABEL_7;
      }

      break;
    default:
      v41 = *v40;
      v42 = v40[1];
      v43 = a1[3];
      v44 = a1[4];
      v45 = sub_10000BF10();
      sub_100008DE4(v45, v46);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_100008ED4(v122, v123);
      sub_100003F98();
      v47 = v121;
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      v48 = v47;

LABEL_20:
      result = sub_100005284(v122);
      v121 = v48;
      return result;
  }

  while (1)
  {
LABEL_8:
    v72 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      JUMPOUT(0x100008CACLL);
    }

    if (v72 >= v70)
    {
      break;
    }

    v68 = *(v64 + 8 * v72);
    ++v62;
    if (v68)
    {
      v71 = v121;
      v62 = v72;
      goto LABEL_12;
    }
  }

  v89 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
  sub_1000026BC(v10, 1, 1, v89);
  v68 = 0;
  while (1)
  {
    sub_1000164F4(v10, v13);
    v82 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    if (sub_100002694(v13, 1, v82) == 1)
    {

      return (*(v111 + 8))(v118, v117);
    }

    v84 = *v13;
    v83 = v13[1];
    v85 = *(v82 + 48);
    sub_100004734();
    v86 = v116;
    sub_10000B670();
    v122[0] = v84;
    v122[1] = v83;
    sub_10001E858();
    v87 = v121;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v121 = v87;
    if (v87)
    {
      break;
    }

    sub_100001FE8();
    sub_10000A80C(v86, v88);
    v10 = v119;
    if (!v68)
    {
      goto LABEL_8;
    }

LABEL_7:
    v71 = v121;
    v72 = v62;
LABEL_12:
    v121 = v71;
    v73 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
    v74 = *(v113 + 56);
    v75 = (*(v113 + 48) + 16 * (v73 | (v72 << 6)));
    v77 = *v75;
    v76 = v75[1];
    v78 = *(v115 + 72);
    sub_1000098A8();
    sub_1000096D4();
    v79 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    v80 = *(v79 + 48);
    v81 = v119;
    *v119 = v77;
    v81[1] = v76;
    v10 = v81;
    sub_100004734();
    sub_10000B670();
    sub_1000026BC(v10, 0, 1, v79);

    v13 = v112;
  }

  sub_100001FE8();
  sub_10000A80C(v86, v110);
  return (*(v111 + 8))(v118, v117);
}

uint64_t sub_100008CF8()
{

  return swift_slowAlloc();
}

uint64_t sub_100008D20(uint64_t a1, uint64_t a2)
{
  sub_1000026BC(v2, a2, 1, v3);

  return sub_100005000(v2, v4, v5);
}

uint64_t sub_100008D68(uint64_t a1)
{
  *(a1 + 8) = sub_10005B1A0;
  v2 = *(v1 + 128);
  return v1 + 16;
}

uint64_t sub_100008D90()
{

  return swift_beginAccess();
}

uint64_t sub_100008DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t sub_100008DC8()
{

  return Error.localizedDescription.getter();
}

void *sub_100008DE4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100008E60()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_100008ED4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_100008F30()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
}

uint64_t sub_100008F48()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 96);

  return sub_100008ED4(v0 - 120, v3);
}

uint64_t sub_100008F70()
{
}

uint64_t sub_100008F94(uint64_t result)
{
  *(result + 8) = sub_10005D05C;
  v2 = *(v1 + 632);
  return result;
}

uint64_t sub_100008FBC()
{
  *(v1 + 432) = *(v2 + 8);
  *(v1 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_100008FDC()
{

  return sub_100023508(v0, type metadata accessor for SQLiteDB.Location);
}

uint64_t sub_100009004(uint64_t a1)
{
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;
  v5 = *(v1 + 360);

  return sub_1000053A0(v5, v2, (v1 + 408));
}

uint64_t sub_100009064()
{
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[15];
}

uint64_t sub_1000090A0()
{
  v3 = *(v0 + 200);
  v4 = *(v1 - 72);

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void sub_100009108(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_100009128@<W0>(unint64_t a1@<X8>)
{
  result = a1 > 1;
  *(v2 + 40) = v1;
  return result;
}

uint64_t sub_10000914C(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = v2;
  *(a1 + 12) = 2050;

  return sub_10003BB7C();
}

uint64_t sub_10000917C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000091A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t sub_1000091D0()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  result = v0[42];
  v8 = v0[39];
  return result;
}

uint64_t sub_1000091EC()
{
  sub_100002624();
  v1 = v0[14];
  v2 = v0[9];
  sub_100001D10();
  v3 = sub_100009400();
  if (v2)
  {
    v0[15] = v2;
    v4 = v0[13];
    v5 = v0[6];

    v8 = sub_10003D4BC;
    v9 = v5;
  }

  else
  {
    sub_1000092D4(v3, v0[3], v0[4], v0[5], v0[12], v0[13]);
    v6 = v0[13];
    v7 = v0[6];

    v8 = sub_100010680;
    v9 = v7;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1000092D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = a5;
  *(inited + 80) = a6;

  sub_100009524(inited);
  if (v6)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_100009400()
{
  v1 = *(v0 + 112);
  if (*(v1 + 24))
  {
    sub_100022880();
    sub_100004F00();
    *v2 = 3;
  }

  else
  {
    v11 = 0;
    v3 = String.utf8CString.getter();
    v4 = *(v3 + 16);
    if (v4 >> 31)
    {
      __break(1u);
    }

    v5 = sqlite3_prepare_v2(*(v1 + 16), (v3 + 32), v4, &v11, 0);

    v6 = v11;
    if (v11 && !v5)
    {
      type metadata accessor for SQLiteDB.Statement();
      sub_10000C644();
      result = swift_allocObject();
      *(result + 24) = 0;
      *(result + 16) = v6;
      return result;
    }

    sub_100017598();
    v8 = sub_100004F00();
    sub_10000BE84(v8, v9);
    *(v10 + 8) = 0xD00000000000001BLL;
    *(v10 + 16) = v6;
  }

  return swift_willThrow();
}

uint64_t sub_100009524(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_11;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

      *&v13 = v3;
      result = sub_100009658(v5 + 40 * v3, &v13 + 8);
      v6 = v13;
      v8 = v14;
      v9 = v15;
    }

    v16[0] = v6;
    v16[1] = v8;
    v16[2] = v9;
    if (!v9)
    {
      return result;
    }

    v12 = v6;
    result = sub_1000096BC((v16 + 8), &v13);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v10 = *(&v14 + 1);
    v11 = v15;
    sub_100008DE4(&v13, *(&v14 + 1));
    (*(v11 + 8))(v1, v12 + 1, v10, v11);
    result = sub_100005284(&v13);
    v3 = v7;
    if (v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100009658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000096BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000096D4()
{
  v1 = sub_1000175F8();
  v3 = v2(v1);
  sub_100003C44(v3);
  v5 = *(v4 + 16);
  v6 = sub_100004EA4();
  v7(v6);
  return v0;
}

uint64_t sub_100009728(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1000097A8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + v2) = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000097DC()
{

  return swift_once();
}

uint64_t sub_1000097FC()
{
  v2 = *(v0 - 112);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100009850()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000098E4()
{

  return swift_once();
}

uint64_t sub_100009918()
{

  return swift_once();
}

uint64_t sub_100009968()
{

  return swift_once();
}

void sub_100009988()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[92];
  v6 = v0[89];
  v7 = v0[86];
  v8 = v0[83];
}

uint64_t sub_100009A50()
{
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[37] + 1;

  return sub_1000377AC(v3);
}

uint64_t sub_100009A6C()
{

  return type metadata accessor for EventValue();
}

uint64_t sub_100009A9C()
{

  return sub_100006F04();
}

uint64_t sub_100009B24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100009B70(uint64_t a1)
{

  return sub_1000026BC(v1, 1, 1, a1);
}

uint64_t sub_100009BD4()
{

  return Logger.init()();
}

uint64_t sub_100009BFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = sub_100009E3C;

  return sub_100009CAC(a1, a2);
}

uint64_t sub_100009CAC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100009CD0, v2, 0);
}

uint64_t sub_100009CD0()
{
  sub_100004F30();
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 152);
  if (*(v2 + 16))
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = sub_100003BC0();
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      swift_endAccess();
      sub_100001D4C();
      v17 = v8;

      return v17(v9);
    }
  }

  result = swift_endAccess();
  v11 = qword_100095AE8;
  v0[11] = qword_100095AE8;
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v0[10];
  if (!*(v12 + 112))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = *(v12 + 112);

  XPCConnection.remoteUID.getter();

  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_10002DD40;
  v16 = v0[8];
  v15 = v0[9];

  return sub_100035FA0();
}

uint64_t sub_100009E3C()
{
  sub_100004680();
  sub_100003B0C();
  sub_100001D58();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  sub_1000043E4();
  *v7 = v6;
  *(v9 + 56) = v8;

  return _swift_task_switch(sub_10000A980, v5, 0);
}

uint64_t sub_100009F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100002760();
  a19 = v21;
  a20 = v22;
  sub_100002618();
  a18 = v20;
  if (*(v20 + 152) != 2)
  {
LABEL_17:
    v50 = *(v20 + 104);
    v49 = *(v20 + 112);

    sub_100001D4C();
    sub_100008E44();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
  }

  v23 = *(v20 + 112);
  v24 = *(v20 + 80);
  v25 = MessageKeys.payload.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];

  RTCXPCDictionary.subscript.getter(v24, v23);

  type metadata accessor for XPCObject();
  v28 = sub_1000110B4(v23);
  v29 = *(v20 + 112);
  if (v28 == 1)
  {
    sub_100005000(*(v20 + 112), &qword_10008F360, &qword_100070A20);
LABEL_12:
    if (qword_10008DDE8 != -1)
    {
      sub_10000522C();
    }

    v38 = *(v20 + 88);
    v39 = type metadata accessor for Logger();
    sub_1000050E4(v39, qword_10008FB00);

    v33 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v40))
    {
      v41 = *(v20 + 88);
      v42 = sub_100004D20();
      v43 = sub_100004F18();
      a9 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1000053A0(*(v41 + 112), *(v41 + 120), &a9);
      sub_1000028B8();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      sub_100005284(v43);
      sub_100001D1C();
      sub_100001D1C();
    }

LABEL_16:

    goto LABEL_17;
  }

  sub_100004EA4();
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_10000A864(v29, type metadata accessor for XPCObject);
    goto LABEL_12;
  }

  v30 = *(v20 + 88);
  isEscapingClosureAtFileLocation = *v29;
  *(v20 + 120) = isEscapingClosureAtFileLocation;
  if (*(v30 + OBJC_IVAR____TtC13rtcreportingd7Session_receivedEnd))
  {
    if (qword_10008DDE8 != -1)
    {
      sub_10000522C();
      v88 = *(v20 + 88);
    }

    v32 = type metadata accessor for Logger();
    sub_1000050E4(v32, qword_10008FB00);
    sub_1000615A4();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v20 + 88);
      v36 = sub_100004D20();
      v37 = sub_100004F18();
      a9 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1000053A0(*(v35 + 112), *(v35 + 120), &a9);
      _os_log_impl(&_mh_execute_header, v33, v34, "session %{public}s received event after ending", v36, 0xCu);
      sub_100005284(v37);
      sub_100003D78();
      sub_100001D1C();
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v60 = (v20 + 16);
  v61 = v20 + 64;
  if (*(v30 + 176) != 1)
  {
    v62 = *(v30 + 240);
    if (*(v30 + 176) || v62 != 1)
    {
      v72 = *(v20 + 104);
      v73 = *(v20 + 80);
      v74 = MessageKeys.realtime.unsafeMutableAddressor();
      v75 = *v74;
      v76 = v74[1];

      RTCXPCDictionary.subscript.getter(v73, v72);

      v77 = sub_1000110B4(v72);
      v78 = *(v20 + 104);
      if (v77 == 1)
      {
        sub_100005000(*(v20 + 104), &qword_10008F360, &qword_100070A20);
      }

      else
      {
        v79 = *(v20 + 104);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          if (v62 == 1)
          {
            v80 = *v78;
          }

          else if (*v78)
          {
            if (qword_10008DDE8 == -1)
            {
              goto LABEL_36;
            }

            goto LABEL_41;
          }
        }

        else
        {
          sub_10000A864(v78, type metadata accessor for XPCObject);
        }
      }
    }
  }

  while (1)
  {
    v63 = *(v20 + 88);
    v64 = *(v20 + 96);
    type metadata accessor for EventValue();
    *(v20 + 64) = Dictionary.init(dictionaryLiteral:)();
    count = xpc_dictionary_get_count(isEscapingClosureAtFileLocation);
    sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
    Dictionary.reserveCapacity(_:)(count);
    v66 = swift_allocObject();
    *(v20 + 128) = v66;
    v66[2] = v63;
    v66[3] = v61;
    v66[4] = v64;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_10000A8BC;
    *(v67 + 24) = v66;
    *(v20 + 48) = sub_10000B070;
    *(v20 + 56) = v67;
    *(v20 + 16) = _NSConcreteStackBlock;
    *(v20 + 24) = 1107296256;
    *(v20 + 32) = sub_10000A6E8;
    *(v20 + 40) = &unk_100088708;
    v60 = _Block_copy(v60);
    v61 = *(v20 + 56);

    swift_unknownObjectRetain();

    xpc_dictionary_apply(isEscapingClosureAtFileLocation, v60);
    swift_unknownObjectRelease();
    _Block_release(v60);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_41:
    sub_10000522C();
LABEL_36:
    v81 = *(v20 + 88);
    v82 = type metadata accessor for Logger();
    sub_1000050E4(v82, qword_10008FB00);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = *(v20 + 88);
      v86 = sub_100004D20();
      v87 = sub_100004F18();
      a9 = v87;
      *v86 = 136446210;
      *(v86 + 4) = sub_1000053A0(*(v85 + 112), *(v85 + 120), &a9);
      _os_log_impl(&_mh_execute_header, v83, v84, "session %{public}s sent realtime event to non-realtime session", v86, 0xCu);
      sub_100005284(v87);
      sub_100001D1C();
      sub_100001D64();
    }
  }

  reply = xpc_dictionary_create_reply(*(v20 + 80));
  if (reply)
  {
    xpc_connection_send_message(*(*(v20 + 72) + 16), reply);
    swift_unknownObjectRelease();
  }

  *(v20 + 136) = *(v20 + 64);

  v69 = swift_task_alloc();
  *(v20 + 144) = v69;
  *v69 = v20;
  v69[1] = sub_10001092C;
  v70 = *(v20 + 88);
  sub_100008E44();

  return sub_10000BA94();
}

uint64_t sub_10000A614()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_10000A740()
{
  sub_100004680();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 152) = v3;
  *(v1 + 72) = v4;
  *(v1 + 96) = *v0;
  v5 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  sub_100001D80(v5);
  v7 = *(v6 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  sub_1000614E8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000A80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100003C44(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000A864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100003C44(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_10000A8C8()
{
  v1 = qword_100095AD8;
  v0[18] = qword_100095AD8;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_10000D1CC;
    v3 = v0[11];
    v4 = v0[6];

    sub_10000C624(v3, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000A980()
{
  v19 = v0;
  if (*(v0 + 56))
  {
    v1 = *(*(v0 + 40) + 112);
    *(v0 + 64) = v1;
    if (v1)
    {

      v2 = swift_task_alloc();
      *(v0 + 72) = v2;
      *v2 = v0;
      v2[1] = sub_100010AC0;
      v3 = *(v0 + 32);
      v4 = *(v0 + 80);

      sub_10000A740();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC();
    }

    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = type metadata accessor for Logger();
    sub_10000B6D0(v7, qword_10008E7B0);

    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_100004CAC())
    {
      v9 = *(v0 + 40);
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      sub_1000175B0();
      v18 = sub_100008CF8();
      *v5 = 136446466;
      *(v5 + 4) = sub_1000053A0(v11, v10, &v18);
      sub_100016718();
      *(v5 + 14) = sub_1000053A0(*(v9 + 128), *(v9 + 136), &v18);
      sub_1000028B8();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
      swift_arrayDestroy();
      sub_100001D64();
      sub_100003910();
    }

    sub_100001D4C();

    v17();
  }
}

uint64_t sub_10000AB90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42[1] = a4;
  v43 = a3;
  v5 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  v12 = type metadata accessor for EventValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v42 - v18;
  v20 = type metadata accessor for XPCObject();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v42 - v25;
  v42[0] = String.init(cString:)();
  v27 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v27, v19);
  if (sub_100002694(v19, 1, v20) == 1)
  {

    v28 = &qword_10008F360;
    v29 = &qword_100070A20;
    v30 = v19;
  }

  else
  {
    sub_100006F04();
    sub_100006EAC();
    sub_10000B09C(v24, v11);
    if (sub_100002694(v11, 1, v12) != 1)
    {
      sub_100006F04();
      sub_100006EAC();
      sub_1000026BC(v9, 0, 1, v12);
      sub_10000B810();
      sub_10000A864(v15, type metadata accessor for EventValue);
      sub_10000A864(v26, type metadata accessor for XPCObject);
      return 1;
    }

    sub_10000A864(v26, type metadata accessor for XPCObject);

    v28 = &unk_10008F2F0;
    v29 = &qword_10006FFF0;
    v30 = v11;
  }

  sub_100005000(v30, v28, v29);
  type = xpc_get_type(a2);
  xpc_type_get_name(type);
  v32 = String.init(cString:)();
  v34 = v33;
  v35 = v43;
  if (qword_10008DDE8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000050E4(v36, qword_10008FB00);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v39 = 136446466;
    *(v39 + 4) = sub_1000053A0(*(v35 + 112), *(v35 + 120), &v44);
    *(v39 + 12) = 2082;
    v40 = sub_1000053A0(v32, v34, &v44);

    *(v39 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v37, v38, "session %{public}s skipping invalid payload value of type %{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_10000B070()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10000B09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCObject();
  v5 = sub_100003C44(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100001EAC();
  v10 = v9 - v8;
  v11 = type metadata accessor for EventValue();
  v12 = sub_100003C44(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100001EAC();
  v17 = v16 - v15;
  sub_1000096D4();
  sub_10000BF10();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      sub_100005184();
      *v17 = *v10;
      sub_100007C1C();
      goto LABEL_13;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
      sub_100005184();
      *v17 = *v10;
      sub_100007C1C();
      goto LABEL_13;
    case 8u:
      sub_100005184();
      v18 = *(v10 + 8);
      *v17 = *v10;
      *(v17 + 8) = v18;
      sub_100007C1C();
      goto LABEL_13;
    case 9u:
      sub_100005184();
      v19 = type metadata accessor for UUID();
      sub_100003C44(v19);
      (*(v20 + 32))(v17, v10);
      sub_100007C1C();
LABEL_13:
      swift_storeEnumTagMultiPayload();
      v31 = 0;
      v30 = 0;
      break;
    case 0xBu:
      v21 = *v10;
      count = xpc_array_get_count(*v10);
      v23 = _swiftEmptyArrayStorage;
      if (!swift_isUniquelyReferenced_nonNull_native() || count > _swiftEmptyArrayStorage[3] >> 1)
      {
        if (_swiftEmptyArrayStorage[2] > count)
        {
          v24 = _swiftEmptyArrayStorage[2];
        }

        sub_10002316C();
        v23 = v25;
      }

      v47 = v23;
      v26 = swift_allocObject();
      *(v26 + 16) = &v47;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100045B24;
      *(v27 + 24) = v26;
      v45 = sub_100045B2C;
      v46 = v27;
      sub_100004FA0();
      v42 = 1107296256;
      v43 = sub_100044E78;
      v44 = &unk_100087750;
      v28 = _Block_copy(aBlock);

      xpc_array_apply(v21, v28);
      _Block_release(v28);
      swift_unknownObjectRelease();
      sub_100005184();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        JUMPOUT(0x10000B614);
      }

      *v17 = v47;
      sub_100007C1C();
      swift_storeEnumTagMultiPayload();
      v30 = 0;
      v31 = sub_100045B24;
      break;
    case 0xCu:
      v33 = *v10;
      v47 = Dictionary.init(dictionaryLiteral:)();
      v34 = xpc_dictionary_get_count(v33);
      sub_1000228D4(&qword_10008E780, &unk_10006FFD0);
      Dictionary.reserveCapacity(_:)(v34);
      v35 = swift_allocObject();
      *(v35 + 16) = &v47;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100016498;
      *(v36 + 24) = v35;
      v45 = sub_10000B068;
      v46 = v36;
      sub_100004FA0();
      v42 = 1107296256;
      v43 = sub_10000A6E8;
      v44 = &unk_1000876D8;
      v37 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      xpc_dictionary_apply(v33, v37);
      _Block_release(v37);
      swift_unknownObjectRelease_n();
      sub_100005184();
      v38 = swift_isEscapingClosureAtFileLocation();

      if (v38)
      {
        goto LABEL_20;
      }

      *v17 = v47;
      sub_100007C1C();
      swift_storeEnumTagMultiPayload();
      v31 = 0;
      v30 = sub_100016498;
      break;
    default:
      sub_10000A80C(a1, type metadata accessor for XPCObject);
      v39 = sub_100045EC4();
      sub_10000A80C(v39, v40);
      return sub_1000026BC(a2, 1, 1, v11);
  }

  sub_100004734();
  sub_10000C6AC();
  sub_10000B670();
  sub_1000026BC(a2, 0, 1, v11);
  sub_10000B64C(v31);
  return sub_10000B64C(v30);
}

uint64_t sub_10000B64C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B670()
{
  v1 = sub_1000175F8();
  v3 = v2(v1);
  sub_100003C44(v3);
  v5 = *(v4 + 32);
  v6 = sub_100004EA4();
  v7(v6);
  return v0;
}

uint64_t sub_10000B6E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = __clz(v2) | (a2 << 6);
  v5 = (*(result + 48) + 16 * v4);
  v7 = *v5;
  v6 = v5[1];
  *(v3 + 56) = *(*(result + 56) + 8 * v4);
  return result;
}

uint64_t sub_10000B708@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 + *(a4 + 72) * a1;

  return sub_10001C2A0(v7, v5);
}

uint64_t sub_10000B7B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000053A0(a1, a2, &a9);
}

uint64_t sub_10000B7F4()
{
  v2 = *(v0 - 104);
}

void sub_10000B810()
{
  sub_1000054BC();
  sub_100002654();
  v3 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v3);
  v5 = *(v4 + 64);
  sub_100003EC8();
  __chkstk_darwin(v6);
  sub_100005B54();
  v7 = type metadata accessor for EventValue();
  v8 = sub_100003C44(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100001EAC();
  if (sub_100002694(v0, 1, v11) == 1)
  {
    v12 = sub_10000BF10();
    sub_100005000(v12, v13, &qword_10006FFF0);
    sub_10000BBEC();
    sub_10000C6AC();
    sub_1000456C4(v14, v15);

    sub_100005000(v2, &unk_10008F2F0, &qword_10006FFF0);
  }

  else
  {
    sub_10000BF10();
    sub_10000B670();
    v16 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000119A4();
    sub_100016564();

    *v1 = v17;
  }

  sub_10000CE54();
}

uint64_t sub_10000B97C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1000053A0(v11, v10, &a10);
}

uint64_t sub_10000B9D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001DB0(a1, a2, a3, a4, a5);
  v7 = *(v6 + 56);
  v9 = v8(0);
  sub_100001D80(v9);
  v11 = *(v10 + 72);
  result = sub_10000B670();
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

uint64_t sub_10000BA94()
{
  sub_100004680();
  *(v1 + 296) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v0;
  *(v1 + 192) = *v0;
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v4);
  v6 = *(v5 + 64);
  *(v1 + 200) = sub_100003D60();
  v7 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  sub_1000614E8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000BBA0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10000BC04()
{

  return sub_10004A850(v0, v1);
}

uint64_t sub_10000BC3C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = v2;

  return sub_10002D48C(0, 0, v1, &unk_10006FCF0, a1);
}

uint64_t sub_10000BC78@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_100003BC0(), (v4 & 1) != 0))
  {
    v5 = *(a1 + 56);
    v6 = type metadata accessor for EventValue();
    sub_100003C44(v6);
    v8 = *(v7 + 72);
    sub_100006EAC();
    v9 = a2;
    v10 = 0;
    v11 = 1;
    v12 = v6;
  }

  else
  {
    type metadata accessor for EventValue();
    v9 = sub_100004FCC();
  }

  return sub_1000026BC(v9, v10, v11, v12);
}

unint64_t sub_10000BD28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000BF38(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10000BE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BEC8()
{
  sub_100005284(v0);
}

char *sub_10000BF38(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000BFF8(a1, a2);
  sub_10000C110(&off_100085AA8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void *sub_10000BF88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000228D4(&qword_10008E8A0, &qword_10006E0B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000BFF8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000BF88(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000C110(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000C1F4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000C1F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000228D4(&qword_10008E8A0, &qword_10006E0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL sub_10000C2E8()
{
  v0 = [objc_allocWithZone(MCRestrictionManager) init];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (sub_10000CAAC(v1, v2, v0) == 1)
  {

    return 1;
  }

  else
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = sub_10000CAAC(v4, v5, v0);

    return v6 == 1;
  }
}

uint64_t sub_10000C374(sqlite3_stmt *a1, uint64_t a2)
{
  v6 = String.utf8CString.getter();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v6;
  v3 = *(v6 + 16);
  if (!(v3 >> 31))
  {
    a1 = *(a1 + 2);
    if (qword_10008DD00 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  swift_once();
LABEL_5:
  v7 = sqlite3_bind_text(a1, a2, (v2 + 32), v3, qword_10008DD08);

  if (v7)
  {
    sub_10002282C();
    sub_100004F00();
    *v9 = v7;
    *(v9 + 8) = 0xD000000000000015;
    *(v9 + 16) = 0x8000000100071350;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10000C490(sqlite3_stmt *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_10000C374(a1, a2);
}

uint64_t sub_10000C4AC()
{
  v1 = *(v0 + 16);
  sub_1000228D4(&qword_10008F100, &qword_10006EB58);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000C50C()
{
  v1 = v0;
  v2 = sqlite3_step(*(v0 + 16));
  if (v2 == 101)
  {
    *(v0 + 24) = 1;
    return 0;
  }

  else
  {
    v3 = v2;
    if (v2 == 100)
    {
    }

    else
    {
      _StringGuts.grow(_:)(38);

      strcpy(v9, "Statement ((");
      BYTE5(v9[1]) = 0;
      HIWORD(v9[1]) = -5120;
      v4._countAndFlagsBits = sub_1000218D8();
      String.append(_:)(v4);

      v5._object = 0x8000000100071330;
      v5._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v5);
      v6 = v9[0];
      v1 = v9[1];
      sub_10002282C();
      sub_100004F00();
      *v7 = v3;
      *(v7 + 8) = v6;
      *(v7 + 16) = v1;
      swift_willThrow();
    }
  }

  return v1;
}

uint64_t sub_10000C624(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100001F2C(sub_10000C8A4, v2);
}

uint64_t sub_10000C650(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10000C670@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  v6 = a1 + *(v2 + 48);

  return sub_1000166B4(v6, v3);
}

uint64_t sub_10000C6B8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_10000C6D0(uint64_t a1)
{
  *(a1 + 8) = sub_10005EB3C;
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  return v2;
}

uint64_t sub_10000C704()
{
}

uint64_t sub_10000C720()
{
  sub_100002624();
  v2 = *(v1 + 40);
  sub_100001D10();
  sub_100007C28(90);
  sub_100009400();
  if (v0)
  {
    sub_100005150();
  }

  else
  {
    sub_10000C8C0(*(v1 + 24), *(v1 + 16));

    sub_100009B24();
  }

  return v3();
}

uint64_t sub_10000C7B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C50C();
  if (!v1)
  {
    if (result)
    {
      sub_10000D078(result, a1);
      if (sub_10000C50C())
      {
        do
        {
        }

        while (sub_10000C50C());
        sub_100022880();
        v5 = sub_100004F00();
        sub_100009728(v5, v6);

        return sub_1000233F0(a1);
      }

      else
      {
      }
    }

    else
    {
      sub_100022880();
      sub_100004F00();
      *v4 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10000C8A4(uint64_t a1)
{
  v2 = *(*(v1 + 32) + 112);
  *(v1 + 40) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10000C8C0@<X0>(__int128 *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  v7 = a1[1];
  v13 = *a1;
  v6 = v13;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 16) = xmmword_10006CAC0;
  *(inited + 32) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = v7;
  v11 = a1[2];
  v8 = v11;
  v12 = v7;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &off_1000862B0;
  *(inited + 112) = v8;
  sub_100005CC0(&v13, v10);
  sub_100005CC0(&v12, v10);
  sub_100005CC0(&v11, v10);
  sub_100009524(inited);
  swift_setDeallocating();
  if (v2)
  {
    return sub_10000C4AC();
  }

  sub_10000C4AC();
  return sub_10000C7B8(a2);
}

uint64_t sub_10000CA78()
{
  sqlite3_finalize(*(v0 + 16));
  sub_10000C644();

  return _swift_deallocClassInstance(v1, v2, v3);
}

id sub_10000CAAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 BOOLSettingForFeature:v4];

  return v5;
}

BOOL sub_10000CB08()
{
  v2 = type metadata accessor for Logger();
  v3 = sub_10000CDD0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v22[1] = 0;
  v23 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v14 = v23;
  if (!v23)
  {
    v1 = domain_answer;
    Logger.init()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to determine eligibility due to error %d", v17, 8u);
      sub_100001D1C();
    }

    (*(v5 + 8))(v12, v0);
    v14 = v23;
  }

  if (v14 == 4)
  {
    Logger.init()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_10001196C();
      sub_100004FC0(v20);
      _os_log_impl(&_mh_execute_header, v18, v19, "Device is eligible for Elisabeth", v1, 2u);
      sub_100004664();
    }

    (*(v5 + 8))(v10, v0);
  }

  return v14 == 4;
}

uint64_t sub_10000CD7C()
{
  v2 = (*(v0 + 48) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_10000CD90()
{

  return swift_dynamicCast();
}

uint64_t sub_10000CE20()
{
}

uint64_t sub_10000CE38(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1000053A0(v2, v3, va);
}

uint64_t sub_10000CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1000053A0(v4, v5, va);
}

uint64_t sub_10000CE84@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 152);
  *(v1 + 137) = *(a1 + 161);
  v1[7] = v3;
  v1[8] = v4;
  v1[32] = v1[7];
  v1[18] = a1[10];
}

uint64_t sub_10000CEBC()
{

  return sub_1000053A0(v1, v0, (v2 - 96));
}

void *sub_10000CF0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_1000026BC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000CFA0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100002694(v9, a2, v8);
  }
}

unint64_t sub_10000D044(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100001DB0(a1, a2, a3, a4, a5);
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

uint64_t sub_10000D078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  v5 = sub_10000D148(v4, 0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sqlite3_column_int64(*(a1 + 16), 1);
    v9 = sub_1000228D4(&qword_10008F108, &qword_10006EDC0);
    v10 = *(v9 + 48);
    *a2 = v7;
    a2[1] = v8;
    Date.init(timeIntervalSince1970:)();
    return sub_1000026BC(a2, 0, 1, v9);
  }

  else
  {
    sub_100022DA8();
    sub_100011748();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_10000D148(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (sqlite3_column_text(*(result + 16), a2))
  {
    v2 = String.init(cString:)();
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_10000D1CC()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_100001D58();
  *v7 = v6;
  v2[20] = v0;

  if (v0)
  {
    v8 = v2[7];
    v9 = sub_1000437F4;
  }

  else
  {
    v10 = v2[18];
    v11 = v2[7];

    v9 = sub_10000D2EC;
    v8 = v11;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10000D2EC()
{
  v66 = v0;
  v1 = *(v0 + 88);
  v2 = sub_1000228D4(&qword_10008F108, &qword_10006EDC0);
  if (sub_100002694(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    sub_1000233F0(v1);
    UUID.init()();
    v6 = UUID.uuidString.getter();
    v8 = v7;
    *(v0 + 224) = v7;
    result = (*(v4 + 8))(v3, v5);
    v10 = qword_100095AD8;
    *(v0 + 232) = qword_100095AD8;
    if (v10)
    {
      v11 = *(v0 + 128);
      v13 = *(v0 + 104);
      v12 = *(v0 + 112);
      v14 = *(v0 + 96);
      *(v0 + 240) = v6;

      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v15 = *(v13 + 8);
      *(v0 + 248) = v15;
      *(v0 + 256) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v15(v11, v14);
      v16 = swift_task_alloc();
      *(v0 + 264) = v16;
      *v16 = v0;
      v16[1] = sub_1000435B8;
      v17 = *(v0 + 112);
      v18 = *(v0 + 48);
      v19 = v6;
      v20 = v8;
LABEL_14:

      return sub_10003E8F8(v18, v19, v20, v17);
    }

    __break(1u);
    goto LABEL_18;
  }

  v21 = *(v0 + 128);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *v1;
  v25 = *(v1 + 1);
  (*(v22 + 32))(*(v0 + 136), &v1[*(v2 + 48)], v23);
  static Date.now.getter();
  v26 = static Date.< infix(_:_:)();
  v27 = *(v22 + 8);
  *(v0 + 168) = v27;
  *(v0 + 176) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v21, v23);
  if ((v26 & 1) == 0)
  {
    if (qword_10008DD68 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 48);
    v36 = type metadata accessor for Logger();
    sub_1000050E4(v36, qword_100095A48);
    *(v0 + 16) = *v35;
    v37 = *(v35 + 16);
    v38 = *(v35 + 24);
    v39 = *(v35 + 32);
    v40 = *(v35 + 40);
    sub_100005CC0(v0 + 16, v0 + 32);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    sub_10000D9BC(v0 + 16);

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 24);
      v62 = v37;
      v44 = swift_slowAlloc();
      v63 = v39;
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136446210;
      v65 = *(v0 + 16);

      v46._countAndFlagsBits = 58;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = v62;
      v47._object = v38;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 58;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      v49._countAndFlagsBits = v63;
      v49._object = v40;
      String.append(_:)(v49);
      v50 = sub_1000053A0(v65, *(&v65 + 1), &v64);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "CID expired for %{public}s, refreshing", v44, 0xCu);
      sub_100005284(v45);
    }

    v52 = *(v0 + 72);
    v51 = *(v0 + 80);
    v53 = *(v0 + 64);
    UUID.init()();
    v54 = UUID.uuidString.getter();
    v56 = v55;
    *(v0 + 184) = v54;
    *(v0 + 192) = v55;
    result = (*(v52 + 8))(v51, v53);
    v57 = qword_100095AD8;
    *(v0 + 200) = qword_100095AD8;
    if (v57)
    {
      v59 = *(v0 + 120);
      v58 = *(v0 + 128);
      v60 = *(v0 + 96);

      static Date.now.getter();
      Date.addingTimeInterval(_:)();
      v27(v58, v60);
      v61 = swift_task_alloc();
      *(v0 + 208) = v61;
      *v61 = v0;
      v61[1] = sub_100043314;
      v17 = *(v0 + 120);
      v18 = *(v0 + 48);
      v19 = v54;
      v20 = v56;
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v27(*(v0 + 136), *(v0 + 96));
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v33 = *(v0 + 80);
  v32 = *(v0 + 88);

  v34 = *(v0 + 8);

  return v34(v24, v25);
}

uint64_t sub_10000D848(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 552);
  v12 = *v3;
  *(*v3 + 560) = v2;

  if (v2)
  {
    v8 = v6[68];
    sub_10000D9BC((v6 + 44));
    sub_10000D9BC((v6 + 46));
    sub_10000D9BC((v6 + 48));

    v9 = sub_100024254;
  }

  else
  {
    v10 = v6[68];
    v6[71] = a2;
    v6[72] = a1;
    sub_10000D9BC((v6 + 44));
    sub_10000D9BC((v6 + 46));
    sub_10000D9BC((v6 + 48));

    v9 = sub_10000DA10;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000DA10()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 496);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 448);
  *(v0 + 112) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = v8;
  *(v0 + 136) = v7;
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  v10 = *(v0 + 304);
  v11 = *(v0 + 320);
  v12 = *(v0 + 336);
  *(v0 + 176) = v11;
  *(v0 + 192) = v12;
  v13 = *(v0 + 304);
  *(v0 + 160) = v10;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v8;
  *(v0 + 40) = v7;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  v14 = *(v0 + 336);
  *(v0 + 80) = v11;
  *(v0 + 96) = v14;
  *(v0 + 64) = v13;
  sub_10000DB18(v0 + 112, v0 + 208);
  sub_10000DB50(v0 + 16);
  memcpy(v9, (v0 + 112), 0x60uLL);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10000DB80(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 57) = a3;
  *(v4 + 104) = a1;
  v5 = sub_100009A40();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000DBB0()
{
  sub_100004680();
  v0[16] = *(v0[15] + 112);
  sub_1000579CC(&unk_10006FD40);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v2 = sub_1000027EC(v1);

  return v3(v2);
}

uint64_t sub_10000DC48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000DC64, a2, 0);
}

uint64_t sub_10000DC64()
{
  sub_100004680();
  v1 = sub_10000DD08(*(v0[2] + 192), *(v0[2] + 200));
  v0[4] = v2;
  if (v2)
  {
    v3 = v0[3];
    v0[5] = v1;
    v0[6] = *(v3 + 128);
    v4 = sub_100016754();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    v7 = sub_100017614();

    return v8(v7);
  }
}

uint64_t sub_10000DD08(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = sub_100001EDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDC8 != -1)
    {
      swift_once();
    }

    v12 = qword_100095B08;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 stringArrayForKey:v13];

    if (v14)
    {
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = *(v15 + 16);
      if (v16)
      {
        v96 = v7;
        v97 = a2;
        v98 = a1;
        v99._countAndFlagsBits = &_swiftEmptyArrayStorage;
        sub_100060C44(0, v16, 0);
        countAndFlagsBits = v99._countAndFlagsBits;
        v18 = (v15 + 40);
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;
          v21 = String.lowercased()();
          v99._countAndFlagsBits = countAndFlagsBits;
          v23 = *(countAndFlagsBits + 2);
          v22 = *(countAndFlagsBits + 3);
          if (v23 >= v22 >> 1)
          {
            sub_100060C44((v22 > 1), v23 + 1, 1);
            countAndFlagsBits = v99._countAndFlagsBits;
          }

          *(countAndFlagsBits + 2) = v23 + 1;
          *(countAndFlagsBits + v23 + 2) = v21;
          v18 += 2;
          --v16;
        }

        while (v16);

        a2 = v97;
        a1 = v98;
        v7 = v96;
      }

      else
      {

        countAndFlagsBits = &_swiftEmptyArrayStorage;
      }

      v99 = String.lowercased()();
      __chkstk_darwin(v99._countAndFlagsBits);
      *(&v96 - 2) = &v99;
      v24 = sub_1000182F8(sub_100014E24, (&v96 - 4), countAndFlagsBits);

      if (!v24)
      {
        Logger.init()();

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = sub_10002E444();
          v32 = swift_slowAlloc();
          v99._countAndFlagsBits = v32;
          *v31 = 136446210;
          *(v31 + 4) = sub_1000053A0(a1, a2, &v99._countAndFlagsBits);
          _os_log_impl(&_mh_execute_header, v29, v30, "client %{public}s blocked by defaults", v31, 0xCu);
          sub_100005284(v32);
        }

        (*(v7 + 8))(v11, v4);
        return 0;
      }
    }
  }

  v25 = 0x74696B656D6167;
  v26 = a1 == 19271 && a2 == 0xE200000000000000;
  if (v26 || (sub_1000028E8() & 1) != 0)
  {
    return v25;
  }

  v28 = a1 == 19779 && a2 == 0xE200000000000000;
  if (v28 || (sub_1000028E8() & 1) != 0)
  {
    return 0x6964656D65726F63;
  }

  v33 = a1 == 17238 && a2 == 0xE200000000000000;
  if (v33 || (sub_1000028E8() & 1) != 0)
  {
    return 0x7265666E6F637661;
  }

  v25 = 0x7674656C707061;
  v34 = a1 == 22100 && a2 == 0xE200000000000000;
  if (v34 || (sub_1000028E8() & 1) != 0)
  {
    return v25;
  }

  v25 = 0x617273656E757469;
  if (a1 == 21065 && a2 == 0xE200000000000000)
  {
    return v25;
  }

  v98 = a1;
  v36 = a2;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return v25;
  }

  v25 = 0x6974736567677573;
  v37 = v98 == 18259 && a2 == 0xE200000000000000;
  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v25;
  }

  v38 = v98;
  v39 = v98 == 21580 && v36 == 0xE200000000000000;
  if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x7265666E6F637661;
  }

  v25 = 0x796C616E6178736FLL;
  v40 = v38 == 1096307535 && v36 == 0xE400000000000000;
  if (v40 || (sub_10000468C() & 1) != 0)
  {
    return v25;
  }

  sub_100007A48();
  v41 = v26 && v36 == 0xE500000000000000;
  if (v41 || (sub_10000468C() & 1) != 0)
  {
    return 0x7265666E6F637661;
  }

  sub_100007A48();
  v42 = v26 && v36 == 0xE600000000000000;
  if (v42 || (sub_10000468C() & 1) != 0)
  {
    return 0x6964656D65726F63;
  }

  sub_100007A48();
  v43 = v26 && v36 == 0xE800000000000000;
  if (v43 || (sub_10000468C() & 1) != 0)
  {
    return 0x6964656D65726F63;
  }

  sub_100007A48();
  v44 = v26 && v36 == 0xE700000000000000;
  if (v44 || (sub_10000468C() & 1) != 0)
  {
    return 1835364208;
  }

  v25 = 0x7061736F65646976;
  sub_100007A48();
  v45 = v26 && v36 == 0xE600000000000000;
  if (v45 || (sub_10000468C() & 1) != 0)
  {
    return v25;
  }

  v25 = 0x7361656C69626F6DLL;
  sub_100007A48();
  v46 = v26 && v36 == 0xE800000000000000;
  if (v46 || (sub_10000468C() & 1) != 0)
  {
    return v25;
  }

  v25 = 0x6964756165726F63;
  sub_100004430();
  v47 = v26 && v36 == 0xE200000000000000;
  if (v47 || (sub_100001F0C() & 1) != 0)
  {
    return v25;
  }

  sub_100004430();
  if (v26 && v36 == 0xE300000000000000)
  {
    return 0x7265666E6F637661;
  }

  v25 = 0x7265666E6F637661;
  if ((sub_1000097FC() & 1) == 0)
  {
    v25 = 0x617261686173;
    sub_100004430();
    v49 = v26 && v36 == 0xE200000000000000;
    if (!v49 && (sub_100001F0C() & 1) == 0)
    {
      v25 = 0x76697463616F7270;
      sub_100004430();
      v50 = v26 && v36 == 0xE200000000000000;
      if (!v50 && (sub_100001F0C() & 1) == 0)
      {
        v25 = 0x7574696B616CLL;
        sub_100004430();
        v51 = v26 && v36 == 0xE200000000000000;
        if (!v51 && (sub_100001F0C() & 1) == 0)
        {
          v25 = 0x73676E6977;
          sub_100007A48();
          v52 = v26 && v36 == 0xE400000000000000;
          if (!v52 && (sub_10000468C() & 1) == 0)
          {
            v25 = 0x796F6C6C61;
            v53 = v98 == 5456969 && v36 == 0xE300000000000000;
            if (!v53 && (sub_1000097FC() & 1) == 0)
            {
              v25 = 0x656761726F7473;
              sub_100004430();
              v54 = v26 && v36 == 0xE400000000000000;
              if (!v54 && (sub_10000468C() & 1) == 0)
              {
                sub_100004430();
                v55 = v26 && v36 == 0xE200000000000000;
                if (v55 || (sub_100001F0C() & 1) != 0)
                {
                  return 30068;
                }

                v25 = 0x74656C706F7264;
                sub_100004430();
                v56 = v26 && v36 == 0xE200000000000000;
                if (!v56 && (sub_100001F0C() & 1) == 0)
                {
                  v25 = 0x7473616365726F66;
                  sub_100004430();
                  v57 = v26 && v36 == 0xE200000000000000;
                  if (!v57 && (sub_100001F0C() & 1) == 0)
                  {
                    v25 = 1952542820;
                    sub_100004430();
                    v58 = v26 && v36 == 0xE400000000000000;
                    if (!v58 && (sub_10000468C() & 1) == 0)
                    {
                      sub_100007A48();
                      v59 = v26 && v36 == 0xE300000000000000;
                      if (v59 || (sub_1000097FC() & 1) != 0)
                      {
                        return 0x65646C6F68707563;
                      }

                      v25 = 0x697463656C666572;
                      sub_100004430();
                      v60 = v26 && v36 == 0xE200000000000000;
                      if (v60 || (sub_100001F0C() & 1) != 0)
                      {
                        return v25;
                      }

                      v25 = 0x6461737361626D61;
                      sub_100007A48();
                      v61 = v26 && v36 == 0xE300000000000000;
                      if (v61 || (sub_1000097FC() & 1) != 0)
                      {
                        return v25;
                      }

                      v25 = 0x6C6572656D6F68;
                      sub_100004430();
                      v62 = v26 && v36 == 0xE400000000000000;
                      if (v62 || (sub_10000468C() & 1) != 0)
                      {
                        return v25;
                      }

                      v25 = 0x7369737361637472;
                      sub_100007A48();
                      v63 = v26 && v36 == 0xE700000000000000;
                      if (v63 || (sub_10000468C() & 1) != 0)
                      {
                        return v25;
                      }

                      sub_100007A48();
                      if (v26 && v36 == 0xE600000000000000)
                      {
                        return 0x6964656D65726F63;
                      }

                      v25 = 0x6964656D65726F63;
                      if ((sub_10000468C() & 1) == 0)
                      {
                        sub_100004430();
                        v65 = v26 && v36 == 0xE200000000000000;
                        if (v65 || (sub_100001F0C() & 1) != 0)
                        {
                          return 24931;
                        }

                        v25 = 0x7375626D696ELL;
                        sub_100004430();
                        v66 = v26 && v36 == 0xE300000000000000;
                        if (!v66 && (sub_1000097FC() & 1) == 0)
                        {
                          v25 = 7630698;
                          sub_100004430();
                          v67 = v26 && v36 == 0xE300000000000000;
                          if (!v67 && (sub_1000097FC() & 1) == 0)
                          {
                            v25 = 1869636978;
                            sub_100004430();
                            v68 = v26 && v36 == 0xE300000000000000;
                            if (!v68 && (sub_1000097FC() & 1) == 0)
                            {
                              v25 = 0x6365736172656961;
                              sub_100004430();
                              v69 = v26 && v36 == 0xE300000000000000;
                              if (!v69 && (sub_1000097FC() & 1) == 0)
                              {
                                v25 = 0x6B726F7769;
                                sub_100004430();
                                if (!v26 || v36 != 0xE300000000000000)
                                {
                                  v71 = v98;
                                  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
                                  v73 = v71 == 5457744 && v36 == 0xE300000000000000;
                                  v74 = v73;
                                  if ((v72 & 1) == 0 && !v74)
                                  {
                                    v75 = v98;
                                    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
                                    v77 = v75 == 5390926 && v36 == 0xE300000000000000;
                                    v78 = v77;
                                    if ((v76 & 1) == 0 && !v78 && (sub_1000097FC() & 1) == 0)
                                    {
                                      v25 = 1952804451;
                                      sub_100004430();
                                      v79 = v26 && v36 == 0xE300000000000000;
                                      if (!v79 && (sub_1000097FC() & 1) == 0)
                                      {
                                        v25 = 1819110755;
                                        sub_100007A48();
                                        v80 = v26 && v36 == 0xE500000000000000;
                                        if (!v80 && (sub_10000468C() & 1) == 0)
                                        {
                                          v25 = 1802661751;
                                          sub_100004430();
                                          v81 = v26 && v36 == 0xE400000000000000;
                                          if (!v81 && (sub_10000468C() & 1) == 0)
                                          {
                                            v25 = 1700949871;
                                            sub_100004430();
                                            v82 = v26 && v36 == 0xE400000000000000;
                                            if (!v82 && (sub_10000468C() & 1) == 0)
                                            {
                                              v25 = 7368547;
                                              v83 = v98 == 5263171 && v36 == 0xE300000000000000;
                                              if (!v83 && (sub_1000097FC() & 1) == 0)
                                              {
                                                sub_100004430();
                                                v84 = v26 && v36 == 0xE200000000000000;
                                                if (v84 || (sub_100001F0C() & 1) != 0)
                                                {
                                                  return 29286;
                                                }

                                                v25 = 7037805;
                                                sub_100004430();
                                                v85 = v26 && v36 == 0xE300000000000000;
                                                if (!v85 && (sub_1000097FC() & 1) == 0)
                                                {
                                                  v25 = 7499873;
                                                  sub_100007A48();
                                                  v86 = v26 && v36 == 0xE300000000000000;
                                                  if (!v86 && (sub_1000097FC() & 1) == 0)
                                                  {
                                                    v25 = 1718644067;
                                                    sub_100007A48();
                                                    v87 = v26 && v36 == 0xE500000000000000;
                                                    if (!v87 && (sub_10000468C() & 1) == 0)
                                                    {
                                                      v25 = 1885564259;
                                                      sub_100007A48();
                                                      v88 = v26 && v36 == 0xE600000000000000;
                                                      if (!v88 && (sub_10000468C() & 1) == 0)
                                                      {
                                                        sub_100007A48();
                                                        if (!v26 || v36 != 0xE500000000000000)
                                                        {
                                                          v25 = 0x65646C6F68707563;
                                                          if (sub_10000468C())
                                                          {
                                                            return v25;
                                                          }

                                                          v25 = 0x65736E61707865;
                                                          v90 = v98 == 1280329811 && v36 == 0xE400000000000000;
                                                          if (v90 || (sub_10000468C() & 1) != 0)
                                                          {
                                                            return v25;
                                                          }

                                                          v25 = 1701863795;
                                                          v91 = v98 == 5522771 && v36 == 0xE300000000000000;
                                                          if (v91 || (sub_1000097FC() & 1) != 0)
                                                          {
                                                            return v25;
                                                          }

                                                          v25 = 1886938477;
                                                          sub_100007A48();
                                                          v92 = v26 && v36 == 0xE500000000000000;
                                                          if (v92 || (sub_10000468C() & 1) != 0)
                                                          {
                                                            return v25;
                                                          }

                                                          v25 = 1835364973;
                                                          sub_100007A48();
                                                          v93 = v26 && v36 == 0xE500000000000000;
                                                          if (v93 || (sub_10000468C() & 1) != 0)
                                                          {
                                                            return v25;
                                                          }

                                                          v25 = 2020565602;
                                                          sub_100007A48();
                                                          v94 = v26 && v36 == 0xE500000000000000;
                                                          if (v94 || (sub_10000468C() & 1) != 0)
                                                          {
                                                            return v25;
                                                          }

                                                          sub_100007A48();
                                                          v95 = v26 && v36 == 0xE800000000000000;
                                                          if (v95 || (sub_10000468C() & 1) != 0)
                                                          {
                                                            return 0x72656B616D6572;
                                                          }

                                                          return 0;
                                                        }

                                                        return 0x65646C6F68707563;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v25;
}

uint64_t sub_10000ECF4()
{
  sub_100004680();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  LOBYTE(v2) = sub_10000EDCC();

  if (v2)
  {
    v4 = sub_100017614();

    return v5(v4);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_10000FE50;
    v8 = v0[3];

    return sub_10000D028();
  }
}

uint64_t sub_10000EDCC()
{
  sub_100004DA4();
  v25 = v0;
  v26 = v1;
  v24 = type metadata accessor for URL();
  v2 = sub_100001EDC(v24);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100001EAC();
  v9 = v8 - v7;
  v10 = sub_1000132F8();
  v12 = sub_1000228D4(v10, v11);
  sub_100001D80(v12);
  v14 = *(v13 + 64);
  sub_100003EC8();
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  sub_100005394();
  sub_10000EF4C();
  v18 = type metadata accessor for CachedStorebag(0);
  v19 = 1;
  v20 = sub_100002694(v17, 1, v18);
  sub_100005000(v17, &unk_10008F390, &qword_10006EED0);
  if (v20 == 1)
  {
    sub_100005394();
    sub_10000F2FC();
    v21 = URL.checkResourceIsReachable()();
    if (v22)
    {

      v19 = 0;
    }

    else
    {
      v19 = v21;
    }

    (*(v4 + 8))(v9, v24);
  }

  return v19 & 1;
}

uint64_t sub_10000EF4C()
{
  sub_100004DA4();
  v62 = v1;
  v63 = v2;
  v4 = v3;
  v6 = v5;
  v60 = v7;
  v8 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v8);
  v10 = *(v9 + 64);
  sub_100003EC8();
  __chkstk_darwin(v11);
  v57 = v56 - v12;
  v13 = type metadata accessor for Date();
  v14 = sub_100001EDC(v13);
  v59 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100001EAC();
  v18 = type metadata accessor for CachedStorebag(0);
  v19 = sub_100001EDC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000286C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = v56 - v28;
  v30 = OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache;
  swift_beginAccess();
  v58 = v0;
  v56[3] = v30;
  v31 = *(v0 + v30);
  if (!*(v31 + 16))
  {
    goto LABEL_10;
  }

  v56[1] = v6;
  v56[2] = v4;
  sub_100003BC0();
  if ((v32 & 1) == 0)
  {

LABEL_10:
    v54 = 1;
    v51 = v60;
    v38 = v18;
    return sub_1000026BC(v51, v54, 1, v38);
  }

  v33 = *(v31 + 56);
  v34 = *(v21 + 72);
  sub_10000525C();
  sub_10001B9E0(v35, v26, v36);

  v37 = v29;
  sub_10001C114(v26, v29);
  v38 = v18;
  v39 = *(v18 + 20);
  static Date.now.getter();
  LOBYTE(v39) = static Date.< infix(_:_:)();
  v40 = *(v59 + 8);
  v41 = sub_100005BF0();
  v42(v41);
  if (v39)
  {
    if (qword_10008DDF8 != -1)
    {
      sub_1000020EC();
    }

    v43 = type metadata accessor for Logger();
    sub_1000050E4(v43, qword_100095B38);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = sub_100004D20();
      v47 = sub_100004F18();
      v61 = v47;
      *v46 = 136446210;
      v48 = sub_100002820();
      *(v46 + 4) = sub_1000053A0(v48, v49, v50);
      _os_log_impl(&_mh_execute_header, v44, v45, "removing expired storebag %{public}s from memory cache", v46, 0xCu);
      sub_100005284(v47);
      sub_100001D1C();
      sub_100001D1C();
    }

    v51 = v60;
    sub_10000277C();
    v52 = v57;
    sub_100002820();
    sub_100045688();
    sub_100005000(v52, &unk_10008F390, &qword_10006EED0);
    swift_endAccess();
    sub_1000099D0();
    sub_10001BA40(v37, v53);
    v54 = 1;
  }

  else
  {
    v51 = v60;
    sub_10001C114(v29, v60);
    v54 = 0;
  }

  return sub_1000026BC(v51, v54, 1, v38);
}

uint64_t sub_10000F2FC()
{

  v0._countAndFlagsBits = 0x7473696C702ELL;
  v0._object = 0xE600000000000000;
  String.append(_:)(v0);
  URL.appendingPathComponent(_:)();
}

uint64_t sub_10000F38C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_10000F4A8(&qword_10008E9A0, a2, type metadata accessor for StorebagCoordinator);
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_10000FD30;
  v7 = *(v2 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v2 + 32, v3, v4, 0xD000000000000013, 0x8000000100071A00, sub_10000F970, v7, &type metadata for SessionConfiguration.Availability);
}

uint64_t sub_10000F4A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 120);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_10000FC74;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000FCE0;
  aBlock[3] = &unk_100086EF8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000F4A8(&qword_10008E738, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000228D4(&qword_10008E740, &qword_10006E180);
  sub_10000F978(&qword_10008E748, &qword_10008E740, &qword_10006E180);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_10000F8AC()
{
  v1 = sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
  sub_100001EDC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10000F978(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F9CC(uint64_t a1)
{
  v2 = type metadata accessor for NWPath.Status();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = type metadata accessor for NWPath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 112);
  NWPathMonitor.currentPath.getter();
  NWPath.status.getter();
  (*(v3 + 104))(v7, enum case for NWPath.Status.unsatisfied(_:), v2);
  LOBYTE(v15) = static NWPath.Status.== infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v9, v2);
  if (v15 & 1) != 0 || (NWPath.isConstrained.getter())
  {
    v18[13] = 0;
    sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
    CheckedContinuation.resume(returning:)();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (NWPath.isExpensive.getter())
    {
      v18[14] = 1;
    }

    else
    {
      v18[15] = 2;
    }

    sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
    CheckedContinuation.resume(returning:)();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10000FC74()
{
  v1 = sub_1000228D4(&qword_10008E9A8, &qword_10006E178);
  sub_100001D80(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_10000F9CC(v4);
}

uint64_t sub_10000FCE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000FD30()
{
  sub_100004680();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  sub_100001D58();
  *v4 = v3;

  return _swift_task_switch(sub_10000FE38, v2, 0);
}

uint64_t sub_10000FE50()
{
  sub_100004680();
  v2 = v1;
  sub_100003B0C();
  v4 = *(v3 + 56);
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_10000FF3C()
{

  return swift_allocObject();
}

uint64_t sub_10000FFAC()
{

  return swift_allocObject();
}

uint64_t sub_10000FFFC()
{
  sub_100004680();
  sub_100003B0C();
  sub_100009A8C();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 120);
  v6 = *v0;
  sub_1000043E4();
  *v7 = v6;
  *(v9 + 58) = v8;

  v10 = sub_100009A40();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000100F4()
{
  sub_100002624();
  if (*(v0 + 58) == 3)
  {
    v1 = *(v0 + 112);
LABEL_7:
    *(v0 + 88) = type metadata accessor for Session(0);
    *(v0 + 96) = &off_100088660;
    *(v0 + 64) = v1;

    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 144) = v3;
    *v3 = v4;
    v5 = sub_100007C50(v3);

    return sub_10001AC0C(v5, v0 + 64);
  }

  v1 = *(v0 + 112);
  if (*(v1 + 240) == 1 || *(v0 + 57) != 0)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 104);
  *v7 = &_swiftEmptyArrayStorage;
  *(v7 + 8) = &_swiftEmptyArrayStorage;
  *(v7 + 16) = 1;
  *(v7 + 24) = 1701736302;
  *(v7 + 32) = 0xE400000000000000;
  *(v7 + 40) = 2;
  sub_100001D4C();

  return v8();
}

uint64_t sub_100010240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100010288()
{

  return sub_100005C68();
}

uint64_t sub_1000102A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000102E4, v1, 0);
}

uint64_t sub_1000102E4(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 32) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_100010300()
{
  sub_100002624();
  v1 = v0[4];
  v2 = sub_100009400();
  sub_1000103BC(v2, v0[2]);

  v3 = v0[3];

  return _swift_task_switch(sub_100011090, v3, 0);
}

uint64_t sub_1000103BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = getTimeIntervalSince1970(Date:)();
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006FE10;
  v8 = *(a2 + 112);
  v7 = *(a2 + 120);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  v9 = *(a2 + 240);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &off_100086250;
  *(inited + 72) = v9;
  v10 = *(a2 + 192);
  v11 = *(a2 + 200);
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &off_1000862B0;
  *(inited + 112) = v10;
  *(inited + 120) = v11;
  v12 = *(a2 + 208);
  v13 = *(a2 + 216);
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = &off_1000862B0;
  *(inited + 152) = v12;
  *(inited + 160) = v13;
  v14 = *(a2 + 224);
  v15 = *(a2 + 232);
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = &off_1000862B0;
  *(inited + 192) = v14;
  *(inited + 200) = v15;
  v16 = *(a2 + 128);
  *(inited + 256) = &type metadata for Double;
  *(inited + 264) = &off_100086290;
  *(inited + 232) = v16;
  *(inited + 296) = &type metadata for Int64;
  *(inited + 304) = &off_100086270;
  *(inited + 272) = v5;

  sub_100009524(inited);
  if (v3)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_100010564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *(v11 + 56);
  *v12 = *(v11 + 48);
  *(a10 + 8) = v14;
  v15 = *(v10 + 24);
  v16 = *(v10 + 16) + 1;
}

uint64_t sub_1000105B8(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000105D8()
{

  return String.hash(into:)();
}

uint64_t sub_1000105FC()
{
}

uint64_t sub_100010634(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v7;
  *(a1 + 48) = v2;
  *(a1 + 56) = v6;
  sub_1000096BC((v3 + 16), a1 + 64);
  *(a1 + 104) = v5;

  return swift_retain_n();
}

uint64_t sub_100010680()
{
  sub_100004680();
  v1 = v0[7];
  v2 = v0[8];
  sub_100005954(v0[10], v0[11]);

  sub_100009B24();

  return v3();
}

uint64_t sub_1000106EC()
{
  sub_100004F30();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  v5 = v2[35];
  *v4 = *v1;
  *(v3 + 288) = v0;

  v6 = v2[34];
  v7 = v2[33];
  v8 = v2[32];
  v9 = v2[23];

  sub_100002794();

  return _swift_task_switch(v10, v11, v12);
}

__n128 sub_100010864()
{
  v3 = *(v0 + 208);
  result = *(v0 + 224);
  *(v1 + 16) = *(v0 + 192);
  *(v1 + 32) = v3;
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_100010878()
{
  v2 = *(v0 + 184);
  if (*(v2 + 240) == 1)
  {
    *(v2 + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) = 1;
  }

  sub_100002624();
  sub_100061618();

  sub_100001D4C();

  return v3();
}

uint64_t sub_100010914()
{
  v2 = v0[1];
  v3 = *v0;

  return swift_task_alloc();
}

uint64_t sub_10001092C()
{
  sub_100004680();
  sub_100003B0C();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[11];
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  return _swift_task_switch(sub_100010A48, v4, 0);
}

uint64_t sub_100010A48()
{
  sub_100004680();
  v1 = v0[15];
  v2 = v0[16];
  swift_unknownObjectRelease();
  v3 = v0[8];

  v5 = v0[13];
  v4 = v0[14];

  sub_100001D4C();

  return v6();
}

uint64_t sub_100010AC0()
{
  sub_100004680();
  sub_100003B0C();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[5];
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;

  v7 = sub_10000BE90();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100010BD4()
{
  sub_100004680();
  v1 = *(v0 + 56);

  sub_100001D4C();

  return v2();
}

uint64_t sub_100010C30()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  sub_100001D4C();

  return v5();
}

uint64_t sub_100010D10()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  sub_100001D4C();

  return v5();
}

uint64_t getTimeIntervalSince1970(Date:)()
{
  result = Date.timeIntervalSince1970.getter();
  v2 = (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v3 = v1 < 0.0 && ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v1 >= 0.0)
  {
    v2 = 0;
  }

  v4 = (*&v1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v2;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v4 = 1;
  }

  if ((v4 | v3))
  {
    return 0;
  }

  if (v1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v1 < 9.22337204e18)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010E9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_11;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3);
  if (result)
  {
    sub_100017598();
    v4 = sub_100004F00();
    sub_10000BE84(v4, v5);
    return sub_10001245C(v6, 18);
  }

  return result;
}

uint64_t sub_100010F50(uint64_t result, uint64_t a2, double a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_double(*(result + 16), a2, a3);
  if (result)
  {
    sub_100017598();
    v3 = sub_100004F00();
    sub_10000BE84(v3, v4);
    return sub_10001245C(v5, 21);
  }

  return result;
}

uint64_t sub_100010FF0(uint64_t result, uint64_t a2, sqlite3_int64 a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int64(*(result + 16), a2, a3);
  if (result)
  {
    sub_100017598();
    v3 = sub_100004F00();
    sub_10000BE84(v3, v4);
    return sub_10001245C(v5, 20);
  }

  return result;
}

uint64_t sub_1000110B4(uint64_t a1)
{

  return sub_100002694(a1, 1, v1);
}

BOOL sub_1000110CC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000110E4()
{

  return swift_task_create();
}

uint64_t sub_100011104()
{
}

uint64_t sub_10001111C()
{
  sub_100002624();
  v3 = v2;
  sub_100003B0C();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *v1;
  sub_1000043E4();
  *v10 = v9;
  v5[35] = v3;
  v5[36] = v0;

  if (v0)
  {
    v11 = v5[32];
    v12 = sub_1000353C0;
  }

  else
  {

    v12 = sub_100011240;
    v11 = v3;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100011240()
{
  sub_100004680();
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  *(v0 + 311) = sub_1000112B0() & 1;

  v3 = sub_10000BE90();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000112D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  if (*(v22 + 311) == 1)
  {
    v26 = *(v22 + 256);
    sub_100013D4C(*(v22 + 160), *(v22 + 168), 1);
  }

  if (*(v22 + 224))
  {
    v27 = *(v22 + 280);
    v28 = *(v22 + 288);
    v30 = *(v27 + 112);
    v29 = *(v27 + 120);
    *(v22 + 136) = 46;
    *(v22 + 144) = 0xE100000000000000;
    v31 = swift_task_alloc();
    *(v31 + 16) = v22 + 136;

    v33 = sub_100014A44(0x7FFFFFFFFFFFFFFFLL, 1, sub_10001F5FC, v31, v30, v29, v32);

    sub_100014F94(v33);
    sub_10003873C();

    if (!v29)
    {
      Substring.init(_:)();
      sub_10003873C();
    }

    v34 = *(v22 + 256);
    v36 = *(v22 + 216);
    v35 = *(v22 + 224);
    v37 = static String._fromSubstring(_:)();
    v23 = v38;
    sub_100008D90();
    v39 = *(v34 + 144);

    v40 = sub_100015060(v36, v35, v39);

    if (v40)
    {
    }

    else
    {
      v42 = *(v22 + 216);
      v41 = *(v22 + 224);
      sub_10000277C();
      v43 = *(v34 + 144);
      swift_isUniquelyReferenced_nonNull_native();
      a10 = *(v34 + 144);
      sub_1000150B0();
      *(v34 + 144) = a10;
      swift_endAccess();
    }

    v44 = *(v22 + 216);
    v45 = *(v22 + 224);
    sub_10000277C();
    v46 = *(v34 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a10 = *(v34 + 144);
    v48 = a10;
    *(v34 + 144) = 0x8000000000000000;
    v49 = sub_100003BC0();
    v51 = v48[2];
    v52 = (v50 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      __break(1u);
    }

    else
    {
      v44 = v49;
      v54 = v50;
      sub_1000228D4(&qword_10008EE08, &qword_10006E898);
      v48 = &a10;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v53))
      {
        v55 = *(v22 + 216);
        v56 = *(v22 + 224);
        v48 = a10;
        v57 = sub_100003BC0();
        if ((v54 & 1) != (v58 & 1))
        {
          sub_100008E28();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v44 = v57;
      }

      if (v54)
      {
        v48 = *(a10[7] + 8 * v44);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_18:
          v61 = v48[2];
          if (v61 >= v48[3] >> 1)
          {
            sub_100015194();
            v48 = v95;
          }

          v62 = *(v22 + 208);
          v48[2] = v61 + 1;
          v63 = &v48[3 * v61];
          v63[4] = v62;
          v63[5] = v37;
          v63[6] = v23;
          v64 = a10;
          *(a10[7] + 8 * v44) = v48;
          *(v34 + 144) = v64;
          swift_endAccess();

          goto LABEL_21;
        }

LABEL_37:
        v93 = v48[2];
        sub_100015194();
        v48 = v94;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_21:
  if (*(*(v22 + 280) + 240) == 2)
  {
    v65 = *(v22 + 256);
    v66 = *(v65 + 152);
    if (!v66)
    {
      v23 = &unk_10008F000;
      if (byte_10008F120 == 1)
      {
        if (qword_10008DD40 == -1)
        {
LABEL_25:
          v67 = type metadata accessor for Logger();
          sub_10000B6D0(v67, qword_10008EC18);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.info.getter();
          if (sub_100003B24(v69))
          {
            v70 = sub_10001196C();
            sub_100009140(v70);
            sub_1000028B8();
            _os_log_impl(v71, v72, v73, v74, v75, 2u);
            sub_100003910();
          }

          v76 = *(v22 + 256);

          v23[288] = 0;
          *(v22 + 296) = *(v76 + 160);
          sub_100008E28();

          return _swift_task_switch(v77, v78, v79);
        }

LABEL_39:
        sub_10000986C();
        swift_once();
        goto LABEL_25;
      }
    }

    v81 = __OFADD__(v66, 1);
    v82 = v66 + 1;
    if (v81)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v65 + 152) = v82;
    v83 = *(v22 + 280);
  }

  v84 = *(v22 + 264);

  sub_10000FF74();
  sub_100008E28();

  return v87(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
}

void sub_100011728(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100011754()
{
  v0[59] = 0;
  v1 = v0[36];
  return v0[34];
}

uint64_t sub_10001179C()
{
  sub_100005284(*(v0 - 120));
}

uint64_t sub_1000117D4()
{
  sub_100004F30();
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[28];
  v9 = *v1;
  sub_100001D58();
  *v10 = v9;
  *(v12 + 256) = v11;
  *(v12 + 264) = v0;

  v13 = v2[13];
  if (v0)
  {
    v14 = sub_10002D764;
  }

  else
  {
    v14 = sub_100011A30;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_10001196C()
{

  return swift_slowAlloc();
}

BOOL sub_100011984()
{

  return sub_100015F14((v2 + 88), v0, v1);
}

void sub_1000119C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100011A04(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v14;
  a1[2].n128_u64[1] = v13;
  a1[3].n128_u64[0] = v12;
  v16 = *(a12 + 24);
}

uint64_t sub_100011A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  sub_100003EBC();
  a20 = v22;
  if (*(v22 + 256))
  {
    v26 = *(v22 + 256);

    sub_100004EA4();
    sub_100008E28();

    return _swift_task_switch(v27, v28, v29);
  }

  reply = xpc_dictionary_create_reply(*(v22 + 96));
  if (reply)
  {
    v32 = reply;
    if (qword_10008DD30 != -1)
    {
      sub_1000097DC();
    }

    v33 = *(v22 + 104);
    v34 = type metadata accessor for Logger();
    sub_10000B6D0(v34, qword_10008E7B0);

    v35 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100005B24())
    {
      v36 = *(v22 + 104);
      v37 = sub_100004D20();
      sub_100004F18();
      sub_100005B3C();
      *v37 = 136446210;
      *(v37 + 4) = sub_1000053A0(*(v36 + 128), *(v36 + 136), &a11);
      sub_100003F48();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_100005284(v23);
      sub_100001D1C();
      sub_100004664();
    }

    v43 = *(v22 + 104);
    xpc_dictionary_set_BOOL(v32, "disabled", 1);
    v44 = *(v43 + 112);
    if (!v44)
    {
      __break(1u);
      return _swift_task_switch(v27, v28, v29);
    }

    v46 = *(v22 + 208);
    v45 = *(v22 + 216);
    v47 = *(v22 + 200);

    v48 = *(v44 + 16);
    swift_unknownObjectRetain();

    xpc_connection_send_message(v48, v32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = *(v22 + 208);
    v50 = *(v22 + 216);
    v51 = *(v22 + 200);
  }

  sub_100001EF0();
  v62 = v52;

  sub_100001D4C();
  sub_100008E28();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, v62, a11, a12, a13, a14);
}

uint64_t sub_100011CA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
}

void sub_100011CD0()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
}

void sub_100011CF0()
{
  *(v2 + 184) = v0;
  v5 = *(v2 + 144);
  *(v0 + 16) = v1;
  *(v0 + 8 * v3 + 32) = v4;
}

uint64_t sub_100011D18(__n128 a1)
{
  v3 = *(v1 + 336);
  v4 = *(v1 + 344);
  v6 = *(v1 + 320);
  v5 = *(v1 + 328);
  v7 = *(v1 + 312);
  a1.n128_f64[0] = *(v1 + 64);

  return Date.advanced(by:)(a1);
}

uint64_t sub_100011D40()
{
  v3 = v0;
  v4 = *v0;
  v5 = sub_100003BC0();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000B7C8();
  sub_1000228D4(&qword_10008F368, &qword_10006EEB8);
  sub_100004D70();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v2);
  sub_100008DA8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v17 = *(*(v1 + 56) + 8 * v7);
  type metadata accessor for Session(0);
  _NativeDictionary._delete(at:)();
  *v3 = v1;
  return v17;
}

uint64_t sub_100011DFC()
{
  sub_100004680();
  v1 = *(v0 + 256);
  v2 = *(v0 + 104);
  *(v0 + 314) = sub_1000112B0() & 1;
  v3 = sub_10000BE90();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100011E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v23;
  a22 = v24;
  sub_100003EBC();
  a20 = v22;
  if ((*(v22 + 314) & 1) == 0)
  {
    v25 = *(v22 + 256);
    v26 = *(v22 + 104);
    v27 = *(v25 + 112);
    v28 = *(v25 + 120);
    swift_beginAccess();

    v29 = *(v26 + 152);
    swift_isUniquelyReferenced_nonNull_native();
    a11 = *(v26 + 152);
    sub_100012378();
    *(v26 + 152) = a11;
    swift_endAccess();
    sub_1000052D0();
    if (!v30)
    {
      sub_1000097DC();
    }

    v31 = *(v22 + 256);
    v32 = *(v22 + 104);
    v33 = type metadata accessor for Logger();
    sub_10000B6D0(v33, qword_10008E7B0);

    v34 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100005B24())
    {
      v35 = *(v22 + 104);
      v36 = sub_1000175B0();
      sub_100005BFC();
      sub_100005B3C();
      *v36 = 136446466;
      v38 = *(v25 + 112);
      v37 = *(v25 + 120);

      v39 = sub_1000053A0(v38, v37, &a11);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_1000053A0(*(v35 + 128), *(v35 + 136), &a11);
      sub_100003F48();
      _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
      swift_arrayDestroy();
      sub_100001D1C();
      sub_100004664();
    }
  }

  reply = xpc_dictionary_create_reply(*(v22 + 96));
  *(v22 + 272) = reply;
  if (!reply)
  {
    v75 = *(v22 + 256);
    v76 = *(v22 + 208);
    v77 = *(v22 + 216);
    v78 = *(v22 + 200);

    goto LABEL_16;
  }

  v46 = reply;
  v47 = *(v22 + 314);
  v48 = *(v22 + 256);
  v49 = *(v48 + 112);
  v50 = *(v48 + 120);
  v51 = String.utf8CString.getter();
  xpc_dictionary_set_string(v46, "genID", (v51 + 32));

  if ((v47 & 1) == 0)
  {
    v89 = *(v22 + 256);
    sub_100008E28();

    return _swift_task_switch(v68, v69, v70);
  }

  sub_1000052D0();
  if (!v30)
  {
    sub_1000097DC();
  }

  v52 = *(v22 + 256);
  v53 = *(v22 + 104);
  v54 = type metadata accessor for Logger();
  sub_10000B6D0(v54, qword_10008E7B0);

  v55 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100005B24())
  {
    v56 = *(v22 + 104);
    v57 = sub_1000175B0();
    sub_100005BFC();
    sub_100005B3C();
    *v57 = 136446466;
    *(v57 + 4) = sub_1000053A0(*(v56 + 128), *(v56 + 136), &a11);
    *(v57 + 12) = 2082;
    v58 = *(v48 + 112);
    v59 = *(v48 + 120);

    v62 = sub_100002744(v60, v61);

    *(v57 + 14) = v62;
    sub_100003F48();
    _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C();
    sub_100004664();
  }

  xpc_dictionary_set_BOOL(v46, "disabled", 1);
  v71 = *(*(v22 + 104) + 112);
  if (!v71)
  {
    __break(1u);
    return _swift_task_switch(v68, v69, v70);
  }

  sub_10002E93C();

  v72 = *(v71 + 16);
  swift_unknownObjectRetain();

  v73 = sub_100004E98();
  xpc_connection_send_message(v73, v74);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_16:
  sub_100001EF0();
  v91 = v79;

  sub_100001D4C();
  sub_100008E28();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, v91, a11, a12, a13, a14);
}

uint64_t sub_1000122D8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100012328@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t sub_100012360()
{
  v1 = v0[46];
  result = v0[43];
  v3 = v0[39];
  v4 = v0[35];
  v5 = *(v0[40] + 32);
  return result;
}

uint64_t sub_100012378()
{
  sub_1000054BC();
  v2 = sub_100002974();
  sub_100009B4C(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  sub_1000228D4(&qword_10008F368, &qword_10006EEB8);
  v9 = sub_100003CC0();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    v11 = *v1;
    sub_10000C6AC();
    sub_100003BC0();
    sub_100008EB0();
    if (!v13)
    {
      goto LABEL_14;
    }

    v7 = v12;
  }

  if (v8)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v7);
    *(v14 + 8 * v7) = v0;
    sub_10000CE54();
  }

  else
  {
    v18 = sub_10000BEFC();
    sub_100045ADC(v18, v19, v20, v21, v22);
    sub_10000CE54();
  }
}

uint64_t sub_10001245C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 8) = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 16) = v2;

  return swift_willThrow();
}

uint64_t sub_1000124A8()
{

  return swift_allocObject();
}

uint64_t sub_1000124D8(uint64_t a1)
{
  *(a1 + 8) = sub_100055078;
  v2 = *(v1 + 160);
  return *(v1 + 240);
}

uint64_t sub_100012508(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;
  v4 = v1[26];
  v5 = v1[27];
  v7 = v1[28];
  v6 = v1[29];
  v9 = v1[24];
  v10 = v1[25];
}

uint64_t sub_100012534(uint64_t a1)
{
  *(v2 + 80) = v1;
  *(v2 + 160) = a1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_100012550()
{
  sub_100010548();
  sub_100003EBC();
  v3 = *(v0 + 80);
  if (*(v3 + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) == 1 && (sub_100061658(), !v4) && (v5 = v3 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend, v1 = *(v3 + OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend), (*(v0 + 88) = v1) != 0))
  {
    v6 = *(v5 + 8);
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    *v7 = v0;
    v7[1] = sub_10005A4B4;
    v8 = *(v0 + 80);
    sub_100008E28();

    return sub_10005EF44(v9, v10);
  }

  else
  {
    sub_100061658();
    if (!v4)
    {
      sub_100061554();
    }

    v34 = *(v0 + 160);
    sub_1000228D4(&qword_10008E4A0, &unk_100070080);
    v13 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    sub_100003F10(v13);
    v15 = *(v14 + 72);
    *(sub_100061564() + 16) = xmmword_10006D1D0;
    v16 = *(v1 + 56);
    sub_100003CFC();
    sub_10001C494(v17);
    sub_1000615B0();
    swift_storeEnumTagMultiPayload();
    v18 = *(v1 + 56);
    sub_10000FFD8();
    *v19 = v20;
    v19[1] = v2;
    *(v19 + v21) = 1;
    sub_1000615B0();
    swift_storeEnumTagMultiPayload();
    v22 = Dictionary.init(dictionaryLiteral:)();
    v23 = *(v3 + 160);
    v24 = *(v3 + 168);

    sub_1000128E8(v34, v23, v24);

    swift_isUniquelyReferenced_nonNull_native();
    sub_100007B80();
    sub_100061714(v25, v26, v27, v28, v29);
    *(v0 + 112) = v22;
    v30 = swift_task_alloc();
    v31 = sub_10000B9C4(v30);
    *v31 = v32;
    sub_100003E48(v31);
    sub_100008E28();

    return sub_10000BA94();
  }
}

BOOL sub_1000127C4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000127F0()
{
}

uint64_t sub_100012848()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v7 = v0[8];
  v5 = v0[7];

  return swift_getObjectType();
}

uint64_t sub_100012868()
{
  sub_100004680();
  v1 = v0[32];
  v2 = v0[13];
  v0[35] = sub_100012A74();
  v0[36] = v3;
  v4 = sub_10000BE90();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000128CC()
{
  v2 = *(v0 + 624);
  v3 = *(v0 + 592);
}

uint64_t sub_1000128E8(char a1, uint64_t a2, uint64_t a3)
{
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v6 = (sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10006D1D0;
  v10 = (v9 + v8);
  v11 = (v9 + v8 + v6[14]);
  *v10 = 0x67616265726F7453;
  v10[1] = 0xEF6E6F6973726556;
  *v11 = a2;
  v11[1] = a3;
  type metadata accessor for EventValue();
  sub_1000043C0();
  v12 = (v10 + v7);
  v13 = v6[14];
  *v12 = 0xD000000000000013;
  v12[1] = 0x8000000100070E90;
  *(v12 + v13) = a1;
  swift_storeEnumTagMultiPayload();

  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_100012A74()
{
  v1 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6[0] = v1;
  *(v6 + 9) = *(v0 + 161);
  v7 = v5;
  v8 = v0[10];
  sub_100010288();
  sub_100010288();
  sub_100005CC0(&v8, &v4);
  v2 = sub_100012B2C();
  sub_100061764(&v7);
  sub_100061764(&v7 + 8);
  sub_10000D9BC(&v8);
  return v2;
}

void *sub_100012B2C()
{
  v87 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v2 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v4 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v86 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(*v0 + 16);
  v83 = *v0;
  v84 = v10;
  v82[1] = v6;
  if (v10)
  {
    v88 = &_swiftEmptyArrayStorage;
    sub_1000194D0(0, v10, 0);
    v11 = v88;
    v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = v10;
    do
    {
      v15 = v86;
      sub_100019638(v12, v86);
      sub_10004FC08(v15, v4);
      v1 = *&v4[*(v87 + 36)];

      sub_10001969C(v4);
      v88 = v11;
      v17 = v11[2];
      v16 = v11[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1000051E0(v16);
        sub_1000194D0(v19, v17 + 1, 1);
        v11 = v88;
      }

      v11[2] = v18;
      v11[v17 + 4] = v1;
      v12 += v13;
      --v14;
    }

    while (v14);
    v9 = v83;
  }

  else
  {
    v18 = *(&_swiftEmptyArrayStorage + 2);
    v11 = &_swiftEmptyArrayStorage;
  }

  v20 = 0;
  v88 = &_swiftEmptySetSingleton;
  while (v18 != v20)
  {
    if (v20 >= v11[2])
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v21 = v20 + 1;
    v22 = v11[v20 + 4];

    sub_1000196F8(v23);
    v20 = v21;
  }

  v82[0] = v88;
  v24 = v84;
  v85 = &_swiftEmptyArrayStorage;
  if (v84)
  {
    v88 = &_swiftEmptyArrayStorage;
    v25 = &v88;
    sub_1000194D0(0, v84, 0);
    sub_1000044D4();
    v27 = v9 + v26;
    v29 = *(v28 + 72);
    do
    {
      v30 = v86;
      sub_100019638(v27, v86);
      sub_10004FC08(v30, v4);
      v31 = *&v4[*(v87 + 36)];

      sub_10001969C(v4);
      sub_100001DFC();
      if (v33)
      {
        v34 = sub_1000051E0(v32);
        sub_1000194D0(v34, v1, 1);
        v25 = v88;
      }

      v25[2] = v1;
      v25[v30 + 4] = v31;
      v27 += v29;
      --v24;
    }

    while (v24);
  }

  else
  {
    v1 = *(&_swiftEmptyArrayStorage + 2);
    v25 = &_swiftEmptyArrayStorage;
  }

  v35 = 0;
  v36 = &_swiftEmptySetSingleton;
  while (v1 != v35)
  {
    if (v35 >= v25[2])
    {
      goto LABEL_48;
    }

    v37 = v25[v35 + 4];
    v38 = v36[32];
    v39 = v38 & 0x3F;
    v40 = ((1 << v38) + 63) >> 6;
    swift_bridgeObjectRetain_n();

    if (v39 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      __chkstk_darwin(isStackAllocationSafe);
      sub_100019D90(0, v40, v82 - ((8 * v40 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1000039E8();
      v46 = sub_10001980C(v42, v43, v44, v45);
      if (v40)
      {
LABEL_50:

        swift_willThrow();

        __break(1u);
LABEL_51:

        result = sub_100007B04();
        __break(1u);
        return result;
      }

      v47 = v46;
    }

    else
    {
      swift_slowAlloc();

      sub_1000039E8();
      v52 = sub_100050394(v48, v49, v50, v51);
      if (v40)
      {
        goto LABEL_51;
      }

      v47 = v52;

      swift_bridgeObjectRelease_n();
      sub_100007B04();
    }

    v36 = v47;

    ++v35;
  }

  v53 = v84;
  if (v84)
  {
    v88 = &_swiftEmptyArrayStorage;
    v54 = &v88;
    sub_1000194D0(0, v84, 0);
    sub_1000044D4();
    v56 = v83 + v55;
    v58 = *(v57 + 72);
    do
    {
      v59 = v86;
      sub_100019638(v56, v86);
      sub_10004FC08(v59, v4);
      v60 = *&v4[*(v87 + 40)];

      sub_10001969C(v4);
      sub_100001DFC();
      if (v33)
      {
        v62 = sub_1000051E0(v61);
        sub_1000194D0(v62, v1, 1);
        v54 = v88;
      }

      v54[2] = v1;
      v54[v59 + 4] = v60;
      v56 += v58;
      --v53;
    }

    while (v53);
    v85 = v54;
  }

  else
  {
    v1 = *(&_swiftEmptyArrayStorage + 2);
  }

  v63 = 0;
  v64 = &_swiftEmptySetSingleton;
  while (v1 != v63)
  {
    if (v63 >= v85[2])
    {
      goto LABEL_49;
    }

    v65 = v85[v63 + 4];
    v66 = v64[32];
    v67 = v66 & 0x3F;
    v68 = ((1 << v66) + 63) >> 6;
    swift_bridgeObjectRetain_n();

    if (v67 <= 0xD || (v69 = swift_stdlib_isStackAllocationSafe(), (v69 & 1) != 0))
    {
      __chkstk_darwin(v69);
      sub_100019D90(0, v68, v82 - ((8 * v68 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1000039E8();
      v74 = sub_10001980C(v70, v71, v72, v73);
      if (v68)
      {
        goto LABEL_50;
      }

      v75 = v74;
    }

    else
    {
      swift_slowAlloc();

      sub_1000039E8();
      v80 = sub_100050394(v76, v77, v78, v79);
      if (v68)
      {
        goto LABEL_51;
      }

      v75 = v80;

      swift_bridgeObjectRelease_n();
      sub_100007B04();
    }

    v64 = v75;

    ++v63;
  }

  return sub_100013304(v36, v82[0], v64);
}

char *sub_100013250()
{

  return sub_100060CA4(0, v0, 0);
}

uint64_t sub_1000132BC(uint64_t a1)
{

  return sub_1000026BC(v1, 1, 1, a1);
}

uint64_t sub_1000132DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_1000053A0(v14, v15, &a11);
}

void *sub_100013304(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 16);

  if (v5)
  {
    sub_10004E2BC(a2, a3);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return a2;
}

void sub_100013370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v23;
  a22 = v24;
  sub_100003EBC();
  a20 = v22;
  v25 = v22[35];
  if (*(v25 + 16))
  {
    v26 = v22[34];
    v27 = sub_10002C83C(v25);
    xpc_dictionary_set_value(v26, "allowed", v27);
    swift_unknownObjectRelease();
    sub_1000052D0();
    if (!v28)
    {
      sub_1000097DC();
    }

    v30 = v22[35];
    v29 = v22[36];
    v31 = v22[32];
    v32 = type metadata accessor for Logger();
    sub_10000B6D0(v32, qword_10008E7B0);

    v33 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (sub_100004CAC())
    {
      v34 = v22[35];
      v35 = v22[32];
      sub_1000175B0();
      a11 = sub_100008CF8();
      *v29 = 136446466;
      v36 = *(v35 + 112);
      v37 = *(v35 + 120);

      v40 = sub_100002744(v38, v39);

      *(v29 + 4) = v40;
      sub_100016718();

      Set.description.getter();

      v43 = sub_100002744(v41, v42);

      *(v29 + 14) = v43;
      sub_1000028B8();
      _os_log_impl(v44, v45, v46, v47, v48, 0x16u);
      swift_arrayDestroy();
      sub_100004664();
      sub_100003910();
    }
  }

  if (*(v22[36] + 16))
  {
    v49 = v22[34];
    v50 = sub_10002C83C(v22[36]);
    xpc_dictionary_set_value(v49, "denied", v50);
    swift_unknownObjectRelease();
    sub_1000052D0();
    if (!v28)
    {
      sub_1000097DC();
    }

    v52 = v22[35];
    v51 = v22[36];
    v53 = v22[32];
    v54 = type metadata accessor for Logger();
    sub_10000B6D0(v54, qword_10008E7B0);

    v55 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    v56 = sub_100004CAC();
    v58 = v22[35];
    v57 = v22[36];
    if (v56)
    {
      v59 = v22[32];
      sub_1000175B0();
      a11 = sub_100008CF8();
      *v51 = 136446466;
      v60 = *(v59 + 112);
      v61 = *(v59 + 120);

      v62 = sub_1000053A0(v60, v61, &a11);

      *(v51 + 4) = v62;
      sub_100016718();

      Set.description.getter();

      v65 = sub_100002744(v63, v64);

      *(v51 + 14) = v65;
      sub_1000028B8();
      _os_log_impl(v66, v67, v68, v69, v70, 0x16u);
      swift_arrayDestroy();
      sub_100004664();
      sub_100003910();

      goto LABEL_15;
    }
  }

  else
  {
    v71 = v22[35];
  }

LABEL_15:
  v72 = *(v22[13] + 112);
  if (v72)
  {
    sub_10002E93C();

    v73 = *(v72 + 16);
    swift_unknownObjectRetain();

    v74 = sub_100004E98();
    xpc_connection_send_message(v74, v75);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100001EF0();
    v85 = v76;

    sub_100001D4C();
    sub_100008E28();

    v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, v85, a11, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000137B4()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 120);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_1000043E4();
  *v5 = v4;

  sub_1000614E8();

  return _swift_task_switch(v6, v7, v8);
}

void sub_1000138B0()
{
  *(*(v0 + 80) + OBJC_IVAR____TtC13rtcreportingd7Session_receivedEnd) = 1;
  v1 = qword_100095AD8;
  *(v0 + 128) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();
    v2 = *(v0 + 112);
    v3 = *(v0 + 80);

    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_100013BB4;
    v7 = *(v0 + 160);

    sub_100013990(v4, v5, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100013990(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  return sub_100001F2C(sub_1000139B4, v3);
}

uint64_t sub_1000139B4(uint64_t a1)
{
  v2 = *(*(v1 + 32) + 112);
  *(v1 + 40) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_1000139D0()
{
  sub_100002624();
  v2 = *(v1 + 40);
  sub_100001D10();
  sub_100007C28(66);
  v3 = sub_100009400();
  if (v0)
  {
    *(v1 + 48) = v0;
    v4 = *(v1 + 32);
    v5 = sub_10003D52C;
  }

  else
  {
    sub_100013A88(v3, *(v1 + 56), *(v1 + 16), *(v1 + 24));

    v4 = *(v1 + 32);
    v5 = sub_100013BB0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100013A88(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006D1D0;
  *(inited + 56) = &type metadata for Int64;
  *(inited + 64) = &off_100086270;
  *(inited + 32) = a2 & 1;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = a3;
  *(inited + 80) = a4;

  sub_100009524(inited);
  if (v4)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_100013BB4()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1000043E4();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[10];
    v10 = sub_10005AB18;
  }

  else
  {
    v11 = v3[16];
    v12 = v3[10];

    v10 = sub_100013CC4;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100013CC4(uint64_t a1)
{
  v2 = *(*(v1 + 80) + 184);
  *(v1 + 152) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_100013CE0()
{
  sub_100004680();
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  sub_1000143FC(v2);

  return _swift_task_switch(sub_1000146F4, v2, 0);
}

void sub_100013D4C(Swift::Int a1, Swift::Int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v10 = sub_100001D80(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v84 - v13;
  sub_100008D90();
  v15 = v3[15];

  v16 = sub_10000BEAC();
  v18 = sub_1000145CC(v16, v17, v15);
  v20 = v19;

  if (v20)
  {
    if (qword_10008DD40 != -1)
    {
      sub_10000986C();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000FF58(v21, qword_10008EC18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_7;
    }

    v24 = sub_100004D20();
    v25 = sub_100004F18();
    v89 = v25;
    *v24 = 136446210;
    v26 = sub_10000BEAC();
    *(v24 + 4) = sub_1000053A0(v26, v27, v28);
    _os_log_impl(&_mh_execute_header, v22, v23, "session config finished with no use count for %{public}s", v24, 0xCu);
    sub_100005284(v25);
    sub_100003D78();
    goto LABEL_6;
  }

  v29 = v18 - 1;
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v85 = v8;
    v86 = v14;
    --*(v4 + 64);
    if (qword_10008DD40 == -1)
    {
      goto LABEL_10;
    }
  }

  sub_10000986C();
  swift_once();
LABEL_10:
  v30 = type metadata accessor for Logger();
  sub_1000050E4(v30, qword_10008EC18);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    swift_slowAlloc();
    v33 = sub_100006FB8();
    v89 = v33;
    *v15 = 136446722;
    v34 = sub_10000BEAC();
    *(v15 + 4) = sub_1000053A0(v34, v35, v36);
    *(v15 + 12) = 2050;
    *(v15 + 14) = v29;
    *(v15 + 22) = 512;
    *(v15 + 24) = *(v4 + 64);

    _os_log_impl(&_mh_execute_header, v31, v32, "session config finished for %{public}s with %{public}lld uses remaining. Total Active Sessions: %hu", v15, 0x1Au);
    sub_100005284(v33);
    sub_100001D1C();
    sub_100003D78();
  }

  else
  {
  }

  if (v29 <= 0)
  {
    swift_beginAccess();
    sub_10000BEAC();
    sub_100015D00();
    swift_endAccess();
    if (a3)
    {
      sub_100008D90();
      v38 = v4[17];

      v39 = sub_10000BEAC();
      v41 = sub_100015DE0(v39, v40, v38);

      v22 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      v43 = os_log_type_enabled(v22, v42);
      if (v41)
      {
        if (!v43)
        {
          goto LABEL_7;
        }

        v44 = sub_100004D20();
        v45 = sub_100004F18();
        v87 = v45;
        *v44 = 136446210;
        v46 = sub_10000BEAC();
        *(v44 + 4) = sub_1000053A0(v46, v47, v48);
        _os_log_impl(&_mh_execute_header, v22, v42, "not evicting %{public}s: already running", v44, 0xCu);
        sub_100005284(v45);
        sub_100001D1C();
LABEL_6:
        sub_100001D1C();
LABEL_7:

        return;
      }

      if (v43)
      {
        v64 = sub_100004D20();
        v65 = sub_100004F18();
        v87 = v65;
        *v64 = 136446210;
        v66 = sub_10000BEAC();
        *(v64 + 4) = sub_1000053A0(v66, v67, v68);
        _os_log_impl(&_mh_execute_header, v22, v42, "starting eviction timer for %{public}s", v64, 0xCu);
        sub_100005284(v65);
        sub_100003D78();
        sub_100001D1C();
      }

      v69 = v85;
      sub_10000277C();

      sub_100015F14(&v88, a1, a2);
      swift_endAccess();

      type metadata accessor for TaskPriority();
      sub_1000058C8();
      sub_1000026BC(v70, v71, v72, v73);
      sub_100001F64();
      v77 = sub_100016084(v74, v75, v76);
      sub_100005BAC();
      v78 = swift_allocObject();
      v78[2] = v4;
      v78[3] = v77;
      v78[4] = v4;
      v78[5] = a1;
      v78[6] = a2;
      v78[7] = v69;
      swift_retain_n();

      v79 = sub_100011CB8();
      sub_10005A254(v79, v80, v81, v82, v83);
    }

    else
    {
      type metadata accessor for TaskPriority();
      sub_1000058C8();
      sub_1000026BC(v49, v50, v51, v52);
      sub_100001F64();
      v56 = sub_100016084(v53, v54, v55);
      sub_100005BAC();
      v57 = swift_allocObject();
      v57[2] = v4;
      v57[3] = v56;
      v57[4] = a1;
      v57[5] = a2;
      v58 = v85;
      v57[6] = v4;
      v57[7] = v58;
      swift_retain_n();

      v59 = sub_100011CB8();
      sub_10002D48C(v59, v60, v61, v62, v63);
    }
  }

  else
  {
    swift_beginAccess();
    v37 = v4[15];
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v4[15];
    sub_100014624();
    v4[15] = v87;
    swift_endAccess();
  }
}

uint64_t sub_100014374()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  sub_100005BAC();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000143B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_100005BAC();

  return _swift_deallocObject(v4, v5, v6);
}

void sub_1000143FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID + 8);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID);
    v6 = sub_100033B50();
    v8 = sub_1000355A4(v20, v5, v4);
    if (*v7)
    {
      v9 = v7;

      v10 = sub_100038078(v9, a1);
      v11 = *(*v9 + 16);
      if (v11 < v10)
      {
        goto LABEL_14;
      }

      sub_10003A844(v10, v11);
      (v8)(v20, 0);
      (v6)(v21, 0);
    }

    else
    {
      (v8)(v20, 0);
      (v6)(v21, 0);
    }

    sub_100008D90();
    v12 = *(v2 + 144);

    v13 = sub_100009AEC();
    v15 = sub_100015060(v13, v14, v12);

    if (v15)
    {
      v16 = *(v15 + 16);

      if (!v16)
      {
        sub_10000277C();
        sub_100009AEC();
        sub_100045848();
        swift_endAccess();
      }
    }
  }

  if (*(a1 + 240) != 2)
  {
LABEL_12:
    sub_100013D4C(*(a1 + 192), *(a1 + 200), 1);
    return;
  }

  v17 = *(v2 + 152);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (!v18)
  {
    *(v2 + 152) = v19;
    goto LABEL_12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1000145CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100003BC0();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void sub_100014624()
{
  sub_1000054BC();
  v2 = sub_100002974();
  sub_100009B4C(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  sub_1000228D4(&unk_10008F3A0, &qword_10006E890);
  v9 = sub_100003CC0();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    v11 = *v1;
    sub_10000C6AC();
    sub_100003BC0();
    sub_100008EB0();
    if (!v13)
    {
      goto LABEL_12;
    }

    v7 = v12;
  }

  if (v8)
  {
    *(*(*v1 + 56) + 8 * v7) = v0;
    sub_10000CE54();
  }

  else
  {
    v14 = sub_10000BEFC();
    sub_10000D044(v14, v15, v16, v17, v18);
    sub_10000CE54();
  }
}