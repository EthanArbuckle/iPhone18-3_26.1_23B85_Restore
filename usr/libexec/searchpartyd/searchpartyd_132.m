uint64_t sub_100DD976C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DCC134(a1, v5, v4);
}

uint64_t sub_100DD9818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100DCC228(a1, v4, v5, v6, v7);
}

uint64_t sub_100DD993C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100DD9954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100DC0BC8(a1, v5);
}

uint64_t sub_100DD9A00(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 72);
  v3 = *(a1 + 88);
  v4 = *(a1 + 110);
  v5 = *(a1 + 120);
  v6 = (8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v1 >> 54) & 0xC0 | (v2 >> 52) & 0x300 | (v3 >> 50) & 0xC00 | v4 & 0x3000 | (v5 >> 46) & 0x4000)) | (((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (v1 >> 54) & 0xC0 | (v2 >> 52) & 0x300 | (v3 >> 50) & 0xC00 | v4 & 0x3000 | (v5 >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000) >> 15);
  v7 = v6 ^ 0x3FFFF;
  v8 = 0x40000 - v6;
  if (v7 >= 0x3FFFB)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100DD9AA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DD3964(a1, v5);
}

uint64_t sub_100DD9B54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DD4A3C(a1, v5, v4);
}

uint64_t sub_100DD9BFC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100DD50F4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100DD9D2C()
{
  v1 = *(type metadata accessor for BeaconProductInfoRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = v0 + v2;
  v5 = *(*(v0 + 16) + 128);
  return sub_100D76090(v4, *v3, v3[1]);
}

uint64_t sub_100DD9DC4()
{
  v1 = *(type metadata accessor for BeaconProductInfoRecord() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1016B5490, &unk_1013D67E0, sub_1009F1840, type metadata accessor for BeaconProductInfoRecord);
}

uint64_t sub_100DD9E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100DD9EA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100DD92EC(a1, type metadata accessor for LocalFindableAccessoryRecord);
  return sub_100DD9284(v3, a1, type metadata accessor for LocalFindableAccessoryRecord);
}

uint64_t sub_100DD9F00(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 2)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100016590(result, a2);
}

uint64_t sub_100DD9F1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DC9230(a1, v5, v4);
}

uint64_t sub_100DD9FC8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(unint64_t, unint64_t))
{
  v7 = (a5 >> 58) & 0xC | (a2 >> 60) & 3;
  if (v7 <= 5)
  {
    if (v7 == 1)
    {
      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v12 = a3;
      v11 = a4;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v11 = a5 & 0xCFFFFFFFFFFFFFFFLL;
      v12 = a4;
    }

    return v15(v12, v11);
  }

  else if (v7 == 6 || v7 == 7 || v7 == 9)
  {
    v8 = a2 & 0xCFFFFFFFFFFFFFFFLL;

    return a7(result, v8);
  }

  return result;
}

uint64_t sub_100DDA0C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100DC868C(a1, v1);
}

uint64_t sub_100DDA164(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100DC8D64(a1, v1);
}

unint64_t sub_100DDA200()
{
  result = qword_1016BB8B8;
  if (!qword_1016BB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB8B8);
  }

  return result;
}

uint64_t sub_100DDA254(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DC9230(a1, v5, v4);
}

unint64_t sub_100DDA300()
{
  result = qword_1016BB8C0;
  if (!qword_1016BB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB8C0);
  }

  return result;
}

uint64_t sub_100DDA354()
{
  v1 = *(type metadata accessor for WildModeAssociationRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1016A9590, &unk_1013BB520, sub_1009F1D18, type metadata accessor for WildModeAssociationRecord);
}

uint64_t sub_100DDA41C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D9686C(a1, v1);
}

uint64_t sub_100DDA4B8(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BA6C8;

  return sub_100D96C00(a1);
}

uint64_t sub_100DDA550(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalFindablePreferences() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100D93378(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100DDA6E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v10 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100D9235C(a1, v8, v9, v1 + v6, v11, v13);
}

uint64_t sub_100DDA848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100D8776C(a1, v4, v5);
}

uint64_t sub_100DDA8FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D8D630(a1, v1);
}

uint64_t sub_100DDA998()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100DC411C(v4, v0 + v3);
}

uint64_t sub_100DDAAAC(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_100DC80CC(a1, a2 & 1, v2 + v7);
}

uint64_t sub_100DDABD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DDAD04, 0, 0);
}

uint64_t sub_100DDAD04()
{
  v21 = v0[10];
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = *(v3 + 16);
  v0[11] = v8;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7 + v6, v4, v2);
  sub_101123D4C(0, 1, 0);
  v8(v1, v7 + v6, v2);

  Identifier.id.getter();
  v9 = *(v3 + 8);
  v0[13] = v9;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v11 = _swiftEmptyArrayStorage[2];
  v10 = _swiftEmptyArrayStorage[3];
  if (v11 >= v10 >> 1)
  {
    sub_101123D4C(v10 > 1, v11 + 1, 1);
  }

  v0[15] = _swiftEmptyArrayStorage;
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  _swiftEmptyArrayStorage[2] = v11 + 1;
  (*(v13 + 32))(_swiftEmptyArrayStorage + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v12, v14);
  v15 = type metadata accessor for CentralManager();
  v16 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  v17 = async function pointer to dispatch thunk of CentralManagerProtocol.retrievePeripherals(identifiers:)[1];
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_100DDAF68;
  v19 = v0[2];

  return dispatch thunk of CentralManagerProtocol.retrievePeripherals(identifiers:)(_swiftEmptyArrayStorage, v15, v16);
}

uint64_t sub_100DDAF68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = sub_100DDB3D8;
  }

  else
  {
    v6 = v3[15];

    v5 = sub_100DDB084;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DDB084()
{
  v37 = v0;
  v1 = v0[17];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[17];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v33 = v0[17];
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v34 = v0[17];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[17] + 32);

LABEL_6:
      v3 = v0[10];
      v5 = v0[6];
      v4 = v0[7];

      v6 = v0[1];

      return v6(v2);
    }

    __break(1u);
    goto LABEL_21;
  }

  v9 = v0[17];

  if (qword_101694EA0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_1016BB490);
  v11(v12, v14, v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[13];
  v20 = v0[6];
  v21 = v0[4];
  if (v18)
  {
    v35 = v0[14];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = 136446210;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v19(v20, v21);
    v27 = sub_1000136BC(v24, v26, &v36);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Missing peripheral for %{public}s", v22, 0xCu);
    sub_100007BAC(v23);
  }

  else
  {

    v19(v20, v21);
  }

  sub_100500BC4();
  swift_allocError();
  *v28 = xmmword_1013E84C0;
  *(v28 + 16) = 3;
  swift_willThrow();
  v29 = v0[10];
  v31 = v0[6];
  v30 = v0[7];

  v32 = v0[1];

  return v32();
}

uint64_t sub_100DDB3D8()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

unint64_t sub_100DDB460()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100017D5C(v5, v6);
      type metadata accessor for UUID();
      type metadata accessor for Date();
      sub_100D97688(&qword_101698300, &type metadata accessor for UUID);
      sub_100D97688(&qword_101698330, &type metadata accessor for UUID);
      sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID);
      sub_100D97688(&qword_101697F40, &type metadata accessor for Date);
      sub_100D97688(&unk_101697F60, &type metadata accessor for Date);
      v3 = Dictionary<>.init(dataRepresentation:)();
      sub_100016590(v5, v6);
      return v3;
    }
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_10090B740(_swiftEmptyArrayStorage);
}

unint64_t sub_100DDB824()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100017D5C(v5, v6);
      type metadata accessor for UUID();
      sub_100D97688(&qword_101698300, &type metadata accessor for UUID);
      sub_100D97688(&qword_101698330, &type metadata accessor for UUID);
      sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID);
      v3 = Dictionary<>.init(dataRepresentation:)();
      sub_100016590(v5, v6);
      return v3;
    }
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_10090B960(_swiftEmptyArrayStorage);
}

void sub_100DDBB80(uint64_t a1, uint64_t a2)
{
  sub_100DDB824();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFE858(a1, a2, isUniquelyReferenced_nonNull_native);
  v5 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for UUID();
  sub_100D97688(&qword_101698300, &type metadata accessor for UUID);
  sub_100D97688(&qword_101698330, &type metadata accessor for UUID);
  sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID);
  v6 = Dictionary<>.dataRepresentation.getter();
  v8 = v7;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v6, v8);
  v10 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v10];
}

void sub_100DDBD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a2, v16);
  (*(v5 + 16))(v15, a1, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v30 = sub_100DDB460();
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
    sub_1001E51EC(v13);
    sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    (*(v5 + 32))(v8, v15, v4);
    v21 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v21;
    sub_100FFD694(v8, v20, isUniquelyReferenced_nonNull_native);
    (*(v17 + 8))(v20, v16);
    v30 = v29;
  }

  v23 = [objc_opt_self() standardUserDefaults];
  sub_100D97688(&qword_101698300, &type metadata accessor for UUID);
  sub_100D97688(&qword_101698330, &type metadata accessor for UUID);
  sub_100D97688(&qword_1016967B0, &type metadata accessor for UUID);
  sub_100D97688(&qword_101697F40, &type metadata accessor for Date);
  sub_100D97688(&unk_101697F60, &type metadata accessor for Date);
  v24 = Dictionary<>.dataRepresentation.getter();
  v26 = v25;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v24, v26);
  v28 = String._bridgeToObjectiveC()();
  [v23 setObject:isa forKey:v28];
}

uint64_t sub_100DDC1F0()
{
  v2 = *(type metadata accessor for DeviceEvent(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100D81514(v4, v0 + v3);
}

uint64_t sub_100DDC2C8()
{
  v1 = *(sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100E724EC(v5, v0 + v2, v6);
}

uint64_t sub_100DDC3AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D78F7C();
}

uint64_t sub_100DDC448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7900C();
}

uint64_t sub_100DDC4E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7909C();
}

uint64_t sub_100DDC580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7A2EC();
}

uint64_t sub_100DDC61C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D7BDE0();
}

uint64_t sub_100DDC6B8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100DB7A18(a1, v6, v1 + v5);
}

uint64_t sub_100DDC79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100DB9970(a1, v4, v5, v7);
}

uint64_t sub_100DDC85C()
{
  v1 = *(type metadata accessor for AccessoryMetadataRecord() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1016B4280, ",W\t", sub_1009F1F84, type metadata accessor for AccessoryMetadataRecord);
}

uint64_t sub_100DDC97C()
{
  v2 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100DB4E98(v7, v0 + v3, v0 + v6, v8);
}

uint64_t sub_100DDCB00(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100DB7328(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DDCC8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100DB53C4(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_100DDCE78()
{
  v2 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100DAE4AC(v7, v0 + v3, v0 + v6, v8);
}

uint64_t sub_100DDCFFC(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100DB3D24(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DDD188(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1000BC4D4(a1, a2);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = sub_1000BC4D4(a3, a4);
  v12 = *(v11 - 8);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v4 + 16);

  (*(v8 + 8))(v4 + v9, v7);
  (*(v12 + 8))(v4 + v13, v11);

  return _swift_deallocObject(v4, v14 + 8);
}

uint64_t sub_100DDD2EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100DAE8F0(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_100DDD48C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_101699888, &unk_1013D68A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014650;

  return sub_100DA8804(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_100DDD634()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1000BC4D4(&qword_101699888, &unk_1013D68A0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100DA8F08(v0 + v3, v7, v0 + v6);
}

uint64_t sub_100DDD7C8(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1000BC4D4(a1, a2);
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v2 + v7, v5);
  (*(v10 + 8))(v2 + v11, v9);

  return _swift_deallocObject(v2, v12 + 8);
}

uint64_t sub_100DDD934(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&qword_101699888, &unk_1013D68A0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100DAD850(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DDDAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1011E0F10(a1, v4, v5, v6);
}

uint64_t sub_100DDDB74(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100DD87BC(a1, v6, v1 + v5);
}

uint64_t sub_100DDDCA8()
{
  v1 = *(type metadata accessor for PairingErrorRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100D76FDC(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_10169A760, &unk_101393E60, sub_1009F1AAC, type metadata accessor for PairingErrorRecord);
}

uint64_t sub_100DDDD70(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_100DDDDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = v6 - 8;
  v24 = *(v6 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  (*(v12 + 16))(v15 + v14, a1 + *(v7 + 28), v11);
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = v10;
  sub_1009C99C0(v15, sub_100DE07A4, v16);

  OS_dispatch_group.wait()();
  sub_100DE05E8(a1, v9, type metadata accessor for SharedBeaconRecord);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_10002AD7C(v9, v20 + v18, type metadata accessor for SharedBeaconRecord);
  v21 = (v20 + v19);
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v4;

  sub_100AAB488(a1, sub_100DE0650, v20);
}

uint64_t sub_100DDE094()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - v15;
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v19 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v20 = v33;
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v20, v18);

  v22 = type metadata accessor for OwnedBeaconRecord();
  (*(v3 + 16))(v16, v1 + *(v22 + 20), v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v23 = *(v6 + 48);
  sub_100015794(v18, v9);
  sub_100015794(v16, &v9[v23]);
  v24 = *(v3 + 48);
  if (v24(v9, 1, v2) != 1)
  {
    v26 = v32;
    sub_100015794(v9, v32);
    if (v24(&v9[v23], 1, v2) != 1)
    {
      v27 = v31;
      (*(v3 + 32))(v31, &v9[v23], v2);
      sub_100003FF4(&qword_1016984A0, &type metadata accessor for UUID);
      v28 = v26;
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v3 + 8);
      v29(v27, v2);
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
      v29(v28, v2);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      return v25 & 1;
    }

    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    (*(v3 + 8))(v26, v2);
    goto LABEL_8;
  }

  sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
  if (v24(&v9[v23], 1, v2) != 1)
  {
LABEL_8:
    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v25 = 0;
    return v25 & 1;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_100DDE55C(uint64_t a1, int a2, int a3)
{
  v74 = a2;
  v75 = a3;
  v80 = a1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v66 - v6;
  v77 = type metadata accessor for OwnedBeaconRecord();
  v71 = *(v77 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v77);
  v72 = v9;
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SystemInfo.DeviceLockState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v66 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v3;
  v23 = *(v3 + 72);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.notOnQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v67 = v7;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v78 = (v25 + 16);
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    v69 = v27;
    v79 = v26;
    v70 = v25;

    static os_log_type_t.default.getter();
    if (qword_101695038 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  v68 = xmmword_101385D80;
  *(v28 + 16) = xmmword_101385D80;
  v29 = *(v77 + 20);
  v30 = type metadata accessor for UUID();
  sub_100003FF4(&qword_101696930, &type metadata accessor for UUID);
  v77 = v29;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v32;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v11 + 104))(v15, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v10);
  sub_100003FF4(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v11 + 8);
  v34(v15, v10);
  v34(v17, v10);
  if (v82 == v81)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    v35 = swift_allocError();
    *v36 = 0;
    v37 = v78;
    swift_beginAccess();
    v38 = *v37;
    *v37 = v35;
    swift_errorRetain();

    dispatch_group_leave(v79);
  }

  v39 = dispatch_group_create();
  dispatch_group_enter(v39);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v40 = *(v30 - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v68;
  v44 = v80;
  (*(v40 + 16))(v43 + v42, v80 + v77, v30);
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  v46 = v39;
  v47 = v76;
  sub_1009C99C0(v43, sub_100407BC0, v45);

  OS_dispatch_group.wait()();
  v48 = v73;
  sub_100DE05E8(v44, v73, type metadata accessor for OwnedBeaconRecord);
  v49 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v50 = (v72 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_10002AD7C(v48, v51 + v49, type metadata accessor for OwnedBeaconRecord);
  v52 = (v51 + v50);
  v53 = v69;
  *v52 = sub_100DE0790;
  v52[1] = v53;
  v54 = v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v54 = v47;
  *(v54 + 8) = v74 & 1;
  *(v54 + 9) = v75 & 1;

  sub_100AAA40C(v44, sub_10040AE98, v51);

  v55 = v79;
  OS_dispatch_group.wait()();
  v56 = v78;
  swift_beginAccess();
  if (*v56 || (v57 = sub_100D5F668(), v58 >> 60 == 15) || (v59 = v57, v60 = v58, v61 = sub_100DE6748(v57, v58), sub_100006654(v59, v60), !v61))
  {
  }

  else
  {
    v62 = type metadata accessor for Date();
    v63 = v67;
    (*(*(v62 - 8) + 56))(v67, 1, 1, v62);
    sub_100466E88(v44 + v77, v63);

    sub_10000B3A8(v63, &unk_101696900, &unk_10138B1E0);
  }

  v64 = *(v70 + 16);
  swift_errorRetain();

  return v64;
}

void sub_100DDEDC8(uint64_t a1, NSObject *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = a1;
  swift_errorRetain();

  dispatch_group_leave(a2);
}

uint64_t sub_100DDEE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v42 = a6;
  v43 = a7;
  v48 = a4;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v44 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v44);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OwnedBeaconRecord();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = a3;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10138BBE0;
    v23 = a2 + *(v18 + 20);
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(v22 + 56) = &type metadata for String;
    v27 = sub_100008C00();
    *(v22 + 64) = v27;
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v28 = String.init<A>(describing:)();
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v27;
    *(v22 + 72) = v28;
    *(v22 + 80) = v29;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    (v47)(a1);
  }

  else
  {
    v31 = a2;
    v32 = a5;
    v41 = *(a5 + 72);
    sub_100DE05E8(v31, &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v33 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v34 = v33 + v20;
    v35 = (v33 + v20 + 9) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = v32;
    sub_10002AD7C(v21, v36 + v33, type metadata accessor for OwnedBeaconRecord);
    v37 = (v36 + v34);
    *v37 = v42 & 1;
    v37[1] = v43 & 1;
    v38 = (v36 + v35);
    *v38 = a3;
    v38[1] = v48;
    aBlock[4] = sub_100DDFB4C;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016512B8;
    v39 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v49 = _swiftEmptyArrayStorage;
    sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v40 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);
    (*(v47 + 8))(v13, v40);
    (*(v45 + 8))(v17, v46);
  }
}

uint64_t sub_100DDF340(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  LODWORD(v61) = a4;
  LODWORD(v60) = a3;
  v8 = type metadata accessor for DispatchQoS();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v53 - v15;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v59 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v59);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OwnedBeaconRecord();
  v74 = v25;
  v75 = sub_100003FF4(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v26 = sub_1000280DC(aBlock);
  v27 = a2;
  sub_100DE05E8(a2, v26, type metadata accessor for OwnedBeaconRecord);
  v29 = v74;
  v28 = v75;
  sub_1000035D0(aBlock, v74);
  (*(*(*(v28 + 8) + 8) + 32))(v29);
  v30 = type metadata accessor for Transaction();
  v67 = v24;
  v68 = a1;
  v69 = aBlock;
  v70 = v60;
  v71 = v61;
  v60 = v30;
  static Transaction.named<A>(_:with:)();
  v55 = v21;
  v31 = *(v21 + 8);
  v56 = v20;
  v31(v24, v20);
  sub_100007BAC(aBlock);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v32 = qword_10177B2E8;
  v33 = v27 + v25[5];
  v34 = *(qword_10177B2E8 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  v35 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v35);
  *(&v53 - 4) = v32;
  *(&v53 - 3) = v33;
  *(&v53 - 2) = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
  *(&v53 - 1) = 0;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  v36 = *(v16 + 8);
  v61 = v19;
  v37 = v59;
  v36(v19, v59);
  v38 = v37;
  if (sub_100DDE094())
  {
    v54 = v36;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_101385D80;
    v40 = UUID.uuidString.getter();
    v42 = v41;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100008C00();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    os_log(_:dso:log:_:_:)();

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v43 = v58;
    (*(v55 + 56))(v58, 1, 1, v56);
    sub_1000034A4();
    v44 = v57;
    sub_100015794(v43, v57);
    sub_100EEAE98(v44);

    sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
    v36 = v54;
  }

  v45 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(4);
  static Transaction.named<A>(_:with:)();
  sub_100A907FC();
  sub_100A83364(0);
  v46 = *(a1 + 136);
  v47 = swift_allocObject();
  v48 = v63;
  *(v47 + 16) = v62;
  *(v47 + 24) = v48;
  v75 = sub_10041ABC0;
  v76 = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v74 = &unk_101651308;
  v49 = _Block_copy(aBlock);

  v50 = v64;
  static DispatchQoS.unspecified.getter();
  v72 = _swiftEmptyArrayStorage;
  sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v51 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);
  v36(v51, v38);
  (*(v65 + 8))(v50, v66);
}

uint64_t sub_100DDFB4C()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_100DDF340(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_100DDFBEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), uint64_t a5)
{
  v37 = a5;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  v9 = *(v41 + 8);
  __chkstk_darwin(v38);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = a3;
    v41 = a4;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10138BBE0;
    v21 = a2 + *(v16 + 20);
    v22 = UUID.uuidString.getter();
    v24 = v23;
    *(v20 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v20 + 64) = v25;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v26 = String.init<A>(describing:)();
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v25;
    *(v20 + 72) = v26;
    *(v20 + 80) = v27;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    v40(a1);
  }

  else
  {
    v29 = v37;
    v36[1] = *(v37 + 72);
    sub_100DE05E8(a2, v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
    v30 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v31 = (v18 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    sub_10002AD7C(v19, v32 + v30, type metadata accessor for SharedBeaconRecord);
    v33 = (v32 + v31);
    *v33 = a3;
    v33[1] = a4;
    aBlock[4] = sub_100DE06FC;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016513A8;
    v34 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v35 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v41 + 1))(v11, v35);
    (*(v39 + 8))(v15, v40);
  }
}

uint64_t sub_100DE00C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v32);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v33);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SharedBeaconRecord(0);
  v42 = sub_100003FF4(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v16 = sub_1000280DC(aBlock);
  sub_100DE05E8(a2, v16, type metadata accessor for SharedBeaconRecord);
  v18 = v41;
  v17 = v42;
  sub_1000035D0(aBlock, v41);
  (*(*(*(v17 + 8) + 8) + 32))(v18);
  type metadata accessor for Transaction();
  v35 = v15;
  v36 = a1;
  v37 = aBlock;
  v38 = 257;
  static Transaction.named<A>(_:with:)();
  (*(v12 + 8))(v15, v11);
  sub_100007BAC(aBlock);
  v19 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(4);
  static Transaction.named<A>(_:with:)();
  v20 = *(a1 + 136);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v29;
  *(v21 + 24) = v22;
  v42 = sub_100470308;
  v43 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v41 = &unk_1016513F8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100003FF4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v24 = v28;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v10, v33);
}

uint64_t sub_100DE0590(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 448))(v1, v2);
}

uint64_t sub_100DE05E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DE0650(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  return sub_100DDFBEC(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_100DE06FC()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_100DE00C0(v3, v0 + v2, v5, v6);
}

uint64_t type metadata accessor for BeaconNamingRecord()
{
  result = qword_1016BB998;
  if (!qword_1016BB998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100DE0828()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000E3404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DE08D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v72 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v59 - v8;
  v74 = type metadata accessor for UUID();
  v10 = *(v74 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v74);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v59 - v15;
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001013E8E10 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      sub_100DE27B4();
      swift_allocError();
      *v39 = 0;
      goto LABEL_16;
    }
  }

  v70 = a2;
  v71 = v14;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v20 = v10[6];
  v21 = v74;
  if (v20(v9, 1, v74) == 1)
  {
    sub_1002EA198(v9);
    sub_100DE27B4();
    swift_allocError();
    *v22 = 1;
LABEL_16:
    swift_willThrow();

    return;
  }

  v69 = v10;
  v67 = v10[4];
  v68 = v10 + 4;
  v67(v73, v9, v21);
  v23 = [a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];

  if (!v25)
  {
    goto LABEL_18;
  }

  v77 = v25;
  sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v63 = v75;
  v26 = v23;
  v27 = v76;
  v28 = String._bridgeToObjectiveC()();
  v65 = v26;
  v29 = [v26 objectForKeyedSubscript:v28];

  if (!v29 || (v64 = v27, v75 = v29, (swift_dynamicCast() & 1) == 0) || (v62 = v77, v30 = String._bridgeToObjectiveC()(), v31 = [v65 objectForKeyedSubscript:v30], v30, !v31) || (v77 = v31, (swift_dynamicCast() & 1) == 0))
  {

    v21 = v74;
LABEL_18:
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101385D80;
    *(v40 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v40 + 64) = sub_10013A2D8();
    *(v40 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v41 = a1;
    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100DE27B4();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();

    goto LABEL_19;
  }

  v33 = v75;
  v32 = v76;
  v34 = v72;
  UUID.init(uuidString:)();

  v21 = v74;
  if (v20(v34, 1, v74) == 1)
  {

    sub_1002EA198(v34);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *(v35 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v35 + 64) = sub_10013A2D8();
    *(v35 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v36 = a1;
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100DE27B4();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();

LABEL_19:
    swift_unknownObjectRelease();
    (v69[1])(v73, v21);
    return;
  }

  v64 = type metadata accessor for BeaconNamingRecord();
  v44 = v70;
  v69 = (v70 + *(v64 + 36));
  v67(v71, v34, v21);
  v72 = v32;
  CKRecordKeyValueSetting.subscript.getter();
  ObjectType = v75;
  v63 = v76;
  v60 = objc_autoreleasePoolPush();
  v45 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v61 = v33;
  v46 = v45;
  [a1 encodeSystemFieldsWithCoder:v45];
  [v46 finishEncoding];
  v47 = v21;
  v48 = [v46 encodedData];
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  objc_autoreleasePoolPop(v60);
  swift_unknownObjectRelease();

  *v44 = v49;
  v44[1] = v51;
  v52 = v64;
  v53 = v67;
  v67(v44 + *(v64 + 20), v73, v47);
  v53(v44 + v52[6], v71, v47);
  v54 = v61;
  *(v44 + v52[7]) = v62;
  v55 = (v44 + v52[8]);
  v56 = v72;
  *v55 = v54;
  v55[1] = v56;
  v57 = v69;
  v58 = v63;
  *v69 = ObjectType;
  v57[1] = v58;
}

void sub_100DE1148(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177C0C0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  static os_log_type_t.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  (*(v3 + 16))(v6, a1, v2);
  sub_100DE2714(&qword_1016B14E0, &type metadata accessor for URL);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v12 = UUID.uuidString.getter();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100DE13B8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C0C0);
  sub_1000076D4(v0, qword_10177C0C0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

Swift::Int sub_100DE1514()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for BeaconNamingRecord();
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_100DE2714(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = v1 + v4[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v4[7]));
  v7 = (v1 + v4[8]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  v10 = (v1 + v4[9]);
  if (v10[1])
  {
    v11 = *v10;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

unint64_t sub_100DE1650()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6449656C6F72;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0x696A6F6D65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100DE1708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100DE2B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100DE1730(uint64_t a1)
{
  v2 = sub_100DE2808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE176C(uint64_t a1)
{
  v2 = sub_100DE2808();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100DE17AC(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100DE2714(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[7]));
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[9]);
  if (v12[1])
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100DE18E0(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_100DE2714(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + a2[6];
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[7]));
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[9]);
  if (v12[1])
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100DE1A5C(id *a1)
{
  v2 = v1;
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for BeaconNamingRecord();
  v4 = v3[6];
  v5 = UUID.uuidString.getter();
  if (!v23)
  {

    goto LABEL_9;
  }

  if (v22 == v5 && v23 == v6)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
LABEL_9:
    v22 = UUID.uuidString.getter();
    v23 = v9;
    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v23 & 1) != 0 || v22 != *(v1 + v3[7]))
  {
    v22 = *(v1 + v3[7]);
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v10 = (v1 + v3[8]);
  v12 = *v10;
  v11 = v10[1];
  if (!v23)
  {
    goto LABEL_19;
  }

  if (v22 == v12 && v23 == v11)
  {

    goto LABEL_20;
  }

  v13 = *v10;
  v14 = v10[1];
  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_19:
    v22 = v12;
    v23 = v11;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_20:
  CKRecordKeyValueSetting.subscript.getter();
  v16 = (v2 + v3[9]);
  v17 = v16[1];
  if (!v23)
  {
    if (!v17)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_29;
  }

  if (!v17)
  {

LABEL_29:

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v22 == *v16 && v23 == v17)
  {
    swift_unknownObjectRelease();
  }

  v19 = *v16;
  v20 = v16[1];
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    goto LABEL_29;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100DE1DE4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BBA20, &qword_1013E8F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100DE2808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v25 = 0;
  sub_100017D5C(v23, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v23, v24);
  }

  else
  {
    sub_100016590(v23, v24);
    v12 = type metadata accessor for BeaconNamingRecord();
    v13 = v12[5];
    LOBYTE(v23) = 1;
    type metadata accessor for UUID();
    sub_100DE2714(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v12[7]);
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = (v3 + v12[8]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = (v3 + v12[9]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v23) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100DE209C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for UUID();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = sub_1000BC4D4(&qword_1016BBA10, &qword_1013E8F38);
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for BeaconNamingRecord();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v43 = a1;
  sub_1000035D0(a1, v18);
  sub_100DE2808();
  v20 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(v43);
  }

  v45 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v17 = v44;
  LOBYTE(v44) = 1;
  sub_100DE2714(&qword_101698300, &type metadata accessor for UUID);
  v21 = v9;
  v22 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v14;
  v23 = v21;
  v24 = *(v38 + 32);
  v24(&v17[*(v14 + 20)], v23, v22);
  LOBYTE(v44) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v17;
  v24(&v17[*(v36 + 24)], v7, v22);
  LOBYTE(v44) = 3;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v36;
  *&v17[*(v36 + 28)] = v25;
  LOBYTE(v44) = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = &v17[*(v26 + 32)];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v44) = 5;
  v30 = v26;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v32;
  v34 = &v17[*(v30 + 36)];
  (*(v40 + 8))(v13, v41);
  *v34 = v31;
  v34[1] = v33;
  sub_100DE285C(v17, v37);
  sub_100007BAC(v43);
  return sub_100DE28C0(v17);
}

void sub_100DE2600(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = objc_autoreleasePoolPush();
  sub_100DE1148(a2);

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100DE2690(uint64_t a1)
{
  *(a1 + 8) = sub_100DE2714(&unk_1016BB9F0, type metadata accessor for BeaconNamingRecord);
  result = sub_100DE2714(&qword_1016B1528, type metadata accessor for BeaconNamingRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100DE2714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100DE275C(uint64_t a1)
{
  result = sub_100DE2714(&qword_1016B1520, type metadata accessor for BeaconNamingRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100DE27B4()
{
  result = qword_1016BBA00;
  if (!qword_1016BBA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA00);
  }

  return result;
}

unint64_t sub_100DE2808()
{
  result = qword_1016BBA18;
  if (!qword_1016BBA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA18);
  }

  return result;
}

uint64_t sub_100DE285C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconNamingRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100DE28C0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconNamingRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100DE291C(uint64_t a1, uint64_t a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v4 = type metadata accessor for BeaconNamingRecord();
    v5 = v4[5];
    if (static UUID.== infix(_:_:)())
    {
      v6 = v4[6];
      if ((static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]))
      {
        v7 = v4[8];
        v8 = *(a1 + v7);
        v9 = *(a1 + v7 + 8);
        v10 = (a2 + v7);
        v11 = v8 == *v10 && v9 == v10[1];
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v12 = v4[9];
          v13 = (a1 + v12);
          v14 = *(a1 + v12 + 8);
          v15 = (a2 + v12);
          v16 = v15[1];
          if (v14)
          {
            if (v16)
            {
              v17 = *v13 == *v15 && v14 == v16;
              if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v16)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_100DE2A40()
{
  result = qword_1016BBA30;
  if (!qword_1016BBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA30);
  }

  return result;
}

unint64_t sub_100DE2A98()
{
  result = qword_1016BBA38;
  if (!qword_1016BBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA38);
  }

  return result;
}

unint64_t sub_100DE2AF0()
{
  result = qword_1016BBA40;
  if (!qword_1016BBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA40);
  }

  return result;
}

unint64_t sub_100DE2B48()
{
  result = qword_1016BBA48;
  if (!qword_1016BBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBA48);
  }

  return result;
}

uint64_t sub_100DE2B9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101348340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C6F72 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100DE2DD4()
{
  result = qword_1016BBAF8;
  if (!qword_1016BBAF8)
  {
    type metadata accessor for EmptyPairingPolicyVerifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBAF8);
  }

  return result;
}

uint64_t sub_100DE2E38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v11, v11[3]);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v11);
    return sub_100007BAC(a1);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_100007BAC(v11);
    result = sub_100007BAC(a1);
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

unint64_t sub_100DE2EFC(uint64_t a1)
{
  *(a1 + 8) = sub_100DE2F2C();
  result = sub_10030FD28();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100DE2F2C()
{
  result = qword_1016BBB00;
  if (!qword_1016BBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBB00);
  }

  return result;
}

uint64_t sub_100DE2F90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100DE3040(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100DE2FBC(uint64_t a1)
{
  *(a1 + 8) = sub_100DE2FEC();
  result = sub_10064D574();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100DE2FEC()
{
  result = qword_1016BBB08;
  if (!qword_1016BBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBB08);
  }

  return result;
}

uint64_t sub_100DE3040(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v12, v12[3]);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v6 = result;
  if (v1)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v5);
      goto LABEL_11;
    }

LABEL_9:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = v8;
    goto LABEL_11;
  }

  if (v7 != 2)
  {
    goto LABEL_14;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v8 == 60)
  {
LABEL_12:
    sub_100007BAC(v12);
    sub_100007BAC(a1);
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_100DE3140()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41 - v4;
  v6 = sub_10090403C(_swiftEmptyArrayStorage);
  v45 = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = type metadata accessor for LostModeAlertInfo();
  v11 = (v1 + v10[5]);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v44 = &type metadata for String;
    *&v43 = v13;
    *(&v43 + 1) = v12;
    sub_1001E6224(&v43, v42);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v6;
    sub_100FFB368(v42, v7, v9, isUniquelyReferenced_nonNull_native);

    v45 = v41;
  }

  else
  {
    sub_1001E4C5C(v7, v9, &v43);

    sub_10000B3A8(&v43, &unk_1016A0B10, &qword_10139BF40);
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v15;
  v18 = v16;
  v19 = (v1 + v10[6]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v44 = &type metadata for String;
    *&v43 = v21;
    *(&v43 + 1) = v20;
    sub_1001E6224(&v43, v42);

    v22 = v45;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v22;
    sub_100FFB368(v42, v17, v18, v23);

    v45 = v41;
  }

  else
  {
    sub_1001E4C5C(v15, v16, &v43);

    sub_10000B3A8(&v43, &unk_1016A0B10, &qword_10139BF40);
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  sub_1000D5660(v1, v5);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v5, 1, v27) == 1)
  {
    sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
    sub_1001E4C5C(v24, v26, &v43);

    sub_10000B3A8(&v43, &unk_1016A0B10, &qword_10139BF40);
  }

  else
  {
    v29 = URL.absoluteString.getter();
    v44 = &type metadata for String;
    *&v43 = v29;
    *(&v43 + 1) = v30;
    (*(v28 + 8))(v5, v27);
    sub_1001E6224(&v43, v42);
    v31 = v45;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v31;
    sub_100FFB368(v42, v24, v26, v32);

    v45 = v41;
  }

  if ((*(v1 + v10[7]) & 1) == 0)
  {
    return v45;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = &type metadata for String;
  *&v43 = v36;
  *(&v43 + 1) = v37;
  sub_1001E6224(&v43, v42);
  v38 = v45;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v38;
  sub_100FFB368(v42, v33, v35, v39);

  return v41;
}

uint64_t sub_100DE3528@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AirPodsLostModeContent.LostModeContent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = *a1;
  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_1000BC4D4(&qword_1016ACEF0, &qword_1013C2570);
    v6 = v5[12];
    v7 = &a1[v5[16]];
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = &a1[v5[20]];
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v14 = v13[7];
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 32))(a2 + v14, &a1[v6], v15);
    v17 = 0;
    v18 = xmmword_10138BBF0;
    v19 = 0xF000000000000000;
    v20 = v31;
  }

  else
  {
    v29 = *(a1 + 1);
    v30 = *(a1 + 2);
    v21 = sub_1000BC4D4(&qword_1016ACF10, &qword_1013E9420);
    v22 = v21[20];
    v23 = &a1[v21[24]];
    v8 = *v23;
    v9 = *(v23 + 1);
    v24 = &a1[v21[28]];
    v11 = *v24;
    v12 = *(v24 + 1);
    v13 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v25 = v13[7];
    v26 = type metadata accessor for UUID();
    result = (*(*(v26 - 8) + 32))(a2 + v25, &a1[v22], v26);
    v19 = *(&v31 + 1);
    v17 = v31;
    v18 = v29;
    v20 = v30;
  }

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v20;
  v27 = (a2 + v13[8]);
  *v27 = v8;
  v27[1] = v9;
  v28 = (a2 + v13[9]);
  *v28 = v11;
  v28[1] = v12;
  return result;
}

uint64_t sub_100DE36E0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_1000BC4D4(&qword_1016BBCA8, &qword_1013E9668);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100DE4DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v19 = 0;
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  sub_1008DA158(&qword_1016AD858);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_100017D5C(a3, v16);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100DE38C8(uint64_t a1)
{
  v2 = sub_100DE4DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE3904(uint64_t a1)
{
  v2 = sub_100DE4DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100DE3940@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100DE4B88(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100DE3990(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BBCB0, &qword_1013E9670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100DE4E28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v25 = *v3;
  v26 = v11;
  v24 = 0;
  sub_10002E98C(v25, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_100006654(v25, v26);
  }

  else
  {
    sub_100006654(v25, v26);
    v12 = v3[3];
    v25 = v3[2];
    v26 = v12;
    v24 = 1;
    sub_10002E98C(v25, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v25, v26);
    v14 = v3[5];
    v25 = v3[4];
    v26 = v14;
    v24 = 2;
    sub_100017D5C(v25, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v25, v26);
    v15 = type metadata accessor for AirPodsLostModeContent.Device(0);
    v16 = v15[7];
    LOBYTE(v25) = 3;
    type metadata accessor for UUID();
    sub_100DE4E7C(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = (v3 + v15[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = (v3 + v15[9]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v25) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100DE3C70(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BBC70, &qword_1013E9648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100DE4A80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v26 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v25 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v24 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 64);
    v23 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[9];
    v21[15] = 5;
    sub_1000BC4D4(&qword_1016BBC80, &qword_1013E9650);
    sub_100DE4AD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100DE3EC4(uint64_t a1)
{
  v2 = sub_100DE4E28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE3F00(uint64_t a1)
{
  v2 = sub_100DE4E28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100DE3F54()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6D754E72656E776FLL;
  v4 = 0x65646F4D74736F6CLL;
  if (v1 != 4)
  {
    v4 = 0x73656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0x6C69616D65;
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

uint64_t sub_100DE401C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100DE520C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100DE4044(uint64_t a1)
{
  v2 = sub_100DE4A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE4080(uint64_t a1)
{
  v2 = sub_100DE4A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100DE40D4(__int128 *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = v7;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v9 = v42;
  v10 = [objc_opt_self() currentDevice];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 serverFriendlyDescription];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = swift_isUniquelyReferenced_nonNull_native();
      *&v42 = v9;
      sub_100FFACA0(v13, v15, 0xD000000000000011, 0x800000010134EA40, v16);
      v17 = v42;
      Date.init()();
      v18 = Date.epoch.getter();
      (*(v3 + 8))(v6, v2);
      *&v42 = v18;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v42 = v17;
      sub_100FFACA0(v19, v21, 0xD000000000000015, 0x800000010134EA60, v22);
      v23 = v42;
      *&v42 = 1;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v42 = v23;
      sub_100FFACA0(v24, v26, 0xD000000000000013, 0x800000010134EA80, v27);
      v28 = v42;
      v29 = sub_1008D9A78();
      v31 = v30;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v42 = v28;
      sub_100FFACA0(v29, v31, 0x6567412D72657355, 0xEA0000000000746ELL, v32);
      v33 = type metadata accessor for JSONEncoder();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v36 = a1[3];
      v44 = a1[2];
      v45 = v36;
      v46 = a1[4];
      v37 = a1[1];
      v42 = *a1;
      v43 = v37;
      sub_100DE4544();
      v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v40 = v39;

      sub_1008B5458(a1);

      sub_100017D5C(v38, v40);

      sub_100016590(v38, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100DE4544()
{
  result = qword_1016BBB10;
  if (!qword_1016BBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBB10);
  }

  return result;
}

uint64_t sub_100DE45E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100DE4630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100DE46BC()
{
  sub_1002359B8(319, &qword_10169A330);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100DE4784()
{
  sub_100DE47F8(319);
  if (v0 <= 0x3F)
  {
    sub_100DE4964(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100DE47F8(uint64_t a1)
{
  if (!qword_1016BBC38)
  {
    __chkstk_darwin(a1);
    sub_1000BC580(&qword_1016A40E0, &unk_101396F30);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016A0AC0, &unk_1013926A0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016BBC38);
    }
  }
}

void sub_100DE4964(uint64_t a1)
{
  if (!qword_1016BBC40)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016BBC40);
    }
  }
}

unint64_t sub_100DE4A80()
{
  result = qword_1016BBC78;
  if (!qword_1016BBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBC78);
  }

  return result;
}

unint64_t sub_100DE4AD4()
{
  result = qword_1016BBC88;
  if (!qword_1016BBC88)
  {
    sub_1000BC580(&qword_1016BBC80, &qword_1013E9650);
    sub_100DE4E7C(&qword_1016BBC90, type metadata accessor for AirPodsLostModeContent.Device);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBC88);
  }

  return result;
}

uint64_t sub_100DE4B88(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BBC98, &unk_1013E9658);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100DE4DD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    v15 = 0;
    sub_1008DA158(&qword_1016AD848);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_100017D5C(v10, v11);
    sub_100007BAC(a1);

    sub_100016590(v10, v11);
  }

  return v8;
}

unint64_t sub_100DE4DD4()
{
  result = qword_1016BBCA0;
  if (!qword_1016BBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCA0);
  }

  return result;
}

unint64_t sub_100DE4E28()
{
  result = qword_1016BBCB8;
  if (!qword_1016BBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCB8);
  }

  return result;
}

uint64_t sub_100DE4E7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100DE4EF8()
{
  result = qword_1016BBCC0;
  if (!qword_1016BBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCC0);
  }

  return result;
}

unint64_t sub_100DE4F50()
{
  result = qword_1016BBCC8;
  if (!qword_1016BBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCC8);
  }

  return result;
}

unint64_t sub_100DE4FA8()
{
  result = qword_1016BBCD0;
  if (!qword_1016BBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCD0);
  }

  return result;
}

unint64_t sub_100DE5000()
{
  result = qword_1016BBCD8;
  if (!qword_1016BBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCD8);
  }

  return result;
}

unint64_t sub_100DE5058()
{
  result = qword_1016BBCE0;
  if (!qword_1016BBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCE0);
  }

  return result;
}

unint64_t sub_100DE50B0()
{
  result = qword_1016BBCE8;
  if (!qword_1016BBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCE8);
  }

  return result;
}

unint64_t sub_100DE5108()
{
  result = qword_1016BBCF0;
  if (!qword_1016BBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCF0);
  }

  return result;
}

unint64_t sub_100DE5160()
{
  result = qword_1016BBCF8;
  if (!qword_1016BBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBCF8);
  }

  return result;
}

unint64_t sub_100DE51B8()
{
  result = qword_1016BBD00;
  if (!qword_1016BBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBD00);
  }

  return result;
}

uint64_t sub_100DE520C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E72656E776FLL && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xEF64656C62616E45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
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

double sub_100DE5414@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100DE55EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100DE5458@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 32)
  {
    goto LABEL_35;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 != 2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 113)
  {
    goto LABEL_36;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a6);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v17) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v17 = v17;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v16 != 2)
  {
    goto LABEL_37;
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v11 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v11)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v17 == 32)
  {
    *a7 = result;
    a7[1] = a2;
    a7[2] = a3;
    a7[3] = a4;
    a7[4] = a5;
    a7[5] = a6;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_100DE5568(uint64_t a1)
{
  *(a1 + 8) = sub_100DE5598();
  result = sub_10027FD5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100DE5598()
{
  result = qword_1016BBD08;
  if (!qword_1016BBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBD08);
  }

  return result;
}

uint64_t sub_100DE55EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v16, v17);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v16);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v16, v17);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v19 = v11;
    sub_10015049C(v16, v17);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_100DE5458(v8, v9, v10, v19, v12, v13, v18);
    sub_100007BAC(v16);
    result = sub_100007BAC(a1);
    v15 = v18[1];
    *a2 = v18[0];
    a2[1] = v15;
    a2[2] = v18[2];
  }

  return result;
}

uint64_t sub_100DE576C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BBDC0, &qword_1013E9C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100DE6310();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for FamilyCryptoKeysV1();
    v13 = *(v12 + 20);
    LOBYTE(v18) = 1;
    type metadata accessor for DateInterval();
    sub_1008D8DD0(&qword_1016AD758);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + *(v12 + 24));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 2;
    sub_100029784(v18, v15);
    sub_100DE6478();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001E524(v18, v19);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100DE5968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for DateInterval();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_1016BBDA8, &qword_1013E9C08);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v31);
  v10 = &v24 - v9;
  v11 = type metadata accessor for FamilyCryptoKeysV1();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100DE6310();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = a1;
  v17 = v28;
  v16 = v29;
  v18 = v30;
  LOBYTE(v32) = 0;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v14;
  *v14 = v19;
  LOBYTE(v32) = 1;
  sub_1008D8DD0(&qword_1016AD748);
  v20 = v7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v16 + 32);
  v22 = v25;
  v24 = *(v11 + 20);
  v21(v25 + v24, v20, v18);
  v33 = 2;
  sub_100DE6364();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v10, v31);
  *(v22 + *(v11 + 24)) = v32;
  sub_100DE63B8(v22, v27);
  sub_100007BAC(v26);
  return sub_100DE641C(v22);
}

uint64_t sub_100DE5CE4(char *a1, char *a2)
{
  if (qword_1013E9D68[*a1] == qword_1013E9D68[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100DE5D4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1013E9D68[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100DE5DA8()
{
  v1 = qword_1013E9D68[*v0];
  String.hash(into:)();
}

Swift::Int sub_100DE5DE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1013E9D68[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100DE5E40@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100DE65E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100DE5EA4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100DE65E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100DE5ECC(uint64_t a1)
{
  v2 = sub_100DE6310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100DE5F08(uint64_t a1)
{
  v2 = sub_100DE6310();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100DE5F74(unint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FamilyCryptoKeysV1() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  if ((v5 & 0x2000000000000000) != 0)
  {
    v7 = v5 & 0xDFFFFFFFFFFFFFFFLL;
    sub_100017D5C(*v3, v5 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100017D5C(v4, v5 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100017D5C(v4, v5 & 0xDFFFFFFFFFFFFFFFLL);
    sub_10002EA98(57, v4, v5 & 0xDFFFFFFFFFFFFFFFLL, v20);
    sub_100496F68(v20[0], v20[1], &v21);
    v8 = v22;
    if (v22 >> 60 == 15)
    {
      goto LABEL_10;
    }

    v9 = v21;
    sub_10001E524(v4, v5);
    v6 = v4;
    v4 = v9;
    v5 = v8;
  }

  else
  {
    sub_100017D5C(*v3, *(v3 + 8));
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  v10 = type metadata accessor for __DataStorage();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = __DataStorage.init(length:)();
  v21 = 0x2000000000;
  v22 = v13;
  sub_1007765FC(&v21, 0);
  v14 = HIDWORD(v21) - v21;
  if (__OFSUB__(HIDWORD(v21), v21))
  {
    __break(1u);
  }

  else
  {
    v15 = v22;
    if (v14 == 32)
    {
      *a1 = v21 | (HIDWORD(v21) << 32);
      a1[1] = v15 | 0x4000000000000000;
      a1[2] = v4;
      a1[3] = v5;
      a1[4] = v6;
      a1[5] = v7;
      return;
    }
  }

  v16 = v14;
  sub_100018350();
  v17 = swift_allocError();
  *v18 = 32;
  *(v18 + 8) = v16;
  *(v18 + 16) = 0;
  swift_willThrow();

  sub_100006654(v6, v7);
  sub_100016590(v4, v5);
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v19._countAndFlagsBits = 0xD00000000000003CLL;
  v19._object = 0x80000001013714C0;
  String.append(_:)(v19);
  v20[0] = v17;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
LABEL_10:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for FamilyCryptoKeysV1()
{
  result = qword_1016BBD68;
  if (!qword_1016BBD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100DE628C()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100DE6310()
{
  result = qword_1016BBDB0;
  if (!qword_1016BBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDB0);
  }

  return result;
}

unint64_t sub_100DE6364()
{
  result = qword_1016BBDB8;
  if (!qword_1016BBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDB8);
  }

  return result;
}

uint64_t sub_100DE63B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyCryptoKeysV1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100DE641C(uint64_t a1)
{
  v2 = type metadata accessor for FamilyCryptoKeysV1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100DE6478()
{
  result = qword_1016BBDC8;
  if (!qword_1016BBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDC8);
  }

  return result;
}

unint64_t sub_100DE64E0()
{
  result = qword_1016BBDD0;
  if (!qword_1016BBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDD0);
  }

  return result;
}

unint64_t sub_100DE6538()
{
  result = qword_1016BBDD8;
  if (!qword_1016BBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDD8);
  }

  return result;
}

unint64_t sub_100DE6590()
{
  result = qword_1016BBDE0;
  if (!qword_1016BBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BBDE0);
  }

  return result;
}

unint64_t sub_100DE65E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AD38, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100DE6630(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_101129A64(&off_101608E58);
  if (sub_100313A28(a1, a2) == 76)
  {
    sub_100313B54(a1, a2);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v11)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }

    v8 = sub_10111F5D4(v7, v6);
  }

  else
  {

    return 0;
  }

  return v8;
}

BOOL sub_100DE6748(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v12 = sub_101129A64(&off_101608360);
  sub_100DEFA08(&v11, 8216, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(&v11, 8220, &unk_1016BBDF0, &qword_1013D6808);
  sub_100DEFA08(&v11, 8233, &unk_1016BBDF0, &qword_1013D6808);
  v6 = sub_100313A28(a1, a2);
  v7 = v12;
  if (v6 == 76)
  {
    sub_100313B54(a1, a2);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (BYTE4(v11))
    {
      v8 = 0;
    }

    else
    {
      v8 = v11;
    }

    v9 = sub_10111F5D4(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL sub_100DE6918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for Endianness();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v18 = a4(a3);
  sub_100DEFA08(&v17, a5, &unk_1016BBDF0, &qword_1013D6808);
  v12 = sub_100313A28(a1, a2);
  v13 = v18;
  if (v12 == 76)
  {
    sub_100313B54(a1, a2);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (BYTE4(v17))
    {
      v14 = 0;
    }

    else
    {
      v14 = v17;
    }

    v15 = sub_10111F5D4(v14, v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_100DE6A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = __chkstk_darwin(v4);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v47 - v8;
  v9 = sub_1000BC4D4(&unk_1016BC140, &qword_1013E9EB8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  result = __chkstk_darwin(v11);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v50 = &v47 - v13;
  v51 = v14;
  v15 = 0;
  v48 = a1;
  v16 = *(a1 + 64);
  v47 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v52 = v56 + 16;
  v53 = (v56 + 32);
  v49 = (v56 + 8);
  while (1)
  {
    v21 = v51;
    if (!v19)
    {
      break;
    }

    v54 = (v19 - 1) & v19;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_16:
    v27 = *(*(v48 + 48) + v22);
    v29 = v55;
    v28 = v56;
    (*(v56 + 16))(v55, *(v48 + 56) + *(v56 + 72) * v22, v4);
    v30 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
    v31 = *(v30 + 48);
    *v21 = v27;
    (*(v28 + 32))(&v21[v31], v29, v4);
    (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
LABEL_17:
    v32 = v21;
    v33 = v50;
    sub_1000D2AD8(v32, v50, &unk_1016BC140, &qword_1013E9EB8);
    v34 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v38 = *v33;
    (*v53)(v57, &v33[v37], v4);
    v39 = sub_100771D14(v38);
    if ((v40 & 1) == 0)
    {
      (*v49)(v57, v4);
      return 0;
    }

    v41 = v55;
    v42 = v56;
    (*(v56 + 16))(v55, *(v58 + 56) + *(v56 + 72) * v39, v4);
    sub_1000097BC(&qword_101698290, &type metadata accessor for Date);
    v43 = v57;
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v42 + 8);
    v45(v41, v4);
    result = (v45)(v43, v4);
    v19 = v54;
    if ((v44 & 1) == 0)
    {
      return v36;
    }
  }

  if (v20 <= v15 + 1)
  {
    v23 = v15 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v46 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
      (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
      v54 = 0;
      v15 = v24;
      goto LABEL_17;
    }

    v26 = *(v47 + 8 * v25);
    ++v15;
    if (v26)
    {
      v54 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v15 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE6F58(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for FeatureSupportMatrix();
  v66 = *(v62 - 8);
  v4 = *(v66 + 64);
  v5 = __chkstk_darwin(v62);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v10 = (&v57 - v9);
  __chkstk_darwin(v8);
  v63 = &v57 - v11;
  v12 = sub_1000BC4D4(&qword_1016BBF10, &qword_1013E9DF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v65 = &v57 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v60 = v16;
  v61 = a2;
  v19 = 0;
  v20 = *(a1 + 64);
  v58 = a1 + 64;
  v59 = a1;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v25 = v24;
    v64 = (v23 - 1) & v23;
    v26 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = *(*(a1 + 48) + v26);
    v32 = v63;
    sub_100E0ED24(*(a1 + 56) + *(v66 + 72) * v26, v63, type metadata accessor for FeatureSupportMatrix);
    v33 = sub_1000BC4D4(&qword_1016BBF18, &qword_1013E9DF8);
    v34 = *(v33 + 48);
    v35 = v60;
    *v60 = v31;
    v36 = v32;
    v16 = v35;
    sub_100E0ECBC(v36, &v35[v34], type metadata accessor for FeatureSupportMatrix);
    (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
    v24 = v25;
LABEL_17:
    v37 = v65;
    sub_1000D2AD8(v16, v65, &qword_1016BBF10, &qword_1013E9DF0);
    v38 = sub_1000BC4D4(&qword_1016BBF18, &qword_1013E9DF8);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v37;
    sub_100E0ECBC(&v37[v41], v10, type metadata accessor for FeatureSupportMatrix);
    v43 = v61;
    v44 = sub_100771D84(v42);
    if ((v45 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_100E0ED24(*(v43 + 56) + *(v66 + 72) * v44, v7, type metadata accessor for FeatureSupportMatrix);
    if (*v7 != *v10 || (sub_100DE764C(v7[1], v10[1]) & 1) == 0)
    {
LABEL_36:
      sub_100E0EC5C(v7, type metadata accessor for FeatureSupportMatrix);
LABEL_37:
      sub_100E0EC5C(v10, type metadata accessor for FeatureSupportMatrix);
      return 0;
    }

    v46 = v7[2];
    v47 = v10[2];
    if (v46)
    {
      if (!v47)
      {
        goto LABEL_36;
      }

      v48 = v10[2];

      v49 = sub_100DE764C(v46, v47);

      if ((v49 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v47)
    {
      goto LABEL_36;
    }

    if ((sub_100DE7780(v7[3], v10[3]) & 1) == 0)
    {
      goto LABEL_36;
    }

    v50 = v7[4];
    v51 = v10[4];
    if (v50)
    {
      if (!v51)
      {
        goto LABEL_36;
      }

      v52 = v10[4];

      v53 = sub_100DE7780(v50, v51);

      if ((v53 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (v51)
    {
      goto LABEL_36;
    }

    v54 = *(v62 + 36);
    sub_10088D764();
    sub_10090C518();
    v55 = static CustomCodableKeyDictionary<>.== infix(_:_:)();
    sub_100E0EC5C(v7, type metadata accessor for FeatureSupportMatrix);
    result = sub_100E0EC5C(v10, type metadata accessor for FeatureSupportMatrix);
    a1 = v59;
    v23 = v64;
    if ((v55 & 1) == 0)
    {
      return v40;
    }
  }

  if (v24 <= v19 + 1)
  {
    v27 = v19 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v56 = sub_1000BC4D4(&qword_1016BBF18, &qword_1013E9DF8);
      (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
      v64 = 0;
      v19 = v28;
      goto LABEL_17;
    }

    v30 = *(v58 + 8 * v29);
    ++v19;
    if (v30)
    {
      v25 = v24;
      v64 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE7510(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100771D58(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE764C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100771D58(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE7780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemVersionNumber();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v52 - v9;
  v10 = sub_1000BC4D4(&qword_1016BBF30, &qword_1013E9E00);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  result = __chkstk_darwin(v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = sub_1000BC4D4(&qword_1016BBF38, &qword_1013E9E08);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1000D2AD8(v22, v56, &qword_1016BBF30, &qword_1013E9E00);
    v36 = sub_1000BC4D4(&qword_1016BBF38, &qword_1013E9E08);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_100771D58(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1000097BC(&unk_1016BBF40, &type metadata accessor for SystemVersionNumber);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = sub_1000BC4D4(&qword_1016BBF38, &qword_1013E9E08);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE7CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v70 = type metadata accessor for UUID();
  v62 = *(v70 - 8);
  v12 = *(v62 + 64);
  v13 = __chkstk_darwin(v70);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v55 - v15;
  v65 = a3;
  v66 = a4;
  v16 = sub_1000BC4D4(a3, a4);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  result = __chkstk_darwin(v18);
  v67 = &v55 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v20;
  v22 = 0;
  v58 = a1;
  v25 = *(a1 + 64);
  v24 = a1 + 64;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v56 = v24;
  v57 = v62 + 16;
  v68 = (v62 + 32);
  v59 = v29;
  v60 = (v62 + 8);
  while (v28)
  {
    v69 = (v28 - 1) & v28;
    v30 = __clz(__rbit64(v28)) | (v22 << 6);
LABEL_16:
    v37 = v58;
    v39 = v61;
    v38 = v62;
    v40 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v30, v70);
    LOBYTE(v37) = *(*(v37 + 56) + v30);
    v41 = sub_1000BC4D4(a5, a6);
    v42 = *(v41 + 48);
    v43 = *(v38 + 32);
    v33 = v64;
    v43(v64, v39, v40);
    *(v33 + v42) = v37;
    (*(*(v41 - 8) + 56))(v33, 0, 1, v41);
    v34 = v67;
LABEL_17:
    sub_1000D2AD8(v33, v34, v65, v66);
    v44 = sub_1000BC4D4(a5, a6);
    v45 = (*(*(v44 - 8) + 48))(v34, 1, v44);
    v46 = v45 == 1;
    if (v45 != 1)
    {
      v47 = *(v44 + 48);
      v48 = v63;
      v49 = v70;
      (*v68)(v63, v34, v70);
      v50 = *(v34 + v47);
      v51 = sub_1000210EC(v48);
      v53 = v52;
      result = (*v60)(v48, v49);
      if (v53)
      {
        v29 = v59;
        v28 = v69;
        if (*(*(a2 + 56) + v51) == v50)
        {
          continue;
        }
      }
    }

    return v46;
  }

  if (v29 <= v22 + 1)
  {
    v31 = v22 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  v33 = v64;
  v34 = v67;
  while (1)
  {
    v35 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v35 >= v29)
    {
      v54 = sub_1000BC4D4(a5, a6);
      (*(*(v54 - 8) + 56))(v33, 1, 1, v54);
      v69 = 0;
      v22 = v32;
      goto LABEL_17;
    }

    v36 = *(v56 + 8 * v35);
    ++v22;
    if (v36)
    {
      v69 = (v36 - 1) & v36;
      v30 = __clz(__rbit64(v36)) | (v35 << 6);
      v22 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE8118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v54 - v10;
  v11 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v13);
  v60 = (&v54 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = 0;
  v57 = a1;
  v58 = v5;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v55 = (v22 + 63) >> 6;
  v56 = v20;
  v25 = &qword_1016A4190;
  v26 = &unk_1013A3550;
  v59 = v9;
  while (v24)
  {
    v62 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v32 = (*(v57 + 48) + 16 * v27);
    v33 = *v32;
    v34 = v32[1];
    v35 = v63;
    sub_100E0ED24(*(v57 + 56) + *(v5 + 72) * v27, v63, type metadata accessor for OwnedBeaconGroup.PairingState);
    v36 = sub_1000BC4D4(v25, v26);
    v37 = *(v36 + 48);
    *v15 = v33;
    v15[1] = v34;
    sub_100E0ECBC(v35, v15 + v37, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
    sub_100017D5C(v33, v34);
LABEL_17:
    v38 = v60;
    sub_1000D2AD8(v15, v60, &unk_1016BBEA0, &unk_101395A80);
    v39 = sub_1000BC4D4(v25, v26);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v61 = v40 == 1;
    if (v40 == 1)
    {
      return v61;
    }

    v41 = v26;
    v42 = v25;
    v43 = v15;
    v44 = *v38;
    v45 = v38[1];
    v46 = v59;
    sub_100E0ECBC(v38 + *(v39 + 48), v59, type metadata accessor for OwnedBeaconGroup.PairingState);
    v47 = sub_100771E30(v44, v45);
    v49 = v48;
    sub_100016590(v44, v45);
    if ((v49 & 1) == 0)
    {
      sub_100E0EC5C(v46, type metadata accessor for OwnedBeaconGroup.PairingState);
      return 0;
    }

    v5 = v58;
    v50 = *(a2 + 56) + *(v58 + 72) * v47;
    v51 = v63;
    sub_100E0ED24(v50, v63, type metadata accessor for OwnedBeaconGroup.PairingState);
    v52 = sub_10051D0F4(v51, v46);
    sub_100E0EC5C(v51, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_100E0EC5C(v46, type metadata accessor for OwnedBeaconGroup.PairingState);
    v15 = v43;
    v25 = v42;
    v26 = v41;
    v24 = v62;
    if ((v52 & 1) == 0)
    {
      return v61;
    }
  }

  if (v55 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v55;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v30 >= v55)
    {
      v53 = sub_1000BC4D4(v25, v26);
      (*(*(v53 - 8) + 56))(v15, 1, 1, v53);
      v62 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v31 = *(v56 + 8 * v30);
    ++v18;
    if (v31)
    {
      v62 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) | (v30 << 6);
      v18 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE85BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = __chkstk_darwin(v4);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v60 - v9;
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = sub_1000BC4D4(&qword_1016A5A20, &qword_1013B3550);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = &v60 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = a1;
  v65 = a2;
  v21 = 0;
  v22 = *(a1 + 64);
  v62 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v68 = v17;
  v69 = (v77 + 32);
  v75 = v12;
  v76 = (v77 + 8);
  v67 = &v60 - v19;
  v63 = v26;
  v74 = v77 + 16;
  v61 = v10;
  while (v25)
  {
    v27 = v10;
    v66 = (v25 - 1) & v25;
    v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_17:
    v33 = v64;
    v34 = v77;
    (*(v77 + 16))(v12, *(v64 + 48) + *(v77 + 72) * v28, v4);
    v35 = *(*(v33 + 56) + 8 * v28);
    v36 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
    v37 = *(v36 + 48);
    v38 = *(v34 + 32);
    v39 = v68;
    v38(v68, v12, v4);
    *&v39[v37] = v35;
    v17 = v39;
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);

    v20 = v67;
    v10 = v27;
LABEL_18:
    sub_1000D2AD8(v17, v20, &qword_1016A5A20, &qword_1013B3550);
    v40 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
    v41 = 1;
    if ((*(*(v40 - 8) + 48))(v20, 1, v40) == 1)
    {
      return v41;
    }

    v42 = *(v40 + 48);
    (*v69)(v10, v20, v4);
    v43 = *&v20[v42];
    v44 = v65;
    v45 = sub_1000210EC(v10);
    v47 = v46;
    v48 = *v76;
    (*v76)(v10, v4);
    if ((v47 & 1) == 0 || (v49 = *(*(v44 + 56) + 8 * v45), v50 = *(v49 + 16), v50 != *(v43 + 16)))
    {
LABEL_32:

      return 0;
    }

    if (v50 && v49 != v43)
    {
      v51 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v71 = v49 + v51;
      v72 = v43;
      v70 = v43 + v51;

      v52 = 0;
      while (v52 < *(v49 + 16))
      {
        v53 = *(v77 + 72) * v52;
        v54 = *(v77 + 16);
        v55 = v75;
        result = v54(v75, v71 + v53, v4);
        if (v52 >= *(v72 + 16))
        {
          goto LABEL_37;
        }

        v56 = v70 + v53;
        v57 = v73;
        v54(v73, v56, v4);
        sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48(v57, v4);
        result = (v48)(v55, v4);
        if ((v58 & 1) == 0)
        {

          goto LABEL_32;
        }

        if (v50 == ++v52)
        {

          v10 = v61;
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v12 = v75;
    v20 = v67;
    v17 = v68;
    v26 = v63;
    v25 = v66;
  }

  if (v26 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v26;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v31 >= v26)
    {
      v59 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
      (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
      v66 = 0;
      v21 = v30;
      goto LABEL_18;
    }

    v32 = *(v62 + 8 * v31);
    ++v21;
    if (v32)
    {
      v27 = v10;
      v66 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v21 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100DE8BCC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100DFBAD0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100DE8EAC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1010F1494(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DF32B8(v19 + 1);
    }

    sub_1010F4000(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  v10 = *(v6 + 40);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100DFBD98(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_100DE9178(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_10076EE68();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v34 = ~v7;
    v9 = 0xEB00000000726577;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      v35 = v8;
      if (v10 <= 3)
      {
        if (v10 == 2)
        {
          v13 = 0x65776F5068676968;
        }

        else
        {
          v13 = 0x4F7265776F506E6FLL;
        }

        if (v10 == 2)
        {
          v14 = 0xE900000000000072;
        }

        else
        {
          v14 = 0xED0000694669576ELL;
        }

        if (*(*(v4 + 48) + v8))
        {
          v15 = 0x6F506D756964656DLL;
        }

        else
        {
          v15 = 0x7265776F50776F6CLL;
        }

        if (*(*(v4 + 48) + v8))
        {
          v16 = v9;
        }

        else
        {
          v16 = 0xE800000000000000;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(v4 + 48) + v8) <= 5u)
      {
        if (v10 == 4)
        {
          v11 = 0x4F7265776F506E6FLL;
        }

        else
        {
          v11 = 0x7265747461426E6FLL;
        }

        if (v10 == 4)
        {
          v12 = 0xED00006C6C65436ELL;
        }

        else
        {
          v12 = 0xEF694669576E4F79;
        }
      }

      else if (v10 == 6)
      {
        v11 = 0x7265747461426E6FLL;
        v12 = 0xEF6C6C65436E4F79;
      }

      else if (v10 == 7)
      {
        v11 = 0x6F696E61706D6F63;
        v12 = 0xEF79627261654E6ELL;
      }

      else
      {
        v11 = 0x6857796669746F6ELL;
        v12 = 0xEF646E756F466E65;
      }

      v17 = 0x6F696E61706D6F63;
      if (a2 != 7)
      {
        v17 = 0x6857796669746F6ELL;
      }

      v18 = 0xEF79627261654E6ELL;
      if (a2 != 7)
      {
        v18 = 0xEF646E756F466E65;
      }

      if (a2 == 6)
      {
        v17 = 0x7265747461426E6FLL;
        v18 = 0xEF6C6C65436E4F79;
      }

      if (a2 == 4)
      {
        v19 = 0x4F7265776F506E6FLL;
      }

      else
      {
        v19 = 0x7265747461426E6FLL;
      }

      v20 = 0xEF694669576E4F79;
      if (a2 == 4)
      {
        v20 = 0xED00006C6C65436ELL;
      }

      if (a2 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a2 == 2)
      {
        v21 = 0x65776F5068676968;
      }

      else
      {
        v21 = 0x4F7265776F506E6FLL;
      }

      if (a2 == 2)
      {
        v22 = 0xE900000000000072;
      }

      else
      {
        v22 = 0xED0000694669576ELL;
      }

      if (a2)
      {
        v23 = 0x6F506D756964656DLL;
      }

      else
      {
        v23 = 0x7265776F50776F6CLL;
      }

      if (a2)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      if (a2 <= 1u)
      {
        v21 = v23;
        v22 = v24;
      }

      v25 = a2 <= 3u ? v21 : v17;
      v26 = a2 <= 3u ? v22 : v18;
      if (v11 == v25 && v12 == v26)
      {
        break;
      }

      v27 = v9;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_73;
      }

      v8 = (v35 + 1) & v34;
      v9 = v27;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

LABEL_73:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v35);
  }

  else
  {
LABEL_71:
    v29 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v32;
    sub_100DFBF94(a2, v8, isUniquelyReferenced_nonNull_native);
    *v32 = v36;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DE9538(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100DFC3AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100DE9688(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = *v42;
    sub_100017D5C(a2, a3);
    sub_100DFC52C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v42 = *v52;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v50 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v47 = v16;
  v46 = a3;
  v48 = v12;
  v49 = BYTE6(a3);
  v44 = v6 + 56;
  v45 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v50) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_65;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_66;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v49;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v47)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v52 = v19;
        *&v52[8] = v18;
        v52[10] = BYTE2(v18);
        v52[11] = BYTE3(v18);
        v52[12] = BYTE4(v18);
        v52[13] = BYTE5(v18);
        sub_100017D5C(v19, v18);
        v12 = v48;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_67;
      }

      sub_100017D5C(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_70;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_100017D5C(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_69;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v46;
    sub_100771A28(v33, a2, v46, v52);
    sub_100016590(v19, v18);
    v9 = v44;
    v6 = v45;
    v12 = v48;
    if (v52[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v52[6] = 0;
  *v52 = 0;
  sub_100017D5C(v19, v18);
LABEL_60:
  sub_100771A28(v52, a2, a3, &v51);
  sub_100016590(v19, v18);
  if (!v51)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_100016590(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_100017D5C(v41, *(&v41 + 1));
  return 0;
}

uint64_t sub_100DE9B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1011D8230();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_100E0ED24(*(v10 + 48) + v16 * v14, v9, type metadata accessor for SharedBeaconRecord);
      v17 = sub_1011DB3D8(v9, a2);
      sub_100E0EC5C(v9, type metadata accessor for SharedBeaconRecord);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100E0EC5C(a2, type metadata accessor for SharedBeaconRecord);
    sub_100E0ED24(*(v10 + 48) + v16 * v14, v22, type metadata accessor for SharedBeaconRecord);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100E0ED24(a2, v9, type metadata accessor for SharedBeaconRecord);
    v23 = *v3;
    sub_100DFCB14(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    sub_100E0ECBC(a2, v20, type metadata accessor for SharedBeaconRecord);
    return 1;
  }
}

uint64_t sub_100DE9DC0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100DFCD90(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DE9EA8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for BeaconNamingRecord();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v68 - v12);
  v79 = *v2;
  v14 = *(v79 + 40);
  Hasher.init(_seed:)();
  v15 = *a2;
  v16 = a2[1];
  Data.hash(into:)();
  v17 = v6[5];
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
  v77 = v17;
  dispatch thunk of Hashable.hash(into:)();
  v84 = v6[6];
  dispatch thunk of Hashable.hash(into:)();
  v78 = *(a2 + v6[7]);
  Hasher._combine(_:)(v78);
  v18 = (a2 + v6[8]);
  v19 = v18[1];
  v76 = *v18;
  v75 = v19;
  String.hash(into:)();
  v20 = (a2 + v6[9]);
  v21 = *v20;
  v22 = v20[1];
  v72 = a1;
  v71 = v3;
  v70 = v13;
  if (v22)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v23 = Hasher._finalize()();
  v24 = v79;
  v25 = -1 << *(v79 + 32);
  v26 = v23 & ~v25;
  v83 = v79 + 56;
  if ((*(v79 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v73 = v22;
    v69 = v21;
    v89 = ~v25;
    v27 = *a2;
    v28 = a2[1];
    v90 = *(v7 + 72);
    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28 == 0xC000000000000000;
    }

    v30 = !v29;
    v88 = v30;
    v31 = v28 >> 62;
    v85 = 0;
    v86 = v27;
    v32 = HIDWORD(v27) - v27;
    v33 = __OFSUB__(HIDWORD(v27), v27);
    v82 = v33;
    v81 = v32;
    v80 = v28;
    v87 = BYTE6(v28);
    v74 = a2;
    v34 = v83;
    while (1)
    {
      v35 = v90 * v26;
      sub_100E0ED24(*(v24 + 48) + v90 * v26, v11, type metadata accessor for BeaconNamingRecord);
      v36 = *v11;
      v37 = v11[1];
      v38 = v37 >> 62;
      if (v37 >> 62 == 3)
      {
        break;
      }

      if (v38 > 1)
      {
        if (v38 != 2)
        {
          goto LABEL_39;
        }

        v44 = *(v36 + 16);
        v43 = *(v36 + 24);
        v45 = __OFSUB__(v43, v44);
        v42 = v43 - v44;
        if (v45)
        {
          goto LABEL_82;
        }

        if (v31 > 1)
        {
          goto LABEL_40;
        }
      }

      else if (v38)
      {
        LODWORD(v42) = HIDWORD(v36) - v36;
        if (__OFSUB__(HIDWORD(v36), v36))
        {
          goto LABEL_83;
        }

        v42 = v42;
        if (v31 > 1)
        {
LABEL_40:
          if (v31 != 2)
          {
            if (v42)
            {
              goto LABEL_16;
            }

            goto LABEL_64;
          }

          v48 = *(v86 + 16);
          v47 = *(v86 + 24);
          v45 = __OFSUB__(v47, v48);
          v46 = v47 - v48;
          if (v45)
          {
            goto LABEL_81;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v42 = BYTE6(v37);
        if (v31 > 1)
        {
          goto LABEL_40;
        }
      }

LABEL_36:
      v46 = v87;
      if (v31)
      {
        v46 = v81;
        if (v82)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
        }
      }

LABEL_42:
      if (v42 != v46)
      {
        goto LABEL_16;
      }

      if (v42 < 1)
      {
        goto LABEL_64;
      }

      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v50 = *(v36 + 16);
          v49 = *(v36 + 24);
          v51 = __DataStorage._bytes.getter();
          if (v51)
          {
            v52 = __DataStorage._offset.getter();
            if (__OFSUB__(v50, v52))
            {
              goto LABEL_86;
            }

            v51 += v50 - v52;
          }

          if (__OFSUB__(v49, v50))
          {
            goto LABEL_85;
          }

LABEL_60:
          __DataStorage._length.getter();
          v55 = v85;
          sub_100771A28(v51, v86, v80, v92);
          v85 = v55;
          a2 = v74;
          v24 = v79;
          v34 = v83;
          if ((v92[0] & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_64;
        }

        *&v92[6] = 0;
        *v92 = 0;
      }

      else
      {
        if (v38)
        {
          v53 = v36;
          if (v36 >> 32 < v36)
          {
            goto LABEL_84;
          }

          v51 = __DataStorage._bytes.getter();
          if (v51)
          {
            v54 = __DataStorage._offset.getter();
            if (__OFSUB__(v53, v54))
            {
              goto LABEL_87;
            }

            v51 += v53 - v54;
          }

          goto LABEL_60;
        }

        *v92 = *v11;
        *&v92[8] = v37;
        v92[10] = BYTE2(v37);
        v92[11] = BYTE3(v37);
        v92[12] = BYTE4(v37);
        v92[13] = BYTE5(v37);
      }

      v56 = v85;
      sub_100771A28(v92, v86, v80, &v91);
      v85 = v56;
      v34 = v83;
      if (!v91)
      {
        goto LABEL_16;
      }

LABEL_64:
      v57 = v6[5];
      if (static UUID.== infix(_:_:)())
      {
        v58 = v11 + v6[6];
        if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v11 + v6[7]) == v78)
        {
          v59 = (v11 + v6[8]);
          v60 = *v59 == v76 && v59[1] == v75;
          if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v61 = (v11 + v6[9]);
            v62 = v61[1];
            if (v62)
            {
              if (v73 && (*v61 == v69 && v62 == v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
LABEL_79:
                sub_100E0EC5C(v11, type metadata accessor for BeaconNamingRecord);
                sub_100E0EC5C(a2, type metadata accessor for BeaconNamingRecord);
                sub_100E0ED24(*(v24 + 48) + v35, v72, type metadata accessor for BeaconNamingRecord);
                return 0;
              }
            }

            else if (!v73)
            {
              goto LABEL_79;
            }
          }
        }
      }

LABEL_16:
      sub_100E0EC5C(v11, type metadata accessor for BeaconNamingRecord);
      v26 = (v26 + 1) & v89;
      if (((*(v34 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    if (v36)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37 == 0xC000000000000000;
    }

    v41 = !v39 || v31 < 3;
    if (((v41 | v88) & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_39:
    v42 = 0;
    if (v31 > 1)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_80:
  v64 = v71;
  v65 = *v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v70;
  sub_100E0ED24(a2, v70, type metadata accessor for BeaconNamingRecord);
  *v92 = *v64;
  sub_100DFCEC8(v67, v26, isUniquelyReferenced_nonNull_native);
  *v64 = *v92;
  sub_100E0ECBC(a2, v72, type metadata accessor for BeaconNamingRecord);
  return 1;
}

uint64_t sub_100DEA678(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1010F16CC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016C7C70, &unk_1014060A0);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016C7C70, &unk_1014060A0, &unk_1016BBE80, SPBeaconShare_ptr);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100DEA8E0(uint64_t a1, Swift::Int a2, uint64_t a3, int a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a4 & 1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      v16 = *(v15 + 16);
      v17 = *v15 == a2 && *(v15 + 8) == a3;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v16 ^ a4) & 1) == 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v22 = *(v8 + 48) + 24 * v12;
    v24 = *v22;
    v23 = *(v22 + 8);
    LOBYTE(v22) = *(v22 + 16);
    *a1 = v24;
    *(a1 + 8) = v23;
    *(a1 + 16) = v22;

    return 0;
  }

  else
  {
LABEL_11:
    v18 = a4 & 1;
    v19 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;

    sub_100DFD698(a2, a3, v18, v12, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }
}

uint64_t sub_100DEAA7C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1010F18BC(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DF4924(v19 + 1);
    }

    sub_1010F401C(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  v10 = *(v6 + 40);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100DFD854(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_100DEAD2C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = *v42;
    sub_100017D5C(a2, a3);
    sub_100DFDA50(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v42 = *v52;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v50 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v47 = v16;
  v46 = a3;
  v48 = v12;
  v49 = BYTE6(a3);
  v44 = v6 + 56;
  v45 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v50) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_65;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_66;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v49;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v47)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v52 = v19;
        *&v52[8] = v18;
        v52[10] = BYTE2(v18);
        v52[11] = BYTE3(v18);
        v52[12] = BYTE4(v18);
        v52[13] = BYTE5(v18);
        sub_100017D5C(v19, v18);
        v12 = v48;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_67;
      }

      sub_100017D5C(v19, v18);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v35 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_70;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_100017D5C(v19, v18);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_69;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v46;
    sub_100771A28(v33, a2, v46, v52);
    sub_100016590(v19, v18);
    v9 = v44;
    v6 = v45;
    v12 = v48;
    if (v52[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v52[6] = 0;
  *v52 = 0;
  sub_100017D5C(v19, v18);
LABEL_60:
  sub_100771A28(v52, a2, a3, &v51);
  sub_100016590(v19, v18);
  if (!v51)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_100016590(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_100017D5C(v41, *(&v41 + 1));
  return 0;
}

uint64_t sub_100DEB1D0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1010F1AF4(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BBED0, &qword_1013E9DD8);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBED0, &qword_1013E9DD8, &qword_1016996A0, FAFamilyMember_ptr);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100DEB438(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = (v14 + 24 * v12);
      if (*v15 == a2)
      {
        v16 = *(v15 + 1) == a3 && *(v15 + 2) == a4;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v17 = *(v8 + 48) + 24 * v12;
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v18;

    return 0;
  }

  else
  {
LABEL_11:
    v21 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_100DFE058(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_100DEB610(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1012C5AB0(a2);
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_80:
    v24 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    sub_100DFE850(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v28;
    result = 1;
    goto LABEL_83;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v12 = 0xD000000000000015;
        v11 = 0x8000000101347FF0;
        break;
      case 2:
        v12 = 0xD000000000000016;
        v11 = 0x8000000101348010;
        break;
      case 3:
        v11 = 0xE600000000000000;
        v12 = 0x657461636F6CLL;
        break;
      case 4:
        v11 = 0xEC000000676E6972;
        v12 = 0x6168537472617473;
        break;
      case 5:
        v12 = 0x72616853706F7473;
        goto LABEL_18;
      case 6:
        v14 = 2036427888;
        goto LABEL_22;
      case 7:
        v14 = 1886352499;
LABEL_22:
        v12 = v14 | 0x6E756F5300000000;
        v11 = 0xE900000000000064;
        break;
      case 8:
        v12 = 0x61654C6E69676562;
        v11 = 0xED0000676E696873;
        break;
      case 9:
        v12 = 0x687361654C646E65;
LABEL_18:
        v11 = 0xEB00000000676E69;
        break;
      case 0xA:
        v12 = 0x4654426E69676562;
        v11 = 0xEE00676E69646E69;
        break;
      case 0xB:
        v12 = 0x6E69465442646E65;
        v13 = 1735289188;
        goto LABEL_29;
      case 0xC:
        v11 = 0xEC000000676E6967;
        v12 = 0x6E61526E69676562;
        break;
      case 0xD:
        v12 = 0x69676E6152646E65;
        v11 = 0xEA0000000000676ELL;
        break;
      case 0xE:
        v12 = 0x6F4C656C62616E65;
        v11 = 0xEE0065646F4D7473;
        break;
      case 0xF:
        v12 = 0x4C656C6261736964;
        v11 = 0xEF65646F4D74736FLL;
        break;
      case 0x10:
        v11 = 0xE600000000000000;
        v12 = 0x656D616E6572;
        break;
      case 0x11:
        v12 = 0x7463656E6E6F63;
        break;
      case 0x12:
        v11 = 0xEA00000000007463;
        v12 = 0x656E6E6F63736964;
        break;
      case 0x13:
        v12 = 0xD000000000000017;
        v11 = 0x80000001013480F0;
        break;
      case 0x14:
        v11 = 0xE600000000000000;
        v12 = 0x726961706E75;
        break;
      case 0x15:
        v12 = 0x65746167656C6564;
        v11 = 0xEE00657261685364;
        break;
      case 0x16:
        v12 = 0xD000000000000013;
        v11 = 0x8000000101348120;
        break;
      case 0x17:
        v12 = 0x6F69736963657270;
        v13 = 1481004654;
LABEL_29:
        v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    switch(a2)
    {
      case 1:
        v15 = 0x8000000101347FF0;
        if (v12 == 0xD000000000000015)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      case 2:
        v15 = 0x8000000101348010;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 3:
        v15 = 0xE600000000000000;
        if (v12 != 0x657461636F6CLL)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 4:
        v15 = 0xEC000000676E6972;
        if (v12 != 0x6168537472617473)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 5:
        v21 = 0x72616853706F7473;
        goto LABEL_54;
      case 6:
        v22 = 2036427888;
        goto LABEL_60;
      case 7:
        v22 = 1886352499;
LABEL_60:
        v15 = 0xE900000000000064;
        if (v12 != (v22 | 0x6E756F5300000000))
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 8:
        v15 = 0xED0000676E696873;
        if (v12 != 0x61654C6E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 9:
        v21 = 0x687361654C646E65;
LABEL_54:
        v15 = 0xEB00000000676E69;
        if (v12 != v21)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 10:
        v17 = 0x4654426E69676562;
        v18 = 0x676E69646E69;
        goto LABEL_65;
      case 11:
        v19 = 0x6E69465442646E65;
        v20 = 1735289188;
        goto LABEL_78;
      case 12:
        v15 = 0xEC000000676E6967;
        if (v12 != 0x6E61526E69676562)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 13:
        v15 = 0xEA0000000000676ELL;
        if (v12 != 0x69676E6152646E65)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 14:
        v17 = 0x6F4C656C62616E65;
        v18 = 0x65646F4D7473;
        goto LABEL_65;
      case 15:
        v15 = 0xEF65646F4D74736FLL;
        if (v12 != 0x4C656C6261736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 16:
        v15 = 0xE600000000000000;
        if (v12 != 0x656D616E6572)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 17:
        if (v12 != 0x7463656E6E6F63)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 18:
        v15 = 0xEA00000000007463;
        if (v12 != 0x656E6E6F63736964)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 19:
        v16 = 0xD000000000000017;
        v15 = 0x80000001013480F0;
        goto LABEL_72;
      case 20:
        v15 = 0xE600000000000000;
        if (v12 != 0x726961706E75)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 21:
        v17 = 0x65746167656C6564;
        v18 = 0x657261685364;
LABEL_65:
        v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v12 != v17)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 22:
        v15 = 0x8000000101348120;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      case 23:
        v19 = 0x6F69736963657270;
        v20 = 1481004654;
LABEL_78:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v12 != v19)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      default:
LABEL_72:
        if (v12 != v16)
        {
          goto LABEL_74;
        }

LABEL_73:
        if (v11 != v15)
        {
LABEL_74:
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_82;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_80;
          }

          continue;
        }

LABEL_82:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_83:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_100DEBD80(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1010F1CE4(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016C7F40, &unk_101406220);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016C7F40, &unk_101406220, &unk_1016B1680, SPSafeLocation_ptr);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100DEBFE8(_BYTE *a1, int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 48);
    while (*(v11 + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v15 = (v11 + 4 * v9);
    v16 = v15[1];
    v17 = v15[2];
    LOBYTE(v15) = v15[3];
    *a1 = a2;
    a1[1] = v16;
    a1[2] = v17;
    a1[3] = v15;
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100DFF01C(a2 & 0x10101FF, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    *a1 = a2;
    a1[1] = BYTE1(a2) & 1;
    a1[2] = BYTE2(a2) & 1;
    a1[3] = HIBYTE(a2) & 1;
    return 1;
  }

  return result;
}

uint64_t sub_100DEC12C(uint64_t a1, uint64_t *a2)
{
  v62 = a1;
  v4 = type metadata accessor for OwnerSharingCircle();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v60 = (&v58 - v10);
  v61 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v13 = *a2;
  v14 = a2[1];
  Data.hash(into:)();
  v15 = v4[5];
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
  v66 = v15;
  dispatch thunk of Hashable.hash(into:)();
  v72 = v4[6];
  dispatch thunk of Hashable.hash(into:)();
  v67 = *(a2 + v4[7]);
  Hasher._combine(_:)(v67);
  v63 = *(a2 + v4[8]);
  sub_100E1168C(v80, v63);
  v59 = *(a2 + v4[9]);
  Hasher._combine(_:)(v59);
  v16 = Hasher._finalize()();
  v17 = v11 + 56;
  v18 = -1 << *(v11 + 32);
  v19 = v16 & ~v18;
  if ((*(v11 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = v11;
    v77 = ~v18;
    v21 = *a2;
    v22 = a2[1];
    if (*a2)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22 == 0xC000000000000000;
    }

    v24 = !v23;
    v76 = v24;
    v78 = *(v5 + 72);
    v25 = v22 >> 62;
    v73 = 0;
    v74 = v21;
    v26 = HIDWORD(v21) - v21;
    v27 = __OFSUB__(HIDWORD(v21), v21);
    v71 = v27;
    v70 = v26;
    v68 = v22;
    v75 = BYTE6(v22);
    v65 = a2;
    v64 = v20;
    v69 = v17;
    while (1)
    {
      v28 = v78 * v19;
      sub_100E0ED24(*(v20 + 48) + v78 * v19, v9, type metadata accessor for OwnerSharingCircle);
      v29 = *v9;
      v30 = v9[1];
      v31 = v30 >> 62;
      if (v30 >> 62 != 3)
      {
        break;
      }

      if (v29)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30 == 0xC000000000000000;
      }

      v34 = !v32 || v25 < 3;
      if ((v34 | v76))
      {
        goto LABEL_36;
      }

LABEL_61:
      v51 = v4[5];
      if (static UUID.== infix(_:_:)())
      {
        v52 = v9 + v4[6];
        if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v9 + v4[7]) == v67 && (sub_100DE7CD8(*(v9 + v4[8]), v63, &unk_1016BC360, &qword_10139CBE0, &qword_1016BBEE0, &unk_10139CBF0) & 1) != 0 && *(v9 + v4[9]) == v59)
        {
          sub_100E0EC5C(v9, type metadata accessor for OwnerSharingCircle);
          sub_100E0EC5C(a2, type metadata accessor for OwnerSharingCircle);
          sub_100E0ED24(*(v20 + 48) + v28, v62, type metadata accessor for OwnerSharingCircle);
          return 0;
        }
      }

LABEL_13:
      sub_100E0EC5C(v9, type metadata accessor for OwnerSharingCircle);
      v19 = (v19 + 1) & v77;
      if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        v38 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v38)
        {
          goto LABEL_70;
        }

        if (v25 > 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_36:
        v35 = 0;
        if (v25 > 1)
        {
LABEL_37:
          if (v25 != 2)
          {
            if (v35)
            {
              goto LABEL_13;
            }

            goto LABEL_61;
          }

          v41 = *(v74 + 16);
          v40 = *(v74 + 24);
          v38 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v38)
          {
            goto LABEL_68;
          }

LABEL_39:
          if (v35 != v39)
          {
            goto LABEL_13;
          }

          if (v35 < 1)
          {
            goto LABEL_61;
          }

          if (v31 > 1)
          {
            if (v31 != 2)
            {
              *(v80 + 6) = 0;
              *&v80[0] = 0;
              goto LABEL_59;
            }

            v43 = *(v29 + 16);
            v42 = *(v29 + 24);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v45 = __DataStorage._offset.getter();
              if (__OFSUB__(v43, v45))
              {
                goto LABEL_73;
              }

              v44 += v43 - v45;
            }

            if (__OFSUB__(v42, v43))
            {
              goto LABEL_72;
            }
          }

          else
          {
            if (!v31)
            {
              *&v80[0] = *v9;
              WORD4(v80[0]) = v30;
              BYTE10(v80[0]) = BYTE2(v30);
              BYTE11(v80[0]) = BYTE3(v30);
              BYTE12(v80[0]) = BYTE4(v30);
              BYTE13(v80[0]) = BYTE5(v30);
LABEL_59:
              v50 = v73;
              sub_100771A28(v80, v74, v68, &v79);
              v73 = v50;
              v49 = v79;
LABEL_60:
              v17 = v69;
              if ((v49 & 1) == 0)
              {
                goto LABEL_13;
              }

              goto LABEL_61;
            }

            v46 = v29;
            if (v29 >> 32 < v29)
            {
              goto LABEL_71;
            }

            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v47 = __DataStorage._offset.getter();
              if (__OFSUB__(v46, v47))
              {
                goto LABEL_74;
              }

              v44 += v46 - v47;
            }
          }

          __DataStorage._length.getter();
          v48 = v73;
          sub_100771A28(v44, v74, v68, v80);
          v73 = v48;
          v49 = v80[0];
          a2 = v65;
          v20 = v64;
          goto LABEL_60;
        }
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_69;
      }

      v35 = v35;
      if (v25 > 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v35 = BYTE6(v30);
      if (v25 > 1)
      {
        goto LABEL_37;
      }
    }

    v39 = v75;
    if (v25)
    {
      v39 = v70;
      if (v71)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }
    }

    goto LABEL_39;
  }

LABEL_67:
  v54 = v61;
  v55 = *v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v60;
  sub_100E0ED24(a2, v60, type metadata accessor for OwnerSharingCircle);
  *&v80[0] = *v54;
  sub_100DFF188(v57, v19, isUniquelyReferenced_nonNull_native);
  *v54 = *&v80[0];
  sub_100E0ECBC(a2, v62, type metadata accessor for OwnerSharingCircle);
  return 1;
}

uint64_t sub_100DEC848(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1010F1ED4(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016BBFF0, &unk_1013B35C0);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBFF0, &unk_1013B35C0, &qword_101698D00, SPHandle_ptr);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100DECAB0(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_10125403C(a2);
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_63:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_100DFF898(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
    result = 1;
    goto LABEL_66;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE700000000000000;
    v12 = 0x7972616D697270;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v11 = 0xE900000000000079;
        v12 = 0x7261646E6F636573;
        break;
      case 2:
        v12 = 0xD000000000000019;
        v11 = 0x8000000101348160;
        break;
      case 3:
        v12 = 0xD00000000000001BLL;
        v11 = 0x8000000101348180;
        break;
      case 4:
        v12 = 0x646E7542646C6977;
        v11 = 0xEA0000000000656CLL;
        break;
      case 5:
        v12 = 0x417972616D697270;
        v11 = 0xEE00737365726464;
        break;
      case 6:
        v12 = 0xD000000000000010;
        v11 = 0x80000001013481C0;
        break;
      case 7:
        v12 = 0xD000000000000012;
        v11 = 0x80000001013475D0;
        break;
      case 8:
        v12 = 0xD000000000000011;
        v11 = 0x80000001013475F0;
        break;
      case 9:
        v12 = 0x697463656E6E6F63;
        v11 = 0xED000079654B6E6FLL;
        break;
      case 0xA:
        v12 = 0x656E774F7261656ELL;
        v11 = 0xEC00000079654B72;
        break;
      case 0xB:
        v12 = 0x656B6F546E696F6ALL;
        v11 = 0xE90000000000006ELL;
        break;
      case 0xC:
        v12 = 0xD000000000000015;
        v11 = 0x80000001013481F0;
        break;
      case 0xD:
        v12 = 0xD000000000000010;
        v11 = 0x8000000101348210;
        break;
      case 0xE:
        v12 = 0x7461636F4C626577;
        v11 = 0xEE0079654B6E6F69;
        break;
      case 0xF:
        v12 = 0x646174654D626577;
        v11 = 0xEB00000000617461;
        break;
      case 0x10:
        v12 = 0x6D65744974736F6CLL;
        v11 = 0xED00007365746144;
        break;
      case 0x11:
        v12 = 0xD000000000000014;
        v11 = 0x8000000101348240;
        break;
      case 0x12:
        v12 = 0xD000000000000016;
        v11 = 0x8000000101348260;
        break;
      default:
        break;
    }

    v13 = 0xE700000000000000;
    v14 = 0x7972616D697270;
    switch(a2)
    {
      case 1:
        v13 = 0xE900000000000079;
        if (v12 == 0x7261646E6F636573)
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      case 2:
        v13 = 0x8000000101348160;
        if (v12 != 0xD000000000000019)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 3:
        v13 = 0x8000000101348180;
        if (v12 != 0xD00000000000001BLL)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 4:
        v13 = 0xEA0000000000656CLL;
        if (v12 != 0x646E7542646C6977)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 5:
        v17 = 0x417972616D697270;
        v18 = 0x737365726464;
        goto LABEL_47;
      case 6:
        v13 = 0x80000001013481C0;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 7:
        v13 = 0x80000001013475D0;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 8:
        v13 = 0x80000001013475F0;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 9:
        v15 = 0x697463656E6E6F63;
        v16 = 0x79654B6E6FLL;
        goto LABEL_34;
      case 10:
        v14 = 0x656E774F7261656ELL;
        v13 = 0xEC00000079654B72;
        goto LABEL_56;
      case 11:
        v13 = 0xE90000000000006ELL;
        if (v12 != 0x656B6F546E696F6ALL)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 12:
        v13 = 0x80000001013481F0;
        if (v12 != 0xD000000000000015)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 13:
        v13 = 0x8000000101348210;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 14:
        v17 = 0x7461636F4C626577;
        v18 = 0x79654B6E6F69;
LABEL_47:
        v13 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v12 != v17)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 15:
        v13 = 0xEB00000000617461;
        if (v12 != 0x646174654D626577)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 16:
        v15 = 0x6D65744974736F6CLL;
        v16 = 0x7365746144;
LABEL_34:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v12 != v15)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 17:
        v13 = 0x8000000101348240;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      case 18:
        v13 = 0x8000000101348260;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      default:
LABEL_56:
        if (v12 != v14)
        {
          goto LABEL_58;
        }

LABEL_57:
        if (v11 != v13)
        {
LABEL_58:
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_65;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_63;
          }

          continue;
        }

LABEL_65:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_66:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_100DED164(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000097BC(&unk_1016C7F60, &type metadata accessor for MACAddress);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100DFFF80(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100DED444(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100E00248(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100DED594(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v9 = a3 >> 60;
  v55 = v3;
  if (a3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_74:
    v45 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v59 = *v55;
    sub_10002E98C(a2, a3);
    sub_100E003C8(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v55 = *v59;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v13 = ~v11;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v56 = v15;
  v16 = a3 >> 62;
  v17 = __OFSUB__(HIDWORD(a2), a2);
  v53 = v17;
  v54 = v13;
  v57 = 0;
  while (1)
  {
    v18 = (*(v7 + 48) + 16 * v12);
    v20 = *v18;
    v19 = v18[1];
    if (v19 >> 60 == 15)
    {
      if (v9 > 0xE)
      {
        sub_10002E98C(v20, v19);
        v48 = v20;
        v49 = v19;
        goto LABEL_78;
      }

      goto LABEL_19;
    }

    if (v9 <= 0xE)
    {
      break;
    }

LABEL_19:
    sub_10002E98C(a2, a3);
    sub_10002E98C(v20, v19);
    sub_100429EA8(v20, v19);
    v21 = a2;
    v22 = a3;
LABEL_20:
    sub_100429EA8(v21, v22);
LABEL_21:
    v12 = (v12 + 1) & v13;
    v16 = a3 >> 62;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  v23 = v19 >> 62;
  if (v19 >> 62 == 3)
  {
    if (v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = v19 == 0xC000000000000000;
    }

    v26 = !v24 || v16 < 3;
    if (((v26 | v56) & 1) == 0)
    {
      sub_10002E98C(0, 0xC000000000000000);
      sub_10002E98C(0, 0xC000000000000000);
      sub_100429EA8(0, 0xC000000000000000);
      v20 = 0;
      goto LABEL_76;
    }

LABEL_45:
    v27 = 0;
    if (v16 > 1)
    {
      goto LABEL_46;
    }

LABEL_42:
    v31 = BYTE6(a3);
    if (v16)
    {
      v31 = HIDWORD(a2) - a2;
      if (v53)
      {
        goto LABEL_80;
      }
    }

LABEL_48:
    if (v27 == v31)
    {
      if (v27 < 1)
      {
        goto LABEL_75;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *&v59[6] = 0;
          *v59 = 0;
          sub_10002E98C(v20, v19);
          sub_10002E98C(a2, a3);
          sub_10002E98C(v20, v19);
          goto LABEL_72;
        }

        v34 = *(v20 + 16);
        v51 = *(v20 + 24);
        v52 = a1;
        sub_10002E98C(v20, v19);
        sub_10002E98C(a2, a3);
        sub_10002E98C(v20, v19);
        v35 = __DataStorage._bytes.getter();
        if (v35)
        {
          v36 = __DataStorage._offset.getter();
          if (__OFSUB__(v34, v36))
          {
            goto LABEL_85;
          }

          v35 += v34 - v36;
        }

        if (__OFSUB__(v51, v34))
        {
          goto LABEL_84;
        }

        __DataStorage._length.getter();
        v37 = v35;
        v38 = a2;
        v39 = a3;
        v40 = v57;
      }

      else
      {
        if (!v23)
        {
          *v59 = v20;
          *&v59[8] = v19;
          v59[10] = BYTE2(v19);
          v59[11] = BYTE3(v19);
          v59[12] = BYTE4(v19);
          v59[13] = BYTE5(v19);
          sub_10002E98C(v20, v19);
          sub_10002E98C(a2, a3);
          sub_10002E98C(v20, v19);
LABEL_72:
          v40 = v57;
          sub_100771A28(v59, a2, a3, &v58);
          sub_100429EA8(v20, v19);
          sub_100429EA8(a2, a3);
          v44 = v58;
          sub_100429EA8(v20, v19);
          if (v44)
          {
            goto LABEL_77;
          }

LABEL_73:
          v57 = v40;
          v13 = v54;
          v9 = a3 >> 60;
          goto LABEL_21;
        }

        v52 = a1;
        if (v20 >> 32 < v20)
        {
          goto LABEL_83;
        }

        sub_10002E98C(v20, v19);
        sub_10002E98C(a2, a3);
        sub_10002E98C(v20, v19);
        v41 = __DataStorage._bytes.getter();
        if (v41)
        {
          v42 = __DataStorage._offset.getter();
          if (__OFSUB__(v20, v42))
          {
            goto LABEL_86;
          }

          v41 += v20 - v42;
        }

        v40 = v57;
        __DataStorage._length.getter();
        v37 = v41;
        v38 = a2;
        v39 = a3;
      }

      sub_100771A28(v37, v38, v39, v59);
      sub_100429EA8(v20, v19);
      sub_100429EA8(a2, a3);
      v43 = v59[0];
      sub_100429EA8(v20, v19);
      a1 = v52;
      if (v43)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }

LABEL_54:
    sub_10002E98C(a2, a3);
    sub_10002E98C(v20, v19);
    sub_100429EA8(a2, a3);
    v21 = v20;
    v22 = v19;
    goto LABEL_20;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      LODWORD(v27) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_81;
      }

      v27 = v27;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v27 = BYTE6(v19);
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_42;
  }

  if (v23 != 2)
  {
    goto LABEL_45;
  }

  v29 = *(v20 + 16);
  v28 = *(v20 + 24);
  v30 = __OFSUB__(v28, v29);
  v27 = v28 - v29;
  if (v30)
  {
    goto LABEL_82;
  }

  if (v16 <= 1)
  {
    goto LABEL_42;
  }

LABEL_46:
  if (v16 == 2)
  {
    v33 = *(a2 + 16);
    v32 = *(a2 + 24);
    v30 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (v30)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    goto LABEL_48;
  }

  if (v27)
  {
    goto LABEL_54;
  }

LABEL_75:
  sub_10002E98C(a2, a3);
  sub_10002E98C(v20, v19);
  sub_100429EA8(a2, a3);
LABEL_76:
  sub_100429EA8(v20, v19);
LABEL_77:
  v48 = a2;
  v49 = a3;
LABEL_78:
  sub_100429EA8(v48, v49);
  v50 = *(*(v7 + 48) + 16 * v12);
  *a1 = v50;
  sub_10002E98C(v50, *(&v50 + 1));
  return 0;
}

uint64_t sub_100DEDBEC(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v63 - v10;
  v65 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v69 = v4;
  v14 = *(v4 + 24);
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
  v68 = v14;
  dispatch thunk of Hashable.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v12 + 32);
  v17 = v15 & ~v16;
  v73 = v12 + 56;
  v18 = *(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17;
  v64 = v11;
  if (v18)
  {
    v19 = v12;
    v78 = ~v16;
    v20 = *a2;
    v21 = *(a2 + 8);
    v79 = *(v5 + 72);
    if (v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21 == 0xC000000000000000;
    }

    v23 = !v22;
    v77 = v23;
    v24 = v21 >> 62;
    v74 = 0;
    v75 = v20;
    v25 = HIDWORD(v20) - v20;
    v26 = __OFSUB__(HIDWORD(v20), v20);
    v72 = v26;
    v71 = v25;
    v70 = v21;
    v76 = BYTE6(v21);
    v27 = v69;
    v67 = v12;
    v28 = v73;
    while (1)
    {
      v29 = v79 * v17;
      sub_100E0ED24(*(v19 + 48) + v79 * v17, v9, type metadata accessor for OwnedBeaconGroup);
      v30 = *v9;
      v31 = *(v9 + 1);
      v32 = v31 >> 62;
      if (v31 >> 62 == 3)
      {
        break;
      }

      if (v32 > 1)
      {
        if (v32 != 2)
        {
          goto LABEL_36;
        }

        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        v39 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        if (v39)
        {
          goto LABEL_79;
        }

        if (v24 > 1)
        {
          goto LABEL_37;
        }
      }

      else if (v32)
      {
        LODWORD(v36) = HIDWORD(v30) - v30;
        if (__OFSUB__(HIDWORD(v30), v30))
        {
          goto LABEL_78;
        }

        v36 = v36;
        if (v24 > 1)
        {
LABEL_37:
          if (v24 != 2)
          {
            if (v36)
            {
              goto LABEL_13;
            }

            goto LABEL_62;
          }

          v42 = *(v75 + 16);
          v41 = *(v75 + 24);
          v39 = __OFSUB__(v41, v42);
          v40 = v41 - v42;
          if (v39)
          {
            goto LABEL_77;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v36 = BYTE6(v31);
        if (v24 > 1)
        {
          goto LABEL_37;
        }
      }

LABEL_33:
      v40 = v76;
      if (v24)
      {
        v40 = v71;
        if (v72)
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
        }
      }

LABEL_39:
      if (v36 != v40)
      {
        goto LABEL_13;
      }

      if (v36 < 1)
      {
        goto LABEL_62;
      }

      if (v32 > 1)
      {
        if (v32 == 2)
        {
          v43 = *(v30 + 16);
          v44 = *(v30 + 24);
          v45 = __DataStorage._bytes.getter();
          if (v45)
          {
            v46 = __DataStorage._offset.getter();
            if (__OFSUB__(v43, v46))
            {
              goto LABEL_82;
            }

            v45 += v43 - v46;
          }

          if (__OFSUB__(v44, v43))
          {
            goto LABEL_81;
          }

LABEL_58:
          __DataStorage._length.getter();
          v49 = v74;
          sub_100771A28(v45, v75, v70, v81);
          v74 = v49;
          v27 = v69;
          v19 = v67;
          v28 = v73;
          if ((v81[0] & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_62;
        }

        *&v81[6] = 0;
        *v81 = 0;
      }

      else
      {
        if (v32)
        {
          v47 = v30;
          if (v30 >> 32 < v30)
          {
            goto LABEL_80;
          }

          v45 = __DataStorage._bytes.getter();
          if (v45)
          {
            v48 = __DataStorage._offset.getter();
            if (__OFSUB__(v47, v48))
            {
              goto LABEL_83;
            }

            v45 += v47 - v48;
          }

          goto LABEL_58;
        }

        *v81 = *v9;
        *&v81[8] = v31;
        v81[10] = BYTE2(v31);
        v81[11] = BYTE3(v31);
        v81[12] = BYTE4(v31);
        v81[13] = BYTE5(v31);
      }

      v50 = v74;
      sub_100771A28(v81, v75, v70, &v80);
      v74 = v50;
      v28 = v73;
      if (!v80)
      {
        goto LABEL_13;
      }

LABEL_62:
      v51 = *(a2 + 24);
      if (v9[24] == 1)
      {
        if ((*(a2 + 24) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (*(v9 + 2) != *(a2 + 16))
        {
          v51 = 1;
        }

        if (v51)
        {
          goto LABEL_13;
        }
      }

      v52 = v27[6];
      if (static UUID.== infix(_:_:)())
      {
        v53 = v27[7];
        if ((static MACAddress.== infix(_:_:)() & 1) != 0 && v9[v27[8]] == *(a2 + v27[8]))
        {
          if (v54 = v27[9], v55 = *&v9[v54], v56 = *&v9[v54 + 8], v57 = (a2 + v54), v55 == *v57) && v56 == v57[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            if (sub_100DE8118(*&v9[v27[10]], *(a2 + v27[10])))
            {
              sub_100E0EC5C(v9, type metadata accessor for OwnedBeaconGroup);
              sub_100E0EC5C(a2, type metadata accessor for OwnedBeaconGroup);
              sub_100E0ED24(*(v19 + 48) + v29, v66, type metadata accessor for OwnedBeaconGroup);
              return 0;
            }
          }
        }
      }

LABEL_13:
      sub_100E0EC5C(v9, type metadata accessor for OwnedBeaconGroup);
      v17 = (v17 + 1) & v78;
      if (((*(v28 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    if (v30)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31 == 0xC000000000000000;
    }

    v35 = !v33 || v24 < 3;
    if (((v35 | v77) & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_36:
    v36 = 0;
    if (v24 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_76:
  v59 = v65;
  v60 = *v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v64;
  sub_100E0ED24(a2, v64, type metadata accessor for OwnedBeaconGroup);
  *v81 = *v59;
  sub_100E00A04(v62, v17, isUniquelyReferenced_nonNull_native);
  *v59 = *v81;
  sub_100E0ECBC(a2, v66, type metadata accessor for OwnedBeaconGroup);
  return 1;
}

uint64_t sub_100DEE2AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1010F20C4(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_100DF7418(v19 + 1);
    }

    sub_1010F4128(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  v10 = *(v6 + 40);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_100E010C4(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_100DEE584(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1010F22FC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100DFAED0(v21 + 1, &unk_1016C7F50, &unk_1013B3590);
    }

    v19 = v8;
    sub_1010FD5C0();

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100DFDEC8(v19, v13, isUniquelyReferenced_nonNull_native, &unk_1016C7F50, &unk_1013B3590, &unk_1016BC050, SPBeacon_ptr);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100DEE7EC(uint64_t a1, double *a2)
{
  v35 = a1;
  v4 = type metadata accessor for WildModeTrackingLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v33 = (&v32 - v10);
  v34 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v13 = *a2;
  if (*a2 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *a2;
  }

  Hasher._combine(_:)(*&v14);
  v15 = a2[1];
  if (v15 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a2[1];
  }

  Hasher._combine(_:)(*&v16);
  v17 = a2[2];
  if (v17 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a2[2];
  }

  Hasher._combine(_:)(*&v18);
  v36 = v4;
  v19 = *(v4 + 28);
  type metadata accessor for Date();
  sub_1000097BC(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v20 = Hasher._finalize()();
  v21 = -1 << *(v11 + 32);
  v22 = v20 & ~v21;
  if ((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v23 = ~v21;
    v24 = *(v5 + 72);
    do
    {
      sub_100E0ED24(*(v11 + 48) + v24 * v22, v9, type metadata accessor for WildModeTrackingLocation);
      if (*v9 == v13 && v9[1] == v15 && v9[2] == v17)
      {
        v25 = *(v36 + 28);
        v26 = static Date.== infix(_:_:)();
        sub_100E0EC5C(v9, type metadata accessor for WildModeTrackingLocation);
        if (v26)
        {
          sub_100E0EC5C(a2, type metadata accessor for WildModeTrackingLocation);
          sub_100E0ED24(*(v11 + 48) + v24 * v22, v35, type metadata accessor for WildModeTrackingLocation);
          return 0;
        }
      }

      else
      {
        sub_100E0EC5C(v9, type metadata accessor for WildModeTrackingLocation);
      }

      v22 = (v22 + 1) & v23;
    }

    while (((*(v11 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  v28 = v34;
  v29 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v33;
  sub_100E0ED24(a2, v33, type metadata accessor for WildModeTrackingLocation);
  v37 = *v28;
  sub_100E012C0(v31, v22, isUniquelyReferenced_nonNull_native);
  *v28 = v37;
  sub_100E0ECBC(a2, v35, type metadata accessor for WildModeTrackingLocation);
  return 1;
}

uint64_t sub_100DEEB44(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_1007766A4(v19, a2);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = sub_100775E74(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *v3;

    sub_100E01620(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = *&v19[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_100DEEC84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000097BC(&qword_1016BC008, &type metadata accessor for Destination);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100E017AC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}