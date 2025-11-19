unint64_t sub_100156238()
{
  v1 = 2036625250;
  if (*v0 != 1)
  {
    v1 = 0x6341726573557369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100156298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100158244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001562C0(uint64_t a1)
{
  v2 = sub_100158630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001562FC(uint64_t a1)
{
  v2 = sub_100158630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100156338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015836C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100156394(uint64_t a1)
{
  v2 = sub_10006DB78();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_1001563D0(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACCB8, &qword_1004C8188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001581A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[7];
  v11 = v2[5];
  v47 = v2[6];
  v48 = v10;
  v12 = v2[7];
  v13 = v2[9];
  v49 = v2[8];
  v50 = v13;
  v14 = v2[3];
  v15 = v2[1];
  v43 = v2[2];
  v44 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v45 = v2[4];
  v46 = v17;
  v18 = v2[1];
  v42[0] = *v2;
  v42[1] = v18;
  v38 = v47;
  v39 = v12;
  v19 = v2[9];
  v40 = v49;
  v41 = v19;
  v34 = v43;
  v35 = v16;
  v36 = v45;
  v37 = v11;
  v32 = v42[0];
  v33 = v15;
  v31 = 0;
  sub_100005F04(v42, v30, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v20 = v51;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v30[6] = v38;
  v30[7] = v39;
  v30[8] = v40;
  v30[9] = v41;
  v30[2] = v34;
  v30[3] = v35;
  v30[4] = v36;
  v30[5] = v37;
  v30[0] = v32;
  v30[1] = v33;
  sub_100002CE0(v30, &qword_1005A9328, &unk_1004C7F20);
  if (!v20)
  {
    v21 = type metadata accessor for FriendshipStopOfferContent();
    v22 = v21[5];
    LOBYTE(v29) = 1;
    type metadata accessor for ClientContext();
    sub_1001581FC(&qword_1005AC568, type metadata accessor for ClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = (v2 + v21[6]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v2 + v21[7]);
    HIBYTE(v28) = 3;
    v27 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    v51 = v27;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = *(v2 + v21[8]);
    HIBYTE(v28) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1001567AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for ClientContext();
  v3 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005ACCC8, &qword_1004C8190);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for FriendshipStopOfferContent();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v14 = a1[4];
  v49 = a1;
  sub_100011AEC(a1, v15);
  sub_1001581A8();
  v16 = v9;
  v17 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v49);
  }

  v30 = v10;
  v38 = 0;
  sub_1001452AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v46;
  v13[6] = v45;
  v13[7] = v18;
  v19 = v48;
  v13[8] = v47;
  v13[9] = v19;
  v20 = v42;
  v13[2] = v41;
  v13[3] = v20;
  v21 = v44;
  v13[4] = v43;
  v13[5] = v21;
  v22 = v40;
  *v13 = v39;
  v13[1] = v22;
  LOBYTE(v37) = 1;
  sub_1001581FC(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v30;
  sub_100144E70(v5, v13 + *(v30 + 20));
  LOBYTE(v37) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = (v13 + *(v23 + 24));
  *v25 = v24;
  v25[1] = v26;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v36 = 3;
  sub_10001CCC4(&qword_1005A9E80);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v30;
  **(v30 + 28) = v37;
  v36 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v16, v34);
  **(v27 + 32) = v37;
  sub_100157DE4(0, v31, type metadata accessor for FriendshipStopOfferContent);
  sub_100004984(v49);
  return sub_100157E4C(0, type metadata accessor for FriendshipStopOfferContent);
}

uint64_t sub_100156CF8()
{
  v1 = *v0;
  v2 = 0x6F43726576726573;
  v3 = 0x644970756F7267;
  v4 = 0x6449646E65697266;
  if (v1 != 3)
  {
    v4 = 0x73656C646E6168;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746E65696C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100156DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001588B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100156DC8(uint64_t a1)
{
  v2 = sub_1001581A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100156E04(uint64_t a1)
{
  v2 = sub_1001581A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100156E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for ClientOrigin();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = type metadata accessor for RequestOrigin();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = type metadata accessor for GroupID();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = type metadata accessor for FriendshipStopOfferContent();
  v3[17] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v18 = type metadata accessor for Account();
  v3[21] = v18;
  v19 = *(v18 - 8);
  v3[22] = v19;
  v20 = *(v19 + 64) + 15;
  v3[23] = swift_task_alloc();
  v21 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v23 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_1001571AC, 0, 0);
}

uint64_t sub_1001571AC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v16 = *(v0 + 192);
  v17 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  *(v0 + 272) = 1;
  *(v0 + 240) = sub_10014ABCC();
  FriendshipRequest.callerHandle.getter();
  FriendshipRequest.origin.getter();
  (*(v6 + 56))(v2, 0, 1, v7);
  (*(v3 + 16))(v4, v9, v5);
  sub_100005F04(v2, v16, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v17, &qword_1005B3360, &unk_1004C6AA0);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_100157324;
  v11 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);

  return sub_1001667E8(v11, v13, v14, v12, _swiftEmptyArrayStorage);
}

uint64_t sub_100157324()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 200);
  v5 = *v0;

  sub_100002CE0(v3, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v2, &qword_1005B3360, &unk_1004C6AA0);

  return _swift_task_switch(sub_100157478, 0, 0);
}

uint64_t sub_100157478()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[4];
  sub_100157DE4(v0[29], v0[28], type metadata accessor for ClientContext);
  FriendshipRequest.origin.getter();
  v8 = FriendshipRequest.isFromGroup.getter();
  RequestOrigin.origin.getter();
  (*(v2 + 8))(v1, v3);
  if ((*(v6 + 88))(v4, v5) == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v8)
    {
      v9 = &enum case for GroupID.group(_:);
    }

    else
    {
      v9 = &enum case for GroupID.oneToOne(_:);
    }

    (*(v0[15] + 104))(v0[16], *v9, v0[14]);
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];
    (*(v0[15] + 104))(v0[16], enum case for GroupID.oneToOne(_:), v0[14]);
    (*(v11 + 8))(v10, v12);
  }

  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_100157638;
  v14 = v0[28];
  v15 = v0[20];
  v16 = v0[16];
  v17 = v0[3];

  return sub_100155438(v15, v14, v17, v16);
}

uint64_t sub_100157638()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100157BE0;
  }

  else
  {
    v3 = sub_10015774C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015774C()
{
  v54 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC28);
  sub_100157DE4(v2, v1, type metadata accessor for FriendshipStopOfferContent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53 = v11;
    *v10 = 136315138;
    sub_100157DE4(v7, v8, type metadata accessor for FriendshipStopOfferContent);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_100157E4C(v7, type metadata accessor for FriendshipStopOfferContent);
    v15 = sub_10000D01C(v12, v14, &v53);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request content: %s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    sub_100157E4C(v7, type metadata accessor for FriendshipStopOfferContent);
  }

  v16 = *(v0 + 264);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  v22 = type metadata accessor for JSONEncoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v19 = sub_10019E890;
  v19[1] = 0;
  (*(v20 + 104))(v19, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v21);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1001581FC(&qword_1005ACBF8, type metadata accessor for FriendshipStopOfferContent);
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v16)
  {

    v27 = 0;
    v28 = 0xF000000000000000;
  }

  else
  {
    v27 = v25;
    v28 = v26;
  }

  v29 = *(v0 + 232);
  v30 = *(v0 + 240);
  v41 = *(v0 + 224);
  v42 = *(v0 + 216);
  v43 = *(v0 + 208);
  v44 = *(v0 + 200);
  v45 = *(v0 + 192);
  v46 = *(v0 + 184);
  v31 = *(v0 + 168);
  v32 = *(v0 + 176);
  v33 = *(v0 + 160);
  v47 = *(v0 + 152);
  v48 = *(v0 + 144);
  v49 = *(v0 + 128);
  v50 = *(v0 + 104);
  v51 = *(v0 + 80);
  v52 = *(v0 + 56);
  v34 = *(v0 + 32);
  v35 = *(v0 + 16);
  v36 = type metadata accessor for FriendshipRequest();
  (*(*(v36 - 8) + 8))(v34, v36);
  (*(v32 + 8))(v35, v31);
  sub_100157E4C(v33, type metadata accessor for FriendshipStopOfferContent);
  sub_100157E4C(v29, type metadata accessor for ClientContext);
  sub_10001A794(0, 0xF000000000000000);
  v37 = *(v0 + 272);

  sub_10002CF44(v27, v28);

  sub_10001A794(v27, v28);

  v38 = *(v0 + 8);
  v39 = *(v0 + 240);

  return v38(v39, v27, v28, v37);
}

uint64_t sub_100157BE0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  v14 = v0[25];
  v15 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[7];
  v8 = v0[4];
  v9 = v0[2];
  v10 = type metadata accessor for FriendshipRequest();
  (*(*(v10 - 8) + 8))(v8, v10);
  (*(v6 + 8))(v9, v7);
  sub_100157E4C(v1, type metadata accessor for ClientContext);

  sub_10001A794(0, 0xF000000000000000);

  v11 = v0[1];
  v12 = v0[33];

  return v11();
}

uint64_t type metadata accessor for FriendshipStopOfferContent()
{
  result = qword_1005ACC58;
  if (!qword_1005ACC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100157DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100157E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100157ED4()
{
  sub_100154568(319, &qword_1005AC500, &type metadata for ServerContext, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      sub_100149B90();
      if (v2 <= 0x3F)
      {
        sub_100154568(319, &unk_1005ACAF0, &type metadata for String, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100157FD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100158020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100158078()
{
  result = qword_1005ACCA0;
  if (!qword_1005ACCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCA0);
  }

  return result;
}

uint64_t sub_1001580CC(uint64_t a1)
{
  *(a1 + 8) = sub_1001581FC(&qword_1005ACCA8, type metadata accessor for FriendshipStopOfferContent);
  result = sub_1001581FC(&qword_1005ACBF8, type metadata accessor for FriendshipStopOfferContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100158154()
{
  result = qword_1005ACCB0;
  if (!qword_1005ACCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCB0);
  }

  return result;
}

unint64_t sub_1001581A8()
{
  result = qword_1005ACCC0;
  if (!qword_1005ACCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCC0);
  }

  return result;
}

uint64_t sub_1001581FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100158244(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E2A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341726573557369 && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10015836C(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005ACCD0, &unk_1004C8198);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v8 = a1[3];
  sub_100011AEC(a1, v8);
  sub_100158630();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v13 = 0;
    sub_10014D0DC(&qword_1005AC970);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v12[0];
    v13 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v12[0];
    v11 = v12[1];
    sub_10001A794(0, 0xF000000000000000);
    LOBYTE(v12[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);

    sub_10002CF44(v10, v11);
    sub_100004984(a1);

    sub_10001A794(v10, v11);
  }

  return v8;
}

unint64_t sub_100158630()
{
  result = qword_1005ACCD8;
  if (!qword_1005ACCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCD8);
  }

  return result;
}

unint64_t sub_1001586A8()
{
  result = qword_1005ACCE8;
  if (!qword_1005ACCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCE8);
  }

  return result;
}

unint64_t sub_100158700()
{
  result = qword_1005ACCF0;
  if (!qword_1005ACCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCF0);
  }

  return result;
}

unint64_t sub_100158758()
{
  result = qword_1005ACCF8;
  if (!qword_1005ACCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCF8);
  }

  return result;
}

unint64_t sub_1001587B0()
{
  result = qword_1005ACD00;
  if (!qword_1005ACD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACD00);
  }

  return result;
}

unint64_t sub_100158808()
{
  result = qword_1005ACD08;
  if (!qword_1005ACD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACD08);
  }

  return result;
}

unint64_t sub_100158860()
{
  result = qword_1005ACD10;
  if (!qword_1005ACD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACD10);
  }

  return result;
}

uint64_t sub_1001588B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449646E65697266 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100158A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendshipResponseToInviteType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006DF9C(a1);
  (*(v5 + 16))(v8, a2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for FriendshipResponseToInviteType.accept(_:) || v9 == enum case for FriendshipResponseToInviteType.decline(_:))
  {
    v11 = 0xEF65736E6F707365;
    v12 = 0x52657469766E692FLL;
LABEL_9:
    v13 = URLComponents.path.modify();
    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);

    v13(v17, 0);
    (*(v5 + 8))(a2, v4);
    v15 = type metadata accessor for Account();
    return (*(*(v15 - 8) + 8))(a1, v15);
  }

  if (v9 == enum case for FriendshipResponseToInviteType.notNow(_:))
  {
    v11 = 0xE700000000000000;
    v12 = 0x776F4E746F6E2FLL;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RespondToInviteEndpoint()
{
  result = qword_1005ACD70;
  if (!qword_1005ACD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100158D50(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACE60, &qword_1004C8638);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10015AC4C();
  v10 = v4;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v2[7];
  v12 = v2[5];
  v59 = v2[6];
  v60 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v61 = v2[8];
  v62 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v55 = v2[2];
  v56 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v57 = v2[4];
  v58 = v18;
  v19 = v2[1];
  v54[0] = *v2;
  v54[1] = v19;
  v50 = v59;
  v51 = v13;
  v20 = v2[9];
  v52 = v61;
  v53 = v20;
  v46 = v55;
  v47 = v17;
  v48 = v57;
  v49 = v12;
  v44 = v54[0];
  v45 = v16;
  v43 = 0;
  sub_100005F04(v54, &v33, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v21 = v63;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v21)
  {
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v33 = v44;
    v34 = v45;
    sub_100002CE0(&v33, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v33 = v44;
    v34 = v45;
    sub_100002CE0(&v33, &qword_1005A9328, &unk_1004C7F20);
    v22 = type metadata accessor for RespondToInviteRequestContent();
    v23 = v22[5];
    v32 = 1;
    type metadata accessor for ClientContext();
    sub_100009170(&qword_1005AC568, type metadata accessor for ClientContext);
    v10 = v4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = (v2 + v22[6]);
    v25 = *v24;
    v26 = v24[1];
    v32 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = (v2 + v22[7]);
    v28 = *v27;
    v29 = v27[1];
    v32 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v10);
}

uint64_t sub_10015908C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for ClientContext();
  v3 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005ACE70, &qword_1004C8640);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = type metadata accessor for RespondToInviteRequestContent();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = a1[4];
  v39 = a1;
  sub_100011AEC(a1, v14);
  sub_10015AC4C();
  v16 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100004984(v39);
  }

  v38 = v10;
  v51 = 0;
  sub_1001452AC();
  v17 = v9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v48;
  v13[6] = v47;
  v13[7] = v18;
  v19 = v50;
  v13[8] = v49;
  v13[9] = v19;
  v20 = v44;
  v13[2] = v43;
  v13[3] = v20;
  v21 = v46;
  v13[4] = v45;
  v13[5] = v21;
  v22 = v42;
  *v13 = v41;
  v13[1] = v22;
  v40 = 1;
  sub_100009170(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v38;
  sub_10015ACA0(v5, v13 + *(v38 + 20), type metadata accessor for ClientContext);
  v40 = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = (v13 + *(v23 + 24));
  *v25 = v24;
  v25[1] = v26;
  v40 = 3;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v28;
  v29 = v27;
  (*(v36 + 8))(v17, v37);
  v30 = (v13 + *(v23 + 28));
  v31 = v34;
  v32 = v35;
  *v30 = v29;
  v30[1] = v32;
  sub_10015A984(v13, v31, type metadata accessor for RespondToInviteRequestContent);
  sub_100004984(v39);
  return sub_10015A9EC(v13, type metadata accessor for RespondToInviteRequestContent);
}

uint64_t sub_10015952C(uint64_t a1)
{
  v2 = sub_10006DF48();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100159568()
{
  v1 = 0x6F43726576726573;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 0x6465747065636361;
  }

  if (*v0)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001595E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015AE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100159608(uint64_t a1)
{
  v2 = sub_10015AC4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100159644(uint64_t a1)
{
  v2 = sub_10015AC4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001596B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1488) = a6;
  *(v6 + 1480) = a5;
  *(v6 + 1704) = a4;
  *(v6 + 1472) = a3;
  *(v6 + 1464) = a2;
  *(v6 + 1456) = a1;
  v7 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 1496) = v7;
  v8 = *(v7 - 8);
  *(v6 + 1504) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 1512) = swift_task_alloc();
  v10 = type metadata accessor for RespondToInviteRequestContent();
  *(v6 + 1520) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 1528) = swift_task_alloc();
  *(v6 + 1536) = swift_task_alloc();
  *(v6 + 1544) = swift_task_alloc();
  *(v6 + 1552) = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  *(v6 + 1560) = swift_task_alloc();
  v13 = type metadata accessor for Account();
  *(v6 + 1568) = v13;
  v14 = *(v13 - 8);
  *(v6 + 1576) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 1584) = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  *(v6 + 1592) = swift_task_alloc();
  *(v6 + 1600) = swift_task_alloc();
  v17 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  *(v6 + 1608) = swift_task_alloc();
  *(v6 + 1616) = swift_task_alloc();

  return _swift_task_switch(sub_1001598E8, 0, 0);
}

uint64_t sub_1001598E8()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[186];
  v7 = v0[185];
  v17 = v7;
  v18 = v0[195];
  v8 = v0[182];
  v0[203] = sub_10014ABCC();
  v9 = type metadata accessor for RequestOrigin();
  v0[204] = v9;
  v10 = *(v9 - 8);
  v0[205] = v10;
  (*(v10 + 16))(v1, v6, v9);
  (*(v10 + 56))(v1, 0, 1, v9);
  (*(v4 + 16))(v3, v8, v5);
  sub_100005F04(v1, v2, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v17, v18, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[206] = v11;
  *v11 = v0;
  v11[1] = sub_100159AAC;
  v12 = v0[202];
  v13 = v0[199];
  v14 = v0[198];
  v15 = v0[195];

  return sub_1001667E8(v12, v14, v13, v15, _swiftEmptyArrayStorage);
}

uint64_t sub_100159AAC()
{
  v1 = *v0;
  v2 = *(*v0 + 1648);
  v3 = *(*v0 + 1616);
  v4 = *(*v0 + 1608);
  v5 = *(*v0 + 1600);
  v9 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_10015A984(v3, v4, type metadata accessor for ClientContext);
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v1 + 1656) = v7;
  *v7 = v9;
  v7[1] = sub_100159C54;

  return daemon.getter();
}

uint64_t sub_100159C54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1656);
  v12 = *v1;
  *(v3 + 1664) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1672) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009170(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009170(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100159E30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100159E30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1672);
  v6 = *v2;
  v4[210] = a1;
  v4[211] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10015A20C, 0, 0);
  }

  else
  {
    v7 = v4[208];

    v8 = swift_task_alloc();
    v4[212] = v8;
    *v8 = v6;
    v8[1] = sub_100159FC0;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_100159FC0()
{
  v1 = *(*v0 + 1696);
  v2 = *(*v0 + 1680);
  v4 = *v0;

  return _swift_task_switch(sub_10015A0D0, v2, 0);
}

uint64_t sub_10015A0D0()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10015A3D4, 0, 0);
}

uint64_t sub_10015A20C()
{
  v1 = v0[208];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[202];
  v5 = v0[201];
  v15 = v0[203];
  v16 = v0[200];
  v17 = v0[199];
  v18 = v0[198];
  v6 = v0[197];
  v14 = v0[196];
  v19 = v0[195];
  v20 = v0[194];
  v21 = v0[193];
  v22 = v0[192];
  v23 = v0[191];
  v24 = v0[189];
  v7 = v0[186];
  v8 = v0[185];
  v9 = v0[184];
  v10 = v0[182];

  sub_10015A9EC(v5, type metadata accessor for ClientContext);
  (*(v2 + 8))(v7, v3);
  sub_100002CE0(v8, &qword_1005B3360, &unk_1004C6AA0);
  (*(v6 + 8))(v10, v14);
  sub_10015A9EC(v4, type metadata accessor for ClientContext);

  v11 = v0[1];
  v12 = v0[211];

  return v11();
}

uint64_t sub_10015A3D4()
{
  v69 = v0;
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1552);
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1704);
  v7 = *(v0 + 1472);
  v8 = *(v0 + 1464);

  v9 = *(v0 + 992);
  *v4 = *(v0 + 976);
  v4[1] = v9;
  v10 = *(v0 + 1008);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1056);
  v4[4] = *(v0 + 1040);
  v4[5] = v12;
  v4[2] = v10;
  v4[3] = v11;
  v13 = *(v0 + 1072);
  v14 = *(v0 + 1088);
  v15 = *(v0 + 1120);
  v4[8] = *(v0 + 1104);
  v4[9] = v15;
  v4[6] = v13;
  v4[7] = v14;
  sub_10015A984(v2, v4 + v5[5], type metadata accessor for ClientContext);
  v16 = (v4 + v5[6]);
  *v16 = v8;
  v16[1] = v7;
  v17 = v6 == 0;
  if (v6)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  sub_10015A9EC(v2, type metadata accessor for ClientContext);
  v20 = (v4 + v5[7]);
  *v20 = v18;
  v20[1] = v19;
  sub_10015ACA0(v4, v3, type metadata accessor for RespondToInviteRequestContent);
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 1552);
  v22 = *(v0 + 1536);
  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005DFC28);
  sub_10015A984(v21, v22, type metadata accessor for RespondToInviteRequestContent);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 1536);
  if (v26)
  {
    v28 = *(v0 + 1528);
    v29 = *(v0 + 1520);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v68 = v31;
    *v30 = 136315138;
    sub_10015A984(v27, v28, type metadata accessor for RespondToInviteRequestContent);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    sub_10015A9EC(v27, type metadata accessor for RespondToInviteRequestContent);
    v35 = sub_10000D01C(v32, v34, &v68);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Request content: %s", v30, 0xCu);
    sub_100004984(v31);
  }

  else
  {

    sub_10015A9EC(v27, type metadata accessor for RespondToInviteRequestContent);
  }

  v36 = *(v0 + 1688);
  v37 = *(v0 + 1552);
  v38 = *(v0 + 1520);
  v39 = *(v0 + 1512);
  v40 = *(v0 + 1504);
  v41 = *(v0 + 1496);
  v42 = type metadata accessor for JSONEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v39 = sub_10019E890;
  v39[1] = 0;
  (*(v40 + 104))(v39, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v41);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009170(&qword_1005ACDA8, type metadata accessor for RespondToInviteRequestContent);
  v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v36)
  {

    v47 = 0;
    v48 = 0xF000000000000000;
  }

  else
  {
    v47 = v45;
    v48 = v46;
  }

  v49 = *(v0 + 1624);
  v50 = *(v0 + 1616);
  v60 = *(v0 + 1608);
  v61 = *(v0 + 1600);
  v62 = *(v0 + 1592);
  v63 = *(v0 + 1584);
  v51 = *(v0 + 1576);
  v52 = *(v0 + 1568);
  v53 = *(v0 + 1552);
  v64 = *(v0 + 1560);
  v65 = *(v0 + 1544);
  v54 = *(v0 + 1536);
  v66 = *(v0 + 1528);
  v67 = *(v0 + 1512);
  v55 = *(v0 + 1480);
  v56 = *(v0 + 1456);
  (*(*(v0 + 1640) + 8))(*(v0 + 1488), *(v0 + 1632));
  sub_100002CE0(v55, &qword_1005B3360, &unk_1004C6AA0);
  (*(v51 + 8))(v56, v52);
  sub_10015A9EC(v53, type metadata accessor for RespondToInviteRequestContent);
  sub_10015A9EC(v50, type metadata accessor for ClientContext);

  sub_10002CF44(v47, v48);

  sub_10001A794(v47, v48);

  v57 = *(v0 + 8);
  v58 = *(v0 + 1624);

  return v57(v58, v47, v48);
}

uint64_t type metadata accessor for RespondToInviteRequestContent()
{
  result = qword_1005ACE08;
  if (!qword_1005ACE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015A984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10015AA74()
{
  sub_100144FE8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10015AB1C()
{
  result = qword_1005ACE48;
  if (!qword_1005ACE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE48);
  }

  return result;
}

uint64_t sub_10015AB70(uint64_t a1)
{
  *(a1 + 8) = sub_100009170(&qword_1005ACE50, type metadata accessor for RespondToInviteRequestContent);
  result = sub_100009170(&qword_1005ACDA8, type metadata accessor for RespondToInviteRequestContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015ABF8()
{
  result = qword_1005ACE58;
  if (!qword_1005ACE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE58);
  }

  return result;
}

unint64_t sub_10015AC4C()
{
  result = qword_1005ACE68;
  if (!qword_1005ACE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE68);
  }

  return result;
}

uint64_t sub_10015ACA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10015AD1C()
{
  result = qword_1005ACE78;
  if (!qword_1005ACE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE78);
  }

  return result;
}

unint64_t sub_10015AD74()
{
  result = qword_1005ACE80;
  if (!qword_1005ACE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE80);
  }

  return result;
}

unint64_t sub_10015ADCC()
{
  result = qword_1005ACE88;
  if (!qword_1005ACE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE88);
  }

  return result;
}

uint64_t sub_10015AE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10015AF8C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ACF40, &qword_1004C8960);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v8 = &v22[-v7];
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10015CC80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[7];
  v11 = v3[5];
  v40 = v3[6];
  v41 = v10;
  v12 = v3[7];
  v13 = v3[9];
  v42 = v3[8];
  v43 = v13;
  v14 = v3[3];
  v15 = v3[1];
  v36 = v3[2];
  v37 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v38 = v3[4];
  v39 = v17;
  v18 = v3[1];
  v35[0] = *v3;
  v35[1] = v18;
  v31 = v40;
  v32 = v12;
  v19 = v3[9];
  v33 = v42;
  v34 = v19;
  v27 = v36;
  v28 = v16;
  v29 = v38;
  v30 = v11;
  v25 = v35[0];
  v26 = v15;
  v24 = 0;
  sub_100005F04(v35, v23, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v23[6] = v31;
  v23[7] = v32;
  v23[8] = v33;
  v23[9] = v34;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v23[0] = v25;
  v23[1] = v26;
  sub_100002CE0(v23, &qword_1005A9328, &unk_1004C7F20);
  if (!v2)
  {
    v20 = *(type metadata accessor for InitClientRequestContent() + 20);
    v22[15] = 1;
    type metadata accessor for ClientContext();
    sub_1000091B8(&qword_1005AC568, type metadata accessor for ClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v44 + 8))(v8, v5);
}

uint64_t sub_10015B25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ClientContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005ACF50, &qword_1004C8968);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  inited = type metadata accessor for InitClientRequestContent();
  v12 = *(*(inited - 8) + 64);
  __chkstk_darwin(inited);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  sub_100011AEC(a1, v16);
  sub_10015CC80();
  v17 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v32);
  }

  v31 = inited;
  v18 = v29;
  v19 = v6;
  v44 = 0;
  sub_1001452AC();
  v20 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v40;
  v14[6] = v39;
  v14[7] = v21;
  v22 = v42;
  v14[8] = v41;
  v14[9] = v22;
  v23 = v36;
  v14[2] = v35;
  v14[3] = v23;
  v24 = v38;
  v14[4] = v37;
  v14[5] = v24;
  v25 = v34;
  *v14 = v33;
  v14[1] = v25;
  v43 = 1;
  sub_1000091B8(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v10, v20);
  sub_100144E70(v19, v14 + *(v31 + 20));
  sub_10015C9C8(v14, v28, type metadata accessor for InitClientRequestContent);
  sub_100004984(v32);
  return sub_10015CA30(v14, type metadata accessor for InitClientRequestContent);
}

uint64_t sub_10015B604(uint64_t a1)
{
  v2 = sub_10015CCD4();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10015B640()
{
  if (*v0)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

uint64_t sub_10015B680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

uint64_t sub_10015B764(uint64_t a1)
{
  v2 = sub_10015CC80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015B7A0(uint64_t a1)
{
  v2 = sub_10015CC80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015B80C(uint64_t a1)
{
  v1[182] = a1;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[183] = v2;
  v3 = *(v2 - 8);
  v1[184] = v3;
  v4 = *(v3 + 64) + 15;
  v1[185] = swift_task_alloc();
  inited = type metadata accessor for InitClientRequestContent();
  v1[186] = inited;
  v6 = *(*(inited - 8) + 64) + 15;
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v1[190] = v7;
  v8 = *(v7 - 8);
  v1[191] = v8;
  v9 = *(v8 + 64) + 15;
  v1[192] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v12 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();

  return _swift_task_switch(sub_10015BA30, 0, 0);
}

uint64_t sub_10015BA30()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[182];
  v0[199] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[200] = v11;
  *v11 = v0;
  v11[1] = sub_10015BBEC;
  v12 = v0[198];
  v13 = v0[195];
  v14 = v0[193];
  v15 = v0[192];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10015BBEC()
{
  v1 = *v0;
  v2 = *(*v0 + 1600);
  v3 = *(*v0 + 1584);
  v4 = *(*v0 + 1576);
  v5 = *(*v0 + 1568);
  v6 = *(*v0 + 1552);
  v10 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_10015C9C8(v3, v4, type metadata accessor for ClientContext);
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v1 + 1608) = v8;
  *v8 = v10;
  v8[1] = sub_10015BDC8;

  return daemon.getter();
}

uint64_t sub_10015BDC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1608);
  v12 = *v1;
  *(v3 + 1616) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1624) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000091B8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000091B8(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10015BFA4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10015BFA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1624);
  v6 = *v2;
  v4[204] = a1;
  v4[205] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10015C380, 0, 0);
  }

  else
  {
    v7 = v4[202];

    v8 = swift_task_alloc();
    v4[206] = v8;
    *v8 = v6;
    v8[1] = sub_10015C134;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10015C134()
{
  v1 = *(*v0 + 1648);
  v2 = *(*v0 + 1632);
  v4 = *v0;

  return _swift_task_switch(sub_10015C244, v2, 0);
}

uint64_t sub_10015C244()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10015C4F4, 0, 0);
}

uint64_t sub_10015C380()
{
  v1 = v0[202];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  v13 = v0[194];
  v14 = v0[193];
  v7 = v0[191];
  v8 = v0[190];
  v15 = v0[192];
  v16 = v0[189];
  v17 = v0[188];
  v18 = v0[187];
  v19 = v0[185];
  v9 = v0[182];

  sub_10015CA30(v4, type metadata accessor for ClientContext);
  (*(v7 + 8))(v9, v8);
  sub_10015CA30(v3, type metadata accessor for ClientContext);

  v10 = v0[1];
  v11 = v0[205];

  return v10();
}

uint64_t sub_10015C4F4()
{
  v56 = v0;
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1488);

  v5 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v5;
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v8;
  v3[2] = v6;
  v3[3] = v7;
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v11;
  v3[6] = v9;
  v3[7] = v10;
  sub_100144E70(v2, v3 + *(v4 + 20));
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1512);
  v13 = *(v0 + 1504);
  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFC28);
  sub_10015C9C8(v12, v13, type metadata accessor for InitClientRequestContent);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 1504);
  if (v17)
  {
    v19 = *(v0 + 1496);
    v20 = *(v0 + 1488);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 136315138;
    sub_10015C9C8(v18, v19, type metadata accessor for InitClientRequestContent);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_10015CA30(v18, type metadata accessor for InitClientRequestContent);
    v26 = sub_10000D01C(v23, v25, &v55);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Request content: %s", v21, 0xCu);
    sub_100004984(v22);
  }

  else
  {

    sub_10015CA30(v18, type metadata accessor for InitClientRequestContent);
  }

  v27 = *(v0 + 1640);
  v28 = *(v0 + 1512);
  v29 = *(v0 + 1488);
  v30 = *(v0 + 1480);
  v31 = *(v0 + 1472);
  v32 = *(v0 + 1464);
  v33 = type metadata accessor for JSONEncoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v30 = sub_10019E890;
  v30[1] = 0;
  (*(v31 + 104))(v30, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v32);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1000091B8(&qword_1005ACE90, type metadata accessor for InitClientRequestContent);
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v27)
  {

    v38 = 0;
    v39 = 0xF000000000000000;
  }

  else
  {
    v38 = v36;
    v39 = v37;
  }

  v40 = *(v0 + 1592);
  v41 = *(v0 + 1584);
  v42 = *(v0 + 1576);
  v43 = *(v0 + 1568);
  v44 = *(v0 + 1560);
  v45 = *(v0 + 1552);
  v51 = *(v0 + 1544);
  v52 = *(v0 + 1536);
  v46 = *(v0 + 1512);
  v47 = *(v0 + 1504);
  v53 = *(v0 + 1496);
  v54 = *(v0 + 1480);
  (*(*(v0 + 1528) + 8))(*(v0 + 1456), *(v0 + 1520));
  sub_10015CA30(v46, type metadata accessor for InitClientRequestContent);
  sub_10015CA30(v41, type metadata accessor for ClientContext);

  sub_10002CF44(v38, v39);

  sub_10001A794(v38, v39);

  v48 = *(v0 + 8);
  v49 = *(v0 + 1592);

  return v48(v49, v38, v39);
}

uint64_t type metadata accessor for InitClientRequestContent()
{
  result = qword_1005ACEF0;
  if (!qword_1005ACEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015C9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015CA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10015CAB8()
{
  sub_100144FE8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClientContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10015CB50()
{
  result = qword_1005ACF28;
  if (!qword_1005ACF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF28);
  }

  return result;
}

uint64_t sub_10015CBA4(uint64_t a1)
{
  *(a1 + 8) = sub_1000091B8(&qword_1005ACF30, type metadata accessor for InitClientRequestContent);
  result = sub_1000091B8(&qword_1005ACE90, type metadata accessor for InitClientRequestContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015CC2C()
{
  result = qword_1005ACF38;
  if (!qword_1005ACF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF38);
  }

  return result;
}

unint64_t sub_10015CC80()
{
  result = qword_1005ACF48;
  if (!qword_1005ACF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF48);
  }

  return result;
}

unint64_t sub_10015CCD4()
{
  result = qword_1005ACF58;
  if (!qword_1005ACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF58);
  }

  return result;
}

unint64_t sub_10015CD3C()
{
  result = qword_1005ACF60;
  if (!qword_1005ACF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF60);
  }

  return result;
}

unint64_t sub_10015CD94()
{
  result = qword_1005ACF68;
  if (!qword_1005ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF68);
  }

  return result;
}

unint64_t sub_10015CDEC()
{
  result = qword_1005ACF70;
  if (!qword_1005ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF70);
  }

  return result;
}

uint64_t type metadata accessor for InitEndpoint()
{
  result = qword_1005ACFD0;
  if (!qword_1005ACFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RefreshClientEndpoint()
{
  result = qword_1005AD060;
  if (!qword_1005AD060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015CF28(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD148, &qword_1004C8D28);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v8 = &v22[-v7];
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10015EA74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[7];
  v11 = v3[5];
  v40 = v3[6];
  v41 = v10;
  v12 = v3[7];
  v13 = v3[9];
  v42 = v3[8];
  v43 = v13;
  v14 = v3[3];
  v15 = v3[1];
  v36 = v3[2];
  v37 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v38 = v3[4];
  v39 = v17;
  v18 = v3[1];
  v35[0] = *v3;
  v35[1] = v18;
  v31 = v40;
  v32 = v12;
  v19 = v3[9];
  v33 = v42;
  v34 = v19;
  v27 = v36;
  v28 = v16;
  v29 = v38;
  v30 = v11;
  v25 = v35[0];
  v26 = v15;
  v24 = 0;
  sub_100005F04(v35, v23, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v23[6] = v31;
  v23[7] = v32;
  v23[8] = v33;
  v23[9] = v34;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v23[0] = v25;
  v23[1] = v26;
  sub_100002CE0(v23, &qword_1005A9328, &unk_1004C7F20);
  if (!v2)
  {
    v20 = *(type metadata accessor for RefreshClientRequestContent() + 20);
    v22[15] = 1;
    type metadata accessor for ClientContext();
    sub_100009200(&qword_1005AC568, type metadata accessor for ClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v44 + 8))(v8, v5);
}

uint64_t sub_10015D1F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ClientContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AD158, &qword_1004C8D30);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  refreshed = type metadata accessor for RefreshClientRequestContent();
  v12 = *(*(refreshed - 8) + 64);
  __chkstk_darwin(refreshed);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  sub_100011AEC(a1, v16);
  sub_10015EA74();
  v17 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v32);
  }

  v31 = refreshed;
  v18 = v29;
  v19 = v6;
  v44 = 0;
  sub_1001452AC();
  v20 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v40;
  v14[6] = v39;
  v14[7] = v21;
  v22 = v42;
  v14[8] = v41;
  v14[9] = v22;
  v23 = v36;
  v14[2] = v35;
  v14[3] = v23;
  v24 = v38;
  v14[4] = v37;
  v14[5] = v24;
  v25 = v34;
  *v14 = v33;
  v14[1] = v25;
  v43 = 1;
  sub_100009200(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v10, v20);
  sub_100144E70(v19, v14 + *(v31 + 20));
  sub_10015E840(v14, v28, type metadata accessor for RefreshClientRequestContent);
  sub_100004984(v32);
  return sub_10015E8A8(v14, type metadata accessor for RefreshClientRequestContent);
}

uint64_t sub_10015D5A0(uint64_t a1)
{
  v2 = sub_10015EAC8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10015D5DC(uint64_t a1)
{
  v2 = sub_10015EA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D618(uint64_t a1)
{
  v2 = sub_10015EA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D684(uint64_t a1)
{
  v1[182] = a1;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[183] = v2;
  v3 = *(v2 - 8);
  v1[184] = v3;
  v4 = *(v3 + 64) + 15;
  v1[185] = swift_task_alloc();
  refreshed = type metadata accessor for RefreshClientRequestContent();
  v1[186] = refreshed;
  v6 = *(*(refreshed - 8) + 64) + 15;
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v1[190] = v7;
  v8 = *(v7 - 8);
  v1[191] = v8;
  v9 = *(v8 + 64) + 15;
  v1[192] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v12 = *(*(type metadata accessor for ClientContext() - 8) + 64) + 15;
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();

  return _swift_task_switch(sub_10015D8A8, 0, 0);
}

uint64_t sub_10015D8A8()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[182];
  v0[199] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[200] = v11;
  *v11 = v0;
  v11[1] = sub_10015DA64;
  v12 = v0[198];
  v13 = v0[195];
  v14 = v0[193];
  v15 = v0[192];

  return sub_1001667E8(v12, v15, v14, v13, &_swiftEmptyArrayStorage);
}

uint64_t sub_10015DA64()
{
  v1 = *v0;
  v2 = *(*v0 + 1600);
  v3 = *(*v0 + 1584);
  v4 = *(*v0 + 1576);
  v5 = *(*v0 + 1568);
  v6 = *(*v0 + 1552);
  v10 = *v0;

  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_10015E840(v3, v4, type metadata accessor for ClientContext);
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v1 + 1608) = v8;
  *v8 = v10;
  v8[1] = sub_10015DC40;

  return daemon.getter();
}

uint64_t sub_10015DC40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1608);
  v12 = *v1;
  *(v3 + 1616) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1624) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009200(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009200(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10015DE1C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10015DE1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1624);
  v6 = *v2;
  v4[204] = a1;
  v4[205] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10015E1F8, 0, 0);
  }

  else
  {
    v7 = v4[202];

    v8 = swift_task_alloc();
    v4[206] = v8;
    *v8 = v6;
    v8[1] = sub_10015DFAC;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10015DFAC()
{
  v1 = *(*v0 + 1648);
  v2 = *(*v0 + 1632);
  v4 = *v0;

  return _swift_task_switch(sub_10015E0BC, v2, 0);
}

uint64_t sub_10015E0BC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10015E36C, 0, 0);
}

uint64_t sub_10015E1F8()
{
  v1 = v0[202];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  v13 = v0[194];
  v14 = v0[193];
  v7 = v0[191];
  v8 = v0[190];
  v15 = v0[192];
  v16 = v0[189];
  v17 = v0[188];
  v18 = v0[187];
  v19 = v0[185];
  v9 = v0[182];

  sub_10015E8A8(v4, type metadata accessor for ClientContext);
  (*(v7 + 8))(v9, v8);
  sub_10015E8A8(v3, type metadata accessor for ClientContext);

  v10 = v0[1];
  v11 = v0[205];

  return v10();
}

uint64_t sub_10015E36C()
{
  v56 = v0;
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1488);

  v5 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v5;
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v8;
  v3[2] = v6;
  v3[3] = v7;
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v11;
  v3[6] = v9;
  v3[7] = v10;
  sub_100144E70(v2, v3 + *(v4 + 20));
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1512);
  v13 = *(v0 + 1504);
  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFC28);
  sub_10015E840(v12, v13, type metadata accessor for RefreshClientRequestContent);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 1504);
  if (v17)
  {
    v19 = *(v0 + 1496);
    v20 = *(v0 + 1488);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v55 = v22;
    *v21 = 136315138;
    sub_10015E840(v18, v19, type metadata accessor for RefreshClientRequestContent);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_10015E8A8(v18, type metadata accessor for RefreshClientRequestContent);
    v26 = sub_10000D01C(v23, v25, &v55);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "Request content: %s", v21, 0xCu);
    sub_100004984(v22);
  }

  else
  {

    sub_10015E8A8(v18, type metadata accessor for RefreshClientRequestContent);
  }

  v27 = *(v0 + 1640);
  v28 = *(v0 + 1512);
  v29 = *(v0 + 1488);
  v30 = *(v0 + 1480);
  v31 = *(v0 + 1472);
  v32 = *(v0 + 1464);
  v33 = type metadata accessor for JSONEncoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v30 = sub_10019E890;
  v30[1] = 0;
  (*(v31 + 104))(v30, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v32);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009200(&qword_1005AD098, type metadata accessor for RefreshClientRequestContent);
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v27)
  {

    v38 = 0;
    v39 = 0xF000000000000000;
  }

  else
  {
    v38 = v36;
    v39 = v37;
  }

  v40 = *(v0 + 1592);
  v41 = *(v0 + 1584);
  v42 = *(v0 + 1576);
  v43 = *(v0 + 1568);
  v44 = *(v0 + 1560);
  v45 = *(v0 + 1552);
  v51 = *(v0 + 1544);
  v52 = *(v0 + 1536);
  v46 = *(v0 + 1512);
  v47 = *(v0 + 1504);
  v53 = *(v0 + 1496);
  v54 = *(v0 + 1480);
  (*(*(v0 + 1528) + 8))(*(v0 + 1456), *(v0 + 1520));
  sub_10015E8A8(v46, type metadata accessor for RefreshClientRequestContent);
  sub_10015E8A8(v41, type metadata accessor for ClientContext);

  sub_10002CF44(v38, v39);

  sub_10001A794(v38, v39);

  v48 = *(v0 + 8);
  v49 = *(v0 + 1592);

  return v48(v49, v38, v39);
}

uint64_t type metadata accessor for RefreshClientRequestContent()
{
  result = qword_1005AD0F8;
  if (!qword_1005AD0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015E840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015E8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10015E944()
{
  result = qword_1005AD130;
  if (!qword_1005AD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD130);
  }

  return result;
}

uint64_t sub_10015E998(uint64_t a1)
{
  *(a1 + 8) = sub_100009200(&qword_1005AD138, type metadata accessor for RefreshClientRequestContent);
  result = sub_100009200(&qword_1005AD098, type metadata accessor for RefreshClientRequestContent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015EA20()
{
  result = qword_1005AD140;
  if (!qword_1005AD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD140);
  }

  return result;
}

unint64_t sub_10015EA74()
{
  result = qword_1005AD150;
  if (!qword_1005AD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD150);
  }

  return result;
}

unint64_t sub_10015EAC8()
{
  result = qword_1005AD160;
  if (!qword_1005AD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD160);
  }

  return result;
}

unint64_t sub_10015EB30()
{
  result = qword_1005AD168;
  if (!qword_1005AD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD168);
  }

  return result;
}

unint64_t sub_10015EB88()
{
  result = qword_1005AD170;
  if (!qword_1005AD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD170);
  }

  return result;
}

unint64_t sub_10015EBE0()
{
  result = qword_1005AD178;
  if (!qword_1005AD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD178);
  }

  return result;
}

uint64_t sub_10015EE5C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = *(*(a1 + 56) + 8 * v10);
    v5 &= v5 - 1;
    v15 = *(*(a1 + 48) + 16 * v10);
    swift_bridgeObjectRetain_n();
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 8233;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    String.append(_:)(v15);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10015EFCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1552) = v30;
  *(v8 + 1544) = a8;
  *(v8 + 1536) = a7;
  *(v8 + 1528) = a6;
  *(v8 + 1520) = a5;
  *(v8 + 1952) = a4;
  *(v8 + 1512) = a3;
  *(v8 + 1504) = a2;
  *(v8 + 1496) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 1560) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1568) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1576) = swift_task_alloc();
  v12 = type metadata accessor for ClientContext();
  *(v8 + 1584) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 1592) = swift_task_alloc();
  v14 = type metadata accessor for Account();
  *(v8 + 1600) = v14;
  v15 = *(v14 - 8);
  *(v8 + 1608) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 1616) = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  *(v8 + 1624) = swift_task_alloc();
  *(v8 + 1632) = swift_task_alloc();
  *(v8 + 1640) = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  *(v8 + 1648) = swift_task_alloc();
  *(v8 + 1656) = swift_task_alloc();
  *(v8 + 1664) = swift_task_alloc();
  refreshed = type metadata accessor for LegacyRefreshCommandReason();
  *(v8 + 1672) = refreshed;
  v20 = *(refreshed - 8);
  *(v8 + 1680) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 1688) = swift_task_alloc();
  v22 = type metadata accessor for LegacyRefreshSchedule();
  *(v8 + 1696) = v22;
  v23 = *(v22 - 8);
  *(v8 + 1704) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 1712) = swift_task_alloc();
  v25 = type metadata accessor for Handle();
  *(v8 + 1720) = v25;
  v26 = *(v25 - 8);
  *(v8 + 1728) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 1736) = swift_task_alloc();

  return _swift_task_switch(sub_10015F2F4, 0, 0);
}

uint64_t sub_10015FB9C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1816);
  v12 = *v1;
  v3[228] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[229] = v6;
  v7 = type metadata accessor for Daemon();
  v3[230] = v7;
  v8 = type metadata accessor for DataManager(0);
  v3[231] = v8;
  v9 = sub_100009248(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[232] = v9;
  v10 = sub_100009248(&qword_1005A90D0, type metadata accessor for DataManager);
  v3[233] = v10;
  *v6 = v12;
  v6[1] = sub_10015FD90;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10015FD90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1832);
  v6 = *v2;
  v4[234] = a1;
  v4[235] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10016016C, 0, 0);
  }

  else
  {
    v7 = v4[228];

    v8 = swift_task_alloc();
    v4[236] = v8;
    *v8 = v6;
    v8[1] = sub_10015FF20;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_10015FF20()
{
  v1 = *(*v0 + 1888);
  v2 = *(*v0 + 1872);
  v4 = *v0;

  return _swift_task_switch(sub_100160030, v2, 0);
}

uint64_t sub_100160030()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100160350, 0, 0);
}

uint64_t sub_10016016C()
{
  v1 = v0[228];
  v2 = v0[226];
  v3 = v0[222];
  v4 = v0[220];
  v5 = v0[218];
  v15 = v0[224];
  v16 = v0[217];
  v17 = v0[223];
  v18 = v0[214];
  v19 = v0[211];
  v20 = v0[208];
  v21 = v0[207];
  v22 = v0[206];
  v23 = v0[205];
  v24 = v0[204];
  v25 = v0[203];
  v26 = v0[202];
  v6 = v0[201];
  v7 = v0[200];
  v27 = v0[199];
  v28 = v0[197];
  v8 = v0[194];
  v9 = v0[189];
  v10 = v0[188];

  (*(v6 + 8))(v9, v7);
  v11 = type metadata accessor for LocationRequest();
  (*(*(v11 - 8) + 8))(v10, v11);

  v12 = v0[1];
  v13 = v0[235];

  return v12();
}

uint64_t sub_100160350()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1664);
  v5 = *(v0 + 1640);
  v105 = *(v0 + 1632);
  v107 = *(v0 + 1656);
  v6 = *(v0 + 1608);
  v103 = *(v0 + 1600);
  v104 = *(v0 + 1616);
  v7 = *(v0 + 1592);
  v8 = *(v0 + 1512);
  v9 = *(v0 + 1504);
  v10 = *(v0 + 1496);

  v11 = *(v0 + 992);
  *v10 = *(v0 + 976);
  v10[1] = v11;
  v12 = *(v0 + 1008);
  v13 = *(v0 + 1024);
  v14 = *(v0 + 1056);
  v10[4] = *(v0 + 1040);
  v10[5] = v14;
  v10[2] = v12;
  v10[3] = v13;
  v15 = *(v0 + 1072);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 1120);
  v10[8] = *(v0 + 1104);
  v10[9] = v17;
  v10[6] = v15;
  v10[7] = v16;
  (*(v2 + 56))(v4, 1, 1, v3);
  LocationRequest.origin.getter();
  v18 = type metadata accessor for RequestOrigin();
  v102 = *(v18 - 8);
  (*(v102 + 56))(v5, 0, 1, v18);
  (*(v6 + 16))(v104, v8, v103);
  sub_100005F04(v5, v105, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v4, v107, &qword_1005B3360, &unk_1004C6AA0);
  *v7 = sub_1004B885C(0);
  v7[1] = v19;
  v20 = [objc_opt_self() defaultWorkspace];
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = *(v0 + 1592);
  v23 = *(v0 + 1584);
  v24 = *(v0 + 1576);
  v25 = *(v0 + 1568);
  v26 = *(v0 + 1560);
  v27 = String._bridgeToObjectiveC()();
  v28 = [v21 applicationIsInstalled:v27];

  *(v22 + 16) = v28 ^ 1;
  *(v22 + 24) = static SystemInfo.uniqueDeviceID.getter();
  *(v22 + 32) = v29;
  *(v22 + 40) = static SystemInfo.deviceClass.getter();
  *(v22 + 48) = v30;
  *(v22 + 56) = 1;
  *(v22 + 64) = static SystemInfo.productType.getter();
  *(v22 + 72) = v31;
  *(v22 + 80) = static SystemInfo.osVersion.getter();
  *(v22 + 88) = v32;
  *(v22 + 96) = static SystemInfo.buildVersion.getter();
  *(v22 + 104) = v33;
  v34 = v22 + v23[12];
  static SystemInfo.lockState.getter();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v36 = v35;
  (*(v25 + 8))(v24, v26);
  *(v22 + v23[13]) = v36 * 1000.0;
  v37 = sub_1004B906C();
  v38 = (v22 + v23[14]);
  *v38 = v37;
  v38[1] = v39;
  *(v22 + v23[15]) = 1;
  v40 = (v22 + v23[16]);
  *v40 = 3157559;
  v40[1] = 0xE300000000000000;
  v41 = static SystemInfo.platform.getter();
  v42 = (v22 + v23[17]);
  *v42 = v41;
  v42[1] = v43;
  v44 = [objc_opt_self() sharedConfiguration];
  if (!v44)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = v44;
  v108 = v18;
  v46 = [v44 countryCode];

  if (!v46)
  {
LABEL_17:
    __break(1u);
    return daemon.getter();
  }

  v47 = *(v0 + 1728);
  v106 = *(v0 + 1720);
  v48 = *(v0 + 1656);
  v49 = *(v0 + 1648);
  v50 = *(v0 + 1616);
  v51 = *(v0 + 1592);
  v52 = *(v0 + 1584);
  v53 = *(v0 + 1552);

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = (v51 + v52[18]);
  *v57 = v54;
  v57[1] = v56;
  v58 = static SystemInfo.regionCode.getter();
  v59 = (v51 + v52[19]);
  *v59 = v58;
  v59[1] = v60;
  v61 = Account.icloudIdentifier.getter();
  v62 = (v51 + v52[20]);
  *v62 = v61;
  v62[1] = v63;
  sub_100005F04(v48, v49, &qword_1005B3360, &unk_1004C6AA0);
  if ((*(v47 + 48))(v49, 1, v106) == 1)
  {
    v64 = *(v0 + 1616);
    sub_100002CE0(*(v0 + 1648), &qword_1005B3360, &unk_1004C6AA0);
    v65 = Account.icloudIdentifier.getter();
    v67 = v66;
  }

  else
  {
    v68 = *(v0 + 1728);
    v69 = *(v0 + 1720);
    v70 = *(v0 + 1648);
    v65 = Handle.identifier.getter();
    v67 = v71;
    (*(v68 + 8))(v70, v69);
  }

  v72 = *(v0 + 1632);
  v73 = *(v0 + 1624);
  v74 = *(v0 + 1592);
  v75 = *(v0 + 1584);
  v76 = (v74 + *(v75 + 88));
  *v76 = v65;
  v76[1] = v67;
  v77 = v74 + *(v75 + 96);
  *v77 = 0;
  *(v77 + 8) = 1;
  sub_100005F04(v72, v73, &qword_1005AC488, &unk_1004C8430);
  v78 = (*(v102 + 48))(v73, 1, v108);
  v79 = *(v0 + 1624);
  if (v78 == 1)
  {
    sub_100002CE0(*(v0 + 1624), &qword_1005AC488, &unk_1004C8430);
  }

  else
  {
    v80 = RequestOrigin.contextBundleApp.getter();
    v82 = v81;
    (*(v102 + 8))(v79, v108);
    if (v82)
    {
      v83 = v82;
      v84 = v80;
      goto LABEL_12;
    }
  }

  v84 = sub_1004B885C(3u);
LABEL_12:
  v85 = *(v0 + 1808);
  v86 = *(v0 + 1800);
  v87 = *(v0 + 1953);
  v88 = *(v0 + 1776);
  v89 = *(v0 + 1768);
  v90 = *(v0 + 1760);
  v91 = *(v0 + 1752);
  v92 = *(v0 + 1744);
  v93 = *(v0 + 1592);
  v94 = *(v0 + 1584);
  v95 = (v93 + v94[23]);
  *v95 = v84;
  v95[1] = v83;
  *(v93 + v94[25]) = v87;
  *(v93 + v94[26]) = v92;
  v96 = (v93 + v94[27]);
  *v96 = v86;
  v96[1] = v85;
  v97 = (v93 + v94[28]);
  *v97 = v91;
  v97[1] = v90;
  v98 = (v93 + v94[29]);
  *v98 = v89;
  v98[1] = v88;
  v99 = async function pointer to daemon.getter[1];

  v100 = swift_task_alloc();
  *(v0 + 1896) = v100;
  *v100 = v0;
  v100[1] = sub_10016095C;

  return daemon.getter();
}

uint64_t sub_10016095C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1896);
  v5 = *v1;
  v3[238] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[239] = v7;
  *v7 = v5;
  v7[1] = sub_100160AE8;
  v8 = v3[233];
  v9 = v3[232];
  v10 = v3[231];
  v11 = v3[230];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100160AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1912);
  v6 = *v2;
  v4[240] = a1;
  v4[241] = v1;

  if (v1)
  {
    v7 = sub_100160FAC;
    v8 = 0;
  }

  else
  {
    v9 = v4[238];

    v7 = sub_100160C24;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100160C24()
{
  v1 = (v0[240] + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken);
  v2 = *v1;
  v0[242] = *v1;
  v3 = v1[1];
  v0[243] = v3;
  sub_10002CF44(v2, v3);

  return _swift_task_switch(sub_100160CAC, 0, 0);
}

uint64_t sub_100160CAC()
{
  v1 = v0[243];
  if (v1 >> 60 == 15)
  {
    v2 = v0[240];
    v3 = v0[222];
    v4 = v0[220];

    v46 = 0;
    v48 = 0;
  }

  else
  {
    v5 = v0[242];
    v6 = v0[240];
    v7 = v0[222];
    v8 = v0[220];
    v9 = v0[243];
    v10 = Data.hexString.getter();
    v46 = v11;
    v48 = v10;
    sub_10001A794(v5, v1);
  }

  v12 = v0[226];
  v13 = v0[218];
  v14 = v0[207];
  v15 = v0[205];
  v16 = v0[204];
  v17 = v0[202];
  v18 = v0[201];
  v19 = v0[200];
  v42 = v0[199];
  v44 = v0[208];
  v40 = v0[198];

  sub_100002CE0(v14, &qword_1005B3360, &unk_1004C6AA0);
  sub_100002CE0(v16, &qword_1005AC488, &unk_1004C8430);
  v20 = *(v18 + 8);
  v20(v17, v19);
  sub_100002CE0(v15, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v44, &qword_1005B3360, &unk_1004C6AA0);
  v21 = (v42 + *(v40 + 84));
  *v21 = v48;
  v21[1] = v46;
  v22 = v0[224];
  v23 = v0[223];
  v34 = v0[217];
  v35 = v0[214];
  v36 = v0[211];
  v37 = v0[208];
  v38 = v0[207];
  v39 = v0[206];
  v41 = v0[205];
  v43 = v0[204];
  v45 = v0[203];
  v47 = v0[202];
  v24 = v0[201];
  v25 = v0[200];
  v26 = v0[199];
  v49 = v0[197];
  v27 = v0[189];
  v28 = v0[188];
  v29 = v0[187];
  v30 = type metadata accessor for LegacyLocationServerRequestContext();
  sub_100144E70(v26, v29 + *(v30 + 20));
  v20(v27, v25);
  v31 = type metadata accessor for LocationRequest();
  (*(*(v31 - 8) + 8))(v28, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_100160FAC()
{
  v51 = v0;
  v1 = v0[238];

  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v2 = v0[241];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[241];
  v8 = v0[226];
  v9 = v0[222];
  v10 = v0[208];
  v40 = v0[220];
  v42 = v0[207];
  v11 = v0[205];
  v48 = v0[202];
  v12 = v0[201];
  v44 = v0[204];
  v46 = v0[200];
  if (v6)
  {
    v37 = v0[218];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v50 = v14;
    *v13 = 136446210;
    v0[186] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v15 = String.init<A>(describing:)();
    v35 = v11;
    v17 = sub_10000D01C(v15, v16, &v50);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "ERROR: %{public}s", v13, 0xCu);
    sub_100004984(v14);

    sub_100002CE0(v42, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v44, &qword_1005AC488, &unk_1004C8430);
    v18 = *(v12 + 8);
    v18(v48, v46);
    sub_100002CE0(v35, &qword_1005AC488, &unk_1004C8430);
  }

  else
  {

    sub_100002CE0(v42, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v44, &qword_1005AC488, &unk_1004C8430);
    v18 = *(v12 + 8);
    v18(v48, v46);
    sub_100002CE0(v11, &qword_1005AC488, &unk_1004C8430);
  }

  sub_100002CE0(v10, &qword_1005B3360, &unk_1004C6AA0);
  v19 = (v0[199] + *(v0[198] + 84));
  *v19 = 0;
  v19[1] = 0;
  v20 = v0[224];
  v21 = v0[223];
  v32 = v0[217];
  v33 = v0[214];
  v34 = v0[211];
  v36 = v0[208];
  v38 = v0[207];
  v39 = v0[206];
  v41 = v0[205];
  v43 = v0[204];
  v45 = v0[203];
  v47 = v0[202];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v49 = v0[197];
  v25 = v0[189];
  v26 = v0[188];
  v27 = v0[187];
  v28 = type metadata accessor for LegacyLocationServerRequestContext();
  sub_100144E70(v24, v27 + *(v28 + 20));
  v18(v25, v23);
  v29 = type metadata accessor for LocationRequest();
  (*(*(v29 - 8) + 8))(v26, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100161448(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_10004B564(&qword_1005AD2D8, &qword_1004C9118);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10016225C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_10002CF44(a3, v16);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100161630(uint64_t a1)
{
  v2 = sub_10016225C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016166C(uint64_t a1)
{
  v2 = sub_10016225C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001616A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100161FF8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001616F8(uint64_t a1)
{
  v2 = sub_1000844B0();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100161734(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD2B8, &qword_1004C9100);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v5);
  v8 = &v22[-v7];
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100161FA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[7];
  v11 = v3[5];
  v40 = v3[6];
  v41 = v10;
  v12 = v3[7];
  v13 = v3[9];
  v42 = v3[8];
  v43 = v13;
  v14 = v3[3];
  v15 = v3[1];
  v36 = v3[2];
  v37 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v38 = v3[4];
  v39 = v17;
  v18 = v3[1];
  v35[0] = *v3;
  v35[1] = v18;
  v31 = v40;
  v32 = v12;
  v19 = v3[9];
  v33 = v42;
  v34 = v19;
  v27 = v36;
  v28 = v16;
  v29 = v38;
  v30 = v11;
  v25 = v35[0];
  v26 = v15;
  v24 = 0;
  sub_100005F04(v35, v23, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v23[6] = v31;
  v23[7] = v32;
  v23[8] = v33;
  v23[9] = v34;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v23[0] = v25;
  v23[1] = v26;
  sub_100002CE0(v23, &qword_1005A9328, &unk_1004C7F20);
  if (!v2)
  {
    v20 = *(type metadata accessor for LegacyLocationServerRequestContext() + 20);
    v22[15] = 1;
    type metadata accessor for ClientContext();
    sub_100009248(&qword_1005AC568, type metadata accessor for ClientContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v44 + 8))(v8, v5);
}

uint64_t sub_100161A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ClientContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AD2E0, &qword_1004C9120);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for LegacyLocationServerRequestContext();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v32 = a1;
  sub_100011AEC(a1, v16);
  sub_100161FA4();
  v17 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100004984(v32);
  }

  v31 = v11;
  v18 = v29;
  v19 = v6;
  v44 = 0;
  sub_1001452AC();
  v20 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v40;
  v14[6] = v39;
  v14[7] = v21;
  v22 = v42;
  v14[8] = v41;
  v14[9] = v22;
  v23 = v36;
  v14[2] = v35;
  v14[3] = v23;
  v24 = v38;
  v14[4] = v37;
  v14[5] = v24;
  v25 = v34;
  *v14 = v33;
  v14[1] = v25;
  v43 = 1;
  sub_100009248(&qword_1005AC580, type metadata accessor for ClientContext);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v10, v20);
  sub_100144E70(v19, v14 + *(v31 + 20));
  sub_1001622B0(v14, v28);
  sub_100004984(v32);
  return sub_100162314(v14);
}

uint64_t sub_100161D90(uint64_t a1)
{
  v2 = sub_100161FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100161DCC(uint64_t a1)
{
  v2 = sub_100161FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100161E70(uint64_t a1)
{
  *(a1 + 8) = sub_100009248(&qword_1005AD2A0, type metadata accessor for LegacyLocationServerRequestContext);
  result = sub_100009248(&qword_1005A92E8, type metadata accessor for LegacyLocationServerRequestContext);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100161EF8()
{
  result = qword_1005AD2A8;
  if (!qword_1005AD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2A8);
  }

  return result;
}

unint64_t sub_100161F50()
{
  result = qword_1005AD2B0;
  if (!qword_1005AD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2B0);
  }

  return result;
}

unint64_t sub_100161FA4()
{
  result = qword_1005AD2C0;
  if (!qword_1005AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2C0);
  }

  return result;
}

uint64_t sub_100161FF8(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005AD2C8, &unk_1004C9108);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_100011AEC(a1, v8);
  sub_10016225C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v15 = 0;
    sub_10014D0DC(&qword_1005AC970);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;
    sub_10001A794(0, 0xF000000000000000);

    sub_10002CF44(v10, v11);
    sub_100004984(a1);

    sub_10001A794(v10, v11);
  }

  return v8;
}

unint64_t sub_10016225C()
{
  result = qword_1005AD2D0;
  if (!qword_1005AD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2D0);
  }

  return result;
}

uint64_t sub_1001622B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocationServerRequestContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162314(uint64_t a1)
{
  v2 = type metadata accessor for LegacyLocationServerRequestContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100162394()
{
  result = qword_1005AD2E8;
  if (!qword_1005AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2E8);
  }

  return result;
}

unint64_t sub_1001623EC()
{
  result = qword_1005AD2F0;
  if (!qword_1005AD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2F0);
  }

  return result;
}

unint64_t sub_100162444()
{
  result = qword_1005AD2F8;
  if (!qword_1005AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2F8);
  }

  return result;
}

unint64_t sub_10016249C()
{
  result = qword_1005AD300;
  if (!qword_1005AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD300);
  }

  return result;
}

unint64_t sub_1001624F4()
{
  result = qword_1005AD308;
  if (!qword_1005AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD308);
  }

  return result;
}

unint64_t sub_10016254C()
{
  result = qword_1005AD310;
  if (!qword_1005AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD310);
  }

  return result;
}

uint64_t ServerHandleType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265776F6C6C6F66;
  }

  if (a1 == 1)
  {
    return 0x6E69776F6C6C6F66;
  }

  return 0x4F676E69646E6570;
}

uint64_t sub_100162610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69776F6C6C6F66;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x4F676E69646E6570;
    v4 = 0xED00007372656666;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E69776F6C6C6F66;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x4F676E69646E6570;
    v8 = 0xED00007372656666;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100162734()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001627E8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100162888()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100162938@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13findmylocated16ServerHandleTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100162968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69776F6C6C6F66;
  if (v2 != 1)
  {
    v5 = 0x4F676E69646E6570;
    v4 = 0xED00007372656666;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100162A88(char a1)
{
  result = 0x6954657461657263;
  switch(a1)
  {
    case 1:
      result = 0x73657269707865;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7250646E65697266;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      v3 = 9;
      goto LABEL_17;
    case 6:
      v3 = 5;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 7:
      result = 0x656369766544656DLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0x746F4E646574706FLL;
      break;
    case 11:
      result = 0x656372756F73;
      break;
    case 12:
      result = 0x6954657461647075;
      break;
    case 13:
      result = 0x6E65644968737570;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x654D6D6F72467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100162C98(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD378, &qword_1004C96C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100166234();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v32) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v32) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = v3[3];
    HIBYTE(v31) = 2;
    sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
    sub_1001662F0(&qword_1005AD380);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v32) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v3[6];
    v17 = v3[7];
    LOBYTE(v32) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = v3[8];
    HIBYTE(v31) = 5;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v32 = v3[9];
    HIBYTE(v31) = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v3[10];
    v19 = v3[11];
    LOBYTE(v32) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 96);
    LOBYTE(v32) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 97);
    LOBYTE(v32) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 98);
    LOBYTE(v32) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = v3[13];
    v24 = v3[14];
    LOBYTE(v32) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v3[15];
    v26 = *(v3 + 128);
    LOBYTE(v32) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = v3[17];
    HIBYTE(v31) = 13;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + 144);
    LOBYTE(v32) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v3 + 145);
    LOBYTE(v32) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v3 + 146);
    LOBYTE(v32) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100163120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100164044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100163154(uint64_t a1)
{
  v2 = sub_100166234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163190(uint64_t a1)
{
  v2 = sub_100166234();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001631CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001645A0(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = *v10;
    *(a2 + 143) = *&v10[15];
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_100163258(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD338, &qword_1004C9698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100165704();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v25[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v25[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v25[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v25[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v25[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[9];
  v25[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v21 = v3[10];
  v22 = v3[11];
  v25[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = *(v3 + 96);
  v25[8] = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100163498()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x644970756F7267;
  if (v1 != 6)
  {
    v3 = 0x654D6D6F72467369;
  }

  v4 = 0x6954657461647075;
  if (v1 != 4)
  {
    v4 = 0x73657269707865;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 != 2)
  {
    v5 = 0x6449726566666FLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
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

uint64_t sub_1001635A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100164F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001635D0(uint64_t a1)
{
  v2 = sub_100165704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016360C(uint64_t a1)
{
  v2 = sub_100165704();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100163648@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001651F0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1001636C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x654D6D6F72467369;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x76456E49796C6E6FLL;
    if (a1 != 5)
    {
      v7 = 0x73696D7265506B74;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000016;
    v3 = 0x6974617469766E69;
    if (a1 != 3)
    {
      v3 = 0x6954657461647075;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100163834(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD350, &qword_1004C96B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100166178();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + 72);
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 73);
    LOBYTE(v25) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 74);
    LOBYTE(v25) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = v3[10];
    HIBYTE(v24) = 8;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = v3[11];
    HIBYTE(v24) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100163B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001657C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100163B70(uint64_t a1)
{
  v2 = sub_100166178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163BAC(uint64_t a1)
{
  v2 = sub_100166178();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100163BE8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100165B10(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

unint64_t _s13findmylocated16ServerHandleTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B0A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100163C9C()
{
  result = qword_1005AD318;
  if (!qword_1005AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD318);
  }

  return result;
}

unint64_t sub_100163D00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B110, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100163D4C()
{
  result = qword_1005AD320;
  if (!qword_1005AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD320);
  }

  return result;
}

__n128 sub_100163DA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100163DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_100163E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100163E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100163E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100163EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100163F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 143) = *(a2 + 143);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100163F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 147))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100163FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 146) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 147) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 147) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100164044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6954657461657263 && a2 == 0xEF706D617473656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646E65697266 && a2 == 0xEB00000000736665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E2BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E2BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xEF736C6961746544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004E2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746F4E646574706FLL && a2 == 0xEF65726168536F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E65644968737570 && a2 == 0xEF73726569666974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E2C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x654D6D6F72467369 && a2 == 0xEE00736567617373)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1001645A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_10004B564(&qword_1005AD358, &qword_1004C96B8);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v53);
  v8 = &v34 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100166234();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v10 = v5;
  v52 = a2;
  LOBYTE(v63) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v96 = v12 & 1;
  LOBYTE(v63) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
  LOBYTE(v54) = 2;
  sub_1001662F0(&qword_1005AD370);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = v63;
  LOBYTE(v63) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = v16;
  v42 = v15;
  LOBYTE(v63) = 4;
  v49 = 0;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v17;
  v18 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  LOBYTE(v54) = 5;
  v19 = sub_10001CCC4(&qword_1005A9E80);
  v43 = v18;
  v41 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v63;
  LOBYTE(v54) = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v63;
  LOBYTE(v63) = 7;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v20;
  LOBYTE(v63) = 8;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63) = 9;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63) = 10;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v63) = 11;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v23;
  v24 = v22;
  LOBYTE(v63) = 12;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v92 = v25 & 1;
  LOBYTE(v54) = 13;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v63;
  LOBYTE(v63) = 14;
  LODWORD(v41) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v63) = 15;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = 16;
  LODWORD(v49) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 &= 1u;
  v38 &= 1u;
  LOBYTE(v18) = v38;
  (*(v10 + 8))(v8, v53);
  *&v54 = v11;
  v26 = v96;
  BYTE8(v54) = v96;
  *&v55 = v14;
  v27 = v42;
  *(&v55 + 1) = v51;
  *&v56 = v42;
  *(&v56 + 1) = v50;
  *&v57 = v40;
  *(&v57 + 1) = v48;
  *&v58 = v47;
  *(&v58 + 1) = v46;
  *&v59 = v39;
  *(&v59 + 1) = v45;
  LOBYTE(v60) = v18;
  LOBYTE(v18) = v37;
  BYTE1(v60) = v37;
  BYTE2(v60) = v21;
  v34 = v24;
  *(&v60 + 1) = v24;
  *&v61 = v44;
  *(&v61 + 1) = v36;
  LODWORD(v53) = v92;
  v62[0] = v92;
  *&v62[1] = *v91;
  *&v62[4] = *&v91[3];
  *&v62[8] = v43;
  LOBYTE(v24) = v41;
  v62[16] = v41;
  v62[17] = v35;
  v62[18] = v49;
  sub_100166288(&v54, &v63);
  sub_100004984(a1);
  v63 = v11;
  v64 = v26;
  *v65 = *v95;
  *&v65[3] = *&v95[3];
  v66 = v14;
  v67 = v51;
  v68 = v27;
  v69 = v50;
  v70 = v40;
  v71 = v48;
  v72 = v47;
  v73 = v46;
  v74 = v39;
  v75 = v45;
  v76 = v38;
  v77 = v18;
  v78 = v21;
  v79 = v93;
  v80 = v94;
  v81 = v34;
  v82 = v44;
  v83 = v36;
  v84 = v53;
  *v85 = *v91;
  *&v85[3] = *&v91[3];
  v86 = v43;
  v87 = v24;
  v88 = v35;
  v89 = v49;
  result = sub_1001662C0(&v63);
  v29 = v61;
  v30 = v52;
  *(v52 + 96) = v60;
  *(v30 + 112) = v29;
  *(v30 + 128) = *v62;
  *(v30 + 143) = *&v62[15];
  v31 = v57;
  *(v30 + 32) = v56;
  *(v30 + 48) = v31;
  v32 = v59;
  *(v30 + 64) = v58;
  *(v30 + 80) = v32;
  v33 = v55;
  *v30 = v54;
  *(v30 + 16) = v33;
  return result;
}

uint64_t sub_100164F48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E2B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449726566666FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6D6F72467369 && a2 == 0xEE00736567617373)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1001651F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD328, &qword_1004C9690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100165704();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v48[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v12;
  LOBYTE(v48[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v14;
  v37 = v13;
  LOBYTE(v48[0]) = 2;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v15;
  LOBYTE(v48[0]) = 3;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v48[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  LOBYTE(v48[0]) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  LOBYTE(v48[0]) = 6;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v34 + 1) = v23;
  *&v34 = v22;
  v51 = 7;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *&v41 = v11;
  v25 = v40;
  *(&v41 + 1) = v40;
  *&v42 = v37;
  v26 = v39;
  *(&v42 + 1) = v39;
  *&v43 = v36;
  v27 = v38;
  *(&v43 + 1) = v38;
  *&v44 = v35;
  v33 = v17;
  *(&v44 + 1) = v17;
  *&v45 = v19;
  *(&v45 + 1) = v21;
  v28 = v34;
  v46 = v34;
  v47 = v24;
  sub_100165758(&v41, v48);
  sub_100004984(a1);
  v48[0] = v11;
  v48[1] = v25;
  v48[2] = v37;
  v48[3] = v26;
  v48[4] = v36;
  v48[5] = v27;
  v48[6] = v35;
  v48[7] = v33;
  v48[8] = v19;
  v48[9] = v21;
  v49 = __PAIR128__(*(&v34 + 1), v28);
  v50 = v24;
  result = sub_100165790(v48);
  v30 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v30;
  *(a2 + 96) = v47;
  v31 = v42;
  *a2 = v41;
  *(a2 + 16) = v31;
  v32 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v32;
  return result;
}

unint64_t sub_100165704()
{
  result = qword_1005AD330;
  if (!qword_1005AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD330);
  }

  return result;
}

uint64_t sub_1001657C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E2B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEE00747865546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76456E49796C6E6FLL && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73696D7265506B74 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6D6F72467369 && a2 == 0xEE00736567617373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E2B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2B80 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_100165B10@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD340, &unk_1004C96A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100166178();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v50[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v12;
  LOBYTE(v50[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v14;
  v39 = v13;
  LOBYTE(v50[0]) = 2;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v15;
  LOBYTE(v50[0]) = 3;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v16;
  LOBYTE(v50[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v50[0]) = 5;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v50[0]) = 6;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v50[0]) = 7;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  LOBYTE(v44) = 8;
  v21 = sub_10001CCC4(&qword_1005A9E80);
  v35 = v20;
  v34 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v50[0];
  v56 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  LOBYTE(v20) = v19 & 1;
  LODWORD(v35) = v19 & 1;
  (*(v6 + 8))(v9, v5);
  *&v44 = v11;
  v22 = v43;
  *(&v44 + 1) = v43;
  v23 = v39;
  *&v45 = v39;
  v24 = v42;
  *(&v45 + 1) = v42;
  *&v46 = v38;
  v25 = v40;
  *(&v46 + 1) = v40;
  *&v47 = v37;
  *(&v47 + 1) = v41;
  *&v48 = v18;
  BYTE8(v48) = v36;
  BYTE9(v48) = v20;
  BYTE10(v48) = v33;
  *&v49 = v32;
  *(&v49 + 1) = v57;
  v26 = v57;
  sub_1001661CC(&v44, v50);
  sub_100004984(a1);
  v50[0] = v11;
  v50[1] = v22;
  v50[2] = v23;
  v50[3] = v24;
  v50[4] = v38;
  v50[5] = v25;
  v50[6] = v37;
  v50[7] = v41;
  v50[8] = v18;
  v51 = v36;
  v52 = v35;
  v53 = v33;
  v54 = v32;
  v55 = v26;
  result = sub_100166204(v50);
  v28 = v47;
  a2[2] = v46;
  a2[3] = v28;
  v29 = v49;
  a2[4] = v48;
  a2[5] = v29;
  v30 = v45;
  *a2 = v44;
  a2[1] = v30;
  return result;
}

unint64_t sub_100166178()
{
  result = qword_1005AD348;
  if (!qword_1005AD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD348);
  }

  return result;
}

unint64_t sub_100166234()
{
  result = qword_1005AD360;
  if (!qword_1005AD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD360);
  }

  return result;
}

uint64_t sub_1001662F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AD368, &qword_1004C96C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001664D4()
{
  result = qword_1005AD388;
  if (!qword_1005AD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD388);
  }

  return result;
}

unint64_t sub_10016652C()
{
  result = qword_1005AD390;
  if (!qword_1005AD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD390);
  }

  return result;
}

unint64_t sub_100166584()
{
  result = qword_1005AD398;
  if (!qword_1005AD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD398);
  }

  return result;
}

unint64_t sub_1001665DC()
{
  result = qword_1005AD3A0;
  if (!qword_1005AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3A0);
  }

  return result;
}

unint64_t sub_100166634()
{
  result = qword_1005AD3A8;
  if (!qword_1005AD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3A8);
  }

  return result;
}

unint64_t sub_10016668C()
{
  result = qword_1005AD3B0;
  if (!qword_1005AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3B0);
  }

  return result;
}

unint64_t sub_1001666E4()
{
  result = qword_1005AD3B8;
  if (!qword_1005AD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3B8);
  }

  return result;
}

unint64_t sub_10016673C()
{
  result = qword_1005AD3C0;
  if (!qword_1005AD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3C0);
  }

  return result;
}

unint64_t sub_100166794()
{
  result = qword_1005AD3C8;
  if (!qword_1005AD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3C8);
  }

  return result;
}

uint64_t sub_1001667E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_10004B564(&qword_1005AC488, &unk_1004C8430) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v10 = *(v9 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100166920, 0, 0);
}

uint64_t sub_100166920()
{
  v1 = v0[3];
  *v1 = sub_1004B885C(0);
  v1[1] = v2;
  v3 = [objc_opt_self() defaultWorkspace];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[3];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v4 applicationIsInstalled:v9];

  *(v8 + 16) = v10 ^ 1;
  *(v8 + 24) = static SystemInfo.uniqueDeviceID.getter();
  *(v8 + 32) = v11;
  *(v8 + 40) = static SystemInfo.deviceClass.getter();
  *(v8 + 48) = v12;
  *(v8 + 56) = 1;
  *(v8 + 64) = static SystemInfo.productType.getter();
  *(v8 + 72) = v13;
  *(v8 + 80) = static SystemInfo.osVersion.getter();
  *(v8 + 88) = v14;
  *(v8 + 96) = static SystemInfo.buildVersion.getter();
  *(v8 + 104) = v15;
  v16 = type metadata accessor for ClientContext();
  v0[13] = v16;
  v17 = v8 + v16[12];
  static SystemInfo.lockState.getter();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v19 = v18;
  (*(v6 + 8))(v5, v7);
  *(v8 + v16[13]) = v19 * 1000.0;
  v20 = sub_1004B906C();
  v21 = (v8 + v16[14]);
  *v21 = v20;
  v21[1] = v22;
  *(v8 + v16[15]) = 1;
  v23 = (v8 + v16[16]);
  *v23 = 3157559;
  v23[1] = 0xE300000000000000;
  v24 = static SystemInfo.platform.getter();
  v25 = (v8 + v16[17]);
  *v25 = v24;
  v25[1] = v26;
  v27 = [objc_opt_self() sharedConfiguration];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v27 countryCode];

  if (!v29)
  {
LABEL_17:
    __break(1u);
    return daemon.getter();
  }

  v30 = v0[9];
  v32 = v0[6];
  v31 = v0[7];
  v34 = v0[3];
  v33 = v0[4];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = (v34 + v16[18]);
  *v38 = v35;
  v38[1] = v37;
  v39 = static SystemInfo.regionCode.getter();
  v40 = (v34 + v16[19]);
  *v40 = v39;
  v40[1] = v41;
  v42 = Account.icloudIdentifier.getter();
  v43 = (v34 + v16[20]);
  *v43 = v42;
  v43[1] = v44;
  sub_100005F04(v32, v30, &qword_1005B3360, &unk_1004C6AA0);
  v45 = type metadata accessor for Handle();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v30, 1, v45);
  v48 = v0[9];
  if (v47 == 1)
  {
    v49 = v0[4];
    sub_100002CE0(v0[9], &qword_1005B3360, &unk_1004C6AA0);
    v50 = Account.icloudIdentifier.getter();
    v52 = v51;
  }

  else
  {
    v53 = v0[9];
    v50 = Handle.identifier.getter();
    v52 = v54;
    (*(v46 + 8))(v48, v45);
  }

  v55 = v0[8];
  v56 = v0[5];
  v57 = v0[3];
  v58 = (v57 + v16[22]);
  *v58 = v50;
  v58[1] = v52;
  v59 = v57 + v16[24];
  *v59 = 0;
  *(v59 + 8) = 1;
  sub_100005F04(v56, v55, &qword_1005AC488, &unk_1004C8430);
  v60 = type metadata accessor for RequestOrigin();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 48))(v55, 1, v60);
  v63 = v0[8];
  if (v62 == 1)
  {
    sub_100002CE0(v0[8], &qword_1005AC488, &unk_1004C8430);
  }

  else
  {
    v64 = RequestOrigin.contextBundleApp.getter();
    v66 = v65;
    (*(v61 + 8))(v63, v60);
    if (v66)
    {
      v67 = v66;
      v68 = v64;
      goto LABEL_12;
    }
  }

  v68 = sub_1004B885C(3u);
LABEL_12:
  v69 = v0[3];
  v70 = (v69 + v16[23]);
  *v70 = v68;
  v70[1] = v67;
  *(v69 + v16[25]) = 2;
  *(v69 + v16[26]) = 0;
  v71 = (v69 + v16[27]);
  *v71 = 0;
  v71[1] = 0;
  v72 = (v69 + v16[28]);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v69 + v16[29]);
  *v73 = 0;
  v73[1] = 0;
  v74 = async function pointer to daemon.getter[1];
  v75 = swift_task_alloc();
  v0[14] = v75;
  *v75 = v0;
  v75[1] = sub_100166DE0;

  return daemon.getter();
}

uint64_t sub_100166DE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009290(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009290(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100166FBC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100166FBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v7 = sub_1001672D0;
    v8 = 0;
  }

  else
  {
    v9 = v4[15];

    v7 = sub_1001670F4;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1001670F4()
{
  v1 = (v0[17] + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken);
  v2 = *v1;
  v0[19] = *v1;
  v3 = v1[1];
  v0[20] = v3;
  sub_10002CF44(v2, v3);

  return _swift_task_switch(sub_10016717C, 0, 0);
}

uint64_t sub_10016717C()
{
  v1 = v0[20];
  if (v1 >> 60 == 15)
  {
    v2 = v0[17];

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[20];
    v3 = Data.hexString.getter();
    v4 = v8;
    sub_10001A794(v5, v1);
  }

  v9 = v0[13];
  v10 = v0[5];
  v12 = v0[3];
  v11 = v0[4];
  sub_100002CE0(v0[6], &qword_1005B3360, &unk_1004C6AA0);
  sub_100002CE0(v10, &qword_1005AC488, &unk_1004C8430);
  v13 = type metadata accessor for Account();
  (*(*(v13 - 8) + 8))(v11, v13);
  v14 = (v12 + *(v9 + 84));
  *v14 = v3;
  v14[1] = v4;
  v15 = v0[12];
  v16 = v0[8];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001672D0()
{
  v26 = v0;
  v1 = v0[15];

  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    v0[2] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v13 = String.init<A>(describing:)();
    v24 = v10;
    v15 = sub_10000D01C(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "ERROR: %{public}s", v11, 0xCu);
    sub_100004984(v12);

    sub_100002CE0(v9, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v8, &qword_1005AC488, &unk_1004C8430);
    v16 = type metadata accessor for Account();
    (*(*(v16 - 8) + 8))(v24, v16);
  }

  else
  {

    sub_100002CE0(v9, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v8, &qword_1005AC488, &unk_1004C8430);
    v17 = type metadata accessor for Account();
    (*(*(v17 - 8) + 8))(v10, v17);
  }

  v18 = (v0[3] + *(v0[13] + 84));
  *v18 = 0;
  v18[1] = 0;
  v19 = v0[12];
  v20 = v0[8];
  v21 = v0[9];

  v22 = v0[1];

  return v22();
}

uint64_t type metadata accessor for ClientContext()
{
  result = qword_1005AD428;
  if (!qword_1005AD428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001675FC(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x707041464D467369;
      break;
    case 2:
      result = 0x4455656369766564;
      break;
    case 3:
      result = 0x6C43656369766564;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x6F6973726556736FLL;
      break;
    case 7:
      result = 0x726556646C697562;
      break;
    case 8:
      result = 0x74536B636F6C6E75;
      break;
    case 9:
      result = 0x54746E6572727563;
      break;
    case 10:
      result = 0x656E6F7A656D6974;
      break;
    case 11:
      result = 0x45676E69636E6566;
      break;
    case 12:
      result = 0x6973726556707061;
      break;
    case 13:
      result = 0x6D726F6674616C70;
      break;
    case 14:
      result = 0x437972746E756F63;
      break;
    case 15:
      result = 0x6F436E6F69676572;
      break;
    case 16:
      result = 0x6E4964656E676973;
      break;
    case 17:
      result = 0x6E656B6F54737061;
      break;
    case 18:
      result = 0x644972656C6C6163;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 1701869940;
      break;
    case 25:
      result = 0x6E6F73616572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10016790C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD4E0, &qword_1004C9A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v70[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001691B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v71) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    LOBYTE(v71) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v71) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v71) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 56);
    LOBYTE(v71) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v71) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v71) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v3[12];
    v24 = v3[13];
    LOBYTE(v71) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = type metadata accessor for ClientContext();
    v26 = v25[12];
    LOBYTE(v71) = 8;
    type metadata accessor for SystemInfo.DeviceLockState();
    sub_100009290(&qword_1005AD4E8, &type metadata accessor for SystemInfo.DeviceLockState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + v25[13]);
    LOBYTE(v71) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = (v3 + v25[14]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v71) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v3 + v25[15]);
    LOBYTE(v71) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = (v3 + v25[16]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v71) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = (v3 + v25[17]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v71) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = (v3 + v25[18]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v71) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = (v3 + v25[19]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v71) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = (v3 + v25[20]);
    v45 = *v44;
    v46 = v44[1];
    LOBYTE(v71) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    v47 = (v3 + v25[21]);
    v48 = *v47;
    v49 = v47[1];
    LOBYTE(v71) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = (v3 + v25[22]);
    v51 = *v50;
    v52 = v50[1];
    LOBYTE(v71) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v53 = (v3 + v25[23]);
    v54 = *v53;
    v55 = v53[1];
    LOBYTE(v71) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v56 = (v3 + v25[24]);
    v57 = *v56;
    v58 = *(v56 + 8);
    LOBYTE(v71) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v59 = *(v3 + v25[25]);
    LOBYTE(v71) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v71 = *(v3 + v25[26]);
    v70[7] = 22;
    sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
    sub_1001662F0(&qword_1005AD380);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v60 = (v3 + v25[27]);
    v61 = *v60;
    v62 = v60[1];
    LOBYTE(v71) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = (v3 + v25[28]);
    v64 = *v63;
    v65 = v63[1];
    LOBYTE(v71) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v66 = (v3 + v25[29]);
    v67 = *v66;
    v68 = v66[1];
    LOBYTE(v71) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100167F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  __chkstk_darwin(v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10004B564(&qword_1005AD4C8, &qword_1004C9A68);
  v76 = *(v78 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v78);
  v9 = &v70 - v8;
  v10 = type metadata accessor for ClientContext();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1001691B0();
  v77 = v9;
  v15 = v79;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100004984(a1);
  }

  v16 = v76;
  v79 = a1;
  v71 = v3;
  v72 = v10;
  v73 = v13;
  LOBYTE(v81) = 0;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v73;
  *v73 = v17;
  v18[1] = v19;
  LOBYTE(v81) = 1;
  *(v18 + 16) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v81) = 2;
  v18[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[4] = v20;
  LOBYTE(v81) = 3;
  v18[5] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[6] = v21;
  LOBYTE(v81) = 4;
  *(v18 + 56) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v81) = 5;
  v18[8] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[9] = v22;
  LOBYTE(v81) = 6;
  v18[10] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[11] = v23;
  LOBYTE(v81) = 7;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v73;
  v73[12] = v24;
  v25[13] = v26;
  LOBYTE(v81) = 8;
  sub_100009290(&qword_1005AD4D8, &type metadata accessor for SystemInfo.DeviceLockState);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v75 + 32))(v73 + v72[12], v6, v71);
  LOBYTE(v81) = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v73 + v72[13]) = v27;
  LOBYTE(v81) = 10;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = (v73 + v72[14]);
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v81) = 11;
  *(v73 + v72[15]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v81) = 12;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = (v73 + v72[16]);
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v81) = 13;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = (v73 + v72[17]);
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v81) = 14;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = (v73 + v72[18]);
  *v38 = v37;
  v38[1] = v39;
  LOBYTE(v81) = 15;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = (v73 + v72[19]);
  *v41 = v40;
  v41[1] = v42;
  LOBYTE(v81) = 16;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = (v73 + v72[20]);
  *v44 = v43;
  v44[1] = v45;
  LOBYTE(v81) = 17;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = (v73 + v72[21]);
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v81) = 18;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = (v73 + v72[22]);
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v81) = 19;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = (v73 + v72[23]);
  *v53 = v52;
  v53[1] = v54;
  LOBYTE(v81) = 20;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v56 = v73 + v72[24];
  *v56 = v55;
  v56[8] = v57 & 1;
  LOBYTE(v81) = 21;
  *(v73 + v72[25]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
  v80 = 22;
  sub_1001662F0(&qword_1005AD370);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v73 + v72[26]) = v81;
  LOBYTE(v81) = 23;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = (v73 + v72[27]);
  *v59 = v58;
  v59[1] = v60;
  LOBYTE(v81) = 24;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = (v73 + v72[28]);
  *v62 = v61;
  v62[1] = v63;
  LOBYTE(v81) = 25;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = v65;
  (*(v16 + 8))(v77, v78);
  v67 = v73;
  v68 = (v73 + v72[29]);
  *v68 = v64;
  v68[1] = v66;
  sub_100169204(v67, v74);
  sub_100004984(v79);
  return sub_100169268(v67);
}

uint64_t sub_100168EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016951C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100168F24(uint64_t a1)
{
  v2 = sub_1001691B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100168F60(uint64_t a1)
{
  v2 = sub_1001691B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100168FF4()
{
  type metadata accessor for SystemInfo.DeviceLockState();
  if (v0 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005A9790);
    if (v1 <= 0x3F)
    {
      sub_10008B2BC(319, &qword_1005A9788);
      if (v2 <= 0x3F)
      {
        sub_10008B2BC(319, &qword_1005AC700);
        if (v3 <= 0x3F)
        {
          sub_10016914C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10016914C()
{
  if (!qword_1005AD438)
  {
    sub_10004B610(&qword_1005AD368, &qword_1004C96C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005AD438);
    }
  }
}

unint64_t sub_1001691B0()
{
  result = qword_1005AD4D0;
  if (!qword_1005AD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD4D0);
  }

  return result;
}

uint64_t sub_100169204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169268(uint64_t a1)
{
  v2 = type metadata accessor for ClientContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ClientContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100169418()
{
  result = qword_1005AD4F0;
  if (!qword_1005AD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD4F0);
  }

  return result;
}

unint64_t sub_100169470()
{
  result = qword_1005AD4F8;
  if (!qword_1005AD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD4F8);
  }

  return result;
}

unint64_t sub_1001694C8()
{
  result = qword_1005AD500;
  if (!qword_1005AD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD500);
  }

  return result;
}

uint64_t sub_10016951C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707041464D467369 && a2 == 0xEF6465766F6D6552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4455656369766564 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E2C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74536B636F6C6E75 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x45676E69636E6566 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E4964656E676973 && a2 == 0xEA00000000007341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x644972656C6C6163 && a2 == 0xEE00656C646E6148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E2CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E2D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t sub_100169D40()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100169DD4, v2, v1);
}

uint64_t sub_100169DD4()
{
  *(v0 + 40) = type metadata accessor for Daemon();
  v1 = async function pointer to Daemon.__allocating_init(identifier:profile:registerAlarmEvent:services:)[1];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100169EC8;

  return Daemon.__allocating_init(identifier:profile:registerAlarmEvent:services:)(0xD00000000000001ELL, 0x80000001004DE7B0, 0x6F6C796D646E6966, 0xED00006465746163, 1, &unk_1004C9BA8, 0);
}

uint64_t sub_100169EC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = v4[4];

    return _swift_task_switch(sub_10016A22C, v7, v8);
  }

  else
  {
    v9 = async function pointer to ActorServiceDaemon.run()[1];
    v10 = swift_task_alloc();
    v4[9] = v10;
    v11 = sub_1000092D8(&unk_1005AFA50, &type metadata accessor for Daemon);
    *v10 = v6;
    v10[1] = sub_10016A084;
    v12 = v4[5];

    return ActorServiceDaemon.run()(v12, v11);
  }
}

uint64_t sub_10016A084()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_10016A3C4;
  }

  else
  {
    v7 = sub_10016A1C0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10016A1C0()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10016A22C()
{
  v1 = *(v0 + 64);
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC40);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error creating Daemon instance: %@", v5, 0xCu);
    sub_100139370(v6);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10016A3C4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error creating Daemon instance: %@", v6, 0xCu);
    sub_100139370(v7);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10016A564()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D40;

  return sub_10016B11C();
}

uint64_t sub_10016A604()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC40);
  sub_10000A6F0(v0, qword_1005DFC40);
  return Logger.init(subsystem:category:)();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_10016A6D8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10016A77C;

  return sub_100169D40();
}

uint64_t sub_10016A77C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016A8B8, v5, v4);
}

void sub_10016A8B8()
{
  v1 = *(v0 + 24);

  exit(0);
}

uint64_t sub_10016A8F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D40;

  return sub_10016A564();
}

uint64_t sub_10016A97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IDSSessionLinkSelectionStrategy();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016AA40, 0, 0);
}

uint64_t sub_10016AA40()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  swift_defaultActor_initialize();
  v4[14] = 0xD000000000000013;
  v4[15] = 0x80000001004E2EB0;
  v4[18] = sub_1002092B4(_swiftEmptyArrayStorage);
  sub_10004B564(&qword_1005AD578, &unk_1004C9BD0);
  (*(v2 + 16))(v1, v5, v3);
  v7 = async function pointer to InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)[1];

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10016AB74;
  v9 = v0[8];
  v11 = v0[2];
  v10 = v0[3];

  return InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(v11, v10, v9, 1);
}

uint64_t sub_10016AB74(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10016AC74, 0, 0);
}

uint64_t sub_10016AC74()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  *(v1 + 128) = v0[10];
  type metadata accessor for QueryController();
  *(v1 + 136) = QueryController.__allocating_init(serviceName:)();

  return _swift_task_switch(sub_10016DAEC, v1, 0);
}

uint64_t sub_10016AD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IDSSessionLinkSelectionStrategy();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016ADD0, 0, 0);
}

uint64_t sub_10016ADD0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  swift_defaultActor_initialize();
  v4[14] = 0xD000000000000013;
  v4[15] = 0x80000001004E2EB0;
  v4[18] = sub_1002092D8(_swiftEmptyArrayStorage);
  sub_10004B564(&qword_1005AD570, &qword_1004C9BC8);
  (*(v2 + 16))(v1, v5, v3);
  v7 = async function pointer to InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)[1];

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10016AF04;
  v9 = v0[8];
  v11 = v0[2];
  v10 = v0[3];

  return InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(v11, v10, v9, 1);
}

uint64_t sub_10016AF04(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10016B004, 0, 0);
}

uint64_t sub_10016B004()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  *(v1 + 128) = v0[10];
  type metadata accessor for QueryController();
  *(v1 + 136) = QueryController.__allocating_init(serviceName:)();

  return _swift_task_switch(sub_10016B09C, v1, 0);
}

uint64_t sub_10016B09C()
{
  v1 = v0[8];
  (*(v0[7] + 8))(v0[4], v0[6]);

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_10016B11C()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = type metadata accessor for IDSSessionLinkSelectionStrategy();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10016B204, 0, 0);
}

uint64_t sub_10016B204()
{
  type metadata accessor for MigrationService();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0x6F6974617267694DLL;
  *(v1 + 120) = 0xE90000000000006ELL;
  v2 = sub_1001FD30C(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001FD30C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v0 + 48) = v2;
  v5 = sub_1000092D8(&qword_1005AD508, type metadata accessor for MigrationService);
  v2[2] = v4 + 1;
  v6 = &v2[2 * v4];
  v6[4] = v1;
  v6[5] = v5;
  type metadata accessor for CloudStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_10016B378;

  return sub_1001B9778();
}

uint64_t sub_10016B378(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_10016B5B4;
  }

  else
  {
    v5 = sub_10016B48C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016B48C()
{
  v1 = v0[6];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[6]);
  }

  v4 = v0[8];
  v5 = sub_1000092D8(&qword_1005AD568, type metadata accessor for CloudStorageService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v0[10] = v1;
  type metadata accessor for LocalStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10016B794;

  return sub_100307340();
}

uint64_t sub_10016B5B4()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC40);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error creating CloudStorageService: %@", v7, 0xCu);
    sub_100139370(v8);
  }

  else
  {
  }

  v0[10] = v0[6];
  type metadata accessor for LocalStorageService();
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_10016B794;

  return sub_100307340();
}

uint64_t sub_10016B794(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_10016BAC4;
  }

  else
  {
    v5 = sub_10016B8A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016B8A8()
{
  v1 = v0[10];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[10]);
  }

  v4 = v0[12];
  v5 = sub_1000092D8(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for FirstUnlockService();
  Unlock = FirstUnlockService.__allocating_init()();
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v0[14] = v1;
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];
  v13 = sub_1000092D8(&qword_1005AD510, &type metadata accessor for FirstUnlockService);
  v1[2] = v9 + 1;
  v14 = &v1[2 * v9];
  v14[4] = Unlock;
  v14[5] = v13;
  v15 = enum case for IDSSessionLinkSelectionStrategy.default(_:);
  v16 = *(v11 + 104);
  v0[15] = v16;
  v0[16] = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v10, v15, v12);
  sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  swift_allocObject();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_10016BD90;
  v18 = v0[5];

  return sub_10016A97C(0xD00000000000001BLL, 0x80000001004E2DA0, v18);
}

uint64_t sub_10016BAC4()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC40);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error creating LocalStorageService: %@", v7, 0xCu);
    sub_100139370(v8);
  }

  else
  {
  }

  v10 = v0[10];
  type metadata accessor for FirstUnlockService();
  Unlock = FirstUnlockService.__allocating_init()();
  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1001FD30C((v12 > 1), v13 + 1, 1, v10);
  }

  v0[14] = v10;
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  v17 = sub_1000092D8(&qword_1005AD510, &type metadata accessor for FirstUnlockService);
  v10[2] = v13 + 1;
  v18 = &v10[2 * v13];
  v18[4] = Unlock;
  v18[5] = v17;
  v19 = enum case for IDSSessionLinkSelectionStrategy.default(_:);
  v20 = *(v15 + 104);
  v0[15] = v20;
  v0[16] = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v14, v19, v16);
  sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  swift_allocObject();
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_10016BD90;
  v22 = v0[5];

  return sub_10016A97C(0xD00000000000001BLL, 0x80000001004E2DA0, v22);
}

uint64_t sub_10016BD90(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10016BE90, 0, 0);
}

uint64_t sub_10016BE90()
{
  v1 = v0[14];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[14]);
  }

  v0[19] = v1;
  v4 = v0[18];
  v5 = sub_10016DA98(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for LocalMessagingService();
  v7 = swift_allocObject();
  v0[20] = v7;
  swift_defaultActor_initialize();
  v7[14] = 0xD000000000000015;
  v7[15] = 0x80000001004E2DC0;
  v7[17] = _swiftEmptyDictionarySingleton;
  v7[18] = _swiftEmptyDictionarySingleton;
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  v8 = async function pointer to LocalMessaging.__allocating_init(serviceName:)[1];
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_10016C004;

  return LocalMessaging.__allocating_init(serviceName:)(0xD000000000000021, 0x80000001004E2DE0);
}

uint64_t sub_10016C004(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10016C104, 0, 0);
}

uint64_t sub_10016C12C()
{
  v1 = v0[19];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[19]);
  }

  v0[23] = v1;
  v4 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[5];
  v8 = v0[3];
  v9 = sub_1000092D8(&qword_1005AD520, type metadata accessor for LocalMessagingService);
  v1[2] = v3 + 1;
  v10 = &v1[2 * v3];
  v10[4] = v4;
  v10[5] = v9;
  *v7 = 0x3FF0000000000000;
  v6(v7, enum case for IDSSessionLinkSelectionStrategy.allowedPacketsPerSecond(_:), v8);
  sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  swift_allocObject();
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_10016C2B8;
  v12 = v0[5];

  return sub_10016AD0C(0xD00000000000001BLL, 0x80000001004E2E10, v12);
}

uint64_t sub_10016C2B8(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_10016C3B8, 0, 0);
}

uint64_t sub_10016C3B8()
{
  v1 = v0[23];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[23]);
  }

  v4 = v0[25];
  v5 = sub_10016DA98(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for SecureLocationService();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v7 + 112), "SecureLocation");
  *(v7 + 127) = -18;
  *(v7 + 128) = &_swiftEmptySetSingleton;
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = v0[2];
  v11 = sub_1000092D8(&qword_1005AD528, type metadata accessor for SecureLocationService);
  v1[2] = v9 + 1;
  v12 = &v1[2 * v9];
  v12[4] = v7;
  v12[5] = v11;
  v13 = type metadata accessor for CommandManager();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v16 + 112), "CommandManager");
  *(v16 + 127) = -18;
  static Date.now.getter();
  v17 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  v18 = enum case for LocatePriority.shallow(_:);
  Priority = type metadata accessor for LocatePriority();
  (*(*(Priority - 8) + 104))(v16 + v17, v18, Priority);
  v20 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  v21 = enum case for LegacyRefreshSchedule.notScheduled(_:);
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  (*(*(refreshed - 8) + 104))(v16 + v20, v21, refreshed);
  *(v16 + OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands) = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalesceTaskList;
  v0[26] = type metadata accessor for WorkItemQueue();
  UUID.init()();
  *(v16 + v23) = WorkItemQueue.__allocating_init(identifier:)();
  v25 = v1[2];
  v24 = v1[3];
  if (v25 >= v24 >> 1)
  {
    v1 = sub_1001FD30C((v24 > 1), v25 + 1, 1, v1);
  }

  v26 = sub_1000092D8(&qword_1005A90C8, type metadata accessor for CommandManager);
  v1[2] = v25 + 1;
  v27 = &v1[2 * v25];
  v27[4] = v16;
  v27[5] = v26;
  v28 = type metadata accessor for AccountService(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_100493CAC();
  v33 = v1[2];
  v32 = v1[3];
  if (v33 >= v32 >> 1)
  {
    v1 = sub_1001FD30C((v32 > 1), v33 + 1, 1, v1);
  }

  v34 = sub_1000092D8(&qword_1005A9118, type metadata accessor for AccountService);
  v1[2] = v33 + 1;
  v35 = &v1[2 * v33];
  v35[4] = v31;
  v35[5] = v34;
  type metadata accessor for CredentialService();
  swift_allocObject();
  v36 = sub_1001D2E74();
  v38 = v1[2];
  v37 = v1[3];
  if (v38 >= v37 >> 1)
  {
    v1 = sub_1001FD30C((v37 > 1), v38 + 1, 1, v1);
  }

  v0[27] = v1;
  v39 = sub_1000092D8(&unk_1005AF9F0, type metadata accessor for CredentialService);
  v1[2] = v38 + 1;
  v40 = &v1[2 * v38];
  v40[4] = v36;
  v40[5] = v39;
  v41 = type metadata accessor for SettingsService();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = swift_task_alloc();
  v0[28] = v44;
  *v44 = v0;
  v44[1] = sub_10016C868;

  return sub_10047C770();
}

uint64_t sub_10016C868(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10016C968, 0, 0);
}

uint64_t sub_10016C968()
{
  v24 = v0;
  v1 = v0[27];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[27]);
  }

  v4 = v0[29];
  v5 = sub_1000092D8(&qword_1005AA6E8, type metadata accessor for SettingsService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v7 = type metadata accessor for DataManager(0);
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1001DC198(0, 0, v20, v22);
  v12 = v1[2];
  v11 = v1[3];
  if (v12 >= v11 >> 1)
  {
    v1 = sub_1001FD30C((v11 > 1), v12 + 1, 1, v1);
  }

  v0[30] = v1;
  v13 = sub_1000092D8(&qword_1005A90D0, type metadata accessor for DataManager);
  v1[2] = v12 + 1;
  v14 = &v1[2 * v12];
  v14[4] = v10;
  v14[5] = v13;
  v15 = type metadata accessor for FriendshipService();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = swift_task_alloc();
  v0[31] = v18;
  *v18 = v0;
  v18[1] = sub_10016CB50;

  return sub_1002ADA80();
}

uint64_t sub_10016CB50(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10016CC50, 0, 0);
}

uint64_t sub_10016CC50()
{
  v1 = v0[30];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[30]);
  }

  v0[33] = v1;
  v4 = v0[32];
  v5 = sub_1000092D8(&qword_1005AA6E0, type metadata accessor for FriendshipService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v7 = type metadata accessor for LocationService();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_10016CD78;

  return sub_100346DD0();
}

uint64_t sub_10016CD78(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10016CE78, 0, 0);
}

uint64_t sub_10016CE78()
{
  v1 = v0[33];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[33]);
  }

  v4 = v0[35];
  v5 = sub_1000092D8(&qword_1005A9308, type metadata accessor for LocationService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for UserNotificationService();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = 0xD000000000000017;
  *(v7 + 120) = 0x80000001004E2E30;
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = sub_1000092D8(&qword_1005AD530, type metadata accessor for UserNotificationService);
  v1[2] = v9 + 1;
  v11 = &v1[2 * v9];
  v11[4] = v7;
  v11[5] = v10;
  type metadata accessor for LocationMonitor();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0x6E6F697461636F4CLL;
  *(v12 + 120) = 0xEF726F74696E6F4DLL;
  *(v12 + 128) = _swiftEmptyDictionarySingleton;
  *(v12 + 136) = 2;
  v14 = v1[2];
  v13 = v1[3];
  if (v14 >= v13 >> 1)
  {
    v1 = sub_1001FD30C((v13 > 1), v14 + 1, 1, v1);
  }

  v15 = sub_1000092D8(&qword_1005AD538, type metadata accessor for LocationMonitor);
  v1[2] = v14 + 1;
  v16 = &v1[2 * v14];
  v16[4] = v12;
  v16[5] = v15;
  type metadata accessor for AppDeletionService();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 112) = 0xD000000000000012;
  *(v17 + 120) = 0x80000001004E2E50;
  *(v17 + 128) = _swiftEmptyDictionarySingleton;
  *(v17 + 136) = 2;
  v19 = v1[2];
  v18 = v1[3];
  if (v19 >= v18 >> 1)
  {
    v1 = sub_1001FD30C((v18 > 1), v19 + 1, 1, v1);
  }

  v0[36] = v1;
  v20 = sub_1000092D8(&qword_1005AD540, type metadata accessor for AppDeletionService);
  v1[2] = v19 + 1;
  v21 = &v1[2 * v19];
  v21[4] = v17;
  v21[5] = v20;
  v22 = type metadata accessor for FenceService(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = swift_task_alloc();
  v0[37] = v25;
  *v25 = v0;
  v25[1] = sub_10016D1CC;

  return sub_10024B368();
}

uint64_t sub_10016D1CC(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_10016D2CC, 0, 0);
}

uint64_t sub_10016D2CC()
{
  v1 = v0[36];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[36]);
  }

  v4 = v0[38];
  v5 = sub_1000092D8(&qword_1005A9278, type metadata accessor for FenceService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v7 = type metadata accessor for NITokenService();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1003ED000();
  v12 = v1[2];
  v11 = v1[3];
  if (v12 >= v11 >> 1)
  {
    v1 = sub_1001FD30C((v11 > 1), v12 + 1, 1, v1);
  }

  v13 = v0[26];
  v14 = v0[2];
  v15 = sub_1000092D8(&qword_1005AD548, type metadata accessor for NITokenService);
  v1[2] = v12 + 1;
  v16 = &v1[2 * v12];
  v16[4] = v10;
  v16[5] = v15;
  type metadata accessor for NITokenService_LocalMessaging();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  v17[14] = 0xD00000000000001DLL;
  v17[15] = 0x80000001004E2E70;
  UUID.init()();
  v17[16] = WorkItemQueue.__allocating_init(identifier:)();
  v19 = v1[2];
  v18 = v1[3];
  if (v19 >= v18 >> 1)
  {
    v1 = sub_1001FD30C((v18 > 1), v19 + 1, 1, v1);
  }

  v20 = sub_1000092D8(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging);
  v1[2] = v19 + 1;
  v21 = &v1[2 * v19];
  v21[4] = v17;
  v21[5] = v20;
  v22 = type metadata accessor for NIRangingService();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 14) = 0xD000000000000010;
  *(v25 + 15) = 0x80000001004E2E90;
  *(v25 + 16) = 0;
  v26 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  v27 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v28 = *(*(v27 - 8) + 56);
  v28(&v25[v26], 1, 1, v27);
  v28(&v25[OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation], 1, 1, v27);
  v30 = v1[2];
  v29 = v1[3];
  if (v30 >= v29 >> 1)
  {
    v1 = sub_1001FD30C((v29 > 1), v30 + 1, 1, v1);
  }

  v0[39] = v1;
  v31 = sub_1000092D8(&qword_1005AD560, type metadata accessor for NIRangingService);
  v1[2] = v30 + 1;
  v32 = &v1[2 * v30];
  v32[4] = v25;
  v32[5] = v31;
  if (static MicroFindMyInterface.isSupported.getter())
  {
    MyService = type metadata accessor for MicroFindMyService(0);
    v34 = *(MyService + 48);
    v35 = *(MyService + 52);
    swift_allocObject();
    v36 = swift_task_alloc();
    v0[40] = v36;
    *v36 = v0;
    v36[1] = sub_10016D6E4;

    return sub_1003B0AA8();
  }

  else
  {
    v38 = v0[5];
    v39 = v0[2];

    v40 = v0[1];

    return v40(v1);
  }
}

uint64_t sub_10016D6E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_10016D8E8;
  }

  else
  {
    v5 = sub_10016D7F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016D7F8()
{
  v1 = v0[39];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[39]);
  }

  v4 = v0[41];
  v5 = sub_1000092D8(&qword_1005A9DF8, type metadata accessor for MicroFindMyService);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v7 = v0[5];
  v8 = v0[2];

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_10016D8E8()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC40);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[42];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error creating MicroFindMyService: %{public}@", v7, 0xCu);
    sub_100139370(v8);
  }

  else
  {
  }

  v10 = v0[39];
  v11 = v0[5];
  v12 = v0[2];

  v13 = v0[1];

  return v13(v10);
}

uint64_t sub_10016DA98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10016DAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32[1] = a1;
  v3 = type metadata accessor for MotionActivityState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v32 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = type metadata accessor for LegacyLocation(0);
  v20 = v19[7];
  v21 = *(v2 + v19[8]);
  v22 = *(v2 + v19[9]);
  if (!*(v2 + v20 + 8))
  {
    v23 = *(v2 + v20);
  }

  v24 = v2 + v19[11];
  v25 = *v24;
  *(v24 + 8);
  v26 = v2 + v19[5];
  v27 = *v26;
  *(v26 + 8);
  v28 = v2 + v19[6];
  v29 = *v28;
  *(v28 + 8);
  v30 = *(v2 + v19[10]) / 1000.0;
  Date.init(timeIntervalSince1970:)();
  sub_100005F04(v2, v16, &qword_1005A8F20, &qword_1004C9BE0);
  (*(v9 + 104))(v12, enum case for LocationType.legacy(_:), v8);
  (*(v4 + 104))(v7, enum case for MotionActivityState.unknown(_:), v3);
  return Location.init(latitude:longitude:horizontalAccuracy:verticalAccuracy:speed:altitude:floor:timestamp:placemark:locationType:motionActivityState:customLabel:)();
}

uint64_t sub_10016DE04(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(16);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3A7375746174730ALL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  return 540697705;
}

uint64_t sub_10016DEE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10004B564(&qword_1005AD770, &qword_1004CA020);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100170EE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10016E078()
{
  if (*v0)
  {
    result = 0x737574617473;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_10016E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_10016E174(uint64_t a1)
{
  v2 = sub_100170EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016E1B0(uint64_t a1)
{
  v2 = sub_100170EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016E1EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001709CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10016E23C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10016DE04(*v0, *(v0 + 8));
}

uint64_t sub_10016E248()
{
  v1 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v19 = 540697705;
  v20 = 0xE400000000000000;
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 0x6F697461636F6C0ALL;
  v5._object = 0xEA00000000003A6ELL;
  String.append(_:)(v5);
  v6 = type metadata accessor for ServerLocation(0);
  sub_100005F04(v0 + v6[5], v4, &qword_1005A92D0, &qword_1004C2890);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._object = 0x80000001004E2F10;
  v8._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v8);
  v9 = (&v0->_countAndFlagsBits + v6[6]);
  v10 = v9[1];
  v17 = *v9;
  v18 = v10;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3A7375746174730ALL;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  v13 = (&v0->_countAndFlagsBits + v6[7]);
  v14 = v13[1];
  v17 = *v13;
  v18 = v14;

  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  return v19;
}

Swift::Int sub_10016E430()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10016E4F0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10016E59C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016E658@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BB0(*a1);
  *a2 = result;
  return result;
}

void sub_10016E688(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEE00737574617453;
  v5 = 0x6E6F697461636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x737574617473;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461636F6CLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10016E704()
{
  v1 = 25705;
  v2 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x737574617473;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10016E77C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BB0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016E7A4(uint64_t a1)
{
  v2 = sub_100170E28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016E7E0(uint64_t a1)
{
  v2 = sub_100170E28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016E81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v39 = &v32 - v6;
  v7 = sub_10004B564(&qword_1005AD738, &qword_1004CA000);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ServerLocation(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100170E28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v36 = v14;
    v34 = v11;
    v16 = v38;
    v17 = v39;
    v43 = 0;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v36;
    *v36 = v18;
    v19[1] = v20;
    type metadata accessor for LegacyLocation(0);
    v42 = 1;
    sub_100170750(&qword_1005AD748, type metadata accessor for LegacyLocation);
    v33 = v7;
    v35 = v10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v17;
    v22 = v34;
    v23 = v36;
    sub_1000176A8(v21, v36 + *(v34 + 20), &qword_1005A92D0, &qword_1004C2890);
    v41 = 2;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = (v23 + *(v22 + 24));
    *v25 = v24;
    v25[1] = v26;
    v40 = 3;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v28;
    (*(v16 + 8))(v35, v33);
    v30 = (v23 + *(v22 + 28));
    *v30 = v27;
    v30[1] = v29;
    sub_100170E7C(v23, v37);
  }

  return sub_100004984(a1);
}

uint64_t sub_10016EBC4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD750, &unk_1004CA008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100170E28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for ServerLocation(0);
    v14 = v13[5];
    v22[14] = 1;
    type metadata accessor for LegacyLocation(0);
    sub_100170750(&qword_1005AD758, type metadata accessor for LegacyLocation);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v22[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v22[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10016EE3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BFC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016EE6C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  v5 = 0xE900000000000070;
  v6 = 0x6D617473656D6974;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001004DDC90;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64757469676E6F6CLL;
  if (v2 == 4)
  {
    v8 = 0x656475746974616CLL;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006C65;
  result = 0x76654C726F6F6C66;
  v11 = 0xD000000000000012;
  if (v2 == 2)
  {
    v11 = 0x76654C726F6F6C66;
  }

  else
  {
    v9 = 0x80000001004DDCB0;
  }

  if (*v1)
  {
    v4 = 0x6564757469746C61;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016EF74()
{
  v1 = *v0;
  v2 = 0x73736572646461;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x64757469676E6F6CLL;
  if (v1 == 4)
  {
    v4 = 0x656475746974616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 == 2)
  {
    v5 = 0x76654C726F6F6C66;
  }

  if (*v0)
  {
    v2 = 0x6564757469746C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
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

unint64_t sub_10016F078@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BFC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016F0A0(uint64_t a1)
{
  v2 = sub_10016F5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016F0DC(uint64_t a1)
{
  v2 = sub_10016F5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LegacyLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10004B564(&qword_1005AD580, &qword_1004C9BE8);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for LegacyLocation(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v42 = a1;
  sub_100011AEC(a1, v14);
  sub_10016F5D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v42);
  }

  v16 = v41;
  v50 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v6;
  v18 = v13;
  *&v13[v10[8]] = v19;
  v49 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v13[v10[9]] = v20;
  v48 = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v13[v10[10]] = v21;
  type metadata accessor for PlaceMark();
  v47 = 0;
  sub_100170750(&qword_1005AD590, &type metadata accessor for PlaceMark);
  v39 = v17;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v40;
  sub_1000176A8(0, v13, &qword_1005A8F20, &qword_1004C9BE0);
  v46 = 1;
  v23 = v39;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v10;
  v26 = v18 + v10[5];
  *v26 = v24;
  *(v26 + 8) = v27 & 1;
  v45 = 2;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v18 + v10[6];
  *v29 = v28;
  *(v29 + 8) = v30 & 1;
  v44 = 3;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v18 + v10[7];
  *v32 = v31;
  *(v32 + 8) = v33 & 1;
  v43 = 7;
  v34 = v18;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v18) = v36;
  (*(v16 + 8))(v9, v23);
  v37 = v34 + v25[11];
  *v37 = v35;
  *(v37 + 8) = v18 & 1;
  sub_10016F624(v34, v22);
  sub_100004984(v42);
  return sub_10016F688(v34);
}

unint64_t sub_10016F5D0()
{
  result = qword_1005AD588;
  if (!qword_1005AD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD588);
  }

  return result;
}

uint64_t sub_10016F624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F688(uint64_t a1)
{
  v2 = type metadata accessor for LegacyLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LegacyLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD5A0, &qword_1004C9C00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10016F5D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28[15] = 0;
  type metadata accessor for PlaceMark();
  sub_100170750(&qword_1005AD5A8, &type metadata accessor for PlaceMark);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for LegacyLocation(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v28[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v28[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v28[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v11[8]);
    v28[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v11[9]);
    v28[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + v11[10]);
    v28[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v3 + v11[11]);
    v25 = *v24;
    v26 = *(v24 + 8);
    v28[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void LegacyLocation.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceMark();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  sub_100005F04(v1, &v26 - v9, &qword_1005A8F20, &qword_1004C9BE0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100170750(&qword_1005AD5B0, &type metadata accessor for PlaceMark);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v11 = type metadata accessor for LegacyLocation(0);
  v12 = v1 + v11[5];
  if (*(v12 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    Hasher._combine(_:)(v14);
  }

  v15 = v1 + v11[6];
  if (*(v15 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *v15;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v16);
  }

  v17 = v1 + v11[7];
  if (*(v17 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *v17;
    Hasher._combine(_:)(1u);
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    Hasher._combine(_:)(v19);
  }

  v20 = *(v1 + v11[8]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  Hasher._combine(_:)(*&v20);
  v21 = *(v1 + v11[9]);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  Hasher._combine(_:)(*&v21);
  v22 = *(v1 + v11[10]);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  Hasher._combine(_:)(*&v22);
  v23 = v1 + v11[11];
  if (*(v23 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *v23;
    Hasher._combine(_:)(1u);
    if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    Hasher._combine(_:)(v25);
  }
}

Swift::Int LegacyLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  LegacyLocation.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100170250()
{
  Hasher.init(_seed:)();
  LegacyLocation.hash(into:)();
  return Hasher._finalize()();
}

BOOL _s13findmylocated14LegacyLocationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceMark();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - v11;
  v13 = sub_10004B564(&qword_1005AD688, &unk_1004C9EA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v44 - v16;
  v18 = *(v15 + 56);
  sub_100005F04(a1, &v44 - v16, &qword_1005A8F20, &qword_1004C9BE0);
  sub_100005F04(a2, &v17[v18], &qword_1005A8F20, &qword_1004C9BE0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_100002CE0(v17, &qword_1005A8F20, &qword_1004C9BE0);
      goto LABEL_9;
    }

LABEL_6:
    sub_100002CE0(v17, &qword_1005AD688, &unk_1004C9EA0);
    return 0;
  }

  sub_100005F04(v17, v12, &qword_1005A8F20, &qword_1004C9BE0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_100170750(&qword_1005AD690, &type metadata accessor for PlaceMark);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_100002CE0(v17, &qword_1005A8F20, &qword_1004C9BE0);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v23 = type metadata accessor for LegacyLocation(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v23[6];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = v23[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  if (*(a1 + v23[8]) != *(a2 + v23[8]) || *(a1 + v23[9]) != *(a2 + v23[9]) || *(a1 + v23[10]) != *(a2 + v23[10]))
  {
    return 0;
  }

  v39 = v23[11];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if ((v41 & 1) == 0)
  {
    if (*v40 != *v42)
    {
      v43 = 1;
    }

    return (v43 & 1) == 0;
  }

  return (v43 & 1) != 0;
}

uint64_t sub_100170750(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001707C0()
{
  sub_100170D30(319, &unk_1005AD628, &type metadata accessor for PlaceMark);
  if (v0 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005AC708);
    if (v1 <= 0x3F)
    {
      sub_10008B2BC(319, &qword_1005A9788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1001708C8()
{
  result = qword_1005AD670;
  if (!qword_1005AD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD670);
  }

  return result;
}

unint64_t sub_100170920()
{
  result = qword_1005AD678;
  if (!qword_1005AD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD678);
  }

  return result;
}

unint64_t sub_100170978()
{
  result = qword_1005AD680;
  if (!qword_1005AD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD680);
  }

  return result;
}

uint64_t sub_1001709CC(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005AD760, &qword_1004CA018);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100170EE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100004984(a1);
  return v8;
}

unint64_t sub_100170BB0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B1C0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100170BFC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B240, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_100170C70()
{
  sub_100170D30(319, &unk_1005AD700, type metadata accessor for LegacyLocation);
  if (v0 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005A9790);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100170D30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100170D84(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100170D90(uint64_t a1, int a2)
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

uint64_t sub_100170DD8(uint64_t result, int a2, int a3)
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

unint64_t sub_100170E28()
{
  result = qword_1005AD740;
  if (!qword_1005AD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD740);
  }

  return result;
}

uint64_t sub_100170E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100170EE0()
{
  result = qword_1005AD768;
  if (!qword_1005AD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD768);
  }

  return result;
}

unint64_t sub_100170F58()
{
  result = qword_1005AD778;
  if (!qword_1005AD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD778);
  }

  return result;
}

unint64_t sub_100170FB0()
{
  result = qword_1005AD780;
  if (!qword_1005AD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD780);
  }

  return result;
}

unint64_t sub_100171008()
{
  result = qword_1005AD788;
  if (!qword_1005AD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD788);
  }

  return result;
}

unint64_t sub_100171060()
{
  result = qword_1005AD790;
  if (!qword_1005AD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD790);
  }

  return result;
}

unint64_t sub_1001710B8()
{
  result = qword_1005AD798;
  if (!qword_1005AD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD798);
  }

  return result;
}

unint64_t sub_100171110()
{
  result = qword_1005AD7A0;
  if (!qword_1005AD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD7A0);
  }

  return result;
}

void *sub_100171168()
{
  if (v0[74])
  {
    v1 = v0[74];
    v2 = v0[75];
    if (!v2)
    {
LABEL_9:
      v2 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    if (!v0[75])
    {
      if (!v0[76] && !v0[77])
      {
        return 0;
      }

      v1 = &_swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v1 = &_swiftEmptyArrayStorage;
    v2 = v0[75];
  }

  if (v0[76])
  {
    v3 = v0[76];
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = v0[77];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v7 = v1;

  sub_1002493A4(v2);
  sub_1002493A4(v3);
  sub_1002493A4(v5);
  return v7;
}