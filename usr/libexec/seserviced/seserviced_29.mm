uint64_t sub_100263D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100265DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100263D94(uint64_t a1)
{
  v2 = sub_100265AFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100263DD0(uint64_t a1)
{
  v2 = sub_100265AFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100263E3C()
{
  sub_100264930(v0 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);
  v1 = *(v0 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier + 8);

  v3 = OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_100263F24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v21 = OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue;
  v16 = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v20[1] = "populated no output";
  v20[2] = v16;
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  v24 = _swiftEmptyArrayStorage;
  sub_10026473C(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper;
  *&v1[v17] = [objc_opt_self() sharedInstance];
  v18 = &v1[OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup];
  *v18 = 0xD000000000000028;
  *(v18 + 1) = 0x80000001004694A0;
  Logger.init(subsystem:category:)();
  v23.receiver = v1;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, "init");
}

uint64_t sub_1002643DC()
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

uint64_t sub_1002644B8()
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100264590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002645FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100264698(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_10026473C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100264784()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002647D8()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  sub_10006A178(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10026483C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10026485C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1002648DC()
{
  result = qword_1005086A8;
  if (!qword_1005086A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005086A8);
  }

  return result;
}

uint64_t sub_100264930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100264990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002649FC()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100264A48()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100264AA4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100264B1C(void *a1, uint64_t a2)
{
  v104 = a2;
  object = a1;
  v111 = type metadata accessor for Date();
  v103 = *(v111 - 8);
  v3 = *(v103 + 64);
  __chkstk_darwin(v111);
  v100 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v99 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  __chkstk_darwin(v8);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = type metadata accessor for SHA256Digest();
  v96 = *(countAndFlagsBits - 8);
  v11 = *(v96 + 64);
  __chkstk_darwin(countAndFlagsBits);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v13 = *(v89 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v89);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v94 = *(v97 - 8);
  v17 = *(v94 + 64);
  __chkstk_darwin(v97);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = v2;
  v25 = *(v2 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_queue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  P256.KeyAgreement.PrivateKey.init()();
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v28 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v30 = v29;
  (*(v13 + 8))(v16, v89);
  sub_10026473C(&qword_100503000, &type metadata accessor for SHA256);
  v31 = v90;
  v32 = v92;
  dispatch thunk of HashFunction.init()();
  sub_100069E2C(v28, v30);
  v33 = v95;
  sub_100357FC4(v28, v30);
  v95 = v33;
  sub_10006A178(v28, v30);
  v34 = v93;
  dispatch thunk of HashFunction.finalize()();
  (*(v91 + 8))(v31, v32);
  v35 = countAndFlagsBits;
  v109 = countAndFlagsBits;
  v110 = sub_10026473C(&qword_100503008, &type metadata accessor for SHA256Digest);
  v36 = sub_1000B9634(&v107);
  v37 = v96;
  (*(v96 + 16))(v36, v34, v35);
  sub_1000752B0(&v107, v109);
  v38 = v95;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v95 = v38;
  (*(v37 + 8))(v34, v35);
  v39 = v105;
  v40 = v106;
  sub_1000752F4(&v107);
  sub_10006A178(v28, v30);
  v41 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v41._countAndFlagsBits;
  sub_10006A178(v39, v40);
  v42 = v94;
  v43 = v99;
  v44 = v97;
  (*(v94 + 16))(v99, v19, v97);
  v45 = v100;
  static Date.now.getter();
  (*(v42 + 8))(v19, v44);
  v46 = type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey(0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  sub_100264990(v43, v49 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey);
  *(v49 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_keyIdentifier) = v41;
  v50 = (v49 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_groupIdentifier);
  v51 = object;
  v52 = v103;
  v53 = v104;
  *v50 = object;
  v50[1] = v53;
  (*(v52 + 32))(v49 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate, v45, v111);
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040F420;
  v107 = kSecClass;
  type metadata accessor for CFString(0);
  v56 = v55;
  sub_10026473C(&qword_1005021B0, type metadata accessor for CFString);

  v57 = kSecClass;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v56;
  *(inited + 72) = kSecClassGenericPassword;
  v107 = kSecAttrAccessible;
  v58 = kSecClassGenericPassword;
  v59 = kSecAttrAccessible;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = v56;
  *(inited + 144) = kSecAttrAccessibleAfterFirstUnlock;
  v107 = kSecAttrAccount;
  v60 = kSecAttrAccessibleAfterFirstUnlock;
  v61 = kSecAttrAccount;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v51;
  *(inited + 224) = v53;
  v107 = kSecAttrService;

  v62 = kSecAttrService;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = countAndFlagsBits;
  *(inited + 296) = v41._object;
  v107 = kSecAttrAccessGroup;
  v63 = kSecAttrAccessGroup;
  AnyHashable.init<A>(_:)();
  v65 = *(v102 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup);
  v64 = *(v102 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainGroup + 8);
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = v65;
  *(inited + 368) = v64;
  v107 = kSecAttrSynchronizable;

  v66 = kSecAttrSynchronizable;
  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = 1;
  v107 = kSecValueData;
  v67 = kSecValueData;
  AnyHashable.init<A>(_:)();
  v68 = v95;
  v69 = sub_100262C88();
  if (v68)
  {

    sub_100092F28(inited + 464);
    v71 = &qword_100502C48;
    sub_100075768(inited + 392, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 320, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 248, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 176, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 104, &qword_100502C48, &qword_10040B2D0);
    sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    return v71;
  }

  object = v41._object;
  v72 = v69;
  v73 = v70;
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_10009393C(0, &qword_100507150, NSData_ptr);
  *(inited + 528) = result;
  *(inited + 504) = isa;
  if (!kSecAttrSyncViewHint)
  {
    goto LABEL_13;
  }

  v107 = kSecAttrSyncViewHint;
  v75 = kSecAttrSyncViewHint;
  result = AnyHashable.init<A>(_:)();
  if (kSecAttrViewHintApplePay)
  {
    v76 = kSecAttrViewHintApplePay;
    sub_10006A178(v72, v73);
    *(inited + 600) = v56;
    *(inited + 576) = v76;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    v77 = *(v102 + OBJC_IVAR____TtC10seserviced27SESPrivacyKeyImplementation_keychainWrapper);
    v78 = Dictionary._bridgeToObjectiveC()().super.isa;

    v79 = [v77 addItem:v78];

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 67109120;
      *(v82 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v80, v81, "Added keychain item %d", v82, 8u);
    }

    v83 = v111;
    v84 = v103;
    if (v79)
    {
      v85 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
      v107 = 0;
      v108 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v107 = 0xD00000000000001ALL;
      v108 = 0x8000000100469550;
      LODWORD(v105) = v79;
      v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v86);

      v71 = v85;
      sub_10030990C(0, 1, v107, v108, 0);
      swift_willThrow();
    }

    else
    {
      v71 = sub_1002605F8();
      swift_setDeallocating();
      sub_100264930(v49 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_privateKey, type metadata accessor for SESPrivacyKeyImplementation.PrivacyKey.PrivateKey);

      (*(v84 + 8))(v49 + OBJC_IVAR____TtCC10seserviced27SESPrivacyKeyImplementationP33_01F92E85A5349E347722992BF9B9F8DA10PrivacyKey_creationDate, v83);
      v87 = *(*v49 + 48);
      v88 = *(*v49 + 52);
      swift_deallocClassInstance();
    }

    return v71;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1002657D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100265890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100265934()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SESPrivacyKeyImplementation.PrivacyKey.PrivateKeyType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SESPrivacyKeyImplementation.PrivacyKey.PrivateKeyType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100265AA8()
{
  result = qword_100508758;
  if (!qword_100508758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508758);
  }

  return result;
}

unint64_t sub_100265AFC()
{
  result = qword_100508768;
  if (!qword_100508768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508768);
  }

  return result;
}

unint64_t sub_100265B50()
{
  result = qword_100508770;
  if (!qword_100508770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508770);
  }

  return result;
}

uint64_t sub_100265BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100265C0C()
{
  result = qword_100508780;
  if (!qword_100508780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508780);
  }

  return result;
}

unint64_t sub_100265C60()
{
  result = qword_100508788;
  if (!qword_100508788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508788);
  }

  return result;
}

unint64_t sub_100265CC8()
{
  result = qword_100508790;
  if (!qword_100508790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508790);
  }

  return result;
}

unint64_t sub_100265D20()
{
  result = qword_100508798;
  if (!qword_100508798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508798);
  }

  return result;
}

unint64_t sub_100265D78()
{
  result = qword_1005087A0;
  if (!qword_1005087A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005087A0);
  }

  return result;
}

uint64_t sub_100265DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795479656BLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEE00617461447965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
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

uint64_t sub_10026618C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1002661E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PresentmentInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = __chkstk_darwin(v11);
  v45 = &v39 - v15;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for UUID();
  v40 = *(v18 - 8);
  v41 = v18;
  v19 = *(v40 + 16);
  v42 = a1;
  v43 = a3;
  result = v19(a3, a1);
  v21 = *(a2 + 16);
  v46 = v21;
  if (v21)
  {
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    v44 = v6;
    while (v22 < *(a2 + 16))
    {
      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v25 = *(v7 + 72);
      sub_100269E18(a2 + v24 + v25 * v22, v17, type metadata accessor for PresentmentInfo);
      if (v17[*(v6 + 20)])
      {
        result = sub_100269E80(v17, type metadata accessor for PresentmentInfo);
      }

      else
      {
        sub_10026AC40(v17, v45, type metadata accessor for PresentmentInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v23[2] + 1, 1);
          v23 = v48;
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          sub_10019F8F4(v27 > 1, v28 + 1, 1);
          v23 = v48;
        }

        v23[2] = v28 + 1;
        result = sub_10026AC40(v45, v23 + v24 + v28 * v25, type metadata accessor for PresentmentInfo);
        v6 = v44;
        v21 = v46;
      }

      if (v21 == ++v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_13:
  v29 = v23[2];

  result = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v45 = result;
  *(v43 + *(result + 20)) = v29;
  v30 = v46;
  if (v46)
  {
    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
    while (v31 < *(a2 + 16))
    {
      v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v34 = *(v7 + 72);
      sub_100269E18(a2 + v33 + v34 * v31, v13, type metadata accessor for PresentmentInfo);
      if (v13[*(v6 + 20)] == 1)
      {
        sub_10026AC40(v13, v47, type metadata accessor for PresentmentInfo);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v32;
        if ((v35 & 1) == 0)
        {
          sub_10019F8F4(0, v32[2] + 1, 1);
          v32 = v48;
        }

        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          sub_10019F8F4(v36 > 1, v37 + 1, 1);
          v32 = v48;
        }

        v32[2] = v37 + 1;
        result = sub_10026AC40(v47, v32 + v33 + v37 * v34, type metadata accessor for PresentmentInfo);
        v30 = v46;
      }

      else
      {
        result = sub_100269E80(v13, type metadata accessor for PresentmentInfo);
      }

      if (v30 == ++v31)
      {
        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_25:
  (*(v40 + 8))(v42, v41);

  v38 = v32[2];

  *(v43 + *(v45 + 24)) = v38;
  return result;
}

uint64_t sub_100266660(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x8000000100460D30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000100460D30;
  }

  else
  {
    v6 = 0x8000000100460D50;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000019;
    v4 = 0x8000000100460D50;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100266738()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002667D4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10026685C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002668F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026A43C(*a1);
  *a2 = result;
  return result;
}

void sub_100266924(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xD000000000000016;
  v5 = 0x8000000100460D30;
  if (v2 != 1)
  {
    v4 = 0xD000000000000019;
    v5 = 0x8000000100460D50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10026697C()
{
  v0 = sub_100266D20();
  v1 = *(v0 + 16);
  if (v1)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_10019F938(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = v0 + 64;
    v4 = -1 << *(v0 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(v0 + 36);
    v28 = v1;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(v0 + 32))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      if (v7 != *(v0 + 36))
      {
        goto LABEL_32;
      }

      v10 = *(*(v0 + 48) + v5);
      sub_1000754F0(*(v0 + 56) + 32 * v5, v37);
      v33 = v10;
      sub_100075D50(v37, &v34);
      sub_1000938D4(&v33, v31, &qword_100508878, &qword_100410F60);
      if (v31[0])
      {
        if (v31[0] == 1)
        {
          v11 = 0xD000000000000016;
          v12 = 0x8000000100460D30;
        }

        else
        {
          v11 = 0xD000000000000019;
          v12 = 0x8000000100460D50;
        }
      }

      else
      {
        v12 = 0xE200000000000000;
        v11 = 25705;
      }

      *&v38 = v11;
      *(&v38 + 1) = v12;
      *(&v29[0] + 1) = v34;
      v29[1] = v35;
      v30 = v36;
      sub_100075D50((v29 + 8), v39);
      sub_1000752F4(v32);
      v40 = v2;
      v14 = v2[2];
      v13 = v2[3];
      if (v14 >= v13 >> 1)
      {
        sub_10019F938((v13 > 1), v14 + 1, 1);
        v2 = v40;
      }

      v2[2] = v14 + 1;
      v15 = &v2[6 * v14];
      v16 = v38;
      v17 = v39[1];
      v15[3] = v39[0];
      v15[4] = v17;
      v15[2] = v16;
      v8 = 1 << *(v0 + 32);
      if (v5 >= v8)
      {
        goto LABEL_33;
      }

      v3 = v0 + 64;
      v18 = *(v0 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_34;
      }

      if (v7 != *(v0 + 36))
      {
        goto LABEL_35;
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
        v22 = (v0 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1000937D4(v5, v7, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v5, v7, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
    }

    while (v6 != v28);

    if (!v2[2])
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_28:
      v25 = _swiftEmptyDictionarySingleton;
      goto LABEL_29;
    }
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  v25 = static _DictionaryStorage.allocate(capacity:)();
LABEL_29:
  *&v38 = v25;

  sub_1002699FC(v26, 1, &v38);

  return v38;
}

unint64_t sub_100266D20()
{
  sub_100068FC4(&qword_100508880, &qword_100410F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0;
  v2 = UUID.uuidString.getter();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 72) = 1;
  v4 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v5 = *(v0 + *(v4 + 20));
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = v5;
  *(inited + 112) = 2;
  v6 = *(v0 + *(v4 + 24));
  *(inited + 144) = &type metadata for Int;
  *(inited + 120) = v6;
  v7 = sub_100091FB0(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502CB8, &qword_100410F70);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_100266E10(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100508A48, &qword_100411348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10026B434();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for UUID();
  sub_10026B2CC(&qword_1005089F8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100266FF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_100508A38, &qword_100411340);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10026B434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v16 = v14;
  v17 = v25;
  v31 = 0;
  sub_10026B2CC(&qword_100508A20, &type metadata accessor for UUID);
  v18 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v17 + 32);
  v20 = v28;
  v28 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  *(v16 + *(v11 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v26 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v21;
  sub_100269E18(v16, v24, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
  sub_1000752F4(a1);
  return sub_100269E80(v16, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
}

uint64_t sub_100267388()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1002673DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026A488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100267404(uint64_t a1)
{
  v2 = sub_10026B434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100267440(uint64_t a1)
{
  v2 = sub_10026B434();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1002674B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10026757C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10026762C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002676EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026A5A4(*a1);
  *a2 = result;
  return result;
}

void sub_10026771C(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64496D616461;
  v4 = 0xD000000000000013;
  v5 = 0x8000000100460D80;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000015;
    v5 = 0x8000000100460DA0;
  }

  if (*v1)
  {
    v3 = 0x656D614E707061;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10026779C()
{
  v0 = sub_100267B68();
  v1 = *(v0 + 16);
  if (v1)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_10019F938(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = v0 + 64;
    v4 = -1 << *(v0 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(v0 + 36);
    v29 = v1;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(v0 + 32))
      {
        __break(1u);
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
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v10 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_33;
      }

      if (v7 != *(v0 + 36))
      {
        goto LABEL_34;
      }

      v11 = *(*(v0 + 48) + v5);
      sub_1000754F0(*(v0 + 56) + 32 * v5, v38);
      v34 = v11;
      sub_100075D50(v38, &v35);
      sub_1000938D4(&v34, v32, &qword_100508868, &qword_100410F48);
      if (v32[0] > 1u)
      {
        if (v32[0] == 2)
        {
          v13 = 0xD000000000000013;
          v12 = 0x8000000100460D80;
        }

        else
        {
          v13 = 0xD000000000000015;
          v12 = 0x8000000100460DA0;
        }
      }

      else if (v32[0])
      {
        v12 = 0xE700000000000000;
        v13 = 0x656D614E707061;
      }

      else
      {
        v12 = 0xE600000000000000;
        v13 = 0x64496D616461;
      }

      *&v39 = v13;
      *(&v39 + 1) = v12;
      *(&v30[0] + 1) = v35;
      v30[1] = v36;
      v31 = v37;
      sub_100075D50((v30 + 8), v40);
      sub_1000752F4(v33);
      v41 = v2;
      v15 = v2[2];
      v14 = v2[3];
      if (v15 >= v14 >> 1)
      {
        sub_10019F938((v14 > 1), v15 + 1, 1);
        v2 = v41;
      }

      v2[2] = v15 + 1;
      v16 = &v2[6 * v15];
      v17 = v39;
      v18 = v40[1];
      v16[3] = v40[0];
      v16[4] = v18;
      v16[2] = v17;
      v8 = 1 << *(v0 + 32);
      if (v5 >= v8)
      {
        goto LABEL_35;
      }

      v3 = v0 + 64;
      v19 = *(v0 + 64 + 8 * v10);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_36;
      }

      if (v7 != *(v0 + 36))
      {
        goto LABEL_37;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v29;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v9 = v29;
        v23 = (v0 + 72 + 8 * v10);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1000937D4(v5, v7, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v5, v7, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
    }

    while (v6 != v9);

    if (!v2[2])
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_30:
      v26 = _swiftEmptyDictionarySingleton;
      goto LABEL_31;
    }
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  v26 = static _DictionaryStorage.allocate(capacity:)();
LABEL_31:
  *&v39 = v26;

  sub_1002699FC(v27, 1, &v39);

  return v39;
}

unint64_t sub_100267B68()
{
  v1 = type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&qword_100508870, &unk_100410F50);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_1004099F0;
  *(inited + 64) = &type metadata for UInt64;
  v7 = v0[1];
  *(inited + 40) = *v0;
  *(inited + 72) = 1;
  *(inited + 104) = &type metadata for String;
  v8 = v0[2];
  v9 = v0[3];
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  *(inited + 112) = 2;
  *(inited + 144) = &type metadata for UInt64;
  *(inited + 120) = v9;
  *(inited + 152) = 3;
  v10 = v0[4];
  v11 = *(v10 + 16);
  if (v11)
  {
    v20[1] = inited + 32;
    v21 = _swiftEmptyArrayStorage;

    sub_10019F4C4(0, v11, 0);
    v12 = v21;
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_100269E18(v13, v5, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
      v15 = sub_10026697C();
      sub_100269E80(v5, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
      v21 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_10019F4C4((v16 > 1), v17 + 1, 1);
        v12 = v21;
      }

      v12[2] = v17 + 1;
      v12[v17 + 4] = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  *(inited + 184) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *(inited + 160) = v12;
  v18 = sub_1000920D8(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502CA8, &qword_100409D88);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_100267DF4(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100508A78, &qword_100411360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10026B488();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[3];
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 3;
    sub_100068FC4(&qword_100508A60, &qword_100411358);
    sub_10026B4DC(&qword_100508A80, &qword_100508A88);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100268040()
{
  v1 = 0x64496D616461;
  v2 = 0x437972746E756F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656D614E707061;
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

uint64_t sub_1002680C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026A5F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002680EC(uint64_t a1)
{
  v2 = sub_10026B488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100268128(uint64_t a1)
{
  v2 = sub_10026B488();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100268164@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10026A75C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1002681C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100068FC4(&qword_100508888, &qword_100410F78);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SECPresentmentReport(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = [a1 reportUUID];
  if (v21)
  {
    v43 = v9;
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = [a1 rawPayload];
    if (v23)
    {
      v40 = v8;
      v41 = a1;
      v42 = a2;
      v24 = v23;
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = type metadata accessor for JSONDecoder();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_10026B2CC(&qword_100508890, type metadata accessor for SECPresentmentReport);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_10006A178(v25, v27);

      v35 = *(v14 + 56);
      v35(v7, 0, 1, v13);
      sub_10026AC40(v7, v18, type metadata accessor for SECPresentmentReport);
      (*(v43 + 32))(v20, v12, v40);
      *&v20[*(v13 + 20)] = *&v18[*(v13 + 20)];
      v36 = *&v18[*(v13 + 24)];

      sub_100269E80(v18, type metadata accessor for SECPresentmentReport);
      *&v20[*(v13 + 24)] = v36;
      v37 = v42;
      sub_10026AC40(v20, v42, type metadata accessor for SECPresentmentReport);
      return (v35)(v37, 0, 1, v13);
    }

    (*(v43 + 8))(v12, v8);
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B2C8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Corrupted field in report database", v34, 2u);
  }

  return (*(v14 + 56))(a2, 1, 1, v13);
}

uint64_t sub_1002686A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v26 = a2;
  v5 = type metadata accessor for PresentmentInfo();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v12 = &v26 - v11;
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = *a1;
    v15 = *(v10 + 72);
    v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v16 = a3 + v27;
    v17 = _swiftEmptyArrayStorage;
    v28 = v5;
    do
    {
      sub_100269E18(v16, v12, type metadata accessor for PresentmentInfo);
      if (*&v12[*(v5 + 28)] == v14)
      {
        sub_10026AC40(v12, v9, type metadata accessor for PresentmentInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v17[2] + 1, 1);
          v17 = v29;
        }

        v20 = v17[2];
        v19 = v17[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F8F4(v19 > 1, v20 + 1, 1);
          v17 = v29;
        }

        v17[2] = v20 + 1;
        sub_10026AC40(v9, v17 + v27 + v20 * v15, type metadata accessor for PresentmentInfo);
        v5 = v28;
      }

      else
      {
        sub_100269E80(v12, type metadata accessor for PresentmentInfo);
      }

      v16 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v21 = v26;
  v22 = *v26;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v22;
  if ((result & 1) == 0)
  {
    result = sub_10012FDE0(0, v22[2] + 1, 1, v22);
    v22 = result;
    *v21 = result;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    result = sub_10012FDE0((v24 > 1), v25 + 1, 1, v22);
    v22 = result;
    *v21 = result;
  }

  v22[2] = v25 + 1;
  v22[v25 + 4] = v17;
  return result;
}

uint64_t sub_100268954(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D617473656D6974;
  v4 = 0xEC00000079614470;
  if (v2 != 1)
  {
    v3 = 0x7461676572676761;
    v4 = 0xEA00000000007365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x644974726F706572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6D617473656D6974;
  v8 = 0xEC00000079614470;
  if (*a2 != 1)
  {
    v7 = 0x7461676572676761;
    v8 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x644974726F706572;
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

Swift::Int sub_100268A70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100268B20()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100268BBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100268C68@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026B578(*a1);
  *a2 = result;
  return result;
}

void sub_100268C98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC00000079614470;
  v5 = 0x6D617473656D6974;
  if (v2 != 1)
  {
    v5 = 0x7461676572676761;
    v4 = 0xEA00000000007365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x644974726F706572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100268D04()
{
  v0 = sub_1002690A8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_10019F938(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = v0 + 64;
    v4 = -1 << *(v0 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(v0 + 36);
    v28 = v1;
    do
    {
      if (v5 < 0 || v5 >= 1 << *(v0 + 32))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      if (v7 != *(v0 + 36))
      {
        goto LABEL_32;
      }

      v10 = *(*(v0 + 48) + v5);
      sub_1000754F0(*(v0 + 56) + 32 * v5, v37);
      v33 = v10;
      sub_100075D50(v37, &v34);
      sub_1000938D4(&v33, v31, &qword_100508858, &unk_100410F20);
      if (v31[0])
      {
        if (v31[0] == 1)
        {
          v11 = 0x6D617473656D6974;
          v12 = 0xEC00000079614470;
        }

        else
        {
          v12 = 0xEA00000000007365;
          v11 = 0x7461676572676761;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        v11 = 0x644974726F706572;
      }

      *&v38 = v11;
      *(&v38 + 1) = v12;
      *(&v29[0] + 1) = v34;
      v29[1] = v35;
      v30 = v36;
      sub_100075D50((v29 + 8), v39);
      sub_1000752F4(v32);
      v40 = v2;
      v14 = v2[2];
      v13 = v2[3];
      if (v14 >= v13 >> 1)
      {
        sub_10019F938((v13 > 1), v14 + 1, 1);
        v2 = v40;
      }

      v2[2] = v14 + 1;
      v15 = &v2[6 * v14];
      v16 = v38;
      v17 = v39[1];
      v15[3] = v39[0];
      v15[4] = v17;
      v15[2] = v16;
      v8 = 1 << *(v0 + 32);
      if (v5 >= v8)
      {
        goto LABEL_33;
      }

      v3 = v0 + 64;
      v18 = *(v0 + 64 + 8 * v9);
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_34;
      }

      if (v7 != *(v0 + 36))
      {
        goto LABEL_35;
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
        v22 = (v0 + 72 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1000937D4(v5, v7, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v5, v7, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
    }

    while (v6 != v28);

    if (!v2[2])
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_28:
      v25 = _swiftEmptyDictionarySingleton;
      goto LABEL_29;
    }
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
  v25 = static _DictionaryStorage.allocate(capacity:)();
LABEL_29:
  *&v38 = v25;

  sub_1002699FC(v26, 1, &v38);

  return v38;
}

unint64_t sub_1002690A8()
{
  sub_100068FC4(&qword_100508860, &unk_100410F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100409A40;
  *(inited + 32) = 0;
  v2 = UUID.uuidString.getter();
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 72) = 1;
  v4 = type metadata accessor for SECPresentmentReport(0);
  v5 = *(v0 + *(v4 + 20));
  *(inited + 104) = &type metadata for Double;
  *(inited + 80) = v5;
  *(inited + 112) = 2;
  v6 = *(v0 + *(v4 + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_10019F4C4(0, v7, 0);
    v8 = (v6 + 64);
    do
    {
      v14 = *(v8 - 2);
      v15 = *(v8 - 2);
      v16 = *(v8 - 1);
      v17 = *v8;

      v9 = sub_10026779C();

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10019F4C4((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
      v8 += 5;
      --v7;
    }

    while (v7);
  }

  *(inited + 144) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *(inited + 120) = _swiftEmptyArrayStorage;
  v12 = sub_100092200(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C98, &qword_100410F40);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_100269288(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005089E8, &qword_100411328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10026B278();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for UUID();
  sub_10026B2CC(&qword_1005089F8, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SECPresentmentReport(0);
    v12 = *(v3 + *(v11 + 20));
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + *(v11 + 24));
    v14[15] = 2;
    sub_100068FC4(&qword_100508A00, &qword_100411330);
    sub_10026B368(&qword_100508A08, sub_10026B314);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002694CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_100508A18, &qword_100411338);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SECPresentmentReport(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10026B278();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v23 = a1;
  v16 = v14;
  v17 = v25;
  v32 = 0;
  sub_10026B2CC(&qword_100508A20, &type metadata accessor for UUID);
  v18 = v26;
  v19 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v18, v4);
  v31 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + *(v11 + 20)) = v20;
  sub_100068FC4(&qword_100508A00, &qword_100411330);
  v30 = 2;
  sub_10026B368(&qword_100508A28, sub_10026B3E0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v10, v19);
  *(v16 + *(v11 + 24)) = v29;
  sub_100269E18(v16, v24, type metadata accessor for SECPresentmentReport);
  sub_1000752F4(v23);
  return sub_100269E80(v16, type metadata accessor for SECPresentmentReport);
}

uint64_t sub_1002698C4()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 0x7461676572676761;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644974726F706572;
  }
}

uint64_t sub_10026992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026B90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100269954(uint64_t a1)
{
  v2 = sub_10026B278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100269990(uint64_t a1)
{
  v2 = sub_10026B278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002699FC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_1000938D4(a1 + 32, &v48, &qword_100507D30, &unk_100409C90);
  v8 = v48;
  v7 = v49;
  v46 = v48;
  v47 = v49;
  sub_100075D50(v50, v45);
  v9 = *a3;
  v10 = sub_10008C908(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10030A928(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_10008C908(v8, v7);
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

  v21 = v10;
  sub_10031130C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v51 = v19;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1000752F4(v45);
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_100075D50(v45, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_1000938D4(v26, &v48, &qword_100507D30, &unk_100409C90);
      v29 = v48;
      v28 = v49;
      v46 = v48;
      v47 = v49;
      sub_100075D50(v50, v45);
      v30 = *a3;
      v31 = sub_10008C908(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_10030A928(v35, 1);
        v37 = *a3;
        v31 = sub_10008C908(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_100075D50(v45, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
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
  _StringGuts.grow(_:)(30);
  v43._object = 0x8000000100466020;
  v43._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v43);
  _print_unlocked<A, B>(_:_:)();
  v44._countAndFlagsBits = 39;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100269E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100269E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100269EE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      result = sub_1002686A8(&v15, a2, a3);
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100269FD8(uint64_t a1)
{
  v2 = type metadata accessor for PresentmentInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UUID();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v40);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = v38 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v42 = a1;
  if (v13)
  {
    v41 = 0;
    v45 = _swiftEmptyArrayStorage;
    sub_10019F420(0, v13, 0);
    v14 = v45;
    v15 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    v43 = (v7 + 32);
    v44 = v16;
    v17 = v40;
    do
    {
      sub_100269E18(v15, v6, type metadata accessor for PresentmentInfo);
      (*(v7 + 16))(v11, v6, v17);
      sub_100269E80(v6, type metadata accessor for PresentmentInfo);
      v45 = v14;
      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        sub_10019F420(v18 > 1, v19 + 1, 1);
        v14 = v45;
      }

      v14[2] = v19 + 1;
      (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v11, v17);
      v15 += v44;
      --v13;
    }

    while (v13);
  }

  v20 = sub_1000E0348(v14);

  v21 = v20 + 56;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 56);
  v25 = (v22 + 63) >> 6;
  v38[0] = v7 + 8;
  v38[1] = v7 + 16;

  v41 = v20;

  v26 = 0;
  v27 = _swiftEmptyDictionarySingleton;
  while (v24)
  {
    v44 = v27;
    v28 = v26;
LABEL_15:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v40;
    v32 = v39;
    v33 = (*(v7 + 16))(v39, *(v41 + 48) + *(v7 + 72) * (v30 | (v28 << 6)), v40);
    v43 = v38;
    __chkstk_darwin(v33);
    v38[-2] = v32;
    v34 = v42;

    v35 = sub_10032A878(sub_10026A40C, &v38[-4], v34);
    v36 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v36;
    sub_100316B20(v35, v32, isUniquelyReferenced_nonNull_native);
    v27 = v45;
    (*(v7 + 8))(v32, v31);
  }

  result = v42;
  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      return v27;
    }

    v24 = *(v21 + 8 * v28);
    ++v26;
    if (v24)
    {
      v44 = v27;
      v26 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10026A43C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4A78, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026A488(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004695C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004695E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_10026A5A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4AE0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10026A5F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100469600 == a2)
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

uint64_t sub_10026A75C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100068FC4(&qword_100508A50, &qword_100411350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_10026B488();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v21 = v12;
  v24 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100068FC4(&qword_100508A60, &qword_100411358);
  v23 = 3;
  sub_10026B4DC(&qword_100508A68, &qword_100508A70);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  result = sub_1000752F4(a1);
  v17 = v20;
  v18 = v21;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

void *sub_10026A9F8(uint64_t a1)
{
  v2 = type metadata accessor for PresentmentInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_10019F958(0, v7, 0);
    v8 = v17;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_100269E18(v9, v6, type metadata accessor for PresentmentInfo);
      v11 = *&v6[*(v2 + 28)];
      sub_100269E80(v6, type metadata accessor for PresentmentInfo);
      v17 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_10019F958((v12 > 1), v13 + 1, 1);
        v8 = v17;
      }

      v8[2] = v13 + 1;
      v8[v13 + 4] = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v14 = sub_1000E21DC(v8);

  v17 = _swiftEmptyArrayStorage;

  sub_100269EE0(v14, &v17, a1);

  return v17;
}

uint64_t sub_10026ABD8(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100508888, &qword_100410F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026AC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026ACCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10026AD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10026ADBC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10026AE38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10026AE80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10026AF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10026AFDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10026B094()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10026B120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10026B120()
{
  if (!qword_100508998)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100508998);
    }
  }
}

unint64_t sub_10026B174()
{
  result = qword_1005089D0;
  if (!qword_1005089D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089D0);
  }

  return result;
}

unint64_t sub_10026B1CC()
{
  result = qword_1005089D8;
  if (!qword_1005089D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089D8);
  }

  return result;
}

unint64_t sub_10026B224()
{
  result = qword_1005089E0;
  if (!qword_1005089E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089E0);
  }

  return result;
}

unint64_t sub_10026B278()
{
  result = qword_1005089F0;
  if (!qword_1005089F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005089F0);
  }

  return result;
}

uint64_t sub_10026B2CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10026B314()
{
  result = qword_100508A10;
  if (!qword_100508A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A10);
  }

  return result;
}

uint64_t sub_10026B368(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100508A00, &qword_100411330);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10026B3E0()
{
  result = qword_100508A30;
  if (!qword_100508A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A30);
  }

  return result;
}

unint64_t sub_10026B434()
{
  result = qword_100508A40;
  if (!qword_100508A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A40);
  }

  return result;
}

unint64_t sub_10026B488()
{
  result = qword_100508A58;
  if (!qword_100508A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A58);
  }

  return result;
}

uint64_t sub_10026B4DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100508A60, &qword_100411358);
    sub_10026B2CC(a2, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10026B578(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C4B60, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10026B5F8()
{
  result = qword_100508A90;
  if (!qword_100508A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A90);
  }

  return result;
}

unint64_t sub_10026B650()
{
  result = qword_100508A98;
  if (!qword_100508A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508A98);
  }

  return result;
}

unint64_t sub_10026B6A8()
{
  result = qword_100508AA0;
  if (!qword_100508AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AA0);
  }

  return result;
}

unint64_t sub_10026B700()
{
  result = qword_100508AA8;
  if (!qword_100508AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AA8);
  }

  return result;
}

unint64_t sub_10026B758()
{
  result = qword_100508AB0;
  if (!qword_100508AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AB0);
  }

  return result;
}

unint64_t sub_10026B7B0()
{
  result = qword_100508AB8;
  if (!qword_100508AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AB8);
  }

  return result;
}

unint64_t sub_10026B808()
{
  result = qword_100508AC0;
  if (!qword_100508AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AC0);
  }

  return result;
}

unint64_t sub_10026B860()
{
  result = qword_100508AC8;
  if (!qword_100508AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AC8);
  }

  return result;
}

unint64_t sub_10026B8B8()
{
  result = qword_100508AD0;
  if (!qword_100508AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AD0);
  }

  return result;
}

uint64_t sub_10026B90C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974726F706572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEC00000079614470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10026BA34()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2._countAndFlagsBits = 0x20444955556B6C74;
  v2._object = 0xEB00000000202020;
  String.append(_:)(v2);
  sub_100288788(*v1, *(v1 + 8));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();

  sub_10028C190(8);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x55746E657261700ALL;
  v7._object = 0xEC00000020444955;
  String.append(_:)(v7);
  sub_100288788(*(v1 + 16), *(v1 + 24));
  BidirectionalCollection<>.joined(separator:)();

  sub_10028C190(8);

  v8 = static String._fromSubstring(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x44495344746C610ALL;
  v12._object = 0xEC00000020202020;
  String.append(_:)(v12);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x6465776F6C6C610ALL;
  v16._object = 0xEC00000020444941;
  String.append(_:)(v16);
  sub_100288788(*(v1 + 48), *(v1 + 56));
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return 0;
}

uint64_t sub_10026BCF4()
{
  v2 = v0;
  v20 = &_s16CommandCreateTLKVN;
  v21 = &off_1004CE458;
  v3 = swift_allocObject();
  v19[0] = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 32);
  sub_10026DE0C(&v22);
  v5 = v24;
  v6 = v25;
  v7 = v22;
  v8 = v23;
  v9 = v26;
  sub_10026FE10(v2, v18);
  v10 = sub_1001ADEA8(v19, v7, v8, v5, v6, v9);
  sub_1001AF6EC(v5, v6, v9);
  if (v1)
  {
    v29 = v27;
    sub_1001A3618(&v29);
    return sub_1000752F4(v19);
  }

  v28 = v27;
  sub_1001A3618(&v28);
  sub_1000752F4(v19);
  result = v10 + 5;
  if (__OFADD__(v10, 5))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1001303A8(result);
  v17 = result;
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 <= 0xFF)
  {
    Data._Representation.append(contentsOf:)();
    v20 = &_s16CommandCreateTLKVN;
    v21 = &off_1004CE458;
    v11 = swift_allocObject();
    v19[0] = v11;
    v12 = *(v2 + 16);
    *(v11 + 16) = *v2;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v2 + 32);
    sub_10026FE10(v2, v18);
    v14 = sub_1001A91D4(v19);
    v16 = v15;
    sub_1000752F4(v19);
    Data.append(_:)();
    sub_10006A178(v14, v16);
    return v17;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_10026BEE8@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E498(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026BF28@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E0EC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026BF68@<D0>(_OWORD *a1@<X8>)
{
  sub_10026DE0C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026BFA8@<D0>(_OWORD *a1@<X8>)
{
  sub_10026C534(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

Swift::Int sub_10026BFE8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

void sub_10026C0A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v9);
}

Swift::Int sub_10026C12C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

uint64_t sub_10026C1E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  if ((sub_10008FB4C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_10008FB4C(v2, v3, v6, v7) & 1) == 0 || (sub_10008FB4C(v4, v5, v8, v9) & 1) == 0)
  {
    return 0;
  }

  if (sub_10008FB4C(v15, v14, v10, v11))
  {
    return v16 ^ v13 ^ 1u;
  }

  return 0;
}

double sub_10026C2CC@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E6AC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_10026C30C@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_100409900;
  strcpy((result + 32), "ptAttestation");
  *(result + 46) = -4864;
  *(result + 48) = 196;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = -64;
  *(result + 88) = _swiftEmptyArrayStorage;
  *(result + 96) = 0x7472654364736163;
  *(result + 104) = 0xEF65746163696669;
  *(result + 112) = 197;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = -64;
  *(result + 152) = _swiftEmptyArrayStorage;
  *a1 = 231;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026C3F8@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E324(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026C438@<D0>(_OWORD *a1@<X8>)
{
  sub_10026E79C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026C478@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 48;
  *(v2 + 24) = 0;
  *&result = 3;
  *(v2 + 32) = xmmword_1004116A0;
  *(v2 + 48) = -64;
  *(v2 + 56) = _swiftEmptyArrayStorage;
  *a1 = 232;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026C4F4@<D0>(_OWORD *a1@<X8>)
{
  sub_10026DF2C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_10026C534@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10040AA50;
  *(v2 + 32) = 0x444955556B6C74;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C3EF0;
  strcpy((v2 + 96), "parentTLKUUID");
  *(v2 + 110) = -4864;
  *(v2 + 112) = 213;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = &off_1004C3F40;
  *(v2 + 160) = 0x44495344746C61;
  *(v2 + 168) = 0xE700000000000000;
  *(v2 + 176) = 193;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = -64;
  *(v2 + 216) = &off_1004C3F90;
  *(v2 + 224) = 0x416465776F6C6C61;
  *(v2 + 232) = 0xEA00000000004449;
  *(v2 + 240) = 214;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = -64;
  *(v2 + 280) = &off_1004C3FE0;
  *(v2 + 288) = 0xD000000000000011;
  *(v2 + 296) = 0x8000000100469620;
  *(v2 + 304) = 215;
  *(v2 + 312) = 0;
  *&result = 2;
  *(v2 + 320) = xmmword_1004116B0;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *a1 = 225;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_10026C6C4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = 4;
    *(v21 + 24) = 3;
    swift_willThrow();
  }

  v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  result = sub_10008C908(0x444955556B6C74, 0xE700000000000000);
  if ((v4 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 4;
    *(v22 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v2 + 16))
  {
    goto LABEL_34;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x4C54746E65726170, 0xED0000444955554BLL);
  if ((v8 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(*(v2 + 56) + 8 * result);
  if (v9 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 4;
    *(v23 + 24) = 3;
    swift_willThrow();

    v24 = v7;
    v25 = v6;
    return sub_10006A178(v24, v25);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_36;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v45 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v45, v10);
  result = sub_10008C908(0x44495344746C61, 0xE700000000000000);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = *(*(v2 + 56) + 8 * result);
  v13 = v12 & 0xE000000000000000;
  if ((v12 & 0xE000000000000000) == 0x2000000000000000)
  {
    if (*(v2 + 16))
    {
      *&v33 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v33 + 1) = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v33, *(&v33 + 1));
      result = sub_10008C908(0x416465776F6C6C61, 0xEA00000000004449);
      if (v14)
      {
        v15 = *(*(v2 + 56) + 8 * result);
        if (v15 >> 61 != 1)
        {

          sub_10007FC0C();
          swift_allocError();
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *v28 = 4;
          *(v28 + 24) = 3;
          swift_willThrow();
          v27 = 0;
LABEL_24:
          a2 = v33;
          goto LABEL_25;
        }

        v30 = v10;
        if (*(v2 + 16))
        {
          v31 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v32 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_100069E2C(v32, v31);
          result = sub_10008C908(0xD000000000000011, 0x8000000100469620);
          if (v16)
          {
            v17 = *(*(v2 + 56) + 8 * result);

            if (!(v17 >> 61))
            {

              v18 = *(v17 + 16);

              *&v35 = v7;
              *(&v35 + 1) = v6;
              *&v36 = v45;
              *(&v36 + 1) = v30;
              v37 = v33;
              *&v38 = v32;
              *(&v38 + 1) = v31;
              v39 = v18;
              v40[0] = v7;
              v40[1] = v6;
              v40[2] = v45;
              v40[3] = v30;
              v41 = v33;
              v42 = v32;
              v43 = v31;
              v44 = v18;
              sub_10018C628(&v35, v34);
              result = sub_10018C684(v40);
              v19 = v38;
              *(a2 + 32) = v37;
              *(a2 + 48) = v19;
              *(a2 + 64) = v39;
              v20 = v36;
              *a2 = v35;
              *(a2 + 16) = v20;
              return result;
            }

            sub_10007FC0C();
            swift_allocError();
            *(v29 + 8) = 0;
            *(v29 + 16) = 0;
            *v29 = 4;
            *(v29 + 24) = 3;
            swift_willThrow();
            v27 = 1;
            v10 = v30;
            goto LABEL_24;
          }

LABEL_41:
          __break(1u);
          return result;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *v26 = 4;
  *(v26 + 24) = 3;
  swift_willThrow();
  v27 = 0;
LABEL_25:

  sub_10006A178(v7, v6);
  result = sub_10006A178(v45, v10);
  if (v13 == 0x2000000000000000)
  {
    result = sub_10006A178(a2, *(&v33 + 1));
    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v27)
  {
    return result;
  }

  v25 = v31;
  v24 = v32;
  return sub_10006A178(v24, v25);
}

double sub_10026CBC0@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10040C130;
  *(v2 + 32) = 0x6E6F6973726576;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 2;
  *(v2 + 56) = 0;
  *(v2 + 64) = xmmword_10040BF80;
  *(v2 + 80) = -64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 1684628851;
  *(v2 + 104) = 0xE400000000000000;
  *(v2 + 112) = 4;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -64;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 1684628325;
  *(v2 + 168) = 0xE400000000000000;
  *(v2 + 176) = 4;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *(v2 + 224) = 0x444970696863;
  *(v2 + 232) = 0xE600000000000000;
  *(v2 + 240) = 4;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = -64;
  *(v2 + 280) = _swiftEmptyArrayStorage;
  *(v2 + 288) = 0x44496472616F62;
  *(v2 + 296) = 0xE700000000000000;
  *(v2 + 304) = 4;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *(v2 + 352) = 0xD000000000000010;
  *(v2 + 360) = 0x8000000100469700;
  *(v2 + 368) = 4;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0u;
  *(v2 + 400) = -64;
  *(v2 + 408) = _swiftEmptyArrayStorage;
  strcpy((v2 + 416), "publicKeyInfo");
  *(v2 + 430) = -4864;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100409900;
  *(v3 + 32) = 0x4449676C61;
  *(v3 + 40) = 0xE500000000000000;
  *(v3 + 48) = 48;
  *(v3 + 56) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = -64;
  *(v3 + 88) = _swiftEmptyArrayStorage;
  *(v3 + 96) = 0x79654B627570;
  *(v3 + 104) = 0xE600000000000000;
  *(v3 + 112) = 3;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = -64;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 432) = 48;
  *(v2 + 440) = 0;
  *(v2 + 448) = v3;
  *(v2 + 456) = 1;
  *(v2 + 464) = 64;
  *(v2 + 472) = _swiftEmptyArrayStorage;
  *(v2 + 480) = 0x4E7463656A627573;
  *(v2 + 488) = 0xEB00000000656D61;
  *(v2 + 496) = 0;
  *(v2 + 504) = 1;
  *(v2 + 512) = 0u;
  *(v2 + 528) = -64;
  *(v2 + 536) = _swiftEmptyArrayStorage;
  *(v2 + 544) = 0x6F69736E65747865;
  *(v2 + 552) = 0xEA0000000000736ELL;
  *(v2 + 560) = 0;
  *(v2 + 568) = 1;
  *(v2 + 576) = 0u;
  *(v2 + 592) = -64;
  *(v2 + 600) = _swiftEmptyArrayStorage;
  *a1 = 48;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

void sub_10026CE44(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409A40;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001004696C0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100409900;
  *(v3 + 32) = 0x614474656C707061;
  *(v3 + 40) = 0xEA00000000006174;
  sub_10026CBC0(v5);
  v4 = v5[1];
  *(v3 + 48) = v5[0];
  *(v3 + 64) = v4;
  *(v3 + 80) = v5[2];
  strcpy((v3 + 96), "platformData");
  *(v3 + 109) = 0;
  *(v3 + 110) = -5120;
  *(v3 + 112) = 48;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = -64;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 48) = 48;
  *(v2 + 56) = 0;
  *(v2 + 64) = v3;
  *(v2 + 72) = 1;
  *(v2 + 80) = 64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 0xD000000000000010;
  *(v2 + 104) = 0x80000001004696E0;
  *(v2 + 112) = 48;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 0x727574616E676973;
  *(v2 + 168) = 0xE900000000000065;
  *(v2 + 176) = 3;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *a1 = 48;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
}

unint64_t sub_10026CFE4(unint64_t result)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 4;
    *(v8 + 24) = 3;
    swift_willThrow();
  }

  v1 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (*(v1 + 16))
  {
    v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    result = sub_10008C908(0x79654B627570, 0xE600000000000000);
    if (v3)
    {
      v4 = *(*(v1 + 56) + 8 * result);
      v5 = v4 & 0x1FFFFFFFFFFFFFFFLL;

      if (v4 >> 61 == 1)
      {
        v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_100069E2C(*(v5 + 16), *(v5 + 24));

        sub_100084D68(1, v6, v7, &v10);

        return v10;
      }

      sub_10007FC0C();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 4;
      *(v9 + 24) = 3;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10026D160@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v4 = v2;
  v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  result = sub_10008C908(0x6E6F6973726576, 0xE700000000000000);
  if ((v7 & 1) == 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = *(*(v3 + 56) + 8 * result);
  if (v8 >> 61 != 2)
  {
LABEL_25:

    sub_10007FC0C();
    swift_allocError();
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *v32 = 4;
    *(v32 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_44;
  }

  v9 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  result = sub_10008C908(1684628851, 0xE400000000000000);
  if ((v10 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v11 = *(*(v3 + 56) + 8 * result);
  if (v11 >> 61 != 1)
  {
    goto LABEL_25;
  }

  if (!*(v3 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v13, v12);
  result = sub_10008C908(1684628325, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = *(*(v3 + 56) + 8 * result);
  if (v15 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = 4;
    *(v33 + 24) = 3;
    swift_willThrow();

    v34 = v13;
    v35 = v12;
    return sub_10006A178(v34, v35);
  }

  if (!*(v3 + 16))
  {
    goto LABEL_48;
  }

  v16 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v50 = v16;
  v60 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v16, v60);
  result = sub_10008C908(0x444970696863, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v18 = *(*(v3 + 56) + 8 * result);
  v19 = v18 & 0xE000000000000000;
  v20 = v18 & 0x1FFFFFFFFFFFFFFFLL;
  if ((v18 & 0xE000000000000000) != 0x2000000000000000)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = 4;
    *(v36 + 24) = 3;
    swift_willThrow();

    v29 = 0;
    v30 = 0;
    goto LABEL_33;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_50;
  }

  v20 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v48 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v49 = v13;
  sub_100069E2C(v48, v20);
  result = sub_10008C908(0x44496472616F62, 0xE700000000000000);
  if ((v21 & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v22 = *(*(v3 + 56) + 8 * result);
  if (v22 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *v37 = 4;
    *(v37 + 24) = 3;
    swift_willThrow();

    v29 = 0;
    v30 = 0;
    goto LABEL_32;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_52;
  }

  v46 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v47 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v47, v46);
  result = sub_10008C908(0xD000000000000010, 0x8000000100469700);
  if ((v23 & 1) == 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v24 = *(*(v3 + 56) + 8 * result);
  if (v24 >> 61 == 1)
  {
    if (*(v3 + 16))
    {
      v44 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v45 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_100069E2C(v45, v44);
      result = sub_10008C908(0x654B63696C627570, 0xED00006F666E4979);
      if (v25)
      {
        v26 = *(*(v3 + 56) + 8 * result);

        v27 = sub_10026CFE4(v26);
        if (!v2)
        {
          v39 = v27;
          v40 = v28;

          *&v52 = v9;
          *(&v52 + 1) = v49;
          *&v53 = v12;
          *(&v53 + 1) = v50;
          *&v54 = v60;
          *(&v54 + 1) = v48;
          *&v55 = v20;
          *(&v55 + 1) = v47;
          *&v56 = v46;
          *(&v56 + 1) = v45;
          *&v57 = v44;
          *(&v57 + 1) = v39;
          v58 = v40;
          v59[0] = v9;
          v59[1] = v49;
          v59[2] = v12;
          v59[3] = v50;
          v59[4] = v60;
          v59[5] = v48;
          v59[6] = v20;
          v59[7] = v47;
          v59[8] = v46;
          v59[9] = v45;
          v59[10] = v44;
          v59[11] = v39;
          v59[12] = v40;
          sub_10026FF18(&v52, v51);
          result = sub_10026FEB0(v59);
          v41 = v57;
          *(a2 + 64) = v56;
          *(a2 + 80) = v41;
          *(a2 + 96) = v58;
          v42 = v53;
          *a2 = v52;
          *(a2 + 16) = v42;
          v43 = v55;
          *(a2 + 32) = v54;
          *(a2 + 48) = v43;
          return result;
        }

        v29 = 1;
        v30 = 1;
        goto LABEL_32;
      }

LABEL_55:
      __break(1u);
      return result;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = 4;
  *(v38 + 24) = 3;
  swift_willThrow();

  v30 = 0;
  v29 = 1;
LABEL_32:
  v4 = v48;
  v13 = v49;
LABEL_33:

  sub_10006A178(v13, v12);
  result = sub_10006A178(v50, v60);
  if (v19 == 0x2000000000000000)
  {
    result = sub_10006A178(v4, v20);
    if ((v29 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (!v29)
  {
LABEL_35:
    if (v30)
    {
      goto LABEL_39;
    }

    return result;
  }

  result = sub_10006A178(v47, v46);
  if (v30)
  {
LABEL_39:
    v35 = v44;
    v34 = v45;
    return sub_10006A178(v34, v35);
  }

  return result;
}

unint64_t sub_10026D740@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 4;
    *(v8 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v2;

  result = sub_10008C908(0x614474656C707061, 0xEA00000000006174);
  if ((v6 & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  result = sub_10026D160(v7, &v44);
  if (v4)
  {
  }

  v41 = v48;
  v42 = v49;
  v43 = v50;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  if (!*(v3 + 16))
  {
    goto LABEL_14;
  }

  result = sub_10008C908(0x6D726F6674616C70, 0xEC00000061746144);
  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = *(*(v3 + 56) + 8 * result);

  if (v10 >> 61 == 1)
  {

    v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v11, v12);

    v23 = v47;
    v24 = v48;
    v25 = v49;
    v20 = v44;
    v21 = v45;
    v22 = v46;
    *&v26 = v50;
    *(&v26 + 1) = v11;
    v27 = v12;
    v32 = v48;
    v33 = v49;
    v30 = v46;
    v31 = v47;
    v28 = v44;
    v29 = v45;
    v34 = v50;
    v35 = v11;
    v36 = v12;
    sub_10026FEE0(&v20, v19);
    result = sub_10026FE48(&v28);
    v13 = v25;
    v14 = v26;
    v15 = v23;
    *(a2 + 64) = v24;
    *(a2 + 80) = v13;
    *(a2 + 96) = v14;
    v16 = v21;
    v17 = v22;
    *a2 = v20;
    *(a2 + 16) = v16;
    *(a2 + 112) = v27;
    *(a2 + 32) = v17;
    *(a2 + 48) = v15;
  }

  else
  {
    sub_10007FC0C();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 4;
    *(v18 + 24) = 3;
    swift_willThrow();

    v32 = v41;
    v33 = v42;
    v34 = v43;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    return sub_10026FEB0(&v28);
  }

  return result;
}

unint64_t sub_10026DA04@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 4;
    *(v8 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = v2;

  result = sub_10008C908(0xD000000000000011, 0x80000001004696C0);
  if ((v6 & 1) == 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = *(*(v3 + 56) + 8 * result);

  result = sub_10026D740(v7, &v54);
  if (v4)
  {
  }

  v50 = v58;
  v51 = v59;
  v52 = v60;
  v53 = v61;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v49 = v57;
  if (!*(v3 + 16))
  {
    goto LABEL_18;
  }

  result = sub_10008C908(0xD000000000000010, 0x80000001004696E0);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = *(*(v3 + 56) + 8 * result);
  if (v10 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = 4;
    *(v21 + 24) = 3;
    swift_willThrow();

    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    return sub_10026FE48(&v34);
  }

  if (!*(v3 + 16))
  {
    goto LABEL_20;
  }

  v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v12, v11);
  result = sub_10008C908(0x727574616E676973, 0xE900000000000065);
  if ((v13 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v14 = *(*(v3 + 56) + 8 * result);

  if (v14 >> 61 == 1)
  {

    v15 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v15, v16);

    v28 = v58;
    v29 = v59;
    v30 = v60;
    v24 = v54;
    v25 = v55;
    v26 = v56;
    v27 = v57;
    v39 = v59;
    v40 = v60;
    v37 = v57;
    v38 = v58;
    v35 = v55;
    v36 = v56;
    *&v31 = v61;
    *(&v31 + 1) = v12;
    *&v32 = v11;
    *(&v32 + 1) = v15;
    v33 = v16;
    v34 = v54;
    v41 = v61;
    v42 = v12;
    v43 = v11;
    v44 = v15;
    v45 = v16;
    sub_10026FE78(&v24, v23);
    result = sub_10018CF9C(&v34);
    v17 = v31;
    *(a2 + 96) = v30;
    *(a2 + 112) = v17;
    *(a2 + 128) = v32;
    *(a2 + 144) = v33;
    v18 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v18;
    v19 = v29;
    *(a2 + 64) = v28;
    *(a2 + 80) = v19;
    v20 = v25;
    *a2 = v24;
    *(a2 + 16) = v20;
  }

  else
  {
    sub_10007FC0C();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 4;
    *(v22 + 24) = 3;
    swift_willThrow();

    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    sub_10026FE48(&v34);
    return sub_10006A178(v12, v11);
  }

  return result;
}

double sub_10026DE0C@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409A40;
  *(v2 + 32) = 0x444955556B6C74;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C4128;
  *(v2 + 96) = 0x416465776F6C6C61;
  *(v2 + 104) = 0xEA00000000004449;
  *(v2 + 112) = 214;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = &off_1004C4178;
  *(v2 + 160) = 0xD000000000000011;
  *(v2 + 168) = 0x8000000100469620;
  *(v2 + 176) = 215;
  *(v2 + 184) = 0;
  *&result = 2;
  *(v2 + 192) = xmmword_1004116B0;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *a1 = 233;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026DF2C@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000100469760;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100409900;
  strcpy((v3 + 32), "ptAttestation");
  *(v3 + 46) = -4864;
  *(v3 + 48) = 196;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = -64;
  *(v3 + 88) = _swiftEmptyArrayStorage;
  *(v3 + 96) = 0x7472654364736163;
  *(v3 + 104) = 0xEF65746163696669;
  *(v3 + 112) = 197;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = -64;
  *(v3 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 48) = 231;
  *(v2 + 56) = 0;
  *(v2 + 64) = v3;
  *(v2 + 72) = 1;
  *(v2 + 80) = 64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 0xD000000000000016;
  *(v2 + 104) = 0x8000000100469780;
  v4 = swift_allocObject();
  *(v4 + 16) = 48;
  *(v4 + 24) = 0;
  *&result = 3;
  *(v4 + 32) = xmmword_1004116A0;
  *(v4 + 48) = -64;
  *(v4 + 56) = _swiftEmptyArrayStorage;
  *(v2 + 112) = 232;
  *(v2 + 120) = 0;
  *(v2 + 128) = v4;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0x80;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10026E0EC@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_10040F420;
  strcpy((result + 32), "formatVersion");
  *(result + 46) = -4864;
  *(result + 48) = 192;
  *(result + 56) = 0;
  *(result + 64) = 0u;
  *(result + 80) = -64;
  *(result + 88) = _swiftEmptyArrayStorage;
  *(result + 96) = 0x444955556B6C74;
  *(result + 104) = 0xE700000000000000;
  *(result + 112) = 212;
  *(result + 120) = 0;
  *(result + 128) = 0u;
  *(result + 144) = -64;
  *(result + 152) = &off_1004C41C8;
  strcpy((result + 160), "parentTLKUUID");
  *(result + 174) = -4864;
  *(result + 176) = 213;
  *(result + 184) = 0;
  *(result + 192) = 0u;
  *(result + 208) = -64;
  *(result + 216) = &off_1004C4218;
  *(result + 224) = 0x416465776F6C6C61;
  *(result + 232) = 0xEA00000000004449;
  *(result + 240) = 214;
  *(result + 248) = 0;
  *(result + 256) = 0u;
  *(result + 272) = -64;
  *(result + 280) = &off_1004C4268;
  *(result + 288) = 0xD000000000000011;
  *(result + 296) = 0x8000000100469620;
  *(result + 304) = 215;
  *(result + 312) = 0;
  *(result + 320) = xmmword_1004116B0;
  *(result + 336) = -64;
  *(result + 344) = _swiftEmptyArrayStorage;
  *(result + 352) = 0x5649736561;
  *(result + 360) = 0xE500000000000000;
  *(result + 368) = 216;
  *(result + 376) = 256;
  *(result + 384) = 0u;
  *(result + 400) = -64;
  *(result + 408) = &off_1004C42B8;
  strcpy((result + 416), "encryptedKey");
  *(result + 429) = 0;
  *(result + 430) = -5120;
  *(result + 432) = 217;
  *(result + 440) = 256;
  *(result + 448) = 0u;
  *(result + 464) = -64;
  *(result + 472) = &off_1004C4308;
  *(result + 480) = 0xD000000000000011;
  *(result + 488) = 0x80000001004696A0;
  *(result + 496) = 218;
  *(result + 504) = 256;
  *(result + 512) = 0u;
  *(result + 528) = -64;
  *(result + 536) = &off_1004C4358;
  *a1 = 228;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E324@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *&result = 5;
  *(v2 + 16) = xmmword_10040AA50;
  *(v2 + 32) = 1684632949;
  *(v2 + 40) = 0xE400000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C43A8;
  *(v2 + 96) = 0x5555746E65726170;
  *(v2 + 104) = 0xEA00000000004449;
  *(v2 + 112) = 213;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = -64;
  *(v2 + 152) = &off_1004C43F8;
  *(v2 + 160) = 0x44495344746C61;
  *(v2 + 168) = 0xE700000000000000;
  *(v2 + 176) = 193;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 208) = -64;
  *(v2 + 216) = &off_1004C4448;
  *(v2 + 224) = 0x416465776F6C6C61;
  *(v2 + 232) = 0xEA00000000004449;
  *(v2 + 240) = 214;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = -64;
  *(v2 + 280) = &off_1004C4498;
  *(v2 + 288) = 0xD000000000000011;
  *(v2 + 296) = 0x8000000100469620;
  *(v2 + 304) = 215;
  *(v2 + 312) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *a1 = 239;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E498@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10040F420;
  strcpy((v2 + 32), "formatVersion");
  *(v2 + 46) = -4864;
  *(v2 + 48) = 192;
  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C44E8;
  *(v2 + 96) = 0xD00000000000001ALL;
  *(v2 + 104) = 0x8000000100469640;
  *(v2 + 112) = 204;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -64;
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 0xD000000000000016;
  *(v2 + 168) = 0x8000000100469660;
  *(v2 + 176) = 205;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = -64;
  *(v2 + 216) = _swiftEmptyArrayStorage;
  *(v2 + 224) = 0xD000000000000019;
  *(v2 + 232) = 0x8000000100469680;
  *(v2 + 240) = 206;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = -64;
  *(v2 + 280) = _swiftEmptyArrayStorage;
  *(v2 + 288) = 0x617461446174656DLL;
  *(v2 + 296) = 0xE800000000000000;
  *(v2 + 304) = 239;
  *(v2 + 312) = 0;
  *(v2 + 320) = xmmword_1004116A0;
  *(v2 + 336) = -64;
  *(v2 + 344) = _swiftEmptyArrayStorage;
  *(v2 + 352) = 0x6574726568706963;
  *(v2 + 360) = 0xEA00000000007478;
  *(v2 + 368) = 208;
  *(v2 + 376) = 0;
  *(v2 + 384) = 0u;
  *(v2 + 400) = -64;
  *(v2 + 408) = _swiftEmptyArrayStorage;
  *(v2 + 416) = 0xD000000000000011;
  *(v2 + 424) = 0x80000001004696A0;
  *(v2 + 432) = 209;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0u;
  *(v2 + 464) = -64;
  *(v2 + 472) = &off_1004C4538;
  *(v2 + 480) = 0x69537265646E6573;
  *(v2 + 488) = 0xEF65727574616E67;
  *(v2 + 496) = 210;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0u;
  *(v2 + 528) = -64;
  *(v2 + 536) = _swiftEmptyArrayStorage;
  *a1 = 224;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E6AC@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  *(v2 + 32) = 0x444955556B6C74;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 48) = 212;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = -64;
  *(v2 + 88) = &off_1004C4588;
  *(v2 + 96) = 0xD000000000000012;
  *(v2 + 104) = 0x8000000100469740;
  sub_10026DF2C(v5);
  v3 = v5[1];
  *(v2 + 112) = v5[0];
  *(v2 + 128) = v3;
  result = *&v6;
  *(v2 + 144) = v6;
  *a1 = 238;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

double sub_10026E79C@<D0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100409900;
  strcpy((v2 + 32), "encryptedBlob");
  *(v2 + 46) = -4864;
  sub_10026E498(&v7);
  v3 = v7;
  v4 = v8;
  v15 = v9;
  v16 = v10;
  sub_10018C454(&v15);
  v14 = v11;
  sub_1001A3618(&v14);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  *(v2 + 57) = 0;
  *(v2 + 64) = xmmword_1004116A0;
  *(v2 + 80) = -64;
  *(v2 + 88) = _swiftEmptyArrayStorage;
  *(v2 + 96) = 0xD000000000000012;
  *(v2 + 104) = 0x8000000100469740;
  sub_10026DF2C(v12);
  v5 = v12[1];
  *(v2 + 112) = v12[0];
  *(v2 + 128) = v5;
  result = *&v13;
  *(v2 + 144) = v13;
  *a1 = 237;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_10026E8DC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 4;
    *(v24 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_56;
  }

  result = sub_10008C908(0x655674616D726F66, 0xED00006E6F697372);
  if ((v4 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 4;
    *(v25 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_57;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x444955556B6C74, 0xE700000000000000);
  if ((v8 & 1) == 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = *(*(v3 + 56) + 8 * result);
  if (v9 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = 4;
    *(v26 + 24) = 3;
    swift_willThrow();

    return sub_10006A178(v7, v6);
  }

  if (!*(v3 + 16))
  {
    goto LABEL_59;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v58 = v10;
  v76 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v10, v76);
  result = sub_10008C908(0x4C54746E65726170, 0xED0000444955554BLL);
  if ((v11 & 1) == 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v12 = *(*(v3 + 56) + 8 * result);
  v13 = v12 & 0xE000000000000000;
  if ((v12 & 0xE000000000000000) != 0x2000000000000000)
  {
LABEL_24:

    sub_10007FC0C();
    swift_allocError();
    *(v27 + 8) = 0;
    *(v27 + 16) = 0;
    *v27 = 4;
    *(v27 + 24) = 3;
    swift_willThrow();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_25;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_61;
  }

  v56 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v57 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v57, v56);
  result = sub_10008C908(0x416465776F6C6C61, 0xEA00000000004449);
  if ((v14 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v15 = *(*(v3 + 56) + 8 * result);
  if (v15 >> 61 != 1)
  {
    goto LABEL_24;
  }

  if (!*(v3 + 16))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v54 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v55 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v55, v54);
  result = sub_10008C908(0xD000000000000011, 0x8000000100469620);
  if ((v16 & 1) == 0)
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v17 = *(*(v3 + 56) + 8 * result);
  if (v17 >> 61)
  {
    goto LABEL_35;
  }

  v18 = *(v17 + 16);
  if (!*(v3 + 16))
  {
    v50 = 0xF000000000000000;
    v51 = 0;
    v52 = 0xF000000000000000;
    v53 = 0;
LABEL_49:

    v40 = 0;
    v41 = 0xF000000000000000;
LABEL_50:
    *&v60 = v7;
    *(&v60 + 1) = v6;
    *&v61 = v58;
    *(&v61 + 1) = v76;
    *&v62 = v57;
    *(&v62 + 1) = v56;
    *&v63 = v55;
    *(&v63 + 1) = v54;
    LOBYTE(v64) = v18;
    *(&v64 + 1) = v53;
    *&v65 = v52;
    *(&v65 + 1) = v51;
    *&v66 = v50;
    *(&v66 + 1) = v40;
    v67 = v41;
    v68[0] = v7;
    v68[1] = v6;
    v68[2] = v58;
    v68[3] = v76;
    v68[4] = v57;
    v68[5] = v56;
    v68[6] = v55;
    v68[7] = v54;
    v69 = v18;
    v70 = v53;
    v71 = v52;
    v72 = v51;
    v73 = v50;
    v74 = v40;
    v75 = v41;
    sub_10026FD68(&v60, v59);
    result = sub_10026FDA0(v68);
    v42 = v65;
    v43 = v66;
    v44 = v63;
    *(a2 + 64) = v64;
    *(a2 + 80) = v42;
    *(a2 + 96) = v43;
    v45 = v61;
    v46 = v62;
    *a2 = v60;
    *(a2 + 16) = v45;
    *(a2 + 112) = v67;
    *(a2 + 32) = v46;
    *(a2 + 48) = v44;
    return result;
  }

  v19 = sub_10008C908(0x5649736561, 0xE500000000000000);
  if (v20)
  {
    v21 = *(*(v3 + 56) + 8 * v19);
    if (v21 >> 61 == 1)
    {
      v49 = v18;
      v22 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v22, v23);
      goto LABEL_38;
    }

LABEL_35:

    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
    v29 = 0;
    v30 = 0;
    v28 = 1;
    goto LABEL_25;
  }

  v49 = v18;
  v22 = 0;
  v23 = 0xF000000000000000;
LABEL_38:
  v52 = v23;
  v53 = v22;
  if (!*(v3 + 16))
  {
    v50 = 0xF000000000000000;
    v51 = 0;
LABEL_48:
    v18 = v49;
    goto LABEL_49;
  }

  v32 = sub_10008C908(0x6574707972636E65, 0xEC00000079654B64);
  if (v33)
  {
    v34 = *(*(v3 + 56) + 8 * v32);
    if (v34 >> 61 != 1)
    {

      sub_10007FC0C();
      swift_allocError();
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *v47 = 4;
      *(v47 + 24) = 3;
      swift_willThrow();
      v30 = 0;
      v28 = 1;
      v29 = 1;
      goto LABEL_25;
    }

    v35 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v36 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v35, v36);
  }

  else
  {
    v35 = 0;
    v36 = 0xF000000000000000;
  }

  v50 = v36;
  v51 = v35;
  if (!*(v3 + 16))
  {
    goto LABEL_48;
  }

  v37 = sub_10008C908(0xD000000000000011, 0x80000001004696A0);
  if ((v38 & 1) == 0)
  {

    v40 = 0;
    v41 = 0xF000000000000000;
    goto LABEL_53;
  }

  v39 = *(*(v3 + 56) + 8 * v37);

  if (v39 >> 61 == 1)
  {

    v40 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_100069E2C(v40, v41);

LABEL_53:
    v18 = v49;
    goto LABEL_50;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  *v48 = 4;
  *(v48 + 24) = 3;
  swift_willThrow();
  v28 = 1;
  v29 = 1;
  v30 = 1;
LABEL_25:

  sub_10006A178(v7, v6);
  result = sub_10006A178(v58, v76);
  if (v13 == 0x2000000000000000)
  {
    result = sub_10006A178(v57, v56);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (!v28)
  {
LABEL_27:
    if (v29)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v30)
    {
      return result;
    }

    return sub_10006A2D0(v51, v50);
  }

  result = sub_10006A178(v55, v54);
  if ((v29 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = sub_10006A2D0(v53, v52);
  if ((v30 & 1) == 0)
  {
    return result;
  }

  return sub_10006A2D0(v51, v50);
}

unint64_t sub_10026F064@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 4;
    *(v30 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_49;
  }

  result = sub_10008C908(0x655674616D726F66, 0xED00006E6F697372);
  if ((v4 & 1) == 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_50;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0xD00000000000001ALL, 0x8000000100469640);
  if ((v8 & 1) == 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = *(*(v3 + 56) + 8 * result);
  if (v9 >> 61 == 1)
  {
    if (*(v3 + 16))
    {
      v55 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v55, v66);
      result = sub_10008C908(0xD000000000000016, 0x8000000100469660);
      if (v10)
      {
        v11 = *(*(v3 + 56) + 8 * result);
        v54 = v11 & 0xE000000000000000;
        if ((v11 & 0xE000000000000000) != 0x2000000000000000)
        {
          goto LABEL_30;
        }

        if (*(v3 + 16))
        {
          v52 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v53 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_100069E2C(v53, v52);
          result = sub_10008C908(0xD000000000000019, 0x8000000100469680);
          if (v12)
          {
            v13 = *(*(v3 + 56) + 8 * result);
            if (v13 >> 61 == 1)
            {
              if (*(v3 + 16))
              {
                v15 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v14 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                sub_100069E2C(v15, v14);
                result = sub_10008C908(0x617461446174656DLL, 0xE800000000000000);
                if (v16)
                {
                  v17 = *(*(v3 + 56) + 8 * result);
                  v50 = v15;
                  v51 = v14;
                  if (v17 >> 61 != 1)
                  {

                    sub_10007FC0C();
                    swift_allocError();
                    *(v40 + 8) = 0;
                    *(v40 + 16) = 0;
                    *v40 = 4;
                    *(v40 + 24) = 3;
                    swift_willThrow();
                    v37 = 0;
                    v38 = 0;
                    v39 = 0;
                    v36 = 1;
                    goto LABEL_31;
                  }

                  if (*(v3 + 16))
                  {
                    v48 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                    v49 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    sub_100069E2C(v49, v48);
                    result = sub_10008C908(0x6574726568706963, 0xEA00000000007478);
                    if (v18)
                    {
                      v19 = *(*(v3 + 56) + 8 * result);
                      if (v19 >> 61 != 1)
                      {

                        sub_10007FC0C();
                        swift_allocError();
                        *(v41 + 8) = 0;
                        *(v41 + 16) = 0;
                        *v41 = 4;
                        *(v41 + 24) = 3;
                        swift_willThrow();
                        v38 = 0;
                        v39 = 0;
                        v36 = 1;
                        v37 = 1;
                        goto LABEL_31;
                      }

                      if (*(v3 + 16))
                      {
                        v46 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                        v47 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        sub_100069E2C(v47, v46);
                        result = sub_10008C908(0xD000000000000011, 0x80000001004696A0);
                        if (v20)
                        {
                          v21 = *(*(v3 + 56) + 8 * result);
                          if (v21 >> 61 != 1)
                          {

                            sub_10007FC0C();
                            swift_allocError();
                            *(v42 + 8) = 0;
                            *(v42 + 16) = 0;
                            *v42 = 4;
                            *(v42 + 24) = 3;
                            swift_willThrow();
                            v39 = 0;
                            v36 = 1;
                            v37 = 1;
                            v38 = 1;
                            goto LABEL_31;
                          }

                          if (*(v3 + 16))
                          {
                            v44 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                            v45 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                            sub_100069E2C(v45, v44);
                            result = sub_10008C908(0x69537265646E6573, 0xEF65727574616E67);
                            if (v22)
                            {
                              v23 = *(*(v3 + 56) + 8 * result);

                              if (v23 >> 61 == 1)
                              {

                                v24 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v25 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                                sub_100069E2C(v24, v25);

                                *&v57 = v7;
                                *(&v57 + 1) = v6;
                                *&v58 = v55;
                                *(&v58 + 1) = v66;
                                *&v59 = v53;
                                *(&v59 + 1) = v52;
                                *&v60 = v15;
                                *(&v60 + 1) = v51;
                                *&v61 = v49;
                                *(&v61 + 1) = v48;
                                *&v62 = v47;
                                *(&v62 + 1) = v46;
                                *&v63 = v45;
                                *(&v63 + 1) = v44;
                                *&v64 = v24;
                                *(&v64 + 1) = v25;
                                v65[0] = v7;
                                v65[1] = v6;
                                v65[2] = v55;
                                v65[3] = v66;
                                v65[4] = v53;
                                v65[5] = v52;
                                v65[6] = v15;
                                v65[7] = v51;
                                v65[8] = v49;
                                v65[9] = v48;
                                v65[10] = v47;
                                v65[11] = v46;
                                v65[12] = v45;
                                v65[13] = v44;
                                v65[14] = v24;
                                v65[15] = v25;
                                sub_10026FD30(&v57, v56);
                                result = sub_1001F6CAC(v65);
                                v26 = v62;
                                a2[4] = v61;
                                a2[5] = v26;
                                v27 = v64;
                                a2[6] = v63;
                                a2[7] = v27;
                                v28 = v58;
                                *a2 = v57;
                                a2[1] = v28;
                                v29 = v60;
                                a2[2] = v59;
                                a2[3] = v29;
                                return result;
                              }

                              sub_10007FC0C();
                              swift_allocError();
                              *(v43 + 8) = 0;
                              *(v43 + 16) = 0;
                              *v43 = 4;
                              *(v43 + 24) = 3;
                              swift_willThrow();
                              v36 = 1;
                              v37 = 1;
                              v38 = 1;
                              v39 = 1;
LABEL_31:

                              sub_10006A178(v7, v6);
                              result = sub_10006A178(v55, v66);
                              if (v54 == 0x2000000000000000)
                              {
                                result = sub_10006A178(v53, v52);
                                if ((v36 & 1) == 0)
                                {
                                  goto LABEL_33;
                                }
                              }

                              else if (!v36)
                              {
LABEL_33:
                                if (v37)
                                {
                                  goto LABEL_34;
                                }

                                goto LABEL_39;
                              }

                              result = sub_10006A178(v50, v51);
                              if (v37)
                              {
LABEL_34:
                                result = sub_10006A178(v49, v48);
                                if ((v38 & 1) == 0)
                                {
                                  goto LABEL_35;
                                }

                                goto LABEL_40;
                              }

LABEL_39:
                              if (!v38)
                              {
LABEL_35:
                                if (!v39)
                                {
                                  return result;
                                }

LABEL_41:
                                v34 = v44;
                                v33 = v45;
                                return sub_10006A178(v33, v34);
                              }

LABEL_40:
                              result = sub_10006A178(v47, v46);
                              if ((v39 & 1) == 0)
                              {
                                return result;
                              }

                              goto LABEL_41;
                            }

LABEL_63:
                            __break(1u);
                            return result;
                          }

LABEL_62:
                          __break(1u);
                          goto LABEL_63;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_30:

            sub_10007FC0C();
            swift_allocError();
            *(v35 + 8) = 0;
            *(v35 + 16) = 0;
            *v35 = 4;
            *(v35 + 24) = 3;
            swift_willThrow();
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            goto LABEL_31;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *v32 = 4;
  *(v32 + 24) = 3;
  swift_willThrow();

  v33 = v7;
  v34 = v6;
  return sub_10006A178(v33, v34);
}

unint64_t sub_10026F834@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 4;
    *(v22 + 24) = 3;
    swift_willThrow();
  }

  v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_33;
  }

  result = sub_10008C908(1684632949, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 4;
    *(v23 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v2 + 16))
  {
    goto LABEL_34;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x5555746E65726170, 0xEA00000000004449);
  if ((v8 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(*(v2 + 56) + 8 * result);
  if (v9 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = 4;
    *(v24 + 24) = 3;
    swift_willThrow();

    v25 = v7;
    v26 = v6;
    return sub_10006A178(v25, v26);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_36;
  }

  v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v47 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_100069E2C(v47, v10);
  result = sub_10008C908(0x44495344746C61, 0xE700000000000000);
  if ((v11 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = *(*(v2 + 56) + 8 * result);
  v13 = v12 & 0xE000000000000000;
  if ((v12 & 0xE000000000000000) == 0x2000000000000000)
  {
    if (*(v2 + 16))
    {
      *&v34 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v34 + 1) = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_100069E2C(v34, *(&v34 + 1));
      result = sub_10008C908(0x416465776F6C6C61, 0xEA00000000004449);
      if (v14)
      {
        v15 = *(*(v2 + 56) + 8 * result);
        if (v15 >> 61 != 1)
        {

          sub_10007FC0C();
          swift_allocError();
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          *v29 = 4;
          *(v29 + 24) = 3;
          swift_willThrow();
          v28 = 0;
LABEL_24:
          a2 = v34;
          goto LABEL_25;
        }

        if (*(v2 + 16))
        {
          v33 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v31 = v10;
          v32 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          sub_100069E2C(v33, v32);
          result = sub_10008C908(0xD000000000000011, 0x8000000100469620);
          if (v16)
          {
            v17 = *(*(v2 + 56) + 8 * result);

            if (v17 >> 61 == 1)
            {

              v18 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v19 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              sub_100069E2C(v18, v19);

              *&v36 = v7;
              *(&v36 + 1) = v6;
              *&v37 = v47;
              *(&v37 + 1) = v31;
              v38 = v34;
              *&v39 = v33;
              *(&v39 + 1) = v32;
              *&v40 = v18;
              *(&v40 + 1) = v19;
              v41[0] = v7;
              v41[1] = v6;
              v41[2] = v47;
              v41[3] = v31;
              v42 = v34;
              v43 = v33;
              v44 = v32;
              v45 = v18;
              v46 = v19;
              sub_1001F6D00(&v36, v35);
              result = sub_1001F6D5C(v41);
              v20 = v39;
              a2[2] = v38;
              a2[3] = v20;
              a2[4] = v40;
              v21 = v37;
              *a2 = v36;
              a2[1] = v21;
              return result;
            }

            sub_10007FC0C();
            swift_allocError();
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *v30 = 4;
            *(v30 + 24) = 3;
            swift_willThrow();
            v28 = 1;
            v10 = v31;
            goto LABEL_24;
          }

LABEL_41:
          __break(1u);
          return result;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *v27 = 4;
  *(v27 + 24) = 3;
  swift_willThrow();
  v28 = 0;
LABEL_25:

  sub_10006A178(v7, v6);
  result = sub_10006A178(v47, v10);
  if (v13 == 0x2000000000000000)
  {
    result = sub_10006A178(a2, *(&v34 + 1));
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v28)
  {
    return result;
  }

  v26 = v32;
  v25 = v33;
  return sub_10006A178(v25, v26);
}

uint64_t sub_10026FDD0()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));
  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10026FF50@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_10040A530;
  strcpy((result + 32), "formatVersion");
  *(result + 46) = -4864;
  *(result + 48) = 192;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = -64;
  *(result + 88) = &off_1004C46A0;
  *(result + 96) = 0x444955556B6C74;
  *(result + 104) = 0xE700000000000000;
  *(result + 112) = 212;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = -64;
  *(result + 152) = &off_1004C46F0;
  strcpy((result + 160), "clientMetadata");
  *(result + 175) = -18;
  *(result + 176) = 220;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = 0;
  *(result + 208) = -64;
  *(result + 216) = _swiftEmptyArrayStorage;
  *(result + 224) = 0x5649736561;
  *(result + 232) = 0xE500000000000000;
  *(result + 240) = 216;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = -64;
  *(result + 280) = _swiftEmptyArrayStorage;
  *(result + 288) = 0xD000000000000013;
  *(result + 296) = 0x8000000100469720;
  *(result + 304) = 221;
  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 336) = -64;
  *(result + 344) = _swiftEmptyArrayStorage;
  *(result + 352) = 0xD000000000000011;
  *(result + 360) = 0x80000001004696A0;
  *(result + 368) = 218;
  *(result + 376) = 0;
  *(result + 384) = 0;
  *(result + 392) = 0;
  *(result + 400) = -64;
  *(result + 408) = _swiftEmptyArrayStorage;
  *a1 = 230;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_1002700F8@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (result >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = 4;
    *(v25 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  result = sub_10008C908(0x655674616D726F66, 0xED00006E6F697372);
  if ((v4 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v5 = *(*(v3 + 56) + 8 * result);
  if (v5 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = 4;
    *(v26 + 24) = 3;
    swift_willThrow();
  }

  if (!*(v3 + 16))
  {
    goto LABEL_38;
  }

  v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_100069E2C(v7, v6);
  result = sub_10008C908(0x444955556B6C74, 0xE700000000000000);
  if ((v8 & 1) == 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = *(*(v3 + 56) + 8 * result);
  if (v9 >> 61 == 1)
  {
    if (*(v3 + 16))
    {
      v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_100069E2C(v50, v10);
      result = sub_10008C908(0x654D746E65696C63, 0xEE00617461646174);
      if (v11)
      {
        v12 = *(*(v3 + 56) + 8 * result);
        v13 = v12 & 0xE000000000000000;
        if ((v12 & 0xE000000000000000) != 0x2000000000000000)
        {
          goto LABEL_24;
        }

        if (*(v3 + 16))
        {
          v40 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v41 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_100069E2C(v41, v40);
          result = sub_10008C908(0x5649736561, 0xE500000000000000);
          if (v14)
          {
            v15 = *(*(v3 + 56) + 8 * result);
            if (v15 >> 61 == 1)
            {
              v35 = v10;
              if (*(v3 + 16))
              {
                v38 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v39 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                sub_100069E2C(v39, v38);
                result = sub_10008C908(0xD000000000000013, 0x8000000100469720);
                if (v16)
                {
                  v17 = *(*(v3 + 56) + 8 * result);
                  if (v17 >> 61 != 1)
                  {

                    sub_10007FC0C();
                    swift_allocError();
                    *(v33 + 8) = 0;
                    *(v33 + 16) = 0;
                    *v33 = 4;
                    *(v33 + 24) = 3;
                    swift_willThrow();
                    v32 = 0;
                    v31 = 1;
                    goto LABEL_25;
                  }

                  if (*(v3 + 16))
                  {
                    v36 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                    v37 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    sub_100069E2C(v37, v36);
                    result = sub_10008C908(0xD000000000000011, 0x80000001004696A0);
                    if (v18)
                    {
                      v19 = *(*(v3 + 56) + 8 * result);

                      if (v19 >> 61 == 1)
                      {

                        v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v21 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                        sub_100069E2C(v20, v21);

                        *&v43 = v7;
                        *(&v43 + 1) = v6;
                        *&v44 = v50;
                        *(&v44 + 1) = v35;
                        *&v45 = v41;
                        *(&v45 + 1) = v40;
                        *&v46 = v39;
                        *(&v46 + 1) = v38;
                        *&v47 = v37;
                        *(&v47 + 1) = v36;
                        *&v48 = v20;
                        *(&v48 + 1) = v21;
                        v49[0] = v7;
                        v49[1] = v6;
                        v49[2] = v50;
                        v49[3] = v35;
                        v49[4] = v41;
                        v49[5] = v40;
                        v49[6] = v39;
                        v49[7] = v38;
                        v49[8] = v37;
                        v49[9] = v36;
                        v49[10] = v20;
                        v49[11] = v21;
                        sub_1002706E0(&v43, v42);
                        result = sub_10018C4A8(v49);
                        v22 = v46;
                        a2[2] = v45;
                        a2[3] = v22;
                        v23 = v48;
                        a2[4] = v47;
                        a2[5] = v23;
                        v24 = v44;
                        *a2 = v43;
                        a2[1] = v24;
                        return result;
                      }

                      sub_10007FC0C();
                      swift_allocError();
                      *(v34 + 8) = 0;
                      *(v34 + 16) = 0;
                      *v34 = 4;
                      *(v34 + 24) = 3;
                      swift_willThrow();
                      v31 = 1;
                      v32 = 1;
                      v10 = v35;
LABEL_25:

                      sub_10006A178(v7, v6);
                      result = sub_10006A178(v50, v10);
                      if (v13 == 0x2000000000000000)
                      {
                        result = sub_10006A178(v41, v40);
                        if ((v31 & 1) == 0)
                        {
                          goto LABEL_27;
                        }
                      }

                      else if (!v31)
                      {
LABEL_27:
                        if (!v32)
                        {
                          return result;
                        }

LABEL_31:
                        v29 = v36;
                        v28 = v37;
                        return sub_10006A178(v28, v29);
                      }

                      result = sub_10006A178(v39, v38);
                      if ((v32 & 1) == 0)
                      {
                        return result;
                      }

                      goto LABEL_31;
                    }

LABEL_47:
                    __break(1u);
                    return result;
                  }

LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

LABEL_24:

            sub_10007FC0C();
            swift_allocError();
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *v30 = 4;
            *(v30 + 24) = 3;
            swift_willThrow();
            v31 = 0;
            v32 = 0;
            goto LABEL_25;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_10007FC0C();
  swift_allocError();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *v27 = 4;
  *(v27 + 24) = 3;
  swift_willThrow();

  v28 = v7;
  v29 = v6;
  return sub_10006A178(v28, v29);
}

__n128 sub_100270718(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100270744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 104))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100270810(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10027083C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 120))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10027090C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_1002709BC(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1002709F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 152))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100270AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100270B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100270B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100270BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100270C54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100270C70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100270D38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100270D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 128))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100270E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 48))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 40) >> 58) >> 3) & 1 | (2 * ((*(a1 + 40) >> 58) & 4 | (*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = ((-a2 >> 1) & 3) << 60;
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 1) & 7 | (8 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

__n128 sub_100270F14(uint64_t a1, uint64_t a2)
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

uint64_t sub_100270F30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100270F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_100270FFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100271020(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100271074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002710E0()
{
  result = qword_100508AD8;
  if (!qword_100508AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508AD8);
  }

  return result;
}

uint64_t sub_100271134()
{
  sub_1001AF6EC(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100271178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 32))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 24) >> 58) >> 3) & 1 | (2 * ((*(a1 + 24) >> 58) & 4 | (*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002711DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 1) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 1) & 7 | (8 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_100271248(uint64_t result, char a2)
{
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  return result;
}

id sub_1002712A4()
{
  result = [objc_allocWithZone(type metadata accessor for SECReportManager()) init];
  qword_100508AE0 = result;
  return result;
}

uint64_t sub_1002713E8()
{
  v1 = type metadata accessor for SECNetworkController();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 24) = v4;
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v6 = type metadata accessor for SECNetworkConfiguration();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_100271538;

  return sub_1002EA8CC();
}

uint64_t sub_100271538()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100271958;
  }

  else
  {
    v3 = sub_10027164C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10027164C()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B2C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running presentment reporting task", v4, 2u);
  }

  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B858;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1002717D4;
  v7 = *(v0 + 24);

  return sub_1002EF15C(v5);
}

uint64_t sub_1002717D4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100271AF4;
  }

  else
  {
    v3 = sub_1002718E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002718E8()
{
  [*(v0 + 16) setTaskCompleted];
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100271958()
{
  v1 = v0[5];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered when sending daily presentment report, Trying tomorrow", v5, 0xCu);
    sub_1000C2998(v6);
  }

  v8 = v0[2];

  [v8 setTaskCompleted];

  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100271AF4()
{
  v1 = v0[7];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered when sending daily presentment report, Trying tomorrow", v5, 0xCu);
    sub_1000C2998(v6);
  }

  v8 = v0[2];

  [v8 setTaskCompleted];

  v9 = v0[3];

  v10 = v0[1];

  return v10();
}

void sub_100271C90()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1002721D0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004CE6F0;
  v3 = _Block_copy(aBlock);
  [v1 registerForTaskWithIdentifier:v2 usingQueue:0 launchHandler:v3];
  _Block_release(v3);

  v4 = [v0 sharedScheduler];
  v5 = String._bridgeToObjectiveC()();
  aBlock[0] = 0;
  LODWORD(v3) = [v4 cancelTaskRequestWithIdentifier:v5 error:aBlock];

  if (v3)
  {
    v6 = aBlock[0];
  }

  else
  {
    v7 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_1002FFA0C(0xD00000000000002FLL, 0x8000000100460850, aBlock);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to cancel task request %s with error %@", v11, 0x16u);
      sub_1000C2998(v12);

      sub_1000752F4(v13);
    }

    else
    {
    }
  }

  v15 = [v0 sharedScheduler];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 deregisterTaskWithIdentifier:v16];

  if (v17)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B2C8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD00000000000002FLL, 0x8000000100460850, aBlock);
      v23 = "Successfully removed legacy task with identifier %s";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v19, v20, v23, v21, 0xCu);
      sub_1000752F4(v22);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000958E4(v24, qword_10051B2C8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD00000000000002FLL, 0x8000000100460850, aBlock);
      v23 = "Unable to deregister task with identifier %s";
      goto LABEL_17;
    }
  }
}

id sub_1002721D0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v10[4] = sub_1001350DC;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100080830;
  v10[3] = &unk_1004CE740;
  v3 = _Block_copy(v10);
  v4 = a1;

  [v4 setExpirationHandler:v3];
  _Block_release(v3);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "This task should be immediately removed", v8, 2u);
  }

  return [v4 setTaskCompleted];
}

uint64_t sub_100272370()
{
  v0 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1001F9BE8(0, 0, v3, &unk_1004137D8, v5);
}

uint64_t sub_10027247C()
{
  v1 = type metadata accessor for SECNetworkController();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 16) = v4;
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v6 = type metadata accessor for SECNetworkConfiguration();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1002725CC;

  return sub_1002EA8CC();
}

uint64_t sub_1002725CC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002728B8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[5] = v4;
    *v4 = v3;
    v4[1] = sub_100272744;
    v5 = v3[2];

    return sub_1002EE178(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100272744()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100272A44;
  }

  else
  {
    v3 = sub_100272858;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100272858()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002728B8()
{
  v1 = v0[4];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered during heartbeat reporting cancellation task", v7, 0xCu);
    sub_1000C2998(v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100272A44()
{
  v1 = v0[6];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered during heartbeat reporting cancellation task", v7, 0xCu);
    sub_1000C2998(v8);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100272BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for StateInternal();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for StateInternal.Discriminant();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100272CF8, 0, 0);
}

uint64_t sub_100272CF8()
{
  v1 = type metadata accessor for SECNetworkController();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 96) = v4;
  v5 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v6 = type metadata accessor for SECNetworkConfiguration();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v4 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_100272E48;

  return sub_1002EA8CC();
}

uint64_t sub_100272E48()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1002735C4;
  }

  else
  {
    v3 = sub_100272F5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100272F5C()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 120) = qword_10051B858;

  return _swift_task_switch(sub_100272FF4, v1, 0);
}

uint64_t sub_100272FF4()
{
  v2 = v0[14];
  v1 = v0[15];
  v0[16] = sub_100362B68(0, 0);
  v0[17] = v2;
  if (v2)
  {
    v3 = sub_100273780;
  }

  else
  {
    v3 = sub_100273084;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100273084()
{
  v34 = v0;
  v1 = v0[16];
  v33 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v2; i = v0[16])
  {
    v4 = 0;
    v5 = v0[9];
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
    v32 = v1 & 0xC000000000000001;
    v25 = i + 32;
    v29 = enum case for StateInternal.Discriminant.installed(_:);
    v27 = (v0[6] + 8);
    v28 = (v5 + 104);
    v26 = (v5 + 8);
    v30 = v2;
    while (1)
    {
      if (v32)
      {
        v15 = v0[16];
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(v25 + 8 * v4);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v0[10];
      v9 = v0[11];
      v12 = v0[7];
      v11 = v0[8];
      v13 = v0[5];
      (*v28)(v9, v29, v11);
      CredentialInternal.state.getter();
      StateInternal.discriminant.getter();
      (*v27)(v12, v13);
      sub_1002751F8();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v1 = *v26;
      (*v26)(v10, v11);
      (v1)(v9, v11);
      if (v0[2] == v0[3])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = v33[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v33;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v8 == v30)
      {
        v16 = v33;
        v17 = v0[16];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[18] = v16;

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000958E4(v18, qword_10051B2C8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Running heartbeat reporting task", v21, 2u);
  }

  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_1002733F8;
  v23 = v0[12];

  return sub_1002EE178(v16);
}

uint64_t sub_1002733F8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_10027393C;
  }

  else
  {
    v6 = sub_10027352C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10027352C()
{
  [*(v0 + 32) setTaskCompleted];
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002735C4()
{
  v1 = v0[14];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered when sending heartbeat report", v5, 0xCu);
    sub_1000C2998(v6);
  }

  v8 = v0[4];

  [v8 setTaskCompleted];

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100273780()
{
  v1 = v0[17];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered when sending heartbeat report", v5, 0xCu);
    sub_1000C2998(v6);
  }

  v8 = v0[4];

  [v8 setTaskCompleted];

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10027393C()
{
  v1 = v0[20];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %@ encountered when sending heartbeat report", v5, 0xCu);
    sub_1000C2998(v6);
  }

  v8 = v0[4];

  [v8 setTaskCompleted];

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100273B44(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v11 = a1;
  sub_1001F9BE8(0, 0, v8, a3, v10);
}

id sub_100273C7C(void *a1, const char *a2)
{
  if (qword_100501BC8 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return sub_100275044(a1, a2);
}

void sub_100273CE0()
{
  type metadata accessor for SESOnceOnlyTaskManager();

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000958E4(v0, qword_10051B2C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1002FFA0C(0xD000000000000031, 0x8000000100469830, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "Successfully registered one time task %s", v2, 0xCu);
    sub_1000752F4(v3);
  }
}

void sub_100273E60()
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v0 = (qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity);
  if (*(qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity + 16))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_10051B2C8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Vienna presentment reporting task is already scheduled", v3, 2u);
    }
  }

  else
  {
    type metadata accessor for SESScheduledActivityManager();
    sub_100131F30(0, 1, 0, sub_100273AF8, 0, sub_100273B18, 0, v12, v13, 86400.0);
    v4 = *v0;
    v5 = v0[1];
    v6 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v13[1];
    *v0 = v13[0];
    *(v0 + 1) = v10;
    *(v0 + 2) = v13[2];
    sub_100274F1C(v4, v5, v6);
  }
}

void sub_10027415C()
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v0 = (qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity);
  if (*(qword_100508AE0 + OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity + 16))
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_10051B2C8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Vienna heartbeat reporting task is already scheduled", v3, 2u);
    }
  }

  else
  {
    type metadata accessor for SESScheduledActivityManager();
    sub_100131F30(1, 1, 0, sub_100273B24, 0, sub_100273C70, 0, v12, v13, 1296000.0);
    v4 = *v0;
    v5 = v0[1];
    v6 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v13[1];
    *v0 = v13[0];
    *(v0 + 1) = v10;
    *(v0 + 2) = v13[2];
    sub_100274F1C(v4, v5, v6);
  }
}

uint64_t sub_100274474()
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v1 = qword_100508AE0;
  v2 = OBJC_IVAR____TtC10seserviced16SECReportManager_currentPresentmentReportingActivity;
  *(v0 + 64) = qword_100508AE0;
  *(v0 + 72) = v2;
  v3 = v1 + v2;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 40);
    *(v0 + 80) = v5;
    v6 = *(v3 + 24);
    *(v0 + 88) = v6;
    v7 = *(v3 + 8);
    v8 = *v3;
    *(v0 + 40) = v6;
    *(v0 + 16) = v8;
    *(v0 + 17) = BYTE1(v8) & 1;
    *(v0 + 18) = BYTE2(v8) & 1;
    *(v0 + 24) = v7;
    *(v0 + 32) = v4;
    *(v0 + 56) = v5;

    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_10027469C;

    return sub_100133768(0, 0);
  }

  else
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
      _os_log_impl(&_mh_execute_header, v12, v13, "No reporting activity found", v14, 2u);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10027469C(char a1)
{
  v3 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v4 = sub_1002747B0;
  }

  else
  {
    v4 = sub_1002753A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002747B0()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B2C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100134EB4();
    swift_allocError();
    *v9 = v4 & 1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error %@ encountered when cancelling vienna presentment reporting task", v7, 0xCu);
    sub_1000C2998(v8);
  }

  else
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100274984()
{
  if (qword_100501BC8 != -1)
  {
    swift_once();
  }

  v1 = qword_100508AE0;
  v2 = OBJC_IVAR____TtC10seserviced16SECReportManager_currentHeartbeatReportingActivity;
  *(v0 + 64) = qword_100508AE0;
  *(v0 + 72) = v2;
  v3 = v1 + v2;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 40);
    *(v0 + 80) = v5;
    v6 = *(v3 + 24);
    *(v0 + 88) = v6;
    v7 = *(v3 + 8);
    v8 = *v3;
    *(v0 + 40) = v6;
    *(v0 + 16) = v8;
    *(v0 + 17) = BYTE1(v8) & 1;
    *(v0 + 18) = BYTE2(v8) & 1;
    *(v0 + 24) = v7;
    *(v0 + 32) = v4;
    *(v0 + 56) = v5;

    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_100274BBC;

    return sub_100133768(sub_100272370, 0);
  }

  else
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
      _os_log_impl(&_mh_execute_header, v12, v13, "No reporting activity found", v14, 2u);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100274BBC(char a1)
{
  v3 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v4 = sub_100274D64;
  }

  else
  {
    v4 = sub_100274CD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100274CD0()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = (v4 + v3);
  v6 = *(v4 + v3);
  v7 = *(v4 + v3 + 8);
  v8 = *(v4 + v3 + 16);
  v9 = *(v4 + v3 + 24);
  v10 = *(v4 + v3 + 32);
  v11 = *(v4 + v3 + 40);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  sub_100274F1C(v6, v7, v8);
  v12 = v0[1];

  return v12();
}

uint64_t sub_100274D64()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B2C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    sub_100134EB4();
    swift_allocError();
    *v9 = v4 & 1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error %@ encountered when cancelling vienna heartbeat reporting task", v7, 0xCu);
    sub_1000C2998(v8);
  }

  else
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100274F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100274F60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274F98()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000C288C;

  return sub_100272460();
}

id sub_100275044(void *a1, const char *a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  return [a1 setTaskCompleted];
}

uint64_t sub_100275144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100272BD0(a1, v4, v5, v6);
}

unint64_t sub_1002751F8()
{
  result = qword_100508B20;
  if (!qword_100508B20)
  {
    type metadata accessor for StateInternal.Discriminant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100508B20);
  }

  return result;
}

uint64_t sub_100275254()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100275294(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_1002713C8(a1, v4, v5, v6);
}

uint64_t sub_100275348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100275360()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_1002753A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v49 = a3;
  ObjectType = swift_getObjectType();
  v46 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v46);
  v9 = &v44 - v8;
  v10 = type metadata accessor for UUID();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10seserviced15SECAdminSession_remoteNotificationProxy;
  *&v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_remoteNotificationProxy] = 0;
  v15 = OBJC_IVAR____TtC10seserviced15SECAdminSession_useNetworkShim;
  LOBYTE(v51) = 0;
  v54 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  if (*(a1 + 128) == 2 && (v16 = vorrq_s8(vorrq_s8(vorrq_s8(*(a1 + 64), *(a1 + 96)), vorrq_s8(*(a1 + 80), *(a1 + 112))), vorrq_s8(*(a1 + 32), *(a1 + 48))), !(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(a1 + 24) | *(a1 + 16))))
  {
    v26 = &v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo];
    v27 = *(a1 + 112);
    *(v26 + 6) = *(a1 + 96);
    *(v26 + 7) = v27;
    v26[128] = *(a1 + 128);
    v28 = *(a1 + 48);
    *(v26 + 2) = *(a1 + 32);
    *(v26 + 3) = v28;
    v29 = *(a1 + 80);
    *(v26 + 4) = *(a1 + 64);
    *(v26 + 5) = v29;
    v30 = *(a1 + 16);
    *v26 = *a1;
    *(v26 + 1) = v30;
    v31 = &v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionManagementDelegate];
    v32 = v48;
    v33 = v49;
    *v31 = v48;
    *(v31 + 1) = v33;
    sub_100113B54(v32);
    UUID.init()();
    (*(v45 + 32))(&v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionIdentifier], v13, v10);
    v34 = v46;
    (*(v6 + 16))(v9, &v4[v15], v46);
    UserDefaultBacked.wrappedValue.getter();
    (*(v6 + 8))(v9, v34);
    if (v51 == 1)
    {
      v35 = type metadata accessor for SECNetworkShim();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      v38 = swift_allocObject();
      LOBYTE(v51) = 0;
      v54 = 2;
      UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
      v39 = &off_1004D1178;
    }

    else
    {
      v35 = type metadata accessor for SECNetworkController();
      v40 = *(v35 + 48);
      v41 = *(v35 + 52);
      v38 = swift_allocObject();
      v42 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
      v43 = type metadata accessor for SECNetworkConfiguration();
      (*(*(v43 - 8) + 56))(v38 + v42, 1, 1, v43);
      *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
      *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
      *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
      *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
      *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
      *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
      v39 = &off_1004CFF58;
    }

    v52 = v35;
    v53 = v39;
    *&v51 = v38;
    sub_1000BC104(&v51, &v4[OBJC_IVAR____TtC10seserviced15SECAdminSession_networkController]);
    v50.receiver = v4;
    v50.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v50, "init");
    sub_10021C274(v48);
  }

  else
  {
    sub_10012E3A0(a1);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000958E4(v17, qword_10051B2C8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Non-privileged client trying to start admin session", v20, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();
    sub_10021C274(v48);
    v22 = *&v4[v14];
    swift_unknownObjectRelease();
    (*(v6 + 8))(&v4[v15], v46);
    v23 = *((swift_isaMask & *v4) + 0x30);
    v24 = *((swift_isaMask & *v4) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_1002759A4()
{
  v18 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = UUID.uuidString.getter();
    v11 = sub_1002FFA0C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting SECServerAdminSession %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v12 = *(v0 + 40) + OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionManagementDelegate;
  swift_beginAccess();
  v14 = *v12;
  v13 = *(v12 + 8);
  if (*v12)
  {
    v14(*(v0 + 40), 0);
  }

  *v12 = 0;
  *(v12 + 8) = 0;
  swift_endAccess();
  sub_10021C274(v14);
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100275B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100275BB4, 0, 0);
}

uint64_t sub_100275BB4()
{
  v23 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v9 = UUID.uuidString.getter();
    v11 = sub_1002FFA0C(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ending SECServerAdminSession %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v12 = qword_100501A48;
  v13 = *(v0 + 16);
  if (v12 != -1)
  {
    swift_once();
    v13 = *(v0 + 16);
  }

  v14 = qword_10051B398;
  v15 = v13;
  os_unfair_lock_lock((v14 + 16));
  sub_1001B1178((v14 + 24), v15, &off_1004CE768, 4, v14, 0);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 16);
  os_unfair_lock_unlock((v14 + 16));

  sub_1001B0970();
  v17(v19);
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100275E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_100275EC0;

  return sub_100276304(a5);
}

uint64_t sub_100275EC0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100276138;
  }

  else
  {
    v3 = sub_100275FD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100275FD4()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 80) = qword_10051B858;

  return _swift_task_switch(sub_10027606C, v1, 0);
}

uint64_t sub_10027606C()
{
  v1 = *(v0 + 80);
  sub_10032C9E4();

  return _swift_task_switch(sub_1002760D4, 0, 0);
}

uint64_t sub_1002760D4()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100276138()
{
  v20 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %s encountered when deleting credential", v7, 0xCu);
    sub_1000752F4(v8);
  }

  else
  {
  }

  v16 = *(v0 + 56);
  (*(v0 + 48))(v15);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100276304(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002763F4, 0, 0);
}

uint64_t sub_1002763F4()
{
  v34 = v0;
  v1 = *(v0 + 24);
  sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  UserDefaultBacked.wrappedValue.getter();
  if (*(v0 + 248))
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = *(v3 + 32);
    *(v0 + 250) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -(-1 << v4));
    }

    v7 = v5 & *(v3 + 56);
    *(v0 + 168) = OBJC_IVAR____TtC10seserviced15SECAdminSession_sessionIdentifier;

    if (v7)
    {
      v9 = 0;
LABEL_12:
      *(v0 + 176) = v7;
      *(v0 + 184) = v9;
      v20 = *(v0 + 56);
      v21 = *(v0 + 64);
      v22 = *(v0 + 32);
      v23 = *(v8 + 48) + *(v2 + 72) * (__clz(__rbit64(v7)) | (v9 << 6));
      v24 = *(v2 + 16);
      *(v0 + 192) = v24;
      *(v0 + 200) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v24(v21, v23, v22);
      (*(v2 + 32))(v20, v21, v22);
      if (qword_100501C90 != -1)
      {
        swift_once();
      }

      v25 = swift_task_alloc();
      *(v0 + 208) = v25;
      *v25 = v0;
      v25[1] = sub_100276E88;
      v26 = *(v0 + 56);

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

      v27 = *(v0 + 72);
      v28 = *(v0 + 80);
      v30 = *(v0 + 56);
      v29 = *(v0 + 64);
      v31 = *(v0 + 48);

      v32 = *(v0 + 8);

      return v32();
    }
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
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
    *(v0 + 88) = v33[1];
    v16 = swift_allocObject();
    *(v0 + 96) = v16;
    *(v16 + 16) = v10;

    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    *v17 = v0;
    v17[1] = sub_1002767CC;

    return sub_1001FB560(sub_1001FB560, v14, v15, &unk_1004138C8, v16);
  }
}

uint64_t sub_1002767CC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1002776CC;
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    v4 = sub_1002768F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002768F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  *(v0 + 249) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 56);
  *(v0 + 120) = *(v0 + 112);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v6;
    *(v0 + 136) = v8;
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 32);
    (*(v1 + 16))(v11, *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), v12);
    (*(v1 + 32))(v10, v11, v12);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v13 = qword_10051B858;
    *(v0 + 144) = qword_10051B858;

    return _swift_task_switch(sub_100276AE4, v13, 0);
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

    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100276AE4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = sub_10035E904();
  if (v2)
  {
    v0[20] = v2;
    v8 = sub_100276DC4;
  }

  else
  {
    v4 = v3;
    v5 = v0[18];
    v6 = v0[9];
    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[19] = 0;

    v8 = sub_100276BD4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100276BD4()
{
  (*(*(v0 + 40) + 8))(*(v0 + 72), *(v0 + 32));
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  *(v0 + 120) = *(v0 + 152);
  v3 = (v2 - 1) & v2;
  if (v3)
  {
    v4 = *(v0 + 16);
LABEL_7:
    *(v0 + 128) = v3;
    *(v0 + 136) = v1;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    (*(v9 + 16))(v7, *(v4 + 48) + *(v9 + 72) * (__clz(__rbit64(v3)) | (v1 << 6)), v8);
    (*(v9 + 32))(v6, v7, v8);
    if (qword_100501DC8 != -1)
    {
LABEL_15:
      swift_once();
    }

    v10 = qword_10051B858;
    *(v0 + 144) = qword_10051B858;

    return _swift_task_switch(sub_100276AE4, v10, 0);
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

      if (v5 >= (((1 << *(v0 + 249)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 16);
      v3 = *(v4 + 8 * v5 + 56);
      ++v1;
      if (v3)
      {
        v1 = v5;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = *(v0 + 16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100276DC4()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 8))(v1, v2);
  v5 = v0[20];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100276E88()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100277608;
  }

  else
  {
    v3 = sub_100276F9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100276F9C()
{
  v31 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2C8);
  v2(v3, v4, v5);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[21];
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[3];
    v29 = v0[4];
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
    v25 = v0[5];
    v24 = v0[6];
    v26 = v0[4];

    v22 = *(v25 + 8);
    v22(v24, v26);
  }

  v0[28] = v22;
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v27 = qword_10051B858;
  v0[29] = qword_10051B858;

  return _swift_task_switch(sub_100277228, v27, 0);
}

uint64_t sub_100277228()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = sub_10035E904();
  if (v2)
  {
    v0[30] = v2;
    v8 = sub_100277540;
  }

  else
  {
    v4 = v3;
    v5 = v0[29];
    v6 = v0[7];
    v7 = swift_task_alloc();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v8 = sub_100277314;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100277314()
{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 224))(*(v0 + 56), *(v0 + 32));
  v2 = *(v0 + 184);
  v3 = (*(v0 + 176) - 1) & *(v0 + 176);
  if (v3)
  {
    v4 = *(v0 + 16);
LABEL_7:
    *(v0 + 176) = v3;
    *(v0 + 184) = v2;
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v4 + 48) + *(v9 + 72) * (__clz(__rbit64(v3)) | (v2 << 6));
    v11 = *(v9 + 16);
    *(v0 + 192) = v11;
    *(v0 + 200) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v7, v10, v8);
    (*(v9 + 32))(v6, v7, v8);
    if (qword_100501C90 != -1)
    {
LABEL_15:
      swift_once();
    }

    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_100276E88;
    v13 = *(v0 + 56);

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

      if (v5 >= (((1 << *(v0 + 250)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 16);
      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);
    v20 = *(v0 + 16);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100277540()
{
  v1 = v0[28];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];

  v1(v2, v3);
  v6 = v0[30];
  v8 = v0[9];
  v7 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100277608()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 8))(v1, v2);
  v5 = v0[27];
  v7 = v0[9];
  v6 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}