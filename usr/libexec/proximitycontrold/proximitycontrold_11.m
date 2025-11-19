uint64_t sub_1000FD120()
{
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000FD170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t CUSystemLockState.description.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x64656C6261736964;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696B636F6CLL;
      case 3:
        return 0x64656B636F6CLL;
      case 4:
        return 0x64656B636F6C6E75;
    }
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x6E776F6E6B6E7540;
}

unint64_t sub_1000FD308(uint64_t a1)
{
  result = sub_1000FD330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FD330()
{
  result = qword_1003443D8;
  if (!qword_1003443D8)
  {
    type metadata accessor for SystemLockStateMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003443D8);
  }

  return result;
}

uint64_t sub_1000FD3AC(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_100035D04(&qword_100344420, &qword_10027A530);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_100035D04(&qword_100344428, &qword_10027A538);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_100035D04(&qword_100344430, &qword_10027A540);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000FDE4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1000FDEA0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1000FDEF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_1000FD668(uint64_t a1)
{
  v2 = sub_1000FDEF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD6A4(uint64_t a1)
{
  v2 = sub_1000FDEF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD6E0()
{
  if (*v0)
  {
    result = 1768319351;
  }

  else
  {
    result = 0x746F6F7465756C62;
  }

  *v0;
  return result;
}

uint64_t sub_1000FD718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746F6F7465756C62 && a2 == 0xE900000000000068;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000)
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

uint64_t sub_1000FD7FC(uint64_t a1)
{
  v2 = sub_1000FDE4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD838(uint64_t a1)
{
  v2 = sub_1000FDE4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD874(uint64_t a1)
{
  v2 = sub_1000FDEA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD8B0(uint64_t a1)
{
  v2 = sub_1000FDEA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD8EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FD990(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1000FD93C()
{
  result = qword_1003443E8;
  if (!qword_1003443E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003443E8);
  }

  return result;
}

uint64_t sub_1000FD990(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_1003443F0, &qword_10027A510);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = sub_100035D04(&qword_1003443F8, &qword_10027A518);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = sub_100035D04(&qword_100344400, &unk_10027A520);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000FDE4C();
  v15 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_10000903C(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_10021800C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    v25 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v24 = &type metadata for RapportDeviceType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return sub_10000903C(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1000FDEA0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1000FDEF4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  sub_10000903C(v32);
  return v37 & 1;
}

unint64_t sub_1000FDE4C()
{
  result = qword_100344408;
  if (!qword_100344408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344408);
  }

  return result;
}

unint64_t sub_1000FDEA0()
{
  result = qword_100344410;
  if (!qword_100344410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344410);
  }

  return result;
}

unint64_t sub_1000FDEF4()
{
  result = qword_100344418;
  if (!qword_100344418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344418);
  }

  return result;
}

unint64_t sub_1000FDF7C()
{
  result = qword_100344438;
  if (!qword_100344438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344438);
  }

  return result;
}

unint64_t sub_1000FDFD4()
{
  result = qword_100344440;
  if (!qword_100344440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344440);
  }

  return result;
}

unint64_t sub_1000FE02C()
{
  result = qword_100344448;
  if (!qword_100344448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344448);
  }

  return result;
}

unint64_t sub_1000FE084()
{
  result = qword_100344450;
  if (!qword_100344450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344450);
  }

  return result;
}

unint64_t sub_1000FE0DC()
{
  result = qword_100344458;
  if (!qword_100344458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344458);
  }

  return result;
}

unint64_t sub_1000FE134()
{
  result = qword_100344460;
  if (!qword_100344460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344460);
  }

  return result;
}

unint64_t sub_1000FE18C()
{
  result = qword_100344468;
  if (!qword_100344468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344468);
  }

  return result;
}

uint64_t sub_1000FE1E0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100344470);
  sub_100003078(v0, qword_100344470);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000FE260(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v70 = a1;
  v3 = type metadata accessor for UUID();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  __chkstk_darwin(v3);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v6 = *(v68 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v68);
  v9 = &v64 - v8;
  v10 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - v13;
  v15 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v64 - v18;
  type metadata accessor for MockHandoffDeviceServiceClient();
  swift_allocObject();
  v20 = sub_100253C94();
  v71 = v2;
  *(v2 + 32) = v20;
  *(v2 + 40) = &_swiftEmptySetSingleton;
  v21 = type metadata accessor for Identity();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 20) = 256;
  v25 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v73[0] = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v16 + 32))(v24 + v25, v19, v15);
  v26 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v73[0] = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v11 + 32))(v24 + v26, v14, v10);
  v27 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v28 = (v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v31 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v73[0] = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v32 = *(v6 + 32);
  v33 = v68;
  v32(v24 + v31, v9, v68);
  v34 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v35 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v73[0] = 0;
  Published.init(initialValue:)();
  v32(v24 + v35, v9, v33);
  v36 = v71;
  v37 = (v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v40 = 0;
  v40[1] = 0;
  *(v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v41 = v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v41 = 0;
  *(v41 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v73[0] = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v73[0] = 0;

  static Published.subscript.setter();
  v42 = *(v24 + v27);
  *(v24 + v27) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v73[0] = 0;

  static Published.subscript.setter();
  v43 = *(v24 + v34);
  *(v24 + v34) = 0;
  v44 = v69;

  swift_getKeyPath();
  swift_getKeyPath();
  v73[0] = 0;

  static Published.subscript.setter();
  v45 = *(v24 + v30);
  *(v24 + v30) = 0;

  v73[0] = v24;
  v73[1] = 0;
  v73[2] = 0;
  v73[3] = v44;
  v74 = 1;
  v46 = type metadata accessor for HandoffDevice();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  v49 = sub_10007639C(v73);

  *(v36 + 16) = v70;
  *(v36 + 24) = v49;
  v50 = qword_100338FD8;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100003078(v51, qword_100344470);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v72 = v55;
    *v54 = 136315138;
    v56 = v65;
    v57 = v66;
    v58 = v67;
    (*(v66 + 16))(v65, *(v71 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v67);
    sub_100100DA8();
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    (*(v57 + 8))(v56, v58);
    v62 = sub_100017494(v59, v61, &v72);

    *(v54 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "Init: deviceID=%s", v54, 0xCu);
    sub_10000903C(v55);
  }

  return v71;
}

uint64_t sub_1000FEA10()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100344540, &qword_10027A990);
  v195 = *(v2 - 8);
  v196 = v2;
  v3 = *(v195 + 64);
  __chkstk_darwin(v2);
  v194 = &v181 - v4;
  v5 = sub_100035D04(&qword_100344548, &qword_10027A998);
  v192 = *(v5 - 8);
  v193 = v5;
  v6 = *(v192 + 64);
  __chkstk_darwin(v5);
  v191 = &v181 - v7;
  v8 = type metadata accessor for Logger();
  v202 = *(v8 - 8);
  v9 = *(v202 + 64);
  __chkstk_darwin(v8);
  v185 = v10;
  v199 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_100344550, &qword_10027A9A0);
  v189 = *(v11 - 8);
  v190 = v11;
  v12 = *(v189 + 64);
  __chkstk_darwin(v11);
  v188 = &v181 - v13;
  v187 = sub_100035D04(&qword_100344558, &qword_10027A9A8);
  v186 = *(v187 - 8);
  v14 = *(v186 + 64);
  __chkstk_darwin(v187);
  v16 = &v181 - v15;
  if (qword_100338FD8 != -1)
  {
    swift_once();
  }

  v200 = v8;
  v198 = sub_100003078(v8, qword_100344470);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v205 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v205);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v19, 0xCu);
    sub_10000903C(v20);
  }

  v204 = *(v1 + 32);
  v21 = v204[3];
  v22 = swift_isaMask;
  v23 = *(v21 + *((swift_isaMask & *v21) + 0x70));
  if (v23)
  {
    v24 = (v21 + *((swift_isaMask & *v21) + 0x68));
    v25 = *v24;
    v26 = v24[1];
    v27 = v21;
    v28 = String._bridgeToObjectiveC()();
    [v23 removeObjectForKey:v28];

    v22 = swift_isaMask;
  }

  v29 = v204[7];
  v30 = *(v29 + *((v22 & *v29) + 0x70));
  if (v30)
  {
    v31 = (v29 + *((v22 & *v29) + 0x68));
    v32 = *v31;
    v33 = v31[1];
    v34 = v29;
    v35 = String._bridgeToObjectiveC()();
    [v30 removeObjectForKey:v35];
  }

  v197 = v1;
  v36 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37 = v205;
  v38 = UUID.uuidString.getter();
  v39 = (v37 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  v40 = *(v37 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID + 8);
  *v39 = v38;
  v39[1] = v41;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v205 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 1;

  v42 = v204[4];
  v43 = *((swift_isaMask & *v42) + 0x88);
  if (*(v42 + v43))
  {
    v44 = *(v42 + v43);
  }

  else
  {
    v45 = v42;
    LOBYTE(v205) = sub_1000031CC() & 1;
    v46 = sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v44 = CurrentValueSubject.init(_:)();
    v49 = *(v42 + v43);
    *(v42 + v43) = v44;

    v50 = *(v45 + *((swift_isaMask & *v45) + 0x70));
    if (v50)
    {
      v51 = (v45 + *((swift_isaMask & *v45) + 0x68));
      v52 = *v51;
      v53 = v51[1];
      v54 = String._bridgeToObjectiveC()();
      [v50 addObserver:v45 forKeyPath:v54 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v44;
  v55 = *(v197 + 16);
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v36;

  swift_retain_n();

  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v57 = v204[2];
  v58 = *((swift_isaMask & *v57) + 0x88);
  if (*(v57 + v58))
  {
    v59 = *(v57 + v58);
  }

  else
  {
    v60 = v57;
    v205 = sub_100063400();
    v206 = v61;
    v62 = sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v59 = CurrentValueSubject.init(_:)();
    v65 = *(v57 + v58);
    *(v57 + v58) = v59;

    v66 = *(v60 + *((swift_isaMask & *v60) + 0x70));
    if (v66)
    {
      v67 = (v60 + *((swift_isaMask & *v60) + 0x68));
      v68 = *v67;
      v69 = v67[1];
      v70 = String._bridgeToObjectiveC()();
      [v66 addObserver:v60 forKeyPath:v70 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v59;

  v71 = sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
  v72 = sub_10000E244(&unk_10034C790, &qword_10033C2F0, &qword_100272AF0);
  v203 = v71;
  v201 = v72;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v73 = v204[3];
  v74 = *((swift_isaMask & *v73) + 0x88);
  if (*(v73 + v74))
  {
    v75 = *(v73 + v74);
  }

  else
  {
    v76 = v73;
    v205 = sub_100062F0C();
    LOBYTE(v206) = v77 & 1;
    v78 = sub_100035D04(&qword_100344560, &qword_10027A9F8);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    v75 = CurrentValueSubject.init(_:)();
    v81 = *(v73 + v74);
    *(v73 + v74) = v75;

    v82 = *(v76 + *((swift_isaMask & *v76) + 0x70));
    if (v82)
    {
      v83 = (v76 + *((swift_isaMask & *v76) + 0x68));
      v84 = *v83;
      v85 = v83[1];
      v86 = String._bridgeToObjectiveC()();
      [v82 addObserver:v76 forKeyPath:v86 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v75;

  sub_100035D04(&qword_100344560, &qword_10027A9F8);
  sub_10000E244(&qword_100344568, &qword_100344560, &qword_10027A9F8);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v87 = v204[5];
  v88 = *((swift_isaMask & *v87) + 0x88);
  if (*(v87 + v88))
  {
    v89 = *(v87 + v88);
  }

  else
  {
    v90 = v87;
    v205 = sub_100063400();
    v206 = v91;
    v92 = *(v203 + 48);
    v93 = *(v203 + 52);
    swift_allocObject();
    v89 = CurrentValueSubject.init(_:)();
    v94 = *(v87 + v88);
    *(v87 + v88) = v89;

    v95 = *(v90 + *((swift_isaMask & *v90) + 0x70));
    if (v95)
    {
      v96 = (v90 + *((swift_isaMask & *v90) + 0x68));
      v97 = *v96;
      v98 = v96[1];
      v99 = String._bridgeToObjectiveC()();
      [v95 addObserver:v90 forKeyPath:v99 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v89;

  v100 = v203;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v101 = v204[6];
  v102 = *((swift_isaMask & *v101) + 0x88);
  if (*(v101 + v102))
  {
    v103 = *(v101 + v102);
  }

  else
  {
    v104 = v100;
    v105 = v101;
    v205 = sub_100063400();
    v206 = v106;
    v107 = *(v104 + 48);
    v108 = *(v104 + 52);
    swift_allocObject();
    v103 = CurrentValueSubject.init(_:)();
    v109 = *(v101 + v102);
    *(v101 + v102) = v103;

    v110 = *(v105 + *((swift_isaMask & *v105) + 0x70));
    if (v110)
    {
      v111 = (v105 + *((swift_isaMask & *v105) + 0x68));
      v112 = *v111;
      v113 = v111[1];
      v114 = String._bridgeToObjectiveC()();
      [v110 addObserver:v105 forKeyPath:v114 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v103;

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v115 = v204[7];
  v116 = *((swift_isaMask & *v115) + 0x88);
  if (*(v115 + v116))
  {
    v117 = *(v115 + v116);
  }

  else
  {
    v118 = v115;
    LOBYTE(v205) = sub_100062A50();
    v119 = sub_100035D04(&qword_100339978, &unk_10027AA00);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    swift_allocObject();
    v117 = CurrentValueSubject.init(_:)();
    v122 = *(v115 + v116);
    *(v115 + v116) = v117;

    v123 = *(v118 + *((swift_isaMask & *v118) + 0x70));
    if (v123)
    {
      v124 = (v118 + *((swift_isaMask & *v118) + 0x68));
      v125 = *v124;
      v126 = v124[1];
      v127 = String._bridgeToObjectiveC()();
      [v123 addObserver:v118 forKeyPath:v127 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v117;

  sub_100035D04(&qword_100339978, &unk_10027AA00);
  sub_10000E244(&qword_100344570, &qword_100339978, &unk_10027AA00);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v128 = v204[8];
  v129 = *((swift_isaMask & *v128) + 0x88);
  if (*(v128 + v129))
  {
    v130 = *(v128 + v129);
  }

  else
  {
    v131 = v128;
    v205 = sub_10005FFC0();
    LOBYTE(v206) = v132 & 1;
    v133 = sub_100035D04(&qword_1003397F8, &qword_1002702D0);
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    swift_allocObject();
    v130 = CurrentValueSubject.init(_:)();
    v136 = *(v128 + v129);
    *(v128 + v129) = v130;

    v137 = *(v131 + *((swift_isaMask & *v131) + 0x70));
    if (v137)
    {
      v138 = (v131 + *((swift_isaMask & *v131) + 0x68));
      v139 = *v138;
      v140 = v138[1];
      v141 = String._bridgeToObjectiveC()();
      [v137 addObserver:v131 forKeyPath:v141 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v130;

  sub_100035D04(&qword_1003397F8, &qword_1002702D0);
  sub_100035D04(&qword_1003396D0, &qword_10027AA10);
  sub_10000E244(&qword_100344578, &qword_1003397F8, &qword_1002702D0);
  Publisher.map<A>(_:)();

  v142 = static os_log_type_t.info.getter();
  v143 = v202;
  v144 = *(v202 + 16);
  v145 = v199;
  v146 = v200;
  v183 = v202 + 16;
  v182 = v144;
  v144(v199, v198, v200);
  v147 = (*(v143 + 80) + 64) & ~*(v143 + 80);
  v148 = v147 + v185;
  v181 = *(v143 + 80);
  v149 = swift_allocObject();
  *(v149 + 16) = sub_100100874;
  *(v149 + 24) = xmmword_10027A7D0;
  *(v149 + 40) = 0xEA0000000000203ALL;
  *(v149 + 48) = 0;
  *(v149 + 56) = 0xE000000000000000;
  v150 = *(v143 + 32);
  v184 = v147;
  v151 = v149 + v147;
  v152 = v150;
  v202 = v143 + 32;
  v150(v151, v145, v146);
  v185 = v148;
  *(v149 + v148) = v142;
  sub_10000E244(&qword_100344580, &qword_100344558, &qword_10027A9A8);
  v154 = v187;
  v153 = v188;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100344588, &qword_100344550, &qword_10027A9A0);
  v155 = v190;
  v156 = Publisher.eraseToAnyPublisher()();
  (*(v189 + 8))(v153, v155);
  (*(v186 + 8))(v16, v154);
  v205 = v156;

  sub_100035D04(&qword_100344590, &qword_10027AA18);
  sub_10000E244(&qword_100344598, &qword_100344590, &qword_10027AA18);
  Publisher<>.sink(receiveValue:)();

  v190 = v36;

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v157 = v204[9];
  v158 = *((swift_isaMask & *v157) + 0x88);
  if (*(v157 + v158))
  {
    v159 = *(v157 + v158);
  }

  else
  {
    v160 = v157;
    v205 = sub_100063400();
    v206 = v161;
    v162 = *(v203 + 48);
    v163 = *(v203 + 52);
    swift_allocObject();
    v159 = CurrentValueSubject.init(_:)();
    v164 = *(v157 + v158);
    *(v157 + v158) = v159;

    v165 = *(v160 + *((swift_isaMask & *v160) + 0x70));
    if (v165)
    {
      v166 = (v160 + *((swift_isaMask & *v160) + 0x68));
      v167 = *v166;
      v168 = v166[1];
      v169 = String._bridgeToObjectiveC()();
      [v165 addObserver:v160 forKeyPath:v169 options:4 context:0];
    }

    else
    {
    }
  }

  v205 = v159;

  sub_100035D04(&qword_1003396B0, &qword_1002731A0);
  v170 = v191;
  Publisher.map<A>(_:)();

  v171 = static os_log_type_t.info.getter();
  v172 = v199;
  v173 = v200;
  v182(v199, v198, v200);
  v174 = v185;
  v175 = swift_allocObject();
  *(v175 + 16) = sub_100100940;
  *(v175 + 24) = xmmword_10027A7E0;
  *(v175 + 40) = 0xEB00000000203A61;
  *(v175 + 48) = 0;
  *(v175 + 56) = 0xE000000000000000;
  v152(v175 + v184, v172, v173);
  *(v175 + v174) = v171;
  sub_10000E244(&qword_1003445A0, &qword_100344548, &qword_10027A998);
  v177 = v193;
  v176 = v194;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_1003445A8, &qword_100344540, &qword_10027A990);
  v178 = v196;
  v179 = Publisher.eraseToAnyPublisher()();
  (*(v195 + 8))(v176, v178);
  (*(v192 + 8))(v170, v177);
  v205 = v179;
  sub_100035D04(&qword_10033D500, &qword_1002731A8);
  sub_10000E244(&qword_10033D508, &qword_10033D500, &qword_1002731A8);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10010033C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_100338FD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100344470);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "New enabled: %{BOOL}d", v8, 8u);
  }

  if (v4)
  {
    return sub_100049880(a3);
  }

  sub_1002096F0(a3);
}

uint64_t sub_10010046C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *&v3 = *a1;
  v4 = v3;
  v5 = *(a2 + 24);

  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  sub_10000D8F4(v6 | (v2 << 32));
}

uint64_t sub_1001004E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = (v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  v4 = *(v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel + 8);
  *v3 = v2;
  v3[1] = v1;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v5 = 0;
  *(v5 + 8) = 1;
}

uint64_t sub_100100604(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = (v9 + *a3);
  v7 = v6[1];
  *v6 = v5;
  v6[1] = v4;
}

uint64_t sub_1001006B4(char *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
  v3 = *a1;

  sub_10000D4C4(v3);
}

void sub_100100704(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if (*(a1 + 8))
  {
    goto LABEL_5;
  }

  v10 = *a1;
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v5 + 8))(v8, v4);
    v11 = objc_allocWithZone(PCTelephonyActivity);
    v12 = String._bridgeToObjectiveC()();

    v9 = [v11 initWithCallUUID:v12 conversationUUID:0 isVideo:v10 == 3 service:v10];

LABEL_5:
    *a2 = v9;
    return;
  }

  __break(1u);
}

uint64_t sub_100100888(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity) + 40);

  sub_100100BFC(v2, &qword_1003396D0, &qword_10027AA10);
}

id sub_1001008F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    result = sub_1001081CC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_100100954(void **a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 7104878;
  }

  v6 = *a1;
  sub_100003118(0, a2, a3);
  v4 = v3;
  return String.init<A>(describing:)();
}

uint64_t sub_1001009B0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity) + 48);

  sub_100100BFC(v2, &qword_1003396B0, &qword_1002731A0);
}

uint64_t sub_100100A18()
{
  v1 = v0;
  if (qword_100338FD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344470);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  swift_beginAccess();
  v7 = *(v1 + 40);
  *(v1 + 40) = &_swiftEmptySetSingleton;
}

uint64_t sub_100100B88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

void sub_100100BFC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v8 = *(*v3 + 144);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD000000000000014, 0x800000010029A5B0, &v19);
    *(v12 + 12) = 2080;
    v13 = v9;
    sub_100035D04(a2, a3);
    v14 = String.init<A>(describing:)();
    v16 = sub_100017494(v14, v15, &v19);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v6 + 24);
  v19 = a1;
  v18 = v9;
  CurrentValueSubject.send(_:)();
}

unint64_t sub_100100DA8()
{
  result = qword_10033E718;
  if (!qword_10033E718)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E718);
  }

  return result;
}

id sub_100100EA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for Logger() - 8);
  v10 = *(v3 + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + *(v7 + 64));
  v8 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  *a3 = v8;

  return v8;
}

BOOL sub_100100F90()
{
  v1 = *v0;
  sub_1000104F8();
  v3 = v2;
  sub_1000104F8();
  v5 = sub_1000089FC(v4, v3);

  v6 = *(v5 + 16);

  return v6 != 0;
}

uint64_t getEnumTagSinglePayload for HapticEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CardEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100101150(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100101164(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100101184(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 1886352499;
      }

      goto LABEL_8;
    }

    return 2036427888;
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6D6F6F7276;
      }

LABEL_8:
      v2._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v2);

      return 0x2D6B63696C63;
    }

    return 0x6C43656C62756F64;
  }
}

BOOL sub_100101278(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      return v3 == 4;
    }

    if (v2 == 5)
    {
      return v3 == 5;
    }
  }

  else
  {
    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v2 == 3)
    {
      return v3 == 3;
    }
  }

  v5 = v3 - 2;
  v6 = ((v3 ^ v2) & 1) == 0;
  return v5 >= 4 && v6;
}

unint64_t sub_100101308()
{
  result = qword_1003445B8;
  if (!qword_1003445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003445B8);
  }

  return result;
}

unint64_t sub_100101370()
{
  result = qword_1003445D8;
  if (!qword_1003445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003445D8);
  }

  return result;
}

uint64_t sub_1001013C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003445C0);
  sub_100003078(v0, qword_1003445C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100101448()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x4F64657265776F70;
  if (v1 != 5)
  {
    v3 = 0x7463697274736572;
  }

  v4 = 0x726F687475616E75;
  if (v1 != 3)
  {
    v4 = 0x4F64657265776F70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E69747465736572;
  if (v1 != 1)
  {
    v5 = 0x726F707075736E75;
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

uint64_t sub_100101544(unint64_t a1)
{
  if (a1 < 0xB && ((0x43Fu >> a1) & 1) != 0)
  {
    return byte_10027ABE6[a1];
  }

  if (qword_100338FE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_1003445C0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
  }

  return 0;
}

void sub_100101654(unint64_t a1, char **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v20 = v2 & 0xC000000000000001;
    v18 = v2;
    while (1)
    {
      if (v20)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v19 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      String.append(_:)(v12);

      v13 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_100009088(0, *(v13 + 2) + 1, 1, v13);
        *a2 = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      if (v16 >= v15 >> 1)
      {
        v13 = sub_100009088((v15 > 1), v16 + 1, 1, v13);
        *a2 = v13;
      }

      *(v13 + 2) = v16 + 1;
      v17 = &v13[16 * v16];
      *(v17 + 4) = 2108704;
      *(v17 + 5) = 0xE300000000000000;

      ++v4;
      v2 = v18;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_100101824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001018A4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003445E0);
  sub_100003078(v0, qword_1003445E0);
  return Logger.init(subsystem:category:)();
}

id sub_100101A4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100018AB8;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

char *sub_100101BB4(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections;
  KeyPath = swift_getKeyPath();
  v8 = sub_100035D04(&unk_1003447A0, qword_10027ACB0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_10006CCE4(KeyPath, 0);

  *&v2[v6] = v11;
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher] = 0;
  v12 = &v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_stateHandle];
  *v12 = 0;
  v12[8] = 1;
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_tasks] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue] = a1;
  v13 = PCXPCLaunchingServiceName;
  v14 = objc_allocWithZone(NSXPCListener);
  v15 = a1;
  v16 = [v14 initWithMachServiceName:v13];
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener] = v16;
  v17 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:PCXPCServiceName];
  *&v2[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener] = v17;
  v43.receiver = v2;
  v43.super_class = type metadata accessor for XPCServer();
  v18 = objc_msgSendSuper2(&v43, "init");
  v19 = qword_100338E78;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_10038AEE0;
  type metadata accessor for XPCPublisher();
  v22 = swift_allocObject();

  v23 = sub_100103D08(0xD00000000000002ELL, 0x8000000100298DF0, v21, v22);
  v24 = *&v20[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher];
  *&v20[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher] = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v41 = sub_10010401C;
  v42 = v25;
  v37 = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100101FAC;
  v40 = &unk_1003086F8;
  v26 = _Block_copy(&v37);
  v27 = v20;

  v28 = os_state_add_handler();
  _Block_release(v26);
  v29 = &v27[OBJC_IVAR____TtC17proximitycontrold9XPCServer_stateHandle];
  *v29 = v28;
  v29[8] = 0;
  [*&v27[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener] setDelegate:v27];
  v30 = *&v27[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener];
  [v30 setDelegate:v27];

  v31 = *&v27[OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue];
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  v41 = sub_100002AFC;
  v42 = v32;
  v37 = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_1000028F8;
  v40 = &unk_100308748;
  v33 = _Block_copy(&v37);
  v34 = v27;
  v35 = v31;

  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v35, v33);
  _Block_release(v33);

  return v34;
}

uint64_t sub_100101FAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

id sub_10010202C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100102124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_1003445E0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Activate", v17, 2u);
  }

  v18 = *(v3 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_100104008;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100308608;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v9, v6);
  (*(v24 + 8))(v13, v25);
}

void sub_1001024CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener) resume];
    v5 = OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener;
    v6 = [*&v4[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener] _xpcConnection];
    xpc_connection_set_non_launching();
    swift_unknownObjectRelease();
    [*&v4[v5] resume];
    if (*&v4[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher])
    {
      v7 = *&v4[OBJC_IVAR____TtC17proximitycontrold9XPCServer_lockscreenXPCPublisher];

      sub_100051DFC();
    }

    if (qword_100338FE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_1003445E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Activated", v11, 2u);
    }

    (a2)(0);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v12 = 0x666C6573206C696ELL;
    *(v12 + 8) = 0xE800000000000000;
    *(v12 + 16) = 9;
    a2();
  }
}

uint64_t sub_100102758()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v14 = *(v5 - 8);
  v15 = v5;
  v6 = *(v14 + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_dispatchQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100103FF8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100308590;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v14 + 8))(v8, v15);
}

void sub_100102A1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener);

    [v2 invalidate];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener);

    [v5 invalidate];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler);
    v8 = v6;
    sub_10009D4E0(v7);

    if (v7)
    {
      v7();
      sub_10002689C(v7);
    }
  }
}

uint64_t sub_100102B8C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_1003445E0);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_100017494(0xD000000000000026, 0x80000001002A02D0, &v52);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v7;
    v12[1] = v8;
    v14 = v7;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: listener=%@, newConnection=%@", v11, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v13);
  }

  sub_100103CBC();
  v16 = *&v3[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcListener];
  v17 = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    v18 = *&v3[OBJC_IVAR____TtC17proximitycontrold9XPCServer_xpcLaunchingListener];
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      v47 = v7;
      v43 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v47;
        *v50 = v47;
        v51 = v47;
        _os_log_impl(&_mh_execute_header, v43, v48, "### New connection from unrecognized listener %@", v49, 0xCu);
        sub_1000030B0(v50);

        goto LABEL_15;
      }

LABEL_16:

      return 0;
    }
  }

  if ((sub_1000D0404(1u, v8) & 1) == 0)
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v52 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_100017494(0xD00000000000001ALL, 0x8000000100297290, &v52);
      _os_log_impl(&_mh_execute_header, v43, v44, "### Missing entitlement '%s'", v45, 0xCu);
      sub_10000903C(v46);

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = objc_allocWithZone(type metadata accessor for XPCConnection());
  v21 = v8;
  v22 = sub_100079434(v21, v3);
  v23 = objc_opt_self();
  v24 = [v23 interfaceWithProtocol:&OBJC_PROTOCOL___PCServerXPCInterface];
  [v21 setExportedInterface:v24];

  [v21 setExportedObject:v22];
  v25 = [v23 interfaceWithProtocol:&OBJC_PROTOCOL___PCClientXPCInterface];
  [v21 setRemoteObjectInterface:v25];

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v21;
  v27[3] = v26;
  v27[4] = v22;
  v56 = sub_100103F38;
  v57 = v27;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100018AB8;
  v55 = &unk_100308518;
  v28 = _Block_copy(&v52);
  v29 = v21;
  v30 = v22;

  [v29 setInterruptionHandler:v28];
  _Block_release(v28);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v31;
  v32[4] = v30;
  v56 = sub_100103FBC;
  v57 = v32;
  v52 = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_100018AB8;
  v55 = &unk_100308568;
  v33 = _Block_copy(&v52);
  v34 = v29;
  v35 = v30;

  [v34 setInvalidationHandler:v33];
  _Block_release(v33);
  v36 = v34;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v40 = v36;
    v41 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "New XPC Connection: %@", v39, 0xCu);
    sub_1000030B0(v40);
  }

  sub_100103560(v35);
  return 1;
}

void sub_1001032A0(void *a1)
{
  v2 = v1;
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003445E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Removing", v7, 2u);
  }

  sub_10007983C();
  v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections);

  v9 = sub_10004ACDC([a1 hash]);
}

void sub_1001033E0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_1003445E0);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = a4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, a5, v13, 0xCu);
    sub_1000030B0(v14);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_1001032A0(a3);
  }
}

id sub_100103560(void *a1)
{
  v2 = v1;
  if (qword_100338FE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003445E0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Accepting %@", v8, 0xCu);
    sub_1000030B0(v9);
  }

  v11 = *(v2 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections);

  sub_1000498D4(v5);

  v12 = *&v5[OBJC_IVAR____TtC17proximitycontrold13XPCConnection_internalCnx];

  return [v12 resume];
}

uint64_t sub_1001037AC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1000EEB48();
    v6 = v5;
  }

  else
  {
    v6 = 0xEE006E6F69746163;
    v4 = 0x696C707041206F4ELL;
  }

  v7 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_100009088((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  *(v12 + 4) = v4;
  *(v12 + 5) = v6;
  if (v10 < (v9 + 2))
  {
    v7 = sub_100009088((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 2) = v9 + 2;
  v13 = &v7[16 * v11];
  *(v13 + 4) = 10;
  *(v13 + 5) = 0xE100000000000000;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v40 = 0xD000000000000014;
  v41 = 0x80000001002A02B0;
  v15 = OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections;
  v16 = *(v1 + OBJC_IVAR____TtC17proximitycontrold9XPCServer_connections);
  __chkstk_darwin(v14);
  type metadata accessor for XPCConnection();
  swift_getKeyPath();
  v17 = v16 + qword_100346AF8;

  os_unfair_lock_lock(v17);
  v38[0] = *(v17 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v17);

  v18 = *(v39 + 16);
  if (v18)
  {
    v19 = sub_100009194(*(v39 + 16), 0);
    v20 = sub_1001295D4(v38, v19 + 32, v18, v39);
    result = sub_100004F98();
    if (v20 != v18)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v19 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
LABEL_22:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }
  }

  if ((v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v22 = *(v19 + 16);
LABEL_15:

  v38[0] = v22;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 1027416105;
  v24._object = 0xE400000000000000;
  String.append(_:)(v24);
  v26 = v40;
  v27 = v41;
  v29 = *(v7 + 2);
  v28 = *(v7 + 3);
  if (v29 >= v28 >> 1)
  {
    v25 = sub_100009088((v28 > 1), v29 + 1, 1, v7);
    v7 = v25;
  }

  *(v7 + 2) = v29 + 1;
  v30 = &v7[16 * v29];
  *(v30 + 4) = v26;
  *(v30 + 5) = v27;
  v40 = v7;
  v31 = *(v1 + v15);
  __chkstk_darwin(v25);
  swift_getKeyPath();
  v32 = v31 + qword_100346AF8;

  os_unfair_lock_lock(v32);
  v38[0] = *(v32 + 8);

  swift_getAtKeyPath();

  v33 = v39;
  os_unfair_lock_unlock(v32);

  v34 = *(v33 + 16);
  if (!v34)
  {

    v35 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v35 = sub_100009194(*(v33 + 16), 0);
  v36 = sub_1001295D4(v38, v35 + 4, v34, v33);
  result = sub_100004F98();
  if (v36 == v34)
  {

LABEL_21:
    sub_100101654(v35, &v40);

    v38[0] = v40;

    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
    v37 = BidirectionalCollection<>.joined(separator:)();
    swift_bridgeObjectRelease_n();
    return v37;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100103CBC()
{
  result = qword_100344730;
  if (!qword_100344730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100344730);
  }

  return result;
}

uint64_t sub_100103D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0;
  *(a4 + 40) = &off_100303248;
  swift_unknownObjectWeakAssign();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v7 = qword_1003391E8;

  if (v7 != -1)
  {
    swift_once();
  }

  String.utf8CString.getter();
  v8 = xpc_event_publisher_create();

  if (v8)
  {

    *(a4 + 56) = v8;
    v19 = sub_1001042A0;
    v20 = a4;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100101824;
    v18 = &unk_100308770;
    v10 = _Block_copy(&v15);
    v11 = v8;

    xpc_event_publisher_set_handler();
    _Block_release(v10);

    v12 = *(a4 + 56);
    v19 = sub_1001042A8;
    v20 = a4;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_1002386BC;
    v18 = &unk_100308798;
    v13 = _Block_copy(&v15);

    v14 = v12;

    xpc_event_publisher_set_error_handler();
    _Block_release(v13);

    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100103F74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_100104040()
{
  v1 = [v0 description];
  v19 = 0;
  v2 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:&v19];

  v3 = v19;
  if (!v2)
  {
    v9 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  v11 = *(v4 + 24);
  v13 = __OFSUB__(v11, v12);
  v8 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_10:
    LODWORD(v8) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v8 = v8;
  }

LABEL_13:
  if (__OFADD__(v8, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = calloc(v8 + 200, 1uLL);
  if (!v14)
  {
    sub_100010708(v4, v6);
    return 0;
  }

  *v14 = 1;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
LABEL_31:
      *(v14 + 1) = 0;
      goto LABEL_32;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_23:
    LODWORD(v17) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v17 = v17;
LABEL_25:
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v17))
      {
        *(v14 + 1) = v17;
        strcpy(v14 + 136, "ProximityControl state");
        if (v7 == 2)
        {
          if (!__OFSUB__(*(v4 + 24), *(v4 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7)
  {
    goto LABEL_23;
  }

  *(v14 + 1) = BYTE6(v6);
LABEL_32:
  strcpy(v14 + 136, "ProximityControl state");
LABEL_34:
  v18 = v14;
  Data.copyBytes(to:count:)();
  sub_100010708(v4, v6);
  return v18;
}

uint64_t sub_1001042F4()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);

  return v1;
}

uint64_t sub_1001043B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  a2[1] = v4;
}

uint64_t sub_100104468(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001044A8(v2, v3);
}

uint64_t sub_1001044A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name) == a1 && *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100104614()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier);
}

double sub_1001046BC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier);
  *a2 = result;
  return result;
}

void sub_10010476C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) == a1)
  {
    *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001048B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
}

uint64_t sub_100104958@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_100104A10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100104ACC()
{
  v1 = v0;
  _StringGuts.grow(_:)(25);
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);

  v4._countAndFlagsBits = 0x73746E6576652820;
  v4._object = 0xE90000000000003ALL;
  String.append(_:)(v4);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v14 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x736576727563202CLL;
  v8._object = 0xE90000000000003ALL;
  String.append(_:)(v8);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v15 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v3;
}

id sub_100104D24()
{
  v1 = v0;
  v2 = type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0);
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern___observationRegistrar;
  v70 = v1;
  v66 = sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  v67 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
  if (v7 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = _swiftEmptyArrayStorage;
    v54 = v5;
    v55 = v2;
    if (!i)
    {
      goto LABEL_11;
    }

    v10 = i;
    v70 = _swiftEmptyArrayStorage;

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v10 < 0)
    {
      break;
    }

    v12 = 0;
    v64 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier;
    v65 = (v7 & 0xC000000000000001);
    do
    {
      if (v65)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v7 + 8 * v12 + 32);
      }

      ++v12;
      swift_getKeyPath();
      v14 = v68;
      v69 = v68;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v14 + v64);
      swift_getKeyPath();
      v69 = v13;
      sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v13 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
      swift_getKeyPath();
      v69 = v13;
      v17 = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v18 = v15 * *(v13 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
      swift_getKeyPath();
      v69 = v13;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = v15 * *(v13 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
      v20 = objc_allocWithZone(CHHapticEvent);
      sub_100003118(0, &qword_10034E220, CHHapticEventParameter_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v5 = [v20 initWithEventType:v17 parameters:isa relativeTime:v18 duration:v19];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = v70[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v12);

    v9 = v70;
LABEL_11:
    v50[1] = v9;
    swift_getKeyPath();
    v23 = v68;
    v70 = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v23 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v49 = *(v23 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
      }

      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v25)
    {
LABEL_27:
      v48 = objc_allocWithZone(CHHapticPattern);
      return sub_100107C00();
    }

    v70 = _swiftEmptyArrayStorage;

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v25 < 0)
    {
      goto LABEL_35;
    }

    v26 = 0;
    v59 = v24 & 0xC000000000000001;
    v57 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier;
    v52 = v24 & 0xFFFFFFFFFFFFFF8;
    v51 = v24 + 32;
    v58 = v25;
    v53 = v24;
    while (1)
    {
      v2 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v59)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v52 + 16))
        {
          goto LABEL_29;
        }

        v7 = *(v51 + 8 * v26);
      }

      swift_getKeyPath();
      v32 = v68;
      v69 = v68;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v33 = *(v32 + v57);
      swift_getKeyPath();
      v34 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve___observationRegistrar;
      v69 = v7;
      v5 = sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(v7 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
      swift_getKeyPath();
      v69 = v7;
      v36 = v35;
      v64 = v34;
      v65 = v36;
      v63 = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = *(v7 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
      v38 = *(v37 + 16);
      if (v38)
      {
        v61 = v7;
        v62 = v2;
        v69 = _swiftEmptyArrayStorage;

        specialized ContiguousArray.reserveCapacity(_:)();
        v39 = v55;
        v40 = *(v56 + 80);
        v60 = v37;
        v41 = v37 + ((v40 + 32) & ~v40);
        v42 = *(v56 + 72);
        v5 = v54;
        do
        {
          sub_100107D70(v41, v5);
          v43 = v33 * *&v5[*(v39 + 20)];
          v44 = *&v5[*(v39 + 24)];
          v45 = objc_allocWithZone(CHHapticParameterCurveControlPoint);
          LODWORD(v46) = v44;
          [v45 initWithRelativeTime:v43 value:v46];
          sub_100107DD4(v5);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v47 = v69[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v41 += v42;
          --v38;
        }

        while (v38);

        v7 = v61;
        v2 = v62;
      }

      swift_getKeyPath();
      v69 = v7;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = v33 * *(v7 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
      v28 = objc_allocWithZone(CHHapticParameterCurve);
      sub_100003118(0, &qword_100344D20, CHHapticParameterCurveControlPoint_ptr);
      v29 = Array._bridgeToObjectiveC()().super.isa;

      v30 = v65;
      [v28 initWithParameterID:v65 controlPoints:v29 relativeTime:v27];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = v70[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v26 = v2;
      if (v2 == v58)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10010552C()
{
  v1 = v0;
  v39 = *v0;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);
  v38 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  swift_getKeyPath();
  v37 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v35 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = 0;
    v40 = v4;
    v42 = v4 & 0xC000000000000001;
    do
    {
      if (v42)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      ++v7;
      swift_getKeyPath();
      sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *(v8 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
      swift_getKeyPath();
      v10 = v9;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v8 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = *(v8 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
      v13 = type metadata accessor for HapticPattern.HapticEvent(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      UUID.init()();
      ObservationRegistrar.init()();

      *(v16 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type) = v10;
      *(v16 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = v11;
      *(v16 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 = v40;
    }

    while (v5 != v7);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v36 = *(v1 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    goto LABEL_21;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v41 = v18;
    v43 = v18 & 0xC000000000000001;
    do
    {
      if (v43)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      ++v20;
      swift_getKeyPath();
      sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v21 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
      swift_getKeyPath();
      v23 = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v24 = *(v21 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
      swift_getKeyPath();

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(v21 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
      v26 = type metadata accessor for HapticPattern.HapticParameterCurve(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      UUID.init()();
      ObservationRegistrar.init()();

      *(v29 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v23;
      *(v29 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints) = v24;
      *(v29 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = v25;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 = v41;
    }

    while (v19 != v20);

LABEL_21:
    v31 = *(v39 + 48);
    v32 = *(v39 + 52);
    v33 = swift_allocObject();
    UUID.init()();
    ObservationRegistrar.init()();
    v34 = (v33 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
    *v34 = v38;
    v34[1] = v37;
    *(v33 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = v3;
    *(v33 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events) = _swiftEmptyArrayStorage;
    *(v33 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves) = _swiftEmptyArrayStorage;
    return v33;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100105BEC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events);

  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves);

  v6 = OBJC_IVAR____TtC17proximitycontrold13HapticPattern___observationRegistrar;
  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100105D24()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
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

id sub_100105E48()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);

  return v1;
}

id sub_100105F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
  *a2 = v4;

  return v4;
}

void sub_100105FC0(void *a1)
{
  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type;
  v4 = *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  v12 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_10010615C()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
}

double sub_100106204@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
  *a2 = result;
  return result;
}

void sub_1001062B4(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) == a1)
  {
    *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1001063D4()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
}

double sub_10010647C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
  *a2 = result;
  return result;
}

void sub_10010652C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) == a1)
  {
    *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10010664C()
{
  _StringGuts.grow(_:)(16);
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D10, type metadata accessor for HapticPattern.HapticEvent);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D64207C20;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 0x3D7472202CLL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime);
  Double.write<A>(to:)();
  return 0;
}

uint64_t sub_100106818()
{
  v1 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_10010696C()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);

  return v1;
}

id sub_100106A24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
  *a2 = v4;

  return v4;
}

void sub_100106AE4(void *a1)
{
  v3 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID;
  v4 = *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  v12 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100106C80()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
}

uint64_t sub_100106D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);
}

uint64_t sub_100106DE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

double sub_100106EAC()
{
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
}

double sub_100106F54@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime);
  *a2 = result;
  return result;
}

void sub_100107004(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) == a1)
  {
    *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D18, type metadata accessor for HapticPattern.HapticParameterCurve);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100107124@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10010718C()
{
  v1 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints);

  v4 = OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001072C0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1001073F0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100107480@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1001074F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100107580()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

double sub_1001075CC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = result;
  return result;
}

double sub_1001075E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = result;
  return result;
}

uint64_t sub_1001075FC()
{
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002764E0;
  v1 = v0;
  v39 = v0;
  v2 = CHHapticEventTypeHapticContinuous;
  v3 = type metadata accessor for HapticPattern.HapticEvent(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = v2;
  UUID.init()();
  ObservationRegistrar.init()();
  *(v6 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type) = v7;
  *(v6 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__relativeTime) = 0;
  *(v6 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__duration) = 0x3FF0000000000000;
  *(v1 + 32) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100271B90;
  v9 = CHHapticDynamicParameterIDHapticIntensityControl;
  sub_100035D04(&qword_100344D38, qword_10027B060);
  v10 = (type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100274B70;
  v14 = v13 + v12;
  v38 = v9;
  UUID.init()();
  *(v14 + v10[7]) = 0;
  *(v14 + v10[8]) = 0;
  v15 = v13 + v12 + v11;
  UUID.init()();
  *(v15 + v10[7]) = 0x3FC999999999999ALL;
  *(v15 + v10[8]) = 1060320051;
  v16 = v13 + v12 + 2 * v11;
  UUID.init()();
  *(v16 + v10[7]) = 0x3FE0000000000000;
  *(v16 + v10[8]) = 1065353216;
  v17 = v13 + v12 + 3 * v11;
  UUID.init()();
  *(v17 + v10[7]) = 0x3FE3333333333333;
  *(v17 + v10[8]) = 1065353216;
  v18 = v13 + v12 + 4 * v11;
  UUID.init()();
  *(v18 + v10[7]) = 0x3FECCCCCCCCCCCCDLL;
  *(v18 + v10[8]) = 1056964608;
  v19 = v13 + v12 + 5 * v11;
  UUID.init()();
  *(v19 + v10[7]) = 0x3FF0000000000000;
  *(v19 + v10[8]) = 0;
  v20 = type metadata accessor for HapticPattern.HapticParameterCurve(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  UUID.init()();
  ObservationRegistrar.init()();
  *(v23 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v38;
  *(v23 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints) = v13;
  *(v23 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = 0;
  *(v8 + 32) = v23;
  v24 = CHHapticDynamicParameterIDHapticSharpnessControl;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002725A0;
  v26 = v25 + v12;
  v27 = v24;
  UUID.init()();
  *(v26 + v10[7]) = 0;
  *(v26 + v10[8]) = -1090519040;
  v28 = v25 + v12 + v11;
  UUID.init()();
  *(v28 + v10[7]) = 0x3FE0000000000000;
  *(v28 + v10[8]) = 1028443341;
  v29 = *(v20 + 48);
  v30 = *(v20 + 52);
  v31 = swift_allocObject();
  UUID.init()();
  ObservationRegistrar.init()();
  *(v31 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v27;
  *(v31 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__controlPoints) = v25;
  *(v31 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = 0;
  *(v8 + 40) = v31;
  v32 = type metadata accessor for HapticPattern(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  UUID.init()();
  result = ObservationRegistrar.init()();
  v37 = (v35 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__name);
  *v37 = 0x33206D6F6F7256;
  v37[1] = 0xE700000000000000;
  *(v35 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = 0x3FECCCCCCCCCCCCDLL;
  *(v35 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__events) = v39;
  *(v35 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__parameterCurves) = v8;
  qword_10038B148 = v35;
  return result;
}

uint64_t sub_100107A80()
{
  if (qword_100338FF0 != -1)
  {
    swift_once();
  }

  v0 = sub_10010552C();
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) == 1.0)
  {
    *(v0 + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001074F8(&qword_100344D08, type metadata accessor for HapticPattern);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  result = sub_1001044A8(0x34206D6F6F7256, 0xE700000000000000);
  qword_10038B150 = v1;
  return result;
}

id sub_100107C00()
{
  sub_100003118(0, &qword_100344D28, CHHapticEvent_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100003118(0, &qword_100344D30, CHHapticParameterCurve_ptr);
  v2 = Array._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v0 initWithEvents:isa parameterCurves:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

void sub_100107D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type);
  *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern11HapticEvent__type) = v2;
  v4 = v2;
}

uint64_t sub_100107D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100107DD4(uint64_t a1)
{
  v2 = type metadata accessor for HapticPattern.HapticParameterCurve.ControlPoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100107E30()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__relativeTime) = result;
  return result;
}

uint64_t sub_100107E68(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

void sub_100107EAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID);
  *(v1 + OBJC_IVAR____TtCC17proximitycontrold13HapticPattern20HapticParameterCurve__parameterID) = v2;
  v4 = v2;
}

double sub_100107EEC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17proximitycontrold13HapticPattern__timeMultiplier) = result;
  return result;
}

uint64_t sub_100107F20(void *a1)
{
  v3 = [v1 callUUID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [a1 callUUID];
  if (v8 && (v9 = v8, v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12 = v11, v9, v7) && v12)
  {
    if (v5 == v10 && v7 == v12)
    {
      goto LABEL_24;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return 1;
    }
  }

  else
  {
  }

  v16 = [v1 conversationUUID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a1 conversationUUID];
  if (v21 && (v22 = v21, v23 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v25 = v24, v22, v20) && v25)
  {
    if (v18 == v23 && v20 == v25)
    {
LABEL_24:

      return 1;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v26 & 1;
  }

  else
  {

    return 0;
  }
}

id sub_1001081CC()
{
  v0 = [objc_allocWithZone(PCMediaRemoteDisplayContext) init];
  v1 = objc_allocWithZone(MRClient);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithBundleIdentifier:v2];

  v4 = [objc_allocWithZone(MRPlayerPath) initWithOrigin:0 client:v3 player:0];
  v5 = [objc_allocWithZone(MRNowPlayingPlayerResponse) init];
  v6 = [objc_allocWithZone(PCMediaActivity) initWithDisplayContext:v0 response:v5];

  return v6;
}

unint64_t sub_1001082D0()
{
  result = qword_100344D40;
  if (!qword_100344D40)
  {
    type metadata accessor for PCActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D40);
  }

  return result;
}

uint64_t PCInteractionDirection.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 1:
      return 1752397168;
    case 2:
      return 1819047280;
  }

  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000011;
}

unint64_t sub_1001084BC()
{
  result = qword_100344D48;
  if (!qword_100344D48)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D48);
  }

  return result;
}

uint64_t sub_100108514(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_100108530(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 sub_100108550(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10010856C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 57))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 56) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 56) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001085C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_100108640(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 56) = *(result + 56) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CardEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    v9 = v8 - 2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 >= 2)
  {
    return v9 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100108738(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    v2 = v1 - 2;
  }

  else
  {
    v2 = 0;
  }

  if (v2 >= 3)
  {
    return v2 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100108758(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_100108778(uint64_t a1)
{
  if (a1 == 5)
  {
    return 0x7373696D736964;
  }

  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = sub_10022C5BC(a1);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10528;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

uint64_t sub_100108830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6573657270 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000)
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

uint64_t sub_10010890C(uint64_t a1)
{
  v2 = sub_10010B9A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100108948(uint64_t a1)
{
  v2 = sub_10010B9A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108984(uint64_t a1)
{
  v2 = sub_10010B9F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001089C0(uint64_t a1)
{
  v2 = sub_10010B9F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108A08(uint64_t a1)
{
  v2 = sub_10010BA4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100108A44(uint64_t a1)
{
  v2 = sub_10010BA4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100108A80(void *a1, int a2)
{
  v22 = a2;
  v23 = a2;
  v3 = sub_100035D04(&qword_100344E60, &qword_10027B488);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_100035D04(&qword_100344E68, &qword_10027B490);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_100035D04(&qword_100344E70, &qword_10027B498);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  v16 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10010B9A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v23 == 5)
  {
    v26 = 1;
    sub_10010B9F8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v25 = 0;
    sub_10010BA4C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v22;
    sub_10010BAF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v10, v7);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100108D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010A2D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_100108DE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = v3 == 5 && v2 == 5;
  if (v2 != 5 && v3 != 5)
  {
    if (v2 == 4)
    {
      if (v3 == 4)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v3 == 3)
      {
        return 1;
      }
    }

    else if (v2 == v3 && (v3 - 5) < 0xFFFFFFFE)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100109150(void *a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_100344DD8, &qword_10027B438);
  v63 = *(v4 - 8);
  *&v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v62 = &v52 - v6;
  v61 = sub_100035D04(&qword_100344DE0, &qword_10027B440);
  v60 = *(v61 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v61);
  v59 = &v52 - v8;
  v65 = sub_100035D04(&qword_100344DE8, &qword_10027B448);
  v58 = *(v65 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v65);
  v11 = &v52 - v10;
  v12 = sub_100035D04(&qword_100344DF0, &qword_10027B450);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v56 = sub_100035D04(&qword_100344DF8, &qword_10027B458);
  v55 = *(v56 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v56);
  v54 = &v52 - v17;
  v53 = sub_100035D04(&qword_100344E00, &qword_10027B460);
  v52 = *(v53 - 8);
  v18 = *(v52 + 64);
  __chkstk_darwin(v53);
  v20 = &v52 - v19;
  v21 = sub_100035D04(&qword_100344E08, &qword_10027B468);
  v68 = *(v21 - 8);
  v69 = v21;
  v22 = *(v68 + 64);
  __chkstk_darwin(v21);
  v24 = &v52 - v23;
  v25 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_10010B560();
  v67 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = *v2;
  v27 = v2[1];
  v28 = *(v2 + 4);
  v29 = *(v2 + 5);
  v30 = *(v2 + 6);
  v31 = *(v2 + 56);
  v32 = v31 >> 5;
  if (v31 >> 5 <= 1)
  {
    v38 = v65;
    v66 = v26;
    if (v32)
    {
      LOBYTE(v70) = 3;
      v64 = v27;
      sub_10010B704();
      v48 = v11;
      v49 = v69;
      v50 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v70 = v66;
      v71 = v64;
      v72 = v28;
      v73 = v29;
      v74 = v30;
      sub_10010B950();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v58 + 8))(v48, v38);
      return (*(v68 + 8))(v50, v49);
    }

    else
    {
      LOBYTE(v70) = 2;
      sub_10010B7AC();
      v39 = v69;
      v40 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v57 + 8))(v15, v12);
      return (*(v68 + 8))(v40, v39);
    }
  }

  else if (v32 == 2)
  {
    v41 = v31 & 0x1F;
    LOBYTE(v70) = 4;
    v66 = v26;
    v64 = v27;
    sub_10010B65C();
    v42 = v59;
    v43 = v69;
    v44 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v70 = v66;
    v71 = v64;
    v72 = v28;
    v73 = v29;
    v74 = v30;
    v75 = v41;
    sub_10010B8FC();
    v45 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v42, v45);
    return (*(v68 + 8))(v44, v43);
  }

  else if (v32 == 3)
  {
    LOBYTE(v70) = 5;
    v66 = v26;
    sub_10010B5B4();
    v33 = v62;
    v34 = v69;
    v35 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v70) = v66;
    sub_10010B8A8();
    v36 = v64;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v63 + 8))(v33, v36);
    return (*(v68 + 8))(v35, v34);
  }

  else
  {
    if (v27 | v26 | *(&v26 + 1) | *(&v27 + 1) | v28 | v29 | v30 || v31 != 128)
    {
      LOBYTE(v70) = 1;
      sub_10010B800();
      v51 = v54;
      v46 = v69;
      v47 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v51, v56);
    }

    else
    {
      LOBYTE(v70) = 0;
      sub_10010B854();
      v46 = v69;
      v47 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v20, v53);
    }

    return (*(v68 + 8))(v47, v46);
  }
}

uint64_t sub_100109990(uint64_t a1)
{
  v2 = sub_10010B65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001099CC(uint64_t a1)
{
  v2 = sub_10010B65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109A08()
{
  v1 = *v0;
  v2 = 0x69746E6573657270;
  v3 = 0x64656C696166;
  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6F69746163756465;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E6573657270;
  if (v1 != 1)
  {
    v5 = 0x657373696D736964;
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

uint64_t sub_100109AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010A7C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100109B10(uint64_t a1)
{
  v2 = sub_10010B560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109B4C(uint64_t a1)
{
  v2 = sub_10010B560();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
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

uint64_t sub_100109C20(uint64_t a1)
{
  v2 = sub_10010B7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109C5C(uint64_t a1)
{
  v2 = sub_10010B7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109C98(uint64_t a1)
{
  v2 = sub_10010B5B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109CD4(uint64_t a1)
{
  v2 = sub_10010B5B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_100109D90(uint64_t a1)
{
  v2 = sub_10010B704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109DCC(uint64_t a1)
{
  v2 = sub_10010B704();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109E08(uint64_t a1)
{
  v2 = sub_10010B800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109E44(uint64_t a1)
{
  v2 = sub_10010B800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100109E80(uint64_t a1)
{
  v2 = sub_10010B854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100109EBC(uint64_t a1)
{
  v2 = sub_10010B854();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100109EF8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_10010A9E0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100109F60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_100109FBC(v5, v7);
}

BOOL sub_100109FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  v3 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v3)
    {
      if ((a2[7] & 0xE0) == 0x20)
      {
        return 1;
      }
    }

    else if (*(a2 + 56) < 0x20u)
    {
      return 1;
    }
  }

  else
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    if (v3 == 2)
    {
      v13 = *(a2 + 56);
      if ((v13 & 0xE0) == 0x40)
      {
        v14 = v13 & 0x1F;
        v15 = v2 & 0x1F;
        if (v15)
        {
          if (v15 == 1)
          {
            if (v14 == 1)
            {
              return 1;
            }
          }

          else
          {
            v21 = *a2;
            v20 = a2[1];
            v23 = a2[2];
            v22 = a2[3];
            v25 = a2[4];
            v24 = a2[5];
            v26 = a2[6];
            v27 = v8 | v9 | v10;
            if (v6 | v4 | v5 | v7 | v27)
            {
              v28 = v6 | v4 | v7 | v27;
              if (v5 != 1 || v28)
              {
                if (v5 != 2 || v28)
                {
                  if (v5 != 3 || v28)
                  {
                    if (v5 != 4 || v28)
                    {
                      if (v14 == 2 && v21 == 5 && !(v23 | v20 | v22 | v25 | v24 | v26))
                      {
                        return 1;
                      }
                    }

                    else if (v14 == 2 && v21 == 4 && !(v23 | v20 | v22 | v25 | v24 | v26))
                    {
                      return 1;
                    }
                  }

                  else if (v14 == 2 && v21 == 3 && !(v23 | v20 | v22 | v25 | v24 | v26))
                  {
                    return 1;
                  }
                }

                else if (v14 == 2 && v21 == 2 && !(v23 | v20 | v22 | v25 | v24 | v26))
                {
                  return 1;
                }
              }

              else if (v14 == 2 && v21 == 1 && !(v23 | v20 | v22 | v25 | v24 | v26))
              {
                return 1;
              }
            }

            else if (v14 == 2 && !(v23 | v20 | v21 | v22 | v25 | v24 | v26))
            {
              return 1;
            }
          }
        }

        else if ((v13 & 0x1F) == 0)
        {
          return 1;
        }
      }
    }

    else if (v3 == 3)
    {
      if ((a2[7] & 0xE0) == 0x60)
      {
        v11 = *a2 ^ v5;
        return *a2 == v5;
      }
    }

    else if (v6 | v4 | v5 | v7 | v8 | v9 | v10 || v2 != 128)
    {
      v18 = *(a2 + 56);
      if ((v18 & 0xE0) == 0x80 && v18 == 128 && *a2 == 1)
      {
        v19 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | a2[2] | a2[1]))
        {
          return 1;
        }
      }
    }

    else
    {
      v16 = *(a2 + 56);
      if ((v16 & 0xE0) == 0x80 && v16 == 128)
      {
        v17 = vorrq_s8(*(a2 + 3), *(a2 + 5));
        if (!(*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | a2[2] | a2[1] | *a2))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10010A2D0(uint64_t *a1)
{
  v33 = sub_100035D04(&qword_100344E28, &qword_10027B470);
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v33);
  v4 = &v32 - v3;
  v5 = sub_100035D04(&qword_100344E30, &qword_10027B478);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = sub_100035D04(&qword_100344E38, &qword_10027B480);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v37 = a1;
  v16 = sub_10000EBC0(a1, v15);
  sub_10010B9A4();
  v17 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v32 = v5;
    v18 = v35;
    v36 = v10;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v38 = v19;
    v39 = v19 + 32;
    v40 = 0;
    v41 = v20;
    v21 = sub_10021800C();
    if (v21 == 2 || v40 != v41 >> 1)
    {
      v16 = v13;
      v23 = v9;
      v24 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      v27 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
      *v26 = &type metadata for CardEffect;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v36 + 8))(v16, v23);
      swift_unknownObjectRelease();
    }

    else if (v21)
    {
      v42 = 1;
      sub_10010B9F8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v36;
      (*(v18 + 8))(v4, v33);
      (*(v22 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v16 = 5;
    }

    else
    {
      v42 = 0;
      sub_10010BA4C();
      v29 = v8;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v36;
      sub_10010BAA0();
      v31 = v32;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v34 + 8))(v29, v31);
      (*(v30 + 8))(v13, v9);
      swift_unknownObjectRelease();
      v16 = v42;
    }
  }

  sub_10000903C(v37);
  return v16;
}

uint64_t sub_10010A7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007765695679 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746163756465 && a2 == 0xED0000776569566ELL)
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

double sub_10010A9E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = sub_100035D04(&qword_100344D50, &qword_10027B3F8);
  v72 = *(v70 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v70);
  v77 = &v58 - v4;
  v68 = sub_100035D04(&qword_100344D58, &qword_10027B400);
  v71 = *(v68 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v68);
  v76 = &v58 - v6;
  v66 = sub_100035D04(&qword_100344D60, &qword_10027B408);
  v69 = *(v66 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin(v66);
  v75 = &v58 - v8;
  v64 = sub_100035D04(&qword_100344D68, &qword_10027B410);
  v67 = *(v64 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v64);
  v74 = &v58 - v10;
  v65 = sub_100035D04(&qword_100344D70, &qword_10027B418);
  v63 = *(v65 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v65);
  v13 = &v58 - v12;
  v14 = sub_100035D04(&qword_100344D78, &qword_10027B420);
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = sub_100035D04(&qword_100344D80, &unk_10027B428);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v90 = a1;
  sub_10000EBC0(a1, v23);
  sub_10010B560();
  v25 = v78;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_12;
  }

  v26 = v17;
  v59 = v14;
  v60 = v13;
  v28 = v74;
  v27 = v75;
  v29 = v76;
  v30 = v77;
  v61 = 0;
  *&v78 = v19;
  v31 = v22;
  v32 = KeyedDecodingContainer.allKeys.getter();
  v33 = (2 * *(v32 + 16)) | 1;
  v86 = v32;
  v87 = v32 + 32;
  v88 = 0;
  v89 = v33;
  v34 = sub_100218010();
  if (v34 == 6 || v88 != v89 >> 1)
  {
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    v44 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v43 = &type metadata for CardEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v43, enum case for DecodingError.typeMismatch(_:), v41);
    swift_willThrow();
    goto LABEL_10;
  }

  if (v34 > 2u)
  {
    if (v34 == 3)
    {
      LOBYTE(v79) = 3;
      sub_10010B704();
      v49 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v73;
      if (!v49)
      {
        sub_10010B758();
        v50 = v66;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v61 = 0;
        (*(v69 + 8))(v27, v50);
        (*(v78 + 8))(v31, v18);
        swift_unknownObjectRelease();
        v39 = v79;
        v37 = v80;
        v18 = v81;
        v29 = v82;
        v30 = v83;
        v38 = 32;
        v78 = v84;
        goto LABEL_26;
      }
    }

    else
    {
      v40 = v73;
      if (v34 == 4)
      {
        LOBYTE(v79) = 4;
        sub_10010B65C();
        v46 = v61;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v46)
        {
          sub_10010B6B0();
          v47 = v68;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v61 = 0;
          (*(v71 + 8))(v29, v47);
          (*(v78 + 8))(v31, v18);
          swift_unknownObjectRelease();
          v39 = v79;
          v37 = v80;
          v18 = v81;
          v29 = v82;
          v30 = v83;
          v78 = v84;
          v38 = v85 & 3 | 0x40;
          goto LABEL_26;
        }
      }

      else
      {
        LOBYTE(v79) = 5;
        sub_10010B5B4();
        v55 = v61;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v55)
        {
          sub_10010B608();
          v56 = v70;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v37 = 0;
          v61 = 0;
          (*(v72 + 8))(v30, v56);
          (*(v78 + 8))(v31, v18);
          swift_unknownObjectRelease();
          v39 = v79;
          v38 = 96;
          goto LABEL_26;
        }
      }
    }

    (*(v78 + 8))(v31, v18);
    goto LABEL_11;
  }

  if (!v34)
  {
    LOBYTE(v79) = 0;
    sub_10010B854();
    v48 = v61;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v48;
    if (!v48)
    {
      v61 = 0;
      (*(v62 + 8))(v26, v59);
      (*(v78 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v39 = 0;
      v18 = 0;
      v29 = 0;
      v30 = 0;
      v78 = 0u;
      v38 = 0x80;
      v40 = v73;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  if (v34 != 1)
  {
    LOBYTE(v79) = 2;
    sub_10010B7AC();
    v30 = v28;
    v51 = v61;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v51)
    {
      v52 = v64;
      v53 = KeyedDecodingContainer.decode(_:forKey:)();
      v54 = v78;
      v61 = 0;
      v39 = v53;
      v37 = v57;
      (*(v67 + 8))(v30, v52);
      (*(v54 + 8))(v22, v18);
      swift_unknownObjectRelease();
      v38 = 0;
      v40 = v73;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  LOBYTE(v79) = 1;
  sub_10010B800();
  v35 = v60;
  v36 = v61;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v37 = v36;
  if (v36)
  {
LABEL_10:
    (*(v78 + 8))(v22, v18);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    sub_10000903C(v90);
    return result;
  }

  v61 = 0;
  (*(v63 + 8))(v35, v65);
  (*(v78 + 8))(v22, v18);
  swift_unknownObjectRelease();
  v18 = 0;
  v29 = 0;
  v30 = 0;
  v78 = 0u;
  v38 = 0x80;
  v39 = 1;
  v40 = v73;
LABEL_26:
  sub_10000903C(v90);
  *v40 = v39;
  *(v40 + 8) = v37;
  *(v40 + 16) = v18;
  *(v40 + 24) = v29;
  *(v40 + 32) = v30;
  result = *&v78;
  *(v40 + 40) = v78;
  *(v40 + 56) = v38;
  return result;
}

unint64_t sub_10010B560()
{
  result = qword_100344D88;
  if (!qword_100344D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D88);
  }

  return result;
}

unint64_t sub_10010B5B4()
{
  result = qword_100344D90;
  if (!qword_100344D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D90);
  }

  return result;
}

unint64_t sub_10010B608()
{
  result = qword_100344D98;
  if (!qword_100344D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344D98);
  }

  return result;
}

unint64_t sub_10010B65C()
{
  result = qword_100344DA0;
  if (!qword_100344DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DA0);
  }

  return result;
}

unint64_t sub_10010B6B0()
{
  result = qword_100344DA8;
  if (!qword_100344DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DA8);
  }

  return result;
}

unint64_t sub_10010B704()
{
  result = qword_100344DB0;
  if (!qword_100344DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DB0);
  }

  return result;
}

unint64_t sub_10010B758()
{
  result = qword_100344DB8;
  if (!qword_100344DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DB8);
  }

  return result;
}

unint64_t sub_10010B7AC()
{
  result = qword_100344DC0;
  if (!qword_100344DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DC0);
  }

  return result;
}

unint64_t sub_10010B800()
{
  result = qword_100344DC8;
  if (!qword_100344DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DC8);
  }

  return result;
}

unint64_t sub_10010B854()
{
  result = qword_100344DD0;
  if (!qword_100344DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344DD0);
  }

  return result;
}

unint64_t sub_10010B8A8()
{
  result = qword_100344E10;
  if (!qword_100344E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E10);
  }

  return result;
}

unint64_t sub_10010B8FC()
{
  result = qword_100344E18;
  if (!qword_100344E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E18);
  }

  return result;
}

unint64_t sub_10010B950()
{
  result = qword_100344E20;
  if (!qword_100344E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E20);
  }

  return result;
}

unint64_t sub_10010B9A4()
{
  result = qword_100344E40;
  if (!qword_100344E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E40);
  }

  return result;
}

unint64_t sub_10010B9F8()
{
  result = qword_100344E48;
  if (!qword_100344E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E48);
  }

  return result;
}

unint64_t sub_10010BA4C()
{
  result = qword_100344E50;
  if (!qword_100344E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E50);
  }

  return result;
}

unint64_t sub_10010BAA0()
{
  result = qword_100344E58;
  if (!qword_100344E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E58);
  }

  return result;
}

unint64_t sub_10010BAF4()
{
  result = qword_100344E78;
  if (!qword_100344E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E78);
  }

  return result;
}

unint64_t sub_10010BBEC()
{
  result = qword_100344E80;
  if (!qword_100344E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E80);
  }

  return result;
}

unint64_t sub_10010BC44()
{
  result = qword_100344E88;
  if (!qword_100344E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E88);
  }

  return result;
}

unint64_t sub_10010BC9C()
{
  result = qword_100344E90;
  if (!qword_100344E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E90);
  }

  return result;
}

unint64_t sub_10010BCF4()
{
  result = qword_100344E98;
  if (!qword_100344E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344E98);
  }

  return result;
}

unint64_t sub_10010BD4C()
{
  result = qword_100344EA0;
  if (!qword_100344EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EA0);
  }

  return result;
}

unint64_t sub_10010BDA4()
{
  result = qword_100344EA8;
  if (!qword_100344EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EA8);
  }

  return result;
}

unint64_t sub_10010BDFC()
{
  result = qword_100344EB0;
  if (!qword_100344EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EB0);
  }

  return result;
}

unint64_t sub_10010BE54()
{
  result = qword_100344EB8;
  if (!qword_100344EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EB8);
  }

  return result;
}

unint64_t sub_10010BEAC()
{
  result = qword_100344EC0;
  if (!qword_100344EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EC0);
  }

  return result;
}

unint64_t sub_10010BF04()
{
  result = qword_100344EC8;
  if (!qword_100344EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EC8);
  }

  return result;
}

unint64_t sub_10010BF5C()
{
  result = qword_100344ED0;
  if (!qword_100344ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344ED0);
  }

  return result;
}

unint64_t sub_10010BFB4()
{
  result = qword_100344ED8;
  if (!qword_100344ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344ED8);
  }

  return result;
}

unint64_t sub_10010C00C()
{
  result = qword_100344EE0;
  if (!qword_100344EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EE0);
  }

  return result;
}

unint64_t sub_10010C064()
{
  result = qword_100344EE8;
  if (!qword_100344EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EE8);
  }

  return result;
}

unint64_t sub_10010C0BC()
{
  result = qword_100344EF0;
  if (!qword_100344EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EF0);
  }

  return result;
}

unint64_t sub_10010C114()
{
  result = qword_100344EF8;
  if (!qword_100344EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344EF8);
  }

  return result;
}

unint64_t sub_10010C16C()
{
  result = qword_100344F00;
  if (!qword_100344F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F00);
  }

  return result;
}

unint64_t sub_10010C1C4()
{
  result = qword_100344F08;
  if (!qword_100344F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F08);
  }

  return result;
}

unint64_t sub_10010C21C()
{
  result = qword_100344F10;
  if (!qword_100344F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F10);
  }

  return result;
}

unint64_t sub_10010C274()
{
  result = qword_100344F18;
  if (!qword_100344F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F18);
  }

  return result;
}

unint64_t sub_10010C2CC()
{
  result = qword_100344F20;
  if (!qword_100344F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F20);
  }

  return result;
}

unint64_t sub_10010C324()
{
  result = qword_100344F28;
  if (!qword_100344F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F28);
  }

  return result;
}

unint64_t sub_10010C37C()
{
  result = qword_100344F30;
  if (!qword_100344F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F30);
  }

  return result;
}

unint64_t sub_10010C3D4()
{
  result = qword_100344F38;
  if (!qword_100344F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F38);
  }

  return result;
}

unint64_t sub_10010C42C()
{
  result = qword_100344F40;
  if (!qword_100344F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F40);
  }

  return result;
}

unint64_t sub_10010C484()
{
  result = qword_100344F48;
  if (!qword_100344F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F48);
  }

  return result;
}

unint64_t sub_10010C4DC()
{
  result = qword_100344F50;
  if (!qword_100344F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344F50);
  }

  return result;
}

id sub_10010C548()
{
  if (qword_100338F08 != -1)
  {
    swift_once();
  }

  v0 = qword_10038B0A8;
  v1 = *(qword_10038B0A8 + 56);
  sub_10005F4E4();

  v2 = v0[8];
  sub_10005F4E4();

  v3 = v0[9];
  sub_10005F4E4();

  v4 = v0[10];
  sub_10005F4E4();

  v9 = nullsub_1(v5, v6, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v0[11];
  sub_10005F4E4();
  v18 = v17;

  v19 = objc_allocWithZone(FluidSpring);

  return [v19 initWithParameters:v9 retargetImpuse:{v11, v13, v15, v18}];
}

id sub_10010C688()
{
  if (qword_100338F08 != -1)
  {
    swift_once();
  }

  v0 = qword_10038B0A8;
  v1 = *(qword_10038B0A8 + 96);
  sub_10005F4E4();

  v2 = v0[13];
  sub_10005F4E4();

  v3 = v0[14];
  sub_10005F4E4();

  v4 = v0[15];
  sub_10005F4E4();

  v9 = nullsub_1(v5, v6, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v0[16];
  sub_10005F4E4();
  v18 = v17;

  v19 = objc_allocWithZone(FluidSpring);

  return [v19 initWithParameters:v9 retargetImpuse:{v11, v13, v15, v18}];
}

uint64_t sub_10010C7C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010C7EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010C84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double sub_10010C8B8(double a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1288);
  sub_1000624D4();
  v4 = v3;

  return (v4 + -1.0) * a1 + 1.0;
}

uint64_t sub_10010C944()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10010C9B8()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject);
    sub_100035D04(&unk_10034D890, &unk_10027C0F0);
    sub_10000E244(&unk_1003450A0, &unk_10034D890, &unk_10027C0F0);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_10010CA94(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10010D0E8(v1);
  }
}

void sub_10010CAF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);

    v6 = &v5[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle];
    v7 = *&v5[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle + 8];
    *v6 = v2;
    *(v6 + 1) = v1;

    sub_1000FC910(0);
  }
}

void sub_10010CB94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10010D354();
  }
}

void sub_10010CBE8(char a1, char a2)
{
  if (a1 & 1) != 0 && (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    sub_10010D85C();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v3 = v4;
    sub_10010DA38();
  }
}

uint64_t sub_10010CC98()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_viewModel);

  v2 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner__isPresenting;
  v3 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject);

  v5 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher);

  v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks);
}

id sub_10010CD9C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deinit", v9, 2u);
  }

  (*(v2 + 8))(v5, v1);
  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver:v6];

  v11 = type metadata accessor for HintViewControllerBanner();
  v13.receiver = v6;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "dealloc");
}

uint64_t type metadata accessor for HintViewControllerBanner()
{
  result = qword_100344FC8;
  if (!qword_100344FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010D0E8(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000022, 0x80000001002A06F0, &v17);
    *(v6 + 12) = 2080;
    if (a1)
    {
      swift_unknownObjectRetain();
      sub_100035D04(&qword_10033D6D0, &unk_10027C120);
      v7 = String.init<A>(describing:)();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = sub_100017494(v7, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: activity=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(*(*(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_viewModel) + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = sub_1000BDC5C();
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v16 = [objc_opt_self() composedImageWithArtworkFor:a1 assetType:v15];
  [*(*(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView) + OBJC_IVAR____TtC17proximitycontrold8PillView_leadingImageView) setImage:v16];
}

void sub_10010D354()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v57.m11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0x2928706F70, 0xE500000000000000, &v57);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);
  [v6 transform3D];
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B0B8;
  v8 = *(qword_10038B0B8 + 872);
  sub_10005F4E4();
  v10 = v9;

  v11 = *&CATransform3DIdentity.m33;
  *&v48.m31 = *&CATransform3DIdentity.m31;
  *&v48.m33 = v11;
  v12 = *&CATransform3DIdentity.m43;
  *&v48.m41 = *&CATransform3DIdentity.m41;
  *&v48.m43 = v12;
  v13 = *&CATransform3DIdentity.m13;
  *&v48.m11 = *&CATransform3DIdentity.m11;
  *&v48.m13 = v13;
  v14 = *&CATransform3DIdentity.m23;
  *&v48.m21 = *&CATransform3DIdentity.m21;
  *&v48.m23 = v14;
  CATransform3DScale(&v57, &v48, v10, v10, 1.0);
  v15 = [objc_allocWithZone(CAKeyframeAnimation) init];
  v16 = String._bridgeToObjectiveC()();
  [v15 setKeyPath:v16];

  v17 = *(v7 + 864);
  v18 = v15;
  v19 = v17;
  sub_10005F4E4();
  v21 = v20;

  [v18 setDuration:v21];
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10027BF70;
  sub_100003118(0, &qword_10034B560, NSNumber_ptr);
  *(v22 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v22 + 40) = NSNumber.init(floatLiteral:)(0.5);
  *(v22 + 48) = NSNumber.init(integerLiteral:)(1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 setKeyTimes:isa];

  sub_100035D04(&qword_100345098, &qword_10027C130);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002727F0;
  type metadata accessor for CATransform3D(0);
  v26 = v25;
  *(v24 + 56) = v25;
  v27 = swift_allocObject();
  *(v24 + 32) = v27;
  v28 = v54;
  v27[5] = v53;
  v27[6] = v28;
  v29 = v56;
  v27[7] = v55;
  v27[8] = v29;
  v30 = v50;
  v27[1] = v49;
  v27[2] = v30;
  v31 = v52;
  v27[3] = v51;
  v27[4] = v31;
  *(v24 + 88) = v26;
  v32 = swift_allocObject();
  *(v24 + 64) = v32;
  v33 = *&v57.m33;
  v32[5] = *&v57.m31;
  v32[6] = v33;
  v34 = *&v57.m43;
  v32[7] = *&v57.m41;
  v32[8] = v34;
  v35 = *&v57.m13;
  v32[1] = *&v57.m11;
  v32[2] = v35;
  v36 = *&v57.m23;
  v32[3] = *&v57.m21;
  v32[4] = v36;
  *(v24 + 120) = v26;
  v37 = swift_allocObject();
  *(v24 + 96) = v37;
  v38 = v54;
  v37[5] = v53;
  v37[6] = v38;
  v39 = v56;
  v37[7] = v55;
  v37[8] = v39;
  v40 = v50;
  v37[1] = v49;
  v37[2] = v40;
  v41 = v52;
  v37[3] = v51;
  v37[4] = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setValues:v42];

  [v18 setRemovedOnCompletion:1];
  [v18 setAdditive:0];

  v43 = *(v7 + 880);
  v44 = sub_100061B10();

  if (v44)
  {
    v45 = [objc_opt_self() functionWithName:v44];
  }

  else
  {
    v45 = 0;
  }

  [v18 setTimingFunction:v45];

  v46 = [v6 layer];
  v47 = String._bridgeToObjectiveC()();
  [v46 addAnimation:v18 forKey:v47];
}

void sub_10010D85C()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A06D0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink;
  if (!*(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink))
  {
    v7 = [objc_opt_self() displayLinkWithTarget:v1 selector:"update"];
    v8 = [objc_opt_self() mainRunLoop];
    [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

    [v7 setPaused:0];
    v9 = *(v1 + v6);
    *(v1 + v6) = v7;
  }
}

void sub_10010DA38()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0xD000000000000019, 0x80000001002A06B0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 mainRunLoop];
    [v9 removeFromRunLoop:v10 forMode:NSRunLoopCommonModes];

    v11 = *(v1 + v6);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + v6) = 0;
}

id sub_10010DBD0()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v11[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0x2928657461647075, 0xE800000000000000, v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);
  v7 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_viewModel) + 16);
  sub_100091EB8();
  sub_10010DEF8(v11, v8);
  v10[0] = v11[0];
  v10[1] = v11[1];
  v10[2] = v11[2];
  return [v6 setTransform:v10];
}

uint64_t sub_10010DD74()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0x707061546C6C6970, 0xEC00000029286465, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject);

  PassthroughSubject.send(_:)();
}

CGFloat sub_10010DEF8@<D0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v15.a = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A0690, &v15);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: progress=%f", v8, 0x16u);
    sub_10000903C(v9);
  }

  [*(v3 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_scalingSpring) step:CACurrentMediaTime() progress:a2];
  v11 = sub_10010C8B8(v10);
  CGAffineTransformMakeScale(&v15, v11, v11);
  result = v15.a;
  v13 = *&v15.c;
  v14 = *&v15.tx;
  *a1 = *&v15.a;
  a1[1] = v13;
  a1[2] = v14;
  return result;
}

void sub_10010E060()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0x4C64694477656976, 0xED0000292864616FLL, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = type metadata accessor for HintViewControllerBanner();
  v10.receiver = v1;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 addSubview:*&v1[OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView]];
  }

  else
  {
    __break(1u);
  }
}

void sub_10010E3A4()
{
  sub_10010E478();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10010E478()
{
  if (!qword_10034C3C0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10034C3C0);
    }
  }
}

unint64_t sub_10010E4DC()
{
  result = qword_100344FD8;
  if (!qword_100344FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344FD8);
  }

  return result;
}

double sub_10010E530()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10038B0B8 + 872);
  sub_10005F4E4();
  v12 = v11;

  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  CGRectGetWidth(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  v13 = (v12 + -1.0) * CGRectGetHeight(v17) * 0.5;
  [v1 shadowOutsets];
  return v13 + v12 * v14;
}

uint64_t sub_10010E65C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10010E6DC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

char *sub_10010E74C(uint64_t a1)
{
  v2 = v1;
  v173 = sub_100035D04(&qword_100344FE0, &qword_10027C080);
  v4 = *(*(v173 - 8) + 64);
  __chkstk_darwin(v173);
  v172[2] = v172 - v5;
  v176 = sub_100035D04(&qword_100344FE8, &qword_10027C088);
  v175 = *(v176 - 8);
  v6 = *(v175 + 64);
  __chkstk_darwin(v176);
  v174 = v172 - v7;
  v179 = sub_100035D04(&qword_100344FF0, &qword_10027C090);
  v178 = *(v179 - 8);
  v8 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = v172 - v9;
  v205 = sub_100035D04(&qword_100344FF8, &qword_10027C098);
  v204 = *(v205 - 8);
  v10 = *(v204 + 64);
  __chkstk_darwin(v205);
  v203 = v172 - v11;
  v202 = sub_100035D04(&qword_100345000, &qword_10027C0A0);
  v201 = *(v202 - 8);
  v12 = *(v201 + 64);
  __chkstk_darwin(v202);
  v199 = v172 - v13;
  v200 = sub_100035D04(&qword_100345008, &unk_10027C0A8);
  v198 = *(v200 - 8);
  v14 = *(v198 + 64);
  __chkstk_darwin(v200);
  v197 = v172 - v15;
  v192 = sub_100035D04(&qword_100345010, &qword_10027C0B8);
  v196 = *(v192 - 8);
  v16 = *(v196 + 64);
  __chkstk_darwin(v192);
  v195 = v172 - v17;
  v184 = type metadata accessor for NSNotificationCenter.Publisher();
  v188 = *(v184 - 8);
  v18 = *(v188 + 64);
  __chkstk_darwin(v184);
  v186 = v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_100035D04(&qword_100345018, &qword_10027C0C0);
  v189 = *(v190 - 8);
  v20 = *(v189 + 64);
  __chkstk_darwin(v190);
  v187 = v172 - v21;
  v194 = sub_100035D04(&qword_100345020, &qword_10027C0C8);
  v193 = *(v194 - 8);
  v22 = *(v193 + 64);
  __chkstk_darwin(v194);
  v191 = v172 - v23;
  v217 = sub_100035D04(&qword_100345028, &unk_10027C0D0);
  v210 = *(v217 - 8);
  v24 = *(v210 + 64);
  __chkstk_darwin(v217);
  v185 = v172 - v25;
  v26 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v231 = v172 - v28;
  v29 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v229 = *(v29 - 8);
  v230 = v29;
  v30 = *(v229 + 64);
  __chkstk_darwin(v29);
  v228 = v172 - v31;
  v227 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v221 = *(v227 - 8);
  v32 = v221[8];
  __chkstk_darwin(v227);
  v213 = v172 - v33;
  v183 = sub_100035D04(&qword_100345030, &qword_10027C0E0);
  v182 = *(v183 - 8);
  v34 = *(v182 + 64);
  __chkstk_darwin(v183);
  v181 = v172 - v35;
  v36 = type metadata accessor for Logger();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v226 = v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v215 = v172 - v42;
  v212 = v43;
  __chkstk_darwin(v41);
  v45 = v172 - v44;
  v46 = type metadata accessor for ActivityDisplayContext(0);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = (v172 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v54 = v172 - v53;
  v55 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill;
  *(v2 + v55) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v56 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_scalingSpring;
  *(v2 + v56) = sub_10010C548();
  v57 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_yTranslationSpring;
  *(v2 + v57) = sub_10010C688();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink) = 0;
  v58 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner__isPresenting;
  LOBYTE(v233) = 0;
  Published.init(initialValue:)();
  v59 = *(v51 + 32);
  v172[1] = v50;
  v59(v2 + v58, v54, v50);
  v60 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject;
  v61 = sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  *(v2 + v60) = PassthroughSubject.init()();
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher) = 0;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_viewModel) = a1;
  v64 = *(a1 + 16);
  v65 = *(v64 + 24);
  v66 = *&v65[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity];

  v67 = sub_1001F00B0();
  sub_100249BE4(v65, v67, v49);
  swift_unknownObjectRelease();
  v68 = v49[3];
  v69 = v49[4];

  sub_1001107D0(v49);
  v70 = objc_allocWithZone(type metadata accessor for PillView());
  *(v2 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView) = sub_1000FC528(v68, v69);
  v71 = UUID.uuidString.getter();
  v73 = sub_1000CB104(v71, v72);
  v232 = v37;
  v74 = *(v37 + 16);
  v223 = &v73[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log];
  v224 = v74;
  v216 = v36;
  v225 = v37 + 16;
  v74(v45);
  v75 = v73;

  v219 = v75;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v218 = a1;

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    *v78 = 136315394;
    *(v78 + 4) = sub_100017494(0xD000000000000010, 0x80000001002A0670, &v235);
    *(v78 + 12) = 2080;
    v233 = 60;
    v234 = 0xE100000000000000;
    LODWORD(v222) = v77;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v79 = static String._fromSubstring(_:)();
    v81 = v80;

    v82._countAndFlagsBits = v79;
    v82._object = v81;
    String.append(_:)(v82);

    v83._countAndFlagsBits = 32;
    v83._object = 0xE100000000000000;
    String.append(_:)(v83);
    v84 = *(v64 + 24);
    v85._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v85);

    v86._countAndFlagsBits = 62;
    v86._object = 0xE100000000000000;
    String.append(_:)(v86);
    v87 = sub_100017494(v233, v234, &v235);

    *(v78 + 14) = v87;
    _os_log_impl(&_mh_execute_header, v76, v222, "%s: viewModel=%s", v78, 0x16u);
    swift_arrayDestroy();
  }

  v88 = *(v232 + 8);
  v222 = (v232 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88(v45, v216);
  v89 = *(*(v64 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v90 = sub_1001F00B0();
  sub_10010D0E8(v90);
  swift_unknownObjectRelease();
  v91 = *(*(v64 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v233 = sub_1001EF664();
  sub_100035D04(&unk_10034D910, &unk_100273390);
  v209 = sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  v214 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390);
  v92 = v213;
  Publisher.map<A>(_:)();

  v220 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380);
  v94 = v227;
  v93 = v228;
  Publisher.removeDuplicates(by:)();
  sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510);
  v95 = v230;
  v96 = Publisher.eraseToAnyPublisher()();
  (*(v229 + 8))(v93, v95);
  (v221[1])(v92, v94);
  v233 = v96;
  v206 = sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v97 = static OS_dispatch_queue.main.getter();
  v235 = v97;
  v227 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v98 = *(v227 - 8);
  v228 = *(v98 + 56);
  v230 = v98 + 56;
  v99 = v231;
  (v228)(v231, 1, 1, v227);
  v208 = sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
  v100 = sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0);
  v229 = sub_1000513CC();
  v101 = v181;
  v180 = v100;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v99);

  v102 = v215;
  v103 = v224;
  v104 = v216;
  v224(v215, v223, v216);
  v105 = v103;
  LOBYTE(v103) = static os_log_type_t.info.getter();
  v106 = v226;
  v105(v226, v102, v104);
  v213 = *(v232 + 80);
  v107 = v232;
  v108 = (v213 + 64) & ~v213;
  v211 = v108;
  v109 = &v212[v108];
  v207 = &v212[v108];
  v110 = swift_allocObject();
  *(v110 + 16) = sub_100110CA0;
  *(v110 + 24) = xmmword_10027BF80;
  *(v110 + 40) = 0xEE00203A79746976;
  *(v110 + 48) = 0;
  *(v110 + 56) = 0xE000000000000000;
  v212 = *(v107 + 32);
  (v212)(v110 + v108, v106, v104);
  v111 = v107 + 32;
  v232 = v107 + 32;
  v109[v110] = v103;
  v221 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000E244(&qword_10034D980, &qword_100345030, &qword_10027C0E0);
  v112 = v185;
  v113 = v183;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100345040, &qword_100345028, &unk_10027C0D0);
  v114 = v217;
  v115 = Publisher.eraseToAnyPublisher()();
  (*(v210 + 8))(v112, v114);
  v210 = *(v111 - 24);
  (v210)(v102, v104);
  (*(v182 + 8))(v101, v113);
  v233 = v115;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v217 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v116 = [objc_opt_self() defaultCenter];
  v117 = kPCAssetManagerNotificationNameQueryDidComplete;
  v118 = v186;
  NSNotificationCenter.publisher(for:object:)();

  v119 = static OS_dispatch_queue.main.getter();
  v233 = v119;
  v120 = v231;
  (v228)(v231, 1, 1, v227);
  sub_100110860();
  v121 = v187;
  v122 = v184;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v120);

  (*(v188 + 8))(v118, v122);
  sub_10000E244(&qword_100345050, &qword_100345018, &qword_10027C0C0);

  v123 = v191;
  v124 = v190;
  Publisher.map<A>(_:)();

  (*(v189 + 8))(v121, v124);
  v125 = v224;
  v224(v102, v223, v104);
  LOBYTE(v116) = static os_log_type_t.info.getter();
  v126 = v226;
  v125(v226, v102, v104);
  v127 = v207;
  v128 = swift_allocObject();
  *(v128 + 16) = sub_100110CA0;
  *(v128 + 24) = xmmword_10027BF90;
  *(v128 + 40) = 0x80000001002A0640;
  *(v128 + 48) = 0;
  *(v128 + 56) = 0xE000000000000000;
  (v212)(v128 + v211, v126, v104);
  v127[v128] = v116;
  sub_10000E244(&qword_100345058, &qword_100345020, &qword_10027C0C8);
  v129 = v195;
  v130 = v194;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100345060, &qword_100345010, &qword_10027C0B8);
  v131 = v192;
  v132 = Publisher.eraseToAnyPublisher()();
  (*(v196 + 8))(v129, v131);
  (v210)(v102, v104);
  (*(v193 + 8))(v123, v130);
  v233 = v132;
  swift_allocObject();
  v133 = v219;
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v134 = v133;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v233 = sub_1001E48DC();
  v135 = static OS_dispatch_queue.main.getter();
  v235 = v135;
  v136 = v231;
  (v228)(v231, 1, 1, v227);
  v209 = sub_100035D04(&qword_100345068, &unk_10027C110);
  v208 = sub_10000E244(&unk_10034C7A0, &qword_100345068, &unk_10027C110);
  v137 = v197;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v136);

  v138 = v215;
  v139 = v224;
  v224(v215, v223, v104);

  LOBYTE(v116) = static os_log_type_t.info.getter();
  v140 = v226;
  v139(v226, v138, v104);
  v141 = v207;
  v142 = swift_allocObject();
  *(v142 + 16) = 0;
  *(v142 + 24) = 0;
  strcpy((v142 + 32), "New subtitle: ");
  *(v142 + 47) = -18;
  *(v142 + 48) = 0;
  *(v142 + 56) = 0xE000000000000000;
  (v212)(v142 + v211, v140, v104);
  v141[v142] = v116;
  sub_10000E244(&qword_100345070, &qword_100345008, &unk_10027C0A8);
  v143 = v199;
  v144 = v200;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100345078, &qword_100345000, &qword_10027C0A0);
  v145 = v202;
  v146 = Publisher.eraseToAnyPublisher()();
  (*(v201 + 8))(v143, v145);
  v147 = v104;
  v148 = v134;
  (v210)(v138, v147);
  (*(v198 + 8))(v137, v144);
  v233 = v146;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v233 = *(v218 + OBJC_IVAR____TtC17proximitycontrold13HintViewModel_popSubject);
  sub_100035D04(&qword_10034C750, &unk_100287670);
  sub_10000E244(&unk_10034A3E0, &qword_10034C750, &unk_100287670);
  v233 = Publisher.eraseToAnyPublisher()();
  v149 = static OS_dispatch_queue.main.getter();
  v235 = v149;
  v150 = v231;
  (v228)(v231, 1, 1, v227);
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
  v151 = v203;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v150);

  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v153 = swift_allocObject();
  *(v153 + 16) = sub_100110A88;
  *(v153 + 24) = v152;
  sub_10000E244(&qword_100345080, &qword_100344FF8, &qword_10027C098);
  v154 = v205;
  Publisher<>.sink(receiveValue:)();

  (*(v204 + 8))(v151, v154);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v155 = *(qword_10038B0B8 + 856);
  v156 = sub_1000031CC();

  if (v156)
  {
    v235 = sub_1001E4740();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100035D04(&unk_1003436E0, &unk_100276210);
    sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
    sub_10000E244(&qword_10034C7B0, &qword_100344FE0, &qword_10027C080);
    v157 = v174;
    Publishers.CombineLatest.init(_:_:)();
    v158 = static OS_dispatch_queue.main.getter();
    v233 = v158;
    v159 = v231;
    (v228)(v231, 1, 1, v227);
    sub_10000E244(&qword_100345088, &qword_100344FE8, &qword_10027C088);
    v160 = v177;
    v161 = v176;
    Publisher.receive<A>(on:options:)();
    sub_100056CC4(v159);

    (*(v175 + 8))(v157, v161);
    v162 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v163 = swift_allocObject();
    *(v163 + 16) = sub_100110A90;
    *(v163 + 24) = v162;
    sub_10000E244(&qword_100345090, &qword_100344FF0, &qword_10027C090);
    v164 = v179;
    Publisher<>.sink(receiveValue:)();

    (*(v178 + 8))(v160, v164);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v165 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView;
  [*&v148[OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_pillView] setFrame:{0.0, 0.0, 250.0, 50.0}];
  v166 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill;
  v167 = *&v148[OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill];
  v168 = v148;
  [v167 addTarget:v168 action:"pillTapped"];
  [*&v148[v165] addGestureRecognizer:*&v148[v166]];
  [*&v148[v165] frame];
  [v168 setPreferredContentSize:{v169, v170}];

  return v168;
}

uint64_t sub_1001107D0(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDisplayContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100110860()
{
  result = qword_100345048;
  if (!qword_100345048)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100345048);
  }

  return result;
}

uint64_t sub_1001108B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(*(v1 + 16) + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  result = sub_1001F00B0();
  *a1 = result;
  return result;
}

uint64_t sub_1001108F8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for Logger() - 8);
  v9 = *(v3 + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + *(v7 + 64));
  *a3 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);

  return swift_unknownObjectRetain();
}

uint64_t sub_1001109BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  *a2 = sub_1001CDCBC(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  a2[1] = v6;
}

uint64_t sub_100110A98(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_100110ACC()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100345038, &qword_10027C0E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-v5];
  v7 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tapPill;
  *(v1 + v7) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v8 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_scalingSpring;
  *(v1 + v8) = sub_10010C548();
  v9 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_yTranslationSpring;
  *(v1 + v9) = sub_10010C688();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_displayLink) = 0;
  v10 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner__isPresenting;
  v15[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v10, v6, v2);
  v11 = OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_hintViewControllerEventSubject;
  v12 = sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + v11) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner____lazy_storage___hintViewControllerEventPublisher) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold24HintViewControllerBanner_tasks) = &_swiftEmptySetSingleton;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100110CA8(double a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setMaximumFractionDigits:3];
  if (a1 >= 0.001)
  {
    v4 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
    v5 = [v2 stringFromNumber:v4];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = v6;
      v7._countAndFlagsBits = 115;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    else
    {
      v8 = 0;
      Double.write<A>(to:)();
    }

    return v8;
  }

  else
  {

    return 0x736D31203CLL;
  }
}

void *sub_100110DD4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v33 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_10000E244(&qword_1003452C0, &qword_1003452B8, &qword_10027C220);
            for (i = 0; i != v17; ++i)
            {
              sub_100035D04(&qword_1003452B8, &qword_10027C220);
              v20 = sub_100128B4C(v32, i, v8);
              v22 = *v21;
              (v20)(v32, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100111168()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003450B0);
  sub_100003078(v0, qword_1003450B0);
  return Logger.init(subsystem:category:)();
}

id sub_10011120C()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003450B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_100111954();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomeKitProxy();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1001113B8()
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003450B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activate", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t sub_1001114FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue);
    v25 = v11;
    v19 = Strong;

    v24 = v18;

    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = sub_1000FBAA8;
    v20[4] = v16;
    aBlock[4] = sub_100114424;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100309288;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_10007E5B8();
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v25);
  }

  else
  {
  }
}

void sub_100111828(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100113BCC();
    [v7 setDelegate:v6];
    v8 = *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager];
    *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager] = v7;
    v9 = v7;

    v10 = &v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
    v11 = *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
    v12 = *&v6[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise + 8];
    *v10 = a2;
    v10[1] = a3;

    sub_10002689C(v11);
    sub_100111C24();
    sub_100112228();
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v13 = 0x666C6573206C696ELL;
    *(v13 + 8) = 0xE800000000000000;
    *(v13 + 16) = 9;
    a2();
  }
}

uint64_t sub_100111954()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003450B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state);
  v7 = *(v6 + 24);
  *(v7 + 24) = 0;

  sub_10005E50C();
  v11 = *(v7 + 24);
  CurrentValueSubject.send(_:)();

  v8 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager) = 0;

  v9 = *(v6 + 16);

  sub_1001AC448();
}

uint64_t sub_100111AAC()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003450B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activated", v5, 2u);
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state) + 24);
  *(v6 + 24) = 1;

  sub_10005E50C();
  v13 = *(v6 + 24);
  CurrentValueSubject.send(_:)();

  v8 = (v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise);
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise);
  if (v9)
  {
    v10 = v8[1];

    v9(0, 0);
    sub_10002689C(v9);
    v11 = *v8;
    v12 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    return sub_10002689C(v11);
  }

  return result;
}

uint64_t sub_100111C24()
{
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  v1 = *(v32 + 64);
  __chkstk_darwin(v29);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v27 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  v28 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue);
  static DispatchTime.now()();
  *v12 = 1;
  (*(v9 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v8);
  + infix(_:_:)();
  (*(v9 + 8))(v12, v8);
  v26 = *(v14 + 8);
  v26(v18, v13);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100114414;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100309210;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v32 + 8))(v3, v23);
  (*(v30 + 8))(v7, v31);
  v26(v20, v27);
}

void sub_100112090()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise);
    v2 = Strong;
    sub_10009D4E0(v1);

    if (v1)
    {
      if (qword_100339000 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_1003450B0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
      }

      v1(0, 0);
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      sub_10002689C(v1);
      if (v7)
      {
        v8 = &v7[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
        v9 = *&v7[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise];
        v10 = *&v7[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_activationPromise + 8];
        *v8 = 0;
        *(v8 + 1) = 0;
        sub_10002689C(v9);
      }
    }
  }
}

uint64_t sub_100112228()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_1003452C8, &qword_10027C228);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v33 - v8;
  v46 = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state);
  v47 = v0;
  v50 = *(*(v46 + 16) + 32);
  v10 = sub_100035D04(&qword_1003452D0, &qword_10027C230);
  v44 = sub_10000E244(&qword_1003452D8, &qword_1003452D0, &qword_10027C230);
  v45 = v10;
  v11 = Publisher.eraseToAnyPublisher()();
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v12 = sub_100003078(v1, qword_1003450B0);
  v43 = v12;
  v13 = static os_log_type_t.info.getter();
  v50 = v11;
  v42 = *(v2 + 16);
  v37 = v1;
  v42(v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v1);
  v14 = *(v2 + 80);
  v15 = (v14 + 64) & ~v14;
  v40 = v15;
  v41 = v14;
  v34 = v11;
  v16 = v15 + v3;
  v38 = v15 + v3;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0x20444E554F46;
  *(v17 + 5) = 0xE600000000000000;
  *(v17 + 6) = 0;
  *(v17 + 7) = 0xE000000000000000;
  v39 = *(v2 + 32);
  v39(&v17[v15], v4, v1);
  v17[v16] = v13;
  v18 = sub_100035D04(&qword_1003452E0, &qword_10027C238);
  v36 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v19 = sub_10000E244(&qword_1003452E8, &qword_1003452E0, &qword_10027C238);
  v33[0] = v18;
  v33[1] = v19;
  Publisher.map<A>(_:)();

  v35 = sub_10000E244(&unk_1003452F0, &qword_1003452C8, &qword_10027C228);
  v20 = v48;
  v21 = v4;
  v22 = v9;
  v23 = Publisher.eraseToAnyPublisher()();

  v24 = *(v49 + 8);
  v49 += 8;
  v34 = v24;
  v24(v22, v20);
  v50 = v23;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v50 = *(*(v46 + 16) + 48);
  v25 = Publisher.eraseToAnyPublisher()();
  v26 = static os_log_type_t.info.getter();
  v50 = v25;
  v27 = v37;
  v42(v21, v43, v37);
  v28 = v38;
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = 0x2054534F4CLL;
  *(v29 + 5) = 0xE500000000000000;
  *(v29 + 6) = 0;
  *(v29 + 7) = 0xE000000000000000;
  v39(&v29[v40], v21, v27);
  v29[v28] = v26;
  Publisher.map<A>(_:)();

  v30 = v48;
  v31 = Publisher.eraseToAnyPublisher()();

  v34(v22, v30);
  v50 = v31;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void *sub_100112844()
{
  result = *(v0 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
  if (result)
  {
    v2 = v0;
    v3 = [result homes];
    sub_100003118(0, &qword_1003452A8, HMHome_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_100110DD4(v4);
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v32 = v4;
      v33 = v2;
      v8 = 0;
      v4 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v2 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v10 category];
        v13 = [v12 categoryType];

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v8;
        if (v2 == i)
        {
          v4 = v32;
          v2 = v33;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    if (qword_100339000 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003078(v20, qword_1003450B0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = _swiftEmptyArrayStorage[2];
      }

      *(v23 + 4) = v24;

      *(v23 + 12) = 2048;
      if (v4 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 14) = v25;

      _os_log_impl(&_mh_execute_header, v21, v22, "Updating accessories. Found %ld homepods in %ld homes.", v23, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v26 = *(*(v2 + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_state) + 16);
    v27 = v26 + qword_100346AF8;

    os_unfair_lock_lock(v27);
    v28 = *(v27 + 8);
    v29 = *(v26 + 16);

    v31 = sub_1001C2ADC(v30, _swiftEmptyArrayStorage);

    *(v27 + 8) = v31;

    os_unfair_lock_unlock(v27);

    sub_1001C33A0(v28, v31);
  }

  return result;
}

void *sub_100112CA4()
{
  v1 = v0;
  if (qword_100339000 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_1003450B0);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v1 = &unk_100345000;
    v28 = v3;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(&v3->isa + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
      if (v7)
      {
        v8 = [v7 homes];
        sub_100003118(0, &qword_1003452A8, HMHome_ptr);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v3 = v28;
      }

      else
      {
        v10 = 0;
      }

      *(v6 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v4, v5, "Updating homes (%ld)", v6, 0xCu);
    }

    else
    {

      v4 = v3;
    }

    v11 = *(&v3->isa + OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_manager);
    if (!v11)
    {
      return sub_100112844();
    }

    v12 = [v11 homes];
    sub_100003118(0, &qword_1003452A8, HMHome_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
LABEL_26:

        return sub_100112844();
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v29 = v13 & 0xFFFFFFFFFFFFFF8;
    while (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_22;
      }

LABEL_18:
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = v13;
        v22 = v16;
        v23 = v14;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v18;
        *v25 = v18;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v19, v20, "Adding self as delegate of %@", v24, 0xCu);
        sub_1000030B0(v25);
        v3 = v28;

        v14 = v23;
        v16 = v22;
        v13 = v21;
      }

      [v18 setDelegate:v3];
      ++v15;
      if (v1 == v14)
      {
        goto LABEL_26;
      }
    }

    if (v15 >= *(v29 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v15 + 32);
    v1 = (v15 + 1);
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }
}

uint64_t sub_100113134(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v26);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v5[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v5;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = v25;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = a1;
  v22 = a2;
  v23 = v5;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v12, v9);
  (*(v13 + 8))(v16, v26);
}

void *sub_100113578(void *a1, void *a2, uint64_t a3, const char *a4)
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_1003450B0);
  v8 = a1;
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = [v8 name];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = a4;
    v19 = v18;

    v20 = sub_100017494(v16, v19, &v23);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, v17, v12, 0x16u);
    sub_1000030B0(v13);

    sub_10000903C(v14);
  }

  return sub_100112844();
}

uint64_t sub_100113808()
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003450B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "homeManagerDidUpdateHomes(_:)", v3, 2u);
  }

  sub_100112CA4();
  return sub_100111AAC();
}

void *sub_1001139EC(void *a1, uint64_t a2, const char *a3)
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_1003450B0);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 0xCu);
    sub_1000030B0(v10);
  }

  return sub_100112CA4();
}

id sub_100113BCC()
{
  if (qword_100339000 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003450B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating HMHomeManager", v3, 2u);
  }

  v4 = objc_allocWithZone(HMHomeManager);

  return [v4 initWithOptions:64];
}

uint64_t sub_100113CCC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100114264;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100309030;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_100113F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[OBJC_IVAR____TtC17proximitycontrold12HomeKitProxy_dispatchQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = a1;
  v21 = v4;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v11, v8);
  (*(v12 + 8))(v15, v24);
}

uint64_t sub_1001142E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100114358@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = sub_1001CE164(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = v7;

  return v7;
}

uint64_t sub_100114484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 17))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 16) >> 2) & 0x1E | (*(a1 + 16) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001144D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

BOOL sub_1001146FC(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 0x80) != 0)
  {
    if ((a6 & 0x80) == 0)
    {
      return 0;
    }

    v7 = a6 & 0x7F;
    v8 = a3 & 0x7F;
    if (v8 <= 1)
    {
      if ((a3 & 0x7F) != 0)
      {
        return v7 == 1;
      }

      else
      {
        return (a6 & 0x7F) == 0;
      }
    }

    else if (v8 == 2)
    {
      return v7 == 2;
    }

    else
    {
      if (v8 == 3)
      {
        return v7 == 3;
      }

      if (a1 <= 1)
      {
        if (a1 | a2)
        {
          return v7 == 4 && a4 == 1 && !a5;
        }

        else
        {
          return v7 == 4 && !(a5 | a4);
        }
      }

      else if (a1 ^ 2 | a2)
      {
        if (a1 ^ 3 | a2)
        {
          return v7 == 4 && a4 == 4 && !a5;
        }

        else
        {
          return v7 == 4 && a4 == 3 && !a5;
        }
      }

      else
      {
        return v7 == 4 && a4 == 2 && !a5;
      }
    }
  }

  else
  {
    if (a6 < 0)
    {
      return 0;
    }

    if (a3 <= 1u)
    {
      if (!a3)
      {
        return !a6;
      }

      return a6 == 1;
    }

    else
    {
      if (a3 == 2)
      {
        return a6 == 2;
      }

      if (a3 == 3)
      {
        return a6 == 3;
      }

      if (a1 <= 1)
      {
        if (a1 | a2)
        {
          return a6 == 4 && a4 == 1 && !a5;
        }

        else
        {
          return a6 == 4 && !(a5 | a4);
        }
      }

      else if (a1 ^ 2 | a2)
      {
        if (!(a1 ^ 3 | a2))
        {
          return a6 == 4 && a4 == 3 && !a5;
        }

        return a6 == 4 && a4 == 4 && !a5;
      }

      else
      {
        return a6 == 4 && a4 == 2 && !a5;
      }
    }
  }
}

BOOL sub_100114930(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    if (a6 < 0)
    {
      v7 = a6 & 0x7F;
      v8 = a3 & 0x7F;
      if (v8 <= 1)
      {
        if ((a3 & 0x7F) != 0)
        {
          if (v7 == 1 && ((a4 ^ a1) & 1) == 0)
          {
            return 1;
          }
        }

        else if ((a6 & 0x7F) == 0 && *&a1 == *&a4)
        {
          return 1;
        }
      }

      else if (v8 == 2)
      {
        if (v7 == 2)
        {
          if (a2)
          {
            if (a5)
            {
              if (a1 == a4 && a2 == a5)
              {
                return 1;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                return 1;
              }
            }
          }

          else if (!a5)
          {
            return 1;
          }
        }
      }

      else if (v8 == 3)
      {
        if (v7 == 3 && ((a4 ^ a1) & 1) == 0)
        {
          return 1;
        }
      }

      else if (v7 == 4 && !(a5 | a4))
      {
        return 1;
      }
    }

    return 0;
  }

  return (a6 & 0x80) == 0 && a4 == a1;
}

uint64_t sub_100114A64(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100114B60()
{
  v1 = *(*v0 + 80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(*v0);
  v6 = v15 - v5;
  v15[0] = v4;
  swift_getMetatypeMetadata();
  v7 = String.init<A>(describing:)();
  v9 = v8;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  (*(*(*(*v0 + 80) - 8) + 16))(v6, &v0[*(*v0 + 96)]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v2 + 8))(v6, v1);
  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v15[0];
}

char *sub_100114D2C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_100114DDC(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100114FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v18[4] = v5;
  v18[5] = type metadata accessor for Publishers.Map();
  v18[6] = swift_getWitnessTable();
  v18[7] = swift_getWitnessTable();
  v6 = type metadata accessor for Publishers.SwitchToLatest();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  v15 = *(v3 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v14, &v1[v15], v7);
  v16 = *(v6 - 8);
  if ((*(v16 + 48))(v14, 1, v6) != 1)
  {
    return (*(v16 + 32))(a1, v14, v6);
  }

  (*(v8 + 8))(v14, v7);
  sub_100115308(v1);
  (*(v16 + 16))(v12, a1, v6);
  (*(v16 + 56))(v12, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(&v1[v15], v12, v7);
  return swift_endAccess();
}

uint64_t sub_100115308(void *a1)
{
  v2 = *(*a1 + 80);
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  type metadata accessor for AnyPublisher();
  swift_getWitnessTable();
  v3 = type metadata accessor for Publishers.Map();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v10 - v6;
  v8 = a1[2];
  v10[1] = a1[3];

  Publisher.map<A>(_:)();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100115518@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v25 = *a2;
  v4 = *(v25 + class metadata base offset for CurrentValueSubject);
  v5 = type metadata accessor for Just();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - v13;
  v15 = *(v4 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v24 - v20;
  (*(v10 + 16))(v14, v27, v9);
  if ((*(v15 + 48))(v14, 1, v4) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v29 = a2;
    swift_getWitnessTable();
    result = Publisher.eraseToAnyPublisher()();
    v23 = result;
  }

  else
  {
    (*(v15 + 32))(v21, v14, v4);
    (*(v15 + 16))(v19, v21, v4);
    Just.init(_:)();
    swift_getWitnessTable();
    v23 = Publisher.eraseToAnyPublisher()();
    (*(v26 + 8))(v8, v5);
    result = (*(v15 + 8))(v21, v4);
  }

  *v28 = v23;
  return result;
}

uint64_t sub_1001158B4()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v9[0] = v2;
  v9[1] = type metadata accessor for Publishers.Map();
  v9[2] = swift_getWitnessTable();
  v9[3] = swift_getWitnessTable();
  v3 = type metadata accessor for Publishers.SwitchToLatest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v9 - v6;
  sub_100114FE0(v9 - v6);
  swift_getWitnessTable();
  dispatch thunk of Publisher.receive<A>(subscriber:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100115AA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = type metadata accessor for Optional();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002725A0;
  v37 = v2;
  swift_getMetatypeMetadata();
  *(v16 + 32) = String.init<A>(describing:)();
  *(v16 + 40) = v17;
  v37 = 0;
  v38 = 0xE000000000000000;
  v18._countAndFlagsBits = 0x3D65756C6176;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19 = v1[2];
  CurrentValueSubject.value.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v20 = *(v9 + 8);
  v20(v15, v3);
  v21 = v38;
  *(v16 + 48) = v37;
  *(v16 + 56) = v21;
  v22 = v1[3];
  CurrentValueSubject.value.getter();
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v35 + 8))(v8, v36);
  }

  else
  {
    (*(v9 + 32))(v13, v8, v3);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v23._countAndFlagsBits = 0x656469727265766FLL;
    v23._object = 0xEE003D65756C6156;
    String.append(_:)(v23);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v24 = v37;
    v25 = v38;
    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      v16 = sub_100009088((v26 > 1), v27 + 1, 1, v16);
    }

    v20(v13, v3);
    *(v16 + 16) = v27 + 1;
    v28 = v16 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
  }

  v37 = v16;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v37 = 60;
  v38 = 0xE100000000000000;
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 62;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  return v37;
}

char *sub_100115E74()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(*v0 + 104);
  v5 = *(v1 + 80);
  type metadata accessor for AnyPublisher();
  type metadata accessor for Optional();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);

  v7 = *&v0[*(*v0 + 128) + 8];

  v8 = *(*v0 + 144);
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = *&v0[*(*v0 + 152)];

  return v0;
}

uint64_t sub_1001160CC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100116194(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100009088((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 6646882;
  *(v5 + 5) = 0xE300000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100009088((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 6453109;
    *(v8 + 5) = 0xE300000000000000;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100009088((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 1768319351;
  *(v11 + 5) = 0xE400000000000000;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100009088(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_100009088((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 3306594;
    *(v14 + 5) = 0xE300000000000000;
  }

LABEL_25:
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 91;
}

uint64_t sub_10011642C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100036740();

  *a1 = v2;
  return result;
}

NSString sub_10011646C()
{
  result = String._bridgeToObjectiveC()();
  qword_10038B178 = result;
  return result;
}

uint64_t sub_1001164B4(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  _s7AnyEdgeVMa();
  type metadata accessor for Array();
  result = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100116598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v3 > v4)
  {
    v4 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100116708(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}