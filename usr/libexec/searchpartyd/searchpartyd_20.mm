uint64_t sub_10022C5F4()
{
  v1 = *(*v0 + 520);
  v3 = *v0;

  return _swift_task_switch(sub_10022C6F0, 0, 0);
}

uint64_t sub_10022C6F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3[21];
  if ((v4 & 0xC000000000000001) == 0)
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v9 = v11 & *(v4 + 56);
    v3[68] = ~v12;
    v3[67] = v6;
    v3[66] = v4;
    v10 = 63 - v12;
    goto LABEL_9;
  }

  if (v4 < 0)
  {
    v5 = v3[21];
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_10022D868();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v8 = v3[10];
  v9 = v3[11];
  v3[68] = v7;
  v3[67] = v6;
  v3[66] = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_9:
    v13 = v9;
    v14 = v8;
    if (!v9)
    {
      v15 = v10 >> 6;
      v16 = v8;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v15)
        {
          goto LABEL_21;
        }

        v13 = *(v6 + 8 * v14);
        ++v16;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_14:
    v17 = (v13 - 1) & v13;
    v18 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    goto LABEL_15;
  }

  v21 = __CocoaSet.Iterator.next()();
  if (!v21)
  {
    goto LABEL_21;
  }

  v3[24] = v21;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  swift_dynamicCast();
  v18 = v3[23];
  v14 = v8;
  v17 = v9;
LABEL_15:
  v3[71] = v17;
  v3[70] = v14;
  v3[69] = v18;
  if (v18)
  {
    v19 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v20 = swift_task_alloc();
    v3[72] = v20;
    *v20 = v3;
    v20[1] = sub_10022CA30;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = (v3 + 22);
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_21:
  v22 = v3[68];
  v23 = v3[67];
  v24 = v3[66];
  v25 = v3[64];
  v26 = v3[54];
  v36 = v3[39];
  v27 = v3[34];
  v28 = v3[35];
  v29 = v3[33];

  sub_1000128F8();
  (*(v27 + 8))(v28, v29);
  sub_10022D994(v36);
  v30 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v31 = swift_task_alloc();
  v3[53] = v31;
  *v31 = v3;
  v31[1] = sub_10022B82C;
  v32 = v3[45];
  v33 = v3[42];
  v34 = v3[43];

  return AsyncStream.Iterator.next(isolation:)(v33, 0, 0, v34);
}

uint64_t sub_10022CA30()
{
  v1 = *(*v0 + 576);
  v3 = *v0;

  return _swift_task_switch(sub_10022CB2C, 0, 0);
}

uint64_t sub_10022CB2C()
{
  v1 = *(v0 + 552);
  if (*(v0 + 176))
  {
    [*(v0 + 176) lostAccessory:*(v0 + 512)];

    v2 = swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(v0 + 552);
  }

  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 528);
  if (v8 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14)
    {
      goto LABEL_17;
    }

    *(v0 + 192) = v14;
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v13 = *(v0 + 184);
    v10 = v7;
    v12 = v6;
  }

  else
  {
    v9 = *(v0 + 568);
    v10 = *(v0 + 560);
    if (!v6)
    {
      v11 = *(v0 + 560);
      while (1)
      {
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v10 >= ((*(v0 + 544) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v9 = *(*(v0 + 536) + 8 * v10);
        ++v11;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v2, v3, v4);
    }

LABEL_10:
    v12 = (v9 - 1) & v9;
    v13 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
  }

  *(v0 + 568) = v12;
  *(v0 + 560) = v10;
  *(v0 + 552) = v13;
  if (v13)
  {
    v15 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v16 = swift_task_alloc();
    *(v0 + 576) = v16;
    *v16 = v0;
    v16[1] = sub_10022CA30;
    v3 = SharingCircleWildAdvertisementKey.init(key:);
    v2 = v0 + 176;
    v4 = 0;

    return XPCSession.proxy(errorHandler:)(v2, v3, v4);
  }

LABEL_17:
  v17 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);
  v20 = *(v0 + 512);
  v21 = *(v0 + 432);
  v31 = *(v0 + 312);
  v22 = *(v0 + 272);
  v23 = *(v0 + 280);
  v24 = *(v0 + 264);

  sub_1000128F8();
  (*(v22 + 8))(v23, v24);
  sub_10022D994(v31);
  v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v26 = swift_task_alloc();
  *(v0 + 424) = v26;
  *v26 = v0;
  v26[1] = sub_10022B82C;
  v27 = *(v0 + 360);
  v28 = *(v0 + 336);
  v29 = *(v0 + 344);

  return AsyncStream.Iterator.next(isolation:)(v28, 0, 0, v29);
}

uint64_t sub_10022CE0C()
{
  v1 = *(*v0 + 592);
  v3 = *v0;

  return _swift_task_switch(sub_10022CF08, 0, 0);
}

uint64_t sub_10022CF08(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3[17];
  if ((v4 & 0xC000000000000001) == 0)
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v9 = v11 & *(v4 + 56);
    v3[77] = ~v12;
    v3[76] = v6;
    v3[75] = v4;
    v10 = 63 - v12;
    goto LABEL_9;
  }

  if (v4 < 0)
  {
    v5 = v3[17];
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_10022D868();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v3[77] = v7;
  v3[76] = v6;
  v3[75] = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_9:
    v13 = v9;
    v14 = v8;
    if (!v9)
    {
      v15 = v10 >> 6;
      v16 = v8;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v15)
        {
          goto LABEL_21;
        }

        v13 = *(v6 + 8 * v14);
        ++v16;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_14:
    v17 = (v13 - 1) & v13;
    v18 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    goto LABEL_15;
  }

  v21 = __CocoaSet.Iterator.next()();
  if (!v21)
  {
    goto LABEL_21;
  }

  v3[20] = v21;
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  swift_dynamicCast();
  v18 = v3[19];
  v14 = v8;
  v17 = v9;
LABEL_15:
  v3[80] = v17;
  v3[79] = v14;
  v3[78] = v18;
  if (v18)
  {
    v19 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v20 = swift_task_alloc();
    v3[81] = v20;
    *v20 = v3;
    v20[1] = sub_10022D1F8;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = (v3 + 18);
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_21:
  v22 = v3[77];
  v23 = v3[76];
  v24 = v3[75];
  v25 = v3[73];
  v26 = v3[54];
  sub_1000128F8();

  v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  v3[53] = v28;
  *v28 = v3;
  v28[1] = sub_10022B82C;
  v29 = v3[45];
  v30 = v3[42];
  v31 = v3[43];

  return AsyncStream.Iterator.next(isolation:)(v30, 0, 0, v31);
}

uint64_t sub_10022D1F8()
{
  v1 = *(*v0 + 648);
  v3 = *v0;

  return _swift_task_switch(sub_10022D2F4, 0, 0);
}

uint64_t sub_10022D2F4()
{
  v1 = v0[18];
  v2 = v0[78];
  if (v1)
  {
    v3 = v0[73];
    v4 = _convertErrorToNSError(_:)();
    [v1 accessoryDiscoveryError:v4];

    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v8 = v0[78];
  }

  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[75];
  if (v11 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
      goto LABEL_17;
    }

    v0[20] = v17;
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    swift_dynamicCast();
    v16 = v0[19];
    v13 = v10;
    v15 = v9;
  }

  else
  {
    v12 = v0[80];
    v13 = v0[79];
    if (!v9)
    {
      v14 = v0[79];
      while (1)
      {
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v13 >= ((v0[77] + 64) >> 6))
        {
          goto LABEL_17;
        }

        v12 = *(v0[76] + 8 * v13);
        ++v14;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v5, v6, v7);
    }

LABEL_10:
    v15 = (v12 - 1) & v12;
    v16 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  }

  v0[80] = v15;
  v0[79] = v13;
  v0[78] = v16;
  if (v16)
  {
    v18 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v19 = swift_task_alloc();
    v0[81] = v19;
    *v19 = v0;
    v19[1] = sub_10022D1F8;
    v6 = SharingCircleWildAdvertisementKey.init(key:);
    v5 = (v0 + 18);
    v7 = 0;

    return XPCSession.proxy(errorHandler:)(v5, v6, v7);
  }

LABEL_17:
  v20 = v0[77];
  v21 = v0[76];
  v22 = v0[75];
  v23 = v0[73];
  v24 = v0[54];
  sub_1000128F8();

  v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v26 = swift_task_alloc();
  v0[53] = v26;
  *v26 = v0;
  v26[1] = sub_10022B82C;
  v27 = v0[45];
  v28 = v0[42];
  v29 = v0[43];

  return AsyncStream.Iterator.next(isolation:)(v28, 0, 0, v29);
}

uint64_t type metadata accessor for LocalFindableAccessoryDiscoverySession()
{
  result = qword_101699F58;
  if (!qword_101699F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022D5E0()
{
  if (qword_1016944D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177A5D8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TRACE: stopScanning()", v2, 2u);
  }
}

uint64_t sub_10022D6C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_10022AF78(a1, v4, v5, v7);
}

uint64_t sub_10022D788(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022D7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10022D868()
{
  result = qword_10169A0B0;
  if (!qword_10169A0B0)
  {
    sub_1000BC580(&unk_1016A6020, &unk_101393420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A0B0);
  }

  return result;
}

uint64_t sub_10022D8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022D930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022D994(uint64_t a1)
{
  v2 = type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10022DA4C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350);
    if (v1 <= 0x3F)
    {
      sub_10022DC18();
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169A138);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_10169A140);
          if (v4 <= 0x3F)
          {
            sub_1002359B8(319, &qword_10169A148);
            if (v5 <= 0x3F)
            {
              sub_1002359B8(319, &qword_10169A150);
              if (v6 <= 0x3F)
              {
                sub_1002359B8(319, &qword_10169A158);
                if (v7 <= 0x3F)
                {
                  sub_1002359B8(319, &unk_10169A160);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_10022DC18()
{
  if (!qword_10169A130)
  {
    type metadata accessor for AirTagVersionNumber();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169A130);
    }
  }
}

unsigned __int8 *sub_10022DC80@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10022DD48()
{
  v1 = *v0;
  v2 = 1819047270;
  v3 = 7827308;
  v4 = 0x6C61636974697263;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D756964656DLL;
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

unint64_t sub_10022DDE0()
{
  result = qword_10169A1C0;
  if (!qword_10169A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A1C0);
  }

  return result;
}

unint64_t sub_10022DE34(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x44746375646F7270;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 4:
      result = 0x6465767265736572;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x657261776D726966;
      break;
    case 8:
      result = 0x6C6F636F746F7270;
      break;
    case 9:
      result = 0x6556794D646E6966;
      break;
    case 10:
      result = 0x496B726F7774656ELL;
      break;
    case 11:
      result = 0x5479726574746162;
      break;
    case 12:
      result = 0x4C79726574746162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10022DFE4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169A3C0, &qword_101393B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100235B54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v39) = 0;
  type metadata accessor for UUID();
  sub_100231364(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for RawAccessoryMetadata(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v39 = *v12;
    v40 = v13;
    v38 = 1;
    sub_10002E98C(v39, v13);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v14 = (v3 + v11[6]);
    v15 = v14[1];
    v39 = *v14;
    v40 = v15;
    v38 = 2;
    sub_10002E98C(v39, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v39 = *v16;
    v40 = v17;
    v38 = 3;
    sub_10002E98C(v39, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v18 = (v3 + v11[8]);
    v19 = v18[1];
    v39 = *v18;
    v40 = v19;
    v38 = 4;
    sub_10002E98C(v39, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v20 = (v3 + v11[9]);
    v21 = v20[1];
    v39 = *v20;
    v40 = v21;
    v38 = 5;
    sub_10002E98C(v39, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v22 = (v3 + v11[10]);
    v23 = v22[1];
    v39 = *v22;
    v40 = v23;
    v38 = 6;
    sub_10002E98C(v39, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v24 = (v3 + v11[11]);
    v25 = v24[1];
    v39 = *v24;
    v40 = v25;
    v38 = 7;
    sub_10002E98C(v39, v25);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v26 = (v3 + v11[12]);
    v27 = v26[1];
    v39 = *v26;
    v40 = v27;
    v38 = 8;
    sub_10002E98C(v39, v27);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v28 = (v3 + v11[13]);
    v29 = v28[1];
    v39 = *v28;
    v40 = v29;
    v38 = 9;
    sub_10002E98C(v39, v29);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v31 = (v3 + v11[14]);
    v32 = v31[1];
    v39 = *v31;
    v40 = v32;
    v38 = 10;
    sub_10002E98C(v39, v32);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v33 = (v3 + v11[15]);
    v34 = v33[1];
    v39 = *v33;
    v40 = v34;
    v38 = 11;
    sub_10002E98C(v39, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
    v35 = (v3 + v11[16]);
    v36 = v35[1];
    v39 = *v35;
    v40 = v36;
    v38 = 12;
    sub_10002E98C(v39, v36);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v39, v40);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10022E540()
{
  type metadata accessor for UUID();
  sub_100231364(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for RawAccessoryMetadata(0);
  v2 = (v0 + v1[5]);
  if (v2[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v2;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v4 = (v0 + v1[6]);
  if (v4[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v4;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v6 = (v0 + v1[7]);
  if (v6[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = *v6;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v8 = (v0 + v1[8]);
  if (v8[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *v8;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v10 = (v0 + v1[9]);
  if (v10[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v11 = *v10;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v12 = (v0 + v1[10]);
  if (v12[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v14 = (v0 + v1[11]);
  if (v14[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v16 = (v0 + v1[12]);
  if (v16[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = *v16;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v18 = (v0 + v1[13]);
  if (v18[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v18;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v20 = (v0 + v1[14]);
  if (v20[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = *v20;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v22 = (v0 + v1[15]);
  if (v22[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = *v22;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v24 = (v0 + v1[16]);
  if (v24[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = *v24;
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

uint64_t sub_10022E94C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v28 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169A3B0, &qword_101393B18);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = type metadata accessor for RawAccessoryMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100235B54();
  v31 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v27;
  v24 = v11;
  v25 = v14;
  LOBYTE(v32) = 0;
  sub_100231364(&qword_101698300, &type metadata accessor for UUID);
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v25;
  v19 = *(v26 + 32);
  v28 = v4;
  v19(v25, v17);
  v33 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v24;
  *&v18[v24[5]] = v32;
  v33 = 2;
  v23[1] = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23[0] = a1;
  *&v18[v20[6]] = v32;
  v33 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[7]] = v32;
  v33 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[8]] = v32;
  v33 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[9]] = v32;
  v33 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v18[v20[10]] = v32;
  v33 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[11]] = v32;
  v33 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[12]] = v32;
  v33 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[13]] = v32;
  v33 = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[14]] = v32;
  v33 = 11;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v24[15]] = v32;
  v33 = 12;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 8))(v31, v30);
  v21 = v25;
  *&v25[v24[16]] = v32;
  sub_100235BA8(v21, v16, type metadata accessor for RawAccessoryMetadata);
  sub_100007BAC(a1);
  return sub_10023533C(v21, type metadata accessor for RawAccessoryMetadata);
}

unsigned __int8 *sub_10022F470@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10022F538()
{
  v1 = 0x64657265776F70;
  v2 = 0x6167726168636572;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x61686365526E6F6ELL;
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

uint64_t sub_10022F5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100234744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10022F5F8(uint64_t a1)
{
  v2 = sub_100235B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022F634(uint64_t a1)
{
  v2 = sub_100235B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10022F6D8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x44746375646F7270;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 4:
      result = 0x657261776D726966;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6C6F636F746F7270;
      break;
    case 7:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x5479726574746162;
      break;
    case 11:
      result = 0x5379726574746162;
      break;
    case 12:
      result = 0x6E6F6973726576;
      break;
    case 13:
      result = 0x6556794D646E6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10022F89C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169A260, &qword_101393830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100235080();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v36) = 0;
  type metadata accessor for UUID();
  sub_100231364(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryMetadata(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    *&v36 = *v12;
    *(&v36 + 1) = v13;
    v38 = 1;
    sub_100017D5C(v36, v13);
    sub_10023539C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v36, *(&v36 + 1));
    v14 = (v3 + v11[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v36) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v3 + v11[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v36) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LODWORD(v36) = *(v3 + v11[8]);
    v38 = 4;
    sub_1002353F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v11[9];
    LOBYTE(v36) = 5;
    type metadata accessor for AirTagVersionNumber();
    sub_100231364(&qword_10169A278, &type metadata accessor for AirTagVersionNumber);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = (v3 + v11[10]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 4);
    LODWORD(v36) = v22;
    BYTE4(v36) = v21;
    v38 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = (v3 + v11[11]);
    v24 = *(v23 + 16);
    v36 = *v23;
    v37 = v24;
    v38 = 7;
    sub_100235444();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = (v3 + v11[12]);
    v26 = *v25;
    v27 = *(v25 + 8);
    LOBYTE(v36) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = (v3 + v11[13]);
    v29 = *v28;
    LOBYTE(v28) = *(v28 + 4);
    LODWORD(v36) = v29;
    BYTE4(v36) = v28;
    v38 = 9;
    sub_100235498();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v36) = *(v3 + v11[14]);
    v38 = 10;
    sub_1002354EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v36) = *(v3 + v11[15]);
    v38 = 11;
    sub_100235540();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = (v3 + v11[16]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v36) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = (v3 + v11[17]);
    v34 = *v33;
    LOBYTE(v33) = *(v33 + 4);
    LODWORD(v36) = v34;
    BYTE4(v36) = v33;
    v38 = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10022FDD4()
{
  v1 = type metadata accessor for AirTagVersionNumber();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v41 - v8;
  type metadata accessor for UUID();
  sub_100231364(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v10 = type metadata accessor for AccessoryMetadata(0);
  v11 = (v0 + v10[5]);
  v12 = *v11;
  v13 = v11[1];
  Data.hash(into:)();
  v14 = (v0 + v10[6]);
  if (v14[1])
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = (v0 + v10[7]);
  if (v16[1])
  {
    v17 = *v16;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v18 = v0 + v10[8];
  v19 = *(v18 + 2);
  v20 = *(v18 + 3);
  Hasher._combine(_:)(*v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  sub_100235594(v0 + v10[9], v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    sub_100231364(&qword_10169A2A0, &type metadata accessor for AirTagVersionNumber);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  v21 = (v0 + v10[10]);
  if (v21[1])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v23 = *v21;
    v22 = HIBYTE(*v21);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v23);
    Hasher._combine(_:)(BYTE2(v23));
  }

  Hasher._combine(_:)(v22);
  v24 = v0 + v10[11];
  if (*(v24 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v26 = *(v24 + 8);
    v25 = *(v24 + 12);
    v28 = *v24;
    v27 = *(v24 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v28);
    Hasher._combine(_:)(v27);
    Hasher._combine(_:)(v26);
    Hasher._combine(_:)(v25);
  }

  v29 = v0 + v10[12];
  if (*(v29 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v30 = *v29;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v30);
  }

  v31 = v0 + v10[13];
  if (*(v31 + 4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v32 = *v31;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v32);
  }

  v33 = *(v0 + v10[14]);
  if (v33 == 4)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v33);
  v34 = *(v0 + v10[15]);
  if (v34 == 5)
  {
    LOBYTE(v34) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v34);
  v35 = (v0 + v10[16]);
  v36 = *v35;
  v37 = v35[1];
  String.hash(into:)();
  v38 = (v0 + v10[17]);
  if (v38[1])
  {
    LOBYTE(v39) = 0;
  }

  else
  {
    v40 = *v38;
    v39 = HIBYTE(*v38);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v40);
    Hasher._combine(_:)(BYTE2(v40));
  }

  Hasher._combine(_:)(v39);
}

uint64_t sub_1002302AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v51 - v5;
  v7 = type metadata accessor for UUID();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v55 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_10169A218, &qword_101393828);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10);
  v13 = v51 - v12;
  v14 = type metadata accessor for AccessoryMetadata(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 36);
  v20 = type metadata accessor for AirTagVersionNumber();
  v21 = *(*(v20 - 8) + 56);
  v60 = v19;
  v61 = v18;
  v21(&v18[v19], 1, 1, v20);
  v23 = a1[3];
  v22 = a1[4];
  v59 = a1;
  sub_1000035D0(a1, v23);
  sub_100235080();
  v24 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    v26 = v61;
    sub_100007BAC(v59);
    sub_10000B3A8(&v26[v60], &qword_10169A0C0, &unk_10139DBB0);
  }

  else
  {
    v52 = v6;
    v58 = v14;
    LOBYTE(v62) = 0;
    sub_100231364(&qword_101698300, &type metadata accessor for UUID);
    v25 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v61;
    (*(v54 + 32))(v61, v25, v7);
    v64 = 1;
    sub_1002350D4();
    v55 = v13;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v51[3] = v7;
    v28 = v58;
    *&v27[v58[5]] = v62;
    LOBYTE(v62) = 2;
    v51[2] = 0;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = &v27[v28[6]];
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v62) = 3;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = &v27[v28[7]];
    *v33 = v32;
    v33[1] = v34;
    v64 = 4;
    v51[1] = sub_100235128();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v27[v28[8]] = v62;
    LOBYTE(v62) = 5;
    sub_100231364(&qword_10169A238, &type metadata accessor for AirTagVersionNumber);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10023517C(v52, &v27[v60]);
    v64 = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = BYTE4(v62);
    v36 = &v27[v28[10]];
    *v36 = v62;
    v36[4] = v35;
    v64 = 7;
    sub_1002351EC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = &v27[v28[11]];
    v38 = v63;
    *v37 = v62;
    v37[16] = v38;
    LOBYTE(v62) = 8;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = &v27[v28[12]];
    *v40 = v39;
    v40[8] = v41 & 1;
    v64 = 9;
    sub_100235240();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = BYTE4(v62);
    v43 = &v61[v58[13]];
    *v43 = v62;
    v43[4] = v42;
    v64 = 10;
    sub_100235294();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61[v58[14]] = v62;
    v64 = 11;
    sub_1002352E8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61[v58[15]] = v62;
    LOBYTE(v62) = 12;
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = &v61[v58[16]];
    *v45 = v44;
    v45[1] = v46;
    v64 = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v56 + 8))(v55, v57);
    v47 = BYTE4(v62);
    v48 = v61;
    v49 = &v61[v58[17]];
    *v49 = v62;
    v49[4] = v47;
    sub_100235BA8(v48, v53, type metadata accessor for AccessoryMetadata);
    sub_100007BAC(v59);
    return sub_10023533C(v48, type metadata accessor for AccessoryMetadata);
  }
}

uint64_t sub_100230BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100234BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100230C2C(uint64_t a1)
{
  v2 = sub_100235080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100230C68(uint64_t a1)
{
  v2 = sub_100235080();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100230CEC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100230D50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_100230DE0()
{
  result = qword_10169A1D0;
  if (!qword_10169A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A1D0);
  }

  return result;
}

uint64_t sub_100230E34()
{
  _StringGuts.grow(_:)(214);
  v1._countAndFlagsBits = 0x5B203A64697BLL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100231364(&qword_101696930, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x800000010134D520;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);
  v4 = type metadata accessor for AccessoryMetadata(0);
  v30 = *(v0 + v4[5]);
  sub_1002313AC();
  v5._countAndFlagsBits = RawRepresentable<>.hexString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x800000010134D540;
  String.append(_:)(v6);
  v31 = *(v0 + v4[6]);
  sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x4E6C65646F6D205DLL;
  v7._object = 0xEE005B203A656D61;
  String.append(_:)(v7);
  v32 = *(v0 + v4[7]);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x800000010134D560;
  String.append(_:)(v8);
  v9 = *(v0 + v4[8]);
  v10._countAndFlagsBits = sub_10098E010();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000014;
  v11._object = 0x800000010134D580;
  String.append(_:)(v11);
  v12 = v0 + v4[10];
  LODWORD(v32) = *v12;
  BYTE4(v32) = *(v12 + 4);
  sub_1000BC4D4(&qword_10169A1D8, &qword_101393800);
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 0xD000000000000016;
  v13._object = 0x800000010134D5A0;
  String.append(_:)(v13);
  v14 = v0 + v4[12];
  *&v32 = *v14;
  BYTE8(v32) = *(v14 + 8);
  sub_1000BC4D4(&qword_10169A1E0, &qword_101393808);
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  v15._object = 0x800000010134D5C0;
  String.append(_:)(v15);
  v16 = v0 + v4[13];
  LODWORD(v32) = *v16;
  BYTE4(v32) = *(v16 + 4);
  sub_1000BC4D4(&qword_10169A1E8, &qword_101393810);
  _print_unlocked<A, B>(_:_:)();
  v17._object = 0x800000010134D5E0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  LOBYTE(v32) = *(v0 + v4[14]);
  sub_1000BC4D4(&qword_10169A1F0, &qword_101393818);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x800000010134D600;
  String.append(_:)(v18);
  LOBYTE(v32) = *(v0 + v4[15]);
  sub_1000BC4D4(&qword_10169A1F8, &qword_101393820);
  _print_unlocked<A, B>(_:_:)();
  v19._countAndFlagsBits = 0x6F6973726576205DLL;
  v19._object = 0xEC0000005B203A6ELL;
  String.append(_:)(v19);
  String.append(_:)(*(v0 + v4[16]));
  v20._countAndFlagsBits = 32093;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  result = 0;
  v22 = (v0 + v4[11]);
  if ((v22[2] & 1) == 0)
  {
    v24 = *v22;
    v23 = v22[1];
    _StringGuts.grow(_:)(42);

    sub_100233814();
    v29._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    v29._object = v25;
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27._countAndFlagsBits = sub_100B67D6C();
    String.append(_:)(v27);

    String.append(_:)(v29);

    v28._countAndFlagsBits = 0xD000000000000028;
    v28._object = 0x800000010134D620;
    String.append(_:)(v28);

    return 0;
  }

  return result;
}

uint64_t sub_100231364(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002313AC()
{
  result = qword_1016C7E50;
  if (!qword_1016C7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7E50);
  }

  return result;
}

id sub_100231400()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SPDiscoveredAccessoryMetadata) init];
  v3 = type metadata accessor for AccessoryMetadata(0);
  v4 = (v0 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v2 setProductData:isa];

  v8 = (v1 + v3[6]);
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  v11 = String._bridgeToObjectiveC()();

  [v2 setManufacturerName:v11];

  v12 = (v1 + v3[7]);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  v15 = String._bridgeToObjectiveC()();

  [v2 setModelName:v15];

  v16 = (v1 + v3[12]);
  if (*(v16 + 8))
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16;
  }

  [v2 setAccessoryCategory:v17];
  v18 = (v1 + v3[13]);
  v19 = *v18;
  v20 = *(v18 + 4);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  [v2 setAccessoryCapabilities:v21];
  v22 = *(v1 + v3[8]);
  sub_10098E010();
  v23 = String._bridgeToObjectiveC()();

  [v2 setFirmwareVersion:v23];

  v24 = (v1 + v3[11]);
  if ((v24[2] & 1) == 0)
  {
    v36 = *v24;
    v37 = v24[1];
    sub_100233814();
    v38 = CustomStringConvertible.typeDescription.getter();
    v39 = v25;
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27._countAndFlagsBits = sub_100B67D6C();
    String.append(_:)(v27);

    v28 = String._bridgeToObjectiveC()();

    [v2 setFirmwareVersion:{v28, v36, v37, v38, v39}];
  }

  v29 = (v1 + v3[10]);
  if ((v29[1] & 1) == 0)
  {
    v30 = *v29;
    sub_10098E010();
  }

  v31 = String._bridgeToObjectiveC()();

  [v2 setProtocolVersion:v31];

  if (*(v1 + v3[14]) == 4)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v1 + v3[14]);
  }

  [v2 setBatteryType:v32];
  if (*(v1 + v3[15]) == 5)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v1 + v3[15]);
  }

  [v2 setBatteryState:v33];
  if (v20)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_1010D73CC(v19);
  }

  [v2 setCapabilities:v34];
  return v2;
}

uint64_t sub_100231730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 36);
  v11 = type metadata accessor for AirTagVersionNumber();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = &v9[v4[16]];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = [a1 discoveredMetadata];
  v14 = [v13 productData];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_100314594(v15, v17);
  if (v19 >> 60 == 15)
  {

LABEL_8:
    sub_10000B3A8(&v9[v10], &qword_10169A0C0, &unk_10139DBB0);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v20 = v18;
  v21 = v19;
  v70 = v10;
  v71 = a2;
  v22 = [v13 protocolVersion];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = sub_10098E9DC(v23, v25);
  if ((v26 & 0x100000000) != 0)
  {

    sub_100006654(v20, v21);
    goto LABEL_7;
  }

  v27 = v26;
  v69 = &v9[v4[11]];
  v28 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = &v9[v4[5]];
  *v29 = v20;
  v29[1] = v21;
  v68 = v29;
  v30 = [v13 manufacturerName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = &v9[v4[6]];
  *v34 = v31;
  v34[1] = v33;
  v67[1] = v33;
  v35 = [v13 modelName];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = &v9[v4[7]];
  *v39 = v36;
  v39[1] = v38;
  v40 = [v13 firmwareVersion];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = sub_10098E9DC(v41, v43);
  if ((v44 & 0x100000000) != 0)
  {
    *&v9[v4[8]] = 0;
    v48 = [v13 firmwareVersion];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = sub_100B68688(v49, v51);
    if ((v54 & 1) == 0)
    {
      v46 = v69;
      *v69 = v52;
      v46[1] = v53;
      goto LABEL_13;
    }

    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 8))(v9, v55);
    sub_100016590(*v68, v68[1]);

LABEL_7:
    v10 = v70;
    a2 = v71;
    goto LABEL_8;
  }

  v45 = &v9[v4[8]];
  *v45 = v44;
  v45[2] = BYTE2(v44);
  v45[3] = BYTE3(v44);
  v46 = v69;
  *v69 = 0;
  v46[1] = 0;
LABEL_13:
  *(v46 + 16) = 0;
  v56 = v71;
  v57 = &v9[v4[10]];
  *v57 = v27;
  v57[4] = 0;
  v58 = [v13 accessoryCategory];
  v59 = &v9[v4[12]];
  *v59 = v58;
  v59[8] = 0;
  v60 = [v13 accessoryCapabilities];
  v61 = &v9[v4[13]];
  *v61 = v60;
  v61[4] = 0;
  v62 = [v13 batteryType];
  if (v62 >= 3)
  {
    v63 = 3;
  }

  else
  {
    v63 = v62;
  }

  v9[v4[14]] = v63;
  v64 = [v13 batteryState];

  if (v64 >= 4)
  {
    v65 = 4;
  }

  else
  {
    v65 = v64;
  }

  v9[v4[15]] = v65;
  v66 = &v9[v4[17]];
  *v66 = 0;
  v66[4] = 1;
  sub_100235BA8(v9, v56, type metadata accessor for AccessoryMetadata);
  (*(v5 + 56))(v56, 0, 1, v4);
  return sub_10023533C(v9, type metadata accessor for AccessoryMetadata);
}

uint64_t sub_100231C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v28 = HIWORD(a4);
  v12 = HIBYTE(a4);
  v13 = type metadata accessor for AccessoryMetadata(0);
  v14 = v13[9];
  v15 = type metadata accessor for AirTagVersionNumber();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = a6 + v13[11];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = (a6 + v13[16]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = type metadata accessor for UUID();
  result = (*(*(v18 - 8) + 32))(a6, a1, v18);
  v20 = (a6 + v13[5]);
  *v20 = a2;
  v20[1] = a3;
  v21 = a6 + v13[8];
  *v21 = v7;
  *(v21 + 2) = v28;
  *(v21 + 3) = v12;
  v22 = (a6 + v13[7]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a6 + v13[6]);
  *v23 = 0;
  v23[1] = 0;
  v24 = a6 + v13[10];
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = a6 + v13[12];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = a6 + v13[13];
  *v26 = a5;
  *(v26 + 4) = BYTE4(a5) & 1;
  *(a6 + v13[14]) = 4;
  *(a6 + v13[15]) = 5;
  v27 = a6 + v13[17];
  *v27 = 0;
  *(v27 + 4) = 1;
  return result;
}

uint64_t sub_100231DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryMetadata(0);
  v6 = v5[9];
  v7 = type metadata accessor for AirTagVersionNumber();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = (a2 + v5[16]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = type metadata accessor for RawAccessoryMetadata(0);
  v10 = a1 + *(v9 + 20);
  v11 = *(v10 + 8);
  if (v11 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v12 = v9;
  v13 = *v10;
  sub_100017D5C(*v10, *(v10 + 8));
  sub_100017D5C(v13, v11);
  v14 = sub_100314594(v13, v11);
  if (v15 >> 60 == 15)
  {
    sub_100006654(v13, v11);
LABEL_4:
    sub_100233888();
    swift_allocError();
    *v16 = xmmword_101393440;
    *(v16 + 16) = 1;
    swift_willThrow();
LABEL_5:
    sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
    return sub_10000B3A8(a2 + v6, &qword_10169A0C0, &unk_10139DBB0);
  }

  v35 = v14;
  v36 = v15;
  v18 = a1 + *(v12 + 44);
  v19 = *(v18 + 8);
  if (v19 >> 60 == 15)
  {
    sub_100233888();
    swift_allocError();
    *v20 = xmmword_101393430;
    *(v20 + 16) = 1;
    swift_willThrow();
    sub_100006654(v35, v36);
    sub_100006654(v13, v11);
    goto LABEL_5;
  }

  v21 = *v18;
  sub_10002E98C(*v18, *(v18 + 8));
  sub_100B68B98(v21, v19);
  if (v2)
  {
    sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
    sub_100006654(v35, v36);
    sub_100006654(v13, v11);
    return sub_10000B3A8(a2 + v6, &qword_10169A0C0, &unk_10139DBB0);
  }

  v24 = v22;
  v25 = v23;
  sub_100006654(v13, v11);
  v26 = a2 + v5[11];
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 16))(a2, a1, v27);
  result = sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
  v28 = (a2 + v5[5]);
  *v28 = v35;
  v28[1] = v36;
  *(a2 + v5[8]) = 0;
  *v26 = v24;
  *(v26 + 8) = v25;
  *(v26 + 16) = 0;
  v29 = (a2 + v5[7]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (a2 + v5[6]);
  *v30 = 0;
  v30[1] = 0;
  v31 = a2 + v5[10];
  *v31 = 0;
  *(v31 + 4) = 1;
  v32 = a2 + v5[12];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = a2 + v5[13];
  *v33 = 0;
  *(v33 + 4) = 1;
  *(a2 + v5[14]) = 4;
  *(a2 + v5[15]) = 5;
  v34 = a2 + v5[17];
  *v34 = 0;
  *(v34 + 4) = 1;
  return result;
}

uint64_t sub_100232154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for AccessoryMetadata(0);
  v7 = v6[9];
  v8 = type metadata accessor for AirTagVersionNumber();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + v6[11];
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = (a2 + v6[16]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = type metadata accessor for RawAccessoryMetadata(0);
  v12 = (a1 + *(v11 + 20));
  v13 = v12[1];
  if (v13 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v14 = v11;
  v108 = a1;
  v15 = *v12;
  sub_100017D5C(*v12, v13);
  sub_100017D5C(v15, v13);
  v16 = sub_100314594(v15, v13);
  if (v17 >> 60 == 15)
  {
    sub_100006654(v15, v13);
    a1 = v108;
LABEL_4:
    sub_100233888();
    swift_allocError();
    *v18 = xmmword_101393440;
    *(v18 + 16) = 1;
    swift_willThrow();
LABEL_24:
    sub_10023533C(a1, type metadata accessor for RawAccessoryMetadata);
    return sub_10000B3A8(a2 + v7, &qword_10169A0C0, &unk_10139DBB0);
  }

  v103 = v17;
  v104 = v7;
  v102 = v16;
  v19 = (v108 + v14[11]);
  v20 = v19[1];
  if (v20 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v21 = *v19;
  sub_100017D5C(*v19, v19[1]);
  v22 = sub_10098E844(v21, v20);
  if ((v22 & 0x100000000) != 0)
  {
    sub_100006654(v21, v20);
LABEL_12:
    sub_100233888();
    swift_allocError();
    *v30 = xmmword_101393430;
    *(v30 + 16) = 1;
    swift_willThrow();
    sub_100006654(v102, v103);
    v31 = v15;
LABEL_13:
    sub_100006654(v31, v13);
    a1 = v108;
    v7 = v104;
    goto LABEL_24;
  }

  v100 = v20;
  v101 = v21;
  v23 = (v108 + v14[7]);
  v24 = v23[1];
  v7 = v104;
  if (v24 >> 60 == 15)
  {
LABEL_15:
    sub_100233888();
    swift_allocError();
    *v32 = xmmword_101393480;
    *(v32 + 16) = 1;
    swift_willThrow();
LABEL_16:
    sub_100006654(v102, v103);
    sub_100006654(v101, v100);
    v33 = v15;
LABEL_23:
    sub_100006654(v33, v13);
    a1 = v108;
    goto LABEL_24;
  }

  v95 = v22;
  v98 = v23[1];
  v99 = v15;
  v25 = *v23;
  sub_100017D5C(*v23, v24);
  sub_1000E0A3C();
  v26 = DataProtocol.nullTerminatedUTF8String.getter();
  if (!v27)
  {
    sub_100006654(v25, v98);
    goto LABEL_15;
  }

  v96 = v25;
  v28 = (v108 + v14[6]);
  v29 = v28[1];
  if (v29 >> 60 == 15)
  {

LABEL_21:
    sub_100233888();
    swift_allocError();
    *v38 = 0xD000000000000010;
    *(v38 + 8) = 0x800000010134D650;
    *(v38 + 16) = 1;
    swift_willThrow();
    sub_100006654(v96, v98);
    v39 = v102;
    v40 = v103;
LABEL_22:
    sub_100006654(v39, v40);
    sub_100006654(v101, v100);
    v33 = v99;
    goto LABEL_23;
  }

  v92 = v26;
  v93 = v27;
  v106 = *v28;
  v107 = v28[1];
  v94 = *v28;
  sub_100017D5C(*v28, v29);
  v34 = DataProtocol.nullTerminatedUTF8String.getter();
  if (!v35)
  {

    sub_100006654(v94, v29);
    goto LABEL_21;
  }

  v97 = v29;
  v36 = (v108 + v14[13]);
  v37 = v36[1];
  if (v37 >> 60 == 15)
  {

LABEL_32:
    v15 = v99;
    sub_100233888();
    swift_allocError();
    *v50 = xmmword_101393470;
    *(v50 + 16) = 1;
    swift_willThrow();
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    goto LABEL_16;
  }

  v90 = v34;
  v91 = v35;
  v42 = *v36;
  sub_100017D5C(*v36, v37);
  v43 = sub_10098E844(v42, v37);
  if ((v43 & 0x100000000) != 0)
  {

    sub_100006654(v42, v37);
    goto LABEL_32;
  }

  v88 = v42;
  v89 = v37;
  v44 = (v108 + v14[9]);
  v45 = v44[1];
  if (v45 >> 60 == 15)
  {
    goto LABEL_29;
  }

  v86 = v43;
  v46 = *v44;
  sub_100017D5C(*v44, v45);
  sub_100017D5C(v46, v45);
  static Endianness.current.getter();
  sub_100235658();
  v87 = v45;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v107 == 1)
  {
    sub_100006654(v46, v45);
LABEL_29:

    sub_100233888();
    swift_allocError();
    *v47 = 0xD000000000000011;
    *(v47 + 8) = 0x800000010134D670;
    *(v47 + 16) = 1;
    swift_willThrow();
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    v48 = v102;
    v49 = v103;
LABEL_30:
    sub_100006654(v48, v49);
    v39 = v88;
    v40 = v89;
    goto LABEL_22;
  }

  v85 = v46;
  v51 = (v108 + v14[10]);
  v52 = v51[1];
  if (v52 >> 60 == 15)
  {
LABEL_36:

    sub_100233888();
    swift_allocError();
    *v54 = 0xD000000000000015;
    *(v54 + 8) = 0x800000010134D690;
    *(v54 + 16) = 1;
    swift_willThrow();
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    sub_100006654(v102, v103);
    v48 = v85;
    v49 = v87;
    goto LABEL_30;
  }

  v53 = *v51;
  sub_100017D5C(*v51, v52);
  sub_100017D5C(v53, v52);
  static Endianness.current.getter();
  sub_100101824();
  v84 = v53;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v106) == 1)
  {
    sub_100006654(v53, v52);
    goto LABEL_36;
  }

  v83 = v52;
  v55 = (v108 + v14[15]);
  v56 = v55[1];
  if (v56 >> 60 == 15)
  {
    goto LABEL_40;
  }

  v57 = *v55;
  sub_100017D5C(*v55, v56);
  sub_100017D5C(v57, v56);
  static Endianness.current.getter();
  sub_1000198E8();
  v82 = v56;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE1(v106) == 1)
  {
    sub_100006654(v57, v56);
LABEL_40:

    sub_100233888();
    swift_allocError();
    *v58 = xmmword_101393460;
    *(v58 + 16) = 1;
    swift_willThrow();
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    v59 = v102;
    v60 = v103;
LABEL_41:
    sub_100006654(v59, v60);
    sub_100006654(v84, v52);
    sub_100006654(v85, v87);
    sub_100006654(v88, v89);
    sub_100006654(v101, v100);
    v31 = v99;
    goto LABEL_13;
  }

  v61 = v106;
  if (v106 >= 3u)
  {
    v61 = 3;
  }

  v80 = v61;
  v62 = (v108 + v14[16]);
  v81 = v62[1];
  if (v81 >> 60 == 15)
  {
LABEL_47:

    sub_100233888();
    swift_allocError();
    *v64 = xmmword_101393450;
    *(v64 + 16) = 1;
    swift_willThrow();
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    sub_100006654(v102, v103);
    v59 = v57;
    v60 = v82;
    goto LABEL_41;
  }

  v63 = *v62;
  sub_100017D5C(*v62, v81);
  sub_100017D5C(v63, v81);
  static Endianness.current.getter();
  v79 = v63;
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE1(v106) == 1)
  {
    sub_100006654(v63, v81);
    goto LABEL_47;
  }

  if (v106 >= 4u)
  {
    v65 = 4;
  }

  else
  {
    v65 = v106;
  }

  v66 = type metadata accessor for UUID();
  (*(*(v66 - 8) + 16))(a2, v108, v66);
  v67 = (a2 + v6[5]);
  *v67 = v102;
  v67[1] = v103;
  *(a2 + v6[8]) = v95;
  v68 = (a2 + v6[7]);
  *v68 = v92;
  v68[1] = v93;
  v69 = (a2 + v6[6]);
  *v69 = v90;
  v69[1] = v91;
  v70 = a2 + v6[12];
  *v70 = v106;
  *(v70 + 8) = 0;
  v71 = a2 + v6[13];
  *v71 = v106;
  *(v71 + 4) = 0;
  *(a2 + v6[14]) = v80;
  *(a2 + v6[15]) = v65;
  v72 = a2 + v6[17];
  *v72 = v86;
  *(v72 + 4) = 0;
  v73 = (v108 + v14[12]);
  v74 = v73[1];
  if (v74 >> 60 == 15)
  {
    sub_10023533C(v108, type metadata accessor for RawAccessoryMetadata);
    sub_100006654(v99, v13);
    sub_100006654(v101, v100);
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    sub_100006654(v88, v89);
    sub_100006654(v85, v87);
    sub_100006654(v84, v83);
    sub_100006654(v57, v82);
    result = sub_100006654(v63, v81);
    v75 = 0;
    LOBYTE(v105) = 1;
  }

  else
  {
    v76 = *v73;
    sub_100017D5C(*v73, v73[1]);
    v77 = sub_10098E844(v76, v74);
    v75 = v77;
    v105 = HIDWORD(v77) & 1;
    sub_100006654(v76, v74);
    sub_100006654(v96, v98);
    sub_100006654(v94, v97);
    sub_100006654(v79, v81);
    sub_100006654(v57, v82);
    sub_100006654(v84, v83);
    sub_100006654(v85, v87);
    sub_100006654(v88, v89);
    sub_100006654(v101, v100);
    sub_100006654(v99, v13);
    result = sub_10023533C(v108, type metadata accessor for RawAccessoryMetadata);
  }

  v78 = a2 + v6[10];
  *v78 = v75;
  *(v78 + 4) = v105;
  return result;
}

id sub_100232DEC()
{
  v1 = [objc_allocWithZone(SPRawAccessoryMetadata) init];
  v2 = type metadata accessor for RawAccessoryMetadata(0);
  isa = 0;
  v4 = (v0 + v2[5]);
  if (v4[1] >> 60 != 15)
  {
    v5 = *v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProductData:isa];

  v6 = (v0 + v2[6]);
  if (v6[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = *v6;
    v7 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setManufacturerName:v7];

  v9 = (v0 + v2[7]);
  if (v9[1] >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = *v9;
    v10 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setModelName:v10];

  v12 = (v0 + v2[8]);
  if (v12[1] >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v14 = *v12;
    v13 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setReserved:v13];

  v15 = (v0 + v2[9]);
  if (v15[1] >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v17 = *v15;
    v16 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCategory:v16];

  v18 = (v0 + v2[10]);
  if (v18[1] >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v20 = *v18;
    v19 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setAccessoryCapabilities:v19];

  v21 = (v0 + v2[11]);
  if (v21[1] >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v23 = *v21;
    v22 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFirmwareVersion:v22];

  v24 = (v0 + v2[12]);
  if (v24[1] >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v26 = *v24;
    v25 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setProtocolVersion:v25];

  v27 = (v0 + v2[13]);
  if (v27[1] >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v29 = *v27;
    v28 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setFindMyVersion:v28];

  v30 = (v0 + v2[14]);
  if (v30[1] >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v32 = *v30;
    v31 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setNetworkId:v31];

  v33 = (v0 + v2[15]);
  if (v33[1] >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v35 = *v33;
    v34 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryType:v34];

  v36 = (v0 + v2[16]);
  if (v36[1] >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v38 = *v36;
    v37 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v1 setBatteryLevel:v37];

  return v1;
}

unint64_t sub_100233168()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SPDiscoveredAccessoryMetadata) init];
  v3 = type metadata accessor for RawAccessoryMetadata(0);
  v4 = (v0 + v3[5]);
  v5 = v4[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v4[1];
  }

  sub_10002E98C(*v4, v5);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v6, v7);
  [v2 setProductData:isa];

  v9 = (v1 + v3[6]);
  if (v9[1] >> 60 == 15 || (v42 = *v9, v47 = v9[1], sub_1000E0A3C(), DataProtocol.nullTerminatedUTF8String.getter(), !v10))
  {
  }

  v11 = String._bridgeToObjectiveC()();

  [v2 setManufacturerName:v11];

  v12 = (v1 + v3[7]);
  if (v12[1] >> 60 == 15 || (v42 = *v12, v47 = v12[1], sub_1000E0A3C(), DataProtocol.nullTerminatedUTF8String.getter(), !v13))
  {
  }

  v14 = String._bridgeToObjectiveC()();

  [v2 setModelName:v14];

  v15 = (v1 + v3[9]);
  if (v15[1] >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v42 = *v15;
    v47 = v15[1];
    sub_1000E0A3C();
    result = DataProtocol.intValue.getter();
    v16 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  [v2 setAccessoryCategory:{v16, v42, v47}];
  v18 = (v1 + v3[10]);
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
    v20 = 0;
    goto LABEL_20;
  }

  v43 = *v18;
  v48 = v18[1];
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  v20 = result;
  if (HIDWORD(result))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_20:
  [v2 setAccessoryCapabilities:{v20, v43, v48}];
  v21 = (v1 + v3[11]);
  v22 = v21[1];
  if (v22 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = *v21;
  }

  if (v22 >> 60 == 15)
  {
    v24 = 0xC000000000000000;
  }

  else
  {
    v24 = v21[1];
  }

  sub_10002E98C(*v21, v22);
  v25 = sub_10098E844(v23, v24);
  sub_100016590(v23, v24);
  if ((v25 & 0x100000000) == 0)
  {
    sub_10098E010();
  }

  v26 = String._bridgeToObjectiveC()();

  [v2 setFirmwareVersion:v26];

  v27 = (v1 + v3[13]);
  v28 = v27[1];
  if (v28 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = *v27;
  }

  if (v28 >> 60 == 15)
  {
    v30 = 0xC000000000000000;
  }

  else
  {
    v30 = v27[1];
  }

  sub_10002E98C(*v27, v28);
  v31 = sub_10098E844(v29, v30);
  sub_100016590(v29, v30);
  if ((v31 & 0x100000000) == 0)
  {
    sub_10098E010();
  }

  v32 = String._bridgeToObjectiveC()();

  [v2 setFindMyVersion:v32];

  v33 = (v1 + v3[12]);
  v34 = v33[1];
  if (v34 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = *v33;
  }

  if (v34 >> 60 == 15)
  {
    v36 = 0xC000000000000000;
  }

  else
  {
    v36 = v33[1];
  }

  sub_10002E98C(*v33, v34);
  v37 = sub_10098E844(v35, v36);
  sub_100016590(v35, v36);
  if ((v37 & 0x100000000) == 0)
  {
    sub_10098E010();
  }

  v38 = String._bridgeToObjectiveC()();

  [v2 setProtocolVersion:v38];

  v39 = (v1 + v3[15]);
  if (v39[1] >> 60 == 15)
  {
    LOBYTE(result) = 0;
    goto LABEL_48;
  }

  v44 = *v39;
  v49 = v39[1];
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (result > 0xFF)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_48:
  [v2 setBatteryType:{result, v44, v49}];
  v40 = (v1 + v3[16]);
  if (v40[1] >> 60 == 15)
  {
    LOBYTE(result) = 0;
    goto LABEL_52;
  }

  v45 = *v40;
  v50 = v40[1];
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_62;
  }

  if (result > 0xFF)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_52:
  [v2 setBatteryState:{result, v45, v50}];
  if (v19 >> 60 == 15)
  {
    LODWORD(result) = 0;
LABEL_56:
    [v2 setCapabilities:sub_1010D92E0(result)];
    v41 = sub_100232DEC();
    [v2 setRawMetadata:v41];

    return v2;
  }

  v46 = *v18;
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (!HIDWORD(result))
  {
    goto LABEL_56;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1002336DC(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(21);

    v8 = 0xD000000000000013;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v6);

    return v8;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(17);

    v8 = 0x726F43617461642ELL;
    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    return v8;
  }

  return 0x6E776F6E6B6E752ELL;
}

unint64_t sub_100233814()
{
  result = qword_10169A200;
  if (!qword_10169A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A200);
  }

  return result;
}

unint64_t sub_100233888()
{
  result = qword_10169A208;
  if (!qword_10169A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A208);
  }

  return result;
}

BOOL sub_1002338DC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RawAccessoryMetadata(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v14 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v7 = *(a1 + v18);
  v6 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v10 = *v19;
  v9 = v19[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v20 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v4[9];
  v7 = *(a1 + v21);
  v6 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v10 = *v22;
  v9 = v22[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v23 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v4[10];
  v7 = *(a1 + v24);
  v6 = *(a1 + v24 + 8);
  v25 = (a2 + v24);
  v10 = *v25;
  v9 = v25[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v26 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = v4[11];
  v7 = *(a1 + v27);
  v6 = *(a1 + v27 + 8);
  v28 = (a2 + v27);
  v10 = *v28;
  v9 = v28[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v29 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = v4[12];
  v7 = *(a1 + v30);
  v6 = *(a1 + v30 + 8);
  v31 = (a2 + v30);
  v10 = *v31;
  v9 = v31[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  v33 = v4[13];
  v7 = *(a1 + v33);
  v6 = *(a1 + v33 + 8);
  v34 = (a2 + v33);
  v10 = *v34;
  v9 = v34[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v35 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  v36 = v4[14];
  v7 = *(a1 + v36);
  v6 = *(a1 + v36 + 8);
  v37 = (a2 + v36);
  v10 = *v37;
  v9 = v37[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_56;
    }

    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    v38 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
    sub_100006654(v10, v9);
    sub_100006654(v7, v6);
    if (v38)
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_56;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  sub_100006654(v7, v6);
LABEL_52:
  v39 = v4[15];
  v7 = *(a1 + v39);
  v6 = *(a1 + v39 + 8);
  v40 = (a2 + v39);
  v10 = *v40;
  v9 = v40[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      goto LABEL_60;
    }

LABEL_56:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    v41 = v10;
    v42 = v9;
LABEL_57:
    sub_100006654(v41, v42);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_56;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v44 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v45 = v4[16];
  v47 = *(a1 + v45);
  v46 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v50 = *v48;
  v49 = v48[1];
  if (v46 >> 60 == 15)
  {
    if (v49 >> 60 == 15)
    {
      sub_10002E98C(v47, v46);
      sub_10002E98C(v50, v49);
      sub_100006654(v47, v46);
      return 1;
    }

    goto LABEL_64;
  }

  if (v49 >> 60 == 15)
  {
LABEL_64:
    sub_10002E98C(v47, v46);
    sub_10002E98C(v50, v49);
    sub_100006654(v47, v46);
    v41 = v50;
    v42 = v49;
    goto LABEL_57;
  }

  sub_10002E98C(v47, v46);
  sub_10002E98C(v50, v49);
  v51 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v47, v46, v50, v49);
  sub_100006654(v50, v49);
  sub_100006654(v47, v46);
  return (v51 & 1) != 0;
}

uint64_t sub_100234190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirTagVersionNumber();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v73 - v11;
  v13 = sub_1000BC4D4(&qword_10169A2A8, &qword_101393838);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v73 - v15;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for AccessoryMetadata(0);
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + v17[5]), *(a1 + v17[5] + 8), *(a2 + v17[5]), *(a2 + v17[5] + 8)) & 1) == 0)
  {
    return 0;
  }

  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22 || (*v19 != *v21 || v20 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = v17[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  result = 0;
  v29 = v17[8];
  v30 = a1 + v29;
  v31 = *(a1 + v29);
  v32 = (a2 + v29);
  if (v31 != *v32 || *(v30 + 2) != *(v32 + 2) || *(v30 + 3) != *(v32 + 3))
  {
    return result;
  }

  v33 = v17[9];
  v34 = *(v13 + 48);
  sub_100235594(a1 + v33, v16);
  v74 = v34;
  sub_100235594(a2 + v33, &v16[v34]);
  v35 = *(v5 + 48);
  if (v35(v16, 1, v4) != 1)
  {
    sub_100235594(v16, v12);
    if (v35(&v16[v74], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v74], v4);
      sub_100231364(&qword_10169A2B0, &type metadata accessor for AirTagVersionNumber);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v5 + 8);
      v37(v8, v4);
      v37(v12, v4);
      sub_10000B3A8(v16, &qword_10169A0C0, &unk_10139DBB0);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v5 + 8))(v12, v4);
LABEL_25:
    sub_10000B3A8(v16, &qword_10169A2A8, &qword_101393838);
    return 0;
  }

  if (v35(&v16[v74], 1, v4) != 1)
  {
    goto LABEL_25;
  }

  sub_10000B3A8(v16, &qword_10169A0C0, &unk_10139DBB0);
LABEL_29:
  v38 = v17[10];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v17[11];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 16);
  v46 = a2 + v43;
  v47 = *(v46 + 16);
  if (v45)
  {
    if ((*(v46 + 16) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  if (*(v46 + 16))
  {
    return 0;
  }

  result = 0;
  if (*v44 == *v46 && v44[1] == *(v46 + 8))
  {
LABEL_41:
    v48 = v17[12];
    v49 = (a1 + v48);
    v50 = *(a1 + v48 + 8);
    v51 = (a2 + v48);
    v52 = *(a2 + v48 + 8);
    if (v50)
    {
      if (!v52)
      {
        return 0;
      }
    }

    else
    {
      if (*v49 != *v51)
      {
        LOBYTE(v52) = 1;
      }

      if (v52)
      {
        return 0;
      }
    }

    v53 = v17[13];
    v54 = (a1 + v53);
    v55 = *(a1 + v53 + 4);
    v56 = (a2 + v53);
    v57 = *(a2 + v53 + 4);
    if (v55)
    {
      if (!v57)
      {
        return 0;
      }
    }

    else
    {
      if (*v54 != *v56)
      {
        LOBYTE(v57) = 1;
      }

      if (v57)
      {
        return 0;
      }
    }

    v58 = v17[14];
    v59 = *(a1 + v58);
    v60 = *(a2 + v58);
    if (v59 == 4)
    {
      if (v60 != 4)
      {
        return 0;
      }
    }

    else if (v59 != v60)
    {
      return 0;
    }

    v61 = v17[15];
    v62 = *(a1 + v61);
    v63 = *(a2 + v61);
    if (v62 == 5)
    {
      if (v63 != 5)
      {
        return 0;
      }
    }

    else if (v62 != v63)
    {
      return 0;
    }

    v64 = v17[16];
    v65 = *(a1 + v64);
    v66 = *(a1 + v64 + 8);
    v67 = (a2 + v64);
    if (v65 == *v67 && v66 == v67[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v68 = v17[17];
      v69 = (a1 + v68);
      v70 = *(a1 + v68 + 4);
      v71 = (a2 + v68);
      v72 = *(a2 + v68 + 4);
      if (v70)
      {
        if (v72)
        {
          return 1;
        }
      }

      else
      {
        if (*v69 != *v71)
        {
          v72 = 1;
        }

        if ((v72 & 1) == 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100234744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134D670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6556794D646E6966 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x496B726F7774656ELL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_100234BA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D6B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000025 && 0x800000010134D6D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134D670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134D690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5379726574746162 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6556794D646E6966 && a2 == 0xED00006E6F697372)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_10023502C()
{
  result = qword_10169A210;
  if (!qword_10169A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A210);
  }

  return result;
}

unint64_t sub_100235080()
{
  result = qword_10169A220;
  if (!qword_10169A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A220);
  }

  return result;
}

unint64_t sub_1002350D4()
{
  result = qword_10169A228;
  if (!qword_10169A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A228);
  }

  return result;
}

unint64_t sub_100235128()
{
  result = qword_10169A230;
  if (!qword_10169A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A230);
  }

  return result;
}

uint64_t sub_10023517C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002351EC()
{
  result = qword_10169A240;
  if (!qword_10169A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A240);
  }

  return result;
}

unint64_t sub_100235240()
{
  result = qword_10169A248;
  if (!qword_10169A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A248);
  }

  return result;
}

unint64_t sub_100235294()
{
  result = qword_10169A250;
  if (!qword_10169A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A250);
  }

  return result;
}

unint64_t sub_1002352E8()
{
  result = qword_10169A258;
  if (!qword_10169A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A258);
  }

  return result;
}

uint64_t sub_10023533C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10023539C()
{
  result = qword_10169A268;
  if (!qword_10169A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A268);
  }

  return result;
}

unint64_t sub_1002353F0()
{
  result = qword_10169A270;
  if (!qword_10169A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A270);
  }

  return result;
}

unint64_t sub_100235444()
{
  result = qword_10169A280;
  if (!qword_10169A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A280);
  }

  return result;
}

unint64_t sub_100235498()
{
  result = qword_10169A288;
  if (!qword_10169A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A288);
  }

  return result;
}

unint64_t sub_1002354EC()
{
  result = qword_10169A290;
  if (!qword_10169A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A290);
  }

  return result;
}

unint64_t sub_100235540()
{
  result = qword_10169A298;
  if (!qword_10169A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A298);
  }

  return result;
}

uint64_t sub_100235594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100235604()
{
  result = qword_10169A2B8;
  if (!qword_10169A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A2B8);
  }

  return result;
}

unint64_t sub_100235658()
{
  result = qword_10169A2C0;
  if (!qword_10169A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A2C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BeaconSharingMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconSharingMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002357FC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100235818(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10023582C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100235874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002358B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100235908()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_10169A330);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002359B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_100235A50()
{
  result = qword_10169A398;
  if (!qword_10169A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A398);
  }

  return result;
}

unint64_t sub_100235AA8()
{
  result = qword_10169A3A0;
  if (!qword_10169A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3A0);
  }

  return result;
}

unint64_t sub_100235B00()
{
  result = qword_10169A3A8;
  if (!qword_10169A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3A8);
  }

  return result;
}

unint64_t sub_100235B54()
{
  result = qword_10169A3B8;
  if (!qword_10169A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3B8);
  }

  return result;
}

uint64_t sub_100235BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100235C24()
{
  result = qword_10169A3C8;
  if (!qword_10169A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3C8);
  }

  return result;
}

unint64_t sub_100235C7C()
{
  result = qword_10169A3D0;
  if (!qword_10169A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3D0);
  }

  return result;
}

unint64_t sub_100235CD4()
{
  result = qword_10169A3D8;
  if (!qword_10169A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169A3D8);
  }

  return result;
}

uint64_t sub_100235D28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101074660(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100235D54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107467C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100235D80()
{
  v1 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler;
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler);
LABEL_8:

    return v2;
  }

  v3 = v0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B348;
  v5 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v6 = sub_101074660(v15);

  v8 = (v6 * 60) >> 64;
  v9 = 60 * v6;
  if (v8 == v9 >> 63)
  {
    v10 = *(v4 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v11 = sub_10107467C(v15);

    if ((v11 * 60) >> 64 == (60 * v11) >> 63)
    {
      v12 = (60 * v11);
      v13 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for XPCScheduler();
      v2 = swift_allocObject();
      *(v2 + 64) = v13;
      *(v2 + 72) = 0;
      *(v2 + 16) = 0xD000000000000015;
      *(v2 + 24) = 0x800000010134D850;
      *(v2 + 32) = 0x3FF0000000000000;
      *(v2 + 40) = v9;
      *(v2 + 48) = v12;
      *(v2 + 56) = sub_100237198;
      swift_retain_n();
      sub_10073C0D8();

      v14 = *(v3 + v1);
      *(v3 + v1) = v2;

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100235F98(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v27 = &v23 - v5;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configSubscription;
  v16 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v17 = *(v16 - 8);
  v24 = *(v17 + 56);
  v25 = v16;
  v23 = v17 + 56;
  v24(v1 + v15, 1, 1);
  v18 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configurationChangedQueue;
  sub_1000BC488();
  (*(v11 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  v28[0] = _swiftEmptyArrayStorage;
  sub_100237258();
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  v19 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + v18) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler) = 0;
  *(v1 + 16) = v19;

  sub_100235D80();

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v28[3] = type metadata accessor for FirmwareUpdateScheduler();
  v28[4] = &off_101613EE8;
  v28[0] = v1;

  v20 = v27;
  sub_10014F468(v28, v27);

  sub_100007BAC(v28);
  (v24)(v20, 0, 1, v25);
  v21 = OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configSubscription;
  swift_beginAccess();
  sub_1002372B0(v20, v2 + v21);
  swift_endAccess();
  return v2;
}

uint64_t sub_10023634C()
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10138BBE0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = sub_101074660(v13);

  if ((v3 * 60) >> 64 == (60 * v3) >> 63)
  {
    v5 = Double.description.getter();
    v7 = v6;
    *(v0 + 56) = &type metadata for String;
    v8 = sub_100008C00();
    *(v0 + 64) = v8;
    *(v0 + 32) = v5;
    *(v0 + 40) = v7;
    v9 = *(v1 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v10 = sub_10107467C(v13);

    if ((v10 * 60) >> 64 == (60 * v10) >> 63)
    {
      v11 = Double.description.getter();
      *(v0 + 96) = &type metadata for String;
      *(v0 + 104) = v8;
      *(v0 + 72) = v11;
      *(v0 + 80) = v12;
      os_log(_:dso:log:_:_:)();

      sub_100235D80();
      sub_10073C0D8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100236584(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100236620, 0, 0);
}

uint64_t sub_100236620()
{
  static os_log_type_t.default.getter();
  if (qword_1016950B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  os_log(_:dso:log:_:_:)();
  v2 = *(v1 + 16);
  *(v0 + 32) = v2;

  return _swift_task_switch(sub_1002366F4, v2, 0);
}

uint64_t sub_1002366F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_100251FF8(2, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002367BC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configurationChangedQueue);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1002370D0;
  *(v5 + 24) = v4;
  v8[4] = sub_1000D2FB0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10013FE14;
  v8[3] = &unk_101613F70;
  v6 = _Block_copy(v8);

  dispatch_sync(v2, v6);
  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023693C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100235D80();

    sub_10073B7C8();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v4 = qword_10177B348;
    v5 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v6 = sub_101074660(v13);

    v7 = (v6 * 60) >> 64;
    v8 = 60 * v6;
    if (v7 == v8 >> 63)
    {
      v9 = *(v4 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v10 = sub_10107467C(v13);

      if ((v10 * 60) >> 64 == (60 * v10) >> 63)
      {
        type metadata accessor for XPCScheduler();
        v11 = swift_allocObject();
        *(v11 + 64) = a1;
        *(v11 + 72) = 0;
        *(v11 + 16) = 0xD000000000000015;
        *(v11 + 24) = 0x800000010134D850;
        *(v11 + 32) = 0x3FF0000000000000;
        *(v11 + 40) = v8;
        *(v11 + 48) = (60 * v10);
        *(v11 + 56) = sub_1002370D8;
        swift_retain_n();
        sub_10073C0D8();

        v12 = *(v3 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler);
        *(v3 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler) = v11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100236B78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_100236C0C()
{
  v1 = v0[2];

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler_configSubscription, &qword_1016B28A0, &unk_101393D00);

  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd23FirmwareUpdateScheduler____lazy_storage___updateScheduler);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FirmwareUpdateScheduler()
{
  result = qword_10169A420;
  if (!qword_10169A420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236CFC()
{
  sub_100236DB4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100236DB4()
{
  if (!qword_10169A430)
  {
    sub_1000BC580(&qword_1016B1E70, &qword_10138CDB0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169A430);
    }
  }
}

uint64_t sub_100236E40()
{
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v0 = static AnyKeyPath.== infix(_:_:)();

  if (v0 & 1) != 0 || (swift_getKeyPath(), v1 = static AnyKeyPath.== infix(_:_:)(), result = , (v1))
  {
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10138BBE0;
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v4 = qword_10177B348;
    v5 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v6 = sub_101074660(v15);

    if ((v6 * 60) >> 64 == (60 * v6) >> 63)
    {
      v7 = Double.description.getter();
      v9 = v8;
      *(v3 + 56) = &type metadata for String;
      v10 = sub_100008C00();
      *(v3 + 64) = v10;
      *(v3 + 32) = v7;
      *(v3 + 40) = v9;
      v11 = *(v4 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v12 = sub_10107467C(v15);

      if ((v12 * 60) >> 64 == (60 * v12) >> 63)
      {
        v13 = Double.description.getter();
        *(v3 + 96) = &type metadata for String;
        *(v3 + 104) = v10;
        *(v3 + 72) = v13;
        *(v3 + 80) = v14;
        os_log(_:dso:log:_:_:)();

        return sub_1002367BC();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100237108()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100236584(v0);
}

uint64_t sub_1002371C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100236584(v0);
}

unint64_t sub_100237258()
{
  result = qword_10169BB60;
  if (!qword_10169BB60)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB60);
  }

  return result;
}

uint64_t sub_1002372B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100237320(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  *(v3 + 56) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  *(v3 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v8 = *(*(type metadata accessor for OwnerSharingCircle() - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v9 = *(*(type metadata accessor for OwnerPeerTrust() - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v11 = type metadata accessor for MemberSharingCircle();
  *(v3 + 112) = v11;
  v12 = *(v11 - 8);
  *(v3 + 120) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v3 + 136) = v14;
  v15 = *(v14 - 8);
  *(v3 + 144) = v15;
  *(v3 + 152) = *(v15 + 64);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10023755C, v2, 0);
}

uint64_t sub_10023755C()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[22] = v6;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Decline %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[6] + 112);
  v0[24] = v19;

  return _swift_task_switch(sub_1002377C0, v19, 0);
}

uint64_t sub_1002377C0()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1002378AC;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_1002378AC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1002379C4, v2, 0);
}

uint64_t sub_1002379C4()
{
  v1 = v0[6];
  v0[26] = v0[2];
  return _swift_task_switch(sub_1002379E8, v1, 0);
}

uint64_t sub_1002379E8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 40);
  *(swift_task_alloc() + 16) = v5;
  sub_1012BBB68(sub_1002439F0, v1, v4);

  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = *(v0 + 104);
  if (v6 == 1)
  {
    v8 = *(v0 + 192);
    sub_10000B3A8(v7, &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_100237CC8, v8, 0);
  }

  else
  {
    sub_1002437B0(v7, *(v0 + 128), type metadata accessor for MemberSharingCircle);
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_100237B9C;
    v10 = *(v0 + 128);
    v11 = *(v0 + 48);
    v12 = *(v0 + 264);

    return sub_100238420(v10, v12, 0);
  }
}

uint64_t sub_100237B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100243A0C;
  }

  else
  {
    v6 = sub_1002439C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100237CC8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  (*(v0 + 176))(v3, *(v0 + 40), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_100237E14;
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1002439EC, v7, v11);
}

uint64_t sub_100237E14()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_100237F40, v3, 0);
}

uint64_t sub_100237F40()
{
  v1 = *(v0 + 64);
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 32) = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = *(v0 + 24);
    swift_willThrow();
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 128);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 64);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v2 + 48);
    v19 = *(v17 + 48);
    sub_1002437B0(v1, v16, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v1 + v18, v16 + v19, type metadata accessor for OwnerSharingCircle);
    v20 = *(v17 + 48);
    sub_1002437B0(v16, v14, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v16 + v20, v15, type metadata accessor for OwnerSharingCircle);
    v21 = swift_task_alloc();
    *(v0 + 248) = v21;
    *v21 = v0;
    v21[1] = sub_1002381F8;
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 48);
    v25 = *(v0 + 264);

    return sub_10023BC50(v23, v22, v25);
  }
}

uint64_t sub_1002381F8()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100238324;
  }

  else
  {
    v6 = sub_1002439E4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100238324()
{
  v1 = v0[12];
  sub_100243818(v0[11], type metadata accessor for OwnerSharingCircle);
  sub_100243818(v1, type metadata accessor for OwnerPeerTrust);
  v2 = v0[32];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100238420(uint64_t a1, char a2, char a3)
{
  *(v4 + 745) = a3;
  *(v4 + 744) = a2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v3;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  *(v4 + 256) = v5;
  v6 = *(v5 - 8);
  *(v4 + 264) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  *(v4 + 288) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 320) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v4 + 344) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  v15 = type metadata accessor for MemberSharingCircle();
  *(v4 + 360) = v15;
  v16 = *(v15 - 8);
  *(v4 + 368) = v16;
  *(v4 + 376) = *(v16 + 64);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v4 + 408) = v17;
  v18 = *(v17 - 8);
  *(v4 + 416) = v18;
  *(v4 + 424) = *(v18 + 64);
  *(v4 + 432) = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 440) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  v21 = type metadata accessor for MemberPeerTrust();
  *(v4 + 456) = v21;
  v22 = *(v21 - 8);
  *(v4 + 464) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_100238788, v3, 0);
}

uint64_t sub_100238788()
{
  v1 = *(v0 + 360);
  v2 = *(*(v0 + 248) + 112);
  *(v0 + 496) = v2;
  *(v0 + 712) = *(v1 + 32);
  return _swift_task_switch(sub_1002387B8, v2, 0);
}

uint64_t sub_1002387B8()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 496);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);
  v7 = *(v0 + 240);
  v8 = *(v6 + 16);
  *(v0 + 504) = v8;
  *(v0 + 512) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v5);
  v9 = *(v6 + 80);
  *(v0 + 716) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 520) = v11;
  *(v11 + 16) = v2;
  v12 = *(v6 + 32);
  *(v0 + 528) = v12;
  *(v0 + 536) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v5);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 544) = v14;
  *v14 = v0;
  v14[1] = sub_100238944;
  v16 = *(v0 + 440);
  v15 = *(v0 + 448);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_1002436BC, v11, v16);
}

uint64_t sub_100238944()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 248);
  v5 = *v0;

  return _swift_task_switch(sub_100238A70, v3, 0);
}

uint64_t sub_100238A70()
{
  v73 = v0;
  v1 = *(v0 + 448);
  if ((*(*(v0 + 464) + 48))(v1, 1, *(v0 + 456)) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 384);
    v3 = *(v0 + 240);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    sub_100243878(v3, v2, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 408);
      v8 = *(v0 + 384);
      v9 = *(v0 + 360);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v72 = v11;
      *v10 = 136315138;
      v12 = *(v9 + 32);
      sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_100243818(v8, type metadata accessor for MemberSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v72);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "No peerTrustIdentifier for %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {
      v19 = *(v0 + 384);

      sub_100243818(v19, type metadata accessor for MemberSharingCircle);
    }

    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v22 = *(v0 + 472);
    v23 = *(v0 + 448);
    v24 = *(v0 + 432);
    v26 = *(v0 + 392);
    v25 = *(v0 + 400);
    v27 = *(v0 + 384);
    v28 = *(v0 + 352);
    v29 = *(v0 + 336);
    v66 = *(v0 + 328);
    v67 = *(v0 + 312);
    v68 = *(v0 + 304);
    v69 = *(v0 + 296);
    v70 = *(v0 + 280);
    v71 = *(v0 + 272);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v17 = *(v0 + 744);
    sub_1002437B0(v1, *(v0 + 488), type metadata accessor for MemberPeerTrust);
    if (v17)
    {
      *(v0 + 584) = 0;
      v18 = *(v0 + 496);
      *(v0 + 720) = *(*(v0 + 360) + 20);

      return _swift_task_switch(sub_1002394A4, v18, 0);
    }

    else
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 480);
      v32 = *(v0 + 488);
      v33 = *(v0 + 472);
      v34 = type metadata accessor for Logger();
      *(v0 + 552) = sub_1000076D4(v34, qword_10177A560);
      sub_100243878(v32, v31, type metadata accessor for MemberPeerTrust);
      sub_100243878(v32, v33, type metadata accessor for MemberPeerTrust);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 472);
      v39 = *(v0 + 480);
      if (v37)
      {
        v40 = *(v0 + 456);
        v41 = *(v0 + 408);
        v42 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v42 = 136315394;
        v43 = *(v40 + 20);
        sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        sub_100243818(v39, type metadata accessor for MemberPeerTrust);
        v47 = sub_1000136BC(v44, v46, &v72);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        v49 = v38 + *(v40 + 28);
        v50 = sub_100988F40(v48);
        v52 = v51;
        sub_100243818(v38, type metadata accessor for MemberPeerTrust);
        v53 = sub_1000136BC(v50, v52, &v72);

        *(v42 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v35, v36, "Declining share from peerTrustIdentifier: %s,\ncommunicationsIdentifier: %s.", v42, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100243818(v38, type metadata accessor for MemberPeerTrust);
        sub_100243818(v39, type metadata accessor for MemberPeerTrust);
      }

      v55 = *(v0 + 504);
      v54 = *(v0 + 512);
      v56 = *(v0 + 488);
      v57 = *(v0 + 456);
      v58 = *(v0 + 408);
      v60 = *(v0 + 240);
      v59 = *(v0 + 248);
      v61 = *(*(v0 + 360) + 28);
      *(v0 + 40) = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
      *(v0 + 48) = sub_10024375C(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1);
      *(v0 + 56) = sub_10024375C(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1);
      v62 = sub_1000280DC((v0 + 16));
      v55(v62, v60 + v61, v58);
      v63 = *(v57 + 28);
      v64 = swift_task_alloc();
      *(v0 + 560) = v64;
      *v64 = v0;
      v64[1] = sub_1002391C8;

      return sub_10129B0F0(v59 + 120, v0 + 16, 4, v56 + v63);
    }
  }
}

uint64_t sub_1002391C8()
{
  v2 = (*v1)[70];
  v3 = *v1;
  v3[71] = v0;

  if (v0)
  {
    v4 = v3[31];

    return _swift_task_switch(sub_10023B910, v4, 0);
  }

  else
  {
    sub_100007BAC(v3 + 2);
    v5 = swift_task_alloc();
    v3[72] = v5;
    *v5 = v3;
    v5[1] = sub_10023935C;

    return (sub_100EC7D34)(0, 0);
  }
}

uint64_t sub_10023935C()
{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v5 = *v0;

  *(v1 + 584) = *(v1 + 568);
  v3 = *(v1 + 496);
  *(v1 + 720) = *(*(v1 + 360) + 20);

  return _swift_task_switch(sub_1002394A4, v3, 0);
}

uint64_t sub_1002394A4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);
  v7 = (*(v0 + 716) + 24) & ~*(v0 + 716);
  (*(v0 + 504))(v5, *(v0 + 240) + *(v0 + 720), v6);
  v8 = swift_allocObject();
  *(v0 + 592) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 600) = v10;
  *v10 = v0;
  v10[1] = sub_1002395FC;
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1002436E8, v8, v12);
}

uint64_t sub_1002395FC()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 248);
  v5 = *v0;

  return _swift_task_switch(sub_100239728, v3, 0);
}

uint64_t sub_100239728()
{
  v53 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  if ((*(*(v0 + 368) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 216) = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = *(v0 + 208);
    swift_willThrow();
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v52 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v10 = *(v0 + 144);
      v9 = *(v0 + 152);
      v11 = *(v0 + 160);
      v12 = Error.localizedDescription.getter();
      v14 = sub_1000136BC(v12, v13, &v52);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failure on share decline, iCloud Data update: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v15 = *(v0 + 488);
    if (*(v0 + 745))
    {
      sub_100243818(*(v0 + 488), type metadata accessor for MemberPeerTrust);

      v17 = *(v0 + 480);
      v16 = *(v0 + 488);
      v18 = *(v0 + 472);
      v19 = *(v0 + 448);
      v20 = *(v0 + 432);
      v22 = *(v0 + 392);
      v21 = *(v0 + 400);
      v23 = *(v0 + 384);
      v24 = *(v0 + 352);
      v25 = *(v0 + 336);
      v41 = *(v0 + 328);
      v43 = *(v0 + 312);
      v45 = *(v0 + 304);
      v47 = *(v0 + 296);
      v49 = *(v0 + 280);
      v51 = *(v0 + 272);
    }

    else
    {
      sub_1001118C8();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();

      sub_100243818(v15, type metadata accessor for MemberPeerTrust);
      v30 = *(v0 + 480);
      v29 = *(v0 + 488);
      v31 = *(v0 + 472);
      v32 = *(v0 + 448);
      v33 = *(v0 + 432);
      v35 = *(v0 + 392);
      v34 = *(v0 + 400);
      v36 = *(v0 + 384);
      v37 = *(v0 + 352);
      v38 = *(v0 + 336);
      v40 = *(v0 + 328);
      v42 = *(v0 + 312);
      v44 = *(v0 + 304);
      v46 = *(v0 + 296);
      v48 = *(v0 + 280);
      v50 = *(v0 + 272);
    }

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v27 = *(v0 + 496);
    sub_1002437B0(v2, *(v0 + 400), type metadata accessor for MemberSharingCircle);
    *(v0 + 724) = *(v1 + 24);

    return _swift_task_switch(sub_100239C0C, v27, 0);
  }
}

uint64_t sub_100239C0C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);
  v7 = (*(v0 + 716) + 24) & ~*(v0 + 716);
  (*(v0 + 504))(v5, *(v0 + 400) + *(v0 + 724), v6);
  v8 = swift_allocObject();
  *(v0 + 608) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 616) = v10;
  *v10 = v0;
  v10[1] = sub_100239D64;
  v11 = *(v0 + 336);
  v12 = *(v0 + 320);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1002439E8, v8, v12);
}

uint64_t sub_100239D64()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);
  v4 = *(*v0 + 496);
  v5 = *(*v0 + 288);
  v7 = *v0;

  v1[182] = v5[12];
  v1[183] = v5[16];
  v1[184] = v5[20];
  v1[185] = v5[24];

  return _swift_task_switch(sub_100239ECC, v4, 0);
}

uint64_t sub_100239ECC()
{
  v1 = v0[62];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  sub_100243878(v0[50], v2, type metadata accessor for MemberSharingCircle);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[78] = v6;
  *(v6 + 16) = v1;
  sub_1002437B0(v2, v6 + v5, type metadata accessor for MemberSharingCircle);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[79] = v8;
  *v8 = v0;
  v8[1] = sub_10023A020;
  v9 = v0[38];
  v10 = v0[36];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100243714, v6, v10);
}

uint64_t sub_10023A020()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 496);
  v5 = *v0;

  return _swift_task_switch(sub_10023A14C, v3, 0);
}

uint64_t sub_10023A14C()
{
  v1 = *(v0 + 732);
  v2 = *(v0 + 728);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 248);
  v7 = v5[12];
  v8 = v5[16];
  *(v0 + 640) = *(v3 + v5[20]);
  *(v0 + 648) = *(v3 + v5[24]);
  sub_1002437B0(v3, v4, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v3 + v7, v4 + v2, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v3 + v8, v4 + v1, &unk_1016B29E0, &unk_1013B70E0);

  return _swift_task_switch(sub_10023A250, v6, 0);
}

uint64_t sub_10023A250()
{
  v88 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 740);
  v3 = *(v0 + 312);
  *(v3 + *(v0 + 736)) = *(v0 + 640);
  *(v3 + v2) = v1;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 296);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A560);
  sub_1000D2A70(v5, v6, &qword_10169A608, &unk_1013BCC20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v70 = *(v0 + 504);
    v73 = *(v0 + 512);
    v82 = v9;
    v10 = *(v0 + 432);
    v85 = v7;
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v68 = *(v0 + 360);
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v76 = v13;
    v15 = *(v0 + 288);
    v16 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v87[0] = v79;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_1000D2A70(v13, v14, &qword_10169A608, &unk_1013BCC20);
    v17 = v15[12];
    v18 = v15[16];
    v19 = *(v14 + v15[20]);

    v20 = v15[24];
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    v21 = *(v14 + v20);

    v70(v10, v14 + *(v68 + 20), v12);
    sub_100243818(v14, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v14 + v18, &unk_1016B29E0, &unk_1013B70E0);
    sub_10000B3A8(v14 + v17, &unk_101698C30, &unk_101392630);
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v11 + 8))(v10, v12);
    v7 = v85;
    sub_10000B3A8(v76, &qword_10169A608, &unk_1013BCC20);
    v25 = sub_1000136BC(v22, v24, v87);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v8, v82, "Data update on decline. Delete %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v79);
  }

  else
  {
    v26 = *(v0 + 296);

    sub_10000B3A8(v26, &qword_10169A608, &unk_1013BCC20);
  }

  v27 = *(v0 + 584);
  v28 = *(v0 + 312);
  v29 = *(v0 + 280);
  *(swift_task_alloc() + 16) = v28;
  sub_100EC0C48(sub_100243740, v29);
  if (v27)
  {
    v30 = *(v0 + 400);
    v31 = *(v0 + 336);
    v32 = *(v0 + 312);

    sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
    sub_100243818(v30, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v32, &qword_10169A608, &unk_1013BCC20);
    if (p_weak_ivar_lyt[144] != -1)
    {
      swift_once();
    }

    sub_1000076D4(v7, qword_10177A560);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v87[0] = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v38 = *(v0 + 144);
      v37 = *(v0 + 152);
      v39 = *(v0 + 160);
      v40 = Error.localizedDescription.getter();
      v42 = sub_1000136BC(v40, v41, v87);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failure on share decline, iCloud Data update: %s", v35, 0xCu);
      sub_100007BAC(v36);
    }

    v43 = *(v0 + 488);
    if (*(v0 + 745))
    {
      sub_100243818(*(v0 + 488), type metadata accessor for MemberPeerTrust);

      v45 = *(v0 + 480);
      v44 = *(v0 + 488);
      v46 = *(v0 + 472);
      v47 = *(v0 + 448);
      v48 = *(v0 + 432);
      v50 = *(v0 + 392);
      v49 = *(v0 + 400);
      v51 = *(v0 + 384);
      v52 = *(v0 + 352);
      v53 = *(v0 + 336);
      v71 = *(v0 + 328);
      v74 = *(v0 + 312);
      v77 = *(v0 + 304);
      v80 = *(v0 + 296);
      v83 = *(v0 + 280);
      v86 = *(v0 + 272);
    }

    else
    {
      sub_1001118C8();
      swift_allocError();
      *v56 = 1;
      swift_willThrow();

      sub_100243818(v43, type metadata accessor for MemberPeerTrust);
      v58 = *(v0 + 480);
      v57 = *(v0 + 488);
      v59 = *(v0 + 472);
      v60 = *(v0 + 448);
      v61 = *(v0 + 432);
      v63 = *(v0 + 392);
      v62 = *(v0 + 400);
      v64 = *(v0 + 384);
      v65 = *(v0 + 352);
      v66 = *(v0 + 336);
      v69 = *(v0 + 328);
      v72 = *(v0 + 312);
      v75 = *(v0 + 304);
      v78 = *(v0 + 296);
      v81 = *(v0 + 280);
      v84 = *(v0 + 272);
    }

    v54 = *(v0 + 8);

    return v54();
  }

  else
  {
    v55 = *(v0 + 496);

    return _swift_task_switch(sub_10023A9C8, v55, 0);
  }
}

uint64_t sub_10023A9F0()
{
  v1 = v0[82];
  v2 = v0[35];
  v3 = swift_task_alloc();
  v0[83] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[84] = v5;
  *v5 = v0;
  v5[1] = sub_10023AAE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_10023AAE8()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v7 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_10023AD8C;
  }

  else
  {
    v5 = *(v2 + 664);

    v4 = sub_10023AC04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10023AC20()
{
  v1 = v0[41];
  v2 = v0[32];
  v3 = v0[33];
  sub_1000D2A70(v0[42], v1, &unk_101698C30, &unk_101392630);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[41], &unk_101698C30, &unk_101392630);
    v4 = v0[62];
    v5 = sub_10023B544;
  }

  else
  {
    v6 = v0[62];
    v7 = v0[34];
    v8 = v0[32];
    sub_1002437B0(v0[41], v7, type metadata accessor for SharedBeaconRecord);
    v0[11] = v8;
    v0[12] = sub_10024375C(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
    v9 = sub_1000280DC(v0 + 8);
    sub_100243878(v7, v9, type metadata accessor for SharedBeaconRecord);
    v5 = sub_10023B214;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10023AD8C()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 248);

  return _swift_task_switch(sub_10023ADF8, v2, 0);
}

uint64_t sub_10023ADF8()
{
  v53 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  sub_10000B3A8(*(v0 + 336), &unk_101698C30, &unk_101392630);
  sub_100243818(v1, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v3, &qword_1016975C8, &qword_10138C1F0);
  sub_10000B3A8(v2, &qword_10169A608, &unk_1013BCC20);
  v4 = *(v0 + 680);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v52);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on share decline, iCloud Data update: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v16 = *(v0 + 488);
  if (*(v0 + 745))
  {
    sub_100243818(*(v0 + 488), type metadata accessor for MemberPeerTrust);

    v18 = *(v0 + 480);
    v17 = *(v0 + 488);
    v19 = *(v0 + 472);
    v20 = *(v0 + 448);
    v21 = *(v0 + 432);
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);
    v24 = *(v0 + 384);
    v25 = *(v0 + 352);
    v26 = *(v0 + 336);
    v41 = *(v0 + 328);
    v43 = *(v0 + 312);
    v45 = *(v0 + 304);
    v47 = *(v0 + 296);
    v49 = *(v0 + 280);
    v51 = *(v0 + 272);
  }

  else
  {
    sub_1001118C8();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

    sub_100243818(v16, type metadata accessor for MemberPeerTrust);
    v30 = *(v0 + 480);
    v29 = *(v0 + 488);
    v31 = *(v0 + 472);
    v32 = *(v0 + 448);
    v33 = *(v0 + 432);
    v35 = *(v0 + 392);
    v34 = *(v0 + 400);
    v36 = *(v0 + 384);
    v37 = *(v0 + 352);
    v38 = *(v0 + 336);
    v40 = *(v0 + 328);
    v42 = *(v0 + 312);
    v44 = *(v0 + 304);
    v46 = *(v0 + 296);
    v48 = *(v0 + 280);
    v50 = *(v0 + 272);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10023B214()
{
  v1 = *(v0 + 496);
  sub_10001F280(v0 + 64, v0 + 104);
  v2 = swift_allocObject();
  *(v0 + 688) = v2;
  *(v2 + 16) = v1;
  sub_100031694((v0 + 104), v2 + 24);
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  *(v0 + 696) = v4;
  *v4 = v0;
  v4[1] = sub_10023B330;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_1002437A4, v2, &type metadata for () + 8);
}

uint64_t sub_10023B330()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 496);
  v5 = *v0;

  return _swift_task_switch(sub_10023B45C, v3, 0);
}

uint64_t sub_10023B45C()
{
  v1 = *(v0 + 248);
  sub_100007BAC((v0 + 64));

  return _swift_task_switch(sub_10023B4C8, v1, 0);
}

uint64_t sub_10023B4C8()
{
  sub_100243818(*(v0 + 272), type metadata accessor for SharedBeaconRecord);
  v1 = *(v0 + 496);

  return _swift_task_switch(sub_10023B544, v1, 0);
}

uint64_t sub_10023B544()
{
  v1 = *(v0 + 496);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 704) = v3;
  *v3 = v0;
  v3[1] = sub_10023B61C;
  v4 = *(v0 + 496);

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100202178, v4, &type metadata for () + 8);
}

uint64_t sub_10023B61C()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 496);
  v4 = *v0;

  return _swift_task_switch(sub_10023B734, v2, 0);
}

uint64_t sub_10023B750()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = v0[39];
  v4 = v0[35];
  sub_10000B3A8(v0[42], &unk_101698C30, &unk_101392630);
  sub_100243818(v2, type metadata accessor for MemberSharingCircle);
  sub_100243818(v1, type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  sub_10000B3A8(v3, &qword_10169A608, &unk_1013BCC20);
  v6 = v0[60];
  v5 = v0[61];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[54];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[48];
  v13 = v0[44];
  v14 = v0[42];
  v17 = v0[41];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[35];
  v22 = v0[34];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10023B910()
{
  v38 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  sub_100007BAC((v0 + 16));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 568);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v37);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share decline, IDS message sending: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  if (*(v0 + 745))
  {
    v14 = *(v0 + 568);

    *(v0 + 584) = 0;
    v15 = *(v0 + 496);
    *(v0 + 720) = *(*(v0 + 360) + 20);

    return _swift_task_switch(sub_1002394A4, v15, 0);
  }

  else
  {
    v16 = *(v0 + 568);
    v17 = *(v0 + 488);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 200) = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = *(v0 + 192);
    swift_willThrow();

    sub_100243818(v17, type metadata accessor for MemberPeerTrust);
    v19 = *(v0 + 480);
    v18 = *(v0 + 488);
    v20 = *(v0 + 472);
    v21 = *(v0 + 448);
    v22 = *(v0 + 432);
    v24 = *(v0 + 392);
    v23 = *(v0 + 400);
    v25 = *(v0 + 384);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    v30 = *(v0 + 328);
    v31 = *(v0 + 312);
    v32 = *(v0 + 304);
    v33 = *(v0 + 296);
    v34 = *(v0 + 280);
    v35 = *(v0 + 272);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_10023BC50(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = a2;
  *(v4 + 152) = v3;
  *(v4 + 404) = a3;
  *(v4 + 136) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 + 64);
  *(v4 + 184) = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  *(v4 + 208) = v8;
  v9 = *(v8 - 8);
  *(v4 + 216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10023BDE4, v3, 0);
}

uint64_t sub_10023BDE4()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[17];
  v3 = type metadata accessor for Logger();
  v0[32] = sub_1000076D4(v3, qword_10177A560);
  sub_100243878(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[31];
  if (v6)
  {
    v8 = v0[26];
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v8 + 20);
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share request decline. Delete %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
  }

  v17 = v0[25];
  v18 = v0[17];
  *(swift_task_alloc() + 16) = v18;
  sub_100EC0C48(sub_1002439CC, v17);
  v19 = v0[19];

  v20 = *(v19 + 112);
  v0[33] = v20;

  return _swift_task_switch(sub_10023C244, v20, 0);
}

uint64_t sub_10023C26C()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_10023C364;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_10023C364()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_10023C5CC;
  }

  else
  {
    v5 = *(v2 + 280);

    v4 = sub_10023C480;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10023C49C()
{
  v1 = *(v0 + 404);
  sub_10000B3A8(*(v0 + 200), &qword_1016975C8, &qword_10138C1F0);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 264);
    *(v0 + 400) = *(*(v0 + 208) + 24);
    *(v0 + 304) = sub_100B08164(&off_101608498);

    return _swift_task_switch(sub_10023C82C, v11, 0);
  }
}

uint64_t sub_10023C5CC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10023C638, v2, 0);
}

uint64_t sub_10023C638()
{
  v24 = v0;
  sub_10000B3A8(v0[25], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[37];
  v2 = v0[32];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[10];
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000136BC(v10, v11, &v23);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share request decline, cloud data update error %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  sub_1001118C8();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();

  v15 = v0[30];
  v14 = v0[31];
  v17 = v0[28];
  v16 = v0[29];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10023C82C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 400);
  v3 = *(v0 + 264);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  v9 = *(v7 + 16);
  *(v0 + 312) = v9;
  *(v0 + 320) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8 + v2, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 328) = v12;
  *(v12 + 16) = v3;
  (*(v7 + 32))(v12 + v10, v5, v6);
  *(v12 + v11) = v1;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 336) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_10023C9D4;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v15);
}

uint64_t sub_10023C9D4()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 264);
  v5 = *v0;

  return _swift_task_switch(sub_10023CB00, v3, 0);
}

uint64_t sub_10023CB00()
{
  v1 = v0[19];
  v0[43] = v0[15];
  return _swift_task_switch(sub_10023CB24, v1, 0);
}

uint64_t sub_10023CB24()
{
  v44 = v0;
  v1 = v0[43];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[27] + 80);
    sub_100243878(v1 + ((v3 + 32) & ~v3), v0[30], type metadata accessor for OwnerSharingCircle);
    v4 = v0[43];
    if (v2 == 1)
    {
      v5 = v0[43];
    }

    else
    {
      v16 = v0[32];
      sub_100243878(v0[17], v0[29], type metadata accessor for OwnerSharingCircle);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[43];
      v21 = v0[29];
      if (v19)
      {
        v22 = v0[26];
        v23 = v0[20];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43 = v25;
        *v24 = 141558531;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        v26 = *(v22 + 24);
        sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        sub_100243818(v21, type metadata accessor for OwnerSharingCircle);
        v30 = sub_1000136BC(v27, v29, &v43);

        *(v24 + 14) = v30;
        *(v24 + 22) = 2048;
        v31 = *(v1 + 16);

        *(v24 + 24) = v31;

        _os_log_impl(&_mh_execute_header, v17, v18, "Multiple UT owner circles found for beacon: %{private,mask.hash}s,\ncount: %ld.", v24, 0x20u);
        sub_100007BAC(v25);
      }

      else
      {
        v32 = v0[43];
        swift_bridgeObjectRelease_n();

        sub_100243818(v21, type metadata accessor for OwnerSharingCircle);
      }
    }

    v34 = v0[39];
    v33 = v0[40];
    v35 = v0[30];
    v37 = v0[19];
    v36 = v0[20];
    v38 = v0[18];
    v39 = *(v0[26] + 20);
    v0[5] = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
    v0[6] = sub_10024375C(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    v0[7] = sub_10024375C(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    v40 = sub_1000280DC(v0 + 2);
    v34(v40, v35 + v39, v36);
    v41 = *(type metadata accessor for OwnerPeerTrust() + 28);
    v42 = swift_task_alloc();
    v0[44] = v42;
    *v42 = v0;
    v42[1] = sub_10023CF50;

    return sub_10129B0F0(v37 + 120, (v0 + 2), 4, v38 + v41);
  }

  else
  {
    v6 = v0[43];

    v8 = v0[30];
    v7 = v0[31];
    v10 = v0[28];
    v9 = v0[29];
    v12 = v0[24];
    v11 = v0[25];
    v13 = v0[23];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10023CF50()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_10023D144;
  }

  else
  {
    v6 = *(v2 + 152);
    sub_100007BAC((v2 + 16));
    v5 = sub_10023D078;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10023D078()
{
  sub_100243818(v0[30], type metadata accessor for OwnerSharingCircle);
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10023D144()
{
  v28 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 256);
  sub_100007BAC((v0 + 16));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 360);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v27);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share request decline, message sending error %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v15 = *(v0 + 312);
  v14 = *(v0 + 320);
  v16 = *(v0 + 400);
  v17 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v15(&v17[v18[5]], v21 + v18[5], v20);
  v15(&v17[v18[6]], v21 + v16, v20);
  v22 = *(v21 + v18[7]);
  v23 = *(v21 + v18[8]);
  v24 = *(v21 + v18[9]);
  *v17 = xmmword_10138C660;
  v17[v18[7]] = v22;
  *&v17[v18[8]] = v23;
  v17[v18[9]] = v24;
  *(swift_task_alloc() + 16) = v17;

  sub_100EC0C48(sub_10024399C, v19);
  v25 = *(v0 + 264);

  return _swift_task_switch(sub_10023D454, v25, 0);
}

uint64_t sub_10023D47C()
{
  v1 = v0[46];
  v2 = v0[24];
  v3 = swift_task_alloc();
  v0[47] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_10023D574;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_10023D574()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_10023D7EC;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_10023D690;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10023D6AC()
{
  v1 = v0[45];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  sub_1001118C8();
  swift_allocError();
  *v5 = 3;
  swift_willThrow();

  sub_100243818(v2, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  sub_100243818(v3, type metadata accessor for OwnerSharingCircle);
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10023D7EC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_10023D858, v2, 0);
}

uint64_t sub_10023D858()
{
  v1 = v0[45];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[24];

  sub_100243818(v2, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  sub_100243818(v3, type metadata accessor for OwnerSharingCircle);
  v5 = v0[49];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10023D968(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(type metadata accessor for OwnerSharingCircle() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(type metadata accessor for OwnerPeerTrust() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MemberSharingCircle();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v2[19] = *(v14 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10023DBA0, v1, 0);
}

uint64_t sub_10023DBA0()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[22] = v6;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Force decline %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[6] + 112);
  v0[24] = v19;

  return _swift_task_switch(sub_10023DE04, v19, 0);
}

uint64_t sub_10023DE04()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_10023DEF0;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_10023DEF0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_10023E008, v2, 0);
}

uint64_t sub_10023E008()
{
  v1 = v0[6];
  v0[26] = v0[2];
  return _swift_task_switch(sub_10023E02C, v1, 0);
}

uint64_t sub_10023E02C()
{
  v1 = v0[26];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  *(swift_task_alloc() + 16) = v5;
  sub_1012BBB68(sub_100243674, v1, v4);

  v6 = (*(v3 + 48))(v4, 1, v2);
  v7 = v0[13];
  if (v6 == 1)
  {
    v8 = v0[24];
    sub_10000B3A8(v7, &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_10023E3EC, v8, 0);
  }

  else
  {
    sub_1002437B0(v7, v0[16], type metadata accessor for MemberSharingCircle);
    v9 = swift_task_alloc();
    v0[27] = v9;
    *v9 = v0;
    v9[1] = sub_10023E1E0;
    v10 = v0[16];
    v11 = v0[6];

    return sub_100238420(v10, 0, 1);
  }
}

uint64_t sub_10023E1E0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10023EB24;
  }

  else
  {
    v6 = sub_10023E30C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10023E30C()
{
  sub_100243818(v0[16], type metadata accessor for MemberSharingCircle);
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10023E3EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  (*(v0 + 176))(v3, *(v0 + 40), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 232) = v7;
  *(v7 + 16) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_10023E538;
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100243690, v7, v11);
}

uint64_t sub_10023E538()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_10023E664, v3, 0);
}

uint64_t sub_10023E664()
{
  v1 = v0[8];
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
    type metadata accessor for SPBeaconSharingError(0);
    v0[4] = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10024375C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = v0[3];
    swift_willThrow();
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[16];
    v8 = v0[12];
    v7 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];
    v18 = *(v2 + 48);
    v19 = *(v17 + 48);
    sub_1002437B0(v1, v16, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v1 + v18, v16 + v19, type metadata accessor for OwnerSharingCircle);
    v20 = *(v17 + 48);
    sub_1002437B0(v16, v14, type metadata accessor for OwnerPeerTrust);
    sub_1002437B0(v16 + v20, v15, type metadata accessor for OwnerSharingCircle);
    v21 = swift_task_alloc();
    v0[31] = v21;
    *v21 = v0;
    v21[1] = sub_10023E918;
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[6];

    return sub_10023EC04(v23, v22);
  }
}

uint64_t sub_10023E918()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10023EA28, v2, 0);
}

uint64_t sub_10023EA28()
{
  v1 = v0[12];
  sub_100243818(v0[11], type metadata accessor for OwnerSharingCircle);
  sub_100243818(v1, type metadata accessor for OwnerPeerTrust);
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023EB24()
{
  sub_100243818(v0[16], type metadata accessor for MemberSharingCircle);
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023EC04(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for UUID();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10023ED7C, v2, 0);
}

uint64_t sub_10023ED7C()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  v0[26] = sub_1000076D4(v3, qword_10177A560);
  sub_100243878(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = v0[21];
    v9 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v8 + 20);
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share request force decline. Delete %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100243818(v7, type metadata accessor for OwnerSharingCircle);
  }

  v17 = v0[20];
  v18 = v0[13];
  *(swift_task_alloc() + 16) = v18;
  sub_100EC0C48(sub_1002438E0, v17);
  v19 = v0[15];

  v20 = *(v19 + 112);
  v0[27] = v20;

  return _swift_task_switch(sub_10023F178, v20, 0);
}

uint64_t sub_10023F1A0()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_10023F298;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_10023F298()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_10023F470;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_10023F3B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10023F3D0()
{
  sub_10000B3A8(*(v0 + 160), &qword_1016975C8, &qword_10138C1F0);
  v1 = *(v0 + 168);
  v2 = *(*(v0 + 120) + 112);
  *(v0 + 256) = v2;
  *(v0 + 320) = *(v1 + 24);
  *(v0 + 264) = sub_100B08164(&off_1016084C0);

  return _swift_task_switch(sub_10023F69C, v2, 0);
}

uint64_t sub_10023F470()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10023F4DC, v2, 0);
}

uint64_t sub_10023F4DC()
{
  v17 = v0;
  sub_10000B3A8(*(v0 + 160), &qword_1016975C8, &qword_10138C1F0);
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000136BC(v10, v11, &v16);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Can't apply cloud changes %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
  }

  v13 = *(v0 + 168);
  v14 = *(*(v0 + 120) + 112);
  *(v0 + 256) = v14;
  *(v0 + 320) = *(v13 + 24);
  *(v0 + 264) = sub_100B08164(&off_1016084C0);

  return _swift_task_switch(sub_10023F69C, v14, 0);
}

uint64_t sub_10023F69C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 104);
  v9 = *(v7 + 16);
  *(v0 + 272) = v9;
  *(v0 + 280) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8 + v1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 288) = v12;
  *(v12 + 16) = v2;
  (*(v7 + 32))(v12 + v10, v5, v6);
  *(v12 + v11) = v3;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 296) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_10023F840;

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v12, v15);
}

uint64_t sub_10023F840()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return _swift_task_switch(sub_10023F96C, v3, 0);
}

uint64_t sub_10023F96C()
{
  v1 = v0[15];
  v0[38] = v0[11];
  return _swift_task_switch(sub_10023F990, v1, 0);
}

uint64_t sub_10023F990()
{
  v42 = v0;
  v1 = v0[38];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[22] + 80);
    sub_100243878(v1 + ((v3 + 32) & ~v3), v0[24], type metadata accessor for OwnerSharingCircle);
    v4 = v0[38];
    if (v2 == 1)
    {
      v5 = v0[38];
    }

    else
    {
      v14 = v0[26];
      sub_100243878(v0[13], v0[23], type metadata accessor for OwnerSharingCircle);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[38];
      v19 = v0[23];
      if (v17)
      {
        v20 = v0[21];
        v21 = v0[16];
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v41 = v23;
        *v22 = 141558531;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v24 = *(v20 + 24);
        sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        sub_100243818(v19, type metadata accessor for OwnerSharingCircle);
        v28 = sub_1000136BC(v25, v27, &v41);

        *(v22 + 14) = v28;
        *(v22 + 22) = 2048;
        v29 = *(v1 + 16);

        *(v22 + 24) = v29;

        _os_log_impl(&_mh_execute_header, v15, v16, "Multiple UT owner circles found for beacon: %{private,mask.hash}s,\ncount: %ld.", v22, 0x20u);
        sub_100007BAC(v23);
      }

      else
      {
        v30 = v0[38];
        swift_bridgeObjectRelease_n();

        sub_100243818(v19, type metadata accessor for OwnerSharingCircle);
      }
    }

    v32 = v0[34];
    v31 = v0[35];
    v33 = v0[24];
    v35 = v0[15];
    v34 = v0[16];
    v36 = v0[14];
    v37 = *(v0[21] + 20);
    v0[5] = type metadata accessor for CircleTrustDeclineEnvelopeV1(0);
    v0[6] = sub_10024375C(&qword_10169A610, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    v0[7] = sub_10024375C(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    v38 = sub_1000280DC(v0 + 2);
    v32(v38, v33 + v37, v34);
    v39 = *(type metadata accessor for OwnerPeerTrust() + 28);
    v40 = swift_task_alloc();
    v0[39] = v40;
    *v40 = v0;
    v40[1] = sub_10023FDA4;

    return sub_10129B0F0(v35 + 120, (v0 + 2), 4, v36 + v39);
  }

  else
  {
    v6 = v0[38];

    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[23];
    v11 = v0[19];
    v10 = v0[20];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10023FDA4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 120);

    v6 = sub_10023FF90;
    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 120);
    sub_100007BAC((v2 + 16));
    v6 = sub_10023FEE4;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10023FEE4()
{
  sub_100243818(v0[24], type metadata accessor for OwnerSharingCircle);
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10023FF90()
{
  sub_100243818(v0[24], type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100240044()
{
  v1[4] = v0;
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = async function pointer to unsafeBlocking<A>(_:)[1];
  v10 = swift_task_alloc();
  v1[16] = v10;
  *v10 = v1;
  v10[1] = sub_100240220;

  return unsafeBlocking<A>(_:)(v1 + 2, sub_10024119C, 0, &type metadata for Double);
}

uint64_t sub_100240220()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100240330, v2, 0);
}

uint64_t sub_100240330()
{
  v1 = v0[4];
  v0[17] = v0[2];
  v2 = *(v1 + 112);
  v0[18] = v2;
  return _swift_task_switch(sub_10024035C, v2, 0);
}

uint64_t sub_10024035C()
{
  v1 = *(v0 + 144);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_100240448;
  v5 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_100240448()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_100240560, v2, 0);
}

uint64_t sub_100240560()
{
  v1 = v0[4];
  v0[20] = v0[3];
  return _swift_task_switch(sub_100240580, v1, 0);
}

uint64_t sub_100240580()
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = *(v1 + 48);
    v63 = (v7 + 48);
    v64 = (v7 + 56);
    v59 = (v7 + 8);
    v60 = (v7 + 16);
    v61 = _swiftEmptyArrayStorage;
    v62 = *(v1 + 160);
    v65 = v6;
    v66 = v5;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v8 = *(v1 + 120);
      v0 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v9 = *(v6 + 72);
      sub_100243878(v0 + *(v1 + 160) + v9 * v4, v8, type metadata accessor for MemberSharingCircle);
      v10 = *(v8 + *(v5 + 40));
      v11 = v10 > 4;
      v12 = (1 << v10) & 0x16;
      if (v11 || v12 == 0)
      {
        v14 = v3;
        v15 = *(v1 + 120);
        v16 = objc_autoreleasePoolPush();
        sub_1011224E4(v15);
        v18 = v17;
        objc_autoreleasePoolPop(v16);
        v19 = [v18 creationDate];
        if (v19)
        {
          v20 = *(v1 + 64);
          v21 = v19;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v24 = *(v1 + 64);
        v23 = *(v1 + 72);
        v25 = *(v1 + 40);
        (*v64)(v24, v22, 1, v25);
        sub_1000D2AD8(v24, v23, &unk_101696900, &unk_10138B1E0);
        if ((*v63)(v23, 1, v25))
        {
          v26 = *(v1 + 72);

          sub_10000B3A8(v26, &unk_101696900, &unk_10138B1E0);
          v3 = v14;
          v2 = v62;
          v6 = v65;
          v5 = v66;
        }

        else
        {
          v27 = *(v1 + 136);
          v28 = *(v1 + 72);
          v29 = *(v1 + 56);
          v30 = *(v1 + 40);
          (*v60)(v29, v28, v30);
          sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
          Date.timeIntervalSinceNow.getter();
          v32 = v31;
          (*v59)(v29, v30);

          v3 = v14;
          v2 = v62;
          v6 = v65;
          v5 = v66;
          if (v27 <= fabs(v32))
          {
            sub_1002437B0(*(v1 + 120), *(v1 + 112), type metadata accessor for MemberSharingCircle);
            v33 = v61;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_101123FA0(0, v61[2] + 1, 1);
              v33 = v61;
            }

            v35 = v33[2];
            v34 = v33[3];
            if (v35 >= v34 >> 1)
            {
              sub_101123FA0(v34 > 1, v35 + 1, 1);
              v33 = v61;
            }

            v36 = *(v1 + 112);
            v33[2] = v35 + 1;
            v61 = v33;
            sub_1002437B0(v36, v0 + v33 + v35 * v9, type metadata accessor for MemberSharingCircle);
            v5 = v66;
            goto LABEL_9;
          }
        }
      }

      sub_100243818(*(v1 + 120), type metadata accessor for MemberSharingCircle);
LABEL_9:
      if (v3 == ++v4)
      {
        v37 = *(v1 + 160);
        v0 = v61;
        goto LABEL_23;
      }
    }
  }

  v0 = _swiftEmptyArrayStorage;
LABEL_23:
  *(v1 + 168) = v0;

  if (qword_101694480 != -1)
  {
LABEL_35:
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  *(v1 + 176) = sub_1000076D4(v38, qword_10177A560);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v0[2];

    _os_log_impl(&_mh_execute_header, v39, v40, "Found %ld of expired member circles.", v41, 0xCu);
  }

  else
  {
  }

  v42 = v0[2];
  *(v1 + 184) = v42;
  if (v42)
  {
    v44 = *(v1 + 80);
    v43 = *(v1 + 88);
    v45 = *(v43 + 80);
    *(v1 + 224) = v45;
    *(v1 + 192) = *(v43 + 72);
    *(v1 + 200) = 0;
    v46 = *(v1 + 104);
    sub_100243878(*(v1 + 168) + ((v45 + 32) & ~v45), v46, type metadata accessor for MemberSharingCircle);
    v47 = *(v44 + 28);
    v48 = swift_task_alloc();
    *(v1 + 208) = v48;
    *v48 = v1;
    v48[1] = sub_100240B70;
    v49 = *(v1 + 32);

    return sub_100237320(v46 + v47, 0);
  }

  else
  {

    v52 = *(v1 + 112);
    v51 = *(v1 + 120);
    v54 = *(v1 + 96);
    v53 = *(v1 + 104);
    v56 = *(v1 + 64);
    v55 = *(v1 + 72);
    v57 = *(v1 + 56);

    v58 = *(v1 + 8);

    return v58();
  }
}

uint64_t sub_100240B70()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100240E44;
  }

  else
  {
    v6 = sub_100240C9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100240C9C()
{
  sub_100243818(*(v0 + 104), type metadata accessor for MemberSharingCircle);
  v1 = *(v0 + 200) + 1;
  if (v1 == *(v0 + 184))
  {
    v2 = *(v0 + 168);

    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 200) = v1;
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    sub_100243878(*(v0 + 168) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 192) * v1, v12, type metadata accessor for MemberSharingCircle);
    v14 = *(v13 + 28);
    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_100240B70;
    v16 = *(v0 + 32);

    return sub_100237320(v12 + v14, 0);
  }
}

uint64_t sub_100240E44()
{
  v36 = v0;
  v1 = *(v0 + 176);
  sub_100243878(*(v0 + 104), *(v0 + 96), type metadata accessor for MemberSharingCircle);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 216);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  if (v4)
  {
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 28);
    type metadata accessor for UUID();
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v6;
    v14 = v13;
    sub_100243818(v7, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v35);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to decline expired share with identifier: %s", v9, 0xCu);
    sub_100007BAC(v10);

    v16 = v34;
  }

  else
  {
    v17 = *(v0 + 216);

    sub_100243818(v7, type metadata accessor for MemberSharingCircle);
    v16 = v6;
  }

  sub_100243818(v16, type metadata accessor for MemberSharingCircle);
  v18 = *(v0 + 200) + 1;
  if (v18 == *(v0 + 184))
  {
    v19 = *(v0 + 168);

    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v23 = *(v0 + 96);
    v22 = *(v0 + 104);
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    v26 = *(v0 + 56);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    *(v0 + 200) = v18;
    v29 = *(v0 + 104);
    v30 = *(v0 + 80);
    sub_100243878(*(v0 + 168) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 192) * v18, v29, type metadata accessor for MemberSharingCircle);
    v31 = *(v30 + 28);
    v32 = swift_task_alloc();
    *(v0 + 208) = v32;
    *v32 = v0;
    v32[1] = sub_100240B70;
    v33 = *(v0 + 32);

    return sub_100237320(v29 + v31, 0);
  }
}

uint64_t sub_10024119C@<X0>(void *a1@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074BD0(v6);
  v4 = v3;

  *a1 = v4;
  return result;
}

uint64_t sub_100241254()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v1[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002413CC, v0, 0);
}

uint64_t sub_1002413CC()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1002413F0, v1, 0);
}

uint64_t sub_1002413F0()
{
  v1 = *(v0 + 120);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1002414DC;
  v5 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_1002414DC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1002415F4, v2, 0);
}

uint64_t sub_1002415F4()
{
  v1 = v0[3];
  v0[17] = v0[2];
  return _swift_task_switch(sub_100241614, v1, 0);
}

uint64_t sub_100241614()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  if (v2)
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v3 + 80);
    *(v0 + 216) = v5;
    *(v0 + 152) = *(v3 + 72);
    *(v0 + 160) = 0;
    v6 = *(v0 + 120);
    sub_100243878(v1 + ((v5 + 32) & ~v5), *(v0 + 112), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v4 + 24);

    return _swift_task_switch(sub_100241740, v6, 0);
  }

  else
  {

    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100241740()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 112) + *(v0 + 220), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 168) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_10024189C;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100242D58, v6, v10);
}

uint64_t sub_10024189C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1002419C8, v3, 0);
}

uint64_t sub_1002419C8()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    goto LABEL_10;
  }

  v3 = *(v1 + *(v2 + 64));
  sub_100243818(v1, type metadata accessor for SharedBeaconRecord);
  if (v3 != 2)
  {
    sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
LABEL_10:
    v8 = *(v0 + 160) + 1;
    if (v8 == *(v0 + 144))
    {
      v9 = *(v0 + 136);

      v11 = *(v0 + 104);
      v10 = *(v0 + 112);
      v12 = *(v0 + 96);
      v13 = *(v0 + 72);
      v14 = *(v0 + 56);

      v15 = *(v0 + 8);

      return v15();
    }

    else
    {
      *(v0 + 160) = v8;
      v16 = *(v0 + 120);
      v17 = *(v0 + 80);
      sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v8, *(v0 + 112), type metadata accessor for MemberSharingCircle);
      *(v0 + 220) = *(v17 + 24);

      return _swift_task_switch(sub_100241740, v16, 0);
    }
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v4 = qword_10177B2E8;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_100241C94;
  v6 = *(v0 + 112);

  return sub_100242D84(v6, v4);
}

uint64_t sub_100241C94(char a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_100241DAC, v3, 0);
}

uint64_t sub_100241DAC()
{
  v33 = v0;
  if (*(v0 + 224))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
    v3 = type metadata accessor for Logger();
    *(v0 + 192) = sub_1000076D4(v3, qword_10177A560);
    sub_100243878(v2, v1, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 104);
    if (v6)
    {
      v8 = *(v0 + 80);
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v8 + 28);
      sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_100243818(v7, type metadata accessor for MemberSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v32);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found %{private,mask.hash}s, expired tentatively revoked member circle.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100243818(v7, type metadata accessor for MemberSharingCircle);
    }

    v26 = *(v0 + 112);
    v27 = *(*(v0 + 80) + 28);
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_10024218C;
    v29 = *(v0 + 24);

    return sub_100237320(v26 + v27, 0);
  }

  else
  {
    sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
    v17 = *(v0 + 160) + 1;
    if (v17 == *(v0 + 144))
    {
      v18 = *(v0 + 136);

      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 96);
      v22 = *(v0 + 72);
      v23 = *(v0 + 56);

      v24 = *(v0 + 8);

      return v24();
    }

    else
    {
      *(v0 + 160) = v17;
      v30 = *(v0 + 120);
      v31 = *(v0 + 80);
      sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v17, *(v0 + 112), type metadata accessor for MemberSharingCircle);
      *(v0 + 220) = *(v31 + 24);

      return _swift_task_switch(sub_100241740, v30, 0);
    }
  }
}

uint64_t sub_10024218C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100242408;
  }

  else
  {
    v6 = sub_1002422B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002422B8()
{
  sub_100243818(*(v0 + 112), type metadata accessor for MemberSharingCircle);
  v1 = *(v0 + 160) + 1;
  if (v1 == *(v0 + 144))
  {
    v2 = *(v0 + 136);

    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 160) = v1;
    v10 = *(v0 + 120);
    v11 = *(v0 + 80);
    sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v1, *(v0 + 112), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v11 + 24);

    return _swift_task_switch(sub_100241740, v10, 0);
  }
}

uint64_t sub_100242408()
{
  v32 = v0;
  v1 = *(v0 + 192);
  sub_100243878(*(v0 + 112), *(v0 + 96), type metadata accessor for MemberSharingCircle);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 208);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  if (v4)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    v12 = *(v8 + 28);
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v6;
    v15 = v14;
    sub_100243818(v7, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v31);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to decline expired tentatively revoked share with identifier: %s", v10, 0xCu);
    sub_100007BAC(v11);

    v17 = v30;
  }

  else
  {
    v18 = *(v0 + 208);

    sub_100243818(v7, type metadata accessor for MemberSharingCircle);
    v17 = v6;
  }

  sub_100243818(v17, type metadata accessor for MemberSharingCircle);
  v19 = *(v0 + 160) + 1;
  if (v19 == *(v0 + 144))
  {
    v20 = *(v0 + 136);

    v22 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 96);
    v24 = *(v0 + 72);
    v25 = *(v0 + 56);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    *(v0 + 160) = v19;
    v28 = *(v0 + 120);
    v29 = *(v0 + 80);
    sub_100243878(*(v0 + 136) + ((*(v0 + 216) + 32) & ~*(v0 + 216)) + *(v0 + 152) * v19, *(v0 + 112), type metadata accessor for MemberSharingCircle);
    *(v0 + 220) = *(v29 + 24);

    return _swift_task_switch(sub_100241740, v28, 0);
  }
}

uint64_t sub_100242714()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 15);
  sub_100007BAC(v0 + 20);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100242780(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v52 = a2;
  v5 = type metadata accessor for MemberPeerTrust();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v5 - 8);
  v50 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for BeaconNamingRecord();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v13 = *(*(v12 - 1) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = type metadata accessor for SharedBeaconRecord(0);
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  __chkstk_darwin(v19);
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v56;
  sub_100D45CB0(a3);
  if (!v23)
  {
    v48 = v11;
    v49 = a1;
    v24 = v22;
    v46 = v16;
    v47 = a3;
    v56 = 0;
    sub_1000D2A70(a3, v18, &qword_10169A608, &unk_1013BCC20);
    v25 = v12[12];
    v26 = v12[16];
    v27 = *&v18[v12[20]];

    v28 = *&v18[v12[24]];

    v29 = v12;
    if ((*(v53 + 48))(&v18[v25], 1, v19) == 1)
    {
      sub_10000B3A8(&v18[v26], &unk_1016B29E0, &unk_1013B70E0);
      sub_10000B3A8(&v18[v25], &unk_101698C30, &unk_101392630);
      sub_100243818(v18, type metadata accessor for MemberSharingCircle);
      v30 = v48;
      v32 = v54;
      v31 = v55;
    }

    else
    {
      sub_1002437B0(&v18[v25], v24, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(&v18[v26], &unk_1016B29E0, &unk_1013B70E0);
      sub_100243818(v18, type metadata accessor for MemberSharingCircle);
      v33 = v56;
      sub_100D458E8(v24);
      sub_100243818(v24, type metadata accessor for SharedBeaconRecord);
      v30 = v48;
      v32 = v54;
      v31 = v55;
      if (v33)
      {
        return;
      }

      v56 = 0;
    }

    v35 = v46;
    v34 = v47;
    sub_1000D2A70(v47, v46, &qword_10169A608, &unk_1013BCC20);
    v36 = v12[12];
    v37 = v29[16];
    v38 = *(v35 + v29[20]);

    v39 = *(v35 + v29[24]);

    if ((*(v32 + 48))(v35 + v37, 1, v31) == 1)
    {
      sub_10000B3A8(v35 + v37, &unk_1016B29E0, &unk_1013B70E0);
      sub_10000B3A8(v35 + v36, &unk_101698C30, &unk_101392630);
      sub_100243818(v35, type metadata accessor for MemberSharingCircle);
      v40 = v56;
    }

    else
    {
      sub_1002437B0(v35 + v37, v30, type metadata accessor for BeaconNamingRecord);
      sub_10000B3A8(v35 + v36, &unk_101698C30, &unk_101392630);
      sub_100243818(v35, type metadata accessor for MemberSharingCircle);
      v40 = v56;
      sub_100D4555C(v30);
      sub_100243818(v30, type metadata accessor for BeaconNamingRecord);
      if (v40)
      {
        return;
      }
    }

    sub_1001BA354(*(v34 + v29[20]));
    v42 = v50;
    v41 = v51;
    if (!v40)
    {
      v43 = *(v34 + v29[24]);
      v44 = *(v43 + 16);
      if (v44)
      {
        v45 = 0;
        while (v45 < *(v43 + 16))
        {
          sub_100243878(v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v45, v42, type metadata accessor for MemberPeerTrust);
          sub_100D46078(v42);
          ++v45;
          sub_100243818(v42, type metadata accessor for MemberPeerTrust);
          if (v44 == v45)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_100242D84(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2[8] = a1;
  v2[9] = v5;
  v6 = type metadata accessor for MemberSharingCircle();
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = type metadata accessor for BeaconObservation();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[5] = v5;
  v2[6] = &off_101613BE0;
  v2[2] = a2;

  v14 = swift_task_alloc();
  v2[22] = v14;
  *v14 = v2;
  v14[1] = sub_100242F84;

  return sub_101083CAC(a1);
}

uint64_t sub_100242F84(char a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_100243084, 0, 0);
}

uint64_t sub_100243084()
{
  v64 = v0;
  if (*(v0 + 184))
  {
    v1 = 1;
    goto LABEL_11;
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if (*(v3 + *(v2 + 40)) != 4)
  {
    goto LABEL_10;
  }

  v4 = sub_1000035D0((v0 + 16), *(v0 + 72));
  v5 = *(v2 + 24);
  v6 = *v4;
  v7 = sub_100035730(v3 + v5, sub_1000BB4A4, 0);
  if (!v7[2])
  {

    goto LABEL_10;
  }

  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(*(v0 + 104) + 80);
  sub_100243878(v7 + ((v15 + 32) & ~v15), v13, type metadata accessor for BeaconObservation);

  v16 = *(v12 + 16);
  v16(v9, v13 + *(v14 + 20), v11);
  sub_100243818(v13, type metadata accessor for BeaconObservation);
  (*(v12 + 32))(v8, v9, v11);
  static Date.trustedNow.getter(v10);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v10, v11);
  if (qword_1016951C8 != -1)
  {
    swift_once();
  }

  if (*&qword_1016C5380 > v18)
  {
    goto LABEL_8;
  }

  v29 = *(v0 + 144);
  v30 = *(v0 + 64);
  v31 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v30, v29);
  objc_autoreleasePoolPop(v31);
  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = *(v0 + 120);
  v35 = static Date.> infix(_:_:)();
  v19(v33, v34);
  if ((v35 & 1) == 0)
  {
LABEL_8:
    v19(*(v0 + 168), *(v0 + 120));
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v61 = *(v0 + 168);
  v36 = *(v0 + 136);
  v37 = *(v0 + 120);
  v38 = *(v0 + 88);
  v39 = *(v0 + 64);
  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177A560);
  sub_100243878(v39, v38, type metadata accessor for MemberSharingCircle);
  v16(v36, v61, v37);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 168);
  v45 = *(v0 + 136);
  v46 = *(v0 + 120);
  v47 = *(v0 + 88);
  if (v43)
  {
    v62 = *(v0 + 168);
    v48 = *(v0 + 80);
    v49 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v49 = 141558531;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    v50 = *(v48 + 28);
    type metadata accessor for UUID();
    v60 = v42;
    sub_10024375C(&qword_101696930, &type metadata accessor for UUID);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    sub_100243818(v47, type metadata accessor for MemberSharingCircle);
    v54 = sub_1000136BC(v51, v53, v63);

    *(v49 + 14) = v54;
    *(v49 + 22) = 2082;
    sub_10024375C(&qword_1016969A0, &type metadata accessor for Date);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v19(v45, v46);
    v58 = sub_1000136BC(v55, v57, v63);

    *(v49 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v41, v60, "    Delete share %{private,mask.hash}s,\n    tentativelyRevoked since %{public}s.", v49, 0x20u);
    swift_arrayDestroy();

    v59 = v62;
  }

  else
  {

    v19(v45, v46);
    sub_100243818(v47, type metadata accessor for MemberSharingCircle);
    v59 = v44;
  }

  v19(v59, v46);
  v1 = 1;
LABEL_11:
  v21 = *(v0 + 160);
  v20 = *(v0 + 168);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v26 = *(v0 + 88);
  sub_100007BAC((v0 + 16));

  v27 = *(v0 + 8);

  return v27(v1);
}

uint64_t sub_10024375C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002437B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100243818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100243878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024390C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t type metadata accessor for AccessoryUnpairEndpoint()
{
  result = qword_10169A678;
  if (!qword_10169A678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100243A84()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.path.setter();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100243C4C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A5F0);
  sub_1000076D4(v0, qword_10177A5F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100243CCC(uint64_t a1)
{
  v14 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1002452E4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 16) = v14;
  *(v1 + 24) = v11;
  return v1;
}

uint64_t sub_100243F38()
{
  v1 = *v0;
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100243FF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v25 = *(v16 - 8);
  v26 = v16;
  v17 = *(v25 + 64);
  __chkstk_darwin(v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(a2 + 24);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a1;
  v20[7] = a6;
  aBlock[4] = sub_10024522C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101614190;
  v21 = _Block_copy(aBlock);

  v22 = a3;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1002452E4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v27 + 8))(v15, v12);
  (*(v25 + 8))(v19, v26);
}

uint64_t sub_1002442EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v110 = a5;
  v105 = a3;
  v106 = a4;
  v104 = a2;
  v6 = type metadata accessor for PairingError(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for PairingErrorRecord(0);
  v103 = *(v111 - 8);
  v10 = *(v103 + 64);
  v11 = __chkstk_darwin(v111);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v96 - v15;
  __chkstk_darwin(v14);
  v18 = &v96 - v17;
  v19 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v96 - v21;
  v23 = type metadata accessor for DirectorySequence();
  v99 = *(v23 - 8);
  v100 = v23;
  v24 = *(v99 + 64);
  __chkstk_darwin(v23);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v96 - v34;
  v36 = *(a1 + 16);
  v96 = *(v36 + 168);
  if (qword_101694E68 != -1)
  {
    v114 = v33;
    swift_once();
    v33 = v114;
  }

  v98 = v18;
  v112 = v36;
  v107 = v13;
  v108 = v16;
  v109 = v9;
  v37 = v33;
  v38 = sub_1000076D4(v33, qword_10177C048);
  v39 = v28[2];
  v97 = v38;
  v39(v35);
  v115 = _swiftEmptyArrayStorage;
  v116[0] = _swiftEmptyArrayStorage;
  v40 = [objc_opt_self() defaultManager];
  v101 = v35;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v42 = v28 + 6;
  v41 = v28[6];
  v43 = v37;
  v44 = v41(v22, 1, v37);
  v102 = v28;
  if (v44 != 1)
  {
    v113 = v28[4];
    v114 = v28 + 4;
    v45 = (v28 + 1);
    v46 = v96;
    do
    {
      v113(v32, v22, v43);
      v47 = v42;
      v48 = v41;
      v49 = objc_autoreleasePoolPush();
      sub_1005FD5CC(v32, v46, v116, &v115);
      objc_autoreleasePoolPop(v49);
      (*v45)(v32, v43);
      DirectorySequence.next()();
      v41 = v48;
      v42 = v47;
    }

    while (v41(v22, 1, v43) != 1);
  }

  (*(v99 + 8))(v26, v100);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v50 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10138BBE0;
  v52 = v116[0];
  v53 = v116[0][2];
  *(v51 + 56) = &type metadata for Int;
  *(v51 + 64) = &protocol witness table for Int;
  *(v51 + 32) = v53;
  sub_1002452E4(&qword_1016B14E0, &type metadata accessor for URL);

  v54 = v101;
  v55 = dispatch thunk of CustomStringConvertible.description.getter();
  v57 = v56;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = sub_100008C00();
  *(v51 + 72) = v55;
  *(v51 + 80) = v57;
  os_log(_:dso:log:_:_:)();

  (v102[1])(v54, v43);

  v116[0] = v52;

  sub_10024523C(v116);

  v58 = v116[0];
  v59 = v116[0][2];
  if (v59 >= 5)
  {
    v60 = *(v103 + 80);
    if (qword_1016944E0 != -1)
    {
      swift_once();
    }

    v61 = (v60 + 32) & ~v60;
    v62 = type metadata accessor for Logger();
    sub_1000076D4(v62, qword_10177A5F0);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v116[0] = v66;
      *v65 = 136315138;
      v67 = ArraySlice.description.getter();
      v69 = v61;
      v70 = sub_1000136BC(v67, v68, v116);

      *(v65 + 4) = v70;
      v61 = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "Pruning %s.", v65, 0xCu);
      sub_100007BAC(v66);
    }

    v71 = *(v103 + 72);
    v72 = v59 - 4;
    v114 = v58;
    v73 = v58 + 4 * v71 + v61;
    v74 = v98;
    v75 = v97;
    v76 = v112;
    do
    {
      v77 = sub_10024534C(v73, v74, type metadata accessor for PairingErrorRecord);
      v78 = *(*(v76 + 168) + 16);
      __chkstk_darwin(v77);
      *(&v96 - 4) = v79;
      *(&v96 - 3) = v74;
      *(&v96 - 2) = v75;
      OS_dispatch_queue.sync<A>(execute:)();
      sub_1002453BC(v74, type metadata accessor for PairingErrorRecord);
      v73 += v71;
      --v72;
    }

    while (v72);
  }

  v80 = v106;

  v81 = v104;
  v82 = v109;
  sub_100D573E4(v81, v105, v80, v109);
  v83 = v108;
  UUID.init()();
  sub_10024534C(v82, v83 + *(v111 + 20), type metadata accessor for PairingError);
  v84 = v107;
  if (qword_1016944E0 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  sub_1000076D4(v85, qword_10177A5F0);
  sub_10024534C(v83, v84, type metadata accessor for PairingErrorRecord);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v116[0] = v89;
    *v88 = 136315138;
    v90 = sub_100D58C48();
    v92 = v91;
    sub_1002453BC(v84, type metadata accessor for PairingErrorRecord);
    v93 = sub_1000136BC(v90, v92, v116);

    *(v88 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v86, v87, "Saving %s.", v88, 0xCu);
    sub_100007BAC(v89);
  }

  else
  {

    sub_1002453BC(v84, type metadata accessor for PairingErrorRecord);
  }

  v94 = v110;

  sub_100D76454(v83, sub_1002453B4, v94);

  sub_1002453BC(v83, type metadata accessor for PairingErrorRecord);
  return sub_1002453BC(v82, type metadata accessor for PairingError);
}

void sub_100244D80(uint64_t a1)
{
  v2 = type metadata accessor for PairingErrorRecord(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = sub_1000BC4D4(&qword_10169A760, &unk_101393E60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v31 - v11);
  Transaction.capture()();
  sub_10024541C(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1016944E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177A5F0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v13;
      v32 = v18;
      *v17 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v32);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save PairingErrorRecord. Error %s.", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {
    }
  }

  else
  {
    sub_10024548C(v12, v8);
    if (qword_1016944E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177A5F0);
    sub_10024534C(v8, v6, type metadata accessor for PairingErrorRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v27 = sub_100D58C48();
      v29 = v28;
      sub_1002453BC(v6, type metadata accessor for PairingErrorRecord);
      v30 = sub_1000136BC(v27, v29, &v32);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Saved: %s.", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_1002453BC(v6, type metadata accessor for PairingErrorRecord);
    }

    sub_1002453BC(v8, type metadata accessor for PairingErrorRecord);
  }
}

uint64_t sub_1002451A4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_10024523C(void **a1)
{
  v2 = *(type metadata accessor for PairingErrorRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32048(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1002454F0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1002452E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024532C@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100B2AABC(a1);
}

uint64_t sub_10024534C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002453BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024541C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A760, &unk_101393E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024548C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingErrorRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1002454F0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PairingErrorRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PairingErrorRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100245870(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10024561C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10024561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PairingErrorRecord(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v39 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v37 = -v20;
    v38 = v19;
    v22 = a1 - a3;
    v31 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v35 = v21;
    v36 = a3;
    v33 = v23;
    v34 = v22;
    v24 = v21;
    while (1)
    {
      sub_10024534C(v23, v18, type metadata accessor for PairingErrorRecord);
      sub_10024534C(v24, v14, type metadata accessor for PairingErrorRecord);
      v25 = *(v8 + 20);
      v26 = &v18[v25 + *(type metadata accessor for PairingError(0) + 24)];
      v27 = Date.compare(_:)();
      sub_1002453BC(v14, type metadata accessor for PairingErrorRecord);
      result = sub_1002453BC(v18, type metadata accessor for PairingErrorRecord);
      if (v27 != 1)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v22 = v34 - 1;
        v23 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_10024548C(v23, v39);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10024548C(v28, v24);
      v24 += v37;
      v23 += v37;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100245870(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v111 = a1;
  v7 = type metadata accessor for PairingErrorRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v115 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v122 = &v106 - v13;
  v14 = __chkstk_darwin(v12);
  v124 = &v106 - v15;
  result = __chkstk_darwin(v14);
  v123 = &v106 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_97:
    v4 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    v19 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    v8 = v119;
    if (result)
    {
LABEL_99:
      v126 = v20;
      v102 = *(v20 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v20[16 * v102];
          v104 = *&v20[16 * v102 + 24];
          sub_10024619C(*a3 + *(v19 + 72) * v103, *a3 + *(v19 + 72) * *&v20[16 * v102 + 16], *a3 + *(v19 + 72) * v104, v4);
          if (v8)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_100B31E68(v20);
          }

          if (v102 - 2 >= *(v20 + 2))
          {
            goto LABEL_123;
          }

          v105 = &v20[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          v126 = v20;
          result = sub_100B31DDC(v102 - 1);
          v20 = v126;
          v102 = *(v126 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(v20);
    v20 = result;
    goto LABEL_99;
  }

  v108 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v112 = v8;
  v125 = v7;
  v109 = a3;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v37 = v19 + 1;
    }

    else
    {
      v120 = v18;
      v22 = *(v8 + 72);
      v4 = *a3 + v22 * (v19 + 1);
      v116 = *a3;
      v23 = v116;
      v24 = v123;
      sub_10024534C(v4, v123, type metadata accessor for PairingErrorRecord);
      v25 = v23 + v22 * v19;
      v26 = v124;
      sub_10024534C(v25, v124, type metadata accessor for PairingErrorRecord);
      v27 = *(v7 + 20);
      v117 = type metadata accessor for PairingError(0);
      v28 = v24 + v27 + *(v117 + 24);
      v118 = Date.compare(_:)();
      sub_1002453BC(v26, type metadata accessor for PairingErrorRecord);
      result = sub_1002453BC(v24, type metadata accessor for PairingErrorRecord);
      v110 = v19;
      v29 = v19 + 2;
      v121 = v22;
      v30 = v116 + v22 * (v19 + 2);
      while (v120 != v29)
      {
        v31 = v20;
        v32 = v118 == 1;
        v19 = v123;
        sub_10024534C(v30, v123, type metadata accessor for PairingErrorRecord);
        v33 = v124;
        sub_10024534C(v4, v124, type metadata accessor for PairingErrorRecord);
        v34 = v19 + *(v125 + 20) + *(v117 + 24);
        v35 = Date.compare(_:)();
        sub_1002453BC(v33, type metadata accessor for PairingErrorRecord);
        result = sub_1002453BC(v19, type metadata accessor for PairingErrorRecord);
        v36 = v32 ^ (v35 != 1);
        v20 = v31;
        ++v29;
        v30 += v121;
        v4 += v121;
        if ((v36 & 1) == 0)
        {
          v37 = v29 - 1;
          v7 = v125;
          goto LABEL_11;
        }
      }

      v7 = v125;
      v37 = v120;
LABEL_11:
      a3 = v109;
      v21 = v110;
      v8 = v112;
      if (v118 == 1)
      {
        if (v37 < v110)
        {
          goto LABEL_126;
        }

        if (v110 < v37)
        {
          v107 = v20;
          v38 = v121 * (v37 - 1);
          v4 = v37 * v121;
          v19 = v37;
          v39 = v110 * v121;
          do
          {
            if (v21 != --v37)
            {
              v40 = a3;
              v41 = *a3;
              if (!v41)
              {
                goto LABEL_132;
              }

              sub_10024548C(v41 + v39, v115);
              if (v39 < v38 || v41 + v39 >= (v41 + v4))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10024548C(v115, v41 + v38);
              a3 = v40;
              v8 = v112;
            }

            ++v21;
            v38 -= v121;
            v4 -= v121;
            v39 += v121;
          }

          while (v21 < v37);
          v20 = v107;
          v7 = v125;
          v21 = v110;
          v37 = v19;
        }
      }
    }

    v42 = a3[1];
    if (v37 >= v42)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v37, v21))
    {
      goto LABEL_125;
    }

    if (v37 - v21 >= v108)
    {
LABEL_34:
      v19 = v37;
      if (v37 < v21)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v21, v108))
    {
      goto LABEL_127;
    }

    if (v21 + v108 >= v42)
    {
      v19 = a3[1];
    }

    else
    {
      v19 = v21 + v108;
    }

    if (v19 < v21)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v37 == v19)
    {
      goto LABEL_34;
    }

    v107 = v20;
    v90 = *a3;
    v91 = *(v8 + 72);
    v4 = *a3 + v91 * (v37 - 1);
    v92 = -v91;
    v110 = v21;
    v93 = v21 - v37;
    v121 = v90;
    v113 = v91;
    v114 = v19;
    v94 = v90 + v37 * v91;
LABEL_87:
    v120 = v37;
    v116 = v94;
    v117 = v93;
    v118 = v4;
LABEL_88:
    v95 = v123;
    sub_10024534C(v94, v123, type metadata accessor for PairingErrorRecord);
    v96 = v124;
    sub_10024534C(v4, v124, type metadata accessor for PairingErrorRecord);
    v97 = *(v7 + 20);
    v98 = v95 + v97 + *(type metadata accessor for PairingError(0) + 24);
    v99 = Date.compare(_:)();
    sub_1002453BC(v96, type metadata accessor for PairingErrorRecord);
    result = sub_1002453BC(v95, type metadata accessor for PairingErrorRecord);
    if (v99 == 1)
    {
      break;
    }

    v7 = v125;
LABEL_86:
    v37 = v120 + 1;
    v19 = v114;
    v4 = v118 + v113;
    v93 = v117 - 1;
    v94 = v116 + v113;
    if (v120 + 1 != v114)
    {
      goto LABEL_87;
    }

    a3 = v109;
    v21 = v110;
    v8 = v112;
    v20 = v107;
    if (v114 < v110)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v44 = *(v20 + 2);
    v43 = *(v20 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_100A5B430((v43 > 1), v44 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v45;
    v46 = &v20[16 * v44];
    *(v46 + 4) = v21;
    *(v46 + 5) = v19;
    v47 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (v44)
    {
      while (2)
      {
        v4 = v45 - 1;
        if (v45 >= 4)
        {
          v52 = &v20[16 * v45 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v20[16 * v45];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v20[16 * v4 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v4 = v45 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v20[16 * v45];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v20[16 * v4 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_68;
            }

            if (v50 < v73)
            {
              v4 = v45 - 2;
            }
          }
        }

        else
        {
          if (v45 == 3)
          {
            v48 = *(v20 + 4);
            v49 = *(v20 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_54;
          }

          v74 = &v20[16 * v45];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_68:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v20[16 * v4];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        v85 = v4 - 1;
        if (v4 - 1 >= v45)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v86 = *&v20[16 * v85 + 32];
        v87 = *&v20[16 * v4 + 40];
        v88 = v119;
        sub_10024619C(*a3 + *(v8 + 72) * v86, *a3 + *(v8 + 72) * *&v20[16 * v4 + 32], *a3 + *(v8 + 72) * v87, v47);
        v119 = v88;
        if (v88)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100B31E68(v20);
        }

        if (v85 >= *(v20 + 2))
        {
          goto LABEL_110;
        }

        v89 = &v20[16 * v85];
        *(v89 + 4) = v86;
        *(v89 + 5) = v87;
        v126 = v20;
        result = sub_100B31DDC(v4);
        v20 = v126;
        v45 = *(v126 + 2);
        if (v45 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v7 = v125;
    if (v19 >= v18)
    {
      goto LABEL_97;
    }
  }

  if (v121)
  {
    v100 = v122;
    sub_10024548C(v94, v122);
    v7 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_10024548C(v100, v4);
    v4 += v92;
    v94 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}