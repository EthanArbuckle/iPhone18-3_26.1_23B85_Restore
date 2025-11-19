double sub_100F54C28(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_100F54C5C(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100F54C8C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  return result;
}

double sub_100F54CB8(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  return result;
}

uint64_t sub_100F54CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F54D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100F54DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v86 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v96 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v86 - v12;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v86 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v99 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MessagingMessageContext();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100F56758(a1) & 1) == 0)
  {

    v28 = 1;
    return (*(v22 + 56))(a2, v28, 1, v21);
  }

  v26 = [a1 toID];
  v93 = v18;
  if (v26)
  {
    v91 = v8;
    v92 = v7;
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v29 = IDSCopyLocalDeviceUniqueID();
    if (!v29)
    {
      v60 = a2;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177C4F0);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v64, 2u);
      }

      v28 = 1;
      a2 = v60;
      return (*(v22 + 56))(a2, v28, 1, v21);
    }

    v91 = v8;
    v92 = v7;
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v100 = 0x3A656369766564;
    v101 = 0xE700000000000000;
    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);
  }

  v94 = v17;
  v95 = v21;
  result = [a1 fromID];
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  v36 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v39)
  {

LABEL_19:

    v28 = 1;
    v21 = v95;
    return (*(v22 + 56))(a2, v28, 1, v21);
  }

  v40 = v37;
  v41 = v38;
  v42 = v39;

  v43 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v45)
  {

    goto LABEL_19;
  }

  v46 = v45;
  v86 = v44;
  v87 = v43;
  v88 = v41;
  v89 = v40;
  v90 = a2;
  result = [a1 outgoingResponseIdentifier];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v47 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v49 = v93;
  v48 = v94;
  if ((*(v93 + 48))(v16, 1, v94) == 1)
  {

    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    v21 = v95;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177C4F0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "could not convert outgoingResponseIdentifier to UUID!", v53, 2u);
    }

    v28 = 1;
    a2 = v90;
    return (*(v22 + 56))(a2, v28, 1, v21);
  }

  (*(v49 + 32))(v99, v16, v48);
  v21 = v95;
  v54 = &v25[v95[6]];
  v55 = v88;
  *v54 = v89;
  *(v54 + 1) = v55;
  *(v54 + 2) = v42;
  v56 = &v25[v21[7]];
  v57 = v86;
  *v56 = v87;
  *(v56 + 1) = v57;
  *(v56 + 2) = v46;
  v58 = [a1 incomingResponseIdentifier];
  if (v58)
  {
    v59 = v58;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = v94;
    UUID.init(uuidString:)();
  }

  else
  {
    (*(v49 + 56))(v25, 1, 1, v48);
  }

  v65 = v49;
  (*(v49 + 16))(&v25[v21[5]], v99, v48);
  result = [a1 serviceIdentifier];
  if (result)
  {
    v66 = result;

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = &v25[v21[8]];
    *v70 = v67;
    v70[1] = v69;
    v25[v21[9]] = [a1 expectsPeerResponse];
    v25[v21[10]] = [a1 fromServerStorage];
    v71 = [a1 serverReceivedTime];
    if (v71)
    {
      v72 = v96;
      v73 = v71;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = v91;
      v74 = v92;
      v76 = *(v91 + 32);
      v77 = v98;
      v76(v98, v72, v92);
      (*(v75 + 56))(v77, 0, 1, v74);
      v78 = v97;
      v76(v97, v77, v74);
      v65 = v93;
    }

    else
    {
      v75 = v91;
      v74 = v92;
      v79 = v98;
      (*(v91 + 56))(v98, 1, 1, v92);
      v78 = v97;
      static Date.distantPast.getter();
      if ((*(v75 + 48))(v79, 1, v74) != 1)
      {
        sub_10000B3A8(v79, &unk_101696900, &unk_10138B1E0);
      }
    }

    (*(v75 + 32))(&v25[v21[11]], v78, v74);
    v80 = [a1 senderCorrelationIdentifier];
    if (v80)
    {
      v81 = v80;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;
    }

    else
    {

      v82 = 0;
      v84 = 0xE000000000000000;
    }

    (*(v65 + 8))(v99, v94);
    v85 = &v25[v21[12]];
    *v85 = v82;
    v85[1] = v84;
    a2 = v90;
    sub_100476E9C(v25, v90);
    v28 = 0;
    return (*(v22 + 56))(a2, v28, 1, v21);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t MessagingMessageContext.outgoingResponseIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagingMessageContext() + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessagingMessageContext()
{
  result = qword_1016C14B8;
  if (!qword_1016C14B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessagingMessageContext.fromID.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingMessageContext() + 24));
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *v1;

  return v4;
}

uint64_t MessagingMessageContext.toID.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingMessageContext() + 28));
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *v1;

  return v4;
}

uint64_t MessagingMessageContext.serviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingMessageContext() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MessagingMessageContext.serverReceivedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagingMessageContext() + 44);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessagingMessageContext.senderCorrelationIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MessagingMessageContext() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_100F559A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496D6F7266;
    if (a1 != 2)
    {
      v5 = 1145663348;
    }

    if (a1 <= 1u)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100F55AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F569F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F55AEC(uint64_t a1)
{
  v2 = sub_100F56340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F55B28(uint64_t a1)
{
  v2 = sub_100F56340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessagingMessageContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Date();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  __chkstk_darwin(v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v47 = &v41 - v12;
  v13 = sub_1000BC4D4(&qword_1016C1448, &qword_1013F4C48);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = type metadata accessor for MessagingMessageContext();
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F56340();
  v50 = v16;
  v22 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100007BAC(a1);
  }

  v51 = a1;
  v52 = 0;
  sub_100F5650C(&qword_101698300, &type metadata accessor for UUID);
  v23 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v23, v20);
  v52 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v6;
  (*(v46 + 32))(&v20[v17[5]], v9, v6);
  v55 = 2;
  sub_100157E1C();
  v47 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v53;
  v25 = v54;
  v26 = &v20[v17[6]];
  *v26 = v52;
  *(v26 + 1) = v24;
  *(v26 + 2) = v25;
  v55 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v53;
  v28 = v54;
  v29 = &v20[v17[7]];
  *v29 = v52;
  *(v29 + 1) = v27;
  *(v29 + 2) = v28;
  v52 = 4;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v51;
  v32 = &v20[v17[8]];
  *v32 = v30;
  v32[1] = v33;
  v52 = 5;
  v20[v17[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v52 = 6;
  v20[v17[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v52 = 7;
  sub_100F5650C(&qword_101697F40, &type metadata accessor for Date);
  v34 = v43;
  v35 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(&v20[v17[11]], v34, v35);
  v52 = 8;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v37;
  (*(v48 + 8))(v50, v49);
  v39 = &v20[v17[12]];
  *v39 = v36;
  v39[1] = v38;
  sub_100D2577C(v20, v42);
  sub_100007BAC(v31);
  return sub_100476F00(v20);
}

unint64_t sub_100F56340()
{
  result = qword_1016C1450;
  if (!qword_1016C1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1450);
  }

  return result;
}

uint64_t MessagingMessageContext.description.getter()
{
  _StringGuts.grow(_:)(33);

  v1 = type metadata accessor for MessagingMessageContext();
  sub_100F5650C(&qword_1016C1458, type metadata accessor for MessagingMessageContext);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A44496D6F726620;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + v1[6] + 8));
  v4._countAndFlagsBits = 0x3A44496F7420;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + v1[7] + 8));
  v5._countAndFlagsBits = 0x6563697672657320;
  v5._object = 0xE90000000000003ALL;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + v1[8]));
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 60;
}

uint64_t sub_100F5650C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100F56580()
{
  sub_100395648();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100F56654()
{
  result = qword_1016C1510;
  if (!qword_1016C1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1510);
  }

  return result;
}

unint64_t sub_100F566AC()
{
  result = qword_1016C1518;
  if (!qword_1016C1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1518);
  }

  return result;
}

unint64_t sub_100F56704()
{
  result = qword_1016C1520;
  if (!qword_1016C1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1520);
  }

  return result;
}

uint64_t sub_100F56758(void *a1)
{
  v2 = [a1 fromID];
  if (!v2)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C4F0);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    v13 = "Ignoring IDSMessageContext without a fromID: %@";
    goto LABEL_14;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 0x3A656369766564;
  v4._object = 0xE700000000000000;
  LOBYTE(v3) = String.hasPrefix(_:)(v4);

  if ((v3 & 1) == 0)
  {
    v14 = [a1 senderCorrelationIdentifier];
    if (v14)
    {
      v8 = v14;
      v5 = 1;
LABEL_16:

      return v5;
    }

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C4F0);
    v16 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v16;
    *v11 = v16;
    v17 = v16;
    v13 = "Ignoring IDSMessageContext without a correlationIdentifier: %@";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v8, v9, v13, v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100F569F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001013749A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013749C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1145663348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013749E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101374A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101374A20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101374A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101374A60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_100F56CDC(uint64_t a1)
{
  *(a1 + 8) = sub_100EDEA48();
  result = sub_10064D670();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100F56D0C(uint64_t a1, unsigned __int8 a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (a2 >= 2u)
  {
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    if (a2 == 2)
    {
      v2[9] = v10;
      *v10 = v2;
      v11 = sub_100F56EA4;
    }

    else
    {
      v2[13] = v10;
      *v10 = v2;
      v11 = sub_100F571D0;
    }

    v10[1] = v11;

    return daemon.getter();
  }

  else
  {

    v7 = v2[1];

    return v7();
  }
}

uint64_t sub_100F56EA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100F57080;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F57080(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_100F57568;
  }

  else
  {

    v7 = sub_100F577BC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F571D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100F573AC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F573AC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;

  v8 = v4[14];
  if (v1)
  {

    return _swift_task_switch(sub_100F581B8, 0, 0);
  }

  else
  {

    v5[18] = a1;
    v9 = swift_task_alloc();
    v5[19] = v9;
    *v9 = v7;
    v9[1] = sub_100F5804C;
    v10 = v5[4];

    return sub_100857BA4(v10);
  }
}

uint64_t sub_100F57568()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Done publishing initial location for beacon %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[7];
  v18 = v0[8];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100F577BC()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F5782C, v1, 0);
}

uint64_t sub_100F5782C()
{
  v1 = *(v0[12] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100F5793C;
  v4 = v0[12];

  return (v6)(v0 + 2, &unk_1013F5038, v4, sub_100853598, 0);
}

uint64_t sub_100F5793C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = *(v2 + 96);
    v6 = sub_100F57CEC;
  }

  else
  {
    v7 = *(v2 + 96);

    v6 = sub_100F57A84;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F57A84()
{
  v24 = v0;
  v1 = v0[12];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v2 + 16))(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v14 = v23;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v11, v12);
    v18 = sub_1000136BC(v15, v17, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Done publishing initial location for beacon %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[7];
  v19 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100F57CEC()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F57D54, 0, 0);
}

uint64_t sub_100F57D54()
{
  v30 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v4 + 16))(v2, v5, v3);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[12];
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  if (v9)
  {
    v28 = v0[12];
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v29);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v26 = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure on initial location publish for beacon %{private,mask.hash}s, error: %{public}@", v15, 0x20u);
    sub_10000B3A8(v26, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v27);
  }

  else
  {
    v21 = v0[12];

    (*(v13 + 8))(v12, v14);
  }

  v23 = v0[7];
  v22 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100F5804C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_100F58148, 0, 0);
}

uint64_t sub_100F58148()
{
  v1 = v0[18];

  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100F581B8()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing DelegatedBeaconPayloadPublisher!", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F582DC(uint64_t a1, unsigned __int8 a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (a2 >= 2u)
  {
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    if (a2 == 2)
    {
      v2[9] = v10;
      *v10 = v2;
      v11 = sub_100F58474;
    }

    else
    {
      v2[13] = v10;
      *v10 = v2;
      v11 = sub_100F587A0;
    }

    v10[1] = v11;

    return daemon.getter();
  }

  else
  {

    v7 = v2[1];

    return v7();
  }
}

uint64_t sub_100F58474(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100F58650;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F58650(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_100F80E2C;
  }

  else
  {

    v7 = sub_100F58B38;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F587A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100F5897C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F5897C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;

  v8 = v4[14];
  if (v1)
  {

    return _swift_task_switch(sub_100F80E34, 0, 0);
  }

  else
  {

    v5[18] = a1;
    v9 = swift_task_alloc();
    v5[19] = v9;
    *v9 = v7;
    v9[1] = sub_100F58E68;
    v10 = v5[4];

    return sub_100857BA4(v10);
  }
}

uint64_t sub_100F58B38()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F58BA8, v1, 0);
}

uint64_t sub_100F58BA8()
{
  v1 = *(v0[12] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100F58CB8;
  v4 = v0[12];

  return (v6)(v0 + 2, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_100F58CB8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = *(v2 + 96);
    v6 = sub_100F58E00;
  }

  else
  {
    v7 = *(v2 + 96);

    v6 = sub_100F80E30;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F58E00()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F80E44, 0, 0);
}

uint64_t sub_100F58E68()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_100F80E48, 0, 0);
}

uint64_t sub_100F58F64(uint64_t a1, unsigned __int8 a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (a2 >= 2u)
  {
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    if (a2 == 2)
    {
      v2[9] = v10;
      *v10 = v2;
      v11 = sub_100F590FC;
    }

    else
    {
      v2[13] = v10;
      *v10 = v2;
      v11 = sub_100F587A0;
    }

    v10[1] = v11;

    return daemon.getter();
  }

  else
  {

    v7 = v2[1];

    return v7();
  }
}

uint64_t sub_100F590FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100F592D8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F592D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_100F80E2C;
  }

  else
  {

    v7 = sub_100F59428;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F59428()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F59498, v1, 0);
}

uint64_t sub_100F59498()
{
  v1 = *(v0[12] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100F58CB8;
  v4 = v0[12];

  return (v6)(v0 + 2, &unk_1013F5028, v4, sub_100853598, 0);
}

void *sub_100F595A8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_10087D6E4(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_1010F1ED4(v5, v6);
LABEL_10:

  return sub_1006146AC(a1, v2);
}

uint64_t sub_100F5969C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 144) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for OwnerSharingCircle();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100F59764, v3, 0);
}

uint64_t sub_100F59764()
{
  if (*(v0 + 144) - 1 >= 2)
  {
    if (*(v0 + 144))
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_10177A560);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "For delegates shares, we shouldn't reach share flow in ShareCreateUseCase.", v9, 2u);
      }

      v10 = *(v0 + 88);

      type metadata accessor for SPBeaconSharingError(0);
      *(v0 + 24) = 8;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v11 = *(v0 + 16);
      swift_willThrow();

      v12 = *(v0 + 8);

      return v12();
    }

    else
    {
      v5 = *(*(v0 + 64) + 160);
      *(v0 + 96) = v5;

      return _swift_task_switch(sub_100F599C0, v5, 0);
    }
  }

  else
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 88);

    v3 = *(v0 + 8);

    return v3(v1);
  }
}

uint64_t sub_100F599C0()
{
  v1 = *(v0 + 96);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100F59AAC;
  v5 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_100F59AAC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100F59BC4, v2, 0);
}

uint64_t sub_100F59BC4()
{
  v1 = v0[8];
  v0[14] = v0[4];
  return _swift_task_switch(sub_100F59BE8, v1, 0);
}

uint64_t sub_100F59BE8()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_10013CF58(sub_100986528, v3, v1);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = *(v0[9] + 32);
    v9 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v6 + 72);
    do
    {
      v11 = v0[11];
      sub_100F80550(v9, v11, type metadata accessor for OwnerSharingCircle);
      v12 = *(v7 + v8);

      sub_100F806B4(v11, type metadata accessor for OwnerSharingCircle);
      sub_100398F60(v12);
      v9 += v10;
      --v5;
    }

    while (v5);
  }

  v13 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[15] = v13;

  v0[5] = v13;
  v14 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v15 = swift_task_alloc();
  v0[16] = v15;
  v16 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v17 = sub_100F80B0C();
  v18 = sub_1000041A4(&qword_1016AF940, &qword_1016AF8E0, &qword_101393130);
  *v15 = v0;
  v15[1] = sub_100F59E34;
  v19 = v0[8];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013F5010, v19, v16, v17, v18);
}

uint64_t sub_100F59E34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[15];
    v9 = v4[8];

    v4[17] = a1;

    return _swift_task_switch(sub_100F59F7C, v9, 0);
  }
}

uint64_t sub_100F59F7C()
{
  v1 = v0[17];
  v2 = v0[7];

  v3 = sub_10112A6B4(v1);

  v4 = sub_100F595A8(v3, v2);

  v5 = v0[11];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_100F5A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v3[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for OwnerPeerTrust();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100F5A18C, 0, 0);
}

uint64_t sub_100F5A18C()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100F5A1B0, v1, 0);
}

uint64_t sub_100F5A1B0()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_100F5A310;
  v10 = v0[9];
  v9 = v0[10];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E68, v6, v10);
}

uint64_t sub_100F5A310()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100F5A428, 0, 0);
}

uint64_t sub_100F5A428()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  if ((*(*(v0 + 96) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    v3 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 64);
    **(v0 + 16) = 0;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 104);
    sub_100F80620(v2, v8, type metadata accessor for OwnerPeerTrust);
    v9 = *(v1 + 28);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_100F5A5A4;

    return sub_100E8BEF8(v8 + v9);
  }
}

uint64_t sub_100F5A5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  v9 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;

  if (v3)
  {

    v7 = sub_100F5A7B8;
  }

  else
  {
    v7 = sub_100F5A6C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F5A6C4()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 104);
    v2 = sub_100EB3708(*(v0 + 144), *(v0 + 152), *(v0 + 160));

    sub_100F806B4(v1, type metadata accessor for OwnerPeerTrust);
  }

  else
  {
    sub_100F806B4(*(v0 + 104), type metadata accessor for OwnerPeerTrust);
    v2 = 0;
  }

  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  **(v0 + 16) = v2;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100F5A7B8()
{
  sub_100F806B4(*(v0 + 104), type metadata accessor for OwnerPeerTrust);
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  **(v0 + 16) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100F5A858(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 772) = a3;
  *(v4 + 224) = a1;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 256) = v6;
  v7 = *(v6 - 8);
  *(v4 + 264) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  *(v4 + 280) = v9;
  v10 = *(v9 - 8);
  *(v4 + 288) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v12 = *(*(type metadata accessor for ShareCreateUseCase.ShareCreationData() - 8) + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100F5A9EC, v3, 0);
}

uint64_t sub_100F5A9EC()
{
  if (*(v0 + 772) == 2 && (sub_100E8F8C0() & 1) != 0)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177A560);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share create by underage account. Operation is not allowed.", v4, 2u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 216) = 8;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = *(v0 + 208);
    swift_willThrow();
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 320) = v13;
    *v13 = v0;
    v13[1] = sub_100F5AC4C;
    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    v16 = *(v0 + 224);
    v17 = *(v0 + 772);

    return sub_100F5969C(v16, v14, v17);
  }
}

uint64_t sub_100F5AC4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = a1;

  if (v1)
  {
    v8 = *(v4 + 304);
    v7 = *(v4 + 312);
    v9 = *(v4 + 296);
    v10 = *(v4 + 272);
    v11 = *(v4 + 248);

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v4 + 336) = v14;
    *v14 = v6;
    v14[1] = sub_100F5AE14;
    v15 = *(v4 + 304);
    v16 = *(v4 + 240);
    v17 = *(v4 + 224);
    v18 = *(v4 + 772);

    return sub_100F5EC88(v15, v17, a1, v18);
  }
}

uint64_t sub_100F5AE14()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 240);

  if (v0)
  {
    v7 = sub_100F5C710;
  }

  else
  {
    v7 = sub_100F5AF5C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F5AF5C()
{
  sub_100F80620(v0[38], v0[39], type metadata accessor for ShareCreateUseCase.ShareCreationData);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_100F5B010;
  v2 = v0[39];
  v3 = v0[30];

  return sub_100F61B98(v2);
}

uint64_t sub_100F5B010()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_100F5D020;
  }

  else
  {
    v6 = sub_100F5B13C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F5B13C()
{
  v1 = *(v0 + 240);
  v2 = *(*(v0 + 312) + 24);
  *(v0 + 368) = v2;
  v8 = *(v1 + 136);
  v3 = *(v1 + 136);
  v4 = sub_1000035D0((v1 + 112), v3);
  *(v0 + 40) = v8;
  v5 = sub_1000280DC((v0 + 16));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_100F5B264;

  return sub_10129BC54(v2, v1 + 248, v0 + 16);
}

uint64_t sub_100F5B264()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = *(v2 + 240);
    v5 = sub_100F5D8F4;
  }

  else
  {
    v6 = *(v2 + 240);
    sub_100007BAC((v2 + 16));
    v5 = sub_100F5B38C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100F5B38C()
{
  if (!*(v0 + 772))
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = String._bridgeToObjectiveC()();
    [v1 setBool:1 forKey:v2];
  }

  v3 = *(*(v0 + 312) + 16);
  *(v0 + 392) = v3;
  v4 = *(v3 + 16);
  *(v0 + 400) = v4;
  if (v4)
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v7 + 20);
    *(v0 + 760) = v9;
    v10 = *(v7 + 28);
    *(v0 + 764) = v10;
    LODWORD(v7) = *(v5 + 80);
    *(v0 + 768) = v7;
    *(v0 + 408) = *(v5 + 72);
    *(v0 + 416) = 0;
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    sub_100F80550(v3 + ((v7 + 32) & ~v7), v6, type metadata accessor for OwnerSharingCircle);
    (*(v12 + 16))(v8, v6 + v9, v11);
    LOBYTE(v8) = *(v6 + v10);
    sub_100F806B4(v6, type metadata accessor for OwnerSharingCircle);
    *(v0 + 773) = 0x4000201u >> (8 * v8);
    v13 = *(v0 + 240);
    v14 = v13[17];
    v15 = v13[19];
    v16 = sub_1000035D0(v13 + 14, v14);
    *(v0 + 80) = v14;
    *(v0 + 88) = v15;
    v17 = sub_1000280DC((v0 + 56));
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    v18 = sub_100F5B59C;
  }

  else
  {
    *(v0 + 440) = *(*(v0 + 240) + 160);
    v18 = sub_100F5BD20;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_100F5B59C()
{
  v1 = *sub_1000035D0((v0 + 56), *(v0 + 80));
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_100F5B648;
  v3 = *(v0 + 272);
  v4 = *(v0 + 773);

  return sub_100640C34(v3, v4, 0);
}

uint64_t sub_100F5B648(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 432) = v1;
    v7 = *(v4 + 240);
    (*(*(v4 + 264) + 8))(*(v4 + 272), *(v4 + 256));
    v8 = sub_100F5BA28;
    v9 = v7;
  }

  else
  {
    *(v4 + 774) = a1 & 1;
    v8 = sub_100F5B79C;
    v9 = 0;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100F5B79C()
{
  if (*(v0 + 774) == 1)
  {
    v1 = *(v0 + 240);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_100007BAC((v0 + 56));
    v2 = sub_100F5B890;
  }

  else
  {
    sub_100111BE4();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    *(v0 + 432) = v3;
    v1 = *(v0 + 240);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    v2 = sub_100F5BA28;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100F5B890()
{
  v1 = *(v0 + 416) + 1;
  if (v1 == *(v0 + 400))
  {
    *(v0 + 440) = *(*(v0 + 240) + 160);
    v2 = sub_100F5BD20;
  }

  else
  {
    *(v0 + 416) = v1;
    v3 = *(v0 + 764);
    v4 = *(v0 + 760);
    v5 = *(v0 + 296);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 256);
    sub_100F80550(*(v0 + 392) + ((*(v0 + 768) + 32) & ~*(v0 + 768)) + *(v0 + 408) * v1, v5, type metadata accessor for OwnerSharingCircle);
    (*(v7 + 16))(v6, v5 + v4, v8);
    LOBYTE(v6) = *(v5 + v3);
    sub_100F806B4(v5, type metadata accessor for OwnerSharingCircle);
    *(v0 + 773) = 0x4000201u >> (8 * v6);
    v9 = *(v0 + 240);
    v10 = v9[17];
    v11 = v9[19];
    v12 = sub_1000035D0(v9 + 14, v10);
    *(v0 + 80) = v10;
    *(v0 + 88) = v11;
    v13 = sub_1000280DC((v0 + 56));
    (*(*(v10 - 8) + 16))(v13, v12, v10);
    v2 = sub_100F5B59C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F5BA28()
{
  v30 = v0;
  sub_100007BAC((v0 + 56));
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v29);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share create, server share deletion: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  v15 = *(v0 + 416) + 1;
  if (v15 == *(v0 + 400))
  {
    *(v0 + 440) = *(*(v0 + 240) + 160);
    v16 = sub_100F5BD20;
  }

  else
  {
    *(v0 + 416) = v15;
    v17 = *(v0 + 764);
    v18 = *(v0 + 760);
    v19 = *(v0 + 296);
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v22 = *(v0 + 256);
    sub_100F80550(*(v0 + 392) + ((*(v0 + 768) + 32) & ~*(v0 + 768)) + *(v0 + 408) * v15, v19, type metadata accessor for OwnerSharingCircle);
    (*(v21 + 16))(v20, v19 + v18, v22);
    LOBYTE(v20) = *(v19 + v17);
    sub_100F806B4(v19, type metadata accessor for OwnerSharingCircle);
    *(v0 + 773) = 0x4000201u >> (8 * v20);
    v23 = *(v0 + 240);
    v24 = v23[17];
    v25 = v23[19];
    v26 = sub_1000035D0(v23 + 14, v24);
    *(v0 + 80) = v24;
    *(v0 + 88) = v25;
    v27 = sub_1000280DC((v0 + 56));
    (*(*(v24 - 8) + 16))(v27, v26, v24);
    v16 = sub_100F5B59C;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_100F5BD20()
{
  v1 = v0[30];
  (*(v0[33] + 56))(v0[31], 1, 1, v0[32]);
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_100F5BDFC;
  v3 = v0[55];
  v4 = v0[46];
  v5 = v0[31];

  return sub_1012A1ABC(v4, v5, v3, v1 + 168, v1 + 208);
}

uint64_t sub_100F5BDFC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 448);
  v5 = *v1;

  v6 = *(v2 + 248);
  if (v0)
  {

    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);

    return _swift_task_switch(sub_100F5BFE0, 0, 0);
  }

  else
  {
    sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
    v7 = swift_task_alloc();
    *(v3 + 456) = v7;
    *v7 = v5;
    v7[1] = sub_100F5C08C;
    v8 = *(v3 + 772);
    v9 = *(v3 + 224);

    return sub_100F582DC(v9, v8);
  }
}

uint64_t sub_100F5BFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 456) = v1;
  *v1 = v0;
  v1[1] = sub_100F5C08C;
  v2 = *(v0 + 224);
  v3 = *(v0 + 772);

  return sub_100F582DC(v2, v3);
}

uint64_t sub_100F5C08C()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_100F5C19C, v2, 0);
}

uint64_t sub_100F5C19C()
{
  v7 = v0;
  v1 = *(*(v0 + 240) + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1003CC318(*(v1 + 16), 0);
    v4 = sub_1003A97DC(&v6, v3 + 4, v2, v1);

    sub_1000128F8();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 464) = v3;

  return _swift_task_switch(sub_100F5C298, 0, 0);
}

uint64_t sub_100F5C298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[58];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[59] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = v3[58];
    v11 = v3[30];

    v5 = sub_100F5C3F0;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[59] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[58];
  v3[60] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[61] = v7;
  type metadata accessor for AnalyticsPublisher();
  v3[62] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v3[63] = v8;
  *v8 = v3;
  v8[1] = sub_100F5C4B0;

  return sub_101163F78(v7);
}

uint64_t sub_100F5C3F0()
{
  v1 = v0[38];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  sub_100F806B4(v0[39], type metadata accessor for ShareCreateUseCase.ShareCreationData);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F5C4B0()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return _swift_task_switch(sub_100F5C5C8, 0, 0);
}

uint64_t sub_100F5C5C8()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];

  if (v2 + 1 == v3)
  {
    v4 = v0[58];
    v5 = v0[30];

    return _swift_task_switch(sub_100F5C3F0, v5, 0);
  }

  else
  {
    v6 = v0[60] + 1;
    v0[60] = v6;
    v7 = v0[58];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v0[61] = v8;
    type metadata accessor for AnalyticsPublisher();
    v0[62] = swift_allocObject();
    swift_defaultActor_initialize();
    v9 = swift_task_alloc();
    v0[63] = v9;
    *v9 = v0;
    v9[1] = sub_100F5C4B0;

    return sub_101163F78(v8);
  }
}

uint64_t sub_100F5C710()
{
  v17 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share create, data preparing: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[30];

  v10 = *(v9 + 384);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1003CC318(*(v10 + 16), 0);
    v13 = sub_1003A97DC(&v16, v12 + 4, v11, v10);

    sub_1000128F8();
    if (v13 == v11)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_9:
  v0[64] = v12;
  v14 = v0[43];
  swift_errorRetain();

  return _swift_task_switch(sub_100F5C938, 0, 0);
}

uint64_t sub_100F5C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[64];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[65] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = v3[64];
    v13 = v3[43];
    v14 = v3[30];

    v5 = sub_100F5CAA0;
    a2 = v14;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[65] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[64];
  v3[66] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[67] = v7;
  v8 = v3[43];
  swift_errorRetain();
  v9 = swift_task_alloc();
  v3[68] = v9;
  *v9 = v3;
  v9[1] = sub_100F5CBD8;
  v10 = v3[43];

  return (sub_10116BDD0)(v7, v10);
}

uint64_t sub_100F5CAA0()
{
  *(v0 + 168) = *(v0 + 344);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for SPBeaconSharingError(0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 344);
  if (v1)
  {

    swift_willThrow();
    v3 = *(v0 + 344);
  }

  else
  {
    sub_1001118C8();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 248);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100F5CBD8()
{
  v2 = *(*v1 + 544);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100F80E4C;
  }

  else
  {
    v3 = sub_100F5CCF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F5CCF0()
{
  v1 = v0[43];

  type metadata accessor for AnalyticsPublisher();
  v0[69] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[70] = v2;
  *v2 = v0;
  v2[1] = sub_100F5CDAC;
  v3 = v0[67];

  return sub_101163F78(v3);
}

uint64_t sub_100F5CDAC()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 552);
  v4 = *v0;

  return _swift_task_switch(sub_100F5CEC4, 0, 0);
}

uint64_t sub_100F5CEC4()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];

  if (v2 + 1 == v3)
  {
    v4 = v0[64];
    v5 = v0[43];
    v6 = v0[30];

    return _swift_task_switch(sub_100F5CAA0, v6, 0);
  }

  else
  {
    v7 = v0[66] + 1;
    v0[66] = v7;
    v8 = v0[64];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[67] = v9;
    v10 = v0[43];
    swift_errorRetain();
    v11 = swift_task_alloc();
    v0[68] = v11;
    *v11 = v0;
    v11[1] = sub_100F5CBD8;
    v12 = v0[43];

    return (sub_10116BDD0)(v9, v12);
  }
}

uint64_t sub_100F5D020()
{
  v17 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share create, iCloud data update: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[30];

  v10 = *(v9 + 384);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1003CC318(*(v10 + 16), 0);
    v13 = sub_1003A97DC(&v16, v12 + 4, v11, v10);

    sub_1000128F8();
    if (v13 == v11)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_9:
  v0[71] = v12;
  v14 = v0[45];
  swift_errorRetain();

  return _swift_task_switch(sub_100F5D248, 0, 0);
}

uint64_t sub_100F5D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[71];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[72] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = v3[71];
    v13 = v3[45];
    v14 = v3[30];

    v5 = sub_100F5D3B0;
    a2 = v14;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[72] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[71];
  v3[73] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[74] = v7;
  v8 = v3[45];
  swift_errorRetain();
  v9 = swift_task_alloc();
  v3[75] = v9;
  *v9 = v3;
  v9[1] = sub_100F5D4AC;
  v10 = v3[45];

  return (sub_10116BDD0)(v7, v10);
}

uint64_t sub_100F5D3B0()
{
  v1 = v0[45];
  v2 = v0[39];
  sub_1001118C8();
  swift_allocError();
  *v3 = 1;
  swift_willThrow();

  sub_100F806B4(v2, type metadata accessor for ShareCreateUseCase.ShareCreationData);
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F5D4AC()
{
  v2 = *(*v1 + 600);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100F80E50;
  }

  else
  {
    v3 = sub_100F5D5C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F5D5C4()
{
  v1 = v0[45];

  type metadata accessor for AnalyticsPublisher();
  v0[76] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[77] = v2;
  *v2 = v0;
  v2[1] = sub_100F5D680;
  v3 = v0[74];

  return sub_101163F78(v3);
}

uint64_t sub_100F5D680()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return _swift_task_switch(sub_100F5D798, 0, 0);
}

uint64_t sub_100F5D798()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];

  if (v2 + 1 == v3)
  {
    v4 = v0[71];
    v5 = v0[45];
    v6 = v0[30];

    return _swift_task_switch(sub_100F5D3B0, v6, 0);
  }

  else
  {
    v7 = v0[73] + 1;
    v0[73] = v7;
    v8 = v0[71];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[74] = v9;
    v10 = v0[45];
    swift_errorRetain();
    v11 = swift_task_alloc();
    v0[75] = v11;
    *v11 = v0;
    v11[1] = sub_100F5D4AC;
    v12 = v0[45];

    return (sub_10116BDD0)(v9, v12);
  }
}

uint64_t sub_100F5D8F4()
{
  v20 = v0;
  v1 = *(v0 + 772);
  sub_100007BAC((v0 + 16));
  if (!v1)
  {
    sub_1012AA2A0(*(v0 + 384));
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 384);
  v3 = type metadata accessor for Logger();
  *(v0 + 624) = sub_1000076D4(v3, qword_10177A560);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 384);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on share create, server share creation: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v15 = swift_task_alloc();
  *(v0 + 632) = v15;
  *v15 = v0;
  v15[1] = sub_100F5DAF8;
  v16 = *(v0 + 312);
  v17 = *(v0 + 240);

  return sub_100F63884(v16);
}

uint64_t sub_100F5DAF8()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_100F5E3D4;
  }

  else
  {
    v6 = sub_100F5DC24;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F5DC24()
{
  v8 = v0;
  v1 = *(v0[30] + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1003CC318(*(v1 + 16), 0);
    v4 = sub_1003A97DC(&v7, v3 + 4, v2, v1);

    sub_1000128F8();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[81] = v3;
  v5 = v0[48];
  swift_errorRetain();

  return _swift_task_switch(sub_100F5DD28, 0, 0);
}

uint64_t sub_100F5DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[81];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[82] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = v3[81];
    v13 = v3[48];
    v14 = v3[30];

    v5 = sub_100F5DE90;
    a2 = v14;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[82] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[81];
  v3[83] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[84] = v7;
  v8 = v3[48];
  swift_errorRetain();
  v9 = swift_task_alloc();
  v3[85] = v9;
  *v9 = v3;
  v9[1] = sub_100F5DF8C;
  v10 = v3[48];

  return (sub_10116BDD0)(v7, v10);
}

uint64_t sub_100F5DE90()
{
  v1 = v0[48];
  v2 = v0[39];
  sub_1001118C8();
  swift_allocError();
  *v3 = 2;
  swift_willThrow();

  sub_100F806B4(v2, type metadata accessor for ShareCreateUseCase.ShareCreationData);
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F5DF8C()
{
  v2 = *(*v1 + 680);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100F80E54;
  }

  else
  {
    v3 = sub_100F5E0A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F5E0A4()
{
  v1 = v0[48];

  type metadata accessor for AnalyticsPublisher();
  v0[86] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[87] = v2;
  *v2 = v0;
  v2[1] = sub_100F5E160;
  v3 = v0[84];

  return sub_101163F78(v3);
}

uint64_t sub_100F5E160()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 688);
  v4 = *v0;

  return _swift_task_switch(sub_100F5E278, 0, 0);
}

uint64_t sub_100F5E278()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];

  if (v2 + 1 == v3)
  {
    v4 = v0[81];
    v5 = v0[48];
    v6 = v0[30];

    return _swift_task_switch(sub_100F5DE90, v6, 0);
  }

  else
  {
    v7 = v0[83] + 1;
    v0[83] = v7;
    v8 = v0[81];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[84] = v9;
    v10 = v0[48];
    swift_errorRetain();
    v11 = swift_task_alloc();
    v0[85] = v11;
    *v11 = v0;
    v11[1] = sub_100F5DF8C;
    v12 = v0[48];

    return (sub_10116BDD0)(v9, v12);
  }
}

uint64_t sub_100F5E3D4()
{
  v21 = v0;
  v1 = v0[80];
  v2 = v0[78];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[80];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share create, iCloud data rollback on share creation failure: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v14 = *(v0[30] + 384);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_1003CC318(*(v14 + 16), 0);
    v17 = sub_1003A97DC(&v20, v16 + 4, v15, v14);

    sub_1000128F8();
    if (v17 == v15)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_7:
  v0[88] = v16;
  v18 = v0[80];
  swift_errorRetain();

  return _swift_task_switch(sub_100F5E5CC, 0, 0);
}

uint64_t sub_100F5E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[88];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[89] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = v3[88];
    v13 = v3[80];
    v14 = v3[30];

    v5 = sub_100F5E734;
    a2 = v14;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[89] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[88];
  v3[90] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[91] = v7;
  v8 = v3[80];
  swift_errorRetain();
  v9 = swift_task_alloc();
  v3[92] = v9;
  *v9 = v3;
  v9[1] = sub_100F5E840;
  v10 = v3[80];

  return (sub_10116BDD0)(v7, v10);
}

uint64_t sub_100F5E734()
{
  v9 = v0;
  v1 = v0[80];

  v2 = *(v0[30] + 384);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1003CC318(*(v2 + 16), 0);
    v5 = sub_1003A97DC(&v8, v4 + 4, v3, v2);

    sub_1000128F8();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[81] = v4;
  v6 = v0[48];
  swift_errorRetain();

  return _swift_task_switch(sub_100F5DD28, 0, 0);
}

uint64_t sub_100F5E840()
{
  v2 = *(*v1 + 736);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100F80E58;
  }

  else
  {
    v3 = sub_100F5E958;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F5E958()
{
  v1 = v0[80];

  type metadata accessor for AnalyticsPublisher();
  v0[93] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[94] = v2;
  *v2 = v0;
  v2[1] = sub_100F5EA14;
  v3 = v0[91];

  return sub_101163F78(v3);
}

uint64_t sub_100F5EA14()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_100F5EB2C, 0, 0);
}

uint64_t sub_100F5EB2C()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];

  if (v2 + 1 == v3)
  {
    v4 = v0[88];
    v5 = v0[80];
    v6 = v0[30];

    return _swift_task_switch(sub_100F5E734, v6, 0);
  }

  else
  {
    v7 = v0[90] + 1;
    v0[90] = v7;
    v8 = v0[88];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[91] = v9;
    v10 = v0[80];
    swift_errorRetain();
    v11 = swift_task_alloc();
    v0[92] = v11;
    *v11 = v0;
    v11[1] = sub_100F5E840;
    v12 = v0[80];

    return (sub_10116BDD0)(v9, v12);
  }
}

uint64_t sub_100F5EC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 618) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = type metadata accessor for OwnerPeerTrust();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  *(v5 + 184) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v14 = type metadata accessor for BeaconNamingRecord();
  *(v5 + 200) = v14;
  v15 = *(v14 - 8);
  *(v5 + 208) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v5 + 224) = v17;
  v18 = *(v17 - 8);
  *(v5 + 232) = v18;
  *(v5 + 240) = *(v18 + 64);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v5 + 280) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  v21 = type metadata accessor for OwnedBeaconRecord();
  *(v5 + 296) = v21;
  v22 = *(v21 - 8);
  *(v5 + 304) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100F5EF70, v4, 0);
}

uint64_t sub_100F5EF70()
{
  v1 = *(*(v0 + 120) + 160);
  *(v0 + 320) = v1;
  return _swift_task_switch(sub_100F5EF94, v1, 0);
}

uint64_t sub_100F5EF94()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v5 = *(v0 + 104);
  v6 = *(v3 + 16);
  *(v0 + 328) = v6;
  *(v0 + 336) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 608) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 344) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 352) = v10;
  *(v0 + 360) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 368) = v12;
  *v12 = v0;
  v12[1] = sub_100F5F118;
  v14 = *(v0 + 280);
  v13 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100F805F4, v9, v14);
}

uint64_t sub_100F5F118()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100F5F244, v3, 0);
}

uint64_t sub_100F5F244()
{
  v1 = v0[36];
  if ((*(v0[38] + 48))(v1, 1, v0[37]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPBeaconSharingError(0);
    v0[3] = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v2 = v0[2];
    swift_willThrow();
    v3 = v0[39];
    v4 = v0[36];
    v6 = v0[33];
    v5 = v0[34];
    v8 = v0[31];
    v7 = v0[32];
    v9 = v0[27];
    v10 = v0[24];
    v11 = v0[22];
    v15 = v0[21];
    v16 = v0[18];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[40];
    sub_100F80620(v1, v0[39], type metadata accessor for OwnedBeaconRecord);

    return _swift_task_switch(sub_100F5F458, v14, 0);
  }
}

uint64_t sub_100F5F458()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = (*(v0 + 608) + 24) & ~*(v0 + 608);
  (*(v0 + 328))(v5, *(v0 + 104), v7);
  v9 = swift_allocObject();
  *(v0 + 376) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 384) = v11;
  *v11 = v0;
  v11[1] = sub_100F5F5A8;
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100F80688, v9, v13);
}

uint64_t sub_100F5F5A8()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100F5F6D4, v3, 0);
}

uint64_t sub_100F5F6D4()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 208) + 48))(v1, 1, *(v0 + 200)) == 1)
  {
    sub_100F806B4(*(v0 + 312), type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v2 = *(v0 + 16);
    swift_willThrow();
    v3 = *(v0 + 312);
    v4 = *(v0 + 288);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 618);
    v17 = *(v0 + 104);
    sub_100F80620(v1, *(v0 + 216), type metadata accessor for BeaconNamingRecord);
    *(v0 + 32) = v14;
    v18 = swift_task_alloc();
    *(v0 + 392) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    *(v18 + 32) = v17;
    v19 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
    v20 = swift_task_alloc();
    *(v0 + 400) = v20;
    v21 = sub_1000BC4D4(&qword_1016C1650, &qword_1013F4FD0);
    v22 = sub_1000041A4(&qword_1016C1658, &qword_1016C1650, &qword_1013F4FD0);
    *v20 = v0;
    v20[1] = sub_100F5F9D0;
    v23 = *(v0 + 128);

    return Sequence.asyncCompactMap<A>(_:)(&unk_1013F4FC8, v18, v21, v23, v22);
  }
}

uint64_t sub_100F5F9D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v9 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  v5 = v3[49];
  if (v1)
  {
    v6 = v3[15];

    v7 = sub_100F61A64;
  }

  else
  {
    v6 = v3[15];

    v7 = sub_100F5FAFC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F5FAFC()
{
  v0[5] = v0[51];
  v1 = async function pointer to Sequence.asyncFilter(_:)[1];
  v2 = swift_task_alloc();
  v0[53] = v2;
  v3 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  v4 = sub_1000041A4(&qword_1016C1660, &qword_101697710, &unk_10138C3D0);
  *v2 = v0;
  v2[1] = sub_100F5FC14;
  v5 = v0[15];

  return Sequence.asyncFilter(_:)(&unk_1013F4FE0, v5, v3, v4);
}

uint64_t sub_100F5FC14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v5 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[40];

    return _swift_task_switch(sub_100F5FD4C, v7, 0);
  }
}

uint64_t sub_100F5FD4C()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = (*(v0 + 608) + 24) & ~*(v0 + 608);
  (*(v0 + 328))(v5, *(v0 + 104), v7);
  v9 = swift_allocObject();
  *(v0 + 448) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  *(v9 + ((v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  v12 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *(v0 + 464) = v12;
  *v11 = v0;
  v11[1] = sub_100F5FEC8;

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v9, v12);
}

uint64_t sub_100F5FEC8()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 320);
  v5 = *v0;

  return _swift_task_switch(sub_100F5FFF4, v3, 0);
}

uint64_t sub_100F5FFF4()
{
  v1 = v0[15];
  v0[59] = v0[6];
  return _swift_task_switch(sub_100F60018, v1, 0);
}

uint64_t sub_100F60018()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v3 + 80);
    *(v0 + 612) = v4;
    *(v0 + 488) = *(v3 + 72);
    *(v0 + 496) = 0;
    sub_100F80550(v1 + ((v4 + 32) & ~v4), *(v0 + 176), type metadata accessor for OwnerSharingCircle);
    v5 = swift_task_alloc();
    *(v0 + 504) = v5;
    *v5 = v0;
    v5[1] = sub_100F6013C;
    v6 = *(v0 + 176);
    v7 = *(v0 + 120);

    return sub_100F7DABC(v6);
  }

  else
  {

    v9 = *(v0 + 320);

    return _swift_task_switch(sub_100F603A4, v9, 0);
  }
}

uint64_t sub_100F6013C()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 120);
  v5 = *v0;

  sub_100F806B4(v2, type metadata accessor for OwnerSharingCircle);

  return _swift_task_switch(sub_100F6027C, v3, 0);
}

uint64_t sub_100F6027C()
{
  v1 = *(v0 + 496) + 1;
  if (v1 == *(v0 + 480))
  {
    v2 = *(v0 + 472);

    v3 = *(v0 + 320);

    return _swift_task_switch(sub_100F603A4, v3, 0);
  }

  else
  {
    *(v0 + 496) = v1;
    sub_100F80550(*(v0 + 472) + ((*(v0 + 612) + 32) & ~*(v0 + 612)) + *(v0 + 488) * v1, *(v0 + 176), type metadata accessor for OwnerSharingCircle);
    v4 = swift_task_alloc();
    *(v0 + 504) = v4;
    *v4 = v0;
    v4[1] = sub_100F6013C;
    v5 = *(v0 + 176);
    v6 = *(v0 + 120);

    return sub_100F7DABC(v5);
  }
}

uint64_t sub_100F603A4()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 272);
  v6 = *(v0 + 224);
  v7 = (*(v0 + 608) + 24) & ~*(v0 + 608);
  v8 = (v7 + *(v0 + 240) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 328))(v5, *(v0 + 104), v6);
  v9 = swift_allocObject();
  *(v0 + 512) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v7, v5, v6);
  *(v9 + v8) = 0;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 520) = v11;
  *v11 = v0;
  v11[1] = sub_100F60508;
  v12 = *(v0 + 464);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v12);
}

uint64_t sub_100F60508()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 320);
  v5 = *v0;

  return _swift_task_switch(sub_100F60634, v3, 0);
}

uint64_t sub_100F60634()
{
  v1 = v0[15];
  v0[66] = v0[7];
  return _swift_task_switch(sub_100F60658, v1, 0);
}

uint64_t sub_100F60658()
{
  v1 = *(v0 + 408);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 136);
    v60 = *(v0 + 128);
    v62 = *(v0 + 232);
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v59 = *(v4 + 72);
    v6 = (v3 + 32) & ~v3;
    do
    {
      v8 = *(v0 + 328);
      v7 = *(v0 + 336);
      v9 = *(v0 + 264);
      v10 = *(v0 + 224);
      v11 = *(v0 + 144);
      sub_100F80550(v5, v11, type metadata accessor for OwnerPeerTrust);
      v8(v9, v11 + *(v60 + 20), v10);
      sub_100F806B4(v11, type metadata accessor for OwnerPeerTrust);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123D4C(v12 > 1, v13 + 1, 1);
      }

      v15 = *(v0 + 352);
      v14 = *(v0 + 360);
      v16 = *(v0 + 264);
      v17 = *(v0 + 224);
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v15(_swiftEmptyArrayStorage + v6 + *(v62 + 72) * v13, v16, v17);
      v5 += v59;
      --v2;
    }

    while (v2);
  }

  v18 = *(v0 + 408);

  v19 = *(v0 + 618);
  v20 = sub_10000954C(_swiftEmptyArrayStorage);

  if (v19)
  {
    if (v19 != 2)
    {
      v32 = *(v0 + 528);
      v33 = *(v0 + 432);
      v34 = *(v0 + 312);
      v35 = *(v0 + 216);

      sub_100F80870();
      swift_allocError();
      swift_willThrow();
LABEL_17:
      sub_100F806B4(v35, type metadata accessor for BeaconNamingRecord);
      sub_100F806B4(v34, type metadata accessor for OwnedBeaconRecord);
      v41 = *(v0 + 312);
      v42 = *(v0 + 288);
      v44 = *(v0 + 264);
      v43 = *(v0 + 272);
      v46 = *(v0 + 248);
      v45 = *(v0 + 256);
      v47 = *(v0 + 216);
      v48 = *(v0 + 192);
      v49 = *(v0 + 168);
      v50 = *(v0 + 176);
      v61 = *(v0 + 144);

      v51 = *(v0 + 8);

      return v51();
    }

    if (*(v20 + 16))
    {
      v21 = *(v0 + 528);
      v22 = *(v0 + 440);
      v23 = *(v0 + 104);
      v24 = v20;
      v25 = 3;
      v26 = 0;
      v27 = 2;
      goto LABEL_12;
    }

LABEL_15:
    v36 = *(v0 + 528);
    v37 = *(v0 + 432);
    v38 = *(v0 + 224);
    v39 = *(v0 + 232);

    type metadata accessor for BeaconSharingCircleTransformer.Error();
    sub_100F80970(&qword_101697608, type metadata accessor for BeaconSharingCircleTransformer.Error);
    swift_allocError();
    (*(v39 + 56))(v40, 1, 1, v38);
    swift_willThrow();
    goto LABEL_16;
  }

  if (!*(v20 + 16))
  {
    goto LABEL_15;
  }

  v21 = *(v0 + 528);
  v22 = *(v0 + 440);
  v23 = *(v0 + 104);
  v24 = v20;
  v25 = 0;
  v26 = 2;
  v27 = 0;
LABEL_12:
  v28 = sub_100315884(v23, v24, v25, v21, v26, v27, 1);
  if (v22)
  {
    v30 = *(v0 + 528);
    v31 = *(v0 + 432);

LABEL_16:

    v34 = *(v0 + 312);
    v35 = *(v0 + 216);
    goto LABEL_17;
  }

  v53 = v28;
  v54 = v29;
  v55 = *(v0 + 528);

  *(v0 + 536) = v53;
  *(v0 + 544) = v54;
  v56 = swift_task_alloc();
  *(v0 + 552) = v56;
  *v56 = v0;
  v56[1] = sub_100F60B1C;
  v57 = *(v0 + 320);
  v58 = *(v0 + 618);

  return sub_1012A8370(v58, v57);
}

uint64_t sub_100F60B1C(__int16 a1)
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 616) = a1;

  return _swift_task_switch(sub_100F60C34, v3, 0);
}

uint64_t sub_100F60C34()
{
  v70 = v0;
  if (*(v0 + 616))
  {
    v1 = (v0 + 80);
    v2 = *(v0 + 544);
    v3 = *(v0 + 536);
    v4 = *(v0 + 432);

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 248);
    v8 = *(v0 + 224);
    v9 = *(v0 + 104);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177A560);
    v6(v7, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 248);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = v18;
      v1 = (v0 + 80);
      v22 = sub_1000136BC(v21, v20, v69);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "BeaconSharingService: cannot create new circle - offerLimitReached. BeaconIdentifier: %{private,mask.hash}s.", v17, 0x16u);
      sub_100007BAC(v66);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v30 = *(v0 + 312);
    v31 = *(v0 + 216);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 88) = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
LABEL_18:
    _BridgedStoredNSError.init(_:userInfo:)();
    v68 = *v1;
    swift_willThrow();
    sub_100F806B4(v31, type metadata accessor for BeaconNamingRecord);
    sub_100F806B4(v30, type metadata accessor for OwnedBeaconRecord);
    v53 = *(v0 + 312);
    v54 = *(v0 + 288);
    v56 = *(v0 + 264);
    v55 = *(v0 + 272);
    v58 = *(v0 + 248);
    v57 = *(v0 + 256);
    v59 = *(v0 + 216);
    v60 = *(v0 + 192);
    v61 = *(v0 + 168);
    v62 = *(v0 + 176);
    v65 = *(v0 + 144);

    v63 = *(v0 + 8);

    return v63();
  }

  if ((*(v0 + 616) & 0x100) != 0)
  {
    v1 = (v0 + 64);
    v32 = *(v0 + 544);
    v33 = *(v0 + 536);
    v34 = *(v0 + 432);

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    v37 = *(v0 + 256);
    v38 = *(v0 + 224);
    v39 = *(v0 + 104);
    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177A560);
    v36(v37, v39, v38);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 256);
    v46 = *(v0 + 224);
    v45 = *(v0 + 232);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69[0] = v67;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v45 + 8))(v44, v46);
      v51 = v48;
      v1 = (v0 + 64);
      v52 = sub_1000136BC(v51, v50, v69);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "Total shared item limit reached. cannot create new circle - sharedItemsCountLimitReached. BeaconIdentifier: %{private,mask.hash}s.", v47, 0x16u);
      sub_100007BAC(v67);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    v30 = *(v0 + 312);
    v31 = *(v0 + 216);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 72) = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    goto LABEL_18;
  }

  v23 = async function pointer to Array<A>.asyncFlatMap<A>(_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 560) = v24;
  v25 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  v26 = sub_1000041A4(&qword_101697600, &qword_1016975F8, &qword_10138C230);
  *v24 = v0;
  v24[1] = sub_100F61330;
  v27 = *(v0 + 544);
  v28 = *(v0 + 152);
  v29 = *(v0 + 120);

  return Array<A>.asyncFlatMap<A>(_:)(&unk_1013F4FF8, v29, v27, v28, v25, v26);
}

uint64_t sub_100F61330(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 560);
  v5 = *v2;
  v3[71] = a1;
  v3[72] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[15];

    return _swift_task_switch(sub_100F6146C, v7, 0);
  }
}

uint64_t sub_100F6146C()
{
  v1 = v0[67];
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v0[72];
  v4 = v0[20];
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 72);
  sub_100F80550(v1 + v5, v0[21], type metadata accessor for OwnerSharingCircle);
  v7 = sub_100653B3C();
  if (v3)
  {
    v8 = v0[71];
    v9 = v0[68];
    v10 = v0[67];
    v11 = v0[54];
    v12 = v0[39];
    v13 = v0[27];
    v14 = v0[21];

    sub_100F806B4(v14, type metadata accessor for OwnerSharingCircle);

    sub_100F806B4(v13, type metadata accessor for BeaconNamingRecord);
    sub_100F806B4(v12, type metadata accessor for OwnedBeaconRecord);
    v15 = v0[39];
    v16 = v0[36];
    v18 = v0[33];
    v17 = v0[34];
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[22];
    v32 = v0[21];
    v33 = v0[18];

    v24 = v0[1];

    return v24();
  }

  v26 = v7;
  sub_100F806B4(v0[21], type metadata accessor for OwnerSharingCircle);
  result = sub_1003980F8(v26);
  if (v2 == 1)
  {
LABEL_10:
    v0[73] = _swiftEmptyArrayStorage;
    v30 = swift_task_alloc();
    v0[74] = v30;
    *v30 = v0;
    v30[1] = sub_100F617B4;
    v31 = v0[67];

    return sub_100EC8350(v31);
  }

  else
  {
    v27 = v6 + v5;
    v28 = 1;
    while (v28 < *(v1 + 16))
    {
      sub_100F80550(v0[67] + v27, v0[21], type metadata accessor for OwnerSharingCircle);
      v29 = sub_100653B3C();
      ++v28;
      sub_100F806B4(v0[21], type metadata accessor for OwnerSharingCircle);
      result = sub_1003980F8(v29);
      v27 += v6;
      if (v2 == v28)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100F617B4(uint64_t a1)
{
  v2 = *(*v1 + 592);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 600) = a1;

  return _swift_task_switch(sub_100F618CC, v3, 0);
}

uint64_t sub_100F618CC()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[54];
  v6 = v0[39];
  v14 = v0[36];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v7 = v0[27];
  v19 = v0[24];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[18];
  v8 = v0[15];
  v9 = v0[12];
  v10 = *(v8 + 384);
  *(v8 + 384) = v0[75];

  Use = type metadata accessor for ShareCreateUseCase.ShareCreationData();
  sub_100F80620(v6, v9 + *(Use + 36), type metadata accessor for OwnedBeaconRecord);
  sub_100F80620(v7, v9 + *(Use + 40), type metadata accessor for BeaconNamingRecord);
  *v9 = v2;
  v9[1] = v1;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;

  v12 = v0[1];

  return v12();
}

uint64_t sub_100F61A64()
{
  v1 = v0[39];
  sub_100F806B4(v0[27], type metadata accessor for BeaconNamingRecord);
  sub_100F806B4(v1, type metadata accessor for OwnedBeaconRecord);
  v2 = v0[39];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v14 = v0[18];
  v15 = v0[52];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100F61B98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for OwnerPeerTrust();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100F61D58, v1, 0);
}

uint64_t sub_100F61D58()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 168) = v1;
  return _swift_task_switch(sub_100F61D7C, v1, 0);
}

uint64_t sub_100F61DA4()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_100F61E80;
  v3 = *(v0 + 176);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_10058D6FC, v3, &type metadata for () + 8);
}

uint64_t sub_100F61E80()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_100F61F7C, 0, 0);
}

uint64_t sub_100F61F98()
{
  v1 = *(v0 + 168);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v3 = v0;
  v3[1] = sub_100F62084;
  v5 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100F805D0, v5, v4);
}

uint64_t sub_100F62084()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_100F6219C, v2, 0);
}

uint64_t sub_100F6219C()
{
  v1 = v0[4];
  v0[25] = v0[2];
  return _swift_task_switch(sub_100F621C0, v1, 0);
}

uint64_t sub_100F621C0()
{
  v64 = v0;
  v1 = *(*(v0 + 24) + 24);
  *(v0 + 208) = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v56 = *(*(v0 + 112) + 32);
    v58 = *(v0 + 160);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v54 = *(v3 + 72);
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100F80550(v4, *(v0 + 160), type metadata accessor for OwnerSharingCircle);
      v6 = *(v58 + v56);
      v7 = *(v6 + 16);
      if (v7)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v8 = *(type metadata accessor for UUID() - 8);
        v0 = *(v8 + 72);
        v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v10 = swift_allocObject();
        v11 = j__malloc_size(v10);
        if (!v0)
        {
          goto LABEL_54;
        }

        if (v11 - v9 == 0x8000000000000000 && v0 == -1)
        {
          goto LABEL_58;
        }

        v10[2] = v7;
        v10[3] = 2 * ((v11 - v9) / v0);
        v60 = sub_1003CC2CC(v63, v10 + v9, v7, v6);
        v0 = v63[4];

        sub_1000128F8();
        if (v60 != v7)
        {
          goto LABEL_55;
        }

        v0 = v62;
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      sub_100F806B4(*(v0 + 160), type metadata accessor for OwnerSharingCircle);
      v13 = v10[2];
      v14 = v5[2];
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= v5[3] >> 1)
      {
        if (!v10[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v17 = v14 + v13;
        }

        else
        {
          v17 = v14;
        }

        v5 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v17, 1, v5);
        if (!v10[2])
        {
LABEL_3:

          if (v13)
          {
            goto LABEL_53;
          }

          goto LABEL_4;
        }
      }

      v18 = (v5[3] >> 1) - v5[2];
      v19 = *(type metadata accessor for UUID() - 8);
      if (v18 < v13)
      {
        goto LABEL_56;
      }

      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v19 + 72);
      swift_arrayInitWithCopy();

      if (v13)
      {
        v22 = v5[2];
        v23 = __OFADD__(v22, v13);
        v24 = v22 + v13;
        if (v23)
        {
          goto LABEL_57;
        }

        v5[2] = v24;
      }

LABEL_4:
      v4 += v54;
      v2 = (v2 - 1);
      if (!v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_28:
  v2 = *(v0 + 200);
  v57 = v2[2];
  if (v57)
  {
    v25 = 0;
    v52 = *(v0 + 48);
    v53 = *(v0 + 56);
    v59 = _swiftEmptyArrayStorage;
    v55 = *(v0 + 200);
    while (v25 < v2[2])
    {
      v29 = *(v53 + 72);
      v30 = v25 + 1;
      v61 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      sub_100F80550(*(v0 + 200) + v61 + v29 * v25, *(v0 + 104), type metadata accessor for OwnerPeerTrust);
      v31 = 0;
      v32 = *(v52 + 20);
      v33 = v5[2];
      while (v33 != v31)
      {
        v34 = *(type metadata accessor for UUID() - 8);
        v35 = v31 + 1;
        v36 = v5 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31;
        sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID);
        v31 = v35;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v0 = v62;
          sub_100F806B4(*(v62 + 104), type metadata accessor for OwnerPeerTrust);
          goto LABEL_33;
        }
      }

      v0 = v62;
      sub_100F80620(*(v62 + 104), *(v62 + 96), type metadata accessor for OwnerPeerTrust);
      v38 = v59;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v59;
      if ((v37 & 1) == 0)
      {
        sub_1011242A4(0, v59[2] + 1, 1);
        v38 = v63[0];
      }

      v27 = v38[2];
      v26 = v38[3];
      if (v27 >= v26 >> 1)
      {
        sub_1011242A4(v26 > 1, v27 + 1, 1);
        v38 = v63[0];
      }

      v28 = *(v62 + 96);
      v38[2] = v27 + 1;
      v59 = v38;
      sub_100F80620(v28, v38 + v61 + v27 * v29, type metadata accessor for OwnerPeerTrust);
LABEL_33:
      v25 = v30;
      v2 = v55;
      if (v30 == v57)
      {
        v39 = *(v0 + 200);
        v40 = v59;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_43:
  *(v0 + 216) = v40;
  v41 = v40;

  v42 = v2[2];

  v2 = v41;
  if (v42 != v41[2])
  {
    if (qword_101694480 == -1)
    {
LABEL_45:
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177A560);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Prevented deletion of owner peer trust still in use.", v46, 2u);
      }

      goto LABEL_48;
    }

LABEL_59:
    swift_once();
    goto LABEL_45;
  }

LABEL_48:
  v47 = *(v0 + 40);
  v48 = *(v0 + 24);
  v49 = swift_task_alloc();
  *(v49 + 16) = v48;
  *(v49 + 24) = v2;
  sub_100EC0C48(sub_100F805D8, v47);
  v50 = *(v0 + 168);

  return _swift_task_switch(sub_100F62958, v50, 0);
}

uint64_t sub_100F62980()
{
  v1 = v0[28];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100F62A78;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100F62A78()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  if (v0)
  {
    v6 = v2[27];

    v7 = sub_100F63750;
  }

  else
  {

    v7 = sub_100F62BC0;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_100F62BDC()
{
  v102 = v0;
  v1 = *(v0[26] + 16);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v1)
  {
    v3 = 0;
    v4 = v0[15];
    v91 = v0[14];
    v96 = v4;
    while (1)
    {
      v5 = v0[26];
      if (v3 >= *(v5 + 16))
      {
        break;
      }

      sub_100F80550(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[19], type metadata accessor for OwnerSharingCircle);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v6 = v0[19];
      v7 = v0[17];
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177A560);
      sub_100F80550(v6, v7, type metadata accessor for OwnerSharingCircle);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[17];
      if (v11)
      {
        v13 = v1;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v101 = v15;
        *v14 = 141558275;
        *(v14 + 4) = 1752392040;
        *(v14 + 12) = 2081;
        v16 = *(v91 + 20);
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        sub_100F806B4(v12, type metadata accessor for OwnerSharingCircle);
        v20 = sub_1000136BC(v17, v19, &v101);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v14 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v9, v10, "Data update on share creation. Create %{private,mask.hash}s", v14, 0x16u);
        sub_100007BAC(v15);

        v1 = v13;
        v4 = v96;
      }

      else
      {

        sub_100F806B4(v12, type metadata accessor for OwnerSharingCircle);
      }

      ++v3;
      sub_100F806B4(v0[19], type metadata accessor for OwnerSharingCircle);
      if (v1 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  v21 = v0[3];
  v22 = *(v21 + 16);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v97 = v0[15];
    v88 = v0[14];
    v92 = *(v21 + 16);
    while (v24 < *(v22 + 16))
    {
      sub_100F80550(v22 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v24, v0[18], type metadata accessor for OwnerSharingCircle);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v25 = v0[18];
      v26 = v0[16];
      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177A560);
      sub_100F80550(v25, v26, type metadata accessor for OwnerSharingCircle);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[16];
      if (v30)
      {
        v32 = v23;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v101 = v34;
        *v33 = 141558275;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        v35 = *(v88 + 20);
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        sub_100F806B4(v31, type metadata accessor for OwnerSharingCircle);
        v39 = sub_1000136BC(v36, v38, &v101);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v33 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v28, v29, "Data update on share creation. Delete %{private,mask.hash}s", v33, 0x16u);
        sub_100007BAC(v34);

        v23 = v32;
        v22 = v92;
      }

      else
      {

        sub_100F806B4(v31, type metadata accessor for OwnerSharingCircle);
      }

      ++v24;
      sub_100F806B4(v0[18], type metadata accessor for OwnerSharingCircle);
      if (v23 == v24)
      {
        v21 = v0[3];
        goto LABEL_20;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

LABEL_20:
  v40 = *(v21 + 32);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = 0;
    v98 = v0[7];
    v89 = v0[6];
    v93 = *(v21 + 32);
    while (v42 < *(v40 + 16))
    {
      sub_100F80550(v40 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v42, v0[11], type metadata accessor for OwnerPeerTrust);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v43 = v0[11];
      v44 = v0[9];
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177A560);
      sub_100F80550(v43, v44, type metadata accessor for OwnerPeerTrust);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[9];
      if (v48)
      {
        v50 = v41;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v101 = v52;
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        v53 = *(v89 + 20);
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        sub_100F806B4(v49, type metadata accessor for OwnerPeerTrust);
        v57 = sub_1000136BC(v54, v56, &v101);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v51 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v46, v47, "Data update on peer trust creation. Create %{private,mask.hash}s", v51, 0x16u);
        sub_100007BAC(v52);

        v41 = v50;
        v40 = v93;
      }

      else
      {

        sub_100F806B4(v49, type metadata accessor for OwnerPeerTrust);
      }

      ++v42;
      sub_100F806B4(v0[11], type metadata accessor for OwnerPeerTrust);
      if (v41 == v42)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_44;
  }

LABEL_29:
  v58 = *(v0[27] + 16);
  if (v58)
  {
    v59 = 0;
    v60 = v0[7];
    v94 = v0[6];
    v99 = v60;
    while (1)
    {
      v61 = v0[27];
      if (v59 >= *(v61 + 16))
      {
        goto LABEL_45;
      }

      sub_100F80550(v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59, v0[10], type metadata accessor for OwnerPeerTrust);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v62 = v0[10];
      v63 = v0[8];
      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_10177A560);
      sub_100F80550(v62, v63, type metadata accessor for OwnerPeerTrust);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v0[8];
      if (v67)
      {
        v69 = v58;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v101 = v71;
        *v70 = 141558275;
        *(v70 + 4) = 1752392040;
        *(v70 + 12) = 2081;
        v72 = *(v94 + 20);
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        sub_100F806B4(v68, type metadata accessor for OwnerPeerTrust);
        v76 = sub_1000136BC(v73, v75, &v101);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v70 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v65, v66, "Orphaned Owner Peer Trust to Cleanup %{private,mask.hash}s", v70, 0x16u);
        sub_100007BAC(v71);

        v58 = v69;
        v60 = v99;
      }

      else
      {

        sub_100F806B4(v68, type metadata accessor for OwnerPeerTrust);
      }

      ++v59;
      sub_100F806B4(v0[10], type metadata accessor for OwnerPeerTrust);
      if (v58 == v59)
      {
        v77 = v0[27];
        break;
      }
    }
  }

  v78 = v0[19];
  v79 = v0[20];
  v81 = v0[17];
  v80 = v0[18];
  v82 = v0[16];
  v84 = v0[12];
  v83 = v0[13];
  v85 = v0[11];
  v90 = v0[10];
  v95 = v0[9];
  v100 = v0[8];
  v86 = v0[5];

  sub_10000B3A8(v86, &qword_1016975C8, &qword_10138C1F0);

  v87 = v0[1];

  v87();
}

uint64_t sub_100F6376C()
{
  sub_10000B3A8(v0[5], &qword_1016975C8, &qword_10138C1F0);
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F63884(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_101697610, &unk_10138C4B0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleSecretValue();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for SharingCircleSecret();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v11 = type metadata accessor for OwnerSharingCircle();
  v2[31] = v11;
  v12 = *(v11 - 8);
  v2[32] = v12;
  v13 = *(v12 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v14 = type metadata accessor for OwnerPeerTrust();
  v2[39] = v14;
  v15 = *(v14 - 8);
  v2[40] = v15;
  v16 = *(v15 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v2[45] = v17;
  v18 = *(v17 - 8);
  v2[46] = v18;
  v19 = *(v18 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_100F63BE4, v1, 0);
}

uint64_t sub_100F63BE4()
{
  v1 = *(v0[17] + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[46];
    v4 = v0[40];
    v17 = v0[39];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[51];
      v8 = v0[44];
      v7 = v0[45];
      sub_100F80550(v5, v8, type metadata accessor for OwnerPeerTrust);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_100F806B4(v8, type metadata accessor for OwnerPeerTrust);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[51];
      v12 = v0[45];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[18];
  v0[52] = sub_10000954C(_swiftEmptyArrayStorage);

  v14 = *(v13 + 160);
  v0[53] = v14;

  return _swift_task_switch(sub_100F63DC0, v14, 0);
}

uint64_t sub_100F63DC0()
{
  v1 = *(v0 + 424);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 432) = v3;
  v4 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v3 = v0;
  v3[1] = sub_100F63EAC;
  v5 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v5, v4);
}

uint64_t sub_100F63EAC()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_100F63FC4, v2, 0);
}

uint64_t sub_100F63FC4()
{
  v1 = v0[18];
  v0[55] = v0[15];
  return _swift_task_switch(sub_100F63FE8, v1, 0);
}

uint64_t sub_100F63FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[55];
  v52 = *(v4 + 16);
  if (v52)
  {
    v5 = 0;
    v6 = v3[52];
    v51 = v3[40];
    v47 = v3[39];
    v55 = v6 + 7;
    v45 = v3[46];
    v46 = _swiftEmptyArrayStorage;
    v48 = v3[55];
    while (v5 < *(v4 + 16))
    {
      v7 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v8 = *(v51 + 72);
      sub_100F80550(v3[55] + v7 + v8 * v5, v3[43], type metadata accessor for OwnerPeerTrust);
      if (v6[2])
      {
        v49 = v8;
        v50 = v7;
        v53 = v5;
        v9 = v3[45];
        v10 = v3[43];
        v11 = *(v47 + 20);
        v12 = v6;
        v13 = v6[5];
        sub_100F80970(&qword_1016967B0, &type metadata accessor for UUID);
        v6 = v12;
        v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v55 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          v18 = *(v45 + 72);
          v19 = *(v45 + 16);
          while (1)
          {
            v20 = v57[50];
            v21 = v57[45];
            v19(v20, v6[6] + v16 * v18, v21);
            sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID);
            v22 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v45 + 8))(v20, v21);
            if (v22)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            v6 = v12;
            if (((*(v55 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          sub_100F80620(v57[43], v57[42], type metadata accessor for OwnerPeerTrust);
          v23 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1011242A4(0, v46[2] + 1, 1);
            v23 = v46;
          }

          v5 = v53;
          v6 = v12;
          v25 = v23[2];
          v24 = v23[3];
          v3 = v57;
          if (v25 >= v24 >> 1)
          {
            sub_1011242A4(v24 > 1, v25 + 1, 1);
            v23 = v46;
          }

          v26 = v57[42];
          v23[2] = v25 + 1;
          v46 = v23;
          a1 = sub_100F80620(v26, v23 + v50 + v25 * v49, type metadata accessor for OwnerPeerTrust);
          v4 = v48;
        }

        else
        {
LABEL_3:
          v3 = v57;
          a1 = sub_100F806B4(v57[43], type metadata accessor for OwnerPeerTrust);
          v4 = v48;
          v5 = v53;
        }
      }

      else
      {
        a1 = sub_100F806B4(v3[43], type metadata accessor for OwnerPeerTrust);
      }

      if (++v5 == v52)
      {
        v27 = v3[55];
        v28 = v46;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_20:
    v3[56] = v28;
    v29 = v3[52];
    v30 = v3[17];

    v31 = *(v30 + 24);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v3[46];
      v34 = v3[32];
      v56 = v3[31];
      sub_101123D4C(0, v32, 0);
      v35 = v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v54 = *(v34 + 72);
      do
      {
        v36 = v3[49];
        v37 = v3[45];
        v38 = v3[38];
        sub_100F80550(v35, v38, type metadata accessor for OwnerSharingCircle);
        (*(v33 + 16))(v36, v38 + *(v56 + 20), v37);
        sub_100F806B4(v38, type metadata accessor for OwnerSharingCircle);
        v40 = _swiftEmptyArrayStorage[2];
        v39 = _swiftEmptyArrayStorage[3];
        if (v40 >= v39 >> 1)
        {
          sub_101123D4C(v39 > 1, v40 + 1, 1);
        }

        v41 = v3[49];
        v42 = v3[45];
        _swiftEmptyArrayStorage[2] = v40 + 1;
        (*(v33 + 32))(_swiftEmptyArrayStorage + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v40, v41, v42);
        v35 += v54;
        --v32;
      }

      while (v32);
    }

    v43 = v3[53];
    v3[57] = sub_10000954C(_swiftEmptyArrayStorage);

    a1 = sub_100F6451C;
    a2 = v43;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100F6451C()
{
  v1 = *(v0 + 424);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100F64608;
  v5 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 128, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_100F64608()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_100F64720, v2, 0);
}

uint64_t sub_100F64720()
{
  v1 = v0[18];
  v0[59] = v0[16];
  return _swift_task_switch(sub_100F64744, v1, 0);
}

uint64_t sub_100F64744(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = v6[59];
  v45 = *(v8 + 16);
  if (v45)
  {
    v9 = 0;
    v10 = v6[57];
    v44 = v6[32];
    v40 = v6[31];
    v47 = v10 + 56;
    v38 = v6[46];
    v39 = _swiftEmptyArrayStorage;
    v41 = v6[59];
    v48 = v10;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v12 = *(v44 + 72);
      sub_100F80550(v7[59] + v11 + v12 * v9, v7[37], type metadata accessor for OwnerSharingCircle);
      if (*(v10 + 16))
      {
        v42 = v12;
        v43 = v11;
        v46 = v9;
        v13 = v7[45];
        v14 = v7;
        v15 = v7[37];
        v16 = *(v40 + 20);
        v17 = *(v48 + 40);
        sub_100F80970(&qword_1016967B0, &type metadata accessor for UUID);
        v10 = v48;
        v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v48 + 32);
        v20 = v18 & ~v19;
        if ((*(v47 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          v22 = *(v38 + 72);
          v23 = *(v38 + 16);
          while (1)
          {
            v24 = v14[50];
            v25 = v14[45];
            v23(v24, *(v10 + 48) + v20 * v22, v25);
            sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID);
            v26 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v38 + 8))(v24, v25);
            if (v26)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            v10 = v48;
            if (((*(v47 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v7 = v14;
          sub_100F80620(v14[37], v14[36], type metadata accessor for OwnerSharingCircle);
          v27 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_101123FE4(0, v39[2] + 1, 1);
            v27 = v39;
          }

          v8 = v41;
          v10 = v48;
          v29 = v27[2];
          v28 = v27[3];
          if (v29 >= v28 >> 1)
          {
            sub_101123FE4(v28 > 1, v29 + 1, 1);
            v27 = v39;
          }

          v30 = v14[36];
          v27[2] = v29 + 1;
          v39 = v27;
          a1 = sub_100F80620(v30, v27 + v43 + v29 * v42, type metadata accessor for OwnerSharingCircle);
        }

        else
        {
LABEL_11:
          v7 = v14;
          a1 = sub_100F806B4(v14[37], type metadata accessor for OwnerSharingCircle);
          v8 = v41;
        }

        v9 = v46;
      }

      else
      {
        a1 = sub_100F806B4(v7[37], type metadata accessor for OwnerSharingCircle);
      }

      if (++v9 == v45)
      {
        v31 = v7[59];
        v32 = v39;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_20:
    v7[60] = v32;
    v33 = v7[57];

    v34 = async function pointer to Array<A>.asyncFlatMap<A>(_:)[1];
    v35 = swift_task_alloc();
    v7[61] = v35;
    v36 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
    a6 = sub_1000041A4(&qword_101697600, &qword_1016975F8, &qword_10138C230);
    *v35 = v7;
    v35[1] = sub_100F64BB4;
    a4 = v7[31];
    a2 = v7[18];
    a1 = &unk_1013F4FB0;
    a3 = v32;
    a5 = v36;
  }

  return Array<A>.asyncFlatMap<A>(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100F64BB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v5 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[18];

    return _swift_task_switch(sub_100F64CEC, v7, 0);
  }
}

uint64_t sub_100F64CEC()
{
  v1 = v0[17];
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[46];
    v207 = v0[35];
    v6 = v0[31];
    v5 = v0[32];
    sub_101123FE4(0, v3, 0);
    v204 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = v2 + v204;
    v198 = (v4 + 16);
    v201 = *(v5 + 72);
    do
    {
      v8 = v0[45];
      v9 = v0[38];
      v10 = v0[35];
      sub_100F80550(v7, v9, type metadata accessor for OwnerSharingCircle);
      v11 = *v198;
      (*v198)(&v10[v6[5]], v9 + v6[5], v8);
      v11(&v10[v6[6]], v9 + v6[6], v8);
      LOBYTE(v11) = *(v9 + v6[7]);
      v12 = *(v9 + v6[8]);
      v13 = *(v9 + v6[9]);

      sub_100F806B4(v9, type metadata accessor for OwnerSharingCircle);
      *v10 = 0;
      *(v207 + 8) = 0xC000000000000000;
      v10[v6[7]] = v11;
      *&v10[v6[8]] = v12;
      v10[v6[9]] = v13;
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_101123FE4(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[35];
      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_100F80620(v16, _swiftEmptyArrayStorage + v204 + v15 * v201, type metadata accessor for OwnerSharingCircle);
      v7 += v201;
      --v3;
    }

    while (v3);
    v1 = v0[17];
  }

  v17 = *v1;
  v18 = *(*v1 + 16);
  if (v18)
  {
    v19 = v0[46];
    v194 = v0[27];
    v21 = v0[24];
    v20 = v0[25];
    v186 = v0[23];
    v22 = v0[21];
    sub_101124114(0, v18, 0);
    v192 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = v17 + v192;
    v208 = (v19 + 16);
    v24 = _swiftEmptyArrayStorage;
    v188 = (v22 + 56);
    v190 = *(v20 + 72);
    v196 = (v19 + 8);
    v25 = v0[63];
    do
    {
      v202 = v18;
      v205 = v24;
      v27 = v0[47];
      v26 = v0[48];
      v28 = v0[45];
      v29 = v0[26];
      v30 = v0[19];
      v199 = v23;
      sub_100F80550(v23, v29, type metadata accessor for SharingCircleSecret);
      v31 = *v208;
      (*v208)(v26, v29 + v21[5], v28);
      v31(v27, v29 + v21[6], v28);
      v32 = v21[7];
      v33 = (v29 + v21[8]);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v29 + v32);
      v37 = *(v29 + v32 + 8);
      sub_100017D5C(*v33, v35);

      sub_101316078(v34, v35, v36, v37, v30);
      v38 = v25;
      v39 = v0[23];
      v41 = v0[19];
      v40 = v0[20];
      if (v38)
      {

        (*v188)(v41, 1, 1, v40);
        v42 = *v33;
        v43 = v33[1];
        *v39 = *v33;
        *(v186 + 8) = v43;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v42, v43);
      }

      else
      {
        (*v188)(v0[19], 0, 1, v0[20]);
        sub_100F80620(v41, v39, type metadata accessor for SharingCircleSecretValue);
      }

      v45 = v0[47];
      v44 = v0[48];
      v46 = v0[45];
      v47 = v0[27];
      v49 = v0[22];
      v48 = v0[23];
      v50 = v0[20];
      *v47 = 0;
      *(v194 + 8) = 0xC000000000000000;
      v31(v47 + v21[5], v44, v46);
      v31(v47 + v21[6], v45, v46);
      v51 = sub_101315BA4();
      v52 = (v47 + v21[8]);
      *v52 = v51;
      v52[1] = v53;
      sub_100F80550(v48, v49, type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v56 = v0[47];
      v55 = v0[48];
      v57 = v0[45];
      v58 = v0[26];
      v59 = v0[22];
      v60 = v0[23];
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
            sub_100F806B4(v60, type metadata accessor for SharingCircleSecretValue);
            v64 = *v196;
            (*v196)(v56, v57);
            v64(v55, v57);
            sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
            v62 = 0xD000000000000012;
            v63 = 0x80000001013475D0;
          }

          else
          {
            sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
            sub_100F806B4(v60, type metadata accessor for SharingCircleSecretValue);
            v68 = *v196;
            (*v196)(v56, v57);
            v68(v55, v57);
            sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
            v62 = 0xD000000000000011;
            v63 = 0x80000001013475F0;
          }
        }

        else
        {
          sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
          sub_100F806B4(v60, type metadata accessor for SharingCircleSecretValue);
          v67 = *v196;
          (*v196)(v56, v57);
          v67(v55, v57);
          sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
          v63 = 0xE700000000000000;
          v62 = 0x6E776F6E6B6E75;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v65 = v0[22];
          sub_100F806B4(v0[23], type metadata accessor for SharingCircleSecretValue);
          v66 = *v196;
          (*v196)(v56, v57);
          v66(v55, v57);
          sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
          sub_100F806B4(v65, type metadata accessor for SharingCircleSecretValue);
          v62 = 0xD000000000000013;
          v63 = 0x8000000101347630;
        }

        else
        {
          sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
          sub_100F806B4(v60, type metadata accessor for SharingCircleSecretValue);
          v71 = *v196;
          (*v196)(v56, v57);
          v71(v55, v57);
          sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
          v62 = 0xD000000000000014;
          v63 = 0x8000000101347650;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
        sub_100F806B4(v60, type metadata accessor for SharingCircleSecretValue);
        v61 = *v196;
        (*v196)(v56, v57);
        v61(v55, v57);
        sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
        v62 = 0xD000000000000014;
        v63 = 0x8000000101347610;
      }

      else
      {
        v69 = v0[22];
        sub_100F806B4(v0[23], type metadata accessor for SharingCircleSecretValue);
        v70 = *v196;
        (*v196)(v56, v57);
        v70(v55, v57);
        sub_100F806B4(v58, type metadata accessor for SharingCircleSecret);
        sub_100F806B4(v69, type metadata accessor for SharingCircleSecretValue);
        v63 = 0xE90000000000006ELL;
        v62 = 0x656B6F546E696F6ALL;
      }

      v72 = (v0[27] + v21[7]);
      *v72 = v62;
      v72[1] = v63;
      v24 = v205;
      v74 = v205[2];
      v73 = v205[3];
      if (v74 >= v73 >> 1)
      {
        sub_101124114(v73 > 1, v74 + 1, 1);
        v24 = v205;
      }

      v75 = v0[27];
      v24[2] = v74 + 1;
      sub_100F80620(v75, v24 + v192 + v74 * v190, type metadata accessor for SharingCircleSecret);
      v25 = 0;
      v23 = v199 + v190;
      v18 = v202 - 1;
    }

    while (v202 != 1);
    v76 = 0;
  }

  else
  {
    v76 = v0[63];
    v24 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v78 = _swiftEmptyArrayStorage[2];

  if (!v78)
  {
    goto LABEL_40;
  }

  v79 = v0[32];
  v80 = v0[34];
  v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v82 = *(v79 + 72);
  sub_100F80550(_swiftEmptyArrayStorage + v81, v80, type metadata accessor for OwnerSharingCircle);
  sub_100D43440(v80);
  if (!v76)
  {
    sub_100F806B4(v0[34], type metadata accessor for OwnerSharingCircle);
    if (v78 != 1)
    {
      v93 = _swiftEmptyArrayStorage;
      v94 = _swiftEmptyArrayStorage + v82 + v81;
      v95 = 1;
      while (v95 < _swiftEmptyArrayStorage[2])
      {
        v96 = v0[34];
        sub_100F80550(v94, v96, type metadata accessor for OwnerSharingCircle);
        sub_100D43440(v96);
        ++v95;
        sub_100F806B4(v0[34], type metadata accessor for OwnerSharingCircle);
        v94 += v82;
        v93 = _swiftEmptyArrayStorage;
        if (v78 == v95)
        {
          v76 = 0;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v76 = 0;
LABEL_40:

    v97 = v24[2];
    if (v97)
    {
      v98 = v0[25];
      v99 = v0[29];
      v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v101 = *(v98 + 72);
      sub_100F80550(v24 + v100, v99, type metadata accessor for SharingCircleSecret);
      sub_100D4346C(v99);
      if (v76)
      {
        v102 = v0[62];
        v103 = v0[60];
        v104 = v0[56];
        v105 = v0[29];

        swift_setDeallocating();
        v106 = *(inited + 16);

        v107 = *(inited + 24);

        v89 = type metadata accessor for SharingCircleSecret;
        v90 = v105;
        goto LABEL_67;
      }

      v93 = sub_100F806B4(v0[29], type metadata accessor for SharingCircleSecret);
      if (v97 != 1)
      {
        v108 = v24 + v101 + v100;
        v109 = 1;
        while (v109 < v24[2])
        {
          v110 = v0[29];
          sub_100F80550(v108, v110, type metadata accessor for SharingCircleSecret);
          sub_100D4346C(v110);
          ++v109;
          v93 = sub_100F806B4(v0[29], type metadata accessor for SharingCircleSecret);
          v108 += v101;
          if (v97 == v109)
          {
            goto LABEL_47;
          }
        }

LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_47:
      v76 = 0;
    }

    v111 = v0[56];

    v112 = *(v111 + 16);
    if (v112)
    {
      v113 = v0[40];
      v114 = v0[41];
      v115 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v116 = *(v113 + 72);
      sub_100F80550(v0[56] + v115, v114, type metadata accessor for OwnerPeerTrust);
      sub_100D467FC(v114);
      if (v76)
      {
        v117 = v0[62];
        v118 = v0[60];
        v119 = v0[56];
        v120 = v0[41];

        swift_setDeallocating();
        v121 = *(inited + 16);

        v122 = *(inited + 24);

        v89 = type metadata accessor for OwnerPeerTrust;
        v90 = v120;
        goto LABEL_67;
      }

      v93 = sub_100F806B4(v0[41], type metadata accessor for OwnerPeerTrust);
      if (v112 != 1)
      {
        v123 = v116 + v115;
        v124 = 1;
        while (v124 < *(v111 + 16))
        {
          v125 = v0[41];
          sub_100F80550(v0[56] + v123, v125, type metadata accessor for OwnerPeerTrust);
          sub_100D467FC(v125);
          ++v124;
          v93 = sub_100F806B4(v0[41], type metadata accessor for OwnerPeerTrust);
          v123 += v116;
          if (v112 == v124)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_88;
      }

LABEL_55:
      v76 = 0;
    }

    v126 = v0[60];
    v127 = v0[56];

    v128 = *(v126 + 16);
    if (v128)
    {
      v129 = v0[32];
      v130 = v0[33];
      v131 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v132 = *(v129 + 72);
      sub_100F80550(v0[60] + v131, v130, type metadata accessor for OwnerSharingCircle);
      sub_100D45194(v130);
      if (v76)
      {
        v133 = v0[62];
        v134 = v0[60];
        v135 = v0[33];

        swift_setDeallocating();
        v136 = *(inited + 16);

        v137 = *(inited + 24);

        v89 = type metadata accessor for OwnerSharingCircle;
        v90 = v135;
        goto LABEL_67;
      }

      v93 = sub_100F806B4(v0[33], type metadata accessor for OwnerSharingCircle);
      if (v128 != 1)
      {
        v138 = v132 + v131;
        v139 = 1;
        while (v139 < *(v126 + 16))
        {
          v140 = v0[33];
          sub_100F80550(v0[60] + v138, v140, type metadata accessor for OwnerSharingCircle);
          sub_100D45194(v140);
          ++v139;
          v93 = sub_100F806B4(v0[33], type metadata accessor for OwnerSharingCircle);
          v138 += v132;
          if (v128 == v139)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_89;
      }

LABEL_63:
      v76 = 0;
    }

    v141 = v0[62];
    v142 = v0[60];

    v143 = *(v141 + 16);
    if (!v143)
    {
      goto LABEL_74;
    }

    v144 = v0[25];
    v145 = v0[28];
    v146 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v147 = *(v144 + 72);
    sub_100F80550(v0[62] + v146, v145, type metadata accessor for SharingCircleSecret);
    sub_100D44DD8(v145);
    if (v76)
    {
      v148 = v0[62];
      v149 = v0[28];

      swift_setDeallocating();
      v150 = *(inited + 16);

      v151 = *(inited + 24);

      v89 = type metadata accessor for SharingCircleSecret;
      v90 = v149;
      goto LABEL_67;
    }

    v93 = sub_100F806B4(v0[28], type metadata accessor for SharingCircleSecret);
    if (v143 == 1)
    {
LABEL_74:
      v166 = v0[62];

      swift_beginAccess();
      v167 = *(inited + 16);
      v209 = (inited + 24);
      if (*(v167 + 16))
      {
        goto LABEL_81;
      }

      swift_beginAccess();
      v168 = *v209;
      if ((*v209 & 0xC000000000000001) != 0)
      {
        if (v168 < 0)
        {
          v169 = *v209;
        }

        v170 = *v209;

        v171 = __CocoaDictionary.count.getter();
      }

      else
      {
        v171 = *(v168 + 16);
      }

      if (v171)
      {
LABEL_81:
        v172 = v0[50];
        v173 = v0[45];
        v174 = v0[46];
        v175 = v0[30];
        UUID.init()();
        swift_beginAccess();
        v176 = *(inited + 24);

        v178 = sub_1003A8B54(v177);
        swift_bridgeObjectRelease_n();
        (*(v174 + 32))(v175, v172, v173);
        v179 = type metadata accessor for CloudKitChangeSet(0);
        *(v175 + *(v179 + 20)) = v178;
        *(v175 + *(v179 + 24)) = v167;
        (*(*(v179 - 8) + 56))(v175, 0, 1, v179);
      }

      else
      {
        v180 = v0[30];

        v181 = type metadata accessor for CloudKitChangeSet(0);
        (*(*(v181 - 8) + 56))(v180, 1, 1, v181);
      }

      v91 = v0[53];
      v93 = sub_100F66094;
      v92 = 0;

      return _swift_task_switch(v93, v91, v92);
    }

    v163 = v147 + v146;
    v164 = 1;
    while (v164 < *(v141 + 16))
    {
      v165 = v0[28];
      sub_100F80550(v0[62] + v163, v165, type metadata accessor for SharingCircleSecret);
      sub_100D44DD8(v165);
      ++v164;
      v93 = sub_100F806B4(v0[28], type metadata accessor for SharingCircleSecret);
      v163 += v147;
      if (v143 == v164)
      {
        goto LABEL_74;
      }
    }

LABEL_90:
    __break(1u);
    return _swift_task_switch(v93, v91, v92);
  }

  v83 = v0[62];
  v84 = v0[60];
  v85 = v0[56];
  v86 = v0[34];

  swift_setDeallocating();
  v87 = *(inited + 16);

  v88 = *(inited + 24);

  v89 = type metadata accessor for OwnerSharingCircle;
  v90 = v86;
LABEL_67:
  sub_100F806B4(v90, v89);
  v153 = v0[50];
  v152 = v0[51];
  v155 = v0[48];
  v154 = v0[49];
  v156 = v0[47];
  v157 = v0[43];
  v158 = v0[44];
  v160 = v0[41];
  v159 = v0[42];
  v182 = v0[38];
  v183 = v0[37];
  v184 = v0[36];
  v185 = v0[35];
  v187 = v0[34];
  v189 = v0[33];
  v191 = v0[30];
  v193 = v0[29];
  v195 = v0[28];
  v197 = v0[27];
  v200 = v0[26];
  v203 = v0[23];
  v206 = v0[22];
  v210 = v0[19];

  v161 = v0[1];

  return v161();
}

uint64_t sub_100F660BC()
{
  v1 = v0[64];
  v2 = v0[30];
  v3 = swift_task_alloc();
  v0[65] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[66] = v5;
  *v5 = v0;
  v5[1] = sub_100F661B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100F661B4()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = sub_100F66488;
  }

  else
  {
    v5 = *(v2 + 520);

    v4 = sub_100F662D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F662EC()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[47];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[19];
  sub_10000B3A8(v0[30], &qword_1016975C8, &qword_10138C1F0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F66488()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_100F664F4, v2, 0);
}

uint64_t sub_100F664F4()
{
  sub_10000B3A8(v0[30], &qword_1016975C8, &qword_10138C1F0);
  v26 = v0[67];
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v7 = v0[43];
  v6 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[38];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[22];
  v25 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F66694(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OwnerPeerTrust();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v2[10] = *(v7 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for OwnerSharingCircle();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100F6685C, v1, 0);
}

uint64_t sub_100F6685C()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100F66880, v1, 0);
}

uint64_t sub_100F66880()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = *(v3 + 16);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 232) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_100F669F8;
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100F80354, v9, v13);
}

uint64_t sub_100F669F8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100F66B24, v3, 0);
}

uint64_t sub_100F66B24()
{
  v40 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  if ((*(*(v0 + 128) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 24);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A560);
    v4(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39[0] = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, v39);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failure on share re-create, share for %{private,mask.hash}s doesn't exist.", v15, 0x16u);
      sub_100007BAC(v16);

LABEL_10:
      sub_1001118C8();
      swift_allocError();
      *v25 = 4;
      swift_willThrow();
      v26 = *(v0 + 136);
      v27 = *(v0 + 112);
      v29 = *(v0 + 88);
      v28 = *(v0 + 96);
      v30 = *(v0 + 56);

      v31 = *(v0 + 8);

      return v31();
    }

LABEL_9:

    (*(v14 + 8))(v12, v13);
    goto LABEL_10;
  }

  v21 = *(v0 + 136);
  sub_100F80620(v2, v21, type metadata accessor for OwnerSharingCircle);
  v22 = *(v21 + *(v1 + 32));
  v9 = *(v22 + 16);
  if (v9)
  {
    v23 = *(v0 + 232);
    v24 = sub_1003A85FC(*(v22 + 16), 0);
    v12 = sub_1003CC2CC(v39, v24 + ((v23 + 32) & ~v23), v9, v22);
    v13 = v39[1];
    v14 = v39[4];

    sub_1000128F8();
    if (v12 != v9)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  *(v0 + 184) = v24;
  *(v0 + 16) = v24;
  v33 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v34 = swift_task_alloc();
  *(v0 + 192) = v34;
  v35 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v36 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v34 = v0;
  v34[1] = sub_100F66FA4;
  v37 = *(v0 + 32);
  v38 = *(v0 + 40);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013F4F78, v37, v35, v38, v36);
}

uint64_t sub_100F66FA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 184);
    v8 = *(v3 + 32);

    return _swift_task_switch(sub_100F670E8, v8, 0);
  }
}

uint64_t sub_100F670E8()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = (v0[7] + *(v0[5] + 32));
    v5 = objc_opt_self();
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[7];
      sub_100F80550(v6, v8, type metadata accessor for OwnerPeerTrust);
      v9 = *v4;
      v10 = v4[1];
      v11 = String._bridgeToObjectiveC()();
      v12 = [v5 handleWithString:v11];

      sub_100F806B4(v8, type metadata accessor for OwnerPeerTrust);
      if (v12)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v6 += v7;
      --v2;
    }

    while (v2);
    v14 = v0[25];
  }

  else
  {
  }

  v15 = v0[17];
  v16 = v0[15];
  v17 = *(v16 + 24);
  v18 = sub_10112A6B4(_swiftEmptyArrayStorage);
  v0[26] = v18;

  v19 = *(v15 + *(v16 + 28));
  v20 = swift_task_alloc();
  v0[27] = v20;
  *v20 = v0;
  v20[1] = sub_100F6731C;
  v21 = v0[4];

  return sub_100F5A858(v15 + v17, v18, v19);
}

uint64_t sub_100F6731C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_100F67524;
  }

  else
  {
    v7 = sub_100F67464;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F67464()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[7];
  sub_100F806B4(v0[17], type metadata accessor for OwnerSharingCircle);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F67524()
{
  sub_100F806B4(v0[17], type metadata accessor for OwnerSharingCircle);
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F675E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100F676AC, 0, 0);
}

uint64_t sub_100F676AC()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100F676D0, v1, 0);
}

uint64_t sub_100F676D0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_100B4189C;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100F8042C, v6, v9);
}

uint64_t sub_100F67848(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 752) = v8;
  *(v9 + 744) = v80;
  *(v9 + 736) = v79;
  *(v9 + 728) = v78;
  *(v9 + 720) = v77;
  *(v9 + 2490) = v76;
  *(v9 + 712) = v75;
  *(v9 + 704) = v72;
  *(v9 + 2444) = v71;
  *(v9 + 2440) = v70;
  *(v9 + 696) = a5;
  *(v9 + 688) = a4;
  *(v9 + 2489) = a3;
  *(v9 + 2488) = a2;
  v12 = *(*(type metadata accessor for CircleTrustAckEnvelopeV1(0) - 8) + 64) + 15;
  *(v9 + 760) = swift_task_alloc();
  v13 = type metadata accessor for DispatchWorkItemFlags();
  *(v9 + 768) = v13;
  v14 = *(v13 - 8);
  *(v9 + 776) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 784) = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v9 + 792) = swift_task_alloc();
  v17 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v9 + 800) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  *(v9 + 824) = v19;
  v20 = *(v19 - 8);
  *(v9 + 832) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = swift_task_alloc();
  *(v9 + 856) = swift_task_alloc();
  *(v9 + 864) = swift_task_alloc();
  v22 = type metadata accessor for UUID();
  *(v9 + 872) = v22;
  v23 = *(v22 - 8);
  v24 = v23;
  *(v9 + 880) = v23;
  *(v9 + 888) = *(v23 + 64);
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  *(v9 + 952) = swift_task_alloc();
  v25 = sub_1000BC4D4(&qword_1016BA4F0, &qword_1013E4B68);
  *(v9 + 960) = v25;
  v26 = *(v25 - 8);
  *(v9 + 968) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  v28 = *(*(sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0) - 8) + 64) + 15;
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  *(v9 + 1032) = swift_task_alloc();
  v29 = type metadata accessor for SharedBeaconRecord(0);
  *(v9 + 1040) = v29;
  v30 = *(v29 - 8);
  *(v9 + 1048) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 1056) = swift_task_alloc();
  *(v9 + 1064) = swift_task_alloc();
  *(v9 + 1072) = swift_task_alloc();
  *(v9 + 1080) = swift_task_alloc();
  *(v9 + 1088) = swift_task_alloc();
  *(v9 + 1096) = swift_task_alloc();
  v32 = type metadata accessor for MemberPeerTrust();
  *(v9 + 1104) = v32;
  v33 = *(v32 - 8);
  *(v9 + 1112) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 1120) = swift_task_alloc();
  *(v9 + 1128) = swift_task_alloc();
  *(v9 + 1136) = swift_task_alloc();
  *(v9 + 1144) = swift_task_alloc();
  *(v9 + 1152) = swift_task_alloc();
  *(v9 + 1160) = swift_task_alloc();
  v35 = type metadata accessor for MemberSharingCircle();
  *(v9 + 1168) = v35;
  v36 = *(v35 - 8);
  *(v9 + 1176) = v36;
  *(v9 + 1184) = *(v36 + 64);
  *(v9 + 1192) = swift_task_alloc();
  *(v9 + 1200) = swift_task_alloc();
  *(v9 + 1208) = swift_task_alloc();
  *(v9 + 1216) = swift_task_alloc();
  *(v9 + 1224) = swift_task_alloc();
  v37 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  *(v9 + 1232) = v37;
  v38 = *(*(v37 - 1) + 64) + 15;
  *(v9 + 1240) = swift_task_alloc();
  *(v9 + 1248) = swift_task_alloc();
  *(v9 + 1256) = swift_task_alloc();
  *(v9 + 1264) = swift_task_alloc();
  *(v9 + 1272) = swift_task_alloc();
  *(v9 + 1280) = swift_task_alloc();
  *(v9 + 1288) = swift_task_alloc();
  *(v9 + 1296) = swift_task_alloc();
  *(v9 + 1304) = swift_task_alloc();
  *(v9 + 1312) = swift_task_alloc();
  *(v9 + 1320) = swift_task_alloc();
  v39 = swift_task_alloc();
  *(v9 + 1328) = v39;
  v40 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  *(v9 + 1336) = v40;
  v41 = *(*(v40 - 1) + 64) + 15;
  *(v9 + 1344) = swift_task_alloc();
  *(v9 + 1352) = swift_task_alloc();
  *(v9 + 1360) = swift_task_alloc();
  *(v9 + 1368) = swift_task_alloc();
  *(v9 + 1376) = swift_task_alloc();
  *(v9 + 1384) = swift_task_alloc();
  *(v9 + 1392) = swift_task_alloc();
  *(v9 + 1400) = swift_task_alloc();
  v42 = swift_task_alloc();
  *(v9 + 1408) = v42;
  v43 = *(v24 + 16);
  *(v9 + 1416) = v43;
  *(v9 + 1424) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43();
  *(v42 + v40[12]) = a2;
  v44 = v42 + v40[16];
  *v44 = a3;
  *(v44 + 8) = a4;
  *(v44 + 16) = a5;
  v45 = (v42 + v40[20]);
  *v45 = a6;
  v45[1] = a7;
  *(v42 + v40[24]) = a8;
  v46 = v40[28];
  *(v9 + 2448) = v46;
  v47 = (v42 + v46);
  *v47 = v60;
  v47[1] = v61;
  (v43)(v39, v62, v22);
  v48 = v37[12];
  *(v9 + 2452) = v48;
  sub_1000D2A70(v63, v39 + v48, &qword_1016980D0, &unk_10138F3B0);
  v49 = (v39 + v37[16]);
  *v49 = v64;
  v49[1] = v65;
  v50 = (v39 + v37[20]);
  *v50 = v66;
  v50[1] = v67;
  v51 = (v39 + v37[24]);
  *v51 = v68;
  v51[1] = v69;
  *(v39 + v37[28]) = v70;
  *(v39 + v37[32]) = v71;
  *(v39 + v37[36]) = v72;
  v52 = (v39 + v37[40]);
  *v52 = v73;
  v52[1] = v74;

  sub_100017D5C(v60, v61);

  return (_swift_task_switch)(sub_100F6816C, 0);
}

uint64_t sub_100F6816C()
{
  v95 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  sub_1000D2A70(*(v0 + 1408), v1, &qword_10169EF90, &unk_10139FCF0);
  v5 = v1 + v2[16];
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v1 + v2[20] + 8);

  v9 = *(v1 + v2[24]);

  sub_100016590(*(v1 + v2[28]), *(v1 + v2[28] + 8));
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 _stripPotentialTokenURIWithToken:0];

  v12 = *(v3 + 8);
  *(v0 + 1432) = v12;
  *(v0 + 1440) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
    if (v15)
    {
      v16 = v15;
      v17 = v14;
      v18 = sub_100B5DEBC(v13, v14, v15);
      if (v18 != 2 && (v18 & 1) != 0)
      {
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000076D4(v19, qword_10177A560);
        swift_bridgeObjectRetain_n();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = *(v0 + 2490);
          v23 = swift_slowAlloc();
          v94[0] = swift_slowAlloc();
          *v23 = 136315651;
          if (v22)
          {
            v24 = 0;
            v25 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 400) = *(v0 + 712);
            v24 = dispatch thunk of CustomStringConvertible.description.getter();
            v25 = v27;
          }

          v28 = sub_1000136BC(v24, v25, v94);

          *(v23 + 4) = v28;
          *(v23 + 12) = 2160;
          *(v23 + 14) = 1752392040;
          *(v23 + 22) = 2081;

          v29 = sub_1000136BC(v17, v16, v94);

          *(v23 + 24) = v29;

          swift_bridgeObjectRelease_n();
          _os_log_impl(&_mh_execute_header, v20, v21, "%s Got a share suggestion from a blocked contact with handle %{private,mask.hash}s. Ignore it.", v23, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v30 = *(v0 + 1408);
        v31 = *(v0 + 1400);
        v32 = *(v0 + 1392);
        v33 = *(v0 + 1384);
        v34 = *(v0 + 1376);
        v35 = *(v0 + 1368);
        v36 = *(v0 + 1360);
        v37 = *(v0 + 1352);
        v40 = *(v0 + 1344);
        v41 = *(v0 + 1320);
        v42 = *(v0 + 1312);
        v43 = *(v0 + 1304);
        v44 = *(v0 + 1296);
        v45 = *(v0 + 1288);
        v46 = *(v0 + 1280);
        v47 = *(v0 + 1272);
        v48 = *(v0 + 1264);
        v49 = *(v0 + 1256);
        v50 = *(v0 + 1248);
        v51 = *(v0 + 1240);
        v52 = *(v0 + 1224);
        v53 = *(v0 + 1216);
        v54 = *(v0 + 1208);
        v55 = *(v0 + 1200);
        v56 = *(v0 + 1192);
        v57 = *(v0 + 1160);
        v58 = *(v0 + 1152);
        v59 = *(v0 + 1144);
        v60 = *(v0 + 1136);
        v61 = *(v0 + 1128);
        v62 = *(v0 + 1120);
        v63 = *(v0 + 1096);
        v64 = *(v0 + 1088);
        v65 = *(v0 + 1080);
        v66 = *(v0 + 1072);
        v67 = *(v0 + 1064);
        v68 = *(v0 + 1056);
        v69 = *(v0 + 1032);
        v70 = *(v0 + 1024);
        v71 = *(v0 + 1016);
        v72 = *(v0 + 1008);
        v73 = *(v0 + 1000);
        v74 = *(v0 + 992);
        v75 = *(v0 + 984);
        v76 = *(v0 + 976);
        v77 = *(v0 + 952);
        v78 = *(v0 + 944);
        v79 = *(v0 + 936);
        v80 = *(v0 + 928);
        v81 = *(v0 + 920);
        v82 = *(v0 + 912);
        v83 = *(v0 + 904);
        v84 = *(v0 + 896);
        v85 = *(v0 + 864);
        v86 = *(v0 + 856);
        v87 = *(v0 + 848);
        v88 = *(v0 + 840);
        v89 = *(v0 + 816);
        v90 = *(v0 + 808);
        v91 = *(v0 + 792);
        v92 = *(v0 + 784);
        v93 = *(v0 + 760);
        sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
        sub_10000B3A8(v30, &qword_10169EF90, &unk_10139FCF0);

        v38 = *(v0 + 8);

        return v38();
      }
    }
  }

  v26 = *(*(v0 + 752) + 160);
  *(v0 + 1448) = v26;

  return _swift_task_switch(sub_100F688C0, v26, 0);
}

uint64_t sub_100F688E8()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 1464) = v2;
  *v2 = v0;
  v2[1] = sub_100F689C4;
  v3 = *(v0 + 1456);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_100F689C4()
{
  v1 = *(*v0 + 1464);
  v3 = *v0;

  return _swift_task_switch(sub_100F68AC0, 0, 0);
}

uint64_t sub_100F68ADC()
{
  v211 = v0;
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 872);
  v10 = *(v6 + 56);
  *(v0 + 1472) = v10;
  *(v0 + 1480) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v8, 1, 1, v7);
  sub_1000D2A70(v3, v4, &qword_10169EF90, &unk_10139FCF0);
  v11 = *(v4 + v5[16] + 16);

  v12 = *(v4 + v5[20] + 8);

  v13 = *(v4 + v5[24]);
  *(v0 + 1488) = v13;
  sub_100016590(*(v4 + v5[28]), *(v4 + v5[28] + 8));
  v2(v4, v9);
  v14 = *(v13 + 16);
  *(v0 + 1496) = v14;
  if (v14)
  {
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 880);
    *(v0 + 1520) = 0;
    *(v0 + 1512) = _swiftEmptyArrayStorage;
    *(v0 + 1504) = _swiftEmptyDictionarySingleton;
    v18 = *(v0 + 1488);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 1000);
      v20 = *(v0 + 992);
      v202 = *(v0 + 872);
      v206 = *(v0 + 752);
      sub_1000D2A70(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v19, &qword_1016BA4F0, &qword_1013E4B68);
      v21 = *(v16 + 48);
      v22 = *(v19 + v21);
      *(v0 + 1528) = v22;
      v23 = *(v19 + v21 + 8);
      *(v0 + 1536) = v23;
      v24 = *(v16 + 64);
      v25 = *(v19 + v24);
      v26 = *(v19 + v24 + 8);
      v27 = (v20 + v21);
      v28 = (v20 + v24);
      (*(v17 + 32))(v20, v19, v202);
      *v27 = v22;
      v27[1] = v23;
      *v28 = v25;
      v28[1] = v26;
      v29 = *(v206 + 288);
      v30 = swift_task_alloc();
      *(v0 + 1544) = v30;
      *v30 = v0;
      v30[1] = sub_100F69B18;
      v31 = *(v0 + 1152);
      v32 = *(v0 + 992);
      v33 = *(v0 + 696);
      v34 = *(v0 + 2489);
      v35 = *(v0 + 2488);
      v213 = *(v0 + 688);
      v214 = v33;

      return sub_100E83E54(v31, v35, v32, v22, v23, v25, v26);
    }

    __break(1u);
    goto LABEL_29;
  }

  *(v0 + 1568) = _swiftEmptyDictionarySingleton;
  *(v0 + 1560) = _swiftEmptyArrayStorage;
  v37 = *(v0 + 1488);
  v38 = *(v0 + 1112);
  v39 = *(v0 + 1104);
  v40 = *(v0 + 1032);
  v41 = *(v0 + 1016);

  sub_1000D2A70(v40, v41, &qword_101698C10, &unk_10138C1E0);
  v42 = *(v38 + 48);
  *(v0 + 1576) = v42;
  *(v0 + 1584) = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v42(v41, 1, v39) == 1)
  {
    v43 = *(v0 + 1016);

    sub_10000B3A8(v43, &qword_101698C10, &unk_10138C1E0);
    sub_100D487D8();
    swift_allocError();
    *v44 = 4;
    swift_willThrow();
    if (qword_101694480 == -1)
    {
LABEL_8:
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177A560);
      swift_errorRetain();
      swift_errorRetain();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 2490);
        v49 = swift_slowAlloc();
        v210[0] = swift_slowAlloc();
        *v49 = 136315394;
        if (v48)
        {
          v50 = 0;
          v51 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 664) = *(v0 + 712);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v70;
        }

        v71 = *(v0 + 1032);
        v72 = sub_1000136BC(v50, v51, v210);

        *(v49 + 4) = v72;
        *(v49 + 12) = 2080;
        swift_getErrorValue();
        v74 = *(v0 + 296);
        v73 = *(v0 + 304);
        v75 = *(v0 + 312);
        v76 = Error.localizedDescription.getter();
        v78 = sub_1000136BC(v76, v77, v210);

        *(v49 + 14) = v78;

        _os_log_impl(&_mh_execute_header, v46, v47, "%s Failure on handleCircleTrust, preparing initial data: %s", v49, 0x16u);
        swift_arrayDestroy();

        v67 = v71;
      }

      else
      {
        v66 = *(v0 + 1032);

        v67 = v66;
      }

      sub_10000B3A8(v67, &qword_101698C10, &unk_10138C1E0);
      v79 = *(v0 + 1408);
      v80 = *(v0 + 1400);
      v81 = *(v0 + 1392);
      v82 = *(v0 + 1384);
      v83 = *(v0 + 1376);
      v84 = *(v0 + 1368);
      v85 = *(v0 + 1360);
      v86 = *(v0 + 1352);
      v137 = *(v0 + 1344);
      v138 = *(v0 + 1320);
      v139 = *(v0 + 1312);
      v140 = *(v0 + 1304);
      v141 = *(v0 + 1296);
      v142 = *(v0 + 1288);
      v143 = *(v0 + 1280);
      v144 = *(v0 + 1272);
      v145 = *(v0 + 1264);
      v146 = *(v0 + 1256);
      v147 = *(v0 + 1248);
      v148 = *(v0 + 1240);
      v149 = *(v0 + 1224);
      v150 = *(v0 + 1216);
      v151 = *(v0 + 1208);
      v152 = *(v0 + 1200);
      v153 = *(v0 + 1192);
      v154 = *(v0 + 1160);
      v155 = *(v0 + 1152);
      v156 = *(v0 + 1144);
      v157 = *(v0 + 1136);
      v158 = *(v0 + 1128);
      v159 = *(v0 + 1120);
      v160 = *(v0 + 1096);
      v161 = *(v0 + 1088);
      v162 = *(v0 + 1080);
      v163 = *(v0 + 1072);
      v164 = *(v0 + 1064);
      v165 = *(v0 + 1056);
      v166 = *(v0 + 1032);
      v167 = *(v0 + 1024);
      v168 = *(v0 + 1016);
      v169 = *(v0 + 1008);
      v170 = *(v0 + 1000);
      v171 = *(v0 + 992);
      v172 = *(v0 + 984);
      v173 = *(v0 + 976);
      v174 = *(v0 + 952);
      v175 = *(v0 + 944);
      v176 = *(v0 + 936);
      v177 = *(v0 + 928);
      v178 = *(v0 + 920);
      v179 = *(v0 + 912);
      v180 = *(v0 + 904);
      v181 = *(v0 + 896);
      v182 = *(v0 + 864);
      v185 = *(v0 + 856);
      v188 = *(v0 + 848);
      v191 = *(v0 + 840);
      v194 = *(v0 + 816);
      v197 = *(v0 + 808);
      v199 = *(v0 + 792);
      v203 = *(v0 + 784);
      v207 = *(v0 + 760);
      sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
      sub_10000B3A8(v79, &qword_10169EF90, &unk_10139FCF0);

      v87 = *(v0 + 8);

      return v87();
    }

LABEL_29:
    swift_once();
    goto LABEL_8;
  }

  v52 = *(v0 + 1160);
  v53 = *(v0 + 1136);
  sub_100F80620(*(v0 + 1016), v53, type metadata accessor for MemberPeerTrust);
  sub_100F80550(v53, v52, type metadata accessor for MemberPeerTrust);
  v54 = qword_101694480;

  if (v54 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 1408);
  v56 = *(v0 + 1392);
  v57 = *(v0 + 1328);
  v58 = *(v0 + 1320);
  v59 = type metadata accessor for Logger();
  *(v0 + 1592) = v59;
  *(v0 + 1600) = sub_1000076D4(v59, qword_10177A560);
  sub_1000D2A70(v55, v56, &qword_10169EF90, &unk_10139FCF0);
  sub_1000D2A70(v57, v58, &qword_10169EF88, &unk_1013E4B70);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v193 = v61;
    v62 = *(v0 + 2490);
    v63 = swift_slowAlloc();
    v210[0] = swift_slowAlloc();
    *v63 = 136316163;
    v196 = v60;
    if (v62)
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 672) = *(v0 + 712);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v88;
    }

    v200 = *(v0 + 1432);
    v204 = *(v0 + 1440);
    v89 = *(v0 + 1400);
    v90 = *(v0 + 1392);
    v91 = *(v0 + 1336);
    v189 = *(v0 + 1320);
    v92 = *(v0 + 1312);
    v183 = v90;
    v186 = *(v0 + 1232);
    v93 = *(v0 + 952);
    v208 = *(v0 + 880);
    v94 = *(v0 + 872);
    v95 = sub_1000136BC(v64, v65, v210);

    *(v63 + 4) = v95;
    *(v63 + 12) = 2160;
    *(v63 + 14) = 1752392040;
    *(v63 + 22) = 2081;
    sub_1000D2A70(v90, v89, &qword_10169EF90, &unk_10139FCF0);
    v96 = *(v89 + v91[16] + 16);

    v97 = *(v89 + v91[20] + 8);

    v98 = *(v89 + v91[24]);

    sub_100016590(*(v89 + v91[28]), *(v89 + v91[28] + 8));
    v99 = *(v208 + 32);
    v99(v93, v89, v94);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
    v100 = dispatch thunk of CustomStringConvertible.description.getter();
    v102 = v101;
    v200(v93, v94);
    v103 = sub_1000136BC(v100, v102, v210);

    *(v63 + 24) = v103;
    sub_10000B3A8(v183, &qword_10169EF90, &unk_10139FCF0);
    *(v63 + 32) = 2160;
    *(v63 + 34) = 1752392040;
    *(v63 + 42) = 2081;
    sub_1000D2A70(v189, v92, &qword_10169EF88, &unk_1013E4B70);
    v104 = v186[12];
    v105 = *(v92 + v186[16] + 8);

    v106 = *(v92 + v186[20] + 8);

    v107 = *(v92 + v186[24] + 8);

    v108 = *(v92 + v186[40] + 8);

    v99(v93, v92, v94);
    sub_10000B3A8(v92 + v104, &qword_1016980D0, &unk_10138F3B0);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v200(v93, v94);
    v112 = sub_1000136BC(v109, v111, v210);

    *(v63 + 44) = v112;
    sub_10000B3A8(v189, &qword_10169EF88, &unk_1013E4B70);
    _os_log_impl(&_mh_execute_header, v196, v193, "%s Update beacon attributes for shareId: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v63, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
    v68 = *(v0 + 1392);
    v69 = *(v0 + 1320);

    sub_10000B3A8(v68, &qword_10169EF90, &unk_10139FCF0);
    sub_10000B3A8(v69, &qword_10169EF88, &unk_1013E4B70);
  }

  v205 = *(v0 + 1440);
  v209 = *(v0 + 1448);
  v201 = *(v0 + 1432);
  v113 = *(v0 + 1328);
  v114 = *(v0 + 1312);
  v115 = *(v0 + 1304);
  v116 = *(v0 + 1296);
  v117 = *(v0 + 1232);
  v192 = *(v0 + 704);
  v195 = *(v0 + 872);
  sub_1000D2A70(v113, v114, &qword_10169EF88, &unk_1013E4B70);
  v198 = v117[12];
  v118 = (v114 + v117[16]);
  v184 = v118[1];
  v187 = *v118;
  v119 = *(v114 + v117[20] + 8);

  v120 = *(v114 + v117[24] + 8);

  v121 = *(v114 + v117[40] + 8);

  sub_1000D2A70(v113, v115, &qword_10169EF88, &unk_1013E4B70);
  v190 = v117[12];
  v122 = *(v115 + v117[16] + 8);

  v123 = *(v115 + v117[20] + 8);

  v124 = *(v115 + v117[24] + 8);

  v125 = (v115 + v117[40]);
  v126 = *v125;
  v127 = v125[1];
  sub_1000D2A70(v113, v116, &qword_10169EF88, &unk_1013E4B70);
  v128 = v117[12];
  v129 = *(v116 + v117[16] + 8);

  v130 = (v116 + v117[20]);
  v132 = *v130;
  v131 = v130[1];
  v133 = *(v116 + v117[24] + 8);

  v134 = *(v116 + v117[40] + 8);

  *(v0 + 16) = v187;
  *(v0 + 24) = v184;
  *(v0 + 32) = v192;
  *(v0 + 40) = v126;
  *(v0 + 48) = v127;
  *(v0 + 56) = v132;
  *(v0 + 64) = v131;
  *(v0 + 72) = 0;
  v135 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v136 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v136;
  *(v0 + 80) = 0;
  *(v0 + 152) = 0;
  *(v0 + 88) = v135;
  sub_10000B3A8(v116 + v128, &qword_1016980D0, &unk_10138F3B0);
  v201(v116, v195);
  sub_10000B3A8(v115 + v190, &qword_1016980D0, &unk_10138F3B0);
  v201(v115, v195);
  sub_10000B3A8(v114 + v198, &qword_1016980D0, &unk_10138F3B0);
  v201(v114, v195);

  return _swift_task_switch(sub_100F6B6E8, v209, 0);
}

uint64_t sub_100F69B18()
{
  v2 = *v1;
  v3 = *(*v1 + 1544);
  v11 = *v1;
  *(*v1 + 1552) = v0;

  if (v0)
  {
    v4 = v2[189];
    v5 = v2[188];
    v6 = v2[186];
    v7 = v2[94];

    v8 = sub_100F6B0B0;
    v9 = v7;
  }

  else
  {
    v9 = v2[94];
    v8 = sub_100F69C60;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100F69C60()
{
  v248 = v0;
  v1 = *(v0 + 1512);
  sub_100F80550(*(v0 + 1152), *(v0 + 1144), type metadata accessor for MemberPeerTrust);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C318(0, v3[2] + 1, 1, *(v0 + 1512));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5C318(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 1144);
  v7 = *(v0 + 1112);
  v3[2] = v5 + 1;
  sub_100F80620(v6, v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, type metadata accessor for MemberPeerTrust);
  if (qword_101694558 != -1)
  {
    swift_once();
  }

  v242 = v3;
  if ((*(v0 + 1528) != qword_10177A8F0 || *(v0 + 1536) != qword_10177A8F8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v21 = *(v0 + 1440);
    v22 = *(v0 + 1432);
    v23 = *(v0 + 984);
    v24 = *(v0 + 960);
    v25 = *(v0 + 872);
    sub_1000D2A70(*(v0 + 992), v23, &qword_1016BA4F0, &qword_1013E4B68);
    v26 = (v23 + *(v24 + 48));
    v28 = *v26;
    v27 = v26[1];
    sub_100016590(*(v23 + *(v24 + 64)), *(v23 + *(v24 + 64) + 8));

    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v233 = v29 != 0;
    v22(v23, v25);
    goto LABEL_23;
  }

  v8 = *(v0 + 1112);
  v9 = *(v0 + 1104);
  v10 = *(v0 + 1024);
  sub_1000D2A70(*(v0 + 1032), v10, &qword_101698C10, &unk_10138C1E0);
  if ((*(v8 + 48))(v10, 1, v9) != 1)
  {
    sub_10000B3A8(*(v0 + 1024), &qword_101698C10, &unk_10138C1E0);
    if (qword_101694480 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

  v11 = *(v0 + 1024);
  sub_10000B3A8(*(v0 + 1032), &qword_101698C10, &unk_10138C1E0);
  v12 = v11;
  while (1)
  {
    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
    v34 = *(v0 + 1480);
    v35 = *(v0 + 1472);
    v36 = *(v0 + 1104);
    v37 = *(v0 + 1032);
    sub_100F80550(*(v0 + 1152), v37, type metadata accessor for MemberPeerTrust);
    v233 = 1;
    v35(v37, 0, 1, v36);
LABEL_23:
    v38 = *(v0 + 1504);
    v237 = *(v0 + 1496);
    v39 = *(v0 + 1440);
    v40 = *(v0 + 1432);
    v41 = *(v0 + 1152);
    v42 = *(v0 + 992);
    v43 = *(v0 + 976);
    v44 = *(v0 + 960);
    v45 = *(v0 + 872);
    v46 = *(v0 + 1520) + 1;
    sub_1000D2A70(v42, v43, &qword_1016BA4F0, &qword_1013E4B68);
    v47 = *(v43 + *(v44 + 48) + 8);

    sub_100016590(*(v43 + *(v44 + 64)), *(v43 + *(v44 + 64) + 8));
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v247[0] = v38;
    sub_100FFCB84(v233, v43, v48);
    sub_100F806B4(v41, type metadata accessor for MemberPeerTrust);
    v40(v43, v45);
    sub_10000B3A8(v42, &qword_1016BA4F0, &qword_1013E4B68);
    if (v46 == v237)
    {
      *(v0 + 1568) = v38;
      *(v0 + 1560) = v242;
      v49 = *(v0 + 1488);
      v50 = *(v0 + 1112);
      v51 = *(v0 + 1104);
      v52 = *(v0 + 1032);
      v53 = *(v0 + 1016);

      sub_1000D2A70(v52, v53, &qword_101698C10, &unk_10138C1E0);
      v54 = *(v50 + 48);
      *(v0 + 1576) = v54;
      *(v0 + 1584) = (v50 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v54(v53, 1, v51) == 1)
      {
        v55 = *(v0 + 1016);

        sub_10000B3A8(v55, &qword_101698C10, &unk_10138C1E0);
        sub_100D487D8();
        swift_allocError();
        *v56 = 4;
        swift_willThrow();
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_1000076D4(v57, qword_10177A560);
        swift_errorRetain();
        swift_errorRetain();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = *(v0 + 2490);
          v61 = swift_slowAlloc();
          v247[0] = swift_slowAlloc();
          *v61 = 136315394;
          if (v60)
          {
            v62 = 0;
            v63 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 664) = *(v0 + 712);
            v62 = dispatch thunk of CustomStringConvertible.description.getter();
            v63 = v104;
          }

          v105 = *(v0 + 1032);
          v106 = sub_1000136BC(v62, v63, v247);

          *(v61 + 4) = v106;
          *(v61 + 12) = 2080;
          swift_getErrorValue();
          v108 = *(v0 + 296);
          v107 = *(v0 + 304);
          v109 = *(v0 + 312);
          v110 = Error.localizedDescription.getter();
          v112 = sub_1000136BC(v110, v111, v247);

          *(v61 + 14) = v112;

          _os_log_impl(&_mh_execute_header, v58, v59, "%s Failure on handleCircleTrust, preparing initial data: %s", v61, 0x16u);
          swift_arrayDestroy();

          v101 = v105;
        }

        else
        {
          v100 = *(v0 + 1032);

          v101 = v100;
        }

        sub_10000B3A8(v101, &qword_101698C10, &unk_10138C1E0);
        v113 = *(v0 + 1408);
        v114 = *(v0 + 1400);
        v115 = *(v0 + 1392);
        v116 = *(v0 + 1384);
        v117 = *(v0 + 1376);
        v118 = *(v0 + 1368);
        v119 = *(v0 + 1360);
        v120 = *(v0 + 1352);
        v171 = *(v0 + 1344);
        v172 = *(v0 + 1320);
        v173 = *(v0 + 1312);
        v174 = *(v0 + 1304);
        v175 = *(v0 + 1296);
        v176 = *(v0 + 1288);
        v177 = *(v0 + 1280);
        v178 = *(v0 + 1272);
        v179 = *(v0 + 1264);
        v180 = *(v0 + 1256);
        v181 = *(v0 + 1248);
        v182 = *(v0 + 1240);
        v183 = *(v0 + 1224);
        v184 = *(v0 + 1216);
        v185 = *(v0 + 1208);
        v186 = *(v0 + 1200);
        v187 = *(v0 + 1192);
        v188 = *(v0 + 1160);
        v189 = *(v0 + 1152);
        v190 = *(v0 + 1144);
        v191 = *(v0 + 1136);
        v192 = *(v0 + 1128);
        v193 = *(v0 + 1120);
        v194 = *(v0 + 1096);
        v195 = *(v0 + 1088);
        v196 = *(v0 + 1080);
        v197 = *(v0 + 1072);
        v198 = *(v0 + 1064);
        v199 = *(v0 + 1056);
        v200 = *(v0 + 1032);
        v201 = *(v0 + 1024);
        v202 = *(v0 + 1016);
        v203 = *(v0 + 1008);
        v204 = *(v0 + 1000);
        v205 = *(v0 + 992);
        v206 = *(v0 + 984);
        v207 = *(v0 + 976);
        v208 = *(v0 + 952);
        v209 = *(v0 + 944);
        v210 = *(v0 + 936);
        v211 = *(v0 + 928);
        v212 = *(v0 + 920);
        v213 = *(v0 + 912);
        v214 = *(v0 + 904);
        v215 = *(v0 + 896);
        v216 = *(v0 + 864);
        v219 = *(v0 + 856);
        v222 = *(v0 + 848);
        v225 = *(v0 + 840);
        v228 = *(v0 + 816);
        v231 = *(v0 + 808);
        v234 = *(v0 + 792);
        v239 = *(v0 + 784);
        v244 = *(v0 + 760);
        sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
        sub_10000B3A8(v113, &qword_10169EF90, &unk_10139FCF0);

        v121 = *(v0 + 8);

        return v121();
      }

      else
      {
        v86 = *(v0 + 1160);
        v87 = *(v0 + 1136);
        sub_100F80620(*(v0 + 1016), v87, type metadata accessor for MemberPeerTrust);
        sub_100F80550(v87, v86, type metadata accessor for MemberPeerTrust);
        v88 = qword_101694480;

        if (v88 != -1)
        {
          swift_once();
        }

        v89 = *(v0 + 1408);
        v90 = *(v0 + 1392);
        v91 = *(v0 + 1328);
        v92 = *(v0 + 1320);
        v93 = type metadata accessor for Logger();
        *(v0 + 1592) = v93;
        *(v0 + 1600) = sub_1000076D4(v93, qword_10177A560);
        sub_1000D2A70(v89, v90, &qword_10169EF90, &unk_10139FCF0);
        sub_1000D2A70(v91, v92, &qword_10169EF88, &unk_1013E4B70);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v227 = v95;
          v96 = *(v0 + 2490);
          v97 = swift_slowAlloc();
          v247[0] = swift_slowAlloc();
          *v97 = 136316163;
          v230 = v94;
          if (v96)
          {
            v98 = 0;
            v99 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 672) = *(v0 + 712);
            v98 = dispatch thunk of CustomStringConvertible.description.getter();
            v99 = v122;
          }

          v235 = *(v0 + 1432);
          v240 = *(v0 + 1440);
          v123 = *(v0 + 1400);
          v124 = *(v0 + 1392);
          v125 = *(v0 + 1336);
          v223 = *(v0 + 1320);
          v126 = *(v0 + 1312);
          v217 = v124;
          v220 = *(v0 + 1232);
          v127 = *(v0 + 952);
          v245 = *(v0 + 880);
          v128 = *(v0 + 872);
          v129 = sub_1000136BC(v98, v99, v247);

          *(v97 + 4) = v129;
          *(v97 + 12) = 2160;
          *(v97 + 14) = 1752392040;
          *(v97 + 22) = 2081;
          sub_1000D2A70(v124, v123, &qword_10169EF90, &unk_10139FCF0);
          v130 = *(v123 + v125[16] + 16);

          v131 = *(v123 + v125[20] + 8);

          v132 = *(v123 + v125[24]);

          sub_100016590(*(v123 + v125[28]), *(v123 + v125[28] + 8));
          v133 = *(v245 + 32);
          v133(v127, v123, v128);
          sub_100F80970(&qword_101696930, &type metadata accessor for UUID);
          v134 = dispatch thunk of CustomStringConvertible.description.getter();
          v136 = v135;
          v235(v127, v128);
          v137 = sub_1000136BC(v134, v136, v247);

          *(v97 + 24) = v137;
          sub_10000B3A8(v217, &qword_10169EF90, &unk_10139FCF0);
          *(v97 + 32) = 2160;
          *(v97 + 34) = 1752392040;
          *(v97 + 42) = 2081;
          sub_1000D2A70(v223, v126, &qword_10169EF88, &unk_1013E4B70);
          v138 = v220[12];
          v139 = *(v126 + v220[16] + 8);

          v140 = *(v126 + v220[20] + 8);

          v141 = *(v126 + v220[24] + 8);

          v142 = *(v126 + v220[40] + 8);

          v133(v127, v126, v128);
          sub_10000B3A8(v126 + v138, &qword_1016980D0, &unk_10138F3B0);
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v145 = v144;
          v235(v127, v128);
          v146 = sub_1000136BC(v143, v145, v247);

          *(v97 + 44) = v146;
          sub_10000B3A8(v223, &qword_10169EF88, &unk_1013E4B70);
          _os_log_impl(&_mh_execute_header, v230, v227, "%s Update beacon attributes for shareId: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v97, 0x34u);
          swift_arrayDestroy();
        }

        else
        {
          v102 = *(v0 + 1392);
          v103 = *(v0 + 1320);

          sub_10000B3A8(v102, &qword_10169EF90, &unk_10139FCF0);
          sub_10000B3A8(v103, &qword_10169EF88, &unk_1013E4B70);
        }

        v241 = *(v0 + 1440);
        v246 = *(v0 + 1448);
        v236 = *(v0 + 1432);
        v147 = *(v0 + 1328);
        v148 = *(v0 + 1312);
        v149 = *(v0 + 1304);
        v150 = *(v0 + 1296);
        v151 = *(v0 + 1232);
        v226 = *(v0 + 704);
        v229 = *(v0 + 872);
        sub_1000D2A70(v147, v148, &qword_10169EF88, &unk_1013E4B70);
        v232 = v151[12];
        v152 = (v148 + v151[16]);
        v218 = v152[1];
        v221 = *v152;
        v153 = *(v148 + v151[20] + 8);

        v154 = *(v148 + v151[24] + 8);

        v155 = *(v148 + v151[40] + 8);

        sub_1000D2A70(v147, v149, &qword_10169EF88, &unk_1013E4B70);
        v224 = v151[12];
        v156 = *(v149 + v151[16] + 8);

        v157 = *(v149 + v151[20] + 8);

        v158 = *(v149 + v151[24] + 8);

        v159 = (v149 + v151[40]);
        v160 = *v159;
        v161 = v159[1];
        sub_1000D2A70(v147, v150, &qword_10169EF88, &unk_1013E4B70);
        v162 = v151[12];
        v163 = *(v150 + v151[16] + 8);

        v164 = (v150 + v151[20]);
        v166 = *v164;
        v165 = v164[1];
        v167 = *(v150 + v151[24] + 8);

        v168 = *(v150 + v151[40] + 8);

        *(v0 + 16) = v221;
        *(v0 + 24) = v218;
        *(v0 + 32) = v226;
        *(v0 + 40) = v160;
        *(v0 + 48) = v161;
        *(v0 + 56) = v166;
        *(v0 + 64) = v165;
        *(v0 + 72) = 0;
        v169 = *(v0 + 16);
        *(v0 + 104) = *(v0 + 32);
        v170 = *(v0 + 64);
        *(v0 + 120) = *(v0 + 48);
        *(v0 + 136) = v170;
        *(v0 + 80) = 0;
        *(v0 + 152) = 0;
        *(v0 + 88) = v169;
        sub_10000B3A8(v150 + v162, &qword_1016980D0, &unk_10138F3B0);
        v236(v150, v229);
        sub_10000B3A8(v149 + v224, &qword_1016980D0, &unk_10138F3B0);
        v236(v149, v229);
        sub_10000B3A8(v148 + v232, &qword_1016980D0, &unk_10138F3B0);
        v236(v148, v229);

        return _swift_task_switch(sub_100F6B6E8, v246, 0);
      }
    }

    v64 = *(v0 + 1520) + 1;
    *(v0 + 1520) = v64;
    *(v0 + 1512) = v242;
    *(v0 + 1504) = v38;
    v65 = *(v0 + 1488);
    if (v64 < *(v65 + 16))
    {
      break;
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_13:
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177A560);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 2490);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *(v0 + 576) = v18;
      *v17 = 136315138;
      if (v16)
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 560) = *(v0 + 712);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v31;
      }

      v32 = *(v0 + 1032);
      v33 = sub_1000136BC(v19, v20, (v0 + 576));

      *(v17 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Several peer trusts with owner account description!", v17, 0xCu);
      sub_100007BAC(v18);

      v12 = v32;
    }

    else
    {
      v30 = *(v0 + 1032);

      v12 = v30;
    }
  }

  v66 = *(v0 + 1000);
  v67 = *(v0 + 992);
  v68 = *(v0 + 960);
  v69 = *(v0 + 880);
  v238 = *(v0 + 872);
  v243 = *(v0 + 752);
  sub_1000D2A70(v65 + ((*(*(v0 + 968) + 80) + 32) & ~*(*(v0 + 968) + 80)) + *(*(v0 + 968) + 72) * v64, v66, &qword_1016BA4F0, &qword_1013E4B68);
  v70 = *(v68 + 48);
  v71 = *(v66 + v70);
  *(v0 + 1528) = v71;
  v72 = *(v66 + v70 + 8);
  *(v0 + 1536) = v72;
  v73 = *(v68 + 64);
  v74 = *(v66 + v73);
  v75 = *(v66 + v73 + 8);
  v76 = (v67 + v70);
  v77 = (v67 + v73);
  (*(v69 + 32))(v67, v66, v238);
  *v76 = v71;
  v76[1] = v72;
  *v77 = v74;
  v77[1] = v75;
  v78 = *(v243 + 288);
  v79 = swift_task_alloc();
  *(v0 + 1544) = v79;
  *v79 = v0;
  v79[1] = sub_100F69B18;
  v80 = *(v0 + 1152);
  v81 = *(v0 + 992);
  v82 = *(v0 + 696);
  v83 = *(v0 + 2489);
  v84 = *(v0 + 2488);
  v250 = *(v0 + 688);
  v251 = v82;

  return sub_100E83E54(v80, v84, v81, v71, v72, v74, v75);
}

uint64_t sub_100F6B0B0()
{
  v85 = v0;
  sub_10000B3A8(*(v0 + 992), &qword_1016BA4F0, &qword_1013E4B68);
  v1 = *(v0 + 1552);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v6 = 136315394;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 664) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v11;
    }

    v12 = *(v0 + 1032);
    v13 = sub_1000136BC(v7, v8, v84);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 312);
    v17 = Error.localizedDescription.getter();
    v19 = sub_1000136BC(v17, v18, v84);

    *(v6 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, preparing initial data: %s", v6, 0x16u);
    swift_arrayDestroy();

    v10 = v12;
  }

  else
  {
    v9 = *(v0 + 1032);

    v10 = v9;
  }

  sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
  v20 = *(v0 + 1408);
  v21 = *(v0 + 1400);
  v22 = *(v0 + 1392);
  v23 = *(v0 + 1384);
  v24 = *(v0 + 1376);
  v25 = *(v0 + 1368);
  v26 = *(v0 + 1360);
  v27 = *(v0 + 1352);
  v30 = *(v0 + 1344);
  v31 = *(v0 + 1320);
  v32 = *(v0 + 1312);
  v33 = *(v0 + 1304);
  v34 = *(v0 + 1296);
  v35 = *(v0 + 1288);
  v36 = *(v0 + 1280);
  v37 = *(v0 + 1272);
  v38 = *(v0 + 1264);
  v39 = *(v0 + 1256);
  v40 = *(v0 + 1248);
  v41 = *(v0 + 1240);
  v42 = *(v0 + 1224);
  v43 = *(v0 + 1216);
  v44 = *(v0 + 1208);
  v45 = *(v0 + 1200);
  v46 = *(v0 + 1192);
  v47 = *(v0 + 1160);
  v48 = *(v0 + 1152);
  v49 = *(v0 + 1144);
  v50 = *(v0 + 1136);
  v51 = *(v0 + 1128);
  v52 = *(v0 + 1120);
  v53 = *(v0 + 1096);
  v54 = *(v0 + 1088);
  v55 = *(v0 + 1080);
  v56 = *(v0 + 1072);
  v57 = *(v0 + 1064);
  v58 = *(v0 + 1056);
  v59 = *(v0 + 1032);
  v60 = *(v0 + 1024);
  v61 = *(v0 + 1016);
  v62 = *(v0 + 1008);
  v63 = *(v0 + 1000);
  v64 = *(v0 + 992);
  v65 = *(v0 + 984);
  v66 = *(v0 + 976);
  v67 = *(v0 + 952);
  v68 = *(v0 + 944);
  v69 = *(v0 + 936);
  v70 = *(v0 + 928);
  v71 = *(v0 + 920);
  v72 = *(v0 + 912);
  v73 = *(v0 + 904);
  v74 = *(v0 + 896);
  v75 = *(v0 + 864);
  v76 = *(v0 + 856);
  v77 = *(v0 + 848);
  v78 = *(v0 + 840);
  v79 = *(v0 + 816);
  v80 = *(v0 + 808);
  v81 = *(v0 + 792);
  v82 = *(v0 + 784);
  v83 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v20, &qword_10169EF90, &unk_10139FCF0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100F6B6E8()
{
  v1 = *(v0 + 1448);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1608) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100F6B7C8;
  v5 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v0 + 528, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_100F6B7C8()
{
  v1 = *(*v0 + 1608);
  v2 = *(*v0 + 1448);
  v4 = *v0;

  return _swift_task_switch(sub_100F6B8E0, v2, 0);
}

uint64_t sub_100F6B8E0()
{
  v1 = v0[94];
  v0[202] = v0[66];
  return _swift_task_switch(sub_100F6B904, v1, 0);
}

uint64_t sub_100F6B904()
{
  v1 = v0[118];
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = swift_task_alloc();
  v0[203] = v3;
  *v3 = v0;
  v3[1] = sub_100F6B9B4;
  v4 = v0[202];
  v5 = v0[166];
  v6 = v0[118];

  return sub_1012D7224((v0 + 11), v5, v6);
}

uint64_t sub_100F6B9B4()
{
  v2 = *v1;
  v3 = *(*v1 + 1624);
  v4 = *v1;
  *(v2 + 1632) = v0;

  v5 = *(v2 + 1616);
  if (v0)
  {
    v6 = *(v2 + 1440);
    v7 = *(v2 + 752);
    (*(v2 + 1432))(*(v2 + 944), *(v2 + 872));

    sub_1002497F0(v2 + 16);
    v8 = sub_100F797AC;
  }

  else
  {
    v7 = *(v2 + 1448);
    v9 = *(v2 + 1440);
    (*(v2 + 1432))(*(v2 + 944), *(v2 + 872));

    sub_1002497F0(v2 + 16);
    v8 = sub_100F6BB34;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F6BB34()
{
  v1 = v0[181];
  v2 = swift_allocObject();
  v0[205] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 13;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[206] = v4;
  *v4 = v0;
  v4[1] = sub_100F6BC40;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 8);
}

uint64_t sub_100F6BC40()
{
  v1 = *(*v0 + 1648);
  v2 = *(*v0 + 1640);
  v3 = *(*v0 + 1448);
  v5 = *v0;

  return _swift_task_switch(sub_100F6BD6C, v3, 0);
}

uint64_t sub_100F6BD90()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 952);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 872);
  (*(v0 + 1416))(v3, *(v0 + 1328), v6);
  v7 = *(v5 + 80);
  *(v0 + 2456) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 1664) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 1672) = v10;
  *(v0 + 1680) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 1688) = v12;
  v13 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *(v0 + 1696) = v13;
  *v12 = v0;
  v12[1] = sub_100F6BF1C;

  return unsafeBlocking<A>(context:_:)(v0 + 504, 0xD000000000000010, 0x800000010134A8C0, sub_100F800B4, v9, v13);
}

uint64_t sub_100F6BF1C()
{
  v1 = *(*v0 + 1688);
  v2 = *(*v0 + 1664);
  v3 = *(*v0 + 1448);
  v5 = *v0;

  return _swift_task_switch(sub_100F6C048, v3, 0);
}

uint64_t sub_100F6C048()
{
  v1 = v0[94];
  v0[213] = v0[63];
  return _swift_task_switch(sub_100F6C06C, v1, 0);
}

uint64_t sub_100F6C06C()
{
  v48 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  sub_1000D2A70(*(v0 + 1328), v1, &qword_10169EF88, &unk_1013E4B70);
  v5 = v2[12];
  v6 = *(v1 + v2[16] + 8);

  v7 = *(v1 + v2[20] + 8);

  v8 = *(v1 + v2[24] + 8);

  v9 = *(v1 + v2[40] + 8);

  v10 = *(v3 + 48);
  *(v0 + 1712) = v10;
  *(v0 + 1720) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v1 + v5, 1, v4) == 1)
  {
    v11 = *(v0 + 1440);
    v12 = *(v0 + 1432);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 872);
    sub_10000B3A8(v1 + v5, &qword_1016980D0, &unk_10138F3B0);
    v12(v13, v14);
    v15 = *(v0 + 1656);
    *(v0 + 1824) = _swiftEmptyArrayStorage;
    *(v0 + 1816) = v15;
    v16 = *(v0 + 1704);
    v17 = *(v0 + 1600);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 2490);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 136315650;
      if (v20)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 624) = *(v0 + 712);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v34;
      }

      v35 = *(v0 + 1704);
      v36 = sub_1000136BC(v23, v24, &v47);

      *(v21 + 4) = v36;
      *(v21 + 12) = 2048;
      v37 = *(v35 + 16);

      *(v21 + 14) = v37;

      *(v21 + 22) = 2048;
      v38 = _swiftEmptyArrayStorage[2];

      *(v21 + 24) = v38;

      _os_log_impl(&_mh_execute_header, v18, v19, "%s Existing member circles for beacon %ld, by owner beacon id: %ld.", v21, 0x20u);
      sub_100007BAC(v22);
    }

    else
    {
      v33 = *(v0 + 1704);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v47 = *(v0 + 1704);

    sub_100399680(v39);
    v40 = v47;
    *(v0 + 1832) = v47;
    v41 = *(v40 + 16);
    *(v0 + 1840) = v41;
    if (v41)
    {
      v42 = *(v0 + 1176);
      v43 = *(v0 + 824);
      v44 = *(v42 + 80);
      *(v0 + 2468) = v44;
      *(v0 + 1848) = *(v42 + 72);
      *(v0 + 1864) = _swiftEmptyArrayStorage;
      *(v0 + 1856) = 0;
      v45 = *(v0 + 1448);
      sub_100F80550(v40 + ((v44 + 32) & ~v44), *(v0 + 1216), type metadata accessor for MemberSharingCircle);
      *(v0 + 2472) = v43[12];
      *(v0 + 2476) = v43[16];
      *(v0 + 2480) = v43[20];
      *(v0 + 2484) = v43[24];
      v31 = sub_100F6D21C;
    }

    else
    {
      *(v0 + 1904) = _swiftEmptyArrayStorage;
      v45 = *(v0 + 1448);

      v31 = sub_100F6D874;
    }

    v32 = v45;
  }

  else
  {
    v25 = *(v0 + 1680);
    v26 = *(v0 + 1448);
    v27 = *(v0 + 1440);
    v28 = *(v0 + 1432);
    v29 = *(v0 + 1288);
    v30 = *(v0 + 872);
    (*(v0 + 1672))(*(v0 + 936), v1 + v5, v30);
    v28(v29, v30);
    v31 = sub_100F6C46C;
    v32 = v26;
  }

  return _swift_task_switch(v31, v32, 0);
}

uint64_t sub_100F6C46C()
{
  v1 = *(v0 + 1448);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1728) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_100F6C558;
  v5 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v0 + 632, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4AC, v5, v4);
}

uint64_t sub_100F6C558()
{
  v1 = *(*v0 + 1728);
  v2 = *(*v0 + 1448);
  v4 = *v0;

  return _swift_task_switch(sub_100F6C670, v2, 0);
}

uint64_t sub_100F6C670()
{
  v1 = v0[94];
  v0[217] = v0[79];
  return _swift_task_switch(sub_100F6C694, v1, 0);
}

uint64_t sub_100F6C694()
{
  v45 = v0;
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 936);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_10013D0F8(sub_100F8032C, v5, v1);
  *(v0 + 1744) = v6;
  *(v0 + 1752) = v2;

  v7 = *(v6 + 16);
  *(v0 + 1760) = v7;
  if (v7)
  {
    v8 = *(v0 + 1088);
    v9 = *(v0 + 1048);
    v10 = *(*(v0 + 1040) + 20);
    *(v0 + 2460) = v10;
    v11 = *(v9 + 80);
    *(v0 + 2464) = v11;
    *(v0 + 1768) = *(v9 + 72);
    *(v0 + 1784) = _swiftEmptyArrayStorage;
    *(v0 + 1776) = 0;
    v12 = *(v0 + 1448);
    v13 = *(v0 + 1424);
    v14 = *(v0 + 1416);
    v15 = *(v0 + 952);
    v16 = *(v0 + 872);
    sub_100F80550(*(v0 + 1744) + ((v11 + 32) & ~v11), v8, type metadata accessor for SharedBeaconRecord);
    v14(v15, v8 + v10, v16);
    sub_100F806B4(v8, type metadata accessor for SharedBeaconRecord);
    v17 = sub_100F6CAA4;
    v18 = v12;
  }

  else
  {

    v19 = *(v0 + 1440);
    (*(v0 + 1432))(*(v0 + 936), *(v0 + 872));
    v20 = *(v0 + 1752);
    *(v0 + 1824) = _swiftEmptyArrayStorage;
    *(v0 + 1816) = v20;
    v21 = *(v0 + 1704);
    v22 = *(v0 + 1600);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 2490);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315650;
      if (v25)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 624) = *(v0 + 712);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v31;
      }

      v32 = *(v0 + 1704);
      v33 = sub_1000136BC(v28, v29, &v44);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2048;
      v34 = *(v32 + 16);

      *(v26 + 14) = v34;

      *(v26 + 22) = 2048;
      v35 = _swiftEmptyArrayStorage[2];

      *(v26 + 24) = v35;

      _os_log_impl(&_mh_execute_header, v23, v24, "%s Existing member circles for beacon %ld, by owner beacon id: %ld.", v26, 0x20u);
      sub_100007BAC(v27);
    }

    else
    {
      v30 = *(v0 + 1704);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v44 = *(v0 + 1704);

    sub_100399680(v36);
    v37 = v44;
    *(v0 + 1832) = v44;
    v38 = *(v37 + 16);
    *(v0 + 1840) = v38;
    if (v38)
    {
      v39 = *(v0 + 1176);
      v40 = *(v0 + 824);
      v41 = *(v39 + 80);
      *(v0 + 2468) = v41;
      *(v0 + 1848) = *(v39 + 72);
      *(v0 + 1864) = _swiftEmptyArrayStorage;
      *(v0 + 1856) = 0;
      v42 = *(v0 + 1448);
      sub_100F80550(v37 + ((v41 + 32) & ~v41), *(v0 + 1216), type metadata accessor for MemberSharingCircle);
      *(v0 + 2472) = v40[12];
      *(v0 + 2476) = v40[16];
      *(v0 + 2480) = v40[20];
      *(v0 + 2484) = v40[24];
      v17 = sub_100F6D21C;
    }

    else
    {
      *(v0 + 1904) = _swiftEmptyArrayStorage;
      v42 = *(v0 + 1448);

      v17 = sub_100F6D874;
    }

    v18 = v42;
  }

  return _swift_task_switch(v17, v18, 0);
}

uint64_t sub_100F6CAA4()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1424);
  v5 = *(v0 + 928);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = (*(v0 + 2456) + 24) & ~*(v0 + 2456);
  (*(v0 + 1416))(v5, *(v0 + 952), v7);
  v9 = swift_allocObject();
  *(v0 + 1792) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1800) = v11;
  *v11 = v0;
  v11[1] = sub_100F6CC00;
  v12 = *(v0 + 1696);

  return unsafeBlocking<A>(context:_:)(v0 + 640, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E5C, v9, v12);
}

uint64_t sub_100F6CC00()
{
  v1 = *(*v0 + 1800);
  v2 = *(*v0 + 1792);
  v3 = *(*v0 + 1448);
  v5 = *v0;

  return _swift_task_switch(sub_100F6CD2C, v3, 0);
}

uint64_t sub_100F6CD2C()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 752);
  (*(v0 + 1432))(*(v0 + 952), *(v0 + 872));
  *(v0 + 1808) = *(v0 + 640);

  return _swift_task_switch(sub_100F6CDAC, v2, 0);
}

uint64_t sub_100F6CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = v3;
  v4 = *(v3 + 1808);
  isUniquelyReferenced_nonNull_native = *(v3 + 1784);
  v6 = *(v4 + 16);
  v7 = *(isUniquelyReferenced_nonNull_native + 16);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_30;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 1784);
  if (isUniquelyReferenced_nonNull_native && v8 <= *(v9 + 24) >> 1)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v18 = v7 + v6;
    }

    else
    {
      v18 = v7;
    }

    isUniquelyReferenced_nonNull_native = sub_100A5C8A4(isUniquelyReferenced_nonNull_native, v18, 1, *(v3 + 1784));
    v9 = isUniquelyReferenced_nonNull_native;
    if (*(v4 + 16))
    {
LABEL_5:
      if ((*(v9 + 24) >> 1) - *(v9 + 16) >= v6)
      {
        v10 = *(v3 + 1808);
        v11 = *(v3 + 1176);
        v12 = *(v3 + 1168);
        v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v14 = *(v11 + 72);
        swift_arrayInitWithCopy();

        if (!v6)
        {
          goto LABEL_14;
        }

        v15 = *(v9 + 16);
        v16 = __OFADD__(v15, v6);
        v17 = v15 + v6;
        if (!v16)
        {
          *(v9 + 16) = v17;
          goto LABEL_14;
        }

LABEL_32:
        __break(1u);
        return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v19 = *(v3 + 1808);

  if (v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v20 = *(v3 + 1776) + 1;
  if (v20 != *(v3 + 1760))
  {
    *(v3 + 1784) = v9;
    *(v3 + 1776) = v20;
    v33 = *(v3 + 2460);
    v34 = *(v3 + 1448);
    v35 = *(v3 + 1424);
    v36 = *(v3 + 1416);
    v37 = *(v3 + 1088);
    v38 = *(v3 + 952);
    v39 = *(v3 + 872);
    sub_100F80550(*(v3 + 1744) + ((*(v3 + 2464) + 32) & ~*(v3 + 2464)) + *(v3 + 1768) * v20, v37, type metadata accessor for SharedBeaconRecord);
    v36(v38, v37 + v33, v39);
    sub_100F806B4(v37, type metadata accessor for SharedBeaconRecord);
    v40 = sub_100F6CAA4;
LABEL_24:
    isUniquelyReferenced_nonNull_native = v40;
    goto LABEL_25;
  }

  v21 = *(v3 + 1744);

  v22 = *(v3 + 1440);
  (*(v3 + 1432))(*(v3 + 936), *(v3 + 872));
  v23 = *(v3 + 1752);
  *(v3 + 1824) = v9;
  *(v3 + 1816) = v23;
  v24 = *(v3 + 1704);
  v25 = *(v3 + 1600);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v3 + 2490);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54 = v30;
    *v29 = 136315650;
    if (v28)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    else
    {
      *(v3 + 624) = *(v3 + 712);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v42;
    }

    v43 = *(v3 + 1704);
    v44 = sub_1000136BC(v31, v32, &v54);

    *(v29 + 4) = v44;
    *(v29 + 12) = 2048;
    v45 = *(v43 + 16);

    *(v29 + 14) = v45;

    *(v29 + 22) = 2048;
    v46 = *(v9 + 16);

    *(v29 + 24) = v46;

    _os_log_impl(&_mh_execute_header, v26, v27, "%s Existing member circles for beacon %ld, by owner beacon id: %ld.", v29, 0x20u);
    sub_100007BAC(v30);
  }

  else
  {
    v41 = *(v3 + 1704);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v54 = *(v3 + 1704);

  sub_100399680(v47);
  v48 = v54;
  *(v3 + 1832) = v54;
  v49 = *(v48 + 16);
  *(v3 + 1840) = v49;
  if (v49)
  {
    v50 = *(v3 + 1176);
    v51 = *(v3 + 824);
    v52 = *(v50 + 80);
    *(v3 + 2468) = v52;
    *(v3 + 1848) = *(v50 + 72);
    *(v3 + 1864) = _swiftEmptyArrayStorage;
    *(v3 + 1856) = 0;
    v34 = *(v3 + 1448);
    sub_100F80550(v48 + ((v52 + 32) & ~v52), *(v3 + 1216), type metadata accessor for MemberSharingCircle);
    *(v3 + 2472) = v51[12];
    *(v3 + 2476) = v51[16];
    *(v3 + 2480) = v51[20];
    *(v3 + 2484) = v51[24];
    v40 = sub_100F6D21C;
    goto LABEL_24;
  }

  *(v3 + 1904) = _swiftEmptyArrayStorage;
  v34 = *(v3 + 1448);

  isUniquelyReferenced_nonNull_native = sub_100F6D874;
LABEL_25:
  a2 = v34;
  a3 = 0;

  return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_100F6D21C()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1184);
  v4 = (*(v0 + 2468) + 24) & ~*(v0 + 2468);
  sub_100F80550(*(v0 + 1216), v2, type metadata accessor for MemberSharingCircle);
  v5 = swift_allocObject();
  *(v0 + 1872) = v5;
  *(v5 + 16) = v1;
  sub_100F80620(v2, v5 + v4, type metadata accessor for MemberSharingCircle);
  v6 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v7 = swift_task_alloc();
  *(v0 + 1880) = v7;
  *v7 = v0;
  v7[1] = sub_100F6D37C;
  v8 = *(v0 + 856);
  v9 = *(v0 + 824);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100F800CC, v5, v9);
}

uint64_t sub_100F6D37C()
{
  v1 = *(*v0 + 1880);
  v2 = *(*v0 + 1872);
  v3 = *(*v0 + 1448);
  v5 = *v0;

  return _swift_task_switch(sub_100F6D4A8, v3, 0);
}

uint64_t sub_100F6D4A8()
{
  v1 = *(v0 + 2476);
  v2 = *(v0 + 2472);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 824);
  v6 = *(v0 + 752);
  v7 = v5[12];
  v8 = v5[16];
  *(v0 + 1888) = *(v4 + v5[20]);
  *(v0 + 1896) = *(v4 + v5[24]);
  sub_100F80620(v4, v3, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v4 + v7, v3 + v2, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v4 + v8, v3 + v1, &unk_1016B29E0, &unk_1013B70E0);

  return _swift_task_switch(sub_100F6D5B0, v6, 0);
}

uint64_t sub_100F6D5B0()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 2484);
  v3 = *(v0 + 1864);
  v4 = *(v0 + 864);
  v5 = *(v0 + 848);
  v6 = *(v0 + 840);
  v7 = *(v0 + 824);
  *(v4 + *(v0 + 2480)) = *(v0 + 1888);
  *(v4 + v2) = v1;
  sub_1000D2A70(v4, v5, &qword_10169A608, &unk_1013BCC20);
  v8 = v7[12];
  v9 = v7[16];
  v10 = v7[20];
  v11 = *(v5 + v10);
  v12 = v7[24];
  v13 = *(v5 + v12);
  sub_100F80620(v5, v6, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v5 + v8, v6 + v8, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v5 + v9, v6 + v9, &unk_1016B29E0, &unk_1013B70E0);
  *(v6 + v10) = v11;
  *(v6 + v12) = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 1864);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_100A5BAE0(0, v15[2] + 1, 1, *(v0 + 1864));
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_100A5BAE0(v16 > 1, v17 + 1, 1, v15);
  }

  v18 = *(v0 + 1840);
  v19 = *(v0 + 1216);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 1856) + 1;
  sub_10000B3A8(*(v0 + 864), &qword_10169A608, &unk_1013BCC20);
  sub_100F806B4(v19, type metadata accessor for MemberSharingCircle);
  v15[2] = v17 + 1;
  sub_1000D2AD8(v20, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, &qword_10169A608, &unk_1013BCC20);
  if (v22 == v18)
  {
    *(v0 + 1904) = v15;
    v23 = *(v0 + 1448);

    v24 = sub_100F6D874;
    v25 = v23;
  }

  else
  {
    v26 = *(v0 + 1856) + 1;
    *(v0 + 1864) = v15;
    *(v0 + 1856) = v26;
    v27 = *(v0 + 1448);
    v28 = *(v0 + 824);
    sub_100F80550(*(v0 + 1832) + ((*(v0 + 2468) + 32) & ~*(v0 + 2468)) + *(v0 + 1848) * v26, *(v0 + 1216), type metadata accessor for MemberSharingCircle);
    *(v0 + 2472) = v28[12];
    *(v0 + 2476) = v28[16];
    *(v0 + 2480) = v28[20];
    *(v0 + 2484) = v28[24];
    v24 = sub_100F6D21C;
    v25 = v27;
  }

  return _swift_task_switch(v24, v25, 0);
}

uint64_t sub_100F6D874()
{
  v1 = *(v0 + 1448);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1912) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_100F6D960;
  v5 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v0 + 496, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_100F6D960()
{
  v1 = *(*v0 + 1912);
  v2 = *(*v0 + 1448);
  v4 = *v0;

  return _swift_task_switch(sub_100F6DA78, v2, 0);
}

uint64_t sub_100F6DA78()
{
  v1 = v0[94];
  v0[240] = v0[62];
  return _swift_task_switch(sub_100F6DA9C, v1, 0);
}

uint64_t sub_100F6DA9C()
{
  v1 = *(v0 + 1920);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1048);
    v52 = *(v0 + 880);
    v5 = *(*(v0 + 1040) + 20);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    while (1)
    {
      v8 = *(v0 + 1080);
      v9 = *(v0 + 1072);
      sub_100F80550(v6, v8, type metadata accessor for SharedBeaconRecord);
      sub_100F80550(v8, v9, type metadata accessor for SharedBeaconRecord);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1000210EC(v3 + v5);
      v14 = _swiftEmptyDictionarySingleton[2];
      v15 = (v12 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return _swift_task_switch(v11, v12, v13);
      }

      v18 = v12;
      if (_swiftEmptyDictionarySingleton[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v27 = v11;
      sub_101007D14();
      v11 = v27;
      if (v18)
      {
LABEL_3:
        sub_100F802C8(*(v0 + 1072), _swiftEmptyDictionarySingleton[7] + v11 * v7);
        goto LABEL_4;
      }

LABEL_11:
      v20 = *(v0 + 1424);
      v21 = *(v0 + 1416);
      v22 = *(v0 + 1072);
      v23 = *(v0 + 872);
      _swiftEmptyDictionarySingleton[(v11 >> 6) + 8] |= 1 << v11;
      v24 = v11;
      v21(_swiftEmptyDictionarySingleton[6] + *(v52 + 72) * v11, v3 + v5, v23);
      v11 = sub_100F80620(v22, _swiftEmptyDictionarySingleton[7] + v24 * v7, type metadata accessor for SharedBeaconRecord);
      v25 = _swiftEmptyDictionarySingleton[2];
      v16 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v16)
      {
        goto LABEL_29;
      }

      _swiftEmptyDictionarySingleton[2] = v26;
LABEL_4:
      sub_100F806B4(*(v0 + 1080), type metadata accessor for SharedBeaconRecord);
      v6 += v7;
      if (!--v2)
      {
        goto LABEL_15;
      }
    }

    sub_100FEBB60(v17, isUniquelyReferenced_nonNull_native);
    v11 = sub_1000210EC(v3 + v5);
    if ((v18 & 1) != (v19 & 1))
    {
      v51 = *(v0 + 872);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_10:
    if (v18)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 1928) = _swiftEmptyDictionarySingleton;
  v28 = *(v0 + 1832);
  v29 = *(v0 + 1816);
  v30 = *(v0 + 2490);
  v31 = *(v0 + 712);
  v32 = *(v0 + 2488);

  v33 = sub_100F800F8(v28, _swiftEmptyDictionarySingleton, v31, v30 & 1);
  *(v0 + 2491) = v33;

  if (v32 == 4)
  {
    v34 = *(v0 + 1904);
    v35 = *(v0 + 1824);
    v36 = *(v0 + 1560);
    v37 = *(v0 + 1160);
    v38 = *(v0 + 1104);
    v39 = *(v0 + 752);

    v40 = sub_1000035D0((v39 + 168), *(v39 + 192));
    v41 = *(v38 + 28);
    *(v0 + 1936) = *v40;
    v42 = swift_task_alloc();
    *(v0 + 1944) = v42;
    *v42 = v0;
    v42[1] = sub_100F6DEE0;
    v43 = v37 + v41;
LABEL_19:

    return sub_100E8BEF8(v43);
  }

  if (v33)
  {
    v44 = *(v0 + 1904);
    v45 = *(v0 + 1824);
    v46 = *(v0 + 1560);

    v47 = *(v0 + 1136);
    v48 = *(*(v0 + 1104) + 28);
    v49 = swift_task_alloc();
    *(v0 + 2056) = v49;
    *v49 = v0;
    v49[1] = sub_100F70AE0;
    v43 = v47 + v48;
    goto LABEL_19;
  }

  v12 = *(v0 + 1448);
  v11 = sub_100F6F8AC;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100F6DEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 1944);
  v9 = *v4;
  v9[244] = a3;

  if (v3)
  {
    v10 = v9[241];
    v11 = v9[240];
    v12 = v9[229];
    v13 = v9[213];
    v14 = v9[196];

    v9[248] = v3;
    v15 = v9[94];
    v16 = sub_100F6EB80;
LABEL_3:

    return _swift_task_switch(v16, v15, 0);
  }

  if (!a3)
  {
    v18 = v9[241];
    v19 = v9[240];
    v20 = v9[229];
    v21 = v9[213];
    v22 = v9[94];

    v16 = sub_100F6F1FC;
    v15 = v22;
    goto LABEL_3;
  }

  v17 = swift_task_alloc();
  v9[245] = v17;
  *v17 = v9;
  v17[1] = sub_100F6E11C;

  return sub_100D4E560(a1, a2, a3);
}

uint64_t sub_100F6E11C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1960);
  v6 = *v3;
  v4[246] = a2;
  v4[247] = v2;

  v7 = v4[244];
  v8 = v4[242];
  if (v2)
  {
    v9 = v4[241];
    v10 = v4[240];
    v11 = v4[229];
    v12 = v4[213];

    v13 = sub_100F6E368;
  }

  else
  {

    v13 = sub_100F6E2A8;
  }

  return _swift_task_switch(v13, v8, 0);
}

uint64_t sub_100F6E2A8()
{
  if (v0[246])
  {
    v1 = v0[94];

    v2 = sub_100F6E3D8;
    v3 = v1;
  }

  else
  {
    v4 = v0[241];
    v5 = v0[240];
    v6 = v0[229];
    v7 = v0[213];
    v8 = v0[94];

    v2 = sub_100F6F1FC;
    v3 = v8;
  }

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_100F6E368()
{
  v1 = v0[196];

  v0[248] = v0[247];
  v2 = v0[94];

  return _swift_task_switch(sub_100F6EB80, v2, 0);
}

uint64_t sub_100F6E3D8()
{
  v98 = v0;
  v1 = *(v0 + 1720);
  if ((*(v0 + 1712))(*(v0 + 1328) + *(v0 + 2452), 1, *(v0 + 872)) == 1)
  {
    v2 = *(v0 + 1928);
    v3 = *(v0 + 1920);
    v4 = *(v0 + 1832);
    v5 = *(v0 + 1704);
    v6 = *(v0 + 1568);
    v7 = *(v0 + 1136);

    sub_100D487D8();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();
    sub_100F806B4(v7, type metadata accessor for MemberPeerTrust);
    v9 = *(v0 + 1904);
    v10 = *(v0 + 1560);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177A560);
    swift_errorRetain();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 2490);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      v97[0] = v16;
      if (v14)
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 664) = *(v0 + 712);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v24;
      }

      v25 = *(v0 + 1032);
      v26 = sub_1000136BC(v17, v18, v97);

      *(v15 + 4) = v26;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v28 = *(v0 + 296);
      v27 = *(v0 + 304);
      v29 = *(v0 + 312);
      v30 = Error.localizedDescription.getter();
      v32 = sub_1000136BC(v30, v31, v97);

      *(v15 + 14) = v32;

      _os_log_impl(&_mh_execute_header, v12, v13, "%s Failure on handleCircleTrust, preparing initial data: %s", v15, 0x16u);
      swift_arrayDestroy();

      sub_10000B3A8(v25, &qword_101698C10, &unk_10138C1E0);
    }

    else
    {
      v23 = *(v0 + 1032);

      sub_10000B3A8(v23, &qword_101698C10, &unk_10138C1E0);
    }

    v33 = *(v0 + 1160);

    sub_100F806B4(v33, type metadata accessor for MemberPeerTrust);
    v34 = *(v0 + 1408);
    v35 = *(v0 + 1400);
    v36 = *(v0 + 1392);
    v37 = *(v0 + 1384);
    v38 = *(v0 + 1376);
    v39 = *(v0 + 1368);
    v40 = *(v0 + 1360);
    v41 = *(v0 + 1352);
    v43 = *(v0 + 1344);
    v44 = *(v0 + 1320);
    v45 = *(v0 + 1312);
    v46 = *(v0 + 1304);
    v47 = *(v0 + 1296);
    v48 = *(v0 + 1288);
    v49 = *(v0 + 1280);
    v50 = *(v0 + 1272);
    v51 = *(v0 + 1264);
    v52 = *(v0 + 1256);
    v53 = *(v0 + 1248);
    v54 = *(v0 + 1240);
    v55 = *(v0 + 1224);
    v56 = *(v0 + 1216);
    v57 = *(v0 + 1208);
    v58 = *(v0 + 1200);
    v59 = *(v0 + 1192);
    v60 = *(v0 + 1160);
    v61 = *(v0 + 1152);
    v62 = *(v0 + 1144);
    v63 = *(v0 + 1136);
    v64 = *(v0 + 1128);
    v65 = *(v0 + 1120);
    v66 = *(v0 + 1096);
    v67 = *(v0 + 1088);
    v68 = *(v0 + 1080);
    v69 = *(v0 + 1072);
    v70 = *(v0 + 1064);
    v71 = *(v0 + 1056);
    v72 = *(v0 + 1032);
    v73 = *(v0 + 1024);
    v74 = *(v0 + 1016);
    v75 = *(v0 + 1008);
    v76 = *(v0 + 1000);
    v77 = *(v0 + 992);
    v78 = *(v0 + 984);
    v79 = *(v0 + 976);
    v80 = *(v0 + 952);
    v81 = *(v0 + 944);
    v82 = *(v0 + 936);
    v83 = *(v0 + 928);
    v84 = *(v0 + 920);
    v85 = *(v0 + 912);
    v86 = *(v0 + 904);
    v87 = *(v0 + 896);
    v88 = *(v0 + 864);
    v89 = *(v0 + 856);
    v90 = *(v0 + 848);
    v91 = *(v0 + 840);
    v92 = *(v0 + 816);
    v93 = *(v0 + 808);
    v94 = *(v0 + 792);
    v95 = *(v0 + 784);
    v96 = *(v0 + 760);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v34, &qword_10169EF90, &unk_10139FCF0);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v19 = *(v0 + 1136);
    v20 = *(*(v0 + 1104) + 28);
    v21 = swift_task_alloc();
    *(v0 + 2056) = v21;
    *v21 = v0;
    v21[1] = sub_100F70AE0;

    return sub_100E8BEF8(v19 + v20);
  }
}

uint64_t sub_100F6EB80()
{
  v88 = v0;
  sub_100F806B4(*(v0 + 1136), type metadata accessor for MemberPeerTrust);
  v1 = *(v0 + 1984);
  v2 = *(v0 + 1904);
  v3 = *(v0 + 1560);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 2490);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315394;
    v87[0] = v9;
    if (v7)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 664) = *(v0 + 712);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v13;
    }

    v14 = *(v0 + 1032);
    v15 = sub_1000136BC(v10, v11, v87);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v18 = *(v0 + 312);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v87);

    *(v8 + 14) = v21;

    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failure on handleCircleTrust, preparing initial data: %s", v8, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v14, &qword_101698C10, &unk_10138C1E0);
  }

  else
  {
    v12 = *(v0 + 1032);

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
  }

  v22 = *(v0 + 1160);

  sub_100F806B4(v22, type metadata accessor for MemberPeerTrust);
  v23 = *(v0 + 1408);
  v24 = *(v0 + 1400);
  v25 = *(v0 + 1392);
  v26 = *(v0 + 1384);
  v27 = *(v0 + 1376);
  v28 = *(v0 + 1368);
  v29 = *(v0 + 1360);
  v30 = *(v0 + 1352);
  v33 = *(v0 + 1344);
  v34 = *(v0 + 1320);
  v35 = *(v0 + 1312);
  v36 = *(v0 + 1304);
  v37 = *(v0 + 1296);
  v38 = *(v0 + 1288);
  v39 = *(v0 + 1280);
  v40 = *(v0 + 1272);
  v41 = *(v0 + 1264);
  v42 = *(v0 + 1256);
  v43 = *(v0 + 1248);
  v44 = *(v0 + 1240);
  v45 = *(v0 + 1224);
  v46 = *(v0 + 1216);
  v47 = *(v0 + 1208);
  v48 = *(v0 + 1200);
  v49 = *(v0 + 1192);
  v50 = *(v0 + 1160);
  v51 = *(v0 + 1152);
  v52 = *(v0 + 1144);
  v53 = *(v0 + 1136);
  v54 = *(v0 + 1128);
  v55 = *(v0 + 1120);
  v56 = *(v0 + 1096);
  v57 = *(v0 + 1088);
  v58 = *(v0 + 1080);
  v59 = *(v0 + 1072);
  v60 = *(v0 + 1064);
  v61 = *(v0 + 1056);
  v62 = *(v0 + 1032);
  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 1008);
  v66 = *(v0 + 1000);
  v67 = *(v0 + 992);
  v68 = *(v0 + 984);
  v69 = *(v0 + 976);
  v70 = *(v0 + 952);
  v71 = *(v0 + 944);
  v72 = *(v0 + 936);
  v73 = *(v0 + 928);
  v74 = *(v0 + 920);
  v75 = *(v0 + 912);
  v76 = *(v0 + 904);
  v77 = *(v0 + 896);
  v78 = *(v0 + 864);
  v79 = *(v0 + 856);
  v80 = *(v0 + 848);
  v81 = *(v0 + 840);
  v82 = *(v0 + 816);
  v83 = *(v0 + 808);
  v84 = *(v0 + 792);
  v85 = *(v0 + 784);
  v86 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v23, &qword_10169EF90, &unk_10139FCF0);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100F6F1FC()
{
  v90 = v0;
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1136);

  sub_100D487D8();
  swift_allocError();
  *v3 = 6;
  swift_willThrow();
  sub_100F806B4(v2, type metadata accessor for MemberPeerTrust);
  v4 = *(v0 + 1904);
  v5 = *(v0 + 1560);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 2490);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v89[0] = v11;
    if (v9)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 664) = *(v0 + 712);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v15;
    }

    v16 = *(v0 + 1032);
    v17 = sub_1000136BC(v12, v13, v89);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = *(v0 + 312);
    v21 = Error.localizedDescription.getter();
    v23 = sub_1000136BC(v21, v22, v89);

    *(v10 + 14) = v23;

    _os_log_impl(&_mh_execute_header, v7, v8, "%s Failure on handleCircleTrust, preparing initial data: %s", v10, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v16, &qword_101698C10, &unk_10138C1E0);
  }

  else
  {
    v14 = *(v0 + 1032);

    sub_10000B3A8(v14, &qword_101698C10, &unk_10138C1E0);
  }

  v24 = *(v0 + 1160);

  sub_100F806B4(v24, type metadata accessor for MemberPeerTrust);
  v25 = *(v0 + 1408);
  v26 = *(v0 + 1400);
  v27 = *(v0 + 1392);
  v28 = *(v0 + 1384);
  v29 = *(v0 + 1376);
  v30 = *(v0 + 1368);
  v31 = *(v0 + 1360);
  v32 = *(v0 + 1352);
  v35 = *(v0 + 1344);
  v36 = *(v0 + 1320);
  v37 = *(v0 + 1312);
  v38 = *(v0 + 1304);
  v39 = *(v0 + 1296);
  v40 = *(v0 + 1288);
  v41 = *(v0 + 1280);
  v42 = *(v0 + 1272);
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1256);
  v45 = *(v0 + 1248);
  v46 = *(v0 + 1240);
  v47 = *(v0 + 1224);
  v48 = *(v0 + 1216);
  v49 = *(v0 + 1208);
  v50 = *(v0 + 1200);
  v51 = *(v0 + 1192);
  v52 = *(v0 + 1160);
  v53 = *(v0 + 1152);
  v54 = *(v0 + 1144);
  v55 = *(v0 + 1136);
  v56 = *(v0 + 1128);
  v57 = *(v0 + 1120);
  v58 = *(v0 + 1096);
  v59 = *(v0 + 1088);
  v60 = *(v0 + 1080);
  v61 = *(v0 + 1072);
  v62 = *(v0 + 1064);
  v63 = *(v0 + 1056);
  v64 = *(v0 + 1032);
  v65 = *(v0 + 1024);
  v66 = *(v0 + 1016);
  v67 = *(v0 + 1008);
  v68 = *(v0 + 1000);
  v69 = *(v0 + 992);
  v70 = *(v0 + 984);
  v71 = *(v0 + 976);
  v72 = *(v0 + 952);
  v73 = *(v0 + 944);
  v74 = *(v0 + 936);
  v75 = *(v0 + 928);
  v76 = *(v0 + 920);
  v77 = *(v0 + 912);
  v78 = *(v0 + 904);
  v79 = *(v0 + 896);
  v80 = *(v0 + 864);
  v81 = *(v0 + 856);
  v82 = *(v0 + 848);
  v83 = *(v0 + 840);
  v84 = *(v0 + 816);
  v85 = *(v0 + 808);
  v86 = *(v0 + 792);
  v87 = *(v0 + 784);
  v88 = *(v0 + 760);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v25, &qword_10169EF90, &unk_10139FCF0);

  v33 = *(v0 + 8);

  return v33();
}