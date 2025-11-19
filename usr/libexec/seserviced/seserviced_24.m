uint64_t sub_1001F44E8()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10051B4E0);
  sub_1000958E4(v0, qword_10051B4E0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F4560()
{
  v0 = type metadata accessor for SESDataTask();
  result = swift_allocObject();
  qword_10051B510 = v0;
  unk_10051B518 = &off_1004C90F8;
  qword_10051B4F8 = result;
  return result;
}

id sub_1001F45AC()
{
  result = [objc_opt_self() sharedInstance];
  qword_10051B520 = result;
  return result;
}

uint64_t sub_1001F45E8(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100507210, &qword_10040F4F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1001F96E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[5];
    v23 = v3[4];
    v24 = v15;
    v22 = 2;
    sub_100069E2C(v23, v15);
    sub_1000B8890();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v23, v24);
    v16 = v3[7];
    v23 = v3[6];
    v24 = v16;
    v22 = 3;
    sub_100069E2C(v23, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v23, v24);
    v17 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord();
    v18 = *(v17 + 32);
    LOBYTE(v23) = 4;
    type metadata accessor for SESPeerIdentityData(0);
    sub_1001F97FC(&qword_100504E28, type metadata accessor for SESPeerIdentityData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v17 + 36);
    LOBYTE(v23) = 5;
    type metadata accessor for CreationMetadata(0);
    sub_1001F97FC(&qword_1005062A8, type metadata accessor for CreationMetadata);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001F48D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v43 - v5;
  v48 = type metadata accessor for SESPeerIdentityData(0);
  v6 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100068FC4(&qword_100507220, &qword_10040F500);
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v49);
  v11 = &v43 - v10;
  v12 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 36);
  sub_1001C5FF8((v16 + v17));
  v18 = type metadata accessor for CreationMetadata(0);
  v19 = *(*(v18 - 8) + 56);
  v51 = v17;
  v20 = v16;
  v19(v16 + v17, 0, 1, v18);
  v22 = a1[3];
  v21 = a1[4];
  v50 = a1;
  sub_1000752B0(a1, v22);
  sub_1001F96E0();
  v23 = v11;
  v24 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    v52 = v24;
    sub_1000752F4(v50);
    return sub_100075768(v20 + v51, &qword_100504F08, &unk_10040DE20);
  }

  v43 = v18;
  v44 = v12;
  v25 = v8;
  v26 = v47;
  LOBYTE(v53) = 0;
  v27 = v49;
  *v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v20[1] = v29;
  LOBYTE(v53) = 1;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v52 = 0;
  v32 = v26;
  v20[2] = v30;
  v20[3] = v31;
  v54 = 2;
  sub_1000B87D4();
  v33 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v33)
  {
    (*(v26 + 8))(v23, v27);
    v34 = 0;
    v35 = 0;
    v52 = v33;
    v36 = v33;
    goto LABEL_11;
  }

  *(v20 + 2) = v53;
  v54 = 3;
  v37 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v52 = 0;
  v36 = 0;
  *(v20 + 3) = v53;
  LOBYTE(v53) = 4;
  sub_1001F97FC(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
  v38 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v52 = v38;
  if (v38)
  {
    (*(v26 + 8))(v37, v27);
    v35 = 0;
    v34 = 1;
    goto LABEL_11;
  }

  sub_1001F9794(v25, v20 + *(v44 + 32), type metadata accessor for SESPeerIdentityData);
  LOBYTE(v53) = 5;
  sub_1001F97FC(&qword_100506278, type metadata accessor for CreationMetadata);
  v39 = v46;
  v40 = v52;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52 = v40;
  if (v40)
  {
    (*(v32 + 8))(v37, v27);
    v34 = 1;
    v35 = 1;
LABEL_11:
    sub_1000752F4(v50);
    v41 = v20[1];

    v42 = v20[3];

    if (v36)
    {
      if (v34)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_10006A178(v20[4], v20[5]);
      if (v34)
      {
LABEL_13:
        sub_10006A178(v20[6], v20[7]);
        if ((v35 & 1) == 0)
        {
          return sub_100075768(v20 + v51, &qword_100504F08, &unk_10040DE20);
        }

LABEL_17:
        sub_1001F9734(v20 + *(v44 + 32), type metadata accessor for SESPeerIdentityData);
        return sub_100075768(v20 + v51, &qword_100504F08, &unk_10040DE20);
      }
    }

    if (!v35)
    {
      return sub_100075768(v20 + v51, &qword_100504F08, &unk_10040DE20);
    }

    goto LABEL_17;
  }

  (*(v32 + 8))(v37, v27);
  sub_1001F9844(v39, v20 + v51);
  sub_1001F6DB0(v20, v45, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  sub_1000752F4(v50);
  return sub_1001F9734(v20, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
}

uint64_t sub_1001F4EE4()
{
  v1 = *v0;
  v2 = 0x6E6F69676572;
  v3 = 0x6574707972636E65;
  v4 = 0x746E656449637273;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D614E77656976;
  if (v1 != 1)
  {
    v5 = 0x444955556B6C74;
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

uint64_t sub_1001F4FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001F99DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001F4FDC(uint64_t a1)
{
  v2 = sub_1001F96E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F5018(uint64_t a1)
{
  v2 = sub_1001F96E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F5084()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100507100);
  sub_1000958E4(v0, qword_100507100);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001F5138()
{
  v0 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  sub_1000B6A94(v0, qword_100507118);
  sub_1000958E4(v0, qword_100507118);
  sub_100068FC4(&qword_1005048A0, &qword_100409C80);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001F5208()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100507130);
  sub_1000958E4(v0, qword_100507130);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001F52B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_1001F536C;

  return (sub_100159A70)(a1, a2);
}

uint64_t sub_1001F536C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1001F54E0, 0, 0);
  }

  else
  {
    v9 = (*(v6 + 88) != 0) << 8;
    v10 = *(v8 + 8);

    return v10(a1, a2, v9);
  }
}

uint64_t sub_1001F54E0()
{
  *(v0 + 64) = *(v0 + 88);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 88);

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
  }

  else
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);

    _StringGuts.grow(_:)(23);

    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v11);

    v3 = 0xD000000000000015;
    v2 = 0x8000000100467700;
    v4 = 3;
  }

  v12 = v4 | ((*(v0 + 88) != 0) << 8);
  v13 = *(v0 + 8);

  return v13(v3, v2, v12);
}

uint64_t sub_1001F5640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v33 - v7;
  if (qword_100501B28 != -1)
  {
    swift_once();
  }

  v9 = sub_1000958E4(v4, qword_100507100);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  UserDefaultBacked.wrappedValue.getter();
  result = (*(v5 + 8))(v8, v4);
  if ((v35[0] & 1) == 0)
  {
    v33[1] = v4;
    v33[2] = v9;
    sub_100068FC4(&qword_100507158, &qword_10040F440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10040AA50;
    *(inited + 32) = kSecClass;
    type metadata accessor for CFString(0);
    *(inited + 40) = kSecClassGenericPassword;
    *(inited + 64) = v12;
    *(inited + 72) = kSecAttrAccount;
    *(inited + 80) = a1;
    *(inited + 88) = a2;
    *(inited + 104) = &type metadata for String;
    *(inited + 112) = kSecAttrService;
    v13 = kSecClass;
    v14 = kSecClassGenericPassword;
    v15 = kSecAttrAccount;

    v16 = kSecAttrService;
    *(inited + 120) = Data.base64EncodedString(options:)(0);
    *(inited + 144) = &type metadata for String;
    *(inited + 152) = kSecAttrAccessGroup;
    *(inited + 160) = 0xD000000000000033;
    *(inited + 168) = 0x8000000100467500;
    *(inited + 184) = &type metadata for String;
    *(inited + 192) = kSecAttrSynchronizable;
    *(inited + 224) = &type metadata for Bool;
    *(inited + 200) = 1;
    v17 = kSecAttrAccessGroup;
    v18 = kSecAttrSynchronizable;
    v19 = sub_1000918D4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C88, &qword_100409D68);
    swift_arrayDestroy();
    if (qword_100501B20 != -1)
    {
      swift_once();
    }

    v20 = qword_10051B520;
    sub_100195868(v19);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35[0] = 0;
    v22 = [v20 updateToApplePayView:isa error:v35];

    if (v22)
    {
      v23 = v35[0];
    }

    else
    {
      v24 = v35[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100501B10 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000958E4(v25, qword_10051B4E0);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = sub_1002FFA0C(v30, v31, v35);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to update recovery blob %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      else
      {
      }
    }

    v34 = 1;
    swift_beginAccess();
    UserDefaultBacked.wrappedValue.setter();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1001F5B88(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  if (qword_100501B10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_10051B4E0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1002FFA0C(a2, a3, &v31);
    _os_log_impl(&_mh_execute_header, v12, v13, "Encrypting towards region %s", v14, 0xCu);
    sub_1000752F4(v15);
  }

  if (a1)
  {
    if (a2 == 20035 && a3 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100068FC4(&qword_1005025E0, &unk_10040F430);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100409900;
      if (qword_100501CB8 != -1)
      {
        swift_once();
      }

      v17 = qword_10051B738;
      v18 = unk_10051B740;
      *(v16 + 32) = qword_10051B738;
      *(v16 + 40) = v18;
      sub_100069E2C(v17, v18);
      if (qword_100501CC8 != -1)
      {
        swift_once();
      }

      v19 = &qword_10051B758;
    }

    else
    {
      sub_100068FC4(&qword_1005025E0, &unk_10040F430);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100409900;
      if (qword_100501CB8 != -1)
      {
        swift_once();
      }

      v26 = qword_10051B738;
      v27 = unk_10051B740;
      *(v16 + 32) = qword_10051B738;
      *(v16 + 40) = v27;
      sub_100069E2C(v26, v27);
      if (qword_100501CC0 != -1)
      {
        swift_once();
      }

      v19 = &qword_10051B748;
    }
  }

  else
  {
    if (qword_100501B38 != -1)
    {
      swift_once();
    }

    v20 = sub_1000958E4(v6, qword_100507130);
    (*(v7 + 16))(v10, v20, v6);
    UserDefaultBacked.wrappedValue.getter();
    (*(v7 + 8))(v10, v6);
    v21 = v32;
    sub_100068FC4(&qword_1005025E0, &unk_10040F430);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100409900;
    if (v21 == 1)
    {
      if (qword_100501CA0 != -1)
      {
        swift_once();
      }

      v22 = qword_10051B708;
      v23 = unk_10051B710;
      *(v16 + 32) = qword_10051B708;
      *(v16 + 40) = v23;
      sub_100069E2C(v22, v23);
      if (qword_100501CA8 != -1)
      {
        swift_once();
      }

      v19 = &qword_10051B718;
    }

    else
    {
      if (qword_100501CA0 != -1)
      {
        swift_once();
      }

      v24 = qword_10051B708;
      v25 = unk_10051B710;
      *(v16 + 32) = qword_10051B708;
      *(v16 + 40) = v25;
      sub_100069E2C(v24, v25);
      if (qword_100501CB0 != -1)
      {
        swift_once();
      }

      v19 = &qword_10051B728;
    }
  }

  v28 = *v19;
  v29 = v19[1];
  *(v16 + 48) = *v19;
  *(v16 + 56) = v29;
  sub_100069E2C(v28, v29);
  return v16;
}

id sub_1001F60C4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v95 = a6;
  v12 = type metadata accessor for SEKeySyncRecovery.RecoveryRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v98 = (v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() currentLocale];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = result;
  v96 = a2;
  v97 = a3;
  v100 = a5;
  v17 = [result countryCode];

  if (v17)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE200000000000000;
    v19 = 21333;
  }

  v22 = sub_1003AF3C4(a1, v18);
  v23 = [v22 isProd];

  v24 = sub_1001F5B88(v23, v19, v21);
  v25 = a1;
  v26 = v24;
  v99 = a4;
  v27 = v21;
  v28 = v100;
  v29 = sub_1001A5EF4(v25, a4, v100, v24);
  if (v6)
  {

    sub_10018C6D8();
    swift_allocError();
    *v31 = 16;
    swift_willThrow();
  }

  v32 = v30;
  v92[1] = v26;
  v93 = v29;
  v33 = *(v12 + 32);
  v94 = v12;
  v34 = v98;
  sub_1001F6DB0(v95, v98 + v33, type metadata accessor for SESPeerIdentityData);
  v35 = *(v12 + 36);

  v36 = v19;
  v37 = v97;

  sub_1001C5FF8((v34 + v35));
  v38 = type metadata accessor for CreationMetadata(0);
  (*(*(v38 - 8) + 56))(v34 + v35, 0, 1, v38);
  v95 = v36;
  *v34 = v36;
  v34[1] = v27;
  v34[2] = v96;
  v34[3] = v37;
  v39 = v28;
  v40 = v99;
  v34[4] = v99;
  v34[5] = v39;
  v34[6] = v93;
  v34[7] = v32;
  v41 = type metadata accessor for PropertyListEncoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_100069E2C(v40, v39);
  PropertyListEncoder.init()();
  sub_1001F97FC(&qword_100507148, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v44 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v46 = v45;
  v94 = v27;
  v47 = v44;

  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040F420;
  v102 = kSecClass;
  type metadata accessor for CFString(0);
  v50 = v49;
  sub_1001F97FC(&qword_1005021B0, type metadata accessor for CFString);
  v51 = kSecClass;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v50;
  *(inited + 72) = kSecClassGenericPassword;
  v102 = kSecAttrAccessible;
  v52 = kSecClassGenericPassword;
  v53 = kSecAttrAccessible;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v50;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlock;
  v102 = kSecAttrAccount;
  v54 = kSecAttrAccessibleAfterFirstUnlock;
  v55 = kSecAttrAccount;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  v56 = v97;
  *(inited + 216) = v96;
  *(inited + 224) = v56;
  v102 = kSecAttrService;

  v57 = kSecAttrService;
  AnyHashable.init<A>(_:)();
  v58 = Data.base64EncodedString(options:)(0);
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v58;
  v102 = kSecAttrAccessGroup;
  v59 = kSecAttrAccessGroup;
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = 0xD000000000000033;
  *(inited + 368) = 0x8000000100467500;
  v102 = kSecAttrSynchronizable;
  v60 = kSecAttrSynchronizable;
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = 1;
  v102 = kSecValueData;
  v61 = kSecValueData;
  AnyHashable.init<A>(_:)();
  v97 = v47;
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1001F6C04();
  *(inited + 528) = result;
  *(inited + 504) = isa;
  if (!kSecAttrSyncViewHint)
  {
    goto LABEL_24;
  }

  v96 = v46;
  v102 = kSecAttrSyncViewHint;
  v63 = kSecAttrSyncViewHint;
  result = AnyHashable.init<A>(_:)();
  v64 = v94;
  if (!kSecAttrViewHintApplePay)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v65 = kSecAttrViewHintApplePay;

  *(inited + 600) = v50;
  *(inited + 576) = v65;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  swift_arrayDestroy();
  v66 = v99;
  if (qword_100501B20 != -1)
  {
    swift_once();
  }

  v67 = qword_10051B520;
  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = [v67 addItem:v68];

  if (v69)
  {

    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000958E4(v70, qword_10051B4E0);
    v71 = v100;
    sub_100069E2C(v66, v100);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    sub_10006A178(v66, v71);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v102 = v75;
      *v74 = 136315394;
      v76 = Data.base64EncodedString(options:)(0);
      v77 = sub_1002FFA0C(v76._countAndFlagsBits, v76._object, &v102);

      *(v74 + 4) = v77;
      *(v74 + 12) = 1024;
      *(v74 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v72, v73, "Failed to add recovery record for %s status %d", v74, 0x12u);
      sub_1000752F4(v75);
    }

    sub_10018C6D8();
    swift_allocError();
    *v78 = 25;
    swift_willThrow();
    sub_10006A178(v97, v96);
  }

  else
  {
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_1000958E4(v79, qword_10051B4E0);

    v80 = v100;
    sub_100069E2C(v66, v100);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();

    sub_10006A178(v66, v80);
    v83 = os_log_type_enabled(v81, v82);
    v84 = v95;
    if (v83)
    {
      v85 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v102 = v93;
      *v85 = 136315394;
      v86 = sub_1002FFA0C(v84, v64, &v102);

      *(v85 + 4) = v86;
      *(v85 + 12) = 2080;
      v101 = sub_100288788(v66, v80);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      BidirectionalCollection<>.joined(separator:)();

      sub_10028C190(8);
      v100 = v81;

      v87 = static String._fromSubstring(_:)();
      v89 = v88;

      v90 = sub_1002FFA0C(v87, v89, &v102);

      *(v85 + 14) = v90;
      v91 = v100;
      _os_log_impl(&_mh_execute_header, v100, v82, "Stored recovery record region %s TLK %s", v85, 0x16u);
      swift_arrayDestroy();

      sub_10006A178(v97, v96);
    }

    else
    {

      sub_10006A178(v97, v96);
    }
  }

  return sub_1001F9734(v98, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
}

uint64_t type metadata accessor for SEKeySyncRecovery.RecoveryRecord()
{
  result = qword_1005071C8;
  if (!qword_1005071C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001F6C04()
{
  result = qword_100507150;
  if (!qword_100507150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100507150);
  }

  return result;
}

uint64_t sub_1001F6DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F6E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F6E88(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  if (qword_100501B30 != -1)
  {
    swift_once();
  }

  v11 = sub_1000958E4(v6, qword_100507118);
  (*(v7 + 16))(v10, v11, v6);
  UserDefaultBacked.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v12 = v23;
  if (v23)
  {
    v13 = v22;
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B4E0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1002FFA0C(v13, v12, &v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Overriding URL via defaults - %s", v17, 0xCu);
      sub_1000752F4(v18);
    }
  }

  else
  {
    v13 = 0xD000000000000035;
    v21 = a2 == 20035 && a3 == 0xE200000000000000;
    if (a1)
    {
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0xD000000000000038;
      }
    }

    else if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000041;
    }

    else
    {
      return 0xD000000000000039;
    }
  }

  return v13;
}

void sub_1001F71A8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = objc_opt_self();
      _StringGuts.grow(_:)(31);

      v6._countAndFlagsBits = a1;
      v6._object = a2;
      String.append(_:)(v6);
      v7 = String._bridgeToObjectiveC()();

      v12 = String._bridgeToObjectiveC()();
      [v5 requestTapToRadar:v7 client:v12];
    }
  }

  else
  {
    v8 = objc_opt_self();
    _StringGuts.grow(_:)(31);

    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10 = String._bridgeToObjectiveC()();

    v11 = String._bridgeToObjectiveC()();
    [v8 requestTapToRadar:v10 client:v11];
  }
}

uint64_t sub_1001F73A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;

  return _swift_task_switch(sub_1001F7430, 0, 0);
}

uint64_t sub_1001F7430()
{
  v68 = v0;
  v1 = v0[34];
  v2 = v0[35];
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[30] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v0 + 30];

  v6 = v0[30];
  if (!v5)
  {
    v21 = v6;
    _convertNSErrorToError(_:)();

LABEL_14:
    swift_willThrow();
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000958E4(v23, qword_10051B4E0);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v67 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v29 = v0[18];
      v28 = v0[19];
      v30 = v0[20];
      v31 = Error.localizedDescription.getter();
      v33 = sub_1002FFA0C(v31, v32, &v67);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to decode JSON object %s", v26, 0xCu);
      sub_1000752F4(v27);
    }

    v35 = v0[34];
    v34 = v0[35];
    sub_100069E2C(v35, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    sub_10006A178(v35, v34);
    if (os_log_type_enabled(v36, v37))
    {
      v39 = v0[34];
      v38 = v0[35];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67 = v41;
      *v40 = 136315138;
      v42 = Data.base64EncodedString(options:)(0);
      v43 = sub_1002FFA0C(v42._countAndFlagsBits, v42._object, &v67);

      *(v40 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s", v40, 0xCu);
      sub_1000752F4(v41);
    }

    sub_10018C6D8();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();

    goto LABEL_33;
  }

  v7 = v6;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100068FC4(&qword_100505FD0, &qword_10040B550);
  if (!swift_dynamicCast())
  {
    sub_10018C6D8();
    swift_allocError();
    *v22 = 6;
    goto LABEL_14;
  }

  v8 = v0[32];
  if (!*(v8 + 16))
  {
    goto LABEL_27;
  }

  v9 = v0[32];
  v10 = sub_10008C908(0x6570706172776552, 0xED0000626F6C4264);
  if ((v11 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1000754F0(*(v8 + 56) + 32 * v10, (v0 + 6));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = sub_10013044C(v0[24], v0[25]);
  v0[36] = v12;
  v0[37] = v13;
  if (v13 >> 60 == 15)
  {
    goto LABEL_27;
  }

  if (!*(v8 + 16) || (v14 = v13, v15 = v12, v16 = sub_10008C908(0xD000000000000012, 0x80000001004676C0), v12 = v15, v18 = v17, v13 = v14, (v18 & 1) == 0))
  {
LABEL_26:
    sub_10006A2D0(v12, v13);
LABEL_27:
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000958E4(v50, qword_10051B4E0);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v67 = v54;
      *v53 = 136315138;
      v55 = Dictionary.Keys.description.getter();
      v57 = v56;

      v58 = sub_1002FFA0C(v55, v57, &v67);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Missing or malformed response %s", v53, 0xCu);
      sub_1000752F4(v54);
    }

    else
    {
    }

    sub_10018C6D8();
    swift_allocError();
    *v59 = 18;
    swift_willThrow();
LABEL_33:
    v60 = v0[1];

    return v60();
  }

  sub_1000754F0(*(v8 + 56) + 32 * v16, (v0 + 10));
  if ((swift_dynamicCast() & 1) == 0 || (v19 = sub_10013044C(v0[26], v0[27]), v0[38] = v19, v0[39] = v20, v20 >> 60 == 15))
  {
    v12 = v15;
    v13 = v14;
    goto LABEL_26;
  }

  v45 = v19;
  v46 = v20;
  if (!*(v8 + 16) || (v47 = sub_10008C908(0xD00000000000001ALL, 0x80000001004676E0), (v48 & 1) == 0) || (sub_1000754F0(*(v8 + 56) + 32 * v47, (v0 + 14)), (swift_dynamicCast() & 1) == 0) || (v0[40] = sub_10013044C(v0[28], v0[29]), v0[41] = v49, v49 >> 60 == 15))
  {
    sub_10006A2D0(v15, v14);
    v12 = v45;
    v13 = v46;
    goto LABEL_26;
  }

  if (qword_100501B10 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v0[42] = sub_1000958E4(v62, qword_10051B4E0);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Got response data for rewrap, asking for SE", v65, 2u);
  }

  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v66 = swift_task_alloc();
  v0[43] = v66;
  *v66 = v0;
  v66[1] = sub_1001F7D08;

  return sub_10016C130();
}

uint64_t sub_1001F7D08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v7 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v5 = sub_1001F8194;
  }

  else
  {
    v5 = sub_1001F7E48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001F7E48()
{
  v40 = v0;
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100409900;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v6;
  *(v9 + 56) = v5;
  sub_10006A2BC(v4, v3);
  sub_10006A2BC(v6, v5);
  sub_1001A6AE4(v1, v8, v7, v9);
  v10 = v0[42];

  if (v2)
  {
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v16 = v0[21];
      v15 = v0[22];
      v17 = v0[23];
      v18 = Error.localizedDescription.getter();
      v20 = sub_1002FFA0C(v18, v19, &v39);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to import rewrapped server TLK : %s", v13, 0xCu);
      sub_1000752F4(v14);
    }

    v21 = v0[44];
    v23 = v0[40];
    v22 = v0[41];
    v25 = v0[38];
    v24 = v0[39];
    v26 = v0[36];
    v38 = v0[37];
    sub_10018C6D8();
    swift_allocError();
    *v27 = 19;
    swift_willThrow();

    sub_10006A2D0(v23, v22);
    sub_10006A2D0(v25, v24);
    sub_10006A2D0(v26, v38);
    v28 = v0[1];
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully imported rewrapped server TLK", v31, 2u);
    }

    v32 = v0[44];
    v34 = v0[40];
    v33 = v0[41];
    v36 = v0[38];
    v35 = v0[39];
    sub_10006A2D0(v0[36], v0[37]);
    sub_10006A2D0(v36, v35);
    sub_10006A2D0(v34, v33);

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_1001F8194()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  sub_10018C6D8();
  swift_allocError();
  *v8 = v1;
  sub_10006A2D0(v3, v2);
  sub_10006A2D0(v5, v4);
  sub_10006A2D0(v7, v6);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1001F8290(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 370) = a3;
  *(v3 + 256) = a1;
  *(v3 + 264) = a2;
  v4 = *(*(sub_100068FC4(&unk_10050BEA0, &unk_10040F450) - 8) + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  *(v3 + 280) = v5;
  v6 = *(v5 - 8);
  *(v3 + 288) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_1001F838C, 0, 0);
}

uint64_t sub_1001F838C()
{
  v76 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v73 = v1;
  sub_100068FC4(&unk_100507CD0, &unk_100414C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001004675B0;
  v4 = v1 + *(type metadata accessor for SEKeySyncRecovery.RecoveryRecord() + 32);
  *(v0 + 208) = sub_100288788(*(v4 + 48), *(v4 + 56));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = 0xD000000000000013;
  *(inited + 72) = 0x80000001004675D0;
  *(v0 + 216) = sub_100288788(*(v4 + 32), *(v4 + 40));
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  *(inited + 80) = v8;
  *(inited + 88) = v10;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x80000001004675F0;
  *(v0 + 224) = sub_100288788(*(v2 + 48), *(v2 + 56));
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  *(inited + 112) = v11;
  *(inited + 120) = v13;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000100467610;
  *(v0 + 232) = sub_100288788(*(v2 + 16), *(v2 + 24));
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  *(inited + 144) = v14;
  *(inited + 152) = v16;
  strcpy((inited + 160), "EncryptedBlob");
  *(inited + 174) = -4864;
  *(v0 + 240) = sub_100288788(*(v73 + 48), *(v73 + 56));
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  *(inited + 176) = v17;
  *(inited + 184) = v19;
  v20 = sub_1000910F0(inited);
  swift_setDeallocating();
  sub_100068FC4(&unk_100504020, &qword_100409CC0);
  swift_arrayDestroy();
  v21 = type metadata accessor for JSONEncoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *(v0 + 248) = v20;
  sub_100068FC4(&qword_100502600, &unk_100417140);
  sub_1001F92D8();
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 304) = v24;
  *(v0 + 312) = v25;
  v69 = v24;
  v70 = v25;
  v74 = *(v0 + 272);
  LOBYTE(v73) = *(v0 + 370);
  v72 = *(v0 + 256);

  v68 = v0;
  v26 = sub_1001C7DE0(0x54746375646F7250, 0xEB00000000657079, 0x2C31656E6F685069);
  v28 = v27;
  v29 = sub_1001C7DE0(0x4E746375646F7250, 0xEB00000000656D61, 0x4F20656E6F685069);
  v31 = v30;
  v32 = sub_1001C7DE0(0x56746375646F7250, 0xEE006E6F69737265, 3157553);
  v34 = v33;
  v71 = sub_1001C7DE0(0x726556646C697542, 0xEC0000006E6F6973, 3227953);
  v36 = v35;
  _StringGuts.grow(_:)(25);

  v75[0] = 60;
  v75[1] = 0xE100000000000000;
  v37._countAndFlagsBits = v26;
  v37._object = v28;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 3940414;
  v38._object = 0xE300000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v29;
  v39._object = v31;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 59;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v41._countAndFlagsBits = v32;
  v41._object = v34;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 59;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = v71;
  v43._object = v36;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 3940414;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0xD000000000000022;
  v45._object = 0x8000000100467630;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 10272;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000022;
  v47._object = 0x8000000100467630;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 15913;
  v48._object = 0xE200000000000000;
  String.append(_:)(v48);
  v49 = sub_1001F6E88(v73, *v72, v72[1]);
  v51 = v50;
  URL.init(string:)();
  v52 = type metadata accessor for URL();
  result = (*(*(v52 - 8) + 48))(v74, 1, v52);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v54 = v68[37];
    v55 = v68[34];

    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    sub_100069E2C(v69, v70);
    URLRequest.httpBody.setter();
    v56._object = 0x8000000100467660;
    v57._countAndFlagsBits = 60;
    v57._object = 0xE100000000000000;
    v56._countAndFlagsBits = 0xD000000000000013;
    URLRequest.addValue(_:forHTTPHeaderField:)(v57, v56);

    v58._countAndFlagsBits = 0x2D746E65746E6F43;
    v58._object = 0xEC00000065707954;
    v59._countAndFlagsBits = 0xD00000000000001FLL;
    v59._object = 0x8000000100467680;
    URLRequest.addValue(_:forHTTPHeaderField:)(v59, v58);
    if (qword_100501B10 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    v68[40] = sub_1000958E4(v60, qword_10051B4E0);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v75[0] = v64;
      *v63 = 136315138;
      v65 = sub_1002FFA0C(v49, v51, v75);

      *(v63 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v61, v62, "Making recovery request to URL %s", v63, 0xCu);
      sub_1000752F4(v64);
    }

    else
    {
    }

    if (qword_100501B18 != -1)
    {
      swift_once();
    }

    v66 = swift_task_alloc();
    v68[41] = v66;
    *v66 = v68;
    v66[1] = sub_1001F8CA0;
    v67 = v68[37];

    return sub_1001F52B8(v67, 1);
  }

  return result;
}

uint64_t sub_1001F8CA0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *v3;
  v5 = *(*v3 + 328);
  v7 = *v3;
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;
  *(v4 + 368) = a3;

  return _swift_task_switch(sub_1001F8DA4, 0, 0);
}

uint64_t sub_1001F8DA4()
{
  v32 = v0;
  v1 = *(v0 + 368);
  if ((v1 & 0x100) != 0)
  {
    v7 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 320);
    sub_10015CCB4(v7, v6, *(v0 + 368));
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_1001F9354(v7, v6, v1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 336);
      v11 = *(v0 + 344);
      v13 = *(v0 + 368);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      v16 = sub_100157174(v12, v11, v13);
      v18 = sub_1002FFA0C(v16, v17, &v31);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Recovery task failed : %s", v14, 0xCu);
      sub_1000752F4(v15);
    }

    v19 = *(v0 + 336);
    v20 = *(v0 + 344);
    v22 = *(v0 + 304);
    v21 = *(v0 + 312);
    v23 = *(v0 + 288);
    v30 = *(v0 + 296);
    v24 = *(v0 + 280);
    v25 = *(v0 + 368);
    sub_1001F71A8(v19, v20, v25);
    sub_10018C6D8();
    swift_allocError();
    *v26 = 18;
    swift_willThrow();
    sub_1001F9354(v19, v20, v25, 1);
    sub_10006A178(v22, v21);
    (*(v23 + 8))(v30, v24);
    v27 = *(v0 + 296);
    v28 = *(v0 + 272);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 352) = v2;
    *v2 = v0;
    v2[1] = sub_1001F9048;
    v4 = *(v0 + 336);
    v3 = *(v0 + 344);

    return sub_1001F73A0(v4, v3);
  }
}

uint64_t sub_1001F9048()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1001F9218;
  }

  else
  {
    v3 = sub_1001F915C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001F915C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  sub_1001F9354(*(v0 + 336), *(v0 + 344), *(v0 + 368), 0);
  sub_10006A178(v1, v2);
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001F9218()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  sub_1001F9354(*(v0 + 336), *(v0 + 344), *(v0 + 368), 0);
  sub_10006A178(v1, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 360);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1001F92D8()
{
  result = qword_100507168;
  if (!qword_100507168)
  {
    sub_1000692D8(&qword_100502600, &unk_100417140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507168);
  }

  return result;
}

uint64_t sub_1001F9354(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_10015CCF0(a1, a2, a3);
  }

  else
  {
    return sub_10006A178(a1, a2);
  }
}

uint64_t sub_1001F9374(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SESPeerIdentityData(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001F94B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SESPeerIdentityData(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001F95E8()
{
  type metadata accessor for SESPeerIdentityData(319);
  if (v0 <= 0x3F)
  {
    sub_1001F9688();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001F9688()
{
  if (!qword_100506048)
  {
    type metadata accessor for CreationMetadata(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100506048);
    }
  }
}

unint64_t sub_1001F96E0()
{
  result = qword_100507218;
  if (!qword_100507218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507218);
  }

  return result;
}

uint64_t sub_1001F9734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F9794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F97FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F9844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F98D8()
{
  result = qword_100507228;
  if (!qword_100507228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507228);
  }

  return result;
}

unint64_t sub_1001F9930()
{
  result = qword_100507230;
  if (!qword_100507230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507230);
  }

  return result;
}

unint64_t sub_1001F9988()
{
  result = qword_100507238;
  if (!qword_100507238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507238);
  }

  return result;
}

uint64_t sub_1001F99DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E77656976 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444955556B6C74 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656449637273 && a2 == 0xEB00000000797469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004660D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1001F9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1001FAC28(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1001FAC98(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1001FAC98(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001FAC98(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001F9EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1001FAC28(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1001FAC98(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100068FC4(&unk_100507280, &qword_10040F650);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1001FAC98(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001FAC98(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100068FC4(&unk_100507280, &qword_10040F650);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static SESStartup.scheduleAndRunAllOneTimeTasks()()
{
  sub_100273CE0();
  type metadata accessor for SESOnceOnlyTaskManager();
  return static SESOnceOnlyTaskManager.runAll()();
}

uint64_t static SESStartup.startup()()
{
  v0 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  if (qword_1005019A8 != -1)
  {
    swift_once();
  }

  [qword_10051B2C0 resume];
  sub_1002D9190();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1001F9BE8(0, 0, v3, &unk_10040F628, v5);
}

uint64_t sub_1001FA330()
{
  if (qword_100501CE0 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B768;
  *(v0 + 16) = qword_10051B768;

  return _swift_task_switch(sub_1001FA3C8, v1, 0);
}

uint64_t sub_1001FA3C8()
{
  v1 = *(v0 + 16);
  sub_1002FB184();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001FA568()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100507240);
  sub_1000958E4(v0, qword_100507240);
  return Logger.init(subsystem:category:)();
}

id SESStartup.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1001FA65C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1001FA750;

  return v6(v2 + 32);
}

uint64_t sub_1001FA750()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001FA864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001FA89C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10012E598;

  return sub_1001FA314();
}

void _s10seserviced10SESStartupC29scheduleViennaBackgroundTasksyyFZ_0()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14[-v3];
  if (qword_1005019D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000958E4(v0, qword_100504810);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  UserDefaultBacked.wrappedValue.getter();
  (*(v1 + 8))(v4, v0);
  if (v14[7] == 1)
  {
    if (qword_100501B40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_100507240);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Credentials found on startup, scheduling background tasks.", v9, 2u);
    }

    sub_100273E60();
    sub_10027415C();
  }

  else
  {
    if (qword_100501B40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_100507240);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No credentials found on startup, not scheduling background tasks.", v13, 2u);
    }
  }
}

uint64_t sub_1001FAC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FAC98(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FAD00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10012E598;

  return sub_1001FA65C(a1, v5);
}

uint64_t sub_1001FADB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C288C;

  return sub_1001FA65C(a1, v5);
}

uint64_t sub_1001FAE70()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C288C;

  return sub_1001FA314();
}

uint64_t sub_1001FAF1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001FAF64(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      sub_100069E2C(v11, *(&v11 + 1));
      a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      sub_10006A178(v11, *(&v11 + 1));
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    sub_10006A178(v11, *(&v11 + 1));
  }

  return v4;
}

char *sub_1001FB084(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v15 = *v6;
    sub_100069E2C(v15, *(&v15 + 1));
    a1(&v14, &v15);
    if (v3)
    {
      break;
    }

    sub_10006A178(v15, *(&v15 + 1));
    if (*(&v14 + 1) >> 60 == 15)
    {
      sub_10006A2D0(v14, *(&v14 + 1));
    }

    else
    {
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10012E5A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      v10 = v13;
      if (v9 >= v8 >> 1)
      {
        v11 = sub_10012E5A4((v8 > 1), v9 + 1, 1, v7);
        v10 = v13;
        v7 = v11;
      }

      *(v7 + 2) = v9 + 1;
      *&v7[16 * v9 + 32] = v10;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  sub_10006A178(v15, *(&v15 + 1));

  return v7;
}

char *sub_1001FB1E0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for CredentialType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = *(type metadata accessor for SECCredentialInfo() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = _swiftEmptyArrayStorage;
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_100075768(v9, &qword_100507468, &qword_10040FA20);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_10012FC70(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_10012FC70(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

uint64_t sub_1001FB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return _swift_task_switch(sub_1001FB588, 0, 0);
}

uint64_t sub_1001FB588()
{
  v14 = v0;
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for Logger();
  v0[48] = v2;
  v0[49] = sub_1000958E4(v2, qword_100504230);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[44];
    v5 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1002FFA0C(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting NFCredentialSession for reason: %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[50] = v10;
  v11 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
  *v10 = v0;
  v10[1] = sub_1001FB7A4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 37, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v11);
}

uint64_t sub_1001FB7A4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_10021C270;
  }

  else
  {
    v3 = sub_1001FB8B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FB8B8()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[52] = v1;
  v0[53] = v2;
  [v1 setEventDelegate:0];
  v0[39] = v2;
  v0[40] = v1;
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1001FB9F8;
  v3 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001FDA0C;
  v0[21] = &unk_1004CC0D8;
  v0[22] = v3;
  [v1 requestSETransceiverWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FB9F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_10021C2B4;
  }

  else
  {
    v3 = sub_1001FBB08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FBB08()
{
  v1 = v0[52];
  v2 = v0[42];
  v0[55] = v2;

  if (v2)
  {
    v13 = (v0[46] + *v0[46]);
    v3 = *(v0[46] + 4);
    v4 = swift_task_alloc();
    v0[56] = v4;
    *v4 = v0;
    v4[1] = sub_1001FBDB8;
    v5 = v0[47];
    v6 = v0[43];

    return v13(v6, v2);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v0[48], qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to get transceiver", v10, 2u);
    }

    v11 = v0[52];

    v0[10] = v0;
    v0[11] = sub_1001FBECC;
    v12 = swift_continuation_init();
    v0[33] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10021C240;
    v0[29] = &unk_1004CC100;
    v0[30] = v12;
    [v11 endSessionWithCompletion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1001FBDB8()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_10021C2B8;
  }

  else
  {
    v3 = sub_10021C1F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FBECC()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10021C23C, 0, 0);
}

uint64_t sub_1001FBFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  return _swift_task_switch(sub_1001FBFD0, 0, 0);
}

uint64_t sub_1001FBFD0()
{
  v14 = v0;
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for Logger();
  v0[48] = v2;
  v0[49] = sub_1000958E4(v2, qword_100504230);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[44];
    v5 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1002FFA0C(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting NFCredentialSession for reason: %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[50] = v10;
  v11 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
  *v10 = v0;
  v10[1] = sub_1001FC1EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 37, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v11);
}

uint64_t sub_1001FC1EC()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1001FC300;
  }

  else
  {
    v3 = sub_1001FC4A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FC300()
{
  v19 = v0;
  v1 = v0[51];
  v2 = v0[49];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[51];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[36];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Nearfield error %s while getting NFCredentialSession", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v14 = v0[51];
  sub_10009591C();
  swift_allocError();
  *v15 = 8;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001FC4A4()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[52] = v1;
  v0[53] = v2;
  [v1 setEventDelegate:0];
  v0[40] = v2;
  v0[41] = v1;
  v0[2] = v0;
  v0[7] = v0 + 43;
  v0[3] = sub_1001FC5E4;
  v3 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001FDA0C;
  v0[21] = &unk_1004CBCA0;
  v0[22] = v3;
  [v1 requestSETransceiverWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FC5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_1001FCAB8;
  }

  else
  {
    v3 = sub_1001FC6F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FC6F4()
{
  v1 = v0[52];
  v2 = v0[43];
  v0[55] = v2;

  if (v2)
  {
    v12 = (v0[46] + *v0[46]);
    v3 = *(v0[46] + 4);
    v4 = swift_task_alloc();
    v0[56] = v4;
    *v4 = v0;
    v4[1] = sub_1001FC9A4;
    v5 = v0[47];

    return v12(v0 + 39, v2);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v0[48], qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to get transceiver", v9, 2u);
    }

    v10 = v0[52];

    v0[10] = v0;
    v0[11] = sub_1001FCC58;
    v11 = swift_continuation_init();
    v0[33] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10021C240;
    v0[29] = &unk_1004CBCC8;
    v0[30] = v11;
    [v10 endSessionWithCompletion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1001FC9A4()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_1001FCBC8;
  }

  else
  {
    v3 = sub_1001FCB34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FCAB8()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  swift_willThrow();

  v4 = v0[54];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001FCB34()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 328), v0 + 320, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 312);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1001FCBC8()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 328), v0 + 320, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 456);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FCC58()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1001FCD38, 0, 0);
}

uint64_t sub_1001FCD38()
{
  v2 = v0[52];
  v1 = v0[53];
  sub_10009591C();
  swift_allocError();
  *v3 = 9;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FCDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return _swift_task_switch(sub_1001FCE04, 0, 0);
}

uint64_t sub_1001FCE04()
{
  v14 = v0;
  if (qword_100501970 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for Logger();
  v0[48] = v2;
  v0[49] = sub_1000958E4(v2, qword_100504230);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[44];
    v5 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1002FFA0C(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting NFCredentialSession for reason: %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  v0[50] = v10;
  v11 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
  *v10 = v0;
  v10[1] = sub_1001FD020;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 37, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v11);
}

uint64_t sub_1001FD020()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1001FD134;
  }

  else
  {
    v3 = sub_1001FD2D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FD134()
{
  v19 = v0;
  v1 = v0[51];
  v2 = v0[49];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[51];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[36];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Nearfield error %s while getting NFCredentialSession", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v14 = v0[51];
  sub_10009591C();
  swift_allocError();
  *v15 = 8;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001FD2D8()
{
  v1 = v0[37];
  v2 = v0[38];
  v0[52] = v1;
  v0[53] = v2;
  [v1 setEventDelegate:0];
  v0[39] = v2;
  v0[40] = v1;
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_1001FD418;
  v3 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001FDA0C;
  v0[21] = &unk_1004CBF20;
  v0[22] = v3;
  [v1 requestSETransceiverWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FD418()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_1001FCAB8;
  }

  else
  {
    v3 = sub_1001FD528;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FD528()
{
  v1 = v0[52];
  v2 = v0[42];
  v0[55] = v2;

  if (v2)
  {
    v13 = (v0[46] + *v0[46]);
    v3 = *(v0[46] + 4);
    v4 = swift_task_alloc();
    v0[56] = v4;
    *v4 = v0;
    v4[1] = sub_1001FD7D8;
    v5 = v0[47];
    v6 = v0[43];

    return v13(v6, v2);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    sub_1000958E4(v0[48], qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to get transceiver", v10, 2u);
    }

    v11 = v0[52];

    v0[10] = v0;
    v0[11] = sub_1001FCC58;
    v12 = swift_continuation_init();
    v0[33] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_10021C240;
    v0[29] = &unk_1004CBF48;
    v0[30] = v12;
    [v11 endSessionWithCompletion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1001FD7D8()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_1001FD97C;
  }

  else
  {
    v3 = sub_1001FD8EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FD8EC()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 320), v0 + 312, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001FD97C()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  sub_100126B60(*(v0 + 440), (v0 + 320), v0 + 312, *(v0 + 352), *(v0 + 360));

  swift_unknownObjectRelease();
  v3 = *(v0 + 456);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FDA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    swift_unknownObjectRetain();

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001FDAE0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001FDBAC, 0, 0);
}

uint64_t sub_1001FDBAC()
{
  v133 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = type metadata accessor for Logger();
  *(v0 + 112) = sub_1000958E4(v3, qword_10051B2C8);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v127 = *(v0 + 80);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = UUID.uuidString.getter();
    v15 = sub_1002FFA0C(v13, v14, v132);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v9 + 8))(v8, v127);
    v19 = sub_1002FFA0C(v16, v18, v132);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session %s: Getting NFCredentialSessionHandle for credential %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 72);
  v21 = &v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v23 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v22 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v25 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16];
  v24 = *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  v26 = v24;
  if (!(v24 >> 62))
  {
    goto LABEL_8;
  }

  if (v24 >> 62 == 1)
  {
    v26 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_8:
    if (v22)
    {
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = *(v0 + 64);
      sub_100218E94(*&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState], *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8], *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16], v24);
      v126 = v22;
      v32 = v22;
      v33 = v25;
      v123 = v32;
      CredentialInternal.identifier.getter();
      CredentialInternal.identifier.getter();
      v34 = static UUID.== infix(_:_:)();
      v35 = *(v29 + 8);
      v35(v28, v30);
      v122 = v35;
      v35(v27, v30);
      v128 = v33;
      v36 = v33;
      v37 = v26;
      if (v34)
      {
        v38 = *(v0 + 64);
        v39 = v123;
        v40 = v23;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = *(v0 + 104);
          v124 = *(v0 + 80);
          v129 = v42;
          v44 = *(v0 + 64);
          v45 = swift_slowAlloc();
          v132[0] = swift_slowAlloc();
          *v45 = 136315394;
          CredentialInternal.identifier.getter();
          v46 = UUID.uuidString.getter();
          v48 = v47;
          v122(v43, v124);
          v49 = sub_1002FFA0C(v46, v48, v132);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v50 = v37;
          v51 = UUID.uuidString.getter();
          v53 = sub_1002FFA0C(v51, v52, v132);

          *(v45 + 14) = v53;
          _os_log_impl(&_mh_execute_header, v41, v129, "Returning existing NFCredentialSessionHandle for credential %s with assertion %s", v45, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v50 = v37;
        }

        v107 = v126;
        v106 = v128;
      }

      else
      {
        v66 = *(v0 + 64);
        v67 = *(v0 + 72);
        v68 = v66;
        v69 = v123;
        v70 = v23;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();

        v130 = v70;
        if (os_log_type_enabled(v71, v72))
        {
          v125 = v69;
          v73 = *(v0 + 104);
          v74 = *(v0 + 72);
          v120 = *(v0 + 64);
          v121 = *(v0 + 80);
          v75 = swift_slowAlloc();
          v132[0] = swift_slowAlloc();
          *v75 = 136315650;
          v76 = UUID.uuidString.getter();
          v78 = sub_1002FFA0C(v76, v77, v132);

          *(v75 + 4) = v78;
          *(v75 + 12) = 2080;
          CredentialInternal.identifier.getter();
          v79 = UUID.uuidString.getter();
          v81 = v80;
          v122(v73, v121);
          v82 = sub_1002FFA0C(v79, v81, v132);

          *(v75 + 14) = v82;
          *(v75 + 22) = 2080;
          v50 = v37;
          v83 = UUID.uuidString.getter();
          v85 = sub_1002FFA0C(v83, v84, v132);

          *(v75 + 24) = v85;
          v69 = v125;
          _os_log_impl(&_mh_execute_header, v71, v72, "Session %s: Returning a new NFCredentialSessionHandle for credential %s, handing over assertion %s", v75, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v50 = v37;
        }

        v107 = v126;
        v106 = v128;
        v108 = *(v0 + 64);

        v40 = *(v0 + 64);
      }

      v110 = *(v0 + 96);
      v109 = *(v0 + 104);

      v111 = *(v0 + 8);

      return v111(v40, v107, v106, v50);
    }

    sub_100218E94(*&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState], 0, *&v20[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16], v24);
    v20 = *(v0 + 72);
    goto LABEL_24;
  }

  if (v24 == 0x8000000000000000 && (v25 | v22 | v23) == 0)
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
LABEL_24:
    *(v0 + 128) = v25;
    *(v0 + 136) = v26;
    *(v0 + 120) = v23;
    v86 = *(v0 + 64);
    v87 = v20;
    v88 = v86;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = *(v0 + 104);
      v92 = *(v0 + 88);
      v131 = *(v0 + 80);
      v94 = *(v0 + 64);
      v93 = *(v0 + 72);
      v95 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v95 = 136315394;
      v96 = UUID.uuidString.getter();
      v98 = sub_1002FFA0C(v96, v97, v132);

      *(v95 + 4) = v98;
      *(v95 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v99 = UUID.uuidString.getter();
      v101 = v100;
      (*(v92 + 8))(v91, v131);
      v102 = sub_1002FFA0C(v99, v101, v132);

      *(v95 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v89, v90, "Session %s: No current NFCredentialSessionHandle, starting a new one for credential %s", v95, 0x16u);
      swift_arrayDestroy();
    }

    *(v0 + 144) = *(*(v0 + 72) + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
    v103 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v104 = swift_task_alloc();
    *(v0 + 152) = v104;
    v105 = sub_100068FC4(&qword_1005073D8, &unk_10040F8E8);
    *v104 = v0;
    v104[1] = sub_1001FE734;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0xD000000000000031, 0x8000000100467B80, sub_100126CD8, 0, v105);
  }

  v55 = v20;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 72);
    v59 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v59 = 136315394;
    v60 = UUID.uuidString.getter();
    v62 = sub_1002FFA0C(v60, v61, v132);

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    v63 = *(v21 + 3);
    if (v63 >> 62)
    {
      if (v63 >> 62 == 1)
      {
        v64 = 0xE500000000000000;
        v65 = 0x6465726957;
      }

      else
      {
        v112 = (*(v21 + 2) | *v21 | *(v21 + 1)) == 0;
        v113 = v63 == 0x8000000000000000;
        if (v113 && v112)
        {
          v65 = 0x656D6567616E614DLL;
        }

        else
        {
          v65 = 0x64696C61766E49;
        }

        if (v113 && v112)
        {
          v64 = 0xEA0000000000746ELL;
        }

        else
        {
          v64 = 0xE700000000000000;
        }
      }
    }

    else
    {
      v64 = 0xED00006E6F697461;
      v65 = 0x6C756D4564726143;
    }

    v114 = sub_1002FFA0C(v65, v64, v132);

    *(v59 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v56, v57, "Session %s: getNFCredentialSessionHandle: Unexpected state %s, expected not Invalid", v59, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v115 = 10;
  swift_willThrow();
  v117 = *(v0 + 96);
  v116 = *(v0 + 104);

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_1001FE734()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1001FE848;
  }

  else
  {
    v3 = sub_1001FE8C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FE848()
{
  sub_10021A930(*(v0 + 120), 0, *(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 160);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001FE8C4()
{
  v28 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  [v2 setEventDelegate:v1];
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_10050A868;

  os_unfair_lock_lock(v4 + 6);
  v5 = *&v4[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v4 + 6);

  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = v6;

    if (v6)
    {
      v8 = *(v0 + 112);
      v9 = *(v0 + 72);
      v10 = v7;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 72);
        v14 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v14 = 136315394;
        v15 = UUID.uuidString.getter();
        v17 = sub_1002FFA0C(v15, v16, &v27);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = UUID.uuidString.getter();
        v20 = sub_1002FFA0C(v18, v19, &v27);

        *(v14 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v11, v12, "Session %s: Relinquishing existing presentment intent assertion with identifier %s", v14, 0x16u);
        swift_arrayDestroy();
      }

      v21 = off_10050A868;

      os_unfair_lock_lock(v21 + 6);
      v22 = *&v21[4]._os_unfair_lock_opaque;

      os_unfair_lock_unlock(v21 + 6);

      if (v22)
      {
        sub_100307B18(0, 0);
      }
    }
  }

  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  v25 = type metadata accessor for SECPresentmentIntentAssertion();
  *v24 = v0;
  v24[1] = sub_1001FEBF0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000011, 0x8000000100467C00, sub_100217650, 0, v25);
}

uint64_t sub_1001FEBF0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1001FEF20;
  }

  else
  {
    v3 = sub_1001FED04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FED04()
{
  v30 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 120);
  if (v7)
  {
    v11 = *(v0 + 72);
    v28 = *(v0 + 136);
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = UUID.uuidString.getter();
    v15 = sub_1002FFA0C(v13, v14, &v29);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = UUID.uuidString.getter();
    v18 = sub_1002FFA0C(v16, v17, &v29);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session %s: Starting new assertion with identifier %s", v12, 0x16u);
    swift_arrayDestroy();

    v19 = v10;
    v20 = v9;
    v8 = v28;
  }

  else
  {
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
  }

  sub_10021A930(v19, 0, v20, v8);

  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v25 = *(v0 + 64);

  v26 = *(v0 + 8);

  return v26(v25, v21, v22, v4);
}

uint64_t sub_1001FEF20()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_10021A930(*(v0 + 120), 0, *(v0 + 128), *(v0 + 136));

  v3 = *(v0 + 192);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1001FEFA8(void *a1, void *a2, void *a3, unint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v10 = a4 & 0xC000000000000000;
  v11 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v12 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v14 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16];
  v13 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_100218E94(a1, a2, a3, a4);
  sub_100218FD8(v11, v12, v14, v13);
  if (v13 >> 62 != 1 || v10 == 0x4000000000000000)
  {

    sub_100218FD8(a1, a2, a3, a4);
  }

  else
  {
    v16 = &v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
    v17 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112];
    v52 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96];
    v53 = v17;
    v54 = v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128];
    v18 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48];
    v48 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32];
    v49 = v18;
    v19 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80];
    v50 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64];
    v51 = v19;
    v20 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16];
    v46 = *&v4[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
    v47 = v20;
    if (v54 > 1u)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000958E4(v33, qword_10051B2C8);
      v34 = v4;
      v32 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *atoken.val = v37;
        *v36 = 136315138;
        v38 = *v16;
        v39 = *(v16 + 1);

        v40 = sub_1002FFA0C(v38, v39, &atoken);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v32, v35, "Client %s pid not found, unable to stop background assertion timers", v36, 0xCu);
        sub_1000752F4(v37);
      }

      goto LABEL_22;
    }

    v21 = *(v16 + 7);
    *v45.val = *(v16 + 6);
    *&v45.val[4] = v21;
    v44[0] = v47;
    v44[1] = v48;
    v44[2] = v49;
    v44[3] = v50;
    v44[4] = v51;
    v44[5] = *v45.val;
    v44[6] = v21;
    sub_10012E344(&v46, &atoken);
    sub_10012E3F4(&v47, &atoken);
    atoken = v45;
    v22 = audit_token_to_pid(&atoken);
    sub_10012E450(v44);
    sub_10012E3A0(&v46);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000958E4(v23, qword_10051B2C8);
    v24 = v4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *atoken.val = v28;
      *v27 = 136315138;
      v41 = *v16;
      v42 = v22;
      v29 = *(v16 + 1);

      v30 = sub_1002FFA0C(v41, v29, &atoken);
      v22 = v42;

      *(v27 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "Client %s switched away from Wired mode, stopping any active background assertion timers", v27, 0xCu);
      sub_1000752F4(v28);
    }

    if (qword_1005019A8 != -1)
    {
      swift_once();
    }

    v31 = *(qword_10051B2C0 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
    if (v31)
    {
      v32 = v31;
      sub_1001C9D2C(v22);
LABEL_22:
      sub_100218FD8(a1, a2, a3, a4);

      return;
    }

    sub_100218FD8(a1, a2, a3, a4);
  }
}

uint64_t sub_1001FF418@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  v30 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128);
  v4 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96);
  v27 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80);
  v28 = v4;
  v29 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112);
  v5 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32);
  v23 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16);
  v24 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64);
  v25 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48);
  v26 = v6;
  if (v30 >= 2u)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_10051B2C8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No client application for non-privileged session", v14, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v15 = 6;
    return swift_willThrow();
  }

  else
  {
    v7 = v27;
    v18 = v25;
    v19 = v26;
    v16 = v23;
    v17 = v24;
    v8 = *(v3 + 112);
    v21 = *(v3 + 96);
    v22 = v8;
    result = sub_10012E3F4(&v23, v20);
    *a1 = v16;
    a1[1] = v17;
    a1[2] = v18;
    a1[3] = v19;
    a1[4] = v7;
    v10 = v22;
    a1[5] = v21;
    a1[6] = v10;
  }

  return result;
}

uint64_t sub_1001FF5CC()
{
  v1[27] = v0;
  v2 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for DispatchTime();
  v1[29] = v3;
  v4 = *(v3 - 8);
  v1[30] = v4;
  v5 = *(v4 + 64) + 15;
  v1[31] = swift_task_alloc();
  v6 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v1[32] = v6;
  v7 = *(v6 - 8);
  v1[33] = v7;
  v8 = *(v7 + 64) + 15;
  v1[34] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v1[35] = v9;
  v10 = *(v9 - 8);
  v1[36] = v10;
  v11 = *(v10 + 64) + 15;
  v1[37] = swift_task_alloc();

  return _swift_task_switch(sub_1001FF77C, 0, 0);
}

uint64_t sub_1001FF77C()
{
  v78 = v0;
  v1 = v0[27];
  v2 = &v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v3 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v4 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v0[38] = v4;
  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = v5;
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      if (v5 != 0x8000000000000000 || (v6 | v4 | v3) != 0)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
          v1 = v0[27];
        }

        v34 = type metadata accessor for Logger();
        sub_1000958E4(v34, qword_10051B2C8);
        v35 = v1;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = v0[27];
          v39 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v39 = 136315394;
          v40 = UUID.uuidString.getter();
          v42 = sub_1002FFA0C(v40, v41, &v77);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2080;
          v43 = *(v2 + 3);
          if (v43 >> 62)
          {
            if (v43 >> 62 == 1)
            {
              v44 = 0xE500000000000000;
              v45 = 0x6465726957;
            }

            else
            {
              v63 = (*(v2 + 2) | *v2 | *(v2 + 1)) == 0;
              v64 = v43 == 0x8000000000000000;
              if (v64 && v63)
              {
                v45 = 0x656D6567616E614DLL;
              }

              else
              {
                v45 = 0x64696C61766E49;
              }

              if (v64 && v63)
              {
                v44 = 0xEA0000000000746ELL;
              }

              else
              {
                v44 = 0xE700000000000000;
              }
            }
          }

          else
          {
            v44 = 0xED00006E6F697461;
            v45 = 0x6C756D4564726143;
          }

          v65 = sub_1002FFA0C(v45, v44, &v77);

          *(v39 + 14) = v65;
          _os_log_impl(&_mh_execute_header, v36, v37, "Session %s: Unexpected state %s while invalidating NFCredentialSessionHandle, expected not Invalid", v39, 0x16u);
          swift_arrayDestroy();
        }
      }

      goto LABEL_39;
    }

    v7 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
  }

  sub_100218E94(v3, v4, *(v2 + 2), v5);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v8 = v0[27];
  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_10051B2C8);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v14 = v4;
  v15 = v11;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v76 = v13;
    v19 = v0[36];
    v18 = v0[37];
    v72 = v0[35];
    v73 = v15;
    v20 = v0[27];
    v74 = v10;
    v21 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = UUID.uuidString.getter();
    v75 = v14;
    v24 = sub_1002FFA0C(v22, v23, &v77);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v19 + 8))(v18, v72);
    v13 = v76;
    v28 = sub_1002FFA0C(v25, v27, &v77);
    v14 = v75;

    *(v21 + 14) = v28;
    v15 = v73;
    _os_log_impl(&_mh_execute_header, v16, v17, "Session %s: Invalidating NFCredentialSessionHandle for credential %s", v21, 0x16u);
    swift_arrayDestroy();

    v10 = v74;
  }

  if (v4)
  {
    if (qword_100501D50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v29 = off_10050A868;

    os_unfair_lock_lock(v29 + 6);
    v30 = *&v29[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v29 + 6);

    if (v30)
    {
      sub_100307B18(0, 0);
    }

    [v14 setEventDelegate:0];
    v0[2] = v0;
    v0[3] = sub_1001FFFC8;
    v31 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10021C240;
    v0[13] = &unk_1004CBE08;
    v0[14] = v31;
    [v14 endSessionWithCompletion:v0 + 10];
    v32 = (v0 + 2);

    return _swift_continuation_await(v32);
  }

  v47 = v0[32];
  v46 = v0[33];
  v48 = v0[27];
  v49 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v46 + 48))(v48 + v49, 1, v47))
  {
    v51 = v0[30];
    v50 = v0[31];
    v52 = v0[29];
    sub_10012DFF8(v48 + v49, v0[34]);
    static DispatchTime.now()();
    v53 = DispatchTime.uptimeNanoseconds.getter();
    (*(v51 + 8))(v50, v52);
    v32 = DispatchTime.uptimeNanoseconds.getter();
    if (v53 < v32)
    {
      __break(1u);
      return _swift_continuation_await(v32);
    }

    v54 = v0[34];
    v55 = v54 + *(v0[32] + 24);
    v56 = *(v55 + 8);
    (*v55)((v53 - v32) / 0x3B9ACA00);
    sub_100218F50(v54);
  }

  v57 = v0[32];
  v58 = v0[33];
  v59 = v0[28];
  v60 = *(v0[27] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = 4;
  *(v59 + *(v57 + 20)) = 4;
  v62 = (v59 + *(v57 + 24));
  *v62 = sub_10012E59C;
  v62[1] = v61;
  (*(v58 + 56))(v59, 0, 1, v57);
  swift_beginAccess();
  sub_100147EA4(v59, v48 + v49, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
LABEL_39:
  v66 = v0[37];
  v67 = v0[34];
  v68 = v0[31];
  v69 = v0[28];

  v70 = v0[1];

  return v70();
}

uint64_t sub_1001FFFC8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1002000A8, 0, 0);
}

unint64_t sub_1002000A8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 216);
  v4 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = *(v0 + 232);
    sub_10012DFF8(v3 + v4, *(v0 + 272));
    static DispatchTime.now()();
    v8 = DispatchTime.uptimeNanoseconds.getter();
    (*(v6 + 8))(v5, v7);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v8 < result)
    {
      __break(1u);
      return result;
    }

    v10 = *(v0 + 272);
    v11 = v10 + *(*(v0 + 256) + 24);
    v12 = *(v11 + 8);
    (*v11)((v8 - result) / 0x3B9ACA00);
    sub_100218F50(v10);
  }

  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 224);
  v16 = *(*(v0 + 216) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 4;
  *(v15 + *(v13 + 20)) = 4;
  v18 = (v15 + *(v13 + 24));
  *v18 = sub_10012E59C;
  v18[1] = v17;
  (*(v14 + 56))(v15, 0, 1, v13);
  swift_beginAccess();
  sub_100147EA4(v15, v3 + v4, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
  v19 = *(v0 + 296);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  v22 = *(v0 + 224);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002002FC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002003EC, 0, 0);
}

uint64_t sub_1002003EC()
{
  v34 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  UserDefaultBacked.wrappedValue.getter();
  LOBYTE(v1) = *(v0 + 272);
  swift_endAccess();
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    v4 = *(v3 + 32);
    *(v0 + 274) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -(-1 << v4));
    }

    v7 = v5 & *(v3 + 56);
    *(v0 + 192) = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionIdentifier;

    if (v7)
    {
      v9 = 0;
LABEL_12:
      *(v0 + 200) = v7;
      *(v0 + 208) = v9;
      v20 = *(v0 + 80);
      v21 = *(v0 + 88);
      v22 = *(v0 + 56);
      v23 = *(v8 + 48) + *(v2 + 72) * (__clz(__rbit64(v7)) | (v9 << 6));
      v24 = *(v2 + 16);
      *(v0 + 216) = v24;
      *(v0 + 224) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v24(v21, v23, v22);
      (*(v2 + 32))(v20, v21, v22);
      if (qword_100501C90 != -1)
      {
        swift_once();
      }

      v25 = swift_task_alloc();
      *(v0 + 232) = v25;
      *v25 = v0;
      v25[1] = sub_100200E9C;
      v26 = *(v0 + 80);

      return sub_1002E7C64(v26);
    }

    else
    {
      v19 = 0;
      while (((63 - v6) >> 6) - 1 != v19)
      {
        v9 = v19 + 1;
        v7 = *(v8 + 8 * v19++ + 64);
        if (v7)
        {
          goto LABEL_12;
        }
      }

      v27 = *(v0 + 96);
      v28 = *(v0 + 104);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = *(v0 + 72);

      v32 = *(v0 + 8);

      return v32();
    }
  }

  else
  {
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    _StringGuts.grow(_:)(35);

    strcpy(v33, "Admin session ");
    HIBYTE(v33[1]) = -18;
    v12._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v12);

    v13._object = 0x8000000100467D00;
    v13._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v13);
    v14 = v33[0];
    v15 = v33[1];
    *(v0 + 112) = v33[1];
    v16 = swift_allocObject();
    *(v0 + 120) = v16;
    *(v16 + 16) = v10;

    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    v17[1] = sub_1002007E0;

    return sub_1001FB560(sub_1001FB560, v14, v15, &unk_10040FA58, v16);
  }
}

uint64_t sub_1002007E0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1002016E0;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);

    v4 = sub_100200904;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100200904()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v2 + 32);
  *(v0 + 273) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 56);
  *(v0 + 144) = *(v0 + 136);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 152) = v6;
    *(v0 + 160) = v8;
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = *(v0 + 56);
    (*(v1 + 16))(v11, *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), v12);
    (*(v1 + 32))(v10, v11, v12);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v13 = qword_10051B858;
    *(v0 + 168) = qword_10051B858;

    return _swift_task_switch(sub_100200AF8, v13, 0);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100200AF8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_10035E904();
  if (v2)
  {
    v0[23] = v2;
    v8 = sub_100200DD8;
  }

  else
  {
    v4 = v3;
    v5 = v0[21];
    v6 = v0[12];
    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[22] = 0;

    v8 = sub_100200BE8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100200BE8()
{
  (*(*(v0 + 64) + 8))(*(v0 + 96), *(v0 + 56));
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  *(v0 + 144) = *(v0 + 176);
  v3 = (v2 - 1) & v2;
  if (v3)
  {
    v4 = *(v0 + 40);
LABEL_7:
    *(v0 + 152) = v3;
    *(v0 + 160) = v1;
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    (*(v9 + 16))(v7, *(v4 + 48) + *(v9 + 72) * (__clz(__rbit64(v3)) | (v1 << 6)), v8);
    (*(v9 + 32))(v6, v7, v8);
    if (qword_100501DC8 != -1)
    {
LABEL_15:
      swift_once();
    }

    v10 = qword_10051B858;
    *(v0 + 168) = qword_10051B858;

    return _swift_task_switch(sub_100200AF8, v10, 0);
  }

  else
  {
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v5 >= (((1 << *(v0 + 273)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 40);
      v3 = *(v4 + 8 * v5 + 56);
      ++v1;
      if (v3)
      {
        v1 = v5;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);
    v16 = *(v0 + 40);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100200DD8()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];

  (*(v3 + 8))(v1, v2);
  v5 = v0[23];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100200E9C()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10020161C;
  }

  else
  {
    v3 = sub_100200FB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100200FB0()
{
  v31 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2C8);
  v2(v3, v4, v5);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[24];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[6];
    v29 = v0[7];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = UUID.uuidString.getter();
    v18 = sub_1002FFA0C(v16, v17, &v30);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v12, v29);
    v23 = sub_1002FFA0C(v19, v21, &v30);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Successfully deleted credential %s with SHIM", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];

    v22 = *(v25 + 8);
    v22(v24, v26);
  }

  v0[31] = v22;
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v27 = qword_10051B858;
  v0[32] = qword_10051B858;

  return _swift_task_switch(sub_10020123C, v27, 0);
}

uint64_t sub_10020123C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = sub_10035E904();
  if (v2)
  {
    v0[33] = v2;
    v8 = sub_100201554;
  }

  else
  {
    v4 = v3;
    v5 = v0[32];
    v6 = v0[10];
    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v8 = sub_100201328;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100201328()
{
  v1 = *(v0 + 64) + 8;
  (*(v0 + 248))(*(v0 + 80), *(v0 + 56));
  v2 = *(v0 + 208);
  v3 = (*(v0 + 200) - 1) & *(v0 + 200);
  if (v3)
  {
    v4 = *(v0 + 40);
LABEL_7:
    *(v0 + 200) = v3;
    *(v0 + 208) = v2;
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = *(v4 + 48) + *(v9 + 72) * (__clz(__rbit64(v3)) | (v2 << 6));
    v11 = *(v9 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v7, v10, v8);
    (*(v9 + 32))(v6, v7, v8);
    if (qword_100501C90 != -1)
    {
LABEL_15:
      swift_once();
    }

    v12 = swift_task_alloc();
    *(v0 + 232) = v12;
    *v12 = v0;
    v12[1] = sub_100200E9C;
    v13 = *(v0 + 80);

    return sub_1002E7C64(v13);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v5 >= (((1 << *(v0 + 274)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 40);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 40);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100201554()
{
  v1 = v0[31];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];

  v1(v2, v3);
  v6 = v0[33];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10020161C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];

  (*(v3 + 8))(v1, v2);
  v5 = v0[30];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002016E0()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

void sub_1002017BC(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void, uint64_t))
{
  v9 = v8;
  if (a1)
  {
    v15 = qword_100501A48;
    v16 = a1;
    if (v15 != -1)
    {
      v33 = v16;
      swift_once();
      v16 = v33;
    }

    v17 = qword_10051B398;
    v18 = v16;
    os_unfair_lock_lock((v17 + 16));
    sub_1001B1178((v17 + 24), v18, a5, a3, v17, a2);
    os_unfair_lock_unlock((v17 + 16));
  }

  if (a4)
  {
    if (qword_100501A48 != -1)
    {
      swift_once();
    }

    sub_1001B0970();
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v20 = a1;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = v20;
      sub_100068FC4(a6, a7);
      v25 = String.init<A>(describing:)();
      v27 = sub_1002FFA0C(v25, v26, &v37);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_1002FFA0C(v28, v29, &v37);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Session %s ended before it started with error %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v31 = *v9;
    if (*v9)
    {
      v32 = *(v9 + 8);
      swift_errorRetain();
      v31(0, a2);

      a8(v31, v32);
    }

    else
    {
    }

    *v9 = 0;
    *(v9 + 8) = 0;
  }
}

uint64_t sub_100201B04(char a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  return a3(v5);
}

uint64_t sub_100201B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000938D4(a3, v24 - v10, &qword_100504250, &qword_10040D610);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100075768(v11, &qword_100504250, &qword_10040D610);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100075768(a3, &qword_100504250, &qword_10040D610);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100075768(a3, &qword_100504250, &qword_10040D610);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

char *sub_100201DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v65 = a8;
  v59 = a7;
  v63 = a5;
  v64 = a6;
  v62 = a4;
  v61 = a3;
  v60 = a2;
  ObjectType = swift_getObjectType();
  v11 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  v14 = &v59 - v13;
  v15 = type metadata accessor for UUID();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = *(v66 + 64);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_credentials] = _swiftEmptyArrayStorage;
  v19 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate;
  *&v9[v20] = [objc_allocWithZone(type metadata accessor for SECUserSession.NearFieldEventDelegate()) init];
  LOBYTE(v72) = 0;
  v75 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v72) = 0;
  v75 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v72) = 0;
  v75 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v72) = 0;
  v75 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v21 = OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy;
  *&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy] = 0;
  v22 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  v23 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  v24 = *(*(v23 - 8) + 56);
  v24(&v9[v22], 1, 1, v23);
  v24(&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent], 1, 1, v23);
  v25 = v59;
  v26 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  sub_100068FC4(&unk_100507490, &qword_10040FA68);
  v27 = swift_allocObject();
  *&v9[v26] = v27;
  v28 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
  v28[128] = *(a1 + 128);
  *(v27 + 20) = 0;
  v29 = *(a1 + 112);
  *(v28 + 6) = *(a1 + 96);
  *(v28 + 7) = v29;
  v30 = *(a1 + 48);
  *(v28 + 2) = *(a1 + 32);
  *(v28 + 3) = v30;
  v31 = *(a1 + 80);
  *(v28 + 4) = *(a1 + 64);
  *(v28 + 5) = v31;
  v32 = *(a1 + 16);
  *v28 = *a1;
  *(v28 + 1) = v32;
  v33 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken];
  v34 = v61;
  *v33 = v60;
  *(v33 + 1) = v34;
  v35 = v63;
  *(v33 + 2) = v62;
  *(v33 + 3) = v35;
  v36 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  *v36 = 0;
  *(v36 + 1) = 0;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0x8000000000000000;
  *&v9[v21] = v65;
  v37 = v64;
  *(v27 + 16) = 0;
  v38 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionManagementDelegate];
  *v38 = v37;
  v38[1] = v25;
  v39 = type metadata accessor for SECNetworkController();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  v43 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v44 = type metadata accessor for SECNetworkConfiguration();
  (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
  *(v42 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v42 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v42 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v42 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v42 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v42 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v45 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_networkController];
  v45[3] = v39;
  v45[4] = &off_1004CFF58;
  *v45 = v42;
  swift_unknownObjectRetain();
  sub_100113B54(v37);
  UUID.init()();
  (*(v66 + 32))(&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionIdentifier], v18, v67);
  _s19SECSessionAnalyticsCMa();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1000915C0(&off_1004C3C08);
  *(v46 + 24) = sub_1000915D4(&off_1004C3C78);
  *(v46 + 32) = 4;
  *&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics] = v46;
  v76.receiver = v9;
  v76.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v76, "init");
  v48 = OBJC_IVAR____TtC10seserviced14SECUserSession__useNetworkShim;
  swift_beginAccess();
  v49 = v69;
  v50 = &v47[v48];
  v51 = v70;
  (*(v69 + 16))(v14, v50, v70);
  v52 = v47;
  UserDefaultBacked.wrappedValue.getter();
  (*(v49 + 8))(v14, v51);
  if (v72 == 1)
  {
    v53 = type metadata accessor for SECNetworkShim();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    v56 = swift_allocObject();
    LOBYTE(v72) = 0;
    v71 = 2;
    UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
    v73 = v53;
    v74 = &off_1004D1178;
    swift_unknownObjectRelease();
    sub_1000B2A4C(v37);
    *&v72 = v56;
    v57 = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
    swift_beginAccess();
    sub_1000752F4(&v52[v57]);
    sub_1000BC104(&v72, &v52[v57]);
    swift_endAccess();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1000B2A4C(v37);
  }

  return v52;
}

uint64_t sub_10020253C()
{
  v1[118] = v0;
  v1[119] = swift_getObjectType();
  v2 = *(*(sub_100068FC4(&qword_100504258, &qword_10040F8A0) - 8) + 64) + 15;
  v1[120] = swift_task_alloc();
  v3 = type metadata accessor for SESFeature.RuntimeFlag();
  v1[121] = v3;
  v4 = *(v3 - 8);
  v1[122] = v4;
  v5 = *(v4 + 64) + 15;
  v1[123] = swift_task_alloc();

  return _swift_task_switch(sub_100202640, 0, 0);
}

uint64_t sub_100202640()
{
  v34 = v0;
  v1 = *(v0 + 944);
  sub_100203EF4();
  if (v2)
  {
    v3 = *(v0 + 944);
    sub_10020422C();
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 944);
    v5 = qword_10051B858;
    *(v0 + 992) = qword_10051B858;
    sub_1001FF418((v0 + 560));
    *(v0 + 1000) = 0;
    *(v0 + 1008) = *(v0 + 560);
    *(v0 + 1016) = *(v0 + 568);

    sub_10012E450(v0 + 560);

    return _swift_task_switch(sub_1002029C0, v5, 0);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 944);
    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 944);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      v14 = (v11 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
      v16 = *(v11 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96);
      v15 = *(v11 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112);
      v17 = *(v11 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80);
      *(v0 + 144) = *(v11 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128);
      *(v0 + 112) = v16;
      *(v0 + 128) = v15;
      *(v0 + 96) = v17;
      v19 = v14[1];
      v18 = v14[2];
      v20 = v14[4];
      *(v0 + 64) = v14[3];
      *(v0 + 80) = v20;
      *(v0 + 32) = v19;
      *(v0 + 48) = v18;
      *(v0 + 16) = *v14;
      v21 = sub_10012E344(v0 + 16, v0 + 288);
      v22 = sub_10013F33C(v21);
      v24 = v23;
      sub_10012E3A0(v0 + 16);
      v25 = sub_1002FFA0C(v22, v24, &v33);

      *(v12 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client %s currently ineligible for launch", v12, 0xCu);
      sub_1000752F4(v13);
    }

    sub_10009591C();
    v26 = swift_allocError();
    *v27 = 27;
    swift_willThrow();
    v28 = *(v0 + 944);
    swift_beginAccess();
    swift_errorRetain();
    sub_1002017BC(v28, v26, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
    swift_endAccess();

    v29 = *(v0 + 984);
    v30 = *(v0 + 960);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1002029C0()
{
  v1 = v0[125];
  v2 = v0[124];
  v0[128] = sub_100362B68(v0[126], v0[127]);
  v0[129] = v1;
  v3 = v0[127];

  if (v1)
  {
    v4 = sub_100203BF0;
  }

  else
  {
    v4 = sub_100202A60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100202A60()
{
  v0[117] = v0[128];
  v1 = swift_allocObject();
  v0[130] = v1;
  *(v1 + 16) = v0 + 117;
  strcpy((v1 + 24), "Session start");
  *(v1 + 38) = -4864;
  v2 = swift_task_alloc();
  v0[131] = v2;
  *v2 = v0;
  v2[1] = sub_100202B78;

  return sub_1001FBFAC(0x206E6F6973736553, 0xED00007472617473, &unk_10040F8B0, v1);
}

uint64_t sub_100202B78()
{
  v2 = *v1;
  v3 = *(*v1 + 1048);
  v4 = *v1;
  *(*v1 + 1056) = v0;

  v5 = *(v2 + 1040);
  if (v0)
  {

    v6 = sub_100203CEC;
  }

  else
  {

    v6 = sub_100202CC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100202CC4()
{
  v68 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 944);
  swift_beginAccess();
  v5 = *(v0 + 936);
  *(v0 + 1064) = v5;
  v6 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v7 = *(v4 + v6);
  *(v4 + v6) = v5;

  (*(v2 + 104))(v1, enum case for SESFeature.RuntimeFlag.viennaGDPR(_:), v3);
  LOBYTE(v5) = static SESFeature.isEnabled(_:)();
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v8 = swift_task_alloc();
    *(v0 + 1072) = v8;
    *v8 = v0;
    v8[1] = sub_100203464;
    v9 = *(v0 + 944);

    return sub_100204974();
  }

  v11 = *(v0 + 944);
  if ((sub_10014891C() & 1) == 0)
  {
    if (qword_1005019D8 == -1)
    {
LABEL_15:
      v38 = *(v0 + 944);
      v39 = type metadata accessor for Logger();
      sub_1000958E4(v39, qword_10051B2C8);
      v40 = v38;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v0 + 944);
        v44 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v44 = 136315394;
        v45 = UUID.uuidString.getter();
        v47 = sub_1002FFA0C(v45, v46, v67);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2080;
        v48 = v43 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
        *(v0 + 152) = *(v43 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
        v49 = *(v48 + 64);
        v51 = *(v48 + 16);
        v50 = *(v48 + 32);
        *(v0 + 200) = *(v48 + 48);
        *(v0 + 216) = v49;
        *(v0 + 168) = v51;
        *(v0 + 184) = v50;
        v53 = *(v48 + 96);
        v52 = *(v48 + 112);
        v54 = *(v48 + 80);
        *(v0 + 280) = *(v48 + 128);
        *(v0 + 248) = v53;
        *(v0 + 264) = v52;
        *(v0 + 232) = v54;
        v55 = sub_10012E344(v0 + 152, v0 + 424);
        v56 = sub_10013F33C(v55);
        v58 = v57;
        sub_10012E3A0(v0 + 152);
        v59 = sub_1002FFA0C(v56, v58, v67);

        *(v44 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v41, v42, "TCC denied session %s for client %s that is not allowed to use SEC", v44, 0x16u);
        swift_arrayDestroy();
      }

      v60 = *(v0 + 1064);
      sub_10009591C();
      v61 = swift_allocError();
      *v62 = 22;
      swift_willThrow();

      v63 = *(v0 + 944);
      swift_beginAccess();
      swift_errorRetain();
      sub_1002017BC(v63, v61, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
      swift_endAccess();

      goto LABEL_18;
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (qword_100501D18 != -1)
  {
    swift_once();
  }

  v12 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000958E4(v12, qword_10050A5B8);
  swift_beginAccess();
  v13 = UserDefaultBacked.wrappedValue.modify();
  if (*v14 == -1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = *(v0 + 944);
  ++*v14;
  v13(v0 + 712, 0);
  swift_endAccess();
  v16 = v15 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionManagementDelegate;
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 8);
  if (*v16)
  {
    v19 = *(v16 + 8);
    v17(*(v0 + 944), 0);
  }

  v20 = *(v0 + 960);
  v21 = *(v0 + 944);
  *v16 = 0;
  *(v16 + 8) = 0;
  swift_endAccess();
  sub_1000B2A4C(v17);
  v22 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics;
  v23 = *(v21 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = 0;
  v25 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  *(v20 + *(v25 + 20)) = 0;
  v26 = (v20 + *(v25 + 24));
  *v26 = sub_10012DF7C;
  v26[1] = v24;
  v27 = *(*(v25 - 8) + 56);
  v27(v20, 0, 1, v25);
  v28 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
  swift_beginAccess();
  sub_100147EA4(v20, v21 + v28, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  v29 = *(v21 + v22);

  static DispatchTime.now()();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = 4;
  *(v20 + *(v25 + 20)) = 4;
  v31 = (v20 + *(v25 + 24));
  *v31 = sub_10012E59C;
  v31[1] = v30;
  v27(v20, 0, 1, v25);
  v32 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  sub_100147EA4(v20, v21 + v32, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 1064);
  v34 = *(v0 + 944);
  v35 = qword_10051B350;
  *(v0 + 696) = *(v0 + 952);
  *(v0 + 704) = &off_1004CBB48;
  *(v0 + 672) = v34;
  v36 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  swift_beginAccess();
  v37 = v34;
  sub_100219254(v0 + 672, v35 + v36);
  swift_endAccess();
  sub_100075768(v0 + 672, &qword_100505218, &qword_10040CA90);

LABEL_18:
  v64 = *(v0 + 984);
  v65 = *(v0 + 960);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_100203464()
{
  v2 = *(*v1 + 1072);
  v5 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = sub_100203DF0;
  }

  else
  {
    v3 = sub_100203578;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100203578()
{
  v59 = v0;
  v1 = *(v0 + 944);
  if (sub_10014891C())
  {
    if (qword_100501D18 != -1)
    {
      swift_once();
    }

    v2 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
    sub_1000958E4(v2, qword_10050A5B8);
    swift_beginAccess();
    v3 = UserDefaultBacked.wrappedValue.modify();
    if (*v4 != -1)
    {
      v5 = *(v0 + 944);
      ++*v4;
      v3(v0 + 712, 0);
      swift_endAccess();
      v6 = v5 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionManagementDelegate;
      swift_beginAccess();
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*v6)
      {
        v9 = *(v6 + 8);
        v7(*(v0 + 944), 0);
      }

      v10 = *(v0 + 960);
      v11 = *(v0 + 944);
      *v6 = 0;
      *(v6 + 8) = 0;
      swift_endAccess();
      sub_1000B2A4C(v7);
      v12 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics;
      v13 = *(v11 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

      static DispatchTime.now()();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      v15 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
      *(v10 + *(v15 + 20)) = 0;
      v16 = (v10 + *(v15 + 24));
      *v16 = sub_10012DF7C;
      v16[1] = v14;
      v17 = *(*(v15 - 8) + 56);
      v17(v10, 0, 1, v15);
      v18 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
      swift_beginAccess();
      sub_100147EA4(v10, v11 + v18, &qword_100504258, &qword_10040F8A0);
      swift_endAccess();
      v19 = *(v11 + v12);

      static DispatchTime.now()();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = 4;
      *(v10 + *(v15 + 20)) = 4;
      v21 = (v10 + *(v15 + 24));
      *v21 = sub_10012E59C;
      v21[1] = v20;
      v17(v10, 0, 1, v15);
      v22 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
      swift_beginAccess();
      sub_100147EA4(v10, v11 + v22, &qword_100504258, &qword_10040F8A0);
      swift_endAccess();
      if (qword_100501A20 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 1064);
      v24 = *(v0 + 944);
      v25 = qword_10051B350;
      *(v0 + 696) = *(v0 + 952);
      *(v0 + 704) = &off_1004CBB48;
      *(v0 + 672) = v24;
      v26 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
      swift_beginAccess();
      v27 = v24;
      sub_100219254(v0 + 672, v25 + v26);
      swift_endAccess();
      sub_100075768(v0 + 672, &qword_100505218, &qword_10040CA90);

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v28 = *(v0 + 944);
  v29 = type metadata accessor for Logger();
  sub_1000958E4(v29, qword_10051B2C8);
  v30 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 944);
    v34 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v34 = 136315394;
    v35 = UUID.uuidString.getter();
    v37 = sub_1002FFA0C(v35, v36, v58);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = v33 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    *(v0 + 152) = *(v33 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
    v39 = *(v38 + 64);
    v41 = *(v38 + 16);
    v40 = *(v38 + 32);
    *(v0 + 200) = *(v38 + 48);
    *(v0 + 216) = v39;
    *(v0 + 168) = v41;
    *(v0 + 184) = v40;
    v43 = *(v38 + 96);
    v42 = *(v38 + 112);
    v44 = *(v38 + 80);
    *(v0 + 280) = *(v38 + 128);
    *(v0 + 248) = v43;
    *(v0 + 264) = v42;
    *(v0 + 232) = v44;
    v45 = sub_10012E344(v0 + 152, v0 + 424);
    v46 = sub_10013F33C(v45);
    v48 = v47;
    sub_10012E3A0(v0 + 152);
    v49 = sub_1002FFA0C(v46, v48, v58);

    *(v34 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v31, v32, "TCC denied session %s for client %s that is not allowed to use SEC", v34, 0x16u);
    swift_arrayDestroy();
  }

  v50 = *(v0 + 1064);
  sub_10009591C();
  v51 = swift_allocError();
  *v52 = 22;
  swift_willThrow();

  v53 = *(v0 + 944);
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v53, v51, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

LABEL_14:
  v54 = *(v0 + 984);
  v55 = *(v0 + 960);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_100203BF0()
{
  v1 = v0[129];
  v2 = v0[118];
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v2, v1, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

  v3 = v0[123];
  v4 = v0[120];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100203CEC()
{
  v1 = v0[117];

  v2 = v0[132];
  v3 = v0[118];
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v3, v2, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

  v4 = v0[123];
  v5 = v0[120];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100203DF0()
{
  v1 = v0[133];

  v2 = v0[135];
  v3 = v0[118];
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v3, v2, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

  v4 = v0[123];
  v5 = v0[120];

  v6 = v0[1];

  return v6();
}

void sub_100203EF4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken];
  v3 = *&v0[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken + 16];
  v45 = *&v0[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken];
  v46 = v3;
  v4 = kTCCServiceSecureElementAccess;
  if (kTCCServiceSecureElementAccess)
  {
    v34 = v45;
    v35 = v46;
    v5 = TCCAccessPreflightWithAuditToken();

    v6 = v5 != 2;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v34 = v11;
      *v10 = 136315138;
      if (v5 == 2)
      {
        v12 = 0x7070417473726966;
      }

      else
      {
        v12 = 0xD000000000000013;
      }

      if (v5 == 2)
      {
        v13 = 0xEE0068636E75614CLL;
      }

      else
      {
        v13 = 0x8000000100467BE0;
      }

      v14 = sub_1002FFA0C(v12, v13, &v34);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting session with domain %s", v10, 0xCu);
      sub_1000752F4(v11);
    }

    v15 = *(v2 + 1);
    v43[0] = *v2;
    v43[1] = v15;
    v44 = 0;
    if ((sub_100306124(v6, v43, 0, 0) & 1) == 0)
    {
      v16 = v1;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136315138;
        v22 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96];
        v21 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112];
        v23 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80];
        v42 = v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128];
        v40 = v22;
        v41 = v21;
        v39 = v23;
        v25 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16];
        v24 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32];
        v26 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64];
        v37 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48];
        v38 = v26;
        v35 = v25;
        v36 = v24;
        v34 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
        v27 = sub_10012E344(&v34, &v32);
        v28 = sub_10013F33C(v27);
        v30 = v29;
        sub_10012E3A0(&v34);
        v31 = sub_1002FFA0C(v28, v30, &v33);

        *(v19 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v17, v18, "Starting session for client %s that is ineligible", v19, 0xCu);
        sub_1000752F4(v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10020422C()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback);
  v4 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback);
  v5 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback + 8);
  *v3 = sub_10021A3E8;
  v3[1] = v2;

  sub_1000B2A4C(v4);

  v6 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10021A3F0;
  *(v8 + 24) = v7;
  v9 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  v10 = *(v6 + v9);
  swift_retain_n();
  os_unfair_lock_lock((v10 + 32));
  sub_10021C1F8((v10 + 16));
  os_unfair_lock_unlock((v10 + 32));

  swift_endAccess();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10021A424;
  *(v12 + 24) = v11;
  v13 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  v14 = *(v6 + v13);
  swift_retain_n();
  os_unfair_lock_lock((v14 + 32));
  sub_10021C1F8((v14 + 16));
  os_unfair_lock_unlock((v14 + 32));

  swift_endAccess();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10021A464;
  *(v16 + 24) = v15;
  v17 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  v18 = *(v6 + v17);
  swift_retain_n();
  os_unfair_lock_lock((v18 + 32));
  sub_10021C1F8((v18 + 16));
  os_unfair_lock_unlock((v18 + 32));

  swift_endAccess();
}

uint64_t sub_100204558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002045FC, 0, 0);
}

uint64_t sub_1002045FC()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100204734;
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  return sub_10032C1CC(v8, v7, v5, v9, v6);
}

uint64_t sub_100204734(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v9 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v6 = sub_1002048EC;
  }

  else
  {
    v7 = *(v4 + 80);
    *(v4 + 104) = a1;
    swift_endAccess();
    sub_100075768(v7, &unk_10050BE80, &unk_10040B360);
    v6 = sub_10020487C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10020487C()
{
  v1 = *(v0 + 80);
  **(v0 + 40) = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002048EC()
{
  v1 = v0[10];
  swift_endAccess();
  sub_100075768(v1, &unk_10050BE80, &unk_10040B360);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_100204994()
{
  v1 = *(v0 + 672);
  sub_1001FF418((v0 + 560));
  *(v0 + 680) = 0;
  *(v0 + 688) = *(v0 + 560);
  *(v0 + 696) = *(v0 + 568);

  sub_10012E450(v0 + 560);
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B858;
  *(v0 + 704) = qword_10051B858;

  return _swift_task_switch(sub_100204AA0, v2, 0);
}

uint64_t sub_100204AA0()
{
  v1 = v0[88];
  v2 = v0[85];
  v0[89] = sub_100137A14(v0[86], v0[87]);
  v0[90] = v2;
  if (v2)
  {
    v3 = sub_100205318;
  }

  else
  {
    v4 = v0[87];

    v3 = sub_100204B40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100204B40()
{
  v55 = v0;
  v1 = *(v0 + 712);
  if (v1)
  {
    if (ApplicationInfoInternal.bundleId.getter() == 0x6E776F6E6B6E55 && v2 == 0xE700000000000000)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v5 = *(v0 + 672);
        v6 = type metadata accessor for Logger();
        sub_1000958E4(v6, qword_10051B2C8);
        v7 = v5;
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = *(v0 + 672);
          v11 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v11 = 136315394;
          v12 = UUID.uuidString.getter();
          v14 = sub_1002FFA0C(v12, v13, &v54);

          *(v11 + 4) = v14;
          *(v11 + 12) = 2080;
          v15 = v10 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
          *(v0 + 16) = *(v10 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
          v16 = *(v15 + 64);
          v18 = *(v15 + 16);
          v17 = *(v15 + 32);
          *(v0 + 64) = *(v15 + 48);
          *(v0 + 80) = v16;
          *(v0 + 32) = v18;
          *(v0 + 48) = v17;
          v20 = *(v15 + 96);
          v19 = *(v15 + 112);
          v21 = *(v15 + 80);
          *(v0 + 144) = *(v15 + 128);
          *(v0 + 112) = v20;
          *(v0 + 128) = v19;
          *(v0 + 96) = v21;
          v22 = sub_10012E344(v0 + 16, v0 + 424);
          v23 = sub_10013F33C(v22);
          v25 = v24;
          sub_10012E3A0(v0 + 16);
          v26 = sub_1002FFA0C(v23, v25, &v54);

          *(v11 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v8, v9, "Session %s, clientInfo %s, subsequent launch detected", v11, 0x16u);
          swift_arrayDestroy();
        }

        v27 = swift_task_alloc();
        *(v0 + 728) = v27;
        *v27 = v0;
        v27[1] = sub_100205048;
        v28 = *(v0 + 672);

        return sub_100219590();
      }
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 672);
  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B2C8);
  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 672);
    v36 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = UUID.uuidString.getter();
    v39 = sub_1002FFA0C(v37, v38, &v54);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = v35 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    *(v0 + 152) = *(v35 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
    v41 = *(v40 + 64);
    v43 = *(v40 + 16);
    v42 = *(v40 + 32);
    *(v0 + 200) = *(v40 + 48);
    *(v0 + 216) = v41;
    *(v0 + 168) = v43;
    *(v0 + 184) = v42;
    v45 = *(v40 + 96);
    v44 = *(v40 + 112);
    v46 = *(v40 + 80);
    *(v0 + 280) = *(v40 + 128);
    *(v0 + 248) = v45;
    *(v0 + 264) = v44;
    *(v0 + 232) = v46;
    v47 = sub_10012E344(v0 + 152, v0 + 288);
    v48 = sub_10013F33C(v47);
    v50 = v49;
    sub_10012E3A0(v0 + 152);
    v51 = sub_1002FFA0C(v48, v50, &v54);

    *(v36 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v33, v34, "Session %s, clientInfo %s, first launch detected", v36, 0x16u);
    swift_arrayDestroy();
  }

  v52 = swift_task_alloc();
  *(v0 + 744) = v52;
  *v52 = v0;
  v52[1] = sub_100205224;
  v53 = *(v0 + 672);

  return sub_100216634();
}

uint64_t sub_100205048()
{
  v2 = *(*v1 + 728);
  v5 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = sub_1002051C0;
  }

  else
  {
    v3 = sub_10020515C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020515C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002051C0()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100205224()
{
  v1 = *(*v0 + 744);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100205318()
{
  v1 = v0[87];

  v2 = v0[90];
  v3 = v0[1];

  return v3();
}

void sub_10020537C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v8)
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = a1;
      swift_unknownObjectRetain();
      v11 = v7;

      sub_1001F9BE8(0, 0, v5, &unk_10040F938, v10);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_10051B2C8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
        _os_log_impl(&_mh_execute_header, v18, v19, "%s: Remote notification proxy is unexpectedly nil", v20, 0xCu);
        sub_1000752F4(v21);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: self is unexpectedly nil", v15, 0xCu);
      sub_1000752F4(v16);
    }
  }
}

uint64_t sub_100205710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return _swift_task_switch(sub_100205734, 0, 0);
}

uint64_t sub_100205734()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = *(v0[18] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(1, 1);

  type metadata accessor for CredentialInternal();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[3] = sub_10020589C;
  v5 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100142A94;
  v0[13] = &unk_1004CBEF8;
  v0[14] = v5;
  [v1 installationCompletedWithCredentials:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10020589C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10020597C, 0, 0);
}

uint64_t sub_10020597C()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002059DC(char a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v8)
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      *(v10 + 48) = a1 & 1;
      swift_unknownObjectRetain();
      v11 = v7;
      sub_1001F9BE8(0, 0, v5, &unk_10040F928, v10);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_10051B2C8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
        _os_log_impl(&_mh_execute_header, v18, v19, "%s: Remote notification proxy is unexpectedly nil", v20, 0xCu);
        sub_1000752F4(v21);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: self is unexpectedly nil", v15, 0xCu);
      sub_1000752F4(v16);
    }
  }
}

uint64_t sub_100205D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 160) = a6;
  *(v6 + 144) = a4;
  *(v6 + 152) = a5;
  return _swift_task_switch(sub_100205D90, 0, 0);
}

uint64_t sub_100205D90()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(*(v0 + 144) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(3, 1);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100205EDC;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100142A94;
  *(v0 + 104) = &unk_1004CBEA8;
  *(v0 + 112) = v4;
  [v2 rfFieldChanged:v1 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100205EDC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100205FBC, 0, 0);
}

void sub_100205FD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v14)
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v14;
      v16[5] = a1;
      v16[6] = a2;
      v16[7] = a3;
      v16[8] = a4;
      swift_unknownObjectRetain();
      sub_100069E2C(a1, a2);
      sub_100069E2C(a3, a4);
      sub_1001F9BE8(0, 0, v11, &unk_10040F918, v16);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000958E4(v22, qword_10051B2C8);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v27);
        _os_log_impl(&_mh_execute_header, v23, v24, "%s: Remote notification proxy is unexpectedly nil", v25, 0xCu);
        sub_1000752F4(v26);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000958E4(v17, qword_10051B2C8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v27);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: self is unexpectedly nil", v20, 0xCu);
      sub_1000752F4(v21);
    }
  }
}

uint64_t sub_100206384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return _swift_task_switch(sub_1002063AC, 0, 0);
}

uint64_t sub_1002063AC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;
  v7 = Data._bridgeToObjectiveC()().super.isa;
  v0[24] = v7;
  v0[2] = v0;
  v0[3] = sub_1002064F8;
  v8 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100142A94;
  v0[13] = &unk_1004CBE58;
  v0[14] = v8;
  [v5 receivedHciDataWithData:isa appletIdentifier:v7 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002064F8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1002065D8, 0, 0);
}

uint64_t sub_1002065D8()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10020663C()
{
  v0 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v6)
    {
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v5;
      v8[5] = v6;
      swift_unknownObjectRetain();
      v9 = v5;
      sub_1001F9BE8(0, 0, v3, &unk_10040F900, v8);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000958E4(v15, qword_10051B2C8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v20);
        _os_log_impl(&_mh_execute_header, v16, v17, "%s: Remote notification proxy is unexpectedly nil", v18, 0xCu);
        sub_1000752F4(v19);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v20);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: self is unexpectedly nil", v13, 0xCu);
      sub_1000752F4(v14);
    }
  }
}

uint64_t sub_1002069C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a5;
  v6 = swift_task_alloc();
  *(v5 + 152) = v6;
  *v6 = v5;
  v6[1] = sub_100206A54;

  return sub_1001FF5CC();
}

uint64_t sub_100206A54()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_100206B50, 0, 0);
}

uint64_t sub_100206B50()
{
  v1 = v0[18];
  sub_10009591C();
  swift_allocError();
  *v2 = 17;
  v3 = _convertErrorToNSError(_:)();
  v0[20] = v3;

  v0[2] = v0;
  v0[3] = sub_100206CAC;
  v4 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100142A94;
  v0[13] = &unk_1004CBDB8;
  v0[14] = v4;
  [v1 sessionErrorEventWithReason:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100206CAC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100206D8C, 0, 0);
}

uint64_t sub_100206D8C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100206DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100206E88;

  return sub_100206FE8(1, 3);
}

uint64_t sub_100206E88()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100206F84, 0, 0);
}

uint64_t sub_100206F84()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100206FE8(char a1, char a2)
{
  *(v3 + 376) = v2;
  *(v3 + 465) = a2;
  *(v3 + 464) = a1;
  v4 = type metadata accessor for DispatchTime();
  *(v3 + 384) = v4;
  v5 = *(v4 - 8);
  *(v3 + 392) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  v7 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa();
  *(v3 + 408) = v7;
  v8 = *(v7 - 8);
  *(v3 + 416) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v3 + 432) = v10;
  v11 = *(v10 - 8);
  *(v3 + 440) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 448) = swift_task_alloc();

  return _swift_task_switch(sub_100207168, 0, 0);
}

uint64_t sub_100207168()
{
  v91 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[47];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v90[0] = v8;
    *v7 = 136315138;
    v9 = UUID.uuidString.getter();
    v11 = sub_1002FFA0C(v9, v10, v90);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "End session %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v12 = v0[47];
  v13 = v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState;
  v14 = *(v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState);
  v15 = *(v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8);
  v0[57] = v15;
  v17 = *(v13 + 16);
  v16 = *(v13 + 24);
  v18 = v16;
  if (!(v16 >> 62))
  {
    goto LABEL_8;
  }

  if (v16 >> 62 == 1)
  {
    v18 = (v16 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_8:
    sub_100218E94(v14, v15, v17, v16);
    v19 = v17;
    v20 = v18;
    v21 = v14;
    v22 = v15;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v88 = v22;
    v89 = v0;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[55];
      v25 = v0[56];
      v86 = v0[54];
      v27 = swift_slowAlloc();
      v87 = v19;
      v28 = swift_slowAlloc();
      v90[0] = v28;
      *v27 = 136315138;
      v85 = v24;
      CredentialInternal.identifier.getter();
      v29 = UUID.uuidString.getter();
      v30 = v21;
      v31 = v20;
      v33 = v32;
      (*(v26 + 8))(v25, v86);
      v34 = sub_1002FFA0C(v29, v33, v90);
      v20 = v31;
      v21 = v30;

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v85, "Invalidating NFCredentialSessionHandle for credential %s", v27, 0xCu);
      sub_1000752F4(v28);
      v19 = v87;
    }

    if (v15)
    {
      v89[2] = v89;
      v89[3] = sub_100207AE4;
      v35 = swift_continuation_init();
      v89[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
      v89[10] = _NSConcreteStackBlock;
      v89[11] = 1107296256;
      v89[12] = sub_10021C240;
      v89[13] = &unk_1004CBB88;
      v89[14] = v35;
      [v88 endSessionWithCompletion:v89 + 10];
      v36 = (v89 + 2);

      return _swift_continuation_await(v36);
    }

    v0 = v89;
    v12 = v89[47];
    goto LABEL_25;
  }

  if (v16 != 0x8000000000000000 || (v17 | v15 | v14) != 0)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to end an invalid session, no-op", v40, 2u);
    }

    goto LABEL_21;
  }

LABEL_25:
  sub_1001FEFA8(8, 0, 0, 0x8000000000000000);
  v46 = *(v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
  v47 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  v0[41] = 0;
  v0[42] = 0;
  v48 = *(v46 + v47);
  *(swift_task_alloc() + 16) = v0 + 41;
  os_unfair_lock_lock((v48 + 32));
  sub_100218F10((v48 + 16));
  os_unfair_lock_unlock((v48 + 32));

  swift_endAccess();
  v49 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  v0[43] = 0;
  v0[44] = 0;
  v50 = *(v46 + v49);
  *(swift_task_alloc() + 16) = v0 + 43;
  os_unfair_lock_lock((v50 + 32));
  sub_100218F10((v50 + 16));
  os_unfair_lock_unlock((v50 + 32));

  swift_endAccess();
  v51 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  v0[45] = 0;
  v0[46] = 0;
  v52 = *(v46 + v51);
  *(swift_task_alloc() + 16) = v0 + 45;
  os_unfair_lock_lock((v52 + 32));
  sub_100218F10((v52 + 16));
  os_unfair_lock_unlock((v52 + 32));

  swift_endAccess();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v53 = v0[51];
  v54 = v0[52];
  v55 = v0[47];
  v56 = qword_10051B350;
  *(v0 + 9) = 0u;
  *(v0 + 10) = 0u;
  v0[22] = 0;
  v57 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  swift_beginAccess();
  sub_100147EA4((v0 + 18), v56 + v57, &qword_100505218, &qword_10040CA90);
  swift_endAccess();
  v58 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  v59 = *(v54 + 48);
  if (!v59(v55 + v58, 1, v53))
  {
    v61 = v0[49];
    v60 = v0[50];
    v62 = v0[48];
    sub_10012DFF8(v55 + v58, v0[53]);
    static DispatchTime.now()();
    v63 = DispatchTime.uptimeNanoseconds.getter();
    (*(v61 + 8))(v60, v62);
    v36 = DispatchTime.uptimeNanoseconds.getter();
    if (v63 < v36)
    {
      __break(1u);
      goto LABEL_38;
    }

    v64 = v0[53];
    v65 = v64 + *(v0[51] + 24);
    v66 = *(v65 + 8);
    (*v65)((v63 - v36) / 0x3B9ACA00);
    sub_100218F50(v64);
  }

  v67 = v0[51];
  v68 = v0[47];
  v69 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
  swift_beginAccess();
  if (!v59(v68 + v69, 1, v67))
  {
    v71 = v0[49];
    v70 = v0[50];
    v72 = v0[48];
    sub_10012DFF8(v68 + v69, v0[53]);
    static DispatchTime.now()();
    v73 = DispatchTime.uptimeNanoseconds.getter();
    (*(v71 + 8))(v70, v72);
    v36 = DispatchTime.uptimeNanoseconds.getter();
    if (v73 >= v36)
    {
      v74 = v0[53];
      v75 = v74 + *(v0[51] + 24);
      v76 = *(v75 + 8);
      (*v75)((v73 - v36) / 0x3B9ACA00);
      sub_100218F50(v74);
      goto LABEL_33;
    }

LABEL_38:
    __break(1u);
    return _swift_continuation_await(v36);
  }

LABEL_33:
  v77 = qword_100501A48;
  v78 = v0[47];
  if (v77 != -1)
  {
    swift_once();
    v78 = v0[47];
  }

  v79 = qword_10051B398;
  v80 = (qword_10051B398 + 16);
  v81 = *(v0 + 465);
  v82 = v78;
  os_unfair_lock_lock(v80);
  sub_1001B1178((v79 + 24), v82, &off_1004CBB58, v81, v79, 0);
  v83 = v0[47];
  v84 = *(v0 + 464);
  os_unfair_lock_unlock(v80);

  if (v84 == 1)
  {
    sub_1001B0970();
  }

LABEL_21:
  v41 = v0[56];
  v42 = v0[53];
  v43 = v0[50];

  v44 = v0[1];

  return v44();
}

uint64_t sub_100207AE4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100207BC4, 0, 0);
}

unint64_t sub_100207BC4()
{
  v1 = *(v0 + 376);
  sub_1001FEFA8(8, 0, 0, 0x8000000000000000);
  v2 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
  v3 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  v4 = *(v2 + v3);
  *(swift_task_alloc() + 16) = v0 + 328;
  os_unfair_lock_lock((v4 + 32));
  sub_100218F10((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));

  swift_endAccess();
  v5 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  v6 = *(v2 + v5);
  *(swift_task_alloc() + 16) = v0 + 344;
  os_unfair_lock_lock((v6 + 32));
  sub_100218F10((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  swift_endAccess();
  v7 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  v8 = *(v2 + v7);
  *(swift_task_alloc() + 16) = v0 + 360;
  os_unfair_lock_lock((v8 + 32));
  sub_100218F10((v8 + 16));
  os_unfair_lock_unlock((v8 + 32));

  swift_endAccess();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 416);
  v11 = *(v0 + 376);
  v12 = qword_10051B350;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  v13 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  swift_beginAccess();
  sub_100147EA4(v0 + 144, v12 + v13, &qword_100505218, &qword_10040CA90);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  v15 = *(v10 + 48);
  if (!v15(v11 + v14, 1, v9))
  {
    v17 = *(v0 + 392);
    v16 = *(v0 + 400);
    v18 = *(v0 + 384);
    sub_10012DFF8(v11 + v14, *(v0 + 424));
    static DispatchTime.now()();
    v19 = DispatchTime.uptimeNanoseconds.getter();
    (*(v17 + 8))(v16, v18);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v19 < result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v21 = *(v0 + 424);
    v22 = v21 + *(*(v0 + 408) + 24);
    v23 = *(v22 + 8);
    (*v22)((v19 - result) / 0x3B9ACA00);
    sub_100218F50(v21);
  }

  v24 = *(v0 + 408);
  v25 = *(v0 + 376);
  v26 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
  swift_beginAccess();
  if (!v15(v25 + v26, 1, v24))
  {
    v28 = *(v0 + 392);
    v27 = *(v0 + 400);
    v29 = *(v0 + 384);
    sub_10012DFF8(v25 + v26, *(v0 + 424));
    static DispatchTime.now()();
    v30 = DispatchTime.uptimeNanoseconds.getter();
    (*(v28 + 8))(v27, v29);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v30 >= result)
    {
      v31 = *(v0 + 424);
      v32 = v31 + *(*(v0 + 408) + 24);
      v33 = *(v32 + 8);
      (*v32)((v30 - result) / 0x3B9ACA00);
      sub_100218F50(v31);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_9:
  v34 = qword_100501A48;
  v35 = *(v0 + 376);
  if (v34 != -1)
  {
    swift_once();
    v35 = *(v0 + 376);
  }

  v36 = qword_10051B398;
  v37 = (qword_10051B398 + 16);
  v38 = *(v0 + 465);
  v39 = v35;
  os_unfair_lock_lock(v37);
  sub_1001B1178((v36 + 24), v39, &off_1004CBB58, v38, v36, 0);
  v40 = *(v0 + 376);
  v41 = *(v0 + 464);
  os_unfair_lock_unlock(v37);

  if (v41 == 1)
  {
    sub_1001B0970();
  }

  v42 = *(v0 + 448);
  v43 = *(v0 + 424);
  v44 = *(v0 + 400);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100208128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for UUID();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for StateInternal();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100208260, 0, 0);
}

uint64_t sub_100208260()
{
  v29 = v0;
  v1 = v0[10];
  v2 = &v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v3 = *&v1[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if (v3 < 0 && (v3 == 0x8000000000000000 ? (v4 = (*(v2 + 1) | *(v2 + 2) | *v2) == 0) : (v4 = 0), v4))
  {
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_1002085F8;
    v14 = v0[10];

    return sub_1002AC7A8();
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v1 = v0[10];
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_1002FFA0C(0xD000000000000022, 0x8000000100467CD0, v28);
      *(v9 + 12) = 2080;
      v10 = *(v2 + 3);
      if (v10 >> 62)
      {
        if (v10 >> 62 == 1)
        {
          v11 = 0xE500000000000000;
          v12 = 0x6465726957;
        }

        else
        {
          v16 = (*(v2 + 2) | *v2 | *(v2 + 1)) == 0;
          v17 = v10 == 0x8000000000000000;
          if (v17 && v16)
          {
            v12 = 0x656D6567616E614DLL;
          }

          else
          {
            v12 = 0x64696C61766E49;
          }

          if (v17 && v16)
          {
            v11 = 0xEA0000000000746ELL;
          }

          else
          {
            v11 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v11 = 0xED00006E6F697461;
        v12 = 0x6C756D4564726143;
      }

      v18 = sub_1002FFA0C(v12, v11, v28);

      *(v9 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s: Unexpected state %s, expected Management", v9, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    v19 = swift_allocError();
    *v20 = 10;
    swift_willThrow();
    v22 = v0[11];
    v21 = v0[12];
    swift_errorRetain();
    v22(0, v19);

    v23 = v0[20];
    v24 = v0[16];
    v25 = v0[17];
    v26 = v0[15];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1002085F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_100209420;
  }

  else
  {
    v5 = sub_10020870C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10020870C()
{
  v1 = *(v0 + 176);
  if (v1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 192) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    *(v0 + 200) = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
    swift_beginAccess();
    v4 = 0;
    *(v0 + 288) = enum case for StateInternal.installationPending(_:);
    while (1)
    {
      *(v0 + 208) = _swiftEmptyArrayStorage;
      v5 = *(v0 + 176);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(v5 + 8 * v4 + 32);
      }

      v7 = v6;
      *(v0 + 216) = v6;
      *(v0 + 224) = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v8 = *(v0 + 288);
      v10 = *(v0 + 152);
      v9 = *(v0 + 160);
      v11 = *(v0 + 144);
      CredentialInternal.state.getter();
      if ((*(v10 + 88))(v9, v11) == v8)
      {
        break;
      }

      v13 = *(v0 + 152);
      v12 = *(v0 + 160);
      v14 = *(v0 + 144);

      (*(v13 + 8))(v12, v14);
      v4 = *(v0 + 224);
      if (v4 == *(v0 + 192))
      {
        goto LABEL_12;
      }
    }

    v20 = *(v0 + 200);
    v21 = *(v0 + 136);
    v22 = *(v0 + 80);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_1000BC094(v22 + v20, v0 + 16);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    sub_1000752B0((v0 + 16), v23);
    CredentialInternal.identifier.getter();
    v25 = *(v24 + 24);
    v35 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_100208B04;
    v28 = *(v0 + 136);

    return v35(v28, v23, v24);
  }

  else
  {
LABEL_12:
    *(v0 + 232) = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (v15)
    {
      v16 = *(*(v0 + 80) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

      sub_10028C478(2, v15);

      v17 = swift_task_alloc();
      *(v0 + 272) = v17;
      *v17 = v0;
      v17[1] = sub_100209234;
      v18 = *(v0 + 80);

      return sub_1002ACCFC(_swiftEmptyArrayStorage);
    }

    else
    {

      v29 = *(v0 + 96);
      (*(v0 + 88))(*(v0 + 176), 0);

      v30 = *(v0 + 160);
      v31 = *(v0 + 128);
      v32 = *(v0 + 136);
      v33 = *(v0 + 120);

      v34 = *(v0 + 8);

      return v34();
    }
  }
}

uint64_t sub_100208B04(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v14 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v6 = *(v4 + 208);
    v7 = *(v4 + 176);
    (*(*(v4 + 112) + 8))(*(v4 + 136), *(v4 + 104));

    v8 = sub_1002094D8;
  }

  else
  {
    v9 = *(v4 + 136);
    v10 = *(v4 + 104);
    v11 = *(v4 + 112);
    *(v4 + 292) = a1;
    v12 = *(v11 + 8);
    *(v4 + 256) = v12;
    *(v4 + 264) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v10);
    v8 = sub_100208C7C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100208C7C()
{
  v61 = v0;
  v1 = *(v0 + 292);
  sub_1000752F4((v0 + 16));
  if (v1 != 2)
  {

    v21 = *(v0 + 208);
    goto LABEL_18;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v2 = *(v0 + 216);
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v58 = *(v0 + 264);
    v8 = *(v0 + 216);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60 = v12;
    *v11 = 136315138;
    CredentialInternal.identifier.getter();
    v13 = UUID.uuidString.getter();
    v15 = v14;
    v7(v9, v10);
    v16 = sub_1002FFA0C(v13, v15, &v60);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Credential %s installation failure", v11, 0xCu);
    sub_1000752F4(v12);
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  v19 = *(v0 + 120);
  CredentialInternal.identifier.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + 208);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_10012FA30(0, v21[2] + 1, 1, *(v0 + 208));
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_10012FA30(v22 > 1, v23 + 1, 1, v21);
  }

  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v26 = *(v0 + 104);

  v21[2] = v23 + 1;
  (*(v25 + 32))(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
  while (1)
  {
LABEL_18:
    v37 = *(v0 + 224);
    if (v37 == *(v0 + 192))
    {
      *(v0 + 232) = v21;
      v38 = v21[2];
      if (v38)
      {
        v39 = *(*(v0 + 80) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

        sub_10028C478(2, v38);

        v40 = swift_task_alloc();
        *(v0 + 272) = v40;
        *v40 = v0;
        v40[1] = sub_100209234;
        v41 = *(v0 + 80);

        return sub_1002ACCFC(v21);
      }

      else
      {

        v43 = *(v0 + 96);
        (*(v0 + 88))(*(v0 + 176), 0);

        v44 = *(v0 + 160);
        v45 = *(v0 + 128);
        v46 = *(v0 + 136);
        v47 = *(v0 + 120);

        v48 = *(v0 + 8);

        return v48();
      }
    }

    *(v0 + 208) = v21;
    v27 = *(v0 + 176);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v28 = *(v27 + 8 * v37 + 32);
    }

    v29 = v28;
    *(v0 + 216) = v28;
    *(v0 + 224) = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v30 = *(v0 + 288);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v33 = *(v0 + 144);
    CredentialInternal.state.getter();
    if ((*(v32 + 88))(v31, v33) == v30)
    {
      break;
    }

    v35 = *(v0 + 152);
    v34 = *(v0 + 160);
    v36 = *(v0 + 144);

    (*(v35 + 8))(v34, v36);
  }

  v49 = *(v0 + 200);
  v50 = *(v0 + 136);
  v51 = *(v0 + 80);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  sub_1000BC094(v51 + v49, v0 + 16);
  v52 = *(v0 + 40);
  v53 = *(v0 + 48);
  sub_1000752B0((v0 + 16), v52);
  CredentialInternal.identifier.getter();
  v54 = *(v53 + 24);
  v59 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 240) = v56;
  *v56 = v0;
  v56[1] = sub_100208B04;
  v57 = *(v0 + 136);

  return v59(v57, v52, v53);
}

uint64_t sub_100209234()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[29];
  if (v0)
  {
    v6 = v2[22];

    v7 = sub_1002095A0;
  }

  else
  {

    v7 = sub_100209378;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100209378()
{
  v1 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 176), 0);

  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100209420()
{
  v1 = v0[23];
  v3 = v0[11];
  v2 = v0[12];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002094D8()
{
  sub_1000752F4((v0 + 16));
  v1 = *(v0 + 248);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  swift_errorRetain();
  v3(0, v1);

  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002095A0()
{
  v1 = v0[35];
  v3 = v0[11];
  v2 = v0[12];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100209694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[153] = v38;
  v8[152] = a8;
  v8[151] = a7;
  v8[150] = a6;
  v8[149] = a5;
  v8[148] = a4;
  v9 = type metadata accessor for SERError();
  v8[154] = v9;
  v10 = *(v9 - 8);
  v8[155] = v10;
  v11 = *(v10 + 64) + 15;
  v8[156] = swift_task_alloc();
  v8[157] = swift_task_alloc();
  v8[158] = swift_task_alloc();
  v12 = *(*(sub_100068FC4(&qword_100504250, &qword_10040D610) - 8) + 64) + 15;
  v8[159] = swift_task_alloc();
  v13 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v8[160] = v13;
  v14 = *(v13 - 8);
  v8[161] = v14;
  v15 = *(v14 + 64) + 15;
  v8[162] = swift_task_alloc();
  v16 = type metadata accessor for SESnapshot.TargetDevice();
  v8[163] = v16;
  v17 = *(v16 - 8);
  v8[164] = v17;
  v18 = *(v17 + 64) + 15;
  v8[165] = swift_task_alloc();
  v19 = type metadata accessor for SERXPCInternalErrors();
  v8[166] = v19;
  v20 = *(v19 - 8);
  v8[167] = v20;
  v21 = *(v20 + 64) + 15;
  v8[168] = swift_task_alloc();
  v22 = sub_100068FC4(&unk_100507420, &qword_10040F9D0);
  v8[169] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v8[170] = swift_task_alloc();
  v24 = type metadata accessor for SECMetadata();
  v8[171] = v24;
  v25 = *(v24 - 8);
  v8[172] = v25;
  v26 = *(v25 + 64) + 15;
  v8[173] = swift_task_alloc();
  v27 = type metadata accessor for SECCredentialConfig();
  v8[174] = v27;
  v28 = *(v27 - 8);
  v8[175] = v28;
  v29 = *(v28 + 64) + 15;
  v8[176] = swift_task_alloc();
  v30 = type metadata accessor for SESFeature.RuntimeFlag();
  v8[177] = v30;
  v31 = *(v30 - 8);
  v8[178] = v31;
  v32 = *(v31 + 64) + 15;
  v8[179] = swift_task_alloc();
  v33 = type metadata accessor for UUID();
  v8[180] = v33;
  v34 = *(v33 - 8);
  v8[181] = v34;
  v35 = *(v34 + 64) + 15;
  v8[182] = swift_task_alloc();
  v8[183] = swift_task_alloc();
  v8[184] = swift_task_alloc();
  v8[185] = swift_task_alloc();
  v8[186] = swift_task_alloc();
  v8[187] = swift_task_alloc();

  return _swift_task_switch(sub_100209AC8, 0, 0);
}

uint64_t sub_100209AC8()
{
  v60 = v0;
  v1 = *(v0 + 1184);
  v2 = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  *(v0 + 1504) = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  v3 = v1 + v2;
  v4 = *(v3 + 80);
  v5 = *(v3 + 96);
  v6 = *(v3 + 112);
  v7 = *(v3 + 128);
  *(v0 + 704) = v7;
  *(v0 + 672) = v5;
  *(v0 + 688) = v6;
  *(v0 + 656) = v4;
  v8 = *(v3 + 16);
  v9 = *(v3 + 32);
  v10 = *(v3 + 64);
  *(v0 + 624) = *(v3 + 48);
  *(v0 + 640) = v10;
  *(v0 + 592) = v8;
  *(v0 + 608) = v9;
  if (v7)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_10051B2C8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Provisioning is not available on non-application clients", v14, 2u);
    }

    v15 = 15;
LABEL_16:
    sub_10009591C();
    v37 = swift_allocError();
    *v38 = v15;
    swift_willThrow();
    v39 = *(v0 + 1224);
    v40 = *(v0 + 1216);
    swift_errorRetain();
    v40(0, v37);

    v41 = *(v0 + 1496);
    v42 = *(v0 + 1488);
    v43 = *(v0 + 1480);
    v44 = *(v0 + 1472);
    v45 = *(v0 + 1464);
    v46 = *(v0 + 1456);
    v47 = *(v0 + 1432);
    v48 = *(v0 + 1408);
    v49 = *(v0 + 1384);
    v50 = *(v0 + 1360);
    v52 = *(v0 + 1344);
    v53 = *(v0 + 1320);
    v54 = *(v0 + 1296);
    v55 = *(v0 + 1272);
    v56 = *(v0 + 1264);
    v57 = *(v0 + 1256);
    v58 = *(v0 + 1248);

    v51 = *(v0 + 8);

    return v51();
  }

  v16 = *(v3 + 16);
  v17 = *(v3 + 48);
  *(v0 + 848) = *(v3 + 32);
  *(v0 + 864) = v17;
  *(v0 + 832) = v16;
  v18 = *(v3 + 64);
  v19 = *(v3 + 80);
  v20 = *(v3 + 112);
  *(v0 + 912) = *(v3 + 96);
  *(v0 + 928) = v20;
  *(v0 + 880) = v18;
  *(v0 + 896) = v19;
  v21 = (v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken);
  v22 = v21[1];
  *(v0 + 148) = *v21;
  *(v0 + 164) = v22;
  *(v0 + 180) = 0;
  sub_10012E3F4(v0 + 592, v0 + 712);
  if ((sub_100306124(2, (v0 + 148), 0, 0) & 1) == 0)
  {
    sub_10021B6B0(v0 + 592);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 1184);
    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B2C8);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 1184);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v59 = v33;
      *v32 = 136315138;
      v34 = UUID.uuidString.getter();
      v36 = sub_1002FFA0C(v34, v35, &v59);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session %s -- Client ineligible to provision credential", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v15 = 27;
    goto LABEL_16;
  }

  v23 = swift_task_alloc();
  *(v0 + 1512) = v23;
  *v23 = v0;
  v23[1] = sub_100209F84;
  v24 = *(v0 + 1184);

  return sub_10020E608(3);
}

uint64_t sub_100209F84(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1512);
  v6 = *v2;
  *(*v2 + 1520) = v1;

  if (v1)
  {
    v7 = sub_10020D590;
  }

  else
  {
    *(v4 + 181) = a1 & 1;
    v7 = sub_10020A0B0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10020A0B0()
{
  v81 = v0;
  if (*(v0 + 181) != 1)
  {
    sub_10021B6B0(v0 + 592);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 1184);
    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B2C8);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 1184);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v80[0] = v32;
      *v31 = 136315138;
      v33 = UUID.uuidString.getter();
      v35 = sub_1002FFA0C(v33, v34, v80);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Session %s Registration failed after max attempts", v31, 0xCu);
      sub_1000752F4(v32);
    }

    v36 = 28;
    goto LABEL_31;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1496);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1184);
  v6 = type metadata accessor for Logger();
  *(v0 + 1528) = sub_1000958E4(v6, qword_10051B2C8);
  v7 = *(v2 + 16);
  *(v0 + 1536) = v7;
  *(v0 + 1544) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v3);
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1496);
  v13 = *(v0 + 1448);
  v14 = *(v0 + 1440);
  if (v11)
  {
    v15 = *(v0 + 1184);
    v16 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = UUID.uuidString.getter();
    v19 = sub_1002FFA0C(v17, v18, v80);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    v23 = *(v13 + 8);
    v23(v12, v14);
    v24 = sub_1002FFA0C(v20, v22, v80);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v10, "Session %s: Creating credential with configUUID %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v13 + 8);
    v23(v12, v14);
  }

  *(v0 + 1552) = v23;
  v37 = *(v0 + 1184);
  v38 = &v37[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v39 = *&v37[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if ((v39 & 0x8000000000000000) == 0 || v39 != 0x8000000000000000 || *(v38 + 1) | *(v38 + 2) | *v38)
  {
    sub_10021B6B0(v0 + 592);
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v80);
      *(v43 + 12) = 2080;
      v44 = *(v38 + 3);
      if (v44 >> 62)
      {
        if (v44 >> 62 == 1)
        {
          v45 = 0xE500000000000000;
          v46 = 0x6465726957;
        }

        else
        {
          v54 = (*(v38 + 2) | *v38 | *(v38 + 1)) == 0;
          v55 = v44 == 0x8000000000000000;
          if (v55 && v54)
          {
            v46 = 0x656D6567616E614DLL;
          }

          else
          {
            v46 = 0x64696C61766E49;
          }

          if (v55 && v54)
          {
            v45 = 0xEA0000000000746ELL;
          }

          else
          {
            v45 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v45 = 0xED00006E6F697461;
        v46 = 0x6C756D4564726143;
      }

      v56 = sub_1002FFA0C(v46, v45, v80);

      *(v43 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: Unexpected state %s, expected Management", v43, 0x16u);
      swift_arrayDestroy();
    }

    v36 = 6;
LABEL_31:
    sub_10009591C();
    v57 = swift_allocError();
    *v58 = v36;
    swift_willThrow();
    v59 = *(v0 + 1224);
    v60 = *(v0 + 1216);
    swift_errorRetain();
    v60(0, v57);

    v61 = *(v0 + 1496);
    v62 = *(v0 + 1488);
    v63 = *(v0 + 1480);
    v64 = *(v0 + 1472);
    v65 = *(v0 + 1464);
    v66 = *(v0 + 1456);
    v67 = *(v0 + 1432);
    v68 = *(v0 + 1408);
    v69 = *(v0 + 1384);
    v70 = *(v0 + 1360);
    v72 = *(v0 + 1344);
    v73 = *(v0 + 1320);
    v74 = *(v0 + 1296);
    v75 = *(v0 + 1272);
    v76 = *(v0 + 1264);
    v77 = *(v0 + 1256);
    v79 = *(v0 + 1248);

    v71 = *(v0 + 8);

    return v71();
  }

  v47 = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
  *(v0 + 1560) = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
  swift_beginAccess();
  sub_1000BC094(&v37[v47], v0 + 944);
  v48 = *(v0 + 968);
  v49 = *(v0 + 976);
  sub_1000752B0((v0 + 944), v48);
  v50 = *(v49 + 8);
  v78 = (v50 + *v50);
  v51 = v50[1];
  v52 = swift_task_alloc();
  *(v0 + 1568) = v52;
  *v52 = v0;
  v52[1] = sub_10020A8D0;

  return v78(v48, v49);
}

uint64_t sub_10020A8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 1568);
  v6 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {
    sub_10021B6B0(v2 + 592);
    v4 = sub_10020D71C;
  }

  else
  {
    v4 = sub_10020A9EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020A9EC()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  sub_1000752F4((v0 + 944));
  (*(v2 + 104))(v1, enum case for SESFeature.RuntimeFlag.viennaDynamicSE(_:), v3);
  v4 = static SESFeature.isEnabled(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0 + 1184);
    v6 = v5 + *(v0 + 1504);
    sub_1000BC094(v5 + *(v0 + 1560), v0 + 1024);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1056);
    sub_1000752B0((v0 + 1024), v7);
    *(v0 + 16) = *v6;
    v9 = *(v6 + 64);
    v11 = *(v6 + 16);
    v10 = *(v6 + 32);
    *(v0 + 64) = *(v6 + 48);
    *(v0 + 80) = v9;
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    v13 = *(v6 + 96);
    v12 = *(v6 + 112);
    v14 = *(v6 + 80);
    *(v0 + 144) = *(v6 + 128);
    *(v0 + 112) = v13;
    *(v0 + 128) = v12;
    *(v0 + 96) = v14;
    v15 = *(v8 + 32);
    sub_10012E344(v0 + 16, v0 + 456);
    v38 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 1584) = v17;
    *v17 = v0;
    v17[1] = sub_10020AD70;
    v18 = *(v0 + 1408);
    v19 = *(v0 + 1192);
    v20 = v0 + 16;
    v21 = v7;
    v22 = v8;
    v23 = v38;
  }

  else
  {
    sub_10021B6B0(v0 + 592);
    v24 = *(v0 + 1184);
    v25 = v24 + *(v0 + 1504);
    sub_1000BC094(v24 + *(v0 + 1560), v0 + 984);
    v26 = *(v0 + 1008);
    v27 = *(v0 + 1016);
    sub_1000752B0((v0 + 984), v26);
    *(v0 + 184) = *v25;
    v28 = *(v25 + 48);
    v29 = *(v25 + 64);
    v30 = *(v25 + 32);
    *(v0 + 200) = *(v25 + 16);
    *(v0 + 248) = v29;
    *(v0 + 232) = v28;
    *(v0 + 216) = v30;
    v32 = *(v25 + 96);
    v31 = *(v25 + 112);
    v33 = *(v25 + 80);
    *(v0 + 312) = *(v25 + 128);
    *(v0 + 280) = v32;
    *(v0 + 296) = v31;
    *(v0 + 264) = v33;
    v34 = *(v27 + 16);
    sub_10012E344(v0 + 184, v0 + 320);
    v39 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 1688) = v36;
    *v36 = v0;
    v36[1] = sub_10020CE34;
    v18 = *(v0 + 1480);
    v19 = *(v0 + 1192);
    v20 = v0 + 184;
    v21 = v26;
    v22 = v27;
    v23 = v39;
  }

  return v23(v18, v19, v20, v21, v22);
}

uint64_t sub_10020AD70()
{
  v2 = *v1;
  v3 = *(*v1 + 1584);
  v6 = *v1;
  *(*v1 + 1592) = v0;

  sub_10012E3A0(v2 + 16);
  if (v0)
  {
    sub_10021B6B0(v2 + 592);
    v4 = sub_10020D8A8;
  }

  else
  {
    v4 = sub_10020AE9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020AE9C()
{
  v1 = v0[199];
  v2 = v0[176];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[149];
  sub_1000752F4(v0 + 128);
  SECCredentialConfig.metadata.getter();
  v7 = SECMetadata.appletInstances.getter();
  (*(v4 + 8))(v3, v5);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v0[200] = sub_1001FB1E0(sub_10021B7F8, v8, v7);
  v0[201] = v1;

  type metadata accessor for SERInternalClient();
  v0[202] = static SERInternalClient.shared.getter();
  v9 = async function pointer to SERInternalClient.getSESnapshot(token:)[1];
  v10 = swift_task_alloc();
  v0[203] = v10;
  *v10 = v0;
  v10[1] = sub_10020B000;
  v11 = v0[170];

  return SERInternalClient.getSESnapshot(token:)(v11, 0, 0xF000000000000000);
}

uint64_t sub_10020B000()
{
  v1 = *(*v0 + 1624);
  v2 = *(*v0 + 1616);
  v4 = *v0;

  return _swift_task_switch(sub_10020B118, 0, 0);
}

uint64_t sub_10020B118()
{
  v142 = v0;
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 316) = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1600);
    v5 = *(v0 + 1344);
    v6 = *(v0 + 1336);
    v7 = *(v0 + 1328);

    sub_10021B6B0(v0 + 592);
    v8 = *(v6 + 32);
    v8(v5, v1, v7);
    sub_10021C09C(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    v9 = swift_allocError();
    v8(v10, v5, v7);
    goto LABEL_9;
  }

  v11 = *(v0 + 1280);
  v12 = *(v0 + 1184);
  v13 = *v1;
  *(v0 + 1632) = *v1;
  *(v0 + 1160) = v13;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.getter();
  v14 = *(v0 + 146);
  swift_endAccess();
  if (v14)
  {
    v15 = *(v0 + 1600);
    v16 = *(v0 + 1184);
    v17 = swift_task_alloc();
    *(v0 + 1664) = v17;
    v17[2] = v16;
    v17[3] = v0 + 1160;
    v17[4] = v15;
    v17[5] = v0 + 832;
    v18 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v19 = swift_task_alloc();
    *(v0 + 1672) = v19;
    *v19 = v0;
    v19[1] = sub_10020C814;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 147, 0, 0, 0xD000000000000036, 0x8000000100467C80, sub_10021B814, v17, &type metadata for Bool);
  }

  else
  {
    v20 = *(v0 + 1608);
    v21 = SESnapshot.canFit(credentials:)(*(v0 + 1600));
    if (v22)
    {
      v9 = v22;
      v23 = *(v0 + 1600);

      sub_10021B6B0(v0 + 592);
LABEL_9:
      v24 = *(v0 + 1264);
      v25 = *(v0 + 1232);
      *(v0 + 1168) = v9;
      swift_errorRetain();
      sub_100068FC4(&unk_100503F80, &qword_100409CF0);
      v26 = swift_dynamicCast();
      v27 = *(v0 + 1544);
      v28 = *(v0 + 1536);
      v29 = *(v0 + 1528);
      v30 = *(v0 + 1440);
      if (v26)
      {
        v31 = *(v0 + 1264);
        v32 = *(v0 + 1256);
        v33 = *(v0 + 1248);
        v34 = *(v0 + 1240);
        v35 = *(v0 + 1232);
        v133 = *(v0 + 1192);
        v136 = *(v0 + 1464);

        (*(v34 + 32))(v32, v31, v35);
        (*(v34 + 16))(v33, v32, v35);
        v28(v136, v133, v30);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 1552);
        v40 = *(v0 + 1464);
        v41 = *(v0 + 1448);
        v42 = *(v0 + 1440);
        v43 = *(v0 + 1248);
        v44 = *(v0 + 1240);
        v45 = *(v0 + 1232);
        if (v38)
        {
          v131 = v37;
          v46 = swift_slowAlloc();
          v141[0] = swift_slowAlloc();
          *v46 = 136315650;
          *(v46 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v141);
          *(v46 + 12) = 2080;
          v47 = SERError.failureReason.getter();
          v129 = v39;
          if (v48)
          {
            v49 = v47;
          }

          else
          {
            v49 = 0x6E776F6E6B6E55;
          }

          if (v48)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0xE700000000000000;
          }

          v137 = *(v44 + 8);
          v137(v43, v45);
          v51 = sub_1002FFA0C(v49, v50, v141);

          *(v46 + 14) = v51;
          *(v46 + 22) = 2080;
          v52 = UUID.uuidString.getter();
          v54 = v53;
          v129(v40, v42);
          v55 = sub_1002FFA0C(v52, v54, v141);

          *(v46 + 24) = v55;
          _os_log_impl(&_mh_execute_header, v36, v131, "%s: Reservations Error %s encountered while creating credential with config UUID %s", v46, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v39(v40, v42);
          v137 = *(v44 + 8);
          v137(v43, v45);
        }

        v77 = *(v0 + 316);
        v78 = *(v0 + 1408);
        v79 = *(v0 + 1400);
        v80 = *(v0 + 1392);
        v81 = *(v0 + 1256);
        v82 = *(v0 + 1232);
        sub_10009591C();
        v83 = swift_allocError();
        *v84 = 33;
        swift_willThrow();
        v137(v81, v82);
        (*(v79 + 8))(v78, v80);
        v85 = *(v0 + 1168);

        if (v77 == 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v56 = *(v0 + 1456);
        v57 = *(v0 + 1192);
        v58 = *(v0 + 1168);

        v28(v56, v57, v30);
        swift_errorRetain();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        v61 = os_log_type_enabled(v59, v60);
        v62 = *(v0 + 1552);
        v63 = *(v0 + 1456);
        v64 = *(v0 + 1448);
        v65 = *(v0 + 1440);
        if (v61)
        {
          v66 = swift_slowAlloc();
          v141[0] = swift_slowAlloc();
          *v66 = 136315394;
          swift_getErrorValue();
          v134 = v62;
          v67 = *(v0 + 1112);
          v68 = *(v0 + 1120);
          v69 = *(v0 + 1128);
          v70 = Error.localizedDescription.getter();
          v72 = sub_1002FFA0C(v70, v71, v141);

          *(v66 + 4) = v72;
          *(v66 + 12) = 2080;
          v73 = UUID.uuidString.getter();
          v75 = v74;
          v134(v63, v65);
          v76 = sub_1002FFA0C(v73, v75, v141);

          *(v66 + 14) = v76;
          _os_log_impl(&_mh_execute_header, v59, v60, "Storage Error %s encountered while creating credential with config UUID %s ", v66, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v62(v63, v65);
        }

        v86 = *(v0 + 316);
        v87 = *(v0 + 1408);
        v88 = *(v0 + 1400);
        v89 = *(v0 + 1392);
        sub_10009591C();
        v83 = swift_allocError();
        *v90 = 24;
        swift_willThrow();

        (*(v88 + 8))(v87, v89);
        if (v86 == 1)
        {
          goto LABEL_26;
        }
      }

LABEL_26:
      v91 = *(v0 + 1224);
      v92 = *(v0 + 1216);
      swift_errorRetain();
      v92(0, v83);

      v93 = *(v0 + 1496);
      v94 = *(v0 + 1488);
      v95 = *(v0 + 1480);
      v96 = *(v0 + 1472);
      v97 = *(v0 + 1464);
      v98 = *(v0 + 1456);
      v99 = *(v0 + 1432);
      v100 = *(v0 + 1408);
      v101 = *(v0 + 1384);
      v102 = *(v0 + 1360);
      v127 = *(v0 + 1344);
      v128 = *(v0 + 1320);
      v130 = *(v0 + 1296);
      v132 = *(v0 + 1272);
      v135 = *(v0 + 1264);
      v138 = *(v0 + 1256);
      v140 = *(v0 + 1248);

      v103 = *(v0 + 8);

      return v103();
    }

    if (v21)
    {
      v104 = *(v0 + 1600);
      sub_10021B6B0(v0 + 592);

      (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

      v105 = *(v0 + 1184);
      v106 = v105 + *(v0 + 1504);
      sub_1000BC094(v105 + *(v0 + 1560), v0 + 984);
      v107 = *(v0 + 1008);
      v108 = *(v0 + 1016);
      sub_1000752B0((v0 + 984), v107);
      *(v0 + 184) = *v106;
      v109 = *(v106 + 64);
      v111 = *(v106 + 16);
      v110 = *(v106 + 32);
      *(v0 + 232) = *(v106 + 48);
      *(v0 + 248) = v109;
      *(v0 + 200) = v111;
      *(v0 + 216) = v110;
      v113 = *(v106 + 96);
      v112 = *(v106 + 112);
      v114 = *(v106 + 80);
      *(v0 + 312) = *(v106 + 128);
      *(v0 + 280) = v113;
      *(v0 + 296) = v112;
      *(v0 + 264) = v114;
      v115 = *(v108 + 16);
      sub_10012E344(v0 + 184, v0 + 320);
      v139 = (v115 + *v115);
      v116 = v115[1];
      v117 = swift_task_alloc();
      *(v0 + 1688) = v117;
      *v117 = v0;
      v117[1] = sub_10020CE34;
      v118 = *(v0 + 1480);
      v119 = *(v0 + 1192);

      return v139(v118, v119, v0 + 184, v107, v108);
    }

    else
    {
      v120 = *(v0 + 1320);
      v121 = *(v0 + 1312);
      v122 = *(v0 + 1304);
      type metadata accessor for SESnapshot();
      (*(v121 + 104))(v120, enum case for SESnapshot.TargetDevice.currentDevice(_:), v122);
      v123 = async function pointer to static SESnapshot.reclaimUnusedSpace(targetDevice:)[1];
      v124 = swift_task_alloc();
      *(v0 + 1640) = v124;
      *v124 = v0;
      v124[1] = sub_10020BCC0;
      v125 = *(v0 + 1320);

      return static SESnapshot.reclaimUnusedSpace(targetDevice:)(v125);
    }
  }
}

uint64_t sub_10020BCC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1640);
  v8 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  if (v1)
  {
    v5 = v3[200];
    (*(v3[164] + 8))(v3[165], v3[163]);

    sub_10021B6B0((v3 + 74));
    v6 = sub_10020DA34;
  }

  else
  {
    (*(v3[164] + 8))(v3[165], v3[163]);
    v6 = sub_10020BE24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10020BE24()
{
  v128 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1632);
  v3._rawValue = *(v0 + 1600);
  v4 = *(v0 + 1648);

  *(v0 + 1160) = v4;
  v5 = SESnapshot.canFit(credentials:)(v3);
  v7 = *(v0 + 1648);
  if (v6)
  {
    v8 = v6;
    v9 = *(v0 + 1600);

    sub_10021B6B0(v0 + 592);
    v10 = *(v0 + 1264);
    v11 = *(v0 + 1232);
    *(v0 + 1168) = v8;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v12 = swift_dynamicCast();
    v13 = *(v0 + 1544);
    v14 = *(v0 + 1536);
    v15 = *(v0 + 1528);
    v16 = *(v0 + 1440);
    if (v12)
    {
      v17 = *(v0 + 1264);
      v18 = *(v0 + 1256);
      v116 = *(v0 + 1248);
      v19 = *(v0 + 1240);
      v20 = *(v0 + 1232);
      v119 = *(v0 + 1192);
      v122 = *(v0 + 1464);

      (*(v19 + 32))(v18, v17, v20);
      (*(v19 + 16))(v116, v18, v20);
      v14(v122, v119, v16);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 1552);
      v25 = *(v0 + 1464);
      v26 = *(v0 + 1448);
      v27 = *(v0 + 1440);
      v28 = *(v0 + 1248);
      v29 = *(v0 + 1240);
      v30 = *(v0 + 1232);
      if (v23)
      {
        v117 = v22;
        v31 = swift_slowAlloc();
        v127[0] = swift_slowAlloc();
        *v31 = 136315650;
        *(v31 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v127);
        *(v31 + 12) = 2080;
        v32 = SERError.failureReason.getter();
        v114 = v24;
        if (v33)
        {
          v34 = v32;
        }

        else
        {
          v34 = 0x6E776F6E6B6E55;
        }

        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = 0xE700000000000000;
        }

        v123 = *(v29 + 8);
        v123(v28, v30);
        v36 = sub_1002FFA0C(v34, v35, v127);

        *(v31 + 14) = v36;
        *(v31 + 22) = 2080;
        v37 = UUID.uuidString.getter();
        v39 = v38;
        v114(v25, v27);
        v40 = sub_1002FFA0C(v37, v39, v127);

        *(v31 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v21, v117, "%s: Reservations Error %s encountered while creating credential with config UUID %s", v31, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v24(v25, v27);
        v123 = *(v29 + 8);
        v123(v28, v30);
      }

      v85 = *(v0 + 316);
      v86 = *(v0 + 1408);
      v87 = *(v0 + 1400);
      v88 = *(v0 + 1392);
      v89 = *(v0 + 1256);
      v90 = *(v0 + 1232);
      sub_10009591C();
      v91 = swift_allocError();
      *v92 = 33;
      swift_willThrow();
      v123(v89, v90);
      (*(v87 + 8))(v86, v88);
      v93 = *(v0 + 1168);

      if (v85 == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v59 = *(v0 + 1456);
      v60 = *(v0 + 1192);
      v61 = *(v0 + 1168);

      v14(v59, v60, v16);
      swift_errorRetain();
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 1552);
      v66 = *(v0 + 1456);
      v67 = *(v0 + 1448);
      v68 = *(v0 + 1440);
      if (v64)
      {
        v69 = swift_slowAlloc();
        v127[0] = swift_slowAlloc();
        *v69 = 136315394;
        swift_getErrorValue();
        v120 = v65;
        v70 = *(v0 + 1112);
        v71 = *(v0 + 1120);
        v72 = *(v0 + 1128);
        v73 = Error.localizedDescription.getter();
        v75 = sub_1002FFA0C(v73, v74, v127);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        v76 = UUID.uuidString.getter();
        v78 = v77;
        v120(v66, v68);
        v79 = sub_1002FFA0C(v76, v78, v127);

        *(v69 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v62, v63, "Storage Error %s encountered while creating credential with config UUID %s ", v69, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v65(v66, v68);
      }

      v94 = *(v0 + 316);
      v95 = *(v0 + 1408);
      v96 = *(v0 + 1400);
      v97 = *(v0 + 1392);
      sub_10009591C();
      v91 = swift_allocError();
      *v98 = 24;
      swift_willThrow();

      (*(v96 + 8))(v95, v97);
      if (v94 == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_26:
    v99 = *(v0 + 1224);
    v100 = *(v0 + 1216);
    swift_errorRetain();
    v100(0, v91);

    v101 = *(v0 + 1496);
    v102 = *(v0 + 1488);
    v103 = *(v0 + 1480);
    v104 = *(v0 + 1472);
    v105 = *(v0 + 1464);
    v106 = *(v0 + 1456);
    v107 = *(v0 + 1432);
    v108 = *(v0 + 1408);
    v109 = *(v0 + 1384);
    v110 = *(v0 + 1360);
    v112 = *(v0 + 1344);
    v113 = *(v0 + 1320);
    v115 = *(v0 + 1296);
    v118 = *(v0 + 1272);
    v121 = *(v0 + 1264);
    v125 = *(v0 + 1256);
    v126 = *(v0 + 1248);

    v111 = *(v0 + 8);

    return v111();
  }

  v41 = v5;

  if (v41)
  {
    v42 = *(v0 + 1600);
    sub_10021B6B0(v0 + 592);

    (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

    v43 = *(v0 + 1184);
    v44 = v43 + *(v0 + 1504);
    sub_1000BC094(v43 + *(v0 + 1560), v0 + 984);
    v45 = *(v0 + 1008);
    v46 = *(v0 + 1016);
    sub_1000752B0((v0 + 984), v45);
    *(v0 + 184) = *v44;
    v47 = *(v44 + 64);
    v49 = *(v44 + 16);
    v48 = *(v44 + 32);
    *(v0 + 232) = *(v44 + 48);
    *(v0 + 248) = v47;
    *(v0 + 200) = v49;
    *(v0 + 216) = v48;
    v51 = *(v44 + 96);
    v50 = *(v44 + 112);
    v52 = *(v44 + 80);
    *(v0 + 312) = *(v44 + 128);
    *(v0 + 280) = v51;
    *(v0 + 296) = v50;
    *(v0 + 264) = v52;
    v53 = *(v46 + 16);
    sub_10012E344(v0 + 184, v0 + 320);
    v124 = (v53 + *v53);
    v54 = v53[1];
    v55 = swift_task_alloc();
    *(v0 + 1688) = v55;
    *v55 = v0;
    v55[1] = sub_10020CE34;
    v56 = *(v0 + 1480);
    v57 = *(v0 + 1192);

    return v124(v56, v57, v0 + 184, v45, v46);
  }

  else
  {
    v80 = *(v0 + 1600);
    v81 = *(v0 + 1184);
    v82 = swift_task_alloc();
    *(v0 + 1664) = v82;
    v82[2] = v81;
    v82[3] = v0 + 1160;
    v82[4] = v80;
    v82[5] = v0 + 832;
    v83 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v84 = swift_task_alloc();
    *(v0 + 1672) = v84;
    *v84 = v0;
    v84[1] = sub_10020C814;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 147, 0, 0, 0xD000000000000036, 0x8000000100467C80, sub_10021B814, v82, &type metadata for Bool);
  }
}

uint64_t sub_10020C814()
{
  v2 = *v1;
  v3 = *(*v1 + 1672);
  v4 = *v1;
  v2[210] = v0;

  v5 = v2[208];
  v6 = v2[200];

  sub_10021B6B0((v2 + 74));

  if (v0)
  {
    v7 = sub_10020E130;
  }

  else
  {
    v7 = sub_10020C974;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10020C974()
{
  v60 = v0;
  if (*(v0 + 147) == 1)
  {
    (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

    v1 = *(v0 + 1184);
    v2 = v1 + *(v0 + 1504);
    sub_1000BC094(v1 + *(v0 + 1560), v0 + 984);
    v3 = *(v0 + 1008);
    v4 = *(v0 + 1016);
    sub_1000752B0((v0 + 984), v3);
    *(v0 + 184) = *v2;
    v5 = *(v2 + 64);
    v7 = *(v2 + 16);
    v6 = *(v2 + 32);
    *(v0 + 232) = *(v2 + 48);
    *(v0 + 248) = v5;
    *(v0 + 200) = v7;
    *(v0 + 216) = v6;
    v9 = *(v2 + 96);
    v8 = *(v2 + 112);
    v10 = *(v2 + 80);
    *(v0 + 312) = *(v2 + 128);
    *(v0 + 280) = v9;
    *(v0 + 296) = v8;
    *(v0 + 264) = v10;
    v11 = *(v4 + 16);
    sub_10012E344(v0 + 184, v0 + 320);
    v55 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 1688) = v13;
    *v13 = v0;
    v13[1] = sub_10020CE34;
    v14 = *(v0 + 1480);
    v15 = *(v0 + 1192);

    return v55(v14, v15, v0 + 184, v3, v4);
  }

  else
  {
    v17 = *(v0 + 1544);
    v18 = *(v0 + 1528);
    (*(v0 + 1536))(*(v0 + 1488), *(v0 + 1192), *(v0 + 1440));
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 1552);
    v23 = *(v0 + 1488);
    v24 = *(v0 + 1448);
    v25 = *(v0 + 1440);
    if (v21)
    {
      v57 = v20;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v59 = v27;
      *v26 = 136315138;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      v22(v23, v25);
      v31 = sub_1002FFA0C(v28, v30, &v59);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v57, "Cannot fit credential with product config %s", v26, 0xCu);
      sub_1000752F4(v27);
    }

    else
    {

      v22(v23, v25);
    }

    v32 = *(v0 + 1408);
    v33 = *(v0 + 1400);
    v34 = *(v0 + 1392);
    sub_10009591C();
    v35 = swift_allocError();
    *v36 = 24;
    swift_willThrow();
    (*(v33 + 8))(v32, v34);

    v37 = *(v0 + 1224);
    v38 = *(v0 + 1216);
    swift_errorRetain();
    v38(0, v35);

    v39 = *(v0 + 1496);
    v40 = *(v0 + 1488);
    v41 = *(v0 + 1480);
    v42 = *(v0 + 1472);
    v43 = *(v0 + 1464);
    v44 = *(v0 + 1456);
    v45 = *(v0 + 1432);
    v46 = *(v0 + 1408);
    v47 = *(v0 + 1384);
    v48 = *(v0 + 1360);
    v50 = *(v0 + 1344);
    v51 = *(v0 + 1320);
    v52 = *(v0 + 1296);
    v53 = *(v0 + 1272);
    v54 = *(v0 + 1264);
    v56 = *(v0 + 1256);
    v58 = *(v0 + 1248);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_10020CE34()
{
  v2 = *v1;
  v3 = *(*v1 + 1688);
  v6 = *v1;
  *(v2 + 1696) = v0;

  sub_10012E3A0(v2 + 184);
  if (v0)
  {
    v4 = sub_10020E2D8;
  }

  else
  {
    v4 = sub_10020CF50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020CF50()
{
  sub_1000752F4(v0 + 123);
  v1 = swift_task_alloc();
  v0[213] = v1;
  *v1 = v0;
  v1[1] = sub_10020CFFC;
  v2 = v0[185];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[148];

  return sub_1002AD7D0(v2, v5, v4, v3);
}

uint64_t sub_10020CFFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1704);
  v7 = *v2;
  *(v3 + 1712) = a1;
  *(v3 + 1720) = v1;

  if (v1)
  {
    v5 = sub_10020E464;
  }

  else
  {
    v5 = sub_10020D114;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10020D114()
{
  v64 = v0;
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1472);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1184);
  v8 = *&v7[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics];

  sub_10028C478(0, 1);

  v2(v5, v4, v6);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1552);
  v14 = *(v0 + 1472);
  v15 = *(v0 + 1448);
  v16 = *(v0 + 1440);
  if (v12)
  {
    v17 = *(v0 + 1184);
    v18 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = UUID.uuidString.getter();
    v21 = sub_1002FFA0C(v19, v20, &v63);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    v13(v14, v16);
    v25 = sub_1002FFA0C(v22, v24, &v63);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Session %s Successfully created credential %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v13(v14, v16);
  }

  v26 = *(v0 + 1296);
  v27 = *(v0 + 1288);
  v28 = *(v0 + 1280);
  v29 = *(v0 + 1184);
  v30 = OBJC_IVAR____TtC10seserviced14SECUserSession__useNetworkShim;
  swift_beginAccess();
  (*(v27 + 16))(v26, v29 + v30, v28);
  UserDefaultBacked.wrappedValue.getter();
  (*(v27 + 8))(v26, v28);
  if (*(v0 + 145) == 1)
  {
    v31 = *(v0 + 1272);
    v32 = *(v0 + 1184);
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v32;
    v35 = v32;
    sub_100201B44(0, 0, v31, &unk_10040F9E8, v34);
  }

  v36 = *(v0 + 1712);
  v37 = *(v0 + 1552);
  v38 = *(v0 + 1480);
  v39 = *(v0 + 1448);
  v40 = *(v0 + 1440);
  v41 = *(v0 + 1224);
  v42 = *(v0 + 1216);
  v43 = v36;
  v42(v36, 0);

  v37(v38, v40);
  v44 = *(v0 + 1496);
  v45 = *(v0 + 1488);
  v46 = *(v0 + 1480);
  v47 = *(v0 + 1472);
  v48 = *(v0 + 1464);
  v49 = *(v0 + 1456);
  v50 = *(v0 + 1432);
  v51 = *(v0 + 1408);
  v52 = *(v0 + 1384);
  v53 = *(v0 + 1360);
  v56 = *(v0 + 1344);
  v57 = *(v0 + 1320);
  v58 = *(v0 + 1296);
  v59 = *(v0 + 1272);
  v60 = *(v0 + 1264);
  v61 = *(v0 + 1256);
  v62 = *(v0 + 1248);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10020D590()
{
  sub_10021B6B0((v0 + 74));
  v1 = v0[190];
  v2 = v0[153];
  v3 = v0[152];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[185];
  v7 = v0[184];
  v8 = v0[183];
  v9 = v0[182];
  v10 = v0[179];
  v11 = v0[176];
  v12 = v0[173];
  v13 = v0[170];
  v16 = v0[168];
  v17 = v0[165];
  v18 = v0[162];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10020D71C()
{
  sub_1000752F4(v0 + 118);
  v1 = v0[197];
  v2 = v0[153];
  v3 = v0[152];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[185];
  v7 = v0[184];
  v8 = v0[183];
  v9 = v0[182];
  v10 = v0[179];
  v11 = v0[176];
  v12 = v0[173];
  v13 = v0[170];
  v16 = v0[168];
  v17 = v0[165];
  v18 = v0[162];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10020D8A8()
{
  sub_1000752F4(v0 + 128);
  v1 = v0[199];
  v2 = v0[153];
  v3 = v0[152];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[187];
  v5 = v0[186];
  v6 = v0[185];
  v7 = v0[184];
  v8 = v0[183];
  v9 = v0[182];
  v10 = v0[179];
  v11 = v0[176];
  v12 = v0[173];
  v13 = v0[170];
  v16 = v0[168];
  v17 = v0[165];
  v18 = v0[162];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10020DA34()
{
  v96 = v0;
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1232);
  *(v0 + 1168) = *(v0 + 1656);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 1544);
  v5 = *(v0 + 1536);
  v6 = *(v0 + 1528);
  v7 = *(v0 + 1440);
  if ((v3 & 1) == 0)
  {
    v33 = *(v0 + 1456);
    v34 = *(v0 + 1192);
    v35 = *(v0 + 1168);

    v5(v33, v34, v7);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1552);
    v40 = *(v0 + 1456);
    v41 = *(v0 + 1448);
    v42 = *(v0 + 1440);
    if (v38)
    {
      v43 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v43 = 136315394;
      swift_getErrorValue();
      v90 = v39;
      v44 = *(v0 + 1112);
      v45 = *(v0 + 1120);
      v46 = *(v0 + 1128);
      v47 = Error.localizedDescription.getter();
      v49 = sub_1002FFA0C(v47, v48, v95);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      v50 = UUID.uuidString.getter();
      v52 = v51;
      v90(v40, v42);
      v53 = sub_1002FFA0C(v50, v52, v95);

      *(v43 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v36, v37, "Storage Error %s encountered while creating credential with config UUID %s ", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v39(v40, v42);
    }

    v63 = *(v0 + 316);
    v64 = *(v0 + 1408);
    v65 = *(v0 + 1400);
    v66 = *(v0 + 1392);
    sub_10009591C();
    v60 = swift_allocError();
    *v67 = 24;
    swift_willThrow();

    (*(v65 + 8))(v64, v66);
    if (v63 == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = *(v0 + 1264);
  v9 = *(v0 + 1256);
  v10 = *(v0 + 1248);
  v11 = *(v0 + 1240);
  v12 = *(v0 + 1232);
  v89 = *(v0 + 1192);
  v92 = *(v0 + 1464);

  (*(v11 + 32))(v9, v8, v12);
  (*(v11 + 16))(v10, v9, v12);
  v5(v92, v89, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 1552);
  v17 = *(v0 + 1464);
  v18 = *(v0 + 1448);
  v19 = *(v0 + 1440);
  v20 = *(v0 + 1248);
  v21 = *(v0 + 1240);
  v22 = *(v0 + 1232);
  if (v15)
  {
    v87 = v14;
    v23 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v23 = 136315650;
    *(v23 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v95);
    *(v23 + 12) = 2080;
    v24 = SERError.failureReason.getter();
    v85 = v16;
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0x6E776F6E6B6E55;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v93 = *(v21 + 8);
    v93(v20, v22);
    v28 = sub_1002FFA0C(v26, v27, v95);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    v85(v17, v19);
    v32 = sub_1002FFA0C(v29, v31, v95);

    *(v23 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v13, v87, "%s: Reservations Error %s encountered while creating credential with config UUID %s", v23, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v16(v17, v19);
    v93 = *(v21 + 8);
    v93(v20, v22);
  }

  v54 = *(v0 + 316);
  v55 = *(v0 + 1408);
  v56 = *(v0 + 1400);
  v57 = *(v0 + 1392);
  v58 = *(v0 + 1256);
  v59 = *(v0 + 1232);
  sub_10009591C();
  v60 = swift_allocError();
  *v61 = 33;
  swift_willThrow();
  v93(v58, v59);
  (*(v56 + 8))(v55, v57);
  v62 = *(v0 + 1168);

  if (v54 != 1)
  {
LABEL_17:
  }

LABEL_18:
  v68 = *(v0 + 1224);
  v69 = *(v0 + 1216);
  swift_errorRetain();
  v69(0, v60);

  v70 = *(v0 + 1496);
  v71 = *(v0 + 1488);
  v72 = *(v0 + 1480);
  v73 = *(v0 + 1472);
  v74 = *(v0 + 1464);
  v75 = *(v0 + 1456);
  v76 = *(v0 + 1432);
  v77 = *(v0 + 1408);
  v78 = *(v0 + 1384);
  v79 = *(v0 + 1360);
  v82 = *(v0 + 1344);
  v83 = *(v0 + 1320);
  v84 = *(v0 + 1296);
  v86 = *(v0 + 1272);
  v88 = *(v0 + 1264);
  v91 = *(v0 + 1256);
  v94 = *(v0 + 1248);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_10020E130()
{
  (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

  v1 = *(v0 + 1680);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1216);
  swift_errorRetain();
  v3(0, v1);

  v4 = *(v0 + 1496);
  v5 = *(v0 + 1488);
  v6 = *(v0 + 1480);
  v7 = *(v0 + 1472);
  v8 = *(v0 + 1464);
  v9 = *(v0 + 1456);
  v10 = *(v0 + 1432);
  v11 = *(v0 + 1408);
  v12 = *(v0 + 1384);
  v13 = *(v0 + 1360);
  v16 = *(v0 + 1344);
  v17 = *(v0 + 1320);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 1264);
  v21 = *(v0 + 1256);
  v22 = *(v0 + 1248);

  v14 = *(v0 + 8);

  return v14();
}