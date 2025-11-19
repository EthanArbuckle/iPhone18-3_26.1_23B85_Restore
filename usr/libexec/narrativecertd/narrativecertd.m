int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for NarrativeCertDaemon();
  swift_allocObject();
  qword_10002D500 = sub_10001900C();
  sub_10001ABA8();
  dispatch_main();
}

uint64_t sub_1000014E4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100001530()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100001588()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000015F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100001700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000017A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000017F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CB80);
  sub_100002AD8(v0, qword_10002CB80);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000018AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000018EC(uint64_t a1)
{
  v2 = sub_1000036A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001928(uint64_t a1)
{
  v2 = sub_1000036A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000019EC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_100003400(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_100003448(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v6;
  v15 = v6[1];
  LOBYTE(v22) = 0;
  v16 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v22 = v6[2];
    v21 = 1;
    sub_100003400(&qword_10002CC90, &qword_100021B30);
    sub_1000035DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v6[3];
    v21 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v6[4];
    v18 = v6[5];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_100001BEC()
{
  v1 = 1701869940;
  v2 = 0xD00000000000001ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_100001C6C(uint64_t a1)
{
  v2 = sub_100003588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001CA8(uint64_t a1)
{
  v2 = sub_100003588();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100001CE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001D2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100001D70()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0x65696B6F6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69616D6F64;
  if (v1 != 1)
  {
    v5 = 7500643;
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

uint64_t sub_100001E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100003E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100001E4C(uint64_t a1)
{
  v2 = sub_10000348C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001E88(uint64_t a1)
{
  v2 = sub_10000348C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001EC4@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v2 = type metadata accessor for String.Encoding();
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  __chkstk_darwin(v2);
  v108 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NarrativeCertRequest();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v107 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for UUID();
  v106 = *(v112 - 1);
  v8 = *(v106 + 64);
  __chkstk_darwin(v112);
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v113 = *(v10 - 8);
  v11 = *(v113 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v95 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v95 - v19;
  __chkstk_darwin(v18);
  v22 = &v95 - v21;
  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100002A80();
  v26 = v1;
  v27 = v115;
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v115 = v27;
  if (!v27)
  {
    v103 = v28;
    v99 = v17;
    v105 = v29;
    v100 = v14;
    v97 = v5;
    v101 = v22;
    v102 = v20;
    v104 = v10;

    if (qword_10002CAD0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_100002AD8(v41, qword_10002CB80);
    v43 = v103;
    v44 = v105;
    sub_100002E74(v103, v105);
    v98 = v42;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    sub_100002EC8(v43, v44);
    v47 = v26;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v117._countAndFlagsBits = v96;
      *v48 = 136446210;
      v49 = Data.base64EncodedString(options:)(0);
      v50 = v43;
      v51 = sub_10001A0F0(v49._countAndFlagsBits, v49._object, &v117._countAndFlagsBits);

      *(v48 + 4) = v51;
      v43 = v50;
      _os_log_impl(&_mh_execute_header, v45, v46, "NarrativeRequest JSON Body: %{public}s", v48, 0xCu);
      sub_100002E28(v96);
    }

    v52 = v104;
    v53 = v112;
    v54 = v113;
    v55 = v111;
    if (qword_10002CB10 != -1)
    {
      swift_once();
    }

    v56._countAndFlagsBits = 0xD00000000000001FLL;
    v56._object = 0x8000000100020710;
    v57.value = preferencesBoolValue(_:domain:)(v56, narrativeCertPrefDomain).value;
    if (v57.value == 2 || !v57.value)
    {
      v80 = v102;
    }

    else
    {
      v58 = [objc_opt_self() defaultManager];
      v59 = [v58 temporaryDirectory];

      v60 = v99;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v106 + 8))(v55, v53);
      v61 = v102;
      URL.appendingPathComponent(_:)();

      v62 = v52;
      v63 = *(v54 + 8);
      v63(v60, v62);
      v64 = v101;
      URL.appendingPathExtension(_:)();
      v112 = v63;
      v63(v61, v62);
      v111 = v47;
      v65 = v107;
      sub_100002F1C(v47, v107);
      v66 = v100;
      (*(v54 + 16))(v100, v64, v62);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      v69 = os_log_type_enabled(v67, v68);
      v106 = v54 + 8;
      if (v69)
      {
        v70 = swift_slowAlloc();
        v117._countAndFlagsBits = swift_slowAlloc();
        *v70 = 136446466;
        v71 = (v65 + *(v97 + 24));
        v72 = v65;
        v73 = *v71;
        v74 = v71[1];

        sub_100002F80(v72);
        v75 = sub_10001A0F0(v73, v74, &v117._countAndFlagsBits);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2082;
        v76 = URL.absoluteString.getter();
        v78 = v77;
        (v112)(v66, v62);
        v79 = sub_10001A0F0(v76, v78, &v117._countAndFlagsBits);

        *(v70 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v67, v68, "Full request to %{public}s logged to: %{public}s", v70, 0x16u);
        swift_arrayDestroy();

        v54 = v113;
      }

      else
      {

        (v112)(v66, v62);
        sub_100002F80(v65);
      }

      v90 = v108;
      v43 = v103;
      v91 = v105;
      v117 = Data.base64EncodedString(options:)(0);
      static String.Encoding.utf8.getter();
      sub_100002FDC();
      v92 = v101;
      v93 = v115;
      StringProtocol.write(to:atomically:encoding:)();
      v94 = v111;
      v115 = v93;
      if (v93)
      {
        sub_100002EC8(v43, v91);
        (*(v109 + 8))(v90, v110);

        (v112)(v92, v104);
        goto LABEL_3;
      }

      (*(v109 + 8))(v90, v110);

      v52 = v104;
      (v112)(v92, v104);
      v80 = v102;
      v47 = v94;
      v44 = v91;
    }

    (*(v54 + 16))(v80, v47, v52);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    result = URLRequest.httpMethod.setter();
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    v81 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      v82 = 0;
      if (v81 != 2)
      {
        goto LABEL_28;
      }

      v84 = *(v43 + 16);
      v83 = *(v43 + 24);
      v85 = __OFSUB__(v83, v84);
      v82 = v83 - v84;
      if (!v85)
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (!v81)
    {
      v82 = BYTE6(v44);
      goto LABEL_28;
    }

    LODWORD(v82) = HIDWORD(v43) - v43;
    if (__OFSUB__(HIDWORD(v43), v43))
    {
      __break(1u);
      return result;
    }

    v82 = v82;
LABEL_28:
    v116 = v82;
    v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v86);

    v87._object = 0xEE006874676E654CLL;
    v87._countAndFlagsBits = 0x2D746E65746E6F43;
    URLRequest.setValue(_:forHTTPHeaderField:)(v117, v87);

    v88._object = 0xEC00000065707954;
    v89.value._object = 0x8000000100020730;
    v89.value._countAndFlagsBits = 0xD000000000000010;
    v88._countAndFlagsBits = 0x2D746E65746E6F43;
    URLRequest.setValue(_:forHTTPHeaderField:)(v89, v88);
    return URLRequest.httpBody.setter();
  }

LABEL_3:
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v117._countAndFlagsBits = 0xD000000000000021;
  v117._object = 0x80000001000206E0;
  swift_getErrorValue();
  v30._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v30);

  countAndFlagsBits = v117._countAndFlagsBits;
  object = v117._object;
  if (qword_10002CAD0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100002AD8(v33, qword_10002CB80);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v117._countAndFlagsBits = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_10001A0F0(countAndFlagsBits, object, &v117._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v36, 0xCu);
    sub_100002E28(v37);
  }

  sub_100002B10();
  v38 = swift_allocError();
  *v39 = countAndFlagsBits;
  *(v39 + 8) = object;
  *(v39 + 16) = 3;
  v115 = v38;
  swift_willThrow();
}

uint64_t type metadata accessor for NarrativeCertRequest()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100002A80()
{
  result = qword_10002CB98;
  if (!qword_10002CB98)
  {
    type metadata accessor for NarrativeCertRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB98);
  }

  return result;
}

uint64_t sub_100002AD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002B10()
{
  result = qword_10002CBA0;
  if (!qword_10002CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBA0);
  }

  return result;
}

uint64_t sub_100002B64(void *a1)
{
  v3 = v1;
  v5 = sub_100003400(&qword_10002CC60, &qword_100021B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  sub_100003448(a1, a1[3]);
  sub_10000348C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = type metadata accessor for NarrativeCertRequest();
  v12 = (v3 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v33) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v33) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v33) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = v21[1];
    v33 = *v21;
    v34 = v22;
    v23 = *(v21 + 2);
    v35 = *(v21 + 1);
    v36 = v23;
    v32 = 3;
    sub_1000034E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = (v3 + v11[9]);
    v25 = v24[1];
    v33 = *v24;
    v34 = v25;
    v26 = *(v24 + 2);
    v35 = *(v24 + 1);
    v36 = v26;
    v32 = 4;
    sub_100003534();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = (v3 + v11[10]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v33) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100002E28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002E74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002EC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NarrativeCertRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002F80(uint64_t a1)
{
  v2 = type metadata accessor for NarrativeCertRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002FDC()
{
  result = qword_10002CBA8;
  if (!qword_10002CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBA8);
  }

  return result;
}

uint64_t *sub_100003030(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000030A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000317C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100003238()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1000032E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000032E0()
{
  if (!qword_10002CC18)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10002CC18);
    }
  }
}

__n128 sub_100003330(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100003358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000033A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003400(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_100003448(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000348C()
{
  result = qword_10002CC68;
  if (!qword_10002CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC68);
  }

  return result;
}

unint64_t sub_1000034E0()
{
  result = qword_10002CC70;
  if (!qword_10002CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC70);
  }

  return result;
}

unint64_t sub_100003534()
{
  result = qword_10002CC78;
  if (!qword_10002CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC78);
  }

  return result;
}

unint64_t sub_100003588()
{
  result = qword_10002CC88;
  if (!qword_10002CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC88);
  }

  return result;
}

unint64_t sub_1000035DC()
{
  result = qword_10002CC98;
  if (!qword_10002CC98)
  {
    sub_100003658(&qword_10002CC90, &qword_100021B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC98);
  }

  return result;
}

uint64_t sub_100003658(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000036A0()
{
  result = qword_10002CCA8;
  if (!qword_10002CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCA8);
  }

  return result;
}

uint64_t sub_100003730(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000037C0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeCertRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NarrativeCertRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000039D4()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

unint64_t sub_100003A2C()
{
  result = qword_10002CCB8;
  if (!qword_10002CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB8);
  }

  return result;
}

unint64_t sub_100003A84()
{
  result = qword_10002CCC0;
  if (!qword_10002CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC0);
  }

  return result;
}

unint64_t sub_100003ADC()
{
  result = qword_10002CCC8;
  if (!qword_10002CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC8);
  }

  return result;
}

unint64_t sub_100003B34()
{
  result = qword_10002CCD0;
  if (!qword_10002CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD0);
  }

  return result;
}

unint64_t sub_100003B8C()
{
  result = qword_10002CCD8;
  if (!qword_10002CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD8);
  }

  return result;
}

unint64_t sub_100003BE4()
{
  result = qword_10002CCE0;
  if (!qword_10002CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE0);
  }

  return result;
}

unint64_t sub_100003C3C()
{
  result = qword_10002CCE8;
  if (!qword_10002CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE8);
  }

  return result;
}

unint64_t sub_100003C94()
{
  result = qword_10002CCF0;
  if (!qword_10002CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCF0);
  }

  return result;
}

uint64_t sub_100003CE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100020790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000207B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001000207D0 == a2)
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

uint64_t sub_100003E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100020750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100020770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65696B6F6F63 && a2 == 0xE600000000000000)
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

uint64_t sub_1000040E8()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CCF8);
  sub_100002AD8(v0, qword_10002CCF8);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100004158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6E6F6973726576;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x80000001000206C0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v7 = 0x80000001000206C0;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100004204()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000428C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100004300()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100004384(void *a1)
{
  v3 = v1;
  v5 = sub_100003400(&qword_10002CE30, &qword_100021F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_100003448(a1, a1[3]);
  sub_100007070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(0) + 20);
    v15[14] = 1;
    type metadata accessor for AttestationBundle();
    sub_1000070C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000450C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100028EA8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10000456C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000206C0;
  v3 = 0x6E6F6973726576;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1000045B0()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_1000045F0@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100028EA8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100004660(uint64_t a1)
{
  v2 = sub_100007070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000469C(uint64_t a1)
{
  v2 = sub_100007070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000046F0(void *a1)
{
  v86 = a1;
  if (&protocol conformance descriptor for GenericAttestor)
  {
    v2 = &protocol witness table for GenericAttestor == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || &type metadata accessor for GenericAttestor == 0 || &nominal type descriptor for GenericAttestor == 0 || &type metadata for GenericAttestor == 0)
  {
    countAndFlagsBits = 0x8000000100020890;
    sub_100002B10();
    swift_allocError();
    *v45 = 0xD000000000000045;
    *(v45 + 8) = 0x8000000100020890;
    *(v45 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v70 = v1;
    v6 = type metadata accessor for GenericAttestor();
    v82 = &v69;
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    GenericAttestor.init()();
    p_isa = sub_100003400(&qword_10002CD68, &qword_100021EB8);
    v85 = swift_allocBox();
    v10 = v9;
    v77 = v9;
    v11 = type metadata accessor for AttestationBundle();
    v75 = *(v11 - 8);
    v76 = (v11 - 8);
    v83 = v75;
    v84 = v11;
    (*(v75 + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v69 = v12 + 16;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
    v72 = dispatch_semaphore_create(0);
    v13 = sub_100003400(&qword_10002CD70, &qword_100021EC0);
    v74 = &v69;
    v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v13 - 8);
    v16 = &v69 - v15;
    v73 = &v69 - v15;
    v17 = type metadata accessor for TaskPriority();
    v18 = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v71 = &v69;
    __chkstk_darwin(v18);
    v19 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = *(v7 + 16);
    v79 = v19;
    v20(v19, v19, v6);
    v21 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    v24 = v72;
    v25 = v85;
    *(v23 + 4) = v72;
    *(v23 + 5) = v25;
    v80 = v7;
    v81 = v6;
    (*(v7 + 32))(&v23[v21], v19, v6);
    v26 = v86;
    *&v23[v22] = v86;
    *&v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8] = v12;
    v27 = v24;

    v28 = v26;
    v29 = v12;
    v30 = v83;

    v31 = v84;
    sub_100005718(0, 0, v73, &unk_100021ED0, v23);

    OS_dispatch_semaphore.wait()();
    v32 = *(v75 + 64);
    __chkstk_darwin(v33);
    v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v77;
    v37 = swift_beginAccess();
    v38 = (*(*(p_isa - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v37);
    v40 = &v69 - v39;
    sub_100006B88(v36, &v69 - v39, &qword_10002CD68, &qword_100021EB8);
    if ((*(v30 + 48))(v40, 1, v31) == 1)
    {
      sub_100006E1C(v40, &qword_10002CD68, &qword_100021EB8);
      swift_beginAccess();
      countAndFlagsBits = *(v29 + 32);
      if (countAndFlagsBits == 255)
      {
        countAndFlagsBits = 0x80000001000208E0;
        sub_100002B10();
        swift_allocError();
        *v61 = 0xD000000000000023;
        *(v61 + 8) = 0x80000001000208E0;
        *(v61 + 16) = 2;
        swift_willThrow();
      }

      else
      {
        v43 = *(v29 + 16);
        v42 = *(v29 + 24);
        sub_100002B10();
        swift_allocError();
        *v44 = v43;
        *(v44 + 8) = v42;
        *(v44 + 16) = countAndFlagsBits;
        swift_willThrow();
        sub_100006A64(v43, v42, countAndFlagsBits);
      }

      (*(v80 + 8))(v79, v81);
    }

    else
    {
      v77 = &v69;
      p_isa = &v27->isa;
      v86 = v29;
      (*(v30 + 32))(v35, v40, v31);
      countAndFlagsBits = type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(0);
      v76 = &v69;
      v46 = *(*(countAndFlagsBits - 8) + 64);
      v47 = __chkstk_darwin(countAndFlagsBits);
      v49 = &v69 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(&v49[*(v47 + 20)], v35, v31);
      *v49 = 49;
      *(v49 + 1) = 0xE100000000000000;
      v50 = type metadata accessor for JSONEncoder();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v53 = JSONEncoder.init()();
      v54 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
      v55 = *(*(v54 - 8) + 64);
      __chkstk_darwin(v54);
      (*(v57 + 104))(&v69 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:));
      dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
      sub_100006AD4();
      v58 = v70;
      v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v58)
      {

        sub_100006B2C(v49);
        (*(v30 + 8))(v35, v31);
        (*(v80 + 8))(v79, v81);
      }

      else
      {
        v75 = v53;
        v63 = v59;
        v64 = v60;
        countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
        sub_100002EC8(v63, v64);
        if (qword_10002CAD8 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100002AD8(v65, qword_10002CCF8);
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "Generated cookie for aquaria-host", v68, 2u);
        }

        sub_100006B2C(v49);
        (*(v83 + 8))(v35, v84);
        (*(v80 + 8))(v79, v81);
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_100005044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a4;
  v8[12] = a6;
  v9 = type metadata accessor for Date();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = sub_100003400(&qword_10002CD68, &qword_100021EB8);
  v8[18] = swift_projectBox();
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_100005154, 0, 0);
}

uint64_t sub_100005154()
{
  v1 = v0[12];
  v2 = type metadata accessor for GenericAttestor();
  v3 = dispatch thunk of Attestor.attestingKey.getter();
  v0[20] = v3;
  v4 = v3;
  v5 = v0[17];
  v6 = v0[12];
  dispatch thunk of Attestor.defaultKeyDuration.getter();
  Duration.timeInterval.getter();
  Date.init(timeIntervalSinceNow:)();
  v7 = async function pointer to dispatch thunk of Attestor.attest(key:using:expiration:nonce:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10000537C;
  v9 = v0[19];
  v10 = v0[17];
  v12 = v0[12];
  v11 = v0[13];

  return dispatch thunk of Attestor.attest(key:using:expiration:nonce:)(v9, v11, v4, v10, 0, 0xF000000000000000, v2, &protocol witness table for GenericAttestor);
}

uint64_t sub_10000537C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[20];
  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v6 = sub_1000055D4;
  }

  else
  {
    v6 = sub_1000054FC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000054FC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = type metadata accessor for AttestationBundle();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_100006DAC(v2, v1);

  v4 = v0[17];
  v5 = v0[11];
  OS_dispatch_semaphore.signal()();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000055D4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[14];

  _StringGuts.grow(_:)(39);
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v4._object = 0x8000000100020910;
  v4._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v4);
  v0[10] = v1;
  sub_100003400(&qword_10002CD80, &unk_100021EF0);
  _print_unlocked<A, B>(_:_:)();

  v5 = v0[8];
  v6 = v0[9];
  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  v9 = *(v3 + 32);
  *(v3 + 32) = 2;
  sub_100006D98(v7, v8, v9);
  v10 = v0[17];
  v11 = v0[11];
  OS_dispatch_semaphore.signal()();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100005718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003400(&qword_10002CD70, &qword_100021EC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100006B88(a3, v27 - v11, &qword_10002CD70, &qword_100021EC0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006E1C(v12, &qword_10002CD70, &qword_100021EC0);
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

      sub_100006E1C(a3, &qword_10002CD70, &qword_100021EC0);

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

  sub_100006E1C(a3, &qword_10002CD70, &qword_100021EC0);
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

id sub_100005A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityAquaria(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005A58(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005B50;

  return v7(a1);
}

uint64_t sub_100005B50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100005C48()
{
  v0 = SecCertificateCopyURIs();
  if (!v0)
  {
    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002AD8(v3, qword_10002CCF8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Failed to parse URI from Aquaria certificate";
    goto LABEL_19;
  }

  v1 = v0;
  v2 = [v0 firstObject];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    sub_100006E1C(&v23, &qword_10002CD88, "H\t");
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002AD8(v11, qword_10002CCF8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Failed to convert Aquaria URI to String";
    goto LABEL_19;
  }

  v8 = SecCertificateCopyDNSNames();
  if (!v8)
  {

    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100002AD8(v13, qword_10002CCF8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Failed to parse DNS names from Aquaria certificate";
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 firstObject];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {

    sub_100006E1C(&v23, &qword_10002CD88, "H\t");
LABEL_31:
    if (qword_10002CAD8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002AD8(v18, qword_10002CCF8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Failed to convert Aquaria DNS name to String";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_20:

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  sub_100003400(&qword_10002CD90, &qword_100021F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021E70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v16;
  *(inited + 80) = v19;
  *(inited + 88) = v20;
  v17 = sub_10001AA94(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002CD98, &qword_100021F08);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_1000060E0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v50 - v16;
  v18 = __chkstk_darwin(v15);
  __chkstk_darwin(v18);
  v21 = v50 - v20;
  if (a1 != 1)
  {

    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v23._countAndFlagsBits = 0xD000000000000036;
    v23._object = 0x8000000100020820;
    String.append(_:)(v23);
    v24._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v24);

    v9 = v57;
    v25 = v58;
    sub_100002B10();
    swift_allocError();
    *v26 = v9;
    *(v26 + 8) = v25;
    *(v26 + 16) = 4;
    swift_willThrow();
    return v9;
  }

  v56 = v19;
  v59 = a2;
  v22 = sub_100008868(1);
  if (v2)
  {

    return v9;
  }

  v55 = v22;
  (*(v6 + 56))(v21, 1, 1, v5);
  v28 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAquaria(0));
  v29 = v56;
  sub_100006B88(v21, v56, &qword_10002CD60, &qword_100021EB0);
  v30 = &v28[qword_10002D550];
  *v30 = 0;
  v30[1] = 0;
  v52 = v30;
  v53 = qword_10002D558;
  *&v28[qword_10002D558] = 0;
  v54 = qword_10002D560;
  *&v28[qword_10002D560] = 0;
  v28[qword_10002D568] = 1;
  sub_100006B88(v29, v17, &qword_10002CD60, &qword_100021EB0);
  v51 = *(v6 + 48);
  if (v51(v17, 1, v5) != 1)
  {
    v38 = *(v6 + 32);
    v38(v9, v17, v5);
    v38(&v28[qword_10002D540], v9, v5);
    v37 = v59;
    goto LABEL_15;
  }

  v50[1] = v6 + 48;
  sub_100006E1C(v17, &qword_10002CD60, &qword_100021EB0);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v31._object = 0xEC0000004C525565;
  v31._countAndFlagsBits = 0x766974617272614ELL;
  v32 = preferencesStringValue(_:domain:)(v31, narrativeCertPrefDomain);
  countAndFlagsBits = 0xD000000000000023;
  if (v32.value._object)
  {
    countAndFlagsBits = v32.value._countAndFlagsBits;
    object = v32.value._object;
  }

  else
  {
    object = 0x8000000100020860;
  }

  v57 = countAndFlagsBits;
  v58 = object;
  v50[0] = object;

  v35._countAndFlagsBits = 47;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v36);

  URL.init(string:)();

  result = (v51)(v14, 1, v5);
  if (result != 1)
  {

    (*(v6 + 32))(&v28[qword_10002D540], v14, v5);
    v37 = v59;
LABEL_15:
    v39 = v52;
    v40 = v52[1];
    *v52 = 0;
    v39[1] = 0;

    v41 = *&v28[v53];
    *&v28[v53] = v37;

    v42 = v55;
    v43 = *&v28[v54];
    *&v28[v54] = v55;
    v44 = v42;

    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v57 = 0x766974617272616ELL;
    v58 = 0xEF2E647472656365;
    v45._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 46;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v47);

    v48 = v58;
    v49 = &v28[qword_10002D548];
    *v49 = v57;
    v49[1] = v48;
    v9 = NarrativeCert.init(domain:identityType:)();

    sub_100006E1C(v56, &qword_10002CD60, &qword_100021EB0);
    sub_100006E1C(v21, &qword_10002CD60, &qword_100021EB0);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000066C4()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_100006708(*(v0 + 16), *(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100006708(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_100006720()
{
  v1 = type metadata accessor for GenericAttestor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100006820(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GenericAttestor() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100006970;

  return sub_100005044(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_100006970()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006A64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_100006A9C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006AD4()
{
  result = qword_10002CD78;
  if (!qword_10002CD78)
  {
    type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD78);
  }

  return result;
}

uint64_t sub_100006B2C(uint64_t a1)
{
  v2 = type metadata accessor for NarrativeIdentityAquaria.AquariaCookie(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006B88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003400(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006BF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007378;

  return sub_100005A58(a1, v5);
}

uint64_t sub_100006CA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006CE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006970;

  return sub_100005A58(a1, v5);
}

uint64_t sub_100006D98(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100006708(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100006DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002CD68, &qword_100021EB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003400(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006E90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttestationBundle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006F50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttestationBundle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100006FF4()
{
  result = type metadata accessor for AttestationBundle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100007070()
{
  result = qword_10002CE38;
  if (!qword_10002CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE38);
  }

  return result;
}

unint64_t sub_1000070C4()
{
  result = qword_10002CE40;
  if (!qword_10002CE40)
  {
    type metadata accessor for AttestationBundle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeIdentity.KeyResidencyAttestationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NarrativeIdentity.KeyResidencyAttestationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007270()
{
  result = qword_10002CE48;
  if (!qword_10002CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE48);
  }

  return result;
}

unint64_t sub_1000072C8()
{
  result = qword_10002CE50;
  if (!qword_10002CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE50);
  }

  return result;
}

unint64_t sub_100007320()
{
  result = qword_10002CE58;
  if (!qword_10002CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE58);
  }

  return result;
}

uint64_t type metadata accessor for NarrativeIdentityAcdc()
{
  result = qword_10002CE78;
  if (!qword_10002CE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007408()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CE60);
  sub_100002AD8(v0, qword_10002CE60);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100007478(void *a1)
{
  v3 = v1;
  v5 = sub_100003400(&qword_10002CED0, &unk_100022138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_100003448(a1, a1[3]);
  sub_100008278();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 2;
    sub_100003400(&qword_10002CC90, &qword_100021B30);
    sub_1000035DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000766C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6961684374726364;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1000076D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100008524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007704(uint64_t a1)
{
  v2 = sub_100008278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100007740(uint64_t a1)
{
  v2 = sub_100008278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100007794()
{
  sub_10000D1B8();
  if (!v1)
  {
    v2 = sub_100010B3C();
    sub_10000800C(v2);

    v3 = type metadata accessor for JSONEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_100008170();
    v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v9 = v8;
    v10 = v6;

    if (qword_10002CAE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002AD8(v11, qword_10002CE60);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Generated cookie for acdc-actor", v14, 2u);
    }

    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_100002EC8(v10, v9);
  }

  return countAndFlagsBits;
}

id sub_10000798C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityAcdc();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000079CC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v48 - v17;
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  if (a1 != 2)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v32._countAndFlagsBits = 0xD000000000000033;
    v32._object = 0x8000000100020970;
    String.append(_:)(v32);
    v33._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v33);

    v7 = v54;
    v34 = v55;
    sub_100002B10();
    swift_allocError();
    *v35 = v7;
    *(v35 + 8) = v34;
    *(v35 + 16) = 4;
    swift_willThrow();
    return v7;
  }

  v21 = sub_100008868(0);
  if (v1)
  {
    return v7;
  }

  v53 = v21;
  v22 = v4[7];
  v56 = v18;
  v22(v20, 1, 1, v3);
  v23 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAcdc());
  sub_100007F34(v20, v56);
  v24 = &v23[qword_10002D550];
  *v24 = 0;
  v24[1] = 0;
  v50 = v24;
  v51 = qword_10002D558;
  *&v23[qword_10002D558] = 0;
  v52 = qword_10002D560;
  *&v23[qword_10002D560] = 0;
  v23[qword_10002D568] = 1;
  sub_100007F34(v56, v15);
  v49 = v4[6];
  if (v49(v15, 1, v3) != 1)
  {
    v36 = v4[4];
    v36(v7, v15, v3);
    v36(&v23[qword_10002D540], v7, v3);
    goto LABEL_14;
  }

  v48 = v4 + 6;
  sub_100007FA4(v15);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v25._object = 0xEC0000004C525565;
  v25._countAndFlagsBits = 0x766974617272614ELL;
  v26 = preferencesStringValue(_:domain:)(v25, narrativeCertPrefDomain);
  countAndFlagsBits = 0xD000000000000023;
  if (v26.value._object)
  {
    countAndFlagsBits = v26.value._countAndFlagsBits;
    object = v26.value._object;
  }

  else
  {
    object = 0x8000000100020860;
  }

  v54 = countAndFlagsBits;
  v55 = object;

  v29._countAndFlagsBits = 47;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v30);

  URL.init(string:)();

  result = (v49)(v12, 1, v3);
  if (result != 1)
  {

    (v4[4])(&v23[qword_10002D540], v12, v3);
LABEL_14:
    v37 = v50;
    v38 = v50[1];
    *v50 = 0;
    v37[1] = 0;

    v39 = *&v23[v51];
    *&v23[v51] = 0;

    v40 = v53;
    v41 = *&v23[v52];
    *&v23[v52] = v53;
    v42 = v40;

    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v54 = 0x766974617272616ELL;
    v55 = 0xEF2E647472656365;
    v43._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 46;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v45);

    v46 = v55;
    v47 = &v23[qword_10002D548];
    *v47 = v54;
    v47[1] = v46;
    v7 = NarrativeCert.init(domain:identityType:)();

    sub_100007FA4(v56);
    sub_100007FA4(v20);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100007F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007FA4(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10000800C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = (a1 + 40);
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v4 = *(v2 - 1);
    v5 = *v2;

    _StringGuts.grow(_:)(56);
    v6._countAndFlagsBits = 0xD00000000000001CLL;
    v6._object = 0x80000001000209B0;
    String.append(_:)(v6);
    v7._countAndFlagsBits = v4;
    v7._object = v5;
    String.append(_:)(v7);

    v8._object = 0x80000001000209D0;
    v8._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100017A8C(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_100017A8C((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = 0;
    *(v11 + 5) = 0xE000000000000000;
    v2 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_100008170()
{
  result = qword_10002CEC8;
  if (!qword_10002CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEC8);
  }

  return result;
}

__n128 sub_1000081C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000081D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100008220(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100008278()
{
  result = qword_10002CED8;
  if (!qword_10002CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NarrativeIdentityAcdc.AcdcCookie.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NarrativeIdentityAcdc.AcdcCookie.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008420()
{
  result = qword_10002CEE0;
  if (!qword_10002CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEE0);
  }

  return result;
}

unint64_t sub_100008478()
{
  result = qword_10002CEE8;
  if (!qword_10002CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEE8);
  }

  return result;
}

unint64_t sub_1000084D0()
{
  result = qword_10002CEF0;
  if (!qword_10002CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEF0);
  }

  return result;
}

uint64_t sub_100008524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000209F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6961684374726364 && a2 == 0xE90000000000006ELL)
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

uint64_t type metadata accessor for NarrativeIdentityAdb()
{
  result = qword_10002CEF8;
  if (!qword_10002CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000086D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityAdb();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008718()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGCopyAnswer();

  if (v1)
  {
    _StringGuts.grow(_:)(18);

    strcpy(v6, "{serialNum:");
    HIBYTE(v6[1]) = -18;
    v6[3] = v1;
    swift_dynamicCast();
    String.append(_:)(v5);

    v2._countAndFlagsBits = 32034;
    v2._object = 0xE200000000000000;
    String.append(_:)(v2);
    return v6[0];
  }

  else
  {
    sub_100002B10();
    swift_allocError();
    *v4 = 0xD00000000000002ELL;
    *(v4 + 8) = 0x8000000100020A80;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100008868(uint64_t a1)
{
  v108 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v105 = v1;
  v106 = v2;
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v107 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v97 - v6;
  v8 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v97 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v97 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v97 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v97 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v97 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v97 - v29;
  __chkstk_darwin(v28);
  v32 = &v97 - v31;
  v33 = v111;
  v34 = sub_100008718();
  if (v33)
  {
    return v21;
  }

  v104 = v27;
  v100 = v15;
  v101 = v24;
  v98 = v12;
  v111 = v32;
  v102 = v21;
  v37 = v107;
  if (v108 == 1)
  {
    v99 = v34;
    v103 = v35;
    v55 = sub_100008868(0);
    v108 = 0;
    v111 = v55;
    v69 = v105;
    v68 = v106;
    v70 = v102;
    (*(v106 + 56))(v102, 1, 1, v105);
    v71 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAdb());
    v72 = v18;
    sub_100007F34(v70, v18);
    v73 = v71 + qword_10002D550;
    *v73 = 0;
    v73[1] = 0;
    v104 = qword_10002D558;
    *(v71 + qword_10002D558) = 0;
    v74 = qword_10002D560;
    *(v71 + qword_10002D560) = 0;
    *(v71 + qword_10002D568) = 1;
    v101 = v72;
    v75 = v100;
    sub_100007F34(v72, v100);
    v76 = *(v68 + 48);
    if (v76(v75, 1, v69) == 1)
    {
      v77 = v76;
      v78 = v74;
      sub_100007FA4(v75);
      if (qword_10002CB10 != -1)
      {
        swift_once();
      }

      v79._countAndFlagsBits = 0x766974617272614ELL;
      v79._object = 0xEC0000004C525565;
      v80 = preferencesStringValue(_:domain:)(v79, narrativeCertPrefDomain);
      countAndFlagsBits = 0xD000000000000023;
      if (v80.value._object)
      {
        countAndFlagsBits = v80.value._countAndFlagsBits;
        object = v80.value._object;
      }

      else
      {
        object = 0x8000000100020860;
      }

      v109 = countAndFlagsBits;
      v110 = object;

      v83._countAndFlagsBits = 47;
      v83._object = 0xE100000000000000;
      String.append(_:)(v83);
      v84._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
      String.append(_:)(v84);

      v85 = v98;
      URL.init(string:)();

      v86 = v105;
      result = v77(v85, 1, v105);
      v87 = v106;
      if (result == 1)
      {
        goto LABEL_29;
      }

      (*(v87 + 32))(v71 + qword_10002D540, v85, v86);
      v54 = v102;
      v74 = v78;
    }

    else
    {
      v88 = v75;
      v89 = *(v68 + 32);
      v89(v37, v88, v69);
      v89(v71 + qword_10002D540, v37, v69);
      v54 = v102;
    }

    v90 = v73[1];
    *v73 = 0;
    v73[1] = 0;

    v91 = *&v104[v71];
    *&v104[v71] = 0;

    v92 = *(v71 + v74);
    v93 = v111;
    *(v71 + v74) = v111;
    v94 = v93;

    v95 = (v71 + qword_10002D548);
    v96 = v103;
    *v95 = v99;
    v95[1] = v96;
    v21 = NarrativeCert.init(domain:identityType:)();

    v67 = v101;
    goto LABEL_27;
  }

  if (v108)
  {

    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v56._countAndFlagsBits = 0xD000000000000032;
    v56._object = 0x8000000100020A40;
    String.append(_:)(v56);
    v57._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v57);

    v58 = v109;
    v59 = v110;
    sub_100002B10();
    v21 = swift_allocError();
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = 4;
    swift_willThrow();
    return v21;
  }

  v99 = v34;
  v103 = v35;
  v108 = 0;
  v39 = v105;
  v38 = v106;
  v40 = v111;
  (*(v106 + 56))(v111, 1, 1, v105);
  v41 = objc_allocWithZone(type metadata accessor for NarrativeIdentityAdb());
  sub_100007F34(v40, v30);
  v42 = v41 + qword_10002D550;
  *v42 = 0;
  v42[1] = 0;
  v107 = qword_10002D558;
  *(v41 + qword_10002D558) = 0;
  v43 = qword_10002D560;
  *(v41 + qword_10002D560) = 0;
  *(v41 + qword_10002D568) = 1;
  v102 = v30;
  v44 = v104;
  sub_100007F34(v30, v104);
  v45 = *(v38 + 48);
  if (v45(v44, 1, v39) != 1)
  {
    v61 = *(v38 + 32);
    v61(v7, v44, v39);
    v61(v41 + qword_10002D540, v7, v39);
    v54 = v111;
    goto LABEL_16;
  }

  v100 = v43;
  sub_100007FA4(v44);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v46._countAndFlagsBits = 0x766974617272614ELL;
  v46._object = 0xEC0000004C525565;
  v47 = preferencesStringValue(_:domain:)(v46, narrativeCertPrefDomain);
  v48 = 0xD000000000000023;
  if (v47.value._object)
  {
    v48 = v47.value._countAndFlagsBits;
    v49 = v47.value._object;
  }

  else
  {
    v49 = 0x8000000100020860;
  }

  v109 = v48;
  v110 = v49;

  v50._countAndFlagsBits = 47;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v51);

  v52 = v101;
  URL.init(string:)();

  v53 = v105;
  result = (v45)(v52, 1, v105);
  if (result != 1)
  {

    (*(v106 + 32))(v41 + qword_10002D540, v52, v53);
    v54 = v111;
    v43 = v100;
LABEL_16:
    v62 = v42[1];
    *v42 = 0;
    v42[1] = 0;

    v63 = *&v107[v41];
    *&v107[v41] = 0;

    v64 = *(v41 + v43);
    *(v41 + v43) = 0;

    v65 = (v41 + qword_10002D548);
    v66 = v103;
    *v65 = v99;
    v65[1] = v66;
    v21 = NarrativeCert.init(domain:identityType:)();
    v67 = v102;
LABEL_27:
    sub_100007FA4(v67);
    sub_100007FA4(v54);
    return v21;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10000912C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v13 = 0;
      _StringGuts.grow(_:)(52);
      v8._countAndFlagsBits = 0xD000000000000016;
      v8._object = 0x8000000100020B40;
      String.append(_:)(v8);
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 0xD00000000000001ALL;
      v10._object = 0x8000000100020B60;
      String.append(_:)(v10);
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      return v13;
    }

    _StringGuts.grow(_:)(21);

    v13 = 0xD000000000000013;
    swift_getErrorValue();
LABEL_6:
    v5._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v5);

    return v13;
  }

  if (a4 == 2)
  {
    _StringGuts.grow(_:)(34);

    v13 = 0xD000000000000020;
    swift_getErrorValue();
    goto LABEL_6;
  }

  result = 0xD000000000000020;
  if (!(a3 | a2 | a1))
  {
    return 0xD000000000000022;
  }

  if (a1 != 1 || a3 | a2)
  {
    return 0xD00000000000001CLL;
  }

  return result;
}

uint64_t sub_10000935C()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002CF48);
  sub_100002AD8(v0, qword_10002CF48);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000093C8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    goto LABEL_9;
  }

  if (!a3 || (v4 = a1, objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
    v4 = 1;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = a3;
  if ([v8 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    if (a2 >> 60 == 15)
    {
      v4 = [v8 statusCode];

      goto LABEL_9;
    }

    sub_100002E74(v4, a2);
    sub_100002E74(v4, a2);
    sub_10000AB58(v4, a2);
    if (!v11)
    {
      v15 = v4;
      v16 = a2;
      sub_100002E74(v4, a2);
      sub_100003400(&qword_10002D058, &qword_100022390);
      if (swift_dynamicCast())
      {
        sub_10000B2F8(v13, v17);
        sub_100003448(v17, v18);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000B27C(v4, a2);
          sub_100003448(v17, v18);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          sub_100002E28(v17);
LABEL_21:
          v12 = [v8 statusCode];

          sub_10000B27C(v4, a2);
          v4 = v12;
          goto LABEL_9;
        }

        sub_100002E28(v17);
      }

      else
      {
        v14 = 0;
        memset(v13, 0, sizeof(v13));
        sub_10000B290(v13);
      }

      sub_10000A934(v4, a2);
    }

    sub_10000B27C(v4, a2);
    goto LABEL_21;
  }

  if (a2 >> 60 == 15)
  {
    v4 = 2;
  }

  else
  {
    sub_100002E74(v4, a2);
  }

LABEL_9:
  swift_errorRetain();
  return v4;
}

uint64_t sub_1000096A8()
{
  type metadata accessor for NarrativeHTTPClient();
  v0 = swift_allocObject();
  result = sub_10000A6DC();
  qword_10002D538 = v0;
  return result;
}

void sub_100009BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[0] = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v57 - 8);
  v7 = v59[8];
  __chkstk_darwin(v57);
  v55 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  isa = v58[-1].isa;
  v9 = *(isa + 8);
  __chkstk_darwin(v58);
  v54 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch_semaphore_create(0);
  swift_beginAccess();
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 41);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v20 = *(a2 + 40);
  *(a2 + 40) = 259;
  sub_10000AEC8(v16, v17, v18, v20, v19);
  v53[1] = *(a3 + 16);
  (*(v12 + 16))(v14, a4, v11);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v12 + 32))(v23 + v21, v14, v11);
  *(v23 + v22) = v15;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v65 = sub_10000B0E8;
  v66 = v23;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10000A5E4;
  v64 = &unk_100029620;
  v24 = _Block_copy(&aBlock);
  v25 = v15;

  v26 = v54;
  static DispatchQoS.unspecified.getter();
  v60 = &_swiftEmptyArrayStorage;
  sub_10000B198(&qword_10002D040, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003400(&qword_10002D048, &qword_100022388);
  sub_10000B1E0(&qword_10002D050, &qword_10002D048, &qword_100022388);
  v27 = v55;
  v28 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (v59[1])(v27, v28);
  (*(isa + 1))(v26, v58);

  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  if (*(a2 + 41) == 1)
  {
    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v31 = *(a2 + 32);
    v32 = *(a2 + 40);
    sub_10000AEFC(v30, v29, v31, v32);
    if (qword_10002CAE8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002AD8(v33, qword_10002CF48);
    sub_10000AEFC(v30, v29, v31, v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_10000AEC8(v30, v29, v31, v32, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v36 = 134218242;
      *(v36 + 4) = v53[0];
      *(v36 + 12) = 2082;
      aBlock = v30;
      v62 = v29;
      v63 = v31;
      LOBYTE(v64) = v32;
      sub_10000A688();
      v58 = v34;
      v37 = Error.localizedDescription.getter();
      v39 = v35;
      v40 = v29;
      v41 = v31;
      v42 = v25;
      v43 = sub_10001A0F0(v37, v38, &v67);

      *(v36 + 14) = v43;
      v25 = v42;
      v31 = v41;
      v29 = v40;
      v34 = v58;
      _os_log_impl(&_mh_execute_header, v58, v39, "attempt #%ld failed: %{public}s", v36, 0x16u);
      sub_100002E28(v59);
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v44 = v30;
        v45 = v29;
        v46 = v31;
        v47 = 2;
        goto LABEL_18;
      }
    }

    else if (v32)
    {
      if (v30 <= 499 || v30 >= 0x258)
      {
        v44 = v30;
        v45 = v29;
        v46 = v31;
        v47 = 1;
LABEL_18:
        sub_10000AEC8(v44, v45, v46, v47, 1);
        goto LABEL_20;
      }

      LOBYTE(v32) = 1;
    }

    sub_10000A688();
    swift_allocError();
    *v52 = v30;
    *(v52 + 8) = v29;
    *(v52 + 16) = v31;
    *(v52 + 24) = v32;
    swift_willThrow();
    goto LABEL_20;
  }

  if (qword_10002CAE8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100002AD8(v48, qword_10002CF48);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v53[0];
    _os_log_impl(&_mh_execute_header, v49, v50, "narrative request succeeded after %ld attempt(s).", v51, 0xCu);
  }

LABEL_20:
}

void sub_10000A344(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedSession];
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_10000B274;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000A51C;
  v11[3] = &unk_100029670;
  v8 = _Block_copy(v11);
  v9 = a2;

  v10 = [v5 dataTaskWithRequest:isa completionHandler:v8];
  _Block_release(v8);

  [v10 resume];
}

Swift::Int sub_10000A48C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1000093C8(a1, a2, a3, a4);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_beginAccess();
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  v16 = *(a6 + 32);
  v17 = *(a6 + 41);
  *(a6 + 16) = v7;
  *(a6 + 24) = v9;
  *(a6 + 32) = v11;
  v18 = *(a6 + 40);
  *(a6 + 40) = v13;
  *(a6 + 41) = HIBYTE(v13) & 1;
  sub_10000AEC8(v14, v15, v16, v18, v17);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10000A51C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_10000B27C(v6, v11);
}

uint64_t sub_10000A5E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000A628()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_10000A688()
{
  result = qword_10002D008;
  if (!qword_10002D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D008);
  }

  return result;
}

uint64_t sub_10000A6DC()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v11 = sub_10000AE38();
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_10000B198(&qword_10002D018, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003400(&qword_10002D020, &unk_100022370);
  sub_10000B1E0(&qword_10002D028, &qword_10002D020, &unk_100022370);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

uint64_t sub_10000A934(uint64_t a1, unint64_t a2)
{
  sub_100002E74(a1, a2);
  v4 = *(sub_10000A9DC(a1, a2) + 2);
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_10000A9A0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10000A9DC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100002EC8(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10001A530(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100002EC8(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10000AB58(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

unint64_t sub_10000AE38()
{
  result = qword_10002D010;
  if (!qword_10002D010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002D010);
  }

  return result;
}

uint64_t sub_10000AE84()
{
  sub_10000AEC8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 41));

  return _swift_deallocObject(v0, 42, 7);
}

uint64_t sub_10000AEC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
    return sub_10000AED4(a1, a2, a3, a4);
  }

  else
  {
    return sub_100002EC8(a1, a2);
  }
}

uint64_t sub_10000AED4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_10000AEFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return swift_errorRetain();
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return swift_errorRetain();
  }
}

unint64_t sub_10000AF24()
{
  result = qword_10002D030;
  if (!qword_10002D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D030);
  }

  return result;
}

uint64_t sub_10000AFCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003400(&qword_10002D038, &qword_100022380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B03C()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_10000B0E8()
{
  v1 = *(type metadata accessor for URLRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10000A344(v0 + v2, v4, v5);
}

uint64_t sub_10000B180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B1E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003658(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000B234()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B27C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002EC8(a1, a2);
  }

  return a1;
}

uint64_t sub_10000B290(uint64_t a1)
{
  v2 = sub_100003400(&qword_10002D060, &qword_100022398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B2F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000B310(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10000B32C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10000B340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000B388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000B3D0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for NarrativeIdentity()
{
  result = qword_10002D080;
  if (!qword_10002D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B450()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000B540()
{
  v2 = v1;
  v3 = type metadata accessor for URLRequest();
  v264 = *(v3 - 8);
  v265 = v3;
  v4 = *(v264 + 64);
  __chkstk_darwin(v3);
  v6 = &v258 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for NarrativeCertRequest();
  v7 = *(*(v266 - 1) + 64);
  __chkstk_darwin(v266);
  v268 = &v258 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100002AD8(v9, qword_10002D068);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v267 = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v288 = v10;
    v17 = v16;
    v270 = v16;
    *v15 = 136446210;
    v18 = NarrativeCert.keychainLabel.getter();
    v20 = sub_10001A0F0(v18, v19, &v270);

    *(v15 + 4) = v20;
    v2 = v1;
    _os_log_impl(&_mh_execute_header, v12, v13, "Creating NarrativeIdentity for %{public}s", v15, 0xCu);
    sub_100002E28(v17);
    v10 = v288;
  }

  v21 = (*((swift_isaMask & *v11) + qword_10002D570 + 272))();
  if (!v2)
  {
    v22 = v21;
    v263 = 0;
    v23 = v11;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v288 = v10;
      v27 = v26;
      v28 = swift_slowAlloc();
      v262 = v22;
      v29 = v28;
      v270 = v28;
      *v27 = 136446210;
      v30 = NarrativeCert.keychainLabel.getter();
      v32 = sub_10001A0F0(v30, v31, &v270);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s created private key", v27, 0xCu);
      sub_100002E28(v29);
      v22 = v262;

      v10 = v288;
    }

    v33 = v263;
    v34 = sub_10000F5F0(v22);
    if (v33)
    {

      return;
    }

    v260 = v34;
    v261 = v35;
    v36 = v23;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v288 = v10;
      v40 = v39;
      v41 = swift_slowAlloc();
      v262 = v22;
      v263 = v41;
      v270 = v41;
      *v40 = 136446210;
      v42 = NarrativeCert.keychainLabel.getter();
      v44 = v36;
      v45 = sub_10001A0F0(v42, v43, &v270);

      *(v40 + 4) = v45;
      v36 = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s created CSR", v40, 0xCu);
      sub_100002E28(v263);
      v22 = v262;

      v10 = v288;
    }

    sub_10000D6BC(v22, &v274);
    v46 = v36;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v288 = v10;
      v50 = v49;
      v263 = swift_slowAlloc();
      v270 = v263;
      *v50 = 136446210;
      LODWORD(v259) = v48;
      v51 = NarrativeCert.keychainLabel.getter();
      v53 = v22;
      v54 = sub_10001A0F0(v51, v52, &v270);

      *(v50 + 4) = v54;
      v22 = v53;
      _os_log_impl(&_mh_execute_header, v47, v259, "%{public}s created identityAttestation", v50, 0xCu);
      sub_100002E28(v263);

      v10 = v288;
    }

    (*((swift_isaMask & *v46) + qword_10002D570 + 232))(&v277, v22);
    v263 = 0;
    v55 = v46;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v288 = v10;
      v59 = v58;
      v60 = swift_slowAlloc();
      v262 = v22;
      v61 = v60;
      v270 = v60;
      *v59 = 136446210;
      v62 = NarrativeCert.keychainLabel.getter();
      v64 = sub_10001A0F0(v62, v63, &v270);

      *(v59 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s created keyAttestation", v59, 0xCu);
      sub_100002E28(v61);
      v22 = v262;

      v10 = v288;
    }

    v65 = v263;
    v66 = (*((swift_isaMask & *v55) + qword_10002D570 + 288))(v22);
    v263 = v65;
    if (v65)
    {
      v287 = v277;
      sub_100011310(&v287);
      v286 = v278;
      sub_100006E1C(&v286, &qword_10002D140, &qword_100022620);
      v285 = *(&v278 + 1);
      sub_100006E1C(&v285, &qword_10002D140, &qword_100022620);
      v284 = v279;
      sub_100006E1C(&v284, &qword_10002D148, qword_100022628);
      v283 = v274;
      sub_100011310(&v283);
      v282 = v275;
      sub_100006E1C(&v282, &qword_10002D140, &qword_100022620);
      v281 = *(&v275 + 1);
      sub_100006E1C(&v281, &qword_10002D140, &qword_100022620);
      v280 = v276;
      sub_100006E1C(&v280, &qword_10002D148, qword_100022628);

      return;
    }

    v68 = v66;
    v259 = v67;
    v69 = v55;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    v72 = os_log_type_enabled(v70, v71);
    v288 = v10;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v270 = v258;
      *v73 = 136446210;
      v74 = NarrativeCert.keychainLabel.getter();
      v76 = v68;
      v77 = v22;
      v78 = sub_10001A0F0(v74, v75, &v270);

      *(v73 + 4) = v78;
      v22 = v77;
      v68 = v76;
      _os_log_impl(&_mh_execute_header, v70, v71, "%{public}s generated cookie", v73, 0xCu);
      sub_100002E28(v258);
      v10 = v288;
    }

    v79 = qword_10002D540;
    v80 = type metadata accessor for URL();
    v81 = v268;
    (*(*(v80 - 8) + 16))(v268, v69 + v79, v80);
    v83 = *(v69 + qword_10002D548);
    v82 = *(v69 + qword_10002D548 + 8);

    NarrativeCert.domain.getter();
    v84 = NarrativeDomain.rawValue.getter();
    v85 = v266;
    v86 = *(v266 + 10);
    v87 = (v81 + *(v266 + 5));
    *v87 = v83;
    v87[1] = v82;
    v88 = (v81 + v85[6]);
    *v88 = v84;
    v88[1] = v89;
    v90 = (v81 + v85[7]);
    *v90 = v260;
    v90[1] = v261;
    v91 = (v81 + v85[8]);
    v92 = v275;
    *v91 = v274;
    v91[1] = v92;
    v93 = v277;
    v91[2] = v276;
    v94 = (v81 + v85[9]);
    v95 = v278;
    v96 = v279;
    *v94 = v93;
    v94[1] = v95;
    v97 = (v81 + v86);
    v94[2] = v96;
    v98 = v259;
    *v97 = v68;
    v97[1] = v98;
    v99 = v69;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();

    v102 = os_log_type_enabled(v100, v101);
    v266 = v99;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v270 = v104;
      *v103 = 136446210;
      v105 = NarrativeCert.keychainLabel.getter();
      v107 = v10;
      v108 = sub_10001A0F0(v105, v106, &v270);

      *(v103 + 4) = v108;
      v10 = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "%{public}s created NarrativeCertRequest", v103, 0xCu);
      sub_100002E28(v104);
    }

    v109 = v267;
    v110 = v263;
    sub_100001EC4(v267);
    v262 = v22;
    if (v110)
    {
      goto LABEL_38;
    }

    v263 = 0;
    v111 = v266;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = v10;
      v116 = swift_slowAlloc();
      v270 = v116;
      *v114 = 136446210;
      v117 = NarrativeCert.keychainLabel.getter();
      v119 = sub_10001A0F0(v117, v118, &v270);

      *(v114 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v112, v113, "%{public}s created NarrativeURLRequest", v114, 0xCu);
      sub_100002E28(v116);
      v10 = v115;

      v109 = v267;
    }

    v120 = v263;
    if (qword_10002CAF0 != -1)
    {
      swift_once();
      v120 = v263;
    }

    v121 = sub_1000096E4(v109);
    v263 = v120;
    if (v120)
    {
      (*(v264 + 8))(v109, v265);
LABEL_37:
      v110 = v263;
LABEL_38:
      v273 = v110;
      v263 = v110;
      swift_errorRetain();
      sub_100003400(&qword_10002CD80, &unk_100021EF0);
      if (swift_dynamicCast())
      {

        v145 = v270;
        v146 = v271;
        v147 = v272;
        v148 = sub_10001B6B4(v270, v271, v272);
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();
        v151 = os_log_type_enabled(v149, v150);
        v267 = v145;
        v265 = v146;
        LODWORD(v264) = v147;
        if (v151)
        {
          v152 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v269[0] = v263;
          *v152 = 136446210;
          v153 = [v148 description];
          v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v156 = v155;

          v157 = sub_10001A0F0(v154, v156, v269);

          *(v152 + 4) = v157;
          _os_log_impl(&_mh_execute_header, v149, v150, "Error createNarrativeIdentity: %{public}s", v152, 0xCu);
          sub_100002E28(v263);
        }

        NarrativeCert.domain.getter();
        v266 = NarrativeCert.identityType.getter();
        v269[0] = [v148 code];
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v160 = v159;
        v161 = [v148 description];
        v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v163 = v162;

        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v261 = v158;
          v167 = v166;
          v288 = swift_slowAlloc();
          v269[0] = v288;
          *v167 = 136446978;
          v168 = NarrativeDomain.rawValue.getter();
          v170 = v148;
          v171 = sub_10001A0F0(v168, v169, v269);

          *(v167 + 4) = v171;
          *(v167 + 12) = 2082;
          v172 = NarrativeIdentityType.rawValue.getter();
          v174 = sub_10001A0F0(v172, v173, v269);

          *(v167 + 14) = v174;
          v148 = v170;
          *(v167 + 22) = 2082;
          *(v167 + 24) = sub_10001A0F0(v261, v160, v269);
          *(v167 + 32) = 2082;
          *(v167 + 34) = sub_10001A0F0(v263, v163, v269);
          _os_log_impl(&_mh_execute_header, v164, v165, "narrative_domain=%{public}s, narrative_id_type=%{public}s, narrative_result=%{public}s, narrative_error=%{public}s", v167, 0x2Au);
          swift_arrayDestroy();
        }

        v175 = v267;
        v176 = v265;
        v177 = v264;
        sub_100002B10();
        swift_allocError();
        *v178 = v175;
        *(v178 + 8) = v176;
        *(v178 + 16) = v177;
        swift_willThrow();

        sub_100002F80(v268);
      }

      else
      {

        v270 = 0;
        v271 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v179._countAndFlagsBits = 0xD000000000000034;
        v179._object = 0x8000000100021060;
        String.append(_:)(v179);
        swift_getErrorValue();
        v180._countAndFlagsBits = Error.localizedDescription.getter();
        String.append(_:)(v180);

        v182 = v270;
        v181 = v271;
        sub_100003400(&qword_10002D0F8, &unk_100022960);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100022440;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v184;
        v270 = v182;
        v271 = v181;
        v272 = 2;

        v185 = String.init<A>(describing:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 48) = v185;
        *(inited + 56) = v186;
        sub_10001B444(inited);
        swift_setDeallocating();
        sub_100006E1C(inited + 32, &qword_10002D100, &qword_1000225E0);
        v187 = objc_allocWithZone(NSError);
        v188 = String._bridgeToObjectiveC()();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v190 = [v187 initWithDomain:v188 code:-3 userInfo:isa];

        v191 = v190;
        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v270 = v195;
          *v194 = 136446210;
          v196 = [v191 description];
          v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v198 = v191;
          v200 = v199;

          v201 = sub_10001A0F0(v197, v200, &v270);
          v191 = v198;

          *(v194 + 4) = v201;
          _os_log_impl(&_mh_execute_header, v192, v193, "Error creating NarrativeIdentity: %{public}s", v194, 0xCu);
          sub_100002E28(v195);
        }

        NarrativeCert.domain.getter();
        v267 = NarrativeCert.identityType.getter();
        v270 = [v191 code];
        v202 = dispatch thunk of CustomStringConvertible.description.getter();
        v204 = v203;
        v205 = [v191 description];
        v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v208 = v207;

        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          v288 = v191;
          v212 = v211;
          v266 = swift_slowAlloc();
          v270 = v266;
          *v212 = 136446978;
          v213 = NarrativeDomain.rawValue.getter();
          v215 = sub_10001A0F0(v213, v214, &v270);
          v265 = v206;
          v216 = v215;

          *(v212 + 4) = v216;
          *(v212 + 12) = 2082;
          v217 = NarrativeIdentityType.rawValue.getter();
          v219 = sub_10001A0F0(v217, v218, &v270);

          *(v212 + 14) = v219;
          *(v212 + 22) = 2082;
          *(v212 + 24) = sub_10001A0F0(v202, v204, &v270);
          *(v212 + 32) = 2082;
          *(v212 + 34) = sub_10001A0F0(v265, v208, &v270);
          _os_log_impl(&_mh_execute_header, v209, v210, "narrative_domain=%{public}s, narrative_id_type=%{public}s, narrative_result=%{public}s, narrative_error=%{public}s", v212, 0x2Au);
          swift_arrayDestroy();

          v191 = v288;
        }

        swift_willThrow();
        sub_100002F80(v268);
      }

      return;
    }

    v122 = v121;
    v123 = v111;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v262;
    v261 = v122;
    if (v126)
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v270 = v129;
      *v128 = 136446210;
      v130 = NarrativeCert.keychainLabel.getter();
      v132 = sub_10001A0F0(v130, v131, &v270);

      *(v128 + 4) = v132;
      _os_log_impl(&_mh_execute_header, v124, v125, "%{public}s retrieved certificates from Narrative server", v128, 0xCu);
      sub_100002E28(v129);
      v122 = v261;

      v10 = v288;
    }

    sub_10001272C(v122);
    v133 = v123;
    v134 = v10;
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v270 = v138;
      *v137 = 136446210;
      v139 = NarrativeCert.keychainLabel.getter();
      v134 = v140;
      v141 = sub_10001A0F0(v139, v140, &v270);

      *(v137 + 4) = v141;
      _os_log_impl(&_mh_execute_header, v135, v136, "%{public}s attempted to add CA chain certs to keychain", v137, 0xCu);
      sub_100002E28(v138);
      v122 = v261;
    }

    if (v122[2])
    {
      v142 = v122[4];
      v143 = v122[5];
      sub_100002E74(v142, v143);

      v144 = v263;
      sub_10000EA04(v127);
      v263 = v144;
      if (v144)
      {
        (*(v264 + 8))(v267, v265);
        sub_100002EC8(v142, v143);
        goto LABEL_37;
      }

      sub_100002EC8(v142, v143);
      v122 = v133;
      v220 = Logger.logObject.getter();
      v221 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v220, v221))
      {
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v270 = v223;
        *v222 = 136446210;
        v224 = NarrativeCert.keychainLabel.getter();
        v226 = sub_10001A0F0(v224, v225, &v270);

        *(v222 + 4) = v226;
        _os_log_impl(&_mh_execute_header, v220, v221, "%{public}s rotated key and cert", v222, 0xCu);
        sub_100002E28(v223);
      }

      v134 = "eNarrativeIdentity: ";
      if (qword_10002CB10 == -1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_52:
    v227._object = (v134 | 0x8000000000000000);
    v227._countAndFlagsBits = 0xD000000000000012;
    v228.value = preferencesBoolValue(_:domain:)(v227, narrativeCertPrefDomain).value;
    if (v228.value == 2 || !v228.value)
    {
      sub_10001D9E8();
      v229 = v122;
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v270 = v233;
        *v232 = 136446210;
        v234 = NarrativeCert.keychainLabel.getter();
        v236 = sub_10001A0F0(v234, v235, &v270);

        *(v232 + 4) = v236;
        _os_log_impl(&_mh_execute_header, v230, v231, "%{public}s registered for refresh", v232, 0xCu);
        sub_100002E28(v233);
      }
    }

    (*(v264 + 8))(v267, v265);
    v237 = v122;
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v270 = v241;
      *v240 = 136446210;
      v242 = NarrativeCert.keychainLabel.getter();
      v244 = sub_10001A0F0(v242, v243, &v270);

      *(v240 + 4) = v244;
      _os_log_impl(&_mh_execute_header, v238, v239, "Successfully created identity for %{public}s", v240, 0xCu);
      sub_100002E28(v241);
    }

    NarrativeCert.domain.getter();
    NarrativeCert.identityType.getter();
    v270 = 0;
    v245 = dispatch thunk of CustomStringConvertible.description.getter();
    v247 = v246;
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v288 = v245;
      v251 = v250;
      v270 = swift_slowAlloc();
      *v251 = 136446978;
      v252 = NarrativeDomain.rawValue.getter();
      v254 = sub_10001A0F0(v252, v253, &v270);

      *(v251 + 4) = v254;
      *(v251 + 12) = 2082;
      v255 = NarrativeIdentityType.rawValue.getter();
      v257 = sub_10001A0F0(v255, v256, &v270);

      *(v251 + 14) = v257;
      *(v251 + 22) = 2082;
      *(v251 + 24) = sub_10001A0F0(v288, v247, &v270);
      *(v251 + 32) = 2082;
      *(v251 + 34) = sub_10001A0F0(1701736302, 0xE400000000000000, &v270);
      _os_log_impl(&_mh_execute_header, v248, v249, "narrative_domain=%{public}s, narrative_id_type=%{public}s, narrative_result=%{public}s, narrative_error=%{public}s", v251, 0x2Au);
      swift_arrayDestroy();
    }

    sub_100002F80(v268);
  }
}

uint64_t sub_10000D1B8()
{
  v1 = v0;
  v33 = 0;
  v2 = SecKeyCopySystemKey();
  if (v2)
  {
    v3 = v2;
    Attestation = SecKeyCreateAttestation();

    if (Attestation)
    {
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100002AD8(v8, qword_10002D068);
      v9 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136446210;
        v14 = NarrativeCert.keychainLabel.getter();
        v16 = sub_10001A0F0(v14, v15, &v31);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "Generated DAK attestation for %{public}s", v12, 0xCu);
        sub_100002E28(v13);
      }

      countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
      sub_100002EC8(v5, v7);
      return countAndFlagsBits;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v18 = 0x8000000100021030;
    v19 = 0xD000000000000023;
  }

  else
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v18 = 0x8000000100021010;
    v19 = 0xD00000000000001ALL;
  }

  v31 = v19;
  v32 = v18;
  v20._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 8250;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E776F6E6B6E75;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);

  countAndFlagsBits = v31;
  v23 = v32;
  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100002AD8(v24, qword_10002D068);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_10001A0F0(countAndFlagsBits, v23, &v31);
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s", v27, 0xCu);
    sub_100002E28(v28);
  }

  sub_100002B10();
  swift_allocError();
  *v29 = countAndFlagsBits;
  *(v29 + 8) = v23;
  *(v29 + 16) = 0;
  swift_willThrow();
  return countAndFlagsBits;
}

void sub_10000D6BC(__SecKey *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  NarrativeCert.identityType.getter();
  v7 = NarrativeIdentityType.rawValue.getter();
  v9 = v8;
  if (v7 == NarrativeIdentityType.rawValue.getter() && v9 == v10)
  {

    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_5:
    v12 = v41;
    (*((swift_isaMask & *v4) + qword_10002D570 + 248))(v41, a1);
    if (v3)
    {
      return;
    }

    goto LABEL_6;
  }

  v16 = *(v4 + qword_10002D560);
  if (v16)
  {
    v17 = qword_10002CAF8;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002AD8(v19, qword_10002D068);
    v20 = v18;
    v21 = v4;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v40[0] = v43;
      *v24 = 136446466;
      v25 = NarrativeCert.keychainLabel.getter();
      v27 = sub_10001A0F0(v25, v26, v40);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = NarrativeCert.keychainLabel.getter();
      v30 = sub_10001A0F0(v28, v29, v40);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s attesting identity request with %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v12 = v42;
    sub_10000DC34(a1, v42);

    if (!v3)
    {
LABEL_6:
      v13 = v12[1];
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      *a2 = *v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
      *(a2 + 32) = v15;
    }
  }

  else
  {
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(111);
    v31._object = 0x8000000100020F90;
    v31._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v31);
    v32._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0xD000000000000043;
    v33._object = 0x8000000100020FC0;
    String.append(_:)(v33);
    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100002AD8(v34, qword_10002D068);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_10001A0F0(0, 0xE000000000000000, v40);
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s", v37, 0xCu);
      sub_100002E28(v38);
    }

    sub_100002B10();
    swift_allocError();
    *v39 = 0;
    *(v39 + 8) = 0xE000000000000000;
    *(v39 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t sub_10000DB84@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + qword_10002D568))
  {
    v4 = 7366003;
  }

  else
  {
    v4 = 1952870259;
  }

  if (*(v1 + qword_10002D568))
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = sub_100010B3C();
  if (v2)
  {
  }

  v7 = v6;
  result = sub_10000D1B8();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = 0;
  a1[3] = v7;
  a1[4] = result;
  a1[5] = v9;
  return result;
}

void sub_10000DC34(__SecKey *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v133 = a1;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 1);
  v9 = v8[8];
  __chkstk_darwin(v7);
  *&v132 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
  v12 = &unk_10002C000;
  if (v11)
  {
    goto LABEL_2;
  }

  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_100002AD8(v70, qword_10002D068);
  v71 = v2;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v136 = v7;
    v131 = v8;
    v75 = v74;
    v129 = swift_slowAlloc();
    v130 = v3;
    v134 = v129;
    *v75 = 136446210;
    v76 = NarrativeCert.keychainLabel.getter();
    v78 = sub_10001A0F0(v76, v77, &v134);

    *(v75 + 4) = v78;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "No existing refs for attestation, creating identity for %{public}s", v75, 0xCu);
    sub_100002E28(v129);
    v4 = v130;

    v8 = v131;
    v7 = v136;
  }

  sub_10000B540();
  v12 = &unk_10002C000;
  if (!v4)
  {
LABEL_2:
    v136 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
    if (v136)
    {
      if (v12[351] != -1)
      {
        swift_once();
      }

      v131 = v8;
      v13 = type metadata accessor for Logger();
      v14 = sub_100002AD8(v13, qword_10002D068);
      v15 = v5;
      v129 = v14;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      v18 = os_log_type_enabled(v16, v17);
      v128 = v11;
      v130 = v4;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v134 = v20;
        *v19 = 136446210;
        v21 = NarrativeCert.keychainLabel.getter();
        v23 = sub_10001A0F0(v21, v22, &v134);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v16, v17, "Attestor refs for %{public}s acquired", v19, 0xCu);
        sub_100002E28(v20);
      }

      v24 = dispatch thunk of NarrativeRefs.certRef.getter();
      v25 = dispatch thunk of NarrativeRefs.keyRef.getter();
      v26 = SecIdentityCreate();

      if (v26)
      {
        v133 = SecKeyCopyPublicKey(v133);
        if (!v133)
        {
          v134 = 0;
          v135 = 0xE000000000000000;
          _StringGuts.grow(_:)(47);

          v134 = 0xD00000000000002DLL;
          v135 = 0x8000000100020ED0;
          v101._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
          String.append(_:)(v101);

          v103 = v134;
          v102 = v135;

          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v134 = v107;
            *v106 = 136446210;
            *(v106 + 4) = sub_10001A0F0(v103, v102, &v134);
            _os_log_impl(&_mh_execute_header, v104, v105, "%{public}s", v106, 0xCu);
            sub_100002E28(v107);
          }

          v98 = v128;
          sub_100002B10();
          swift_allocError();
          *v108 = v103;
          *(v108 + 8) = v102;
          *(v108 + 16) = 0;
          swift_willThrow();

          goto LABEL_37;
        }

        v125 = a2;
        v27 = v132;
        static String.Encoding.utf8.getter();
        v28 = String.data(using:allowLossyConversion:)();
        v30 = v29;
        (v131[1])(v27, v7);
        if (v30 >> 60 == 15)
        {
          goto LABEL_41;
        }

        sub_100003400(&qword_10002D110, &qword_1000225F0);
        v31 = swift_allocObject();
        v132 = xmmword_100022440;
        *(v31 + 16) = xmmword_100022440;
        sub_100003400(&qword_10002D118, &qword_1000225F8);
        v32 = swift_allocObject();
        *(v32 + 16) = v132;
        sub_100003400(&qword_10002D120, &qword_100022600);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_100021E70;
        *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v33 + 40) = v34;
        *(v33 + 48) = 0xD000000000000010;
        *(v33 + 56) = 0x8000000100020F00;
        *(v32 + 32) = v33;
        *(v31 + 32) = v32;
        sub_100003400(&qword_10002D128, &qword_100022608);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v36 = Data._bridgeToObjectiveC()().super.isa;
        *&v132 = isa;
        v37 = SecIdentitySignCertificate();

        v126 = v28;
        v127 = v30;
        if (v37)
        {
          v131 = v26;
          v123 = v37;
          v38 = SecCertificateCopyData(v37);
          v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v42 = dispatch thunk of NarrativeRefs.certRef.getter();
          v43 = SecCertificateCopyData(v42);

          v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v15;
          v47 = v46;

          v121 = v45;
          v48 = dispatch thunk of NarrativeCert.getCertChain()();
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_100022450;
          v124 = v41;
          v50 = v44;
          *(v49 + 32) = Data.base64EncodedString(options:)(0);
          v122 = v47;
          *(v49 + 48) = Data.base64EncodedString(options:)(0);
          v51 = v48[2];
          if (v51)
          {
            v120 = v39;
            v52 = v48[5];
            *(v49 + 64) = v48[4];
            *(v49 + 72) = v52;
            if (v51 != 1)
            {
              v53 = v48[6];
              v54 = v48[7];

              *(v49 + 80) = v53;
              *(v49 + 88) = v54;
              v55 = v121;
              v56 = Logger.logObject.getter();
              v57 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v134 = v59;
                *v58 = 136446210;
                v60 = NarrativeCert.keychainLabel.getter();
                v62 = sub_10001A0F0(v60, v61, &v134);

                *(v58 + 4) = v62;
                _os_log_impl(&_mh_execute_header, v56, v57, "Successfully attested a key with %{public}s", v58, 0xCu);
                sub_100002E28(v59);
              }

              v63 = v128;
              v64 = v132;
              v65 = v124;
              NarrativeCert.identityType.getter();
              v66 = NarrativeIdentityType.rawValue.getter();
              v68 = v67;
              sub_100002EC8(v50, v122);
              sub_100002EC8(v120, v65);

              sub_10000B27C(v126, v127);
              v69 = v125;
              *v125 = v66;
              v69[1] = v68;
              v69[2] = v49;
              v69[3] = 0;
              v69[4] = 0;
              v69[5] = 0;
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        v134 = 0;
        v135 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        v109._countAndFlagsBits = 0xD000000000000016;
        v109._object = 0x8000000100020F20;
        String.append(_:)(v109);
        v110._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
        String.append(_:)(v110);

        v111._object = 0x8000000100020EB0;
        v111._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v111);
        v113 = v134;
        v112 = v135;

        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v134 = v117;
          *v116 = 136446210;
          *(v116 + 4) = sub_10001A0F0(v113, v112, &v134);
          _os_log_impl(&_mh_execute_header, v114, v115, "%{public}s", v116, 0xCu);
          sub_100002E28(v117);
        }

        v98 = v128;
        v118 = v132;
        sub_100002B10();
        swift_allocError();
        *v119 = v113;
        *(v119 + 8) = v112;
        *(v119 + 16) = 0;
        swift_willThrow();

        sub_10000B27C(v126, v127);
        v100 = v133;
      }

      else
      {
        v134 = 0;
        v135 = 0xE000000000000000;
        _StringGuts.grow(_:)(61);
        v89._countAndFlagsBits = 0xD00000000000001FLL;
        v89._object = 0x8000000100020E90;
        String.append(_:)(v89);
        v90._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
        String.append(_:)(v90);

        v91._object = 0x8000000100020EB0;
        v91._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v91);
        v93 = v134;
        v92 = v135;

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v134 = v97;
          *v96 = 136446210;
          *(v96 + 4) = sub_10001A0F0(v93, v92, &v134);
          _os_log_impl(&_mh_execute_header, v94, v95, "%{public}s", v96, 0xCu);
          sub_100002E28(v97);
        }

        v98 = v128;
        sub_100002B10();
        swift_allocError();
        *v99 = v93;
        *(v99 + 8) = v92;
        *(v99 + 16) = 0;
        swift_willThrow();
        v100 = v136;
      }

LABEL_37:
      return;
    }

    v134 = 0;
    v135 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v134 = 0xD00000000000001ALL;
    v135 = 0x8000000100020E50;
    v79._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 0xD000000000000013;
    v80._object = 0x8000000100020E70;
    String.append(_:)(v80);
    v81 = v134;
    v82 = v135;
    if (v12[351] != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_100002AD8(v83, qword_10002D068);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v134 = v87;
      *v86 = 136446210;
      *(v86 + 4) = sub_10001A0F0(v81, v82, &v134);
      _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s", v86, 0xCu);
      sub_100002E28(v87);
    }

    sub_100002B10();
    swift_allocError();
    *v88 = v81;
    *(v88 + 8) = v82;
    *(v88 + 16) = 0;
    swift_willThrow();
  }
}

void sub_10000EA04(void *a1)
{
  v3 = v2;
  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100002AD8(v5, qword_10002D068);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v28[5] = v6;
    v27 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136446210;
    v12 = NarrativeCert.keychainLabel.getter();
    v14 = sub_10001A0F0(v12, v13, v28);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Updating Cert and Key refs for %{public}s", v10, 0xCu);
    sub_100002E28(v11);
    v3 = v2;

    a1 = v27;
  }

  v15 = sub_1000128FC();
  if (!v3)
  {
    v16 = v15;
    sub_10001302C();
    sub_1000138A0(a1);
    v17 = dispatch thunk of NarrativeCert.testKeychain.getter();
    if (v17)
    {

      sub_100013DA4(a1);
    }

    if (v16)
    {
      sub_1000144A4();
      type metadata accessor for CFData(0);
      v28[3] = v18;
      v28[0] = v16;
      v16;
      sub_100015578(v28);
      sub_100002E28(v28);
    }

    v19 = v7;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136446210;
      v24 = NarrativeCert.keychainLabel.getter();
      v26 = sub_10001A0F0(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Cert and Key refs added successfully for %{public}s", v22, 0xCu);
      sub_100002E28(v23);
    }
  }
}

unint64_t sub_10000ED40()
{
  v1 = v0;
  v2 = sub_10001B444(&_swiftEmptyArrayStorage);
  error = 0;
  if (!kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
  if (v4)
  {
    v5 = v4;

    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    type metadata accessor for CFString(0);
    v9 = v8;
    *(inited + 72) = v8;
    *(inited + 48) = kSecAttrTokenIDSecureEnclave;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v10;
    *(inited + 120) = v9;
    *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v11;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 256;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v12;
    v13 = kSecAttrTokenIDSecureEnclave;
    v14 = kSecAttrKeyTypeECSECPrimeRandom;
    v15 = narrativecertdMachServiceName.getter();
    *(inited + 216) = &type metadata for String;
    *(inited + 192) = v15;
    *(inited + 200) = v16;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v17;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_100022440;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    type metadata accessor for SecAccessControl(0);
    *(v18 + 72) = v20;
    *(v18 + 48) = v5;
    v58 = v5;
    v21 = sub_10001B444(v18);
    swift_setDeallocating();
    sub_100006E1C(v18 + 32, &qword_10002D100, &qword_1000225E0);
    *(inited + 264) = sub_100003400(&qword_10002D108, &qword_1000225E8);
    *(inited + 240) = v21;
    sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    sub_100015EB4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3 = SecKeyCreateRandomKey(isa, &error);

    if (v3)
    {

      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002AD8(v23, qword_10002D068);
      v24 = v1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v59 = v28;
        *v27 = 136446210;
        v29 = NarrativeCert.keychainLabel.getter();
        v31 = sub_10001A0F0(v29, v30, &v59);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Successfully created private key for %{public}s", v27, 0xCu);
        sub_100002E28(v28);
      }
    }

    else
    {
      v36 = error;
      if (error)
      {
        v59 = error;
        type metadata accessor for CFError(0);
        sub_100010AF4(&qword_10002D0F0, type metadata accessor for CFError);
        v37 = Error.localizedDescription.getter();
        v39 = v38;
      }

      else
      {
        v37 = 0x6E776F6E6B6E75;

        v39 = 0xE700000000000000;
      }

      _StringGuts.grow(_:)(37);

      v59 = 0xD00000000000001FLL;
      v60 = 0x8000000100020E30;
      v48._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 8250;
      v49._object = 0xE200000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = v37;
      v50._object = v39;
      String.append(_:)(v50);

      v3 = 0x8000000100020E30;
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100002AD8(v51, qword_10002D068);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v59 = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_10001A0F0(0xD00000000000001FLL, 0x8000000100020E30, &v59);
        _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s", v54, 0xCu);
        sub_100002E28(v55);
      }

      sub_100002B10();
      swift_allocError();
      *v56 = 0xD00000000000001FLL;
      *(v56 + 8) = 0x8000000100020E30;
      *(v56 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v32 = error;
    if (error)
    {
      v59 = error;
      type metadata accessor for CFError(0);
      sub_100010AF4(&qword_10002D0F0, type metadata accessor for CFError);
      v33 = Error.localizedDescription.getter();
      v35 = v34;
    }

    else
    {
      v33 = 0x6E776F6E6B6E75;

      v35 = 0xE700000000000000;
    }

    _StringGuts.grow(_:)(49);

    v59 = 0xD00000000000002BLL;
    v60 = 0x8000000100020E00;
    v40._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 8250;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v33;
    v42._object = v35;
    String.append(_:)(v42);

    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100002AD8(v43, qword_10002D068);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v3 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v59 = v46;
      *v3 = 136446210;
      *(v3 + 4) = sub_10001A0F0(0xD00000000000002BLL, 0x8000000100020E00, &v59);
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s", v3, 0xCu);
      sub_100002E28(v46);
    }

    sub_100002B10();
    swift_allocError();
    *v47 = 0xD00000000000002BLL;
    *(v47 + 8) = 0x8000000100020E00;
    *(v47 + 16) = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t *sub_10000F5F0(__SecKey *a1)
{
  v3 = v1;
  v4 = SecKeyCopyPublicKey(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *&v1[qword_10002D558];
    if (v6)
    {
      sub_100003400(&qword_10002D0D8, &qword_1000225C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100022440;
      v8 = kSecSubjectAltName;
      *(inited + 32) = kSecSubjectAltName;
      *(inited + 40) = v6;
      v9 = v8;

      sub_10001B5BC(inited);
      swift_setDeallocating();
      sub_100006E1C(inited + 32, &qword_10002D0E0, &qword_1000225C8);
      type metadata accessor for CFString(0);
      sub_100003400(&qword_10002D0E8, &unk_1000225D0);
      sub_100010AF4(&qword_10002CB50, type metadata accessor for CFString);
      v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v10.super.isa = 0;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
    CertificateRequest = SecGenerateCertificateRequest();

    if (CertificateRequest)
    {
      v43 = v10.super.isa;
      v19 = CertificateRequest;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v23._countAndFlagsBits;
      sub_100002EC8(v20, v22);
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100002AD8(v24, qword_10002D068);
      v25 = v3;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v40 = v19;
        v28 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v28 = 136446466;
        v29 = NarrativeCert.keychainLabel.getter();
        v31 = sub_10001A0F0(v29, v30, &v41);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2082;
        *(v28 + 14) = sub_10001A0F0(v23._countAndFlagsBits, v23._object, &v41);
        _os_log_impl(&_mh_execute_header, v26, v27, "NarrativeRequest CSR for %{public}s: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      _StringGuts.grow(_:)(25);

      v41 = 0xD000000000000017;
      v42 = 0x8000000100020DE0;
      v32._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v32);

      countAndFlagsBits = 0x8000000100020DE0;
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100002AD8(v33, qword_10002D068);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41 = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_10001A0F0(0xD000000000000017, 0x8000000100020DE0, &v41);
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s", v36, 0xCu);
        sub_100002E28(v37);
      }

      sub_100002B10();
      swift_allocError();
      *v38 = 0xD000000000000017;
      *(v38 + 8) = 0x8000000100020DE0;
      *(v38 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v41 = 0xD00000000000001ELL;
    v42 = 0x8000000100020DC0;
    v11._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v11);

    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100002AD8(v12, qword_10002D068);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      countAndFlagsBits = swift_slowAlloc();
      v41 = countAndFlagsBits;
      *v15 = 136446210;
      *(v15 + 4) = sub_10001A0F0(0xD00000000000001ELL, 0x8000000100020DC0, &v41);
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v15, 0xCu);
      sub_100002E28(countAndFlagsBits);
    }

    sub_100002B10();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    *(v16 + 8) = 0x8000000100020DC0;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return countAndFlagsBits;
}

uint64_t sub_10000FCAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D068);
  sub_100002AD8(v0, qword_10002D068);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FD14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7366003;
  }

  else
  {
    v4 = 1952870259;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7366003;
  }

  else
  {
    v6 = 1952870259;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10000FDAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000FE20()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000FE80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000FEF0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100028EF8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10000FF50(uint64_t *a1@<X8>)
{
  v2 = 1952870259;
  if (*v1)
  {
    v2 = 7366003;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000FF80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10001001C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003400(&qword_10002D138, &qword_100022618);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000112A4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100011300(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100011300(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100011300(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100011300(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Int sub_1000102E4(uint64_t a1, __SecCertificate *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2 && a1 && (v11 = *(a1 + 16)) != 0)
  {
    v13 = a1 + 32;
    do
    {
      sub_1000112A4(v13, v43);
      type metadata accessor for SecCertificate(0);
      swift_dynamicCast();
      v14 = certificate;
      v15 = SecCertificateCopyData(certificate);

      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = Data.base64EncodedString(options:)(0);
      if (qword_10002CAF8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100002AD8(v20, qword_10002D068);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = String.count.getter();

        _os_log_impl(&_mh_execute_header, v21, v22, "Retrieved DCRT of length: %ld", v23, 0xCu);
      }

      else
      {
      }

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v43[0] = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_10001A0F0(v19._countAndFlagsBits, v19._object, v43);
        _os_log_impl(&_mh_execute_header, v24, v25, "DCRT Body: %{public}s", v26, 0xCu);
        sub_100002E28(v27);
      }

      swift_beginAccess();
      v28 = *(a7 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a7 + 16) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_100017A8C(0, *(v28 + 2) + 1, 1, v28);
        *(a7 + 16) = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_100017A8C((v30 > 1), v31 + 1, 1, v28);
      }

      *(v28 + 2) = v31 + 1;
      *&v28[16 * v31 + 32] = v19;
      *(a7 + 16) = v28;
      swift_endAccess();
      sub_100002EC8(v16, v18);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  else
  {
    v32 = sub_10000AD04(a4);
    if (qword_10002CAF8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002AD8(v33, qword_10002D068);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43[0] = v37;
      *v36 = 134218754;
      *(v36 + 4) = a4;
      *(v36 + 12) = 2048;
      *(v36 + 14) = a5;
      *(v36 + 22) = 2048;
      *(v36 + 24) = v32;
      *(v36 + 32) = 2082;
      certificate = a2;
      swift_errorRetain();
      sub_100003400(&qword_10002D130, &qword_100022610);
      v38 = String.init<A>(describing:)();
      v40 = sub_10001A0F0(v38, v39, v43);

      *(v36 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error issuing DCRT on attempt %ld/%ld, sleeping %f: %{public}s", v36, 0x2Au);
      sub_100002E28(v37);
    }

    swift_beginAccess();
    v41 = *(a6 + 16);
    *(a6 + 16) = a2;
    swift_errorRetain();

    [objc_opt_self() sleepForTimeInterval:v32];
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_100010800()
{
  v1 = qword_10002D540;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10002D548 + 8);

  v4 = *(v0 + qword_10002D550 + 8);

  v5 = *(v0 + qword_10002D558);

  v10 = *(v0 + qword_10002D560);
  *(v0 + qword_10002D560) = 0;
  v6 = v10;
  v7 = v10;
  if (v10)
  {
    while (1)
    {
      v11 = v7;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v8 = *&v11[qword_10002D560];
      v9 = v8;

      v7 = v8;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v7 = v11;
  }

LABEL_6:
}

id sub_10001090C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100010944(uint64_t a1)
{
  v2 = qword_10002D540;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_10002D548 + 8);

  v5 = *(a1 + qword_10002D550 + 8);

  v6 = *(a1 + qword_10002D558);

  v11 = *(a1 + qword_10002D560);
  *(a1 + qword_10002D560) = 0;
  v7 = v11;
  v8 = v11;
  if (v11)
  {
    while (1)
    {
      v12 = v8;

      if (!swift_isUniquelyReferenced())
      {
        break;
      }

      v9 = *&v12[qword_10002D560];
      v10 = v9;

      v8 = v9;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v8 = v12;
  }

LABEL_6:
}

unint64_t sub_100010A70()
{
  result = qword_10002D0D0;
  if (!qword_10002D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D0D0);
  }

  return result;
}

uint64_t sub_100010AC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100010AF4(unint64_t *a1, void (*a2)(uint64_t))
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

NSObject *sub_100010B3C()
{
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021E70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v3;
  *(inited + 48) = 60;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  v33 = sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v5._countAndFlagsBits = 0x797274655278614DLL;
  v5._object = 0xED0000746E756F43;
  v42 = preferencesIntegerValue(_:domain:)(v5, narrativeCertPrefDomain);
  if (v42.is_nil)
  {
    value = 10;
  }

  else
  {
    value = v42.value;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  v8 = v7 + 16;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v31 = dispatch_semaphore_create(0);
  if (value < 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_22;
  }

  swift_beginAccess();
  swift_beginAccess();
  v9 = 0;
  v30 = (v34 + 16);
  v10 = *(v34 + 16);
  v32 = v7;
  while (1)
  {
    *(v34 + 16) = 0;

    sub_10001001C(v33);
    v11 = swift_allocObject();
    v11[2] = v31;
    v11[3] = v9;
    v12 = value;
    v11[4] = value;
    v11[5] = v34;
    v11[6] = v7;
    v13 = v31;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v40 = sub_10001127C;
    v41 = v11;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_10000FF80;
    v39 = &unk_100029830;
    v15 = _Block_copy(&aBlock);

    MAEIssueDCRTWithCompletion();
    _Block_release(v15);

    v0 = v13;
    OS_dispatch_semaphore.wait()();
    if (!*(v34 + 16) || *(*v8 + 16))
    {
      break;
    }

    if (v12 == v9)
    {

      v18 = v32;
      goto LABEL_20;
    }

    value = v12;
    v16 = __OFADD__(v9++, 1);
    v7 = v32;
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  if (qword_10002CAF8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100002AD8(v17, qword_10002D068);
  v18 = v32;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *(*(v32 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, "Retrieved DCRT chain of length %ld", v21, 0xCu);
  }

  else
  {
  }

LABEL_20:
  if (!*v30 && *(*v8 + 16))
  {

    v24 = *(v18 + 16);

    return v24;
  }

  aBlock = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  aBlock = 0xD000000000000029;
  v37 = 0x8000000100020F60;
  v35 = *v30;
  swift_errorRetain();
  sub_100003400(&qword_10002D130, &qword_100022610);
  v22._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v22);

  v1 = aBlock;
  value = v37;
  if (qword_10002CAF8 != -1)
  {
    goto LABEL_29;
  }

LABEL_22:
  v23 = type metadata accessor for Logger();
  sub_100002AD8(v23, qword_10002D068);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_10001A0F0(v1, value, &aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s", v26, 0xCu);
    sub_100002E28(v27);
  }

  sub_100002B10();
  swift_allocError();
  *v28 = v1;
  *(v28 + 8) = value;
  *(v28 + 16) = 0;
  swift_willThrow();

  return v24;
}

uint64_t sub_1000111C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000111FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011234()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001128C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000112A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100011300(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for NarrativeIdentityExample()
{
  result = qword_10002D168;
  if (!qword_10002D168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011408()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D150);
  sub_100002AD8(v0, qword_10002D150);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

SecKeyRef sub_10001147C()
{
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100021E70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  type metadata accessor for CFString(0);
  *(inited + 72) = v2;
  *(inited + 48) = kSecAttrKeyTypeECSECPrimeRandom;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 256;
  v4 = kSecAttrKeyTypeECSECPrimeRandom;
  sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  sub_100015EB4();
  error = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = SecKeyCreateRandomKey(isa, &error);

  if (v6)
  {
  }

  else
  {
    v7 = error;
    if (error)
    {
      v21[0] = error;
      type metadata accessor for CFError(0);
      sub_1000126BC();
      v8 = Error.localizedDescription.getter();
      v10 = v9;
    }

    else
    {

      v10 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    _StringGuts.grow(_:)(37);

    v21[0] = 0xD00000000000001FLL;
    v21[1] = 0x8000000100020E30;
    v11._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v8;
    v13._object = v10;
    String.append(_:)(v13);

    if (qword_10002CB00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002AD8(v14, qword_10002D150);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10001A0F0(0xD00000000000001FLL, 0x8000000100020E30, v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
      sub_100002E28(v18);
    }

    sub_100002B10();
    swift_allocError();
    *v19 = 0xD00000000000001FLL;
    *(v19 + 8) = 0x8000000100020E30;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  return v6;
}

double sub_100011838@<D0>(uint64_t a1@<X8>)
{
  v2 = 1952870259;
  if (*(v1 + qword_10002D568))
  {
    v2 = 7366003;
  }

  v3 = 0xE400000000000000;
  if (*(v1 + qword_10002D568))
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

id sub_10001187C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NarrativeIdentityExample();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000118BC(uint64_t a1, void *a2)
{
  v152 = a2;
  v3 = sub_100003400(&qword_10002CD60, &qword_100021EB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v141 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v143 = &v138 - v8;
  v9 = __chkstk_darwin(v7);
  v150 = &v138 - v10;
  v11 = __chkstk_darwin(v9);
  v149 = &v138 - v12;
  v13 = __chkstk_darwin(v11);
  v139 = &v138 - v14;
  v15 = __chkstk_darwin(v13);
  v142 = &v138 - v16;
  v17 = __chkstk_darwin(v15);
  v148 = &v138 - v18;
  v19 = __chkstk_darwin(v17);
  v147 = &v138 - v20;
  v21 = __chkstk_darwin(v19);
  v140 = &v138 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v138 - v24;
  v26 = __chkstk_darwin(v23);
  v146 = &v138 - v27;
  v28 = __chkstk_darwin(v26);
  v145 = &v138 - v29;
  __chkstk_darwin(v28);
  v31 = &v138 - v30;
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v138 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v138 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v138 - v41;
  __chkstk_darwin(v40);
  v44 = &v138 - v43;
  v154 = 0;
  v155 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v154 = 0xD000000000000029;
  v155 = 0x80000001000210F0;
  v45._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v45);

  URL.init(string:)();
  v46 = v32;
  v47 = v33;

  v153 = *(v33 + 48);
  result = v153(v31, 1, v46);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v49 = v31;
  v50 = v33 + 32;
  v151 = *(v33 + 32);
  result = v151(v44, v49, v46);
  if (a1 == 2)
  {
    v82 = sub_1000118BC(1, 0);
    v83 = v44;
    v84 = v82;
    v85 = *(v33 + 16);
    v86 = v149;
    v148 = v83;
    v85(v149);
    (*(v47 + 56))(v86, 0, 1, v46);
    v87 = objc_allocWithZone(type metadata accessor for NarrativeIdentityExample());
    v88 = v86;
    v89 = v150;
    sub_100007F34(v88, v150);
    v90 = &v87[qword_10002D550];
    *v90 = 0;
    v90[1] = 0;
    v91 = qword_10002D558;
    *&v87[qword_10002D558] = 0;
    v92 = qword_10002D560;
    *&v87[qword_10002D560] = 0;
    v87[qword_10002D568] = 0;
    v93 = v89;
    v94 = v143;
    sub_100007F34(v93, v143);
    if (v153(v94, 1, v46) == 1)
    {
      v146 = v50;
      v144 = v47;
      sub_100007FA4(v94);
      if (qword_10002CB10 != -1)
      {
        swift_once();
      }

      v95._object = 0xEC0000004C525565;
      v95._countAndFlagsBits = 0x766974617272614ELL;
      v96 = preferencesStringValue(_:domain:)(v95, narrativeCertPrefDomain);
      countAndFlagsBits = 0xD000000000000023;
      if (v96.value._object)
      {
        countAndFlagsBits = v96.value._countAndFlagsBits;
        object = v96.value._object;
      }

      else
      {
        object = 0x8000000100020860;
      }

      v154 = countAndFlagsBits;
      v155 = object;

      v99._countAndFlagsBits = 47;
      v99._object = 0xE100000000000000;
      String.append(_:)(v99);
      v100._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
      String.append(_:)(v100);

      v101 = v141;
      URL.init(string:)();

      result = v153(v101, 1, v46);
      if (result == 1)
      {
        goto LABEL_39;
      }

      v47 = v144;
      v151(&v87[qword_10002D540], v141, v46);
    }

    else
    {
      v117 = v138;
      v118 = v94;
      v119 = v151;
      v151(v138, v118, v46);
      v119(&v87[qword_10002D540], v117, v46);
    }

    v120 = v90[1];
    *v90 = 0;
    v90[1] = 0;

    v121 = *&v87[v91];
    *&v87[v91] = 0;

    v105 = v46;
    v122 = *&v87[v92];
    *&v87[v92] = v84;
    v123 = v84;

    v154 = 0;
    v155 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v154 = 0x766974617272616ELL;
    v155 = 0xEF2E647472656365;
    v124._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v124);

    v125._countAndFlagsBits = 46;
    v125._object = 0xE100000000000000;
    String.append(_:)(v125);
    v126._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v126);

    v127 = v155;
    v128 = &v87[qword_10002D548];
    *v128 = v154;
    v128[1] = v127;
    v114 = NarrativeCert.init(domain:identityType:)();

    v116 = v149;
    v115 = v150;
    v65 = v152;
    v44 = v148;
    goto LABEL_35;
  }

  v144 = v33;
  if (a1 == 1)
  {
    v150 = sub_1000118BC(0, 0);
    v66 = v147;
    (*(v33 + 16))(v147, v44, v46);
    (*(v33 + 56))(v66, 0, 1, v46);
    v67 = objc_allocWithZone(type metadata accessor for NarrativeIdentityExample());
    v68 = v66;
    v69 = v148;
    sub_100007F34(v68, v148);
    v70 = &v67[qword_10002D550];
    *v70 = 0;
    v70[1] = 0;
    v71 = qword_10002D558;
    *&v67[qword_10002D558] = 0;
    v72 = qword_10002D560;
    *&v67[qword_10002D560] = 0;
    v67[qword_10002D568] = 0;
    v73 = v69;
    v74 = v142;
    sub_100007F34(v73, v142);
    if (v153(v74, 1, v46) == 1)
    {
      v146 = v50;
      v149 = v46;
      sub_100007FA4(v74);
      if (qword_10002CB10 != -1)
      {
        swift_once();
      }

      v75._object = 0xEC0000004C525565;
      v75._countAndFlagsBits = 0x766974617272614ELL;
      v76 = preferencesStringValue(_:domain:)(v75, narrativeCertPrefDomain);
      v77 = 0xD000000000000023;
      if (v76.value._object)
      {
        v77 = v76.value._countAndFlagsBits;
        v78 = v76.value._object;
      }

      else
      {
        v78 = 0x8000000100020860;
      }

      v154 = v77;
      v155 = v78;

      v79._countAndFlagsBits = 47;
      v79._object = 0xE100000000000000;
      String.append(_:)(v79);
      v80._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
      String.append(_:)(v80);

      v81 = v139;
      URL.init(string:)();

      v46 = v149;
      result = v153(v81, 1, v149);
      if (result == 1)
      {
        goto LABEL_38;
      }

      v151(&v67[qword_10002D540], v81, v46);
    }

    else
    {
      v102 = v151;
      v151(v39, v74, v46);
      v102(&v67[qword_10002D540], v39, v46);
    }

    v103 = v70[1];
    *v70 = 0;
    v70[1] = 0;

    v104 = *&v67[v71];
    *&v67[v71] = 0;

    v105 = v46;
    v106 = *&v67[v72];
    v107 = v150;
    *&v67[v72] = v150;
    v108 = v107;

    v154 = 0;
    v155 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v154 = 0x766974617272616ELL;
    v155 = 0xEF2E647472656365;
    v109._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v109);

    v110._countAndFlagsBits = 46;
    v110._object = 0xE100000000000000;
    String.append(_:)(v110);
    v111._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v111);

    v112 = v155;
    v113 = &v67[qword_10002D548];
    *v113 = v154;
    v113[1] = v112;
    v114 = NarrativeCert.init(domain:identityType:)();

    v116 = v147;
    v115 = v148;
    v65 = v152;
    v47 = v144;
LABEL_35:

    sub_100007FA4(v115);
    sub_100007FA4(v116);
    (*(v47 + 8))(v44, v105);
    return v114;
  }

  if (a1)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v51 = *(v33 + 16);
  v52 = v145;
  v148 = v44;
  v51(v145, v44, v46);
  (*(v33 + 56))(v52, 0, 1, v46);
  v53 = objc_allocWithZone(type metadata accessor for NarrativeIdentityExample());
  v54 = v146;
  sub_100007F34(v52, v146);
  v55 = &v53[qword_10002D550];
  *v55 = 0;
  v55[1] = 0;
  v56 = qword_10002D558;
  *&v53[qword_10002D558] = 0;
  v57 = qword_10002D560;
  *&v53[qword_10002D560] = 0;
  v53[qword_10002D568] = 0;
  sub_100007F34(v54, v25);
  if (v153(v25, 1, v46) != 1)
  {
    v129 = v151;
    v151(v42, v25, v46);
    v65 = v152;
    v129(&v53[qword_10002D540], v42, v46);
    goto LABEL_34;
  }

  sub_100007FA4(v25);
  if (qword_10002CB10 != -1)
  {
    swift_once();
  }

  v58._object = 0xEC0000004C525565;
  v58._countAndFlagsBits = 0x766974617272614ELL;
  v59 = preferencesStringValue(_:domain:)(v58, narrativeCertPrefDomain);
  v60 = 0xD000000000000023;
  if (v59.value._object)
  {
    v60 = v59.value._countAndFlagsBits;
    v61 = v59.value._object;
  }

  else
  {
    v61 = 0x8000000100020860;
  }

  v154 = v60;
  v155 = v61;

  v62._countAndFlagsBits = 47;
  v62._object = 0xE100000000000000;
  String.append(_:)(v62);
  v63._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
  String.append(_:)(v63);

  v64 = v140;
  URL.init(string:)();

  result = v153(v64, 1, v46);
  if (result != 1)
  {

    v65 = v152;
    v151(&v53[qword_10002D540], v140, v46);
LABEL_34:
    v130 = v55[1];
    *v55 = 0;
    v55[1] = 0;

    v131 = *&v53[v56];
    *&v53[v56] = 0;

    v132 = *&v53[v57];
    *&v53[v57] = 0;

    v154 = 0;
    v155 = 0xE000000000000000;
    v105 = v46;
    _StringGuts.grow(_:)(20);

    v154 = 0x766974617272616ELL;
    v155 = 0xEF2E647472656365;
    v133._countAndFlagsBits = NarrativeDomain.rawValue.getter();
    String.append(_:)(v133);

    v134._countAndFlagsBits = 46;
    v134._object = 0xE100000000000000;
    String.append(_:)(v134);
    v135._countAndFlagsBits = NarrativeIdentityType.rawValue.getter();
    String.append(_:)(v135);

    v136 = v155;
    v137 = &v53[qword_10002D548];
    *v137 = v154;
    v137[1] = v136;
    v114 = NarrativeCert.init(domain:identityType:)();
    v47 = v144;
    v116 = v145;
    v44 = v148;
    v115 = v146;
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1000126BC()
{
  result = qword_10002D0F0;
  if (!qword_10002D0F0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D0F0);
  }

  return result;
}

uint64_t sub_10001272C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 2)
  {

    v2 = (result + 56);
    for (i = 1; i != v1; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
        return result;
      }

      v5 = *(v2 - 1);
      v4 = *v2;
      sub_100002E74(v5, *v2);
      sub_10001302C();
      result = sub_100002EC8(v5, v4);
      v2 += 2;
    }
  }

  return result;
}

uint64_t sub_1000128FC()
{
  v1 = v0;
  v2 = dispatch thunk of NarrativeCert.fetchSecRefsFromKeychain()();
  if (v2)
  {

    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v4;
    v5 = NarrativeCert.keychainLabel.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v5;
    *(inited + 56) = v6;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v7;
    type metadata accessor for CFString(0);
    v9 = v8;
    *(inited + 120) = v8;
    *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v10;
    *(inited + 168) = v9;
    *(inited + 144) = kSecClassKey;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v11;
    *(inited + 216) = v9;
    *(inited + 192) = kSecAttrKeyClassPrivate;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v12;
    *(inited + 264) = &type metadata for Bool;
    *(inited + 240) = 1;
    v13 = kSecAttrKeyTypeECSECPrimeRandom;
    v14 = kSecClassKey;
    v15 = kSecAttrKeyClassPrivate;
    sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    sub_100015EB4();
    result = 0;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v17 = SecItemCopyMatching(isa, &result);

    if (v17)
    {
      v18 = SecCopyErrorMessageString(v17, 0);
      _StringGuts.grow(_:)(36);

      *&v58[0] = 0xD00000000000001ELL;
      *(&v58[0] + 1) = 0x8000000100021260;
      v19._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 8250;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      if (v18)
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {

        v23 = 0xE700000000000000;
        v21 = 0x6E776F6E6B6E75;
      }

      v50._countAndFlagsBits = v21;
      v50._object = v23;
      String.append(_:)(v50);

      v51 = *(&v58[0] + 1);
      sub_100002B10();
      swift_allocError();
      *v52 = *&v58[0];
      *(v52 + 8) = v51;
      *(v52 + 16) = 0;
      swift_willThrow();

      return swift_unknownObjectRelease();
    }

    if (result && (*&v58[0] = result, swift_unknownObjectRetain(), sub_100003400(&qword_10002D108, &qword_1000225E8), (swift_dynamicCast() & 1) != 0))
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(*&v57[0] + 16))
      {
        v36 = sub_10001A698(v34, v35);
        v38 = v37;

        if (v38)
        {
          sub_1000112A4(*(*&v57[0] + 56) + 32 * v36, v58);

          if (qword_10002CB08 != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          sub_100002AD8(v39, qword_10002D1B8);
          v40 = v1;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *&v57[0] = v44;
            *v43 = 136446210;
            v45 = NarrativeCert.keychainLabel.getter();
            v47 = sub_10001A0F0(v45, v46, v57);

            *(v43 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v41, v42, "Successfully retrieved kSecAttrApplicationLabel for %{public}s", v43, 0xCu);
            sub_100002E28(v44);
          }

          sub_100011300(v58, v57);
          type metadata accessor for CFData(0);
          swift_dynamicCast();
          swift_unknownObjectRelease();
          return v56;
        }
      }

      else
      {
      }

      *&v58[0] = 0;
      *(&v58[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v48 = 0x80000001000212B0;
      v49 = 0xD000000000000024;
    }

    else
    {
      *&v58[0] = 0;
      *(&v58[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v48 = 0x8000000100021280;
      v49 = 0xD000000000000020;
    }

    *&v58[0] = v49;
    *(&v58[0] + 1) = v48;
    v53._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v53);

    v54 = *(&v58[0] + 1);
    sub_100002B10();
    swift_allocError();
    *v55 = *&v58[0];
    *(v55 + 8) = v54;
    *(v55 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100002AD8(v24, qword_10002D1B8);
  v25 = v0;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v58[0] = v29;
    *v28 = 136446210;
    v30 = NarrativeCert.keychainLabel.getter();
    v32 = sub_10001A0F0(v30, v31, v58);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "Key label for %{public}s not found, no refs on keychain", v28, 0xCu);
    sub_100002E28(v29);
  }

  return 0;
}

void sub_10001302C()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSData);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithData:isa];

  v5 = CFDataCreate(kCFAllocatorDefault, [v4 bytes], objc_msgSend(v4, "length"));
  if (!v5)
  {
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100002AD8(v25, qword_10002D1B8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10001A0F0(0xD00000000000003ALL, 0x80000001000211E0, &v59);
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v28, 0xCu);
      sub_100002E28(v29);
    }

    sub_100002B10();
    swift_allocError();
    *v30 = 0xD00000000000003ALL;
    *(v30 + 8) = 0x80000001000211E0;
    *(v30 + 16) = 2;
    swift_willThrow();
    goto LABEL_27;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (v7)
  {
    v8 = v7;
    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100021E70;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    type metadata accessor for CFString(0);
    *(inited + 72) = v11;
    *(inited + 48) = kSecClassCertificate;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v12;
    type metadata accessor for SecCertificate(0);
    *(inited + 120) = v13;
    *(inited + 96) = v8;
    v14 = kSecClassCertificate;
    v15 = v8;
    v16 = sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    v61 = v16;
    sub_100015EB4();
    v17 = Dictionary._bridgeToObjectiveC()().super.isa;
    v18 = SecItemAdd(v17, 0);

    if (v18)
    {
      v19 = SecCopyErrorMessageString(v18, 0);
      _StringGuts.grow(_:)(36);

      v59 = 0xD000000000000012;
      v60 = 0x8000000100021240;
      v20._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0x6379656B206F7420;
      v21._object = 0xEE00203A6E696168;
      String.append(_:)(v21);
      if (v19)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {

        v24 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }

      v47._countAndFlagsBits = v22;
      v47._object = v24;
      String.append(_:)(v47);

      v48 = v59;
      v49 = v60;
      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100002AD8(v50, qword_10002D1B8);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v58 = v19;
        v54 = v15;
        v55 = swift_slowAlloc();
        v59 = v55;
        *v53 = 136446210;
        *(v53 + 4) = sub_10001A0F0(v48, v49, &v59);
        _os_log_impl(&_mh_execute_header, v51, v52, "%{public}s", v53, 0xCu);
        sub_100002E28(v55);
        v15 = v54;
        v19 = v58;
      }

      sub_100002B10();
      swift_allocError();
      *v56 = v48;
      *(v56 + 8) = v49;
      *(v56 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v57 = v15;

      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100002AD8(v38, qword_10002D1B8);
      v39 = v1;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v59 = v43;
        *v42 = 136446210;
        v44 = NarrativeCert.keychainLabel.getter();
        v46 = sub_10001A0F0(v44, v45, &v59);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Successfully added cert to keychain for %{public}s", v42, 0xCu);
        sub_100002E28(v43);
      }
    }

LABEL_27:

    return;
  }

  _StringGuts.grow(_:)(29);

  v59 = 0xD00000000000001BLL;
  v60 = 0x8000000100021220;
  v31._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
  String.append(_:)(v31);

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100002AD8(v32, qword_10002D1B8);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v59 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_10001A0F0(0xD00000000000001BLL, 0x8000000100021220, &v59);
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s", v35, 0xCu);
    sub_100002E28(v36);
  }

  sub_100002B10();
  swift_allocError();
  *v37 = 0xD00000000000001BLL;
  *(v37 + 8) = 0x8000000100021220;
  *(v37 + 16) = 0;
  swift_willThrow();
}

void sub_1000138A0(void *a1)
{
  v2 = v1;
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022450;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = NarrativeCert.keychainLabel.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  type metadata accessor for CFString(0);
  v10 = v9;
  *(inited + 120) = v9;
  *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v11;
  *(inited + 168) = v10;
  *(inited + 144) = kSecClassKey;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v12;
  type metadata accessor for SecKey(0);
  *(inited + 216) = v13;
  *(inited + 192) = a1;
  v14 = kSecAttrKeyTypeECSECPrimeRandom;
  v15 = kSecClassKey;
  v16 = a1;
  v17 = sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  v45 = v17;
  sub_100015EB4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19 = SecItemAdd(isa, 0);

  if (v19)
  {
    v20 = SecCopyErrorMessageString(v19, 0);
    _StringGuts.grow(_:)(35);

    v43 = 0xD000000000000011;
    v44 = 0x80000001000211C0;
    v21._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0x6379656B206F7420;
    v22._object = 0xEE00203A6E696168;
    String.append(_:)(v22);
    if (v20)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {

      v25 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E75;
    }

    v34._countAndFlagsBits = v23;
    v34._object = v25;
    String.append(_:)(v34);

    v35 = v43;
    v36 = v44;
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100002AD8(v37, qword_10002D1B8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_10001A0F0(v35, v36, &v43);
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s", v40, 0xCu);
      sub_100002E28(v41);
    }

    sub_100002B10();
    swift_allocError();
    *v42 = v35;
    *(v42 + 8) = v36;
    *(v42 + 16) = 0;
    swift_willThrow();
  }

  else
  {

    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100002AD8(v26, qword_10002D1B8);
    v27 = v2;
    v20 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136446210;
      v31 = NarrativeCert.keychainLabel.getter();
      v33 = sub_10001A0F0(v31, v32, &v43);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v20, v28, "Successfully added private key to keychain for %{public}s", v29, 0xCu);
      sub_100002E28(v30);
    }
  }
}

void sub_100013DA4(__SecKey *a1)
{
  v2 = v1;
  v3 = SecKeyCopyPublicKey(a1);
  if (v3)
  {
    v4 = v3;
    sub_100003400(&qword_10002D0F8, &unk_100022960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100022460;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    v7 = NarrativeCert.keychainLabel.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v9;
    type metadata accessor for CFString(0);
    v11 = v10;
    *(inited + 120) = v10;
    *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v12;
    *(inited + 168) = v11;
    *(inited + 144) = kSecClassKey;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v13;
    *(inited + 216) = v11;
    *(inited + 192) = kSecAttrKeyClassPublic;
    *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 232) = v14;
    type metadata accessor for SecKey(0);
    *(inited + 264) = v15;
    *(inited + 240) = v4;
    v16 = kSecAttrKeyTypeECSECPrimeRandom;
    v17 = kSecClassKey;
    v18 = kSecAttrKeyClassPublic;
    v19 = v4;
    v20 = sub_10001B444(inited);
    swift_setDeallocating();
    sub_100003400(&qword_10002D100, &qword_1000225E0);
    swift_arrayDestroy();
    v57 = v20;
    sub_100015EB4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v22 = SecItemAdd(isa, 0);

    if (v22)
    {
      v23 = SecCopyErrorMessageString(v22, 0);
      _StringGuts.grow(_:)(42);

      v55 = 0xD000000000000018;
      v56 = 0x8000000100021140;
      v24._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x6379656B206F7420;
      v25._object = 0xEE00203A6E696168;
      String.append(_:)(v25);
      if (v23)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {

        v28 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v46._countAndFlagsBits = v26;
      v46._object = v28;
      String.append(_:)(v46);

      v47 = v55;
      v48 = v56;
      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100002AD8(v49, qword_10002D1B8);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v52 = 136446210;
        *(v52 + 4) = sub_10001A0F0(v47, v48, &v55);
        _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s", v52, 0xCu);
        sub_100002E28(v53);
      }

      sub_100002B10();
      swift_allocError();
      *v54 = v47;
      *(v54 + 8) = v48;
      *(v54 + 16) = 0;
      swift_willThrow();
    }

    else
    {

      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100002AD8(v37, qword_10002D1B8);
      v38 = v2;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136446210;
        v43 = NarrativeCert.keychainLabel.getter();
        v45 = sub_10001A0F0(v43, v44, &v55);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Successfully added public key to keychain for %{public}s", v41, 0xCu);
        sub_100002E28(v42);
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(44);

    v55 = 0xD00000000000001ELL;
    v56 = 0x8000000100021120;
    v29._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0x6574617669727020;
    v30._object = 0xEC00000079656B20;
    String.append(_:)(v30);
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100002AD8(v31, qword_10002D1B8);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_10001A0F0(0xD00000000000001ELL, 0x8000000100021120, &v55);
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v34, 0xCu);
      sub_100002E28(v35);
    }

    sub_100002B10();
    swift_allocError();
    *v36 = 0xD00000000000001ELL;
    *(v36 + 8) = 0x8000000100021120;
    *(v36 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000144A4()
{
  v1 = v0;
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022460;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v130 = NarrativeCert.keychainLabel.getter();
  v140 = v4;

  v5._countAndFlagsBits = 1684827950;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v130;
  *(inited + 56) = v140;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 120) = v7;
  *(inited + 96) = kSecAttrKeyTypeECSECPrimeRandom;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  *(inited + 168) = v8;
  *(inited + 144) = kSecClassKey;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v10;
  *(inited + 216) = v8;
  *(inited + 192) = kSecAttrKeyClassPrivate;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v11;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v12 = kSecAttrKeyTypeECSECPrimeRandom;
  v13 = kSecClassKey;
  v14 = kSecAttrKeyClassPrivate;
  sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  v129 = v0;
  sub_100015EB4();
  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = SecItemCopyMatching(isa, &result);

  if (v16)
  {
    v17 = SecCopyErrorMessageString(v16, 0);
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002AD8(v18, qword_10002D1B8);
    v19 = v1;
    v20 = v17;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *v23 = 136446466;
      v131 = NarrativeCert.keychainLabel.getter();
      v141 = v24;

      v25._countAndFlagsBits = 1684827950;
      v25._object = 0xE400000000000000;
      String.append(_:)(v25);

      v26 = sub_10001A0F0(v131, v141, &v150);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      if (v20)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 0x6E776F6E6B6E75;
        v29 = 0xE700000000000000;
      }

      v64 = sub_10001A0F0(v27, v29, &v150);

      *(v23 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v21, v22, "Old private key not found, skipping delete %{public}s: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  if (result)
  {
    type metadata accessor for SecKey(0);
    swift_unknownObjectRetain();
    v128 = swift_dynamicCastUnknownClassUnconditional();
    v30 = SecKeyCopyPublicKey(v128);
    if (v30)
    {
      v31 = v30;
      v32 = SecKeyCopyPublicKeyHash();
      if (!v32)
      {
        if (qword_10002CB08 != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        sub_100002AD8(v75, qword_10002D1B8);
        v76 = v1;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = v31;
          v81 = swift_slowAlloc();
          v150 = v81;
          *v79 = 136446210;
          v136 = NarrativeCert.keychainLabel.getter();
          v146 = v82;

          v83._countAndFlagsBits = 1684827950;
          v83._object = 0xE400000000000000;
          String.append(_:)(v83);

          v84 = sub_10001A0F0(v136, v146, &v150);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v77, v78, "Error getting public key hash from %{public}s", v79, 0xCu);
          sub_100002E28(v81);

          return swift_unknownObjectRelease();
        }

        v114 = v128;
LABEL_48:

        return swift_unknownObjectRelease();
      }

      v126 = v32;
      v127 = v31;
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_100022660;
      *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v33 + 72) = v8;
      *(v33 + 40) = v34;
      *(v33 + 48) = v13;
      *(v33 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v33 + 88) = v35;
      v36 = v13;
      v132 = NarrativeCert.keychainLabel.getter();
      v142 = v37;

      v38._countAndFlagsBits = 1684827950;
      v38._object = 0xE400000000000000;
      String.append(_:)(v38);

      *(v33 + 120) = &type metadata for String;
      *(v33 + 96) = v132;
      *(v33 + 104) = v142;
      *(v33 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v33 + 136) = v39;
      *(v33 + 168) = &type metadata for Bool;
      *(v33 + 144) = 1;
      sub_10001B444(v33);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_100015EB4();
      v40 = Dictionary._bridgeToObjectiveC()().super.isa;

      v41 = SecItemDelete(v40);

      if (v41)
      {
        v42 = SecCopyErrorMessageString(v41, 0);
        if (qword_10002CB08 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100002AD8(v43, qword_10002D1B8);
        v44 = v129;
        v45 = v42;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *v48 = 136446466;
          v133 = NarrativeCert.keychainLabel.getter();
          v143 = v49;

          v50._countAndFlagsBits = 1684827950;
          v50._object = 0xE400000000000000;
          String.append(_:)(v50);

          v51 = sub_10001A0F0(v133, v143, &v150);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2082;
          if (v45)
          {
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;
          }

          else
          {
            v52 = 0x6E776F6E6B6E75;
            v54 = 0xE700000000000000;
          }

          v31 = v127;
          v123 = sub_10001A0F0(v52, v54, &v150);

          *(v48 + 14) = v123;
          _os_log_impl(&_mh_execute_header, v46, v47, "Error deleting old key %{public}s from keychain: %{public}s", v48, 0x16u);
          swift_arrayDestroy();

          v114 = v126;
          goto LABEL_48;
        }
      }

      else
      {
        if (qword_10002CB08 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_100002AD8(v85, qword_10002D1B8);
        v86 = v129;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();

        v89 = v8;
        if (os_log_type_enabled(v87, v88))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v150 = v91;
          *v90 = 136446210;
          v137 = NarrativeCert.keychainLabel.getter();
          v147 = v92;

          v93._countAndFlagsBits = 1684827950;
          v93._object = 0xE400000000000000;
          String.append(_:)(v93);

          v94 = sub_10001A0F0(v137, v147, &v150);

          *(v90 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v87, v88, "Deleted key for %{public}s", v90, 0xCu);
          sub_100002E28(v91);

          v89 = v8;
        }

        v95 = swift_initStackObject();
        *(v95 + 16) = xmmword_100021E70;
        *(v95 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v95 + 40) = v96;
        type metadata accessor for CFData(0);
        *(v95 + 72) = v97;
        *(v95 + 48) = v126;
        *(v95 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v95 + 88) = v98;
        *(v95 + 120) = v89;
        *(v95 + 96) = kSecClassCertificate;
        v99 = v126;
        v100 = kSecClassCertificate;
        sub_10001B444(v95);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_100015EB4();
        v101 = Dictionary._bridgeToObjectiveC()().super.isa;

        v102 = SecItemDelete(v101);

        if (v102)
        {
          v103 = SecCopyErrorMessageString(v102, 0);
          v104 = v86;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *v107 = 136446466;
            v138 = NarrativeCert.keychainLabel.getter();
            v148 = v108;

            v109._countAndFlagsBits = 1684827950;
            v109._object = 0xE400000000000000;
            String.append(_:)(v109);

            v110 = sub_10001A0F0(v138, v148, &v150);

            *(v107 + 4) = v110;
            *(v107 + 12) = 2082;
            if (v103)
            {
              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v113 = v112;
            }

            else
            {
              v111 = 0x6E776F6E6B6E75;
              v113 = 0xE700000000000000;
            }

            v124 = sub_10001A0F0(v111, v113, &v150);

            *(v107 + 14) = v124;
            _os_log_impl(&_mh_execute_header, v105, v106, "Error deleting old cert for %{public}s from keychain: %{public}s", v107, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v115 = v86;
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v150 = v119;
            *v118 = 136446210;
            v139 = NarrativeCert.keychainLabel.getter();
            v149 = v120;

            v121._countAndFlagsBits = 1684827950;
            v121._object = 0xE400000000000000;
            String.append(_:)(v121);

            v122 = sub_10001A0F0(v139, v149, &v150);

            *(v118 + 4) = v122;
            _os_log_impl(&_mh_execute_header, v116, v117, "Deleted cert for %{public}s", v118, 0xCu);
            sub_100002E28(v119);
          }
        }
      }

      v74 = v127;
    }

    else
    {
      if (qword_10002CB08 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100002AD8(v65, qword_10002D1B8);
      v66 = v1;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v150 = v70;
        *v69 = 136446210;
        v135 = NarrativeCert.keychainLabel.getter();
        v145 = v71;

        v72._countAndFlagsBits = 1684827950;
        v72._object = 0xE400000000000000;
        String.append(_:)(v72);

        v73 = sub_10001A0F0(v135, v145, &v150);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v67, v68, "Error getting public key from %{public}s", v69, 0xCu);
        sub_100002E28(v70);
      }

      v74 = v128;
    }

    return swift_unknownObjectRelease();
  }

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100002AD8(v55, qword_10002D1B8);
  v56 = v1;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v150 = v60;
    *v59 = 136446210;
    v134 = NarrativeCert.keychainLabel.getter();
    v144 = v61;

    v62._countAndFlagsBits = 1684827950;
    v62._object = 0xE400000000000000;
    String.append(_:)(v62);

    v63 = sub_10001A0F0(v134, v144, &v150);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v57, v58, "Error finding old private key for %{public}s", v59, 0xCu);
    sub_100002E28(v60);
  }

  return swift_unknownObjectRelease();
}

void sub_100015578(uint64_t a1)
{
  v2 = v1;
  sub_100003400(&qword_10002D0F8, &unk_100022960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100022450;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  type metadata accessor for CFString(0);
  v7 = v6;
  *(inited + 72) = v6;
  *(inited + 48) = kSecClassKey;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v78 = v7;
  *(inited + 120) = v7;
  *(inited + 96) = kSecAttrKeyClassPrivate;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v9;
  v77 = kSecClassKey;
  v10 = kSecAttrKeyClassPrivate;
  v11 = NarrativeCert.keychainLabel.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v11;
  *(inited + 152) = v12;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v13;
  sub_1000112A4(a1, inited + 192);
  v14 = sub_10001B444(inited);
  swift_setDeallocating();
  sub_100003400(&qword_10002D100, &qword_1000225E0);
  swift_arrayDestroy();
  v81 = v14;
  sub_100015EB4();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_100022440;
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v16;
  v79 = NarrativeCert.keychainLabel.getter();
  v80 = v17;

  v18._countAndFlagsBits = 1684827950;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);

  v19 = v79;
  v20 = v80;
  *(v15 + 72) = &type metadata for String;
  *(v15 + 48) = v19;
  *(v15 + 56) = v20;
  sub_10001B444(v15);
  swift_setDeallocating();
  sub_100006E1C(v15 + 32, &qword_10002D100, &qword_1000225E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;
  v23 = SecItemUpdate(isa, v22);

  if (v23)
  {

    v24 = SecCopyErrorMessageString(v23, 0);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v25._object = 0x8000000100021160;
    v25._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v25);
    v26._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x6379656B206F7420;
    v27._object = 0xEE00203A6E696168;
    String.append(_:)(v27);
    if (v24)
    {
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0x6E776F6E6B6E75;

      v30 = 0xE700000000000000;
    }

    v59._countAndFlagsBits = v28;
    v59._object = v30;
    String.append(_:)(v59);

    v60 = v79;
    v61 = v80;
    if (qword_10002CB08 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100002AD8(v62, qword_10002D1B8);

    goto LABEL_16;
  }

  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100002AD8(v31, qword_10002D1B8);
  v32 = v2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v79 = v36;
    *v35 = 136446210;
    v37 = NarrativeCert.keychainLabel.getter();
    v39 = sub_10001A0F0(v37, v38, &v79);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Successfully updated deprecated key to old tag for %{public}s", v35, 0xCu);
    sub_100002E28(v36);
  }

  v40 = dispatch thunk of NarrativeCert.testKeychain.getter();
  if (!v40)
  {

    return;
  }

  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_100022660;
  *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 72) = v78;
  *(v41 + 40) = v42;
  *(v41 + 48) = v77;
  *(v41 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 88) = v43;
  *(v41 + 120) = v78;
  *(v41 + 96) = kSecAttrKeyClassPublic;
  *(v41 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 136) = v44;
  v45 = v77;
  v46 = kSecAttrKeyClassPublic;
  v47 = NarrativeCert.keychainLabel.getter();
  *(v41 + 168) = &type metadata for String;
  *(v41 + 144) = v47;
  *(v41 + 152) = v48;
  v49 = sub_10001B444(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  v81 = v49;
  sub_100015EB4();
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;
  v51 = Dictionary._bridgeToObjectiveC()().super.isa;

  v52 = SecItemUpdate(v50, v51);

  if (v52)
  {
    v24 = SecCopyErrorMessageString(v52, 0);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v53._countAndFlagsBits = 0xD000000000000029;
    v53._object = 0x8000000100021190;
    String.append(_:)(v53);
    v54._countAndFlagsBits = NarrativeCert.keychainLabel.getter();
    String.append(_:)(v54);

    v55._countAndFlagsBits = 0x6379656B206F7420;
    v55._object = 0xEE00203A6E696168;
    String.append(_:)(v55);
    if (v24)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
    }

    else
    {
      v56 = 0x6E776F6E6B6E75;

      v58 = 0xE700000000000000;
    }

    v76._countAndFlagsBits = v56;
    v76._object = v58;
    String.append(_:)(v76);

    v60 = v79;
    v61 = v80;

LABEL_16:
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v79 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_10001A0F0(v60, v61, &v79);
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s", v65, 0xCu);
      sub_100002E28(v66);
    }

    sub_100002B10();
    swift_allocError();
    *v67 = v60;
    *(v67 + 8) = v61;
    *(v67 + 16) = 0;
    swift_willThrow();

    return;
  }

  v68 = v32;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v79 = v72;
    *v71 = 136446210;
    v73 = NarrativeCert.keychainLabel.getter();
    v75 = sub_10001A0F0(v73, v74, &v79);

    *(v71 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Successfully updated deprecated public key to old tag for %{public}s", v71, 0xCu);
    sub_100002E28(v72);
  }
}

uint64_t sub_100015EB4()
{
  if (qword_10002CB08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002AD8(v1, qword_10002D1B8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136446210;
    v7 = NarrativeCert.keychainLabel.getter();
    v9 = sub_10001A0F0(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using DataProtection keychain %{public}s", v5, 0xCu);
    sub_100002E28(v6);
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[3] = &type metadata for Bool;
  LOBYTE(v13[0]) = 1;
  return sub_1000160C4(v13, v10, v11);
}

uint64_t sub_100016050()
{
  v0 = type metadata accessor for Logger();
  sub_100003030(v0, qword_10002D1B8);
  sub_100002AD8(v0, qword_10002D1B8);
  narrativecertdMachServiceName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000160C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100011300(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100016960(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100006E1C(a1, &qword_10002CD88, "H\t");
    sub_100016194(a2, a3, v10);

    return sub_100006E1C(v10, &qword_10002CD88, "H\t");
  }

  return result;
}

double sub_100016194@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10001A698(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100016B1C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100011300((*(v12 + 56) + 32 * v9), a3);
    sub_1000167B0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100016238(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003400(&qword_10002D1D0, &qword_100022670);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100011300(v25, v37);
      }

      else
      {
        sub_1000112A4(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100011300(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000164F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003400(&qword_10002D1D8, &qword_100022678);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}