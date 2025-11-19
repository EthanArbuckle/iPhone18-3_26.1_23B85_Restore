uint64_t storeEnumTagSinglePayload for DockAccessorySWAuth.AuthRetryStep(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001B5C14()
{
  result = qword_1002ABE40;
  if (!qword_1002ABE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABE40);
  }

  return result;
}

uint64_t sub_1001B5C6C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_retry;
  swift_beginAccess();
  sub_1001B5FDC(v10, v9);
  if (*(v9 + 5) > 2)
  {
    v11 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_delegate;
    swift_beginAccess();
    sub_1001B6040(v0 + v11, v34);
    if (v35)
    {
      sub_1000A097C(v34, v33);
      sub_100095C84(v34, &qword_1002A9BF8, &qword_10023EA00);
      v12 = sub_1000A09E0(v33, v33[3]);
      v13 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_accessoryServer);
      sub_1000B346C();
      v14 = swift_allocError();
      *v15 = 4;
      v16 = *v12;
      v17 = v13;
      sub_100161B78(v13, v14);

      sub_100095808(v33);
    }

    else
    {
      sub_100095C84(v34, &qword_1002A9BF8, &qword_10023EA00);
    }

    swift_beginAccess();
    v26 = *v10;
    sub_1001059EC();
    *(v10 + 16) = 0;
    v27 = *(v10 + 32);
    *(v10 + 24) = 0;
    *(v10 + 32) = 0xE000000000000000;

    v28 = (v10 + *(v6 + 40));
    v29 = *v28;
    v30 = v28[1];
    *v28 = xmmword_10023BF90;
    sub_1000A0D2C(v29, v30);
    UUID.init()();
    (*(v2 + 40))(v10 + *(v6 + 36), v5, v1);
    v31 = *(v10 + 8);
    *(v10 + 8) = 0;
    *(v10 + 40) = 0;
    swift_endAccess();
  }

  else if (v9[16] > 1u)
  {
    if (v9[16] == 2)
    {
      v18 = &v9[*(v6 + 40)];
      v19 = *v18;
      v20 = v18[1];
      v21 = (v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
      v22 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token);
      v23 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_token + 8);
      *v21 = v19;
      v21[1] = v20;
      sub_1000A0CD8(v19, v20);
      sub_1000A0D2C(v22, v23);
      v24 = *(v6 + 36);
      v25 = OBJC_IVAR____TtC14dockaccessoryd19DockAccessorySWAuth_tokenUUID;
      swift_beginAccess();
      (*(v2 + 24))(v0 + v25, &v9[v24], v1);
      swift_endAccess();
      sub_1001B38D8();
    }

    else
    {
      sub_1001B46E0(*&v9[*(v6 + 40)], *&v9[*(v6 + 40) + 8], &v9[*(v6 + 36)]);
    }
  }

  else if (v9[16])
  {
    sub_1001B26B8(*(v9 + 3), *(v9 + 4));
  }

  return sub_1001B60B0(v9);
}

uint64_t sub_1001B5FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B6040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9BF8, &qword_10023EA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B60B0(uint64_t a1)
{
  v2 = type metadata accessor for DockAccessorySWAuth.AuthRetry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B610C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B6124(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1001B61EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001B6208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1001B6264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DockIDSServer()
{
  result = qword_1002ABE98;
  if (!qword_1002ABE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B6340()
{
  sub_1001C7A50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1001B6410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000B5150(a3, v27 - v11, &unk_1002A73C0, &unk_10023BE80);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100095C84(v12, &unk_1002A73C0, &unk_10023BE80);
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

      sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);

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

  sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);
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

uint64_t sub_1001B6710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000B5150(a3, v27 - v11, &unk_1002A73C0, &unk_10023BE80);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100095C84(v12, &unk_1002A73C0, &unk_10023BE80);
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

      sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);

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

  sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);
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

uint64_t sub_1001B6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000B5150(a3, v24 - v10, &unk_1002A73C0, &unk_10023BE80);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100095C84(v11, &unk_1002A73C0, &unk_10023BE80);
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

      sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);

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

  sub_100095C84(a3, &unk_1002A73C0, &unk_10023BE80);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1001B6CB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10016D5D4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1001EEB6C();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_1001EAA1C(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_1001B6D9C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v37 = a1;
  v35 = a3;
  v38 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v34 = *(v38 - 8);
  v6 = *(v34 + 64);
  v7 = __chkstk_darwin(v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v34 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = a2;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v40 = v4;
      v18 = v9;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v39;
      v22 = *(v39 + 48);
      v23 = type metadata accessor for UUID();
      v24 = *(v23 - 8);
      v25 = v22 + *(v24 + 72) * v20;
      v26 = v36;
      (*(v24 + 16))(v36, v25, v23);
      v27 = (*(v21 + 56) + 16 * v20);
      v28 = *v27;
      v29 = v27[1];
      v30 = (v26 + *(v38 + 48));
      *v30 = v28;
      v30[1] = v29;
      v9 = v18;
      sub_1001CD81C(v26, v18);

      v31 = v40;
      v32 = v37(v18);
      v4 = v31;
      if (v31)
      {
        sub_100095C84(v9, &qword_1002ABEF8, &qword_10023F728);
      }

      if (v32)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_100095C84(v9, &qword_1002ABEF8, &qword_10023F728);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v33 = v35;
    sub_1001CD81C(v9, v35);
    return (*(v34 + 56))(v33, 0, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v34 + 56))(v35, 1, 1, v38);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v40 = v4;
        v18 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001B706C()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002ABE48);
  sub_100093DE8(v0, qword_1002ABE48);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001B70DC()
{
  v1 = v0;
  v2 = type metadata accessor for DockKitIDSMessageType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DockKitIDSMessageType.register(_:))
  {
    return 0x7265747369676572;
  }

  if (v7 == enum case for DockKitIDSMessageType.deRegister(_:))
  {
    return 0x7473696765526564;
  }

  if (v7 == enum case for DockKitIDSMessageType.ack(_:))
  {
    return 7037793;
  }

  if (v7 == enum case for DockKitIDSMessageType.info(_:))
  {
    return 1868983913;
  }

  if (v7 == enum case for DockKitIDSMessageType.select(_:))
  {
    return 0x7463656C6573;
  }

  if (v7 == enum case for DockKitIDSMessageType.offset(_:))
  {
    return 0x74657366666FLL;
  }

  if (v7 == enum case for DockKitIDSMessageType.region(_:))
  {
    return 0x6E6F69676572;
  }

  if (v7 == enum case for DockKitIDSMessageType.frame(_:))
  {
    return 0x656D617266;
  }

  if (v7 == enum case for DockKitIDSMessageType.velocity(_:))
  {
    return 0x797469636F6C6576;
  }

  if (v7 == enum case for DockKitIDSMessageType.objects(_:))
  {
    return 0x737463656A626FLL;
  }

  if (v7 == enum case for DockKitIDSMessageType.debug(_:))
  {
    return 0x6775626564;
  }

  if (v7 == enum case for DockKitIDSMessageType.trajectory(_:))
  {
    return 0x6F7463656A617274;
  }

  if (v7 == enum case for DockKitIDSMessageType.diagnostics(_:))
  {
    return 0x74736F6E67616964;
  }

  if (v7 == enum case for DockKitIDSMessageType.systemTracking(_:))
  {
    return 0x72546D6574737973;
  }

  if (v7 == enum case for DockKitIDSMessageType.camera(_:))
  {
    return 0x6172656D6163;
  }

  v9 = v7;
  result = 0x76696C417065656BLL;
  if (v9 != enum case for DockKitIDSMessageType.keepAlive(_:) && v9 != enum case for DockKitIDSMessageType.keepAliveResp(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E75;
  }

  return result;
}

char *sub_1001B74C8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  __chkstk_darwin(v3);
  v59 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  __chkstk_darwin(v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = qword_1002ABE60;
  v16 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v51[0] = "dockaccessoryd.DockIDSServer";
  v51[1] = v16;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v53 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v54);
  v17 = v15;
  *&v2[v52] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[qword_1002ABE68] = 0;
  v18 = qword_1002ABE70;
  *&v2[v18] = sub_1001F2598(&_swiftEmptyArrayStorage);
  v19 = qword_1002ABE78;
  *&v2[v19] = sub_1001F27B8(&_swiftEmptyArrayStorage);
  *&v2[qword_1002ABE80] = &_swiftEmptyArrayStorage;
  v20 = qword_1002ABE88;
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(&v2[v20], 1, 1, v21);
  v22 = qword_1002ABE90;
  v23 = type metadata accessor for DKIDSKeepAlive();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v2[v22] = DKIDSKeepAlive.init(_:)();
  v26 = type metadata accessor for DockIDSServer();
  v64.receiver = v2;
  v64.super_class = v26;
  v27 = objc_msgSendSuper2(&v64, "init");
  v28 = qword_1002A6790;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100093DE8(v30, qword_1002ABE48);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Initializing IDS...", v33, 2u);
  }

  v34 = qword_1002ABE60;
  v35 = *&v29[qword_1002ABE60];
  v36 = objc_allocWithZone(type metadata accessor for DKIDSMessagingCenter());
  v37 = v29;
  v38 = v35;
  v39 = DKIDSMessagingCenter.init(serviceName:delegate:queue:)();
  v40 = *&v37[qword_1002ABE68];
  *&v37[qword_1002ABE68] = v39;

  v56 = qword_1002ABE90;
  v41 = *&v37[qword_1002ABE90];
  sub_1001CF2C4(&qword_1002ABFA0, type metadata accessor for DockIDSServer);
  v42 = v37;

  dispatch thunk of DKIDSKeepAlive.setDelegate(delegate:)();

  v43 = *&v29[v34];
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  aBlock[4] = sub_1001CF344;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027AD40;
  v45 = _Block_copy(aBlock);
  v46 = v43;
  static DispatchQoS.unspecified.getter();
  v62 = &_swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v47 = v59;
  v48 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v60 + 8))(v47, v48);
  (*(v57 + 8))(v17, v58);

  v49 = *&v37[v56];

  dispatch thunk of DKIDSKeepAlive.startKeepAlive()();

  return v42;
}

void sub_1001B7C04(uint64_t a1)
{
  v1 = *(a1 + qword_1002ABE68);
  if (v1)
  {
    v2 = v1;
    v3 = DKIDSMessagingCenter.service.getter();

    sub_1001B7E8C(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001B7C74()
{
  v1 = *(v0 + qword_1002ABE70);

  v2 = *(v0 + qword_1002ABE78);

  v3 = *(v0 + qword_1002ABE80);

  sub_100095C84(v0 + qword_1002ABE88, &qword_1002A7C88, &qword_10023CC10);
  v4 = *(v0 + qword_1002ABE90);
}

id sub_1001B7D14()
{
  v1 = v0;
  v2 = *&v0[qword_1002ABE90];

  dispatch thunk of DKIDSKeepAlive.stopKeepAlive()();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for DockIDSServer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001B7D78(char *a1)
{
  v1 = *&a1[qword_1002ABE90];
  v2 = a1;

  dispatch thunk of DKIDSKeepAlive.stopKeepAlive()();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DockIDSServer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001B7DE0(uint64_t a1)
{
  v2 = *(a1 + qword_1002ABE70);

  v3 = *(a1 + qword_1002ABE78);

  v4 = *(a1 + qword_1002ABE80);

  sub_100095C84(a1 + qword_1002ABE88, &qword_1002A7C88, &qword_10023CC10);
  v5 = *(a1 + qword_1002ABE90);
}

void sub_1001B7E8C(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    goto LABEL_42;
  }

  v2 = v1;
  sub_100095B94(0, &qword_1002ABF58, IDSDevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v3;
  if (v3 >> 62)
  {
LABEL_39:
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v51)
  {
LABEL_32:

    v47 = qword_1002ABE78;
    swift_beginAccess();
    if (!*(*(v49 + v47) + 16))
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      sub_100189D44();
    }

    return;
  }

  v48 = qword_1002ABE78;
  swift_beginAccess();
  v4 = 0;
  v5 = &selRef_initWithName_;
  while (1)
  {
    if ((v52 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v6 = *(v52 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100093DE8(v9, qword_1002ABE48);
    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54[0] = v50;
      *v13 = 136315138;
      v14 = v10;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v16;
      v5 = &selRef_initWithName_;
      v20 = sub_1000952D4(v19, v18, v54);

      *(v13 + 4) = v20;
      v8 = v4 + 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100095808(v50);
    }

    if ([v10 isDefaultPairedDevice])
    {
      break;
    }

LABEL_7:
    ++v4;
    if (v8 == v51)
    {
      goto LABEL_32;
    }
  }

  v21 = v10;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v22, v23))
  {

LABEL_29:
    if ([v21 v5[82]])
    {
    }

    else
    {
      v41 = *(v49 + v48);
      v42 = v21;

      v44 = v8;
      v45 = sub_1001CD178(v43, v42);

      v46 = *(v49 + v48);
      *(v49 + v48) = v45;
      v8 = v44;
    }

    goto LABEL_7;
  }

  v53 = v8;
  v24 = v4;
  v25 = swift_slowAlloc();
  v54[0] = swift_slowAlloc();
  *v25 = 136315650;
  v26 = [v21 uniqueIDOverride];

  if (!v26)
  {
    goto LABEL_41;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = sub_1000952D4(v27, v29, v54);

  *(v25 + 4) = v30;
  *(v25 + 12) = 2080;
  v31 = [v21 name];

  if (v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000952D4(v32, v34, v54);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    v5 = &selRef_initWithName_;
    v36 = [v21 isConnected];
    v37 = v36 == 0;
    if (v36)
    {
      v38 = 0x657463656E6E6F63;
    }

    else
    {
      v38 = 0x656E6E6F63736964;
    }

    if (v37)
    {
      v39 = 0xEC00000064657463;
    }

    else
    {
      v39 = 0xE900000000000064;
    }

    v40 = sub_1000952D4(v38, v39, v54);

    *(v25 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v22, v23, "Device %s (%s) %s", v25, 0x20u);
    swift_arrayDestroy();

    v4 = v24;
    v8 = v53;
    goto LABEL_29;
  }

  __break(1u);
LABEL_41:

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1001B8498(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v51 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DockKitIDSMessageType();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v47 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DockKitIDSMessage();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v48 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DockKitIDSInfo();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v44 - v21;
  type metadata accessor for DockCoreManager();
  if ((static DockCoreManager.debugAllowed.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v23 = DockKitIDSInfo.info.getter();
  UUID.init(uuidString:)();
  if ((*(v5 + 48))(v22, 1, v4) == 1)
  {
    __break(1u);
    return;
  }

  v24 = objc_allocWithZone(type metadata accessor for DockCoreInfo());
  v25 = DockCoreInfo.init(type:name:identifier:)();
  v26 = static NSObject.== infix(_:_:)();

  if ((v26 & 1) == 0)
  {
LABEL_4:
    v27 = qword_1002ABE78;
    swift_beginAccess();
    if (*(*(v2 + v27) + 16))
    {
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100093DE8(v28, qword_1002ABE48);
      (*(v15 + 16))(v18, a1, v14);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v44[1] = a1;
        v32 = v31;
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = DockKitIDSInfo.info.getter();
        (*(v15 + 8))(v18, v14);
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v29, v30, "Sending INFO for accessory %@", v32, 0xCu);
        sub_100095C84(v33, &unk_1002A6F60, &unk_10023C4E0);
      }

      else
      {

        (*(v15 + 8))(v18, v14);
      }

      v35 = type metadata accessor for PropertyListEncoder();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_1001CF2C4(&qword_1002ABF68, &type metadata accessor for DockKitIDSInfo);
      v38 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v40 = v39;

      v41 = *(v2 + qword_1002ABE68);
      if (v41)
      {
        (*(v45 + 104))(v47, enum case for DockKitIDSMessageType.info(_:), v46);
        type metadata accessor for DockKitIDSClient();
        v42 = v41;
        static DockKitIDSClient.DockKitBroadcastToken.getter();
        sub_1000A0CD8(v38, v40);
        v43 = v48;
        DockKitIDSMessage.init(type:token:payload:)();
        DKIDSMessagingCenter.send(_:)();
        (*(v49 + 8))(v43, v50);
        sub_1000A0D2C(v38, v40);
      }

      else
      {
        sub_1000A0D2C(v38, v40);
      }
    }
  }
}

uint64_t sub_1001B8C34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v25);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v5 + qword_1002ABE60);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v17;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v26 + 8))(v12, v9);
  (*(v13 + 8))(v16, v25);
}

uint64_t sub_1001B8F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v59 = a3;
  v6 = sub_100095274(&qword_1002ABF98, &unk_10023FF20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v55 = &v51 - v8;
  v9 = type metadata accessor for DockKitIDSInfo();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = __chkstk_darwin(v9);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - v14;
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  v26 = dispatch thunk of DockCoreAccessory.info.getter();
  DockCoreInfo.identifier.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = qword_1002ABE70;
    swift_beginAccess();
    v30 = *&v28[v29];

    if (*(v30 + 16) && (v31 = sub_10016D5D4(v25), (v32 & 1) != 0))
    {
      v52 = v23;
      v54 = v18;
      v33 = v61;
      v34 = *(v61 + 16);
      v34(v15, *(v30 + 56) + *(v61 + 72) * v31, v9);

      v35 = (*(v33 + 32))(v17, v15, v9);
      v56 = v56(v35);
      v53 = v17;
      v36 = v17;
      v37 = v9;
      v38 = v34;
      v34(v60, v36, v37);
      v57(v59);
      swift_beginAccess();
      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = v39;
        v41 = v52;
        (*(v19 + 16))(v52, v25, v54);
        v42 = v55;
        v38(v55, v60, v37);
        (*(v61 + 56))(v42, 0, 1, v37);
        swift_beginAccess();
        sub_1001DAD2C(v42, v41);
        swift_endAccess();
      }

      v43 = v58;
      v44 = v58(v59);
      v45 = v43(v56);
      v46 = v60;
      if (v44 != v45)
      {
        swift_beginAccess();
        v47 = swift_unknownObjectWeakLoadStrong();
        if (v47)
        {
          v48 = v47;
          sub_1001B8498(v46);
        }
      }

      v49 = *(v61 + 8);
      v49(v46, v37);
      v49(v53, v37);
      v18 = v54;
    }

    else
    {
    }
  }

  return (*(v19 + 8))(v25, v18);
}

uint64_t sub_1001B93D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + qword_1002ABE60);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1001CF0F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027AC00;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void sub_1001B96E4()
{
  v0 = sub_100095274(&qword_1002ABF98, &unk_10023FF20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v89 - v2;
  v97 = type metadata accessor for DockKitIDSInfo();
  v96 = *(v97 - 8);
  v4 = *(v96 + 64);
  v5 = __chkstk_darwin(v97);
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v89 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v89 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v89 - v14;
  __chkstk_darwin(v13);
  v93 = &v89 - v16;
  v99 = type metadata accessor for UUID();
  v98 = *(v99 - 8);
  v17 = *(v98 + 64);
  v18 = __chkstk_darwin(v99);
  v94 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v22 = qword_1002B1CF0;
  v23 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v24 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v24 + 4);

  v95 = *(v22 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
  v25 = *(v22 + v23);

  os_unfair_lock_unlock(v25 + 4);

  v26 = dispatch thunk of DockCoreAccessory.info.getter();
  DockCoreInfo.identifier.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v100 = v21;
  if (!Strong)
  {
    goto LABEL_9;
  }

  v91 = v9;
  v28 = qword_1002ABE70;
  v29 = Strong;
  swift_beginAccess();
  v30 = *&v29[v28];

  if (!*(v30 + 16) || (v31 = sub_10016D5D4(v21), (v32 & 1) == 0))
  {

LABEL_9:
    dispatch thunk of DockCoreAccessory.info.getter();
    v41 = dispatch thunk of DockCoreAccessory.info.getter();
    v42 = v41;
    v43 = *(v22 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
    if (v43)
    {
      sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
      v44 = v43;
      v45 = dispatch thunk of DockCoreAccessory.info.getter();
      static NSObject.== infix(_:_:)();
    }

    else
    {
    }

    dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    dispatch thunk of DockCoreAccessory.serialNumber.getter();
    DockKitIDSInfo.init(info:dockState:trackingState:firmwareVersion:serialNumber:)();
    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      v48 = v94;
      (*(v98 + 16))(v94, v100, v99);
      v49 = v96;
      v50 = v97;
      (*(v96 + 16))(v3, v12, v97);
      (*(v49 + 56))(v3, 0, 1, v50);
      swift_beginAccess();
      sub_1001DAD2C(v3, v48);
      swift_endAccess();

      v51 = *(v49 + 8);
      v51(v12, v50);
    }

    else
    {
      v49 = v96;
      v51 = *(v96 + 8);
      v50 = v97;
      v51(v12, v97);
    }

    goto LABEL_15;
  }

  v33 = v96;
  v34 = *(v30 + 56) + *(v96 + 72) * v31;
  v35 = v97;
  v90 = *(v96 + 16);
  v90(v15, v34, v97);

  (*(v33 + 32))(v93, v15, v35);
  v36 = dispatch thunk of DockCoreAccessory.info.getter();
  v37 = v36;
  v38 = *(v22 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  if (v38)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v39 = v38;
    v40 = dispatch thunk of DockCoreAccessory.info.getter();
    static NSObject.== infix(_:_:)();
  }

  else
  {
  }

  dispatch thunk of DockCoreAccessory.info.getter();
  dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
  dispatch thunk of DockCoreAccessory.serialNumber.getter();
  v63 = v91;
  DockKitIDSInfo.init(info:dockState:trackingState:firmwareVersion:serialNumber:)();
  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = v94;
    (*(v98 + 16))(v94, v100, v99);
    v67 = v97;
    v90(v3, v63, v97);
    (*(v96 + 56))(v3, 0, 1, v67);
    swift_beginAccess();
    sub_1001DAD2C(v3, v66);
    swift_endAccess();
  }

  v68 = v93;
  DockKitIDSInfo.dockState.getter();
  v69 = DockState.rawValue.getter();
  v70 = DockState.rawValue.getter();
  v49 = v96;
  if (v69 != v70)
  {
    goto LABEL_37;
  }

  DockKitIDSInfo.trackingState.getter();
  v71 = TrackingButtonState.rawValue.getter();
  if (v71 != TrackingButtonState.rawValue.getter())
  {
    goto LABEL_37;
  }

  v72 = DockKitIDSInfo.info.getter();
  v73 = dispatch thunk of DockCoreAccessory.info.getter();
  type metadata accessor for DockCoreInfo();
  v74 = static NSObject.== infix(_:_:)();

  if ((v74 & 1) == 0)
  {
    goto LABEL_37;
  }

  v75 = DockKitIDSInfo.firmwareVersion.getter();
  v77 = v76;
  v78 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
  if (!v79)
  {

    v63 = v91;
    goto LABEL_37;
  }

  if (v75 == v78 && v79 == v77)
  {

    goto LABEL_33;
  }

  v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v63 = v91;
  if ((v80 & 1) == 0)
  {
LABEL_37:
    v51 = *(v49 + 8);
    v87 = v63;
LABEL_38:
    v50 = v97;
    v51(v87, v97);
    v51(v68, v50);
    goto LABEL_15;
  }

LABEL_33:
  v81 = DockKitIDSInfo.serialNumber.getter();
  v83 = v82;
  v84 = dispatch thunk of DockCoreAccessory.serialNumber.getter();
  if (!v85)
  {

    v51 = *(v49 + 8);
    v87 = v91;
    goto LABEL_38;
  }

  v50 = v97;
  if (v81 == v84 && v85 == v83)
  {

    v86 = *(v49 + 8);
    v86(v91, v50);
    v86(v68, v50);
LABEL_41:
    (*(v98 + 8))(v100, v99);
    return;
  }

  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v51 = *(v49 + 8);
  v51(v91, v50);
  v51(v68, v50);
  if (v88)
  {
    goto LABEL_41;
  }

LABEL_15:
  swift_beginAccess();
  v52 = swift_unknownObjectWeakLoadStrong();
  if (!v52)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
    goto LABEL_41;
  }

  v54 = v53;
  swift_beginAccess();
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    v57 = qword_1002ABE70;
    swift_beginAccess();
    v58 = *&v56[v57];

    if (*(v58 + 16))
    {
      v59 = v100;
      v60 = sub_10016D5D4(v100);
      if (v61)
      {
        v62 = v92;
        (*(v49 + 16))(v92, *(v58 + 56) + *(v49 + 72) * v60, v50);

        sub_1001B8498(v62);

        (*(v98 + 8))(v59, v99);
        v51(v62, v50);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001BA258(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v2 = type metadata accessor for DockKitIDSMessageType();
  v130 = *(v2 - 8);
  v3 = *(v130 + 64);
  __chkstk_darwin(v2);
  v5 = (v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DockKitIDSMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v128 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = v118 - v16;
  v17 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v129 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v132 = v118 - v22;
  __chkstk_darwin(v21);
  v131 = v118 - v23;
  v135 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v134 = *(v135 - 8);
  v24 = *(v134 + 64);
  __chkstk_darwin(v135);
  v133 = v118 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v140 = v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DockKitBoundingBox();
  v29 = *(v143 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v143);
  v142 = v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v141 = v118 - v33;
  v34 = dispatch thunk of DKIntelligentTrackingState.trackedPeople.getter();
  if (!v34)
  {
    return;
  }

  v35 = v34;
  v123 = v7;
  v121 = v2;
  v122 = v10;

  v146 = sub_1001CC618(v36, sub_1001F7A2C, sub_1001CC6BC);
  sub_1001CAB64(&v146, sub_1001DA48C, &type metadata accessor for DKPersonTrackerState, sub_1001CAF84, sub_1001CAD34);
  v37 = v146;
  v38 = v146 < 0 || (v146 & 0x4000000000000000) != 0;
  if (!v38)
  {
    v39 = *(v146 + 16);
    if (v39 >= 0xA)
    {
      v40 = 10;
    }

    else
    {
      v40 = *(v146 + 16);
    }

    if (v39 >= v40)
    {
      goto LABEL_10;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v116 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);

    __break(1u);
    return;
  }

  if (v116 >= 0xA)
  {
    v117 = 10;
  }

  else
  {
    v117 = v116;
  }

  if (v116 >= 0)
  {
    v40 = v117;
  }

  else
  {
    v40 = 10;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v40)
  {
    goto LABEL_67;
  }

LABEL_10:
  v124 = 0;
  v120 = v6;
  if ((v37 & 0xC000000000000001) != 0 && v40)
  {
    type metadata accessor for DKPersonTrackerState();

    v41 = 0;
    do
    {
      v42 = v41 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v41);
      v41 = v42;
    }

    while (v40 != v42);
  }

  else
  {
  }

  v126 = v11;
  v119 = v5;
  v136 = v35;
  if (v38)
  {
    v5 = _CocoaArrayWrapper.subscript.getter();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v48 >>= 1;
    v37 = v5;
    v50 = v48 - v46;
    v49 = v48 <= v46;
    if (v48 != v46)
    {
      goto LABEL_18;
    }

LABEL_29:
    swift_unknownObjectRelease();
    v5 = &_swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v46 = 0;
  v44 = (v37 + 32);
  v50 = v40;
  v49 = v40 <= 0;
  if (!v40)
  {
    goto LABEL_29;
  }

LABEL_18:
  if (!v49)
  {
    v118[1] = v37;
    v125 = v12;
    v139 = v29 + 8;
    v138 = v29 + 32;
    v5 = &_swiftEmptyArrayStorage;
    v51 = &v44[8 * v46];
    do
    {
      v52 = *v51;

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v146 >= 1)
      {
        dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
        dispatch thunk of DKProbabilityValue.variable.getter();
      }

      dispatch thunk of DKPersonTrackerState.rect.getter();
      dispatch thunk of DKPersonTrackerState.uuid.getter();
      dispatch thunk of DKPersonTrackerState.trackingLock.getter();
      v53 = v141;
      DockKitBoundingBox.init(_:id:trackingLock:saliencyRank:)();
      (*(v29 + 16))(v142, v53, v143);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100103334(0, v5[2] + 1, 1, v5);
      }

      v55 = v5[2];
      v54 = v5[3];
      if (v55 >= v54 >> 1)
      {
        v5 = sub_100103334(v54 > 1, v55 + 1, 1, v5);
      }

      v56 = v143;
      (*(v29 + 8))(v141, v143);
      v5[2] = v55 + 1;
      (*(v29 + 32))(v5 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v55, v142, v56);
      v51 += 8;
      --v50;
    }

    while (v50);
    swift_unknownObjectRelease();
    v12 = v125;
LABEL_30:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

LABEL_36:

      return;
    }

    v29 = Strong;
    v58 = qword_1002ABE78;
    swift_beginAccess();
    if (!*(*(v29 + v58) + 16))
    {
LABEL_44:

      goto LABEL_36;
    }

    if (qword_1002A6780 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_33:
  v59 = qword_1002B1CF0;
  v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  swift_beginAccess();
  v61 = v134;
  v62 = v59 + v60;
  v63 = v133;
  v64 = v135;
  (*(v134 + 16))(v133, v62, v135);
  DKThreadSafe.wrappedValue.getter();
  (*(v61 + 8))(v63, v64);
  if (v145)
  {
    goto LABEL_44;
  }

  v65 = qword_1002ABE88;
  swift_beginAccess();
  v66 = v131;
  sub_1000B5150(v29 + v65, v131, &qword_1002A7C88, &qword_10023CC10);
  v67 = *(v12 + 48);
  v68 = v12;
  v69 = v126;
  v70 = v67(v66, 1, v126);
  v125 = v12;
  if (v70)
  {
    sub_100095C84(v66, &qword_1002A7C88, &qword_10023CC10);
    v71 = 0;
  }

  else
  {
    v72 = v127;
    (*(v12 + 16))(v127, v66, v69);
    sub_100095C84(v66, &qword_1002A7C88, &qword_10023CC10);
    v73 = v128;
    static Date.now.getter();
    Date.distance(to:)();
    v75 = v74;
    v76 = *(v68 + 8);
    v76(v73, v69);
    v76(v72, v69);
    v71 = v75 > 0.1;
  }

  v77 = v132;
  sub_1000B5150(v29 + v65, v132, &qword_1002A7C88, &qword_10023CC10);
  v78 = v67(v77, 1, v69);
  sub_100095C84(v77, &qword_1002A7C88, &qword_10023CC10);
  if (v78 != 1 && !v71 && v5[2])
  {
    goto LABEL_44;
  }

  v79 = v129;
  static Date.now.getter();
  (*(v125 + 56))(v79, 0, 1, v126);
  swift_beginAccess();
  sub_1001A2CDC(v79, v29 + v65);
  swift_endAccess();
  v80 = qword_1002ABE80;
  v81 = *(v29 + qword_1002ABE80);
  *(v29 + qword_1002ABE80) = v5;

  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  v83 = sub_100093DE8(v82, qword_1002ABE48);
  v84 = v136;

  v85 = v29;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  v88 = os_log_type_enabled(v86, v87);
  v142 = v83;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v144[0] = v90;
    *v89 = 134218498;
    *(v89 + 4) = *(*(v29 + v80) + 16);

    *(v89 + 12) = 2048;
    v141 = v85;
    if (v84 >> 62)
    {
      v91 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v91 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v89 + 14) = v91;

    *(v89 + 22) = 2080;
    v92 = *(v29 + v80);

    v93 = Array.description.getter();
    v95 = v94;

    v96 = sub_1000952D4(v93, v95, v144);

    *(v89 + 24) = v96;
    _os_log_impl(&_mh_execute_header, v86, v87, "Sending bounding box information %ld of %ld: %s", v89, 0x20u);
    sub_100095808(v90);

    v85 = v141;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v97 = type metadata accessor for PropertyListEncoder();
  v98 = *(v97 + 48);
  v99 = *(v97 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v144[0] = *(v29 + v80);

  sub_100095274(&qword_1002ABF40, &qword_10023F778);
  sub_1001CEFF0();
  v100 = v124;
  v101 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v103 = v130;
  if (v100)
  {

    swift_errorRetain();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v144[0] = v107;
      *v106 = 136315138;
      swift_getErrorValue();
      v108 = Error.localizedDescription.getter();
      v110 = sub_1000952D4(v108, v109, v144);

      *(v106 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v104, v105, "Unable to broadcast bounding boxes: %s", v106, 0xCu);
      sub_100095808(v107);

      return;
    }

    goto LABEL_36;
  }

  v111 = v101;
  v112 = v102;

  v113 = *&v85[qword_1002ABE68];
  if (v113)
  {
    (*(v103 + 104))(v119, enum case for DockKitIDSMessageType.objects(_:), v121);
    type metadata accessor for DockKitIDSClient();
    v114 = v113;
    static DockKitIDSClient.DockKitBroadcastToken.getter();
    sub_1000A0CD8(v111, v112);
    v115 = v122;
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    (*(v123 + 8))(v115, v120);
    sub_1000A0D2C(v111, v112);
  }

  else
  {
    sub_1000A0D2C(v111, v112);
  }
}

BOOL sub_1001BB308(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
  dispatch thunk of DKProbabilityValue.variable.getter();

  dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
  dispatch thunk of DKProbabilityValue.variable.getter();

  if (v7 < 1)
  {
    return 0;
  }

  return v6 < 1 || v7 < v6;
}

uint64_t sub_1001BB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + qword_1002ABE60);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v16;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_1001BB6C8(uint64_t a1, uint64_t a2)
{
  v134 = a2;
  v2 = type metadata accessor for DockKitIDSMessageType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DockKitIDSMessage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v123 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Date();
  v133 = *(v129 - 8);
  v11 = *(v133 + 64);
  v12 = __chkstk_darwin(v129);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v124 = &v118 - v14;
  v15 = sub_100095274(&qword_1002A7C88, &qword_10023CC10);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v126 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v128 = &v118 - v20;
  __chkstk_darwin(v19);
  v135 = &v118 - v21;
  v132 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v131 = *(v132 - 8);
  v22 = *(v131 + 64);
  __chkstk_darwin(v132);
  v130 = &v118 - v23;
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v138 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DockKitBoundingBox();
  v140 = *(v139 - 8);
  v27 = *(v140 + 64);
  __chkstk_darwin(v139);
  v29 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = dispatch thunk of TrackingSummaryInternal.subjects.getter();
  v30 = dispatch thunk of TrackingSummaryInternal.subjects.getter();

  v143 = sub_1001CC618(v31, sub_1001F7A2C, sub_1001CC860);
  sub_1001CAB64(&v143, sub_1001DA48C, &type metadata accessor for TrackedSubjectInternal, sub_1001CB690, sub_1001CAE5C);
  v127 = 0;

  v32 = v143;
  v33 = v143 < 0 || (v143 & 0x4000000000000000) != 0;
  v122 = v6;
  v121 = v3;
  if (!v33)
  {
    v34 = *(v143 + 16);
    if (v34 >= 0xA)
    {
      v35 = 10;
    }

    else
    {
      v35 = *(v143 + 16);
    }

    if (v34 >= v35)
    {
      goto LABEL_9;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v30 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    v117 = *(v56 - 256);

    __break(1u);
    return;
  }

  if (v30 >= 0xA)
  {
    v57 = 10;
  }

  else
  {
    v57 = v30;
  }

  if (v30 >= 0)
  {
    v35 = v57;
  }

  else
  {
    v35 = 10;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v35)
  {
    goto LABEL_47;
  }

LABEL_9:
  if ((v32 & 0xC000000000000001) != 0 && v35)
  {
    type metadata accessor for TrackedSubjectInternal();

    v36 = 0;
    do
    {
      v37 = v36 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v36);
      v36 = v37;
    }

    while (v35 != v37);
  }

  else
  {
  }

  v120 = v7;
  v119 = v8;
  v118 = v2;
  if (v33)
  {
    v38 = _CocoaArrayWrapper.subscript.getter();
    v40 = v39;
    v30 = v41;
    v35 = v42;

    v32 = v38;
  }

  else
  {
    v30 = 0;
    v40 = v32 + 32;
    v35 = (2 * v35) | 1;
  }

  v137 = v29;
  if (v35)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      swift_unknownObjectRelease();
      v44 = &_swiftEmptyArrayStorage;
    }

    v45 = v44[2];

    if (!__OFSUB__(v35 >> 1, v30))
    {
      if (v45 == (v35 >> 1) - v30)
      {
        v30 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v30)
        {
          goto LABEL_27;
        }

        v30 = &_swiftEmptyArrayStorage;
        goto LABEL_26;
      }

      goto LABEL_81;
    }

    goto LABEL_80;
  }

  while (1)
  {
    sub_1001CA048(v32, v40, v30, v35);
    v30 = v43;
LABEL_26:
    swift_unknownObjectRelease();
LABEL_27:
    if (v30 < 0 || (v30 & 0x4000000000000000) != 0)
    {
LABEL_48:
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (!v40)
      {
LABEL_49:

        v48 = &_swiftEmptyArrayStorage;
        goto LABEL_50;
      }
    }

    else
    {
      v40 = *(v30 + 16);
      if (!v40)
      {
        goto LABEL_49;
      }
    }

    v46 = v30;
    v143 = &_swiftEmptyArrayStorage;
    v32 = &v143;
    sub_1001D7248(0, v40 & ~(v40 >> 63), 0);
    if ((v40 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_unknownObjectRelease_n();
  }

  v47 = 0;
  v48 = v143;
  v49 = v46;
  v50 = v46 & 0xC000000000000001;
  v51 = v49;
  do
  {
    if (v50)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v52 = *(v49 + 8 * v47 + 32);
    }

    dispatch thunk of TrackedSubjectInternal.rect.getter();
    dispatch thunk of TrackedSubjectInternal.identifier.getter();
    dispatch thunk of TrackedSubjectInternal.trackingLock.getter();
    dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v53 = v137;
    DockKitBoundingBox.init(_:id:trackingLock:saliencyRank:)();

    v143 = v48;
    v55 = v48[2];
    v54 = v48[3];
    if (v55 >= v54 >> 1)
    {
      sub_1001D7248(v54 > 1, v55 + 1, 1);
      v48 = v143;
    }

    ++v47;
    v48[2] = v55 + 1;
    (*(v140 + 32))(v48 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v55, v53, v139);
    v49 = v51;
  }

  while (v40 != v47);

LABEL_50:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v59 = v135;
  if (!Strong)
  {

LABEL_57:

    return;
  }

  v60 = Strong;
  v61 = qword_1002ABE78;
  swift_beginAccess();
  if (!*(*&v60[v61] + 16))
  {
    goto LABEL_55;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v62 = qword_1002B1CF0;
  v63 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
  swift_beginAccess();
  v64 = v131;
  v65 = v62 + v63;
  v66 = v130;
  v67 = v132;
  (*(v131 + 16))(v130, v65, v132);
  DKThreadSafe.wrappedValue.getter();
  (*(v64 + 8))(v66, v67);
  if (v142)
  {
LABEL_55:

    return;
  }

  v68 = qword_1002ABE88;
  swift_beginAccess();
  sub_1000B5150(&v60[v68], v59, &qword_1002A7C88, &qword_10023CC10);
  v69 = v133;
  v70 = *(v133 + 48);
  v71 = v129;
  if (v70(v59, 1, v129))
  {
    sub_100095C84(v59, &qword_1002A7C88, &qword_10023CC10);
    v72 = 0;
    v73 = v71;
  }

  else
  {
    v74 = v124;
    (*(v69 + 16))(v124, v59, v71);
    sub_100095C84(v59, &qword_1002A7C88, &qword_10023CC10);
    v75 = v125;
    static Date.now.getter();
    Date.distance(to:)();
    v77 = v76;
    v73 = v71;
    v78 = *(v133 + 8);
    v78(v75, v71);
    v78(v74, v71);
    v72 = v77 > 0.1;
  }

  v79 = v128;
  sub_1000B5150(&v60[v68], v128, &qword_1002A7C88, &qword_10023CC10);
  v80 = v70(v79, 1, v73);
  sub_100095C84(v79, &qword_1002A7C88, &qword_10023CC10);
  if (v80 != 1 && !v72 && v48[2])
  {

    goto LABEL_57;
  }

  v81 = v126;
  static Date.now.getter();
  (*(v133 + 56))(v81, 0, 1, v129);
  swift_beginAccess();
  sub_1001A2CDC(v81, &v60[v68]);
  swift_endAccess();
  v82 = qword_1002ABE80;
  v83 = *&v60[qword_1002ABE80];
  *&v60[qword_1002ABE80] = v48;

  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  v85 = sub_100093DE8(v84, qword_1002ABE48);
  v86 = v60;
  v87 = v136;

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v141[0] = v91;
    *v90 = 134218498;
    *(v90 + 4) = *(*&v60[v82] + 16);

    *(v90 + 12) = 2048;
    v140 = v85;
    if (v87 >> 62)
    {
      v92 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v92 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v90 + 14) = v92;

    *(v90 + 22) = 2080;
    v93 = *&v60[v82];

    v94 = Array.description.getter();
    v96 = v95;

    v97 = sub_1000952D4(v94, v96, v141);

    *(v90 + 24) = v97;
    _os_log_impl(&_mh_execute_header, v88, v89, "Sending bounding box information %ld of %ld: %s", v90, 0x20u);
    sub_100095808(v91);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v98 = type metadata accessor for PropertyListEncoder();
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v141[0] = *&v60[v82];

  sub_100095274(&qword_1002ABF40, &qword_10023F778);
  sub_1001CEFF0();
  v101 = v127;
  v102 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v101)
  {

    swift_errorRetain();
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = v86;
      v108 = swift_slowAlloc();
      v141[0] = v108;
      *v106 = 136315138;
      swift_getErrorValue();
      v109 = Error.localizedDescription.getter();
      v111 = sub_1000952D4(v109, v110, v141);

      *(v106 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v104, v105, "Unable to broadcast bounding boxes: %s", v106, 0xCu);
      sub_100095808(v108);
    }

    else
    {
    }
  }

  else
  {
    v112 = v102;
    v113 = v103;

    v114 = *&v86[qword_1002ABE68];
    if (v114)
    {
      (*(v121 + 104))(v122, enum case for DockKitIDSMessageType.objects(_:), v118);
      type metadata accessor for DockKitIDSClient();
      v115 = v114;
      static DockKitIDSClient.DockKitBroadcastToken.getter();
      sub_1000A0CD8(v112, v113);
      v116 = v123;
      DockKitIDSMessage.init(type:token:payload:)();
      DKIDSMessagingCenter.send(_:)();
      (*(v119 + 8))(v116, v120);
      sub_1000A0D2C(v112, v113);
    }

    else
    {
      sub_1000A0D2C(v112, v113);
    }
  }
}

void sub_1001BC774(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100093DE8(v6, qword_1002ABE48);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000952D4(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Expiring client %s due to keep-alive timeout.", v9, 0xCu);
    sub_100095808(v10);
  }

  v11 = qword_1002ABE78;
  swift_beginAccess();
  v12 = *(v3 + v11);

  v14 = sub_1001CD650(v13, a1, a2);

  v15 = *(v3 + v11);
  *(v3 + v11) = v14;

  if (!*(*(v3 + v11) + 16))
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100189D44();
  }
}

void sub_1001BC970()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for DockKitIDSMessageType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DockKitIDSMessage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1002ABE78;
  swift_beginAccess();
  if (*(*(v0 + v13) + 16))
  {
    v14 = *(v0 + qword_1002ABE68);
    if (v14)
    {
      (*(v4 + 104))(v7, enum case for DockKitIDSMessageType.keepAlive(_:), v3);
      type metadata accessor for DockKitIDSClient();
      v15 = v14;
      static DockKitIDSClient.DockKitBroadcastToken.getter();
      DockKitIDSMessage.init(type:token:payload:)();
      DKIDSMessagingCenter.send(_:)();
      (*(v9 + 8))(v12, v8);
    }
  }
}

void sub_1001BCD10(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v6 = type metadata accessor for DockKitIDSMessageType();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  v8 = __chkstk_darwin(v6);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for DockKitIDSMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v3;
  if (a3 && (v17 = *(v3 + qword_1002ABE68)) != 0)
  {
    v51 = v4;
    v18 = v17;
    v19 = DKIDSMessagingCenter.service.getter();

    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 deviceForFromID:v20];

    if (v21)
    {
      v22 = v55;
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100093DE8(v23, qword_1002ABE48);
      (*(v13 + 16))(v16, v22, v12);
      v24 = v21;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v49 = v26;
        v50 = v25;
        v27 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v56 = v48;
        *v27 = 136315395;
        DockKitIDSMessage.type.getter();
        v28 = sub_1001B70DC();
        v30 = v29;
        (*(v54 + 8))(v11, v6);
        (*(v13 + 8))(v16, v12);
        v31 = sub_1000952D4(v28, v30, &v56);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2081;
        v32 = [v24 uniqueIDOverride];

        if (!v32)
        {
          goto LABEL_43;
        }

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_1000952D4(v33, v35, &v56);

        *(v27 + 14) = v36;
        v37 = v50;
        _os_log_impl(&_mh_execute_header, v50, v49, "Got IDS message %s from %{private}s", v27, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }

      v40 = [v24 uniqueIDOverride];
      if (v40)
      {
        v41 = v40;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v42;

        goto LABEL_14;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
  }

LABEL_14:
  v43 = v55;
  v44 = v53;
  DockKitIDSMessage.type.getter();
  v45 = (*(v54 + 88))(v44, v6);
  if (v45 == enum case for DockKitIDSMessageType.register(_:))
  {
    sub_1001BD4E8(v43, v38, v39);
LABEL_18:

    return;
  }

  if (v45 == enum case for DockKitIDSMessageType.deRegister(_:))
  {
    sub_1001BE480(v43, v38, v39);
    goto LABEL_18;
  }

  if (v45 == enum case for DockKitIDSMessageType.select(_:))
  {

    sub_1001BFA78();
  }

  else if (v45 == enum case for DockKitIDSMessageType.offset(_:))
  {

    sub_1001C48F0();
  }

  else if (v45 == enum case for DockKitIDSMessageType.region(_:))
  {

    sub_1001C0394();
  }

  else if (v45 == enum case for DockKitIDSMessageType.frame(_:))
  {

    sub_1001C4180();
  }

  else if (v45 == enum case for DockKitIDSMessageType.velocity(_:))
  {

    sub_1001C11BC();
  }

  else if (v45 == enum case for DockKitIDSMessageType.objects(_:))
  {

    sub_1001C65DC(v43);
  }

  else if (v45 == enum case for DockKitIDSMessageType.trajectory(_:))
  {

    sub_1001C2E58(v43);
  }

  else if (v45 == enum case for DockKitIDSMessageType.diagnostics(_:))
  {

    sub_1001BEF8C();
  }

  else if (v45 == enum case for DockKitIDSMessageType.systemTracking(_:))
  {

    sub_1001C2244();
  }

  else if (v45 == enum case for DockKitIDSMessageType.camera(_:))
  {

    sub_1001C4FB4();
  }

  else
  {
    if (v45 == enum case for DockKitIDSMessageType.keepAliveResp(_:))
    {
      sub_1001C607C(v43, v38, v39);
      goto LABEL_18;
    }

    v46 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v46 - 8) + 104))(v47, enum case for DockKitIDSMessagingError.unsupportedMessageType(_:), v46);
    swift_willThrow();
    (*(v54 + 8))(v44, v6);
  }
}

void sub_1001BD4E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v140 = a2;
  v145 = a3;
  v4 = type metadata accessor for DockKitIDSMessage();
  v5 = *(v4 - 8);
  v142 = v4;
  v143 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v137 = &v125[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v131 = &v125[-v10];
  __chkstk_darwin(v9);
  v141 = &v125[-v11];
  v12 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v138 = &v125[-v14];
  v15 = type metadata accessor for UUID();
  v148 = *(v15 - 8);
  v16 = *(v148 + 64);
  v17 = __chkstk_darwin(v15);
  v132 = &v125[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v21 = &v125[-v20];
  __chkstk_darwin(v19);
  v23 = &v125[-v22];
  v24 = type metadata accessor for DockKitIDSMessageType();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v29 = &v125[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v31 = &v125[-v30];
  v146 = a1;
  DockKitIDSMessage.type.getter();
  v133 = v25[13];
  v134 = v25 + 13;
  v133(v29, enum case for DockKitIDSMessageType.register(_:), v24);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v32 = v25[1];
  v32(v29, v24);
  v135 = v31;
  v136 = v24;
  v32(v31, v24);
  if (v147[3] != v147[0])
  {
    v37 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v39 = v41;
    v40 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
    goto LABEL_5;
  }

  v33 = v146;
  DockKitIDSMessage.token.getter();
  type metadata accessor for DockKitIDSClient();
  static DockKitIDSClient.DockKitBroadcastToken.getter();
  sub_1001CF2C4(&qword_1002A8728, &type metadata accessor for UUID);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = v148 + 8;
  v35 = *(v148 + 8);
  v35(v21, v15);
  v148 = v36;
  v130 = v35;
  v35(v23, v15);
  if (v34)
  {
    v37 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v39 = v38;
    v40 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
LABEL_5:
    (*(*(v37 - 8) + 104))(v39, *v40, v37);
    swift_willThrow();
    return;
  }

  v42 = v33;
  v128 = v23;
  v129 = v15;
  v43 = DockKitIDSMessage.payload.getter();
  if (v44 >> 60 != 15)
  {
    sub_1000A452C(v43, v44);
    v48 = DockKitIDSMessage.payload.getter();
    v46 = v144;
    v50 = v141;
    if (v49 >> 60 != 15)
    {
      v51 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v51 != 2)
        {
          v47 = v141;
          sub_1000A452C(v48, v49);
          goto LABEL_22;
        }

        v55 = *(v48 + 16);
        v54 = *(v48 + 24);
        v48 = sub_1000A452C(v48, v49);
        v53 = v54 - v55;
        if (!__OFSUB__(v54, v55))
        {
LABEL_18:
          v47 = v50;
          if (v53 >= 1)
          {
            v58 = DockKitIDSMessage.payload.getter();
            if (v59 >> 60 != 15)
            {
              v60 = v58;
              v61 = v59;
              v62 = Data._Representation.subscript.getter();
              sub_1000A452C(v60, v61);
              v45 = v62 != 0;
              v46 = v144;
              goto LABEL_23;
            }

LABEL_51:
            __break(1u);
            return;
          }

LABEL_22:
          v45 = 0;
          goto LABEL_23;
        }

        __break(1u);
      }

      else if (!v51)
      {
        v52 = BYTE6(v49);
        sub_1000A452C(v48, v49);
        v53 = v52;
        goto LABEL_18;
      }

      v56 = HIDWORD(v48);
      v57 = v48;
      sub_1000A452C(v48, v49);
      LODWORD(v53) = v56 - v57;
      if (!__OFSUB__(v56, v57))
      {
        v53 = v53;
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  v45 = 0;
  v46 = v144;
  v47 = v141;
LABEL_23:
  v63 = qword_1002ABE78;
  v64 = swift_beginAccess();
  v65 = *(v46 + v63);
  __chkstk_darwin(v64);
  *&v125[-16] = v33;

  v66 = v138;
  v67 = v139;
  sub_1001B6D9C(sub_1001C9EB8, v65, v138);

  v68 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v65) = (*(*(v68 - 8) + 48))(v66, 1, v68);
  sub_100095C84(v66, &qword_1002ABEE8, &qword_10023F720);
  v141 = v67;
  if (v65 == 1)
  {
    v69 = v143;
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100093DE8(v70, qword_1002ABE48);
    v71 = v131;
    v72 = v142;
    (*(v69 + 16))(v131, v42, v142);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v147[0] = v138;
      *v75 = 136315394;
      v127 = v63;
      v76 = v128;
      v126 = v74;
      DockKitIDSMessage.token.getter();
      sub_1001CF2C4(&unk_1002A6F90, &type metadata accessor for UUID);
      v77 = v129;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v45;
      v80 = v71;
      v82 = v81;
      v83 = v76;
      v63 = v127;
      v84 = v77;
      v85 = v130;
      v130(v83, v84);
      v86 = v80;
      v45 = v79;
      v139 = *(v143 + 8);
      (v139)(v86, v72);
      v87 = sub_1000952D4(v78, v82, v147);

      *(v75 + 4) = v87;
      *(v75 + 12) = 2080;
      v88 = v140;
      *(v75 + 14) = sub_1000952D4(v140, v145, v147);
      _os_log_impl(&_mh_execute_header, v73, v126, "Registering new client %s for device %s", v75, 0x16u);
      swift_arrayDestroy();

      v89 = v141;

      v46 = v144;
    }

    else
    {

      v139 = *(v69 + 8);
      (v139)(v71, v72);
      v88 = v140;
      v89 = v141;
      v46 = v144;
      v85 = v130;
    }
  }

  else
  {
    LODWORD(v138) = v45;
    v90 = v143;
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100093DE8(v91, qword_1002ABE48);
    v92 = v47;
    v93 = v142;
    (*(v90 + 16))(v47, v42, v142);

    v94 = v90;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v147[0] = v131;
      *v97 = 136315394;
      v127 = v63;
      v98 = v128;
      DockKitIDSMessage.token.getter();
      sub_1001CF2C4(&unk_1002A6F90, &type metadata accessor for UUID);
      v99 = v93;
      v100 = v92;
      v101 = v129;
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v126 = v96;
      v103 = v102;
      v105 = v104;
      v106 = v98;
      v63 = v127;
      v107 = v101;
      v85 = v130;
      v130(v106, v107);
      v139 = *(v94 + 8);
      (v139)(v100, v99);
      v108 = sub_1000952D4(v103, v105, v147);

      *(v97 + 4) = v108;
      *(v97 + 12) = 2080;
      v88 = v140;
      *(v97 + 14) = sub_1000952D4(v140, v145, v147);
      _os_log_impl(&_mh_execute_header, v95, v126, "Re-registering client %s for device %s", v97, 0x16u);
      swift_arrayDestroy();

      v46 = v144;
    }

    else
    {

      v139 = *(v94 + 8);
      (v139)(v47, v93);
      v88 = v140;
      v85 = v130;
    }

    v89 = v141;
    v45 = v138;
  }

  if (v45)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    sub_100093DE8(v109, qword_1002ABE48);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "Treating this as an initial registration and clearing state.", v112, 2u);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100189D44();
  }

  v113 = *(v46 + v63);
  v114 = v145;

  v116 = v89;
  v117 = sub_1001CD650(v115, v88, v114);

  v118 = *(v46 + v63);
  *(v46 + v63) = v117;

  v119 = v128;
  DockKitIDSMessage.token.getter();
  swift_beginAccess();
  sub_1001CC454(v88, v114, v119);
  v85(v119, v129);
  swift_endAccess();

  v120 = *(v46 + qword_1002ABE68);
  if (v120)
  {
    v133(v135, enum case for DockKitIDSMessageType.ack(_:), v136);
    v121 = v120;
    DockKitIDSMessage.token.getter();
    v122 = v137;
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    if (v116)
    {
      (v139)(v122, v142);

      return;
    }

    (v139)(v122, v142);

    v85 = v130;
  }

  v123 = v132;
  DockKitIDSMessage.token.getter();
  sub_1001C716C(v123);
  v85(v123, v129);
  if (!v116)
  {
    v124 = *(v46 + qword_1002ABE90);

    dispatch thunk of DKIDSKeepAlive.monitor(from:)();
  }
}

void sub_1001BE480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a2;
  v93 = a3;
  v94 = type metadata accessor for DockKitIDSMessage();
  v98 = *(v94 - 8);
  v4 = *(v98 + 64);
  v5 = __chkstk_darwin(v94);
  v90 = &v81[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v91 = &v81[-v7];
  v8 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v96 = &v81[-v10];
  v11 = type metadata accessor for UUID();
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  v13 = __chkstk_darwin(v11);
  v95 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v81[-v16];
  __chkstk_darwin(v15);
  v19 = &v81[-v18];
  v20 = type metadata accessor for DockKitIDSMessageType();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v25 = &v81[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v27 = &v81[-v26];
  v100 = a1;
  DockKitIDSMessage.type.getter();
  v87 = v21[13];
  v88 = v21 + 13;
  v87(v25, enum case for DockKitIDSMessageType.deRegister(_:), v20);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = v21[1];
  v28(v25, v20);
  v89 = v27;
  v86 = v20;
  v28(v27, v20);
  if (v101[3] != v101[0])
  {
    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v35 = v37;
    v36 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
    goto LABEL_5;
  }

  v29 = v100;
  DockKitIDSMessage.token.getter();
  type metadata accessor for DockKitIDSClient();
  static DockKitIDSClient.DockKitBroadcastToken.getter();
  sub_1001CF2C4(&qword_1002A8728, &type metadata accessor for UUID);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = v102 + 8;
  v31 = *(v102 + 8);
  v31(v17, v11);
  v31(v19, v11);
  if (v30)
  {
    v33 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v35 = v34;
    v36 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
LABEL_5:
    (*(*(v33 - 8) + 104))(v35, *v36, v33);
LABEL_6:
    swift_willThrow();
    return;
  }

  v38 = v19;
  v39 = v32;
  v40 = v95;
  DockKitIDSMessage.token.getter();
  v85 = v31;
  v41 = qword_1002ABE78;
  v42 = v99;
  v43 = swift_beginAccess();
  v44 = *&v42[v41];
  __chkstk_darwin(v43);
  *&v81[-16] = v40;

  v45 = v96;
  v46 = v97;
  sub_1001B6D9C(sub_1001CD88C, v44, v96);
  v97 = v46;

  v47 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v48 = (*(*(v47 - 8) + 48))(v45, 1, v47);
  v49 = v45;
  v50 = v85;
  sub_100095C84(v49, &qword_1002ABEE8, &qword_10023F720);
  v50(v40, v11);
  v51 = v29;
  DockKitIDSMessage.token.getter();
  if (v48 == 1)
  {
    v52 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v53 = swift_allocError();
    (*(*(v52 - 8) + 104))(v54, enum case for DockKitIDSMessagingError.notRegistered(_:), v52);
    sub_1001C6CCC(v38, v53);
    v50(v38, v11);

    goto LABEL_6;
  }

  v55 = v99;
  swift_beginAccess();
  v95 = v41;
  sub_1001B6CB4(v38);
  v96 = v38;
  v84 = v11;
  v102 = v39;
  v50(v38, v11);
  swift_endAccess();

  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100093DE8(v56, qword_1002ABE48);
  v57 = v98;
  v58 = v91;
  v59 = v94;
  (*(v98 + 16))(v91, v51, v94);
  v60 = v55;
  v61 = v55;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v55;
    v65 = v58;
    v66 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v101[0] = v83;
    *v66 = 136315394;
    v67 = v96;
    v82 = v63;
    DockKitIDSMessage.token.getter();
    sub_1001CF2C4(&unk_1002A6F90, &type metadata accessor for UUID);
    v68 = v84;
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v85(v67, v68);
    v72 = *(v98 + 8);
    v73 = v65;
    v61 = v64;
    v59 = v94;
    v72(v73, v94);
    v74 = sub_1000952D4(v69, v71, v101);

    *(v66 + 4) = v74;
    *(v66 + 12) = 2048;
    v75 = v95;
    v76 = *(*&v95[v61] + 16);

    *(v66 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v62, v82, "De-registering client %s. %ld client(s) remaining.", v66, 0x16u);
    sub_100095808(v83);
  }

  else
  {

    v72 = *(v57 + 8);
    v72(v58, v59);
    v75 = v95;
  }

  if (!*(*&v75[v61] + 16))
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    sub_100189D44();
  }

  v77 = *&v60[qword_1002ABE90];

  dispatch thunk of DKIDSKeepAlive.expire(from:fail:)();

  v78 = *&v60[qword_1002ABE68];
  if (v78)
  {
    v87(v89, enum case for DockKitIDSMessageType.ack(_:), v86);
    v79 = v78;
    DockKitIDSMessage.token.getter();
    v80 = v90;
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    v72(v80, v59);
  }
}

void sub_1001BEF8C()
{
  v0 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v79 = &v75 - v2;
  v3 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v81 = &v75 - v5;
  v84 = type metadata accessor for UUID();
  v89 = *(v84 - 8);
  v6 = *(v89 + 64);
  v7 = __chkstk_darwin(v84);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v80 = &v75 - v11;
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  v14 = type metadata accessor for DockKitIDSMessageType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v75 - v20;
  DockKitIDSMessage.type.getter();
  (*(v15 + 104))(v19, enum case for DockKitIDSMessageType.diagnostics(_:), v14);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v15 + 8);
  v22(v19, v14);
  v22(v21, v14);
  if (v86 != v85[0])
  {
    v39 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v41 = v40;
    v42 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v39 - 8) + 104))(v41, *v42, v39);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v23 = qword_1002ABE78;
  v24 = v83;
  v25 = swift_beginAccess();
  v26 = *&v24[v23];
  __chkstk_darwin(v25);
  *(&v75 - 2) = v13;

  v27 = v81;
  v28 = v82;
  sub_1001B6D9C(sub_1001CF37C, v26, v81);
  v29 = v28;

  v30 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v31 = (*(*(v30 - 8) + 48))(v27, 1, v30);
  sub_100095C84(v27, &qword_1002ABEE8, &qword_10023F720);
  v32 = v89 + 8;
  v33 = *(v89 + 8);
  v34 = v84;
  v33(v13, v84);
  if (v31 == 1)
  {
    v35 = v80;
    DockKitIDSMessage.token.getter();
    v36 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, enum case for DockKitIDSMessagingError.notRegistered(_:), v36);
    sub_1001C6CCC(v35, v37);
    v33(v35, v34);

LABEL_6:
    swift_willThrow();
    return;
  }

  v82 = v33;
  v89 = v32;
  v43 = v80;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v44 = qword_1002B1CF0;
    v45 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v46 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v46 + 4);

    v47 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v48 = *(v44 + v45);
    v49 = v47;

    os_unfair_lock_unlock(v48 + 4);

    if (!v47)
    {
      v39 = type metadata accessor for DockKitIDSMessagingError();
      sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
      swift_allocError();
      v41 = v61;
      v42 = &enum case for DockKitIDSMessagingError.noPairedDevice(_:);
      goto LABEL_5;
    }

    v75 = v29;
    v50 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v76 = v49;
    v83 = dispatch thunk of DockCoreAccessory.info.getter();
    v77 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v51 = *&v50[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v52 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v78 = v50;
    v53 = *&v50[v52];
    v54 = *(v53 + 16);

    v81 = v54;
    if (!v54)
    {
      break;
    }

    v55 = 0;
    v29 = v53 + 32;
    while (v55 < *(v53 + 16))
    {
      sub_1000A097C(v29, v85);
      v56 = *(*sub_1000A09E0(v85, v85[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v56) = static UUID.== infix(_:_:)();
      v57 = v84;
      v58 = v82;
      v82(v9, v84);
      v58(v43, v57);
      if (v56)
      {

        v59 = v78;
        v62 = *&v78[v77];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v85, &v86);
        sub_100095808(v85);
        goto LABEL_17;
      }

      ++v55;
      sub_100095808(v85);
      v29 += 40;
      if (v81 == v55)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_14:

  v59 = v78;
  v60 = *&v78[v77];
  OS_dispatch_semaphore.signal()();

  v88 = 0;
  v86 = 0u;
  v87 = 0u;
LABEL_17:

  if (*(&v87 + 1))
  {
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    type metadata accessor for DaemonAccessory();
    v63 = swift_dynamicCast();
    v64 = v76;
    if (v63)
    {
      v65 = v85[0];
      if (*(v85[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v66 = *(v85[0] + 16)) != 0 && (v67 = *&v66[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
      {
        v68 = v66;
        if ([v67 state] == 2)
        {
          sub_1000A470C();
          v69 = type metadata accessor for TaskPriority();
          v70 = v64;
          v71 = v79;
          (*(*(v69 - 8) + 56))(v79, 1, 1, v69);
          v72 = swift_allocObject();
          v72[2] = 0;
          v72[3] = 0;
          v72[4] = v65;

          sub_1001B6A08(0, 0, v71, &unk_10023F738, v72);

          return;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100095C84(&v86, &unk_1002A6F40, &unk_10023BE90);
    v64 = v76;
  }

  v73 = type metadata accessor for DockKitIDSMessagingError();
  sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
  swift_allocError();
  (*(*(v73 - 8) + 104))(v74, enum case for DockKitIDSMessagingError.noPairedDevice(_:), v73);
  swift_willThrow();
}

uint64_t sub_1001BFA78()
{
  v0 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v77 = &v69 - v2;
  v3 = type metadata accessor for DKSubjectSelectionRequestType();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DKSelectSubjectMetric();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v69 - v11;
  v13 = type metadata accessor for UUID();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  v15 = __chkstk_darwin(v13);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v69 - v17;
  v19 = type metadata accessor for DockKitIDSMessageType();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v69 - v25;
  DockKitIDSMessage.type.getter();
  (*(v20 + 104))(v24, enum case for DockKitIDSMessageType.select(_:), v19);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v27 = *(v20 + 8);
  v27(v24, v19);
  v27(v26, v19);
  if (v82 != v83)
  {
    v39 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v41 = v40;
    v42 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v39 - 8) + 104))(v41, *v42, v39);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v28 = qword_1002ABE78;
  v29 = v81;
  v30 = swift_beginAccess();
  v31 = *(v29 + v28);
  __chkstk_darwin(v30);

  sub_1001B6D9C(sub_1001CF37C, v31, v12);

  v32 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v31) = (*(*(v32 - 8) + 48))(v12, 1, v32);
  sub_100095C84(v12, &qword_1002ABEE8, &qword_10023F720);
  v33 = v80;
  v34 = *(v79 + 8);
  v34(v18, v80);
  if (v31 == 1)
  {
    v35 = v76;
    DockKitIDSMessage.token.getter();
    v36 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, enum case for DockKitIDSMessagingError.notRegistered(_:), v36);
    sub_1001C6CCC(v35, v37);
    v34(v35, v33);

    return swift_willThrow();
  }

  v44 = DockKitIDSMessage.payload.getter();
  if (v45 >> 60 == 15)
  {
    v39 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v41 = v46;
    v42 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v44, v45);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v47 = qword_1002B1CF0;
  v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v49 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v49 + 4);

  v50 = *(v47 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v51 = *(v47 + v48);
  v52 = v50;

  os_unfair_lock_unlock(v51 + 4);

  nanocameraIdentifier.getter();
  v81 = v53;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  (*(v71 + 104))(v70, enum case for DKSubjectSelectionRequestType.point(_:), v72);
  LODWORD(v80) = DKSubjectSelectionRequestType.rawValue.getter();
  (*(v55 + 8))(v54, v56);
  v57 = type metadata accessor for Errors();
  (*(*(v57 - 8) + 56))(v77, 1, 1, v57);
  if (v50)
  {
    v58 = v52;
    v59 = dispatch thunk of DockCoreAccessory.firmwareVersion.getter();
    v61 = v60;

    if (v61)
    {
      v62 = v59;
    }

    else
    {
      v62 = 0x6E776F6E6B6E55;
    }

    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0xE700000000000000;
    }

    v78 = v63;
    v79 = v62;
    v64 = v58;
    dispatch thunk of DockCoreAccessory.model.getter();
    v65 = v52;

    v66 = v64;
    v67 = dispatch thunk of DockCoreAccessory.info.getter();

    DockCoreInfo.name.getter();
    v52 = v65;
  }

  v68 = v73;
  DKSelectSubjectMetric.init(appID:type:error:firmwareVersion:hardwareModel:hardwareMake:)();
  DKSelectSubjectMetric.send()();

  return (*(v74 + 8))(v68, v75);
}

void sub_1001C0394()
{
  v100 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v100 - 8);
  v0 = *(v99 + 64);
  __chkstk_darwin(v100);
  v97 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  v2 = *(v96 + 64);
  __chkstk_darwin(v98);
  v95 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchTime();
  v94 = *(v102 - 8);
  v4 = *(v94 + 64);
  v5 = __chkstk_darwin(v102);
  v93 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v90 - v7;
  v92 = type metadata accessor for DispatchQoS.QoSClass();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v90 - v12;
  v14 = type metadata accessor for UUID();
  v104 = *(v14 - 8);
  v105 = v14;
  v15 = *(v104 + 64);
  v16 = __chkstk_darwin(v14);
  v103 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  v20 = type metadata accessor for DockKitIDSMessageType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v90 - v26;
  DockKitIDSMessage.type.getter();
  (*(v21 + 104))(v25, enum case for DockKitIDSMessageType.region(_:), v20);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = *(v21 + 8);
  v28(v25, v20);
  v28(v27, v20);
  if (*&aBlock.f64[0] != v113)
  {
    v41 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v43 = v42;
    v44 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v41 - 8) + 104))(v43, *v44, v41);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v29 = qword_1002ABE78;
  v30 = v107.f64[0];
  v31 = swift_beginAccess();
  v32 = *(*&v30 + v29);
  __chkstk_darwin(v31);
  *(&v90 - 2) = v19;

  v33 = v106.f64[0];
  sub_1001B6D9C(sub_1001CF37C, v32, v13);

  v34 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v32) = (*(*(v34 - 8) + 48))(v13, 1, v34);
  sub_100095C84(v13, &qword_1002ABEE8, &qword_10023F720);
  v35 = v105;
  v36 = *(v104 + 8);
  v36(v19, v105);
  if (v32 == 1)
  {
    v37 = v103;
    DockKitIDSMessage.token.getter();
    v38 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, enum case for DockKitIDSMessagingError.notRegistered(_:), v38);
    sub_1001C6CCC(v37, v39);
    v36(v37, v35);

LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = DockKitIDSMessage.payload.getter();
  if (v46 >> 60 == 15)
  {
    v41 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v43 = v47;
    v44 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v45, v46);
  v48 = type metadata accessor for PropertyListDecoder();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v51 = DockKitIDSMessage.payload.getter();
  if (v52 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v53 = v51;
  v54 = v52;
  type metadata accessor for CGRect(0);
  sub_1001CF2C4(&qword_1002ABF08, type metadata accessor for CGRect);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000A452C(v53, v54);

  if (v33 == 0.0)
  {
    __asm { FMOV            V1.2D, #1.0 }

    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(aBlock, _Q1), vcgtq_f64(vaddq_f64(aBlock, v109), _Q1)))) & 1) != 0 || aBlock.f64[0] < 0.0 || (v60 = aBlock.f64[1], aBlock.f64[1] < 0.0))
    {
      v41 = type metadata accessor for DockKitIDSMessagingError();
      sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
      swift_allocError();
      v43 = v68;
      v44 = &enum case for DockKitIDSMessagingError.argumentNotNormalized(_:);
      goto LABEL_5;
    }

    v106 = aBlock;
    v107 = v109;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v61 = qword_1002B1CF0;
    v62 = sub_100187E14();
    if (v64)
    {
      v65 = v62;
      v66 = v63;
      v67 = v64;

      sub_1001CD9B0(v66, v67, v106.f64[0], v60, v107.f64[0], v107.f64[1], v65, v66, v67);

      v73 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v74 = *(v61 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v74 + 4);

      v75 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
      swift_beginAccess();

      v76 = *(v61 + v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = *(v61 + v75);
      *(v61 + v75) = 0x8000000000000000;
      sub_1001EBB3C(sub_1001B6D90, 0, v66, v67, isUniquelyReferenced_nonNull_native);

      *(v61 + v75) = v112;
      swift_endAccess();
      v78 = *(v61 + v73);

      os_unfair_lock_unlock(v78 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v79 = v91;
      v80 = v90;
      v81 = v92;
      (*(v91 + 104))(v90, enum case for DispatchQoS.QoSClass.default(_:), v92);
      *&v106.f64[0] = static OS_dispatch_queue.global(qos:)();
      (*(v79 + 8))(v80, v81);
      v82 = v93;
      static DispatchTime.now()();
      + infix(_:_:)();
      v107.f64[0] = *(v94 + 8);
      (*&v107.f64[0])(v82, v102);
      v83 = swift_allocObject();
      *(v83 + 16) = v65;
      *(v83 + 24) = v66;
      *(v83 + 32) = v67;
      v110 = sub_1001CE080;
      v111 = v83;
      *&aBlock.f64[0] = _NSConcreteStackBlock;
      *&aBlock.f64[1] = 1107296256;
      *&v109.f64[0] = sub_100147FC8;
      *&v109.f64[1] = &unk_10027AA20;
      v84 = _Block_copy(&aBlock);
      v85 = v95;
      static DispatchQoS.unspecified.getter();
      v112 = _swiftEmptyArrayStorage;
      sub_1001CF2C4(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000E4D54(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      v86 = v97;
      v87 = v100;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v88 = v101;
      v89 = v106.f64[0];
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v84);

      (*(v99 + 8))(v86, v87);
      (*(v96 + 8))(v85, v98);
      (*&v107.f64[0])(v88, v102);
    }

    else
    {
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100093DE8(v69, qword_1002ABE48);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "No foregrounded app available to set region of interest!", v72, 2u);
      }
    }
  }
}

void sub_1001C11BC()
{
  v129 = type metadata accessor for ActuatorLimit();
  v130 = *(v129 - 8);
  v0 = *(v130 + 64);
  __chkstk_darwin(v129);
  v131 = &v115 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v127 = *(v128 - 1);
  v2 = *(v127 + 64);
  __chkstk_darwin(v128);
  v126 = &v115 - v3;
  v4 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v115 - v6;
  v133 = type metadata accessor for UUID();
  v132 = *(v133 - 1);
  v8 = *(v132 + 64);
  __chkstk_darwin(v133);
  v10 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DockKitIDSMessageType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v115 - v17;
  DockKitIDSMessage.type.getter();
  (*(v12 + 104))(v16, enum case for DockKitIDSMessageType.velocity(_:), v11);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v12 + 8);
  v19(v16, v11);
  v19(v18, v11);
  if (v135[0] != v135[8])
  {
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v30 = v32;
    v31 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
    goto LABEL_18;
  }

  DockKitIDSMessage.token.getter();
  v20 = qword_1002ABE78;
  v21 = v134;
  v22 = swift_beginAccess();
  v23 = *(v21 + v20);
  __chkstk_darwin(v22);
  *(&v115 - 2) = v10;

  v24 = v136;
  sub_1001B6D9C(sub_1001CF37C, v23, v7);
  v25 = v24;

  v26 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v27 = (*(*(v26 - 8) + 48))(v7, 1, v26);
  sub_100095C84(v7, &qword_1002ABEE8, &qword_10023F720);
  (*(v132 + 8))(v10, v133);
  if (v27 == 1)
  {
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v30 = v29;
    v31 = &enum case for DockKitIDSMessagingError.notRegistered(_:);
LABEL_18:
    (*(*(v28 - 8) + 104))(v30, *v31, v28);
    swift_willThrow();
    return;
  }

  v33 = DockKitIDSMessage.payload.getter();
  if (v34 >> 60 == 15)
  {
LABEL_16:
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v30 = v68;
    v31 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_18;
  }

  sub_1000A452C(v33, v34);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v35 = qword_1002B1CF0;
    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v37 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v37 + 4);

    v38 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;
    v39 = *(v35 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v40 = *(v35 + v36);
    v41 = v39;

    os_unfair_lock_unlock(v40 + 4);

    if (!v39)
    {
      v28 = type metadata accessor for DockKitIDSMessagingError();
      sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
      swift_allocError();
      v30 = v69;
      v31 = &enum case for DockKitIDSMessagingError.noPairedDevice(_:);
      goto LABEL_18;
    }

    v42 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
    swift_beginAccess();
    v43 = v127;
    v44 = v35 + v42;
    v45 = v126;
    v46 = v128;
    (*(v127 + 16))(v126, v44, v128);
    DKThreadSafe.wrappedValue.getter();
    (*(v43 + 8))(v45, v46);
    if (LOBYTE(v135[0]) != 1)
    {
      goto LABEL_16;
    }

    v47 = type metadata accessor for PropertyListDecoder();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v50 = DockKitIDSMessage.payload.getter();
    if (v51 >> 60 == 15)
    {
      break;
    }

    v52 = v50;
    v53 = v51;
    type metadata accessor for Vector3D(0);
    sub_1001CF2C4(&qword_1002ABF10, type metadata accessor for Vector3D);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_1000A452C(v52, v53);

    if (v25)
    {
      return;
    }

    v127 = v135[0];
    v126 = v135[1];
    v125 = v135[2];
    v54 = *(v35 + v36);

    os_unfair_lock_lock(v54 + 4);

    v55 = *(v35 + v38);
    v56 = *(v35 + v36);
    v57 = v55;

    os_unfair_lock_unlock(v56 + 4);

    if (!v55)
    {
      return;
    }

    v58 = dispatch thunk of DockCoreAccessory.systems.getter();
    v59 = v58;
    if (v58 >> 62)
    {
LABEL_58:
      v60 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v129;
    v62 = v131;
    if (!v60)
    {
LABEL_52:

      return;
    }

    v63 = 0;
    v132 = v59 & 0xC000000000000001;
    v121 = v59 & 0xFFFFFFFFFFFFFF8;
    v120 = v59 + 32;
    v64 = *&v127;
    v65 = v126;
    v66 = *&v125;
    v134 = v130 + 16;
    v133 = (v130 + 8);
    *(&v67 + 1) = 6;
    v123 = xmmword_10023DB20;
    *&v67 = 136315138;
    v115 = v67;
    v124 = v57;
    v118 = v59;
    v116 = v60;
    while (1)
    {
      while (1)
      {
        if (v132)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v63 >= *(v121 + 16))
          {
            goto LABEL_57;
          }

          v70 = *(v120 + 8 * v63);
        }

        v71 = v70;
        if (__OFADD__(v63++, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        System.type.getter();
        v73 = SystemType.rawValue.getter();
        if (v73 == SystemType.rawValue.getter())
        {
          type metadata accessor for ActuationController();
          v74 = swift_dynamicCastClass();
          if (v74)
          {
            break;
          }
        }

        if (v63 == v60)
        {
          goto LABEL_52;
        }
      }

      v75 = v74;
      v128 = v71;
      v122 = v75;
      v76 = ActuationController.getActuatorLimits()();
      v119 = v63;
      v25 = *(v76 + 16);
      if (v25)
      {
        break;
      }

LABEL_45:
      v88 = v128;

      sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
      inited = swift_initStackObject();
      *(inited + 16) = v123;
      type metadata accessor for Actuator();
      *(inited + 32) = static Actuator.Yaw.getter();
      *(inited + 40) = v90;
      *(inited + 48) = static Actuator.Pitch.getter();
      *(inited + 56) = v91;
      *(inited + 64) = static Actuator.Roll.getter();
      *(inited + 72) = v92;
      sub_100095274(&qword_1002A89B8, &qword_10023D910);
      v93 = swift_allocObject();
      *(v93 + 16) = v123;
      v94 = v126;
      *(v93 + 32) = v127;
      *(v93 + 40) = v94;
      *(v93 + 48) = v125;
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_100093DE8(v95, qword_1002ABE48);

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      v98 = os_log_type_enabled(v96, v97);
      v136 = inited;
      v117 = inited + 32;
      if (v98)
      {
        v99 = swift_slowAlloc();
        v135[0] = swift_slowAlloc();
        v100 = v135[0];
        *v99 = v115;
        v101 = Array.description.getter();
        v103 = sub_1000952D4(v101, v102, v135);

        *(v99 + 4) = v103;
        _os_log_impl(&_mh_execute_header, v96, v97, "Setting actuation: %s", v99, 0xCu);
        sub_100095808(v100);
        v88 = v128;
      }

      v104 = dispatch thunk of DockCoreAccessory.info.getter();
      if (qword_1002A66E0 != -1)
      {
        swift_once();
      }

      v105 = dword_1002B1B80;
      v106 = qword_1002B1B88;
      v107 = unk_1002B1B90;
      v108 = v88;
      v109 = System.name.getter();
      v111 = v110;

      sub_10011B22C(v104, v105, v106, v107, v109, v111, v136, v93);

      swift_setDeallocating();
      swift_arrayDestroy();
      v61 = v129;
      v62 = v131;
      v59 = v118;
      v60 = v116;
      v63 = v119;
      v57 = v124;
      if (v119 == v116)
      {
        goto LABEL_52;
      }
    }

    type metadata accessor for Actuator();
    v77 = 0;
    v136 = v76 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    while (v77 < *(v76 + 16))
    {
      (*(v130 + 16))(v62, v136 + *(v130 + 72) * v77, v61);
      v78 = ActuatorLimit.name.getter();
      v80 = v79;
      if (static Actuator.Pitch.getter() == v78 && v81 == v80)
      {

        v82 = *&v65;
      }

      else
      {
        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v83)
        {

          v82 = *&v65;
        }

        else if (static Actuator.Roll.getter() == v78 && v84 == v80)
        {

          v82 = v66;
        }

        else
        {
          v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v85)
          {
            v82 = v66;
          }

          else
          {
            v82 = v64;
          }
        }

        v61 = v129;
      }

      v86 = fabs(v82);
      v62 = v131;
      ActuatorLimit.maxSpeed.getter();
      if (v87 < v86)
      {

        v112 = type metadata accessor for DockKitIDSMessagingError();
        sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
        swift_allocError();
        (*(*(v112 - 8) + 104))(v113, enum case for DockKitIDSMessagingError.argumentNotNormalized(_:), v112);
        swift_willThrow();
        v114 = v128;

        (*v133)(v62, v61);
        return;
      }

      ++v77;
      (*v133)(v62, v61);
      if (v25 == v77)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_55:
    swift_once();
  }

  __break(1u);
}

void sub_1001C2244()
{
  v0 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v86 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v94 = v4;
  v95 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v91 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v92 = &v86 - v10;
  __chkstk_darwin(v9);
  v12 = &v86 - v11;
  v13 = type metadata accessor for DockKitIDSMessageType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v86 - v19;
  DockKitIDSMessage.type.getter();
  (*(v14 + 104))(v18, enum case for DockKitIDSMessageType.systemTracking(_:), v13);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v14 + 8);
  v21(v18, v13);
  v21(v20, v13);
  if (v97 != v96[0])
  {
    v35 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v37 = v36;
    v38 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_29:
    (*(*(v35 - 8) + 104))(v37, *v38, v35);
    goto LABEL_30;
  }

  DockKitIDSMessage.token.getter();
  v22 = qword_1002ABE78;
  v23 = v100;
  v24 = swift_beginAccess();
  v25 = *&v23[v22];
  __chkstk_darwin(v24);
  *(&v86 - 2) = v12;

  sub_1001B6D9C(sub_1001CF37C, v25, v3);

  v26 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  v27 = (*(*(v26 - 8) + 48))(v3, 1, v26);
  sub_100095C84(v3, &qword_1002ABEE8, &qword_10023F720);
  v28 = v94;
  v30 = v95 + 8;
  v29 = *(v95 + 8);
  v29(v12, v94);
  if (v27 == 1)
  {
    v31 = v92;
    DockKitIDSMessage.token.getter();
    v32 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, enum case for DockKitIDSMessagingError.notRegistered(_:), v32);
    sub_1001C6CCC(v31, v33);
    v29(v31, v28);

LABEL_30:
    swift_willThrow();
    return;
  }

  v39 = DockKitIDSMessage.payload.getter();
  if (v40 >> 60 == 15)
  {
    goto LABEL_28;
  }

  sub_1000A452C(v39, v40);
  v41 = DockKitIDSMessage.payload.getter();
  if (v42 >> 60 != 15)
  {
    v43 = v42 >> 62;
    if ((v42 >> 62) > 1)
    {
      if (v43 != 2)
      {
        sub_1000A452C(v41, v42);
        goto LABEL_28;
      }

      v45 = *(v41 + 16);
      v46 = *(v41 + 24);
      sub_1000A452C(v41, v42);
      if (!__OFSUB__(v46, v45))
      {
        if (v46 - v45 < 1)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      if (!v43)
      {
        v44 = BYTE6(v42);
        sub_1000A452C(v41, v42);
        if (!v44)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }

      v45 = HIDWORD(v41);
      v47 = v41;
      sub_1000A452C(v41, v42);
      if (!__OFSUB__(v45, v47))
      {
        if (v45 - v47 >= 1)
        {
LABEL_17:
          if (qword_1002A6780 != -1)
          {
            goto LABEL_48;
          }

          while (1)
          {
            v48 = qword_1002B1CF0;
            v49 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
            v50 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

            os_unfair_lock_lock(v50 + 4);

            v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected;
            v52 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
            v53 = *(v48 + v49);
            v100 = v52;

            os_unfair_lock_unlock(v53 + 4);

            if (!v52)
            {
              v35 = type metadata accessor for DockKitIDSMessagingError();
              sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
              swift_allocError();
              v37 = v64;
              v38 = &enum case for DockKitIDSMessagingError.noPairedDevice(_:);
              goto LABEL_29;
            }

            v93 = v51;
            v95 = v30;
            v54 = DockKitIDSMessage.payload.getter();
            if (v55 >> 60 == 15)
            {
              goto LABEL_53;
            }

            v56 = v54;
            v57 = v55;
            v58 = Data._Representation.subscript.getter();
            sub_1000A452C(v56, v57);
            if (qword_1002A6790 != -1)
            {
              swift_once();
            }

            v59 = type metadata accessor for Logger();
            sub_100093DE8(v59, qword_1002ABE48);
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *v62 = 67109120;
              *(v62 + 4) = v58 == 0;
              _os_log_impl(&_mh_execute_header, v60, v61, "Setting manual control to %{BOOL}d", v62, 8u);
            }

            if (v58)
            {
              break;
            }

            LOBYTE(v96[0]) = 1;
            swift_beginAccess();
            sub_100095274(&qword_1002A9318, &qword_10023F0C0);
            DKThreadSafe.wrappedValue.setter();
            swift_endAccess();
            sub_10018A5D0(1);
            v65 = v100;
            v66 = dispatch thunk of DockCoreAccessory.info.getter();
            sub_100197D90();

            v67 = *(v48 + v49);

            os_unfair_lock_lock(v67 + 4);

            v68 = *&v93[v48];
            v69 = *(v48 + v49);
            v70 = v68;

            os_unfair_lock_unlock(v69 + 4);

            if (!v68)
            {

              return;
            }

            v71 = *(v48 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
            v87 = v70;
            v93 = dispatch thunk of DockCoreAccessory.info.getter();
            v88 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
            v72 = *&v71[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
            OS_dispatch_semaphore.wait()();

            v73 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
            swift_beginAccess();
            v89 = v71;
            v30 = *&v71[v73];
            v74 = *(v30 + 16);

            v90 = v74;
            if (!v74)
            {
LABEL_38:

              v81 = v89;
              v82 = *&v89[v88];
              OS_dispatch_semaphore.signal()();

              v99 = 0;
              v97 = 0u;
              v98 = 0u;
LABEL_41:

              v84 = v100;
              v85 = v87;
              if (*(&v98 + 1))
              {
                sub_100095274(&unk_1002A7A90, &unk_10023C960);
                type metadata accessor for DaemonAccessory();
                if (swift_dynamicCast())
                {
                  sub_1001AB0A0();
                }

                else
                {
                }
              }

              else
              {

                sub_100095C84(&v97, &unk_1002A6F40, &unk_10023BE90);
              }

              return;
            }

            v75 = 0;
            v76 = v30 + 32;
            v77 = v94;
            while (v75 < *(v30 + 16))
            {
              sub_1000A097C(v76, v96);
              v78 = *(*sub_1000A09E0(v96, v96[3]) + 24);
              v79 = v92;
              DockCoreInfo.identifier.getter();

              v80 = v91;
              DockCoreInfo.identifier.getter();
              LOBYTE(v78) = static UUID.== infix(_:_:)();
              v29(v80, v77);
              v29(v79, v77);
              if (v78)
              {

                v81 = v89;
                v83 = *&v89[v88];
                OS_dispatch_semaphore.signal()();

                sub_1000A097C(v96, &v97);
                sub_100095808(v96);
                goto LABEL_41;
              }

              ++v75;
              sub_100095808(v96);
              v76 += 40;
              if (v90 == v75)
              {
                goto LABEL_38;
              }
            }

            __break(1u);
LABEL_48:
            swift_once();
          }

          sub_100189D44();
          v45 = v100;
          if (qword_1002A66E0 != -1)
          {
            goto LABEL_51;
          }

          goto LABEL_26;
        }

LABEL_28:
        v35 = type metadata accessor for DockKitIDSMessagingError();
        sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
        swift_allocError();
        v37 = v63;
        v38 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_51:
    swift_once();
LABEL_26:
    sub_100195C58(qword_1002B1B88, unk_1002B1B90, dword_1002B1B80);

    return;
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1001C2E58(NSObject *a1)
{
  v2 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v136 = &v131 - v4;
  v141 = type metadata accessor for TrajectoryCommand.Animation();
  v143 = *(v141 - 8);
  v5 = v143[8];
  v6 = __chkstk_darwin(v141);
  v140 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v139 = &v131 - v8;
  v145 = type metadata accessor for TrajectoryCommand();
  v142 = *(v145 - 8);
  v9 = *(v142 + 64);
  v10 = __chkstk_darwin(v145);
  v137 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v138 = &v131 - v13;
  v135 = v14;
  __chkstk_darwin(v12);
  v146 = &v131 - v15;
  v16 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v131 - v18;
  v150 = type metadata accessor for UUID();
  v20 = *(v150 - 1);
  isa = v20[8].isa;
  v22 = __chkstk_darwin(v150);
  v144 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v147 = &v131 - v25;
  __chkstk_darwin(v24);
  v27 = &v131 - v26;
  v28 = type metadata accessor for DockKitIDSMessageType();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v131 - v34;
  v155 = a1;
  DockKitIDSMessage.type.getter();
  (*(v29 + 104))(v33, enum case for DockKitIDSMessageType.trajectory(_:), v28);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v36 = *(v29 + 8);
  v36(v33, v28);
  v36(v35, v28);
  if (v152 != v151[0])
  {
    v51 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v53 = v52;
    v54 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v51 - 8) + 104))(v53, *v54, v51);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v37 = qword_1002ABE78;
  v38 = v149;
  v39 = swift_beginAccess();
  v40 = *(v38 + v37);
  __chkstk_darwin(v39);
  *(&v131 - 2) = v27;

  v41 = v148;
  sub_1001B6D9C(sub_1001CF37C, v40, v19);

  v42 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v40) = (*(*(v42 - 8) + 48))(v19, 1, v42);
  sub_100095C84(v19, &qword_1002ABEE8, &qword_10023F720);
  v43 = v20[1].isa;
  v44 = v27;
  v45 = v150;
  v43(v44, v150);
  v46 = v20 + 1;
  if (v40 == 1)
  {
    v47 = v147;
    DockKitIDSMessage.token.getter();
    v48 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v49 = swift_allocError();
    (*(*(v48 - 8) + 104))(v50, enum case for DockKitIDSMessagingError.notRegistered(_:), v48);
    sub_1001C6CCC(v47, v49);
    v43(v47, v45);

    return swift_willThrow();
  }

  v56 = DockKitIDSMessage.payload.getter();
  if (v57 >> 60 == 15)
  {
    v51 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v53 = v58;
    v54 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  v59 = v56;
  v60 = v57;
  v155 = v46;
  v61 = type metadata accessor for PropertyListDecoder();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1001CF2C4(&qword_1002ABF18, &type metadata accessor for TrajectoryCommand);
  v64 = v146;
  v65 = v145;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v66 = v41;
  if (v41)
  {
    sub_1000A452C(v59, v60);
  }

  else
  {
    v148 = v59;
    v149 = v60;

    if (qword_1002A6780 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v67 = qword_1002B1CF0;
      v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v69 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v69 + 4);

      v70 = *(v67 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v71 = *(v67 + v68);
      v72 = v70;

      os_unfair_lock_unlock(v71 + 4);

      v73 = v143;
      if (!v70)
      {
        v91 = type metadata accessor for DockKitIDSMessagingError();
        sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
        swift_allocError();
        (*(*(v91 - 8) + 104))(v92, enum case for DockKitIDSMessagingError.noPairedDevice(_:), v91);
        swift_willThrow();
        sub_1000A452C(v148, v149);
        return (*(v142 + 8))(v64, v65);
      }

      v133 = v67;
      v134 = v72;
      v132 = v66;
      v74 = v139;
      TrajectoryCommand.type.getter();
      v75 = v73[13];
      v76 = v140;
      v77 = v73;
      v78 = v141;
      v131 = v75;
      v75(v140, enum case for TrajectoryCommand.Animation.ReturnToHome(_:), v141);
      sub_1001CF2C4(&qword_1002ABF20, &type metadata accessor for TrajectoryCommand.Animation);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v79 = v78;
      v80 = v77[1];
      v80(v76, v79);
      v80(v74, v79);
      if (v152 == LOBYTE(v151[0]) || (TrajectoryCommand.type.getter(), v131(v76, enum case for TrajectoryCommand.Animation.Flip180(_:), v79), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v80(v76, v79), v64 = v146, v80(v74, v79), v152 == LOBYTE(v151[0])))
      {
        v81 = sub_100187E14();
        if (v82)
        {
          v83 = v82;
          *(&v131 - 12) = __chkstk_darwin(v81);
          *(&v131 - 5) = v84;
          *(&v131 - 4) = v85;
          v87 = v148;
          v86 = v149;
          *(&v131 - 3) = v64;
          *(&v131 - 2) = v87;
          *(&v131 - 1) = v86;
          v88 = v84;

          v89 = v132;
          sub_1001CE27C(v88, v83, sub_1001CE268);
          v90 = v142;
          v65 = v145;
          if (v89)
          {
            sub_1000A452C(v87, v86);
          }

          else
          {

            sub_1000A452C(v87, v86);
          }

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v90 = v142;
          v65 = v145;
          if (qword_1002A6790 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          sub_100093DE8(v93, qword_1002ABE48);
          v94 = *(v90 + 16);
          v95 = v138;
          v94(v138, v64, v65);
          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v155 = v96;
            v99 = v98;
            v150 = swift_slowAlloc();
            *&v152 = v150;
            *v99 = 136315138;
            v94(v137, v95, v65);
            v100 = String.init<A>(describing:)();
            v102 = v101;
            (*(v90 + 8))(v95, v65);
            v103 = sub_1000952D4(v100, v102, &v152);

            *(v99 + 4) = v103;
            v104 = v97;
            v105 = v155;
            _os_log_impl(&_mh_execute_header, v155, v104, "No foregrounded app available to send trajectory: %s", v99, 0xCu);
            sub_100095808(v150);

            sub_1000A452C(v148, v149);
          }

          else
          {

            sub_1000A452C(v148, v149);
            (*(v90 + 8))(v95, v65);
          }
        }

        return (*(v90 + 8))(v64, v65);
      }

      v106 = *(v133 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v143 = dispatch thunk of DockCoreAccessory.info.getter();
      v139 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v107 = *&v106[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      OS_dispatch_semaphore.wait()();

      v108 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v140 = v106;
      v109 = *&v106[v108];
      v110 = *(v109 + 16);

      v65 = v145;
      v141 = v110;
      if (!v110)
      {
        break;
      }

      v111 = 0;
      v66 = v109 + 32;
      while (v111 < *(v109 + 16))
      {
        sub_1000A097C(v66, v151);
        v112 = *(*sub_1000A09E0(v151, v151[3]) + 24);
        v64 = v147;
        DockCoreInfo.identifier.getter();

        v113 = v144;
        DockCoreInfo.identifier.getter();
        LOBYTE(v112) = static UUID.== infix(_:_:)();
        v114 = v113;
        v115 = v150;
        v43(v114, v150);
        v43(v64, v115);
        if (v112)
        {

          v118 = v140;
          v119 = *&v139[v140];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v151, &v152);
          sub_100095808(v151);

          goto LABEL_33;
        }

        ++v111;
        sub_100095808(v151);
        v66 += 40;
        if (v141 == v111)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_47:
      swift_once();
    }

LABEL_28:

    v116 = v140;
    v117 = *&v139[v140];
    OS_dispatch_semaphore.signal()();

    v154 = 0;
    v152 = 0u;
    v153 = 0u;

LABEL_33:
    v90 = v142;
    v64 = v146;
    v120 = v149;
    v121 = v134;
    if (*(&v153 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      if (swift_dynamicCast())
      {
        v122 = v151[0];
        if (*(v151[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v123 = *(v151[0] + 16)) != 0)
        {
          v124 = *&v123[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
          if (v124)
          {
            v155 = v123;
            if ([v124 state] == 2)
            {
              v125 = type metadata accessor for TaskPriority();
              v126 = v136;
              (*(*(v125 - 8) + 56))(v136, 1, 1, v125);
              v127 = v137;
              (*(v90 + 16))(v137, v64, v65);
              v128 = (*(v90 + 80) + 40) & ~*(v90 + 80);
              v129 = swift_allocObject();
              *(v129 + 2) = 0;
              *(v129 + 3) = 0;
              *(v129 + 4) = v122;
              (*(v90 + 32))(&v129[v128], v127, v65);

              sub_1001B6410(0, 0, v126, &unk_10023F748, v129);
              sub_1000A452C(v148, v149);
            }

            else
            {

              sub_1000A452C(v148, v120);
            }
          }

          else
          {
            v130 = v123;

            sub_1000A452C(v148, v120);
          }
        }

        else
        {
          sub_1000A452C(v148, v120);
        }
      }

      else
      {

        sub_1000A452C(v148, v120);
      }
    }

    else
    {

      sub_1000A452C(v148, v120);
      sub_100095C84(&v152, &unk_1002A6F40, &unk_10023BE90);
    }

    return (*(v90 + 8))(v64, v65);
  }
}

void sub_1001C4180()
{
  v0 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v53 - v2;
  v4 = type metadata accessor for UUID();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  v6 = __chkstk_darwin(v4);
  v53[0] = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v53 - v8;
  v10 = type metadata accessor for DockKitIDSMessageType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v53 - v16;
  DockKitIDSMessage.type.getter();
  (*(v11 + 104))(v15, enum case for DockKitIDSMessageType.frame(_:), v10);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v11 + 8);
  v18(v15, v10);
  v18(v17, v10);
  if (v57 != v58)
  {
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v33 = v32;
    v34 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v31 - 8) + 104))(v33, *v34, v31);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v19 = qword_1002ABE78;
  v20 = v56;
  v21 = swift_beginAccess();
  v22 = *(v20 + v19);
  __chkstk_darwin(v21);
  v53[-2] = v9;

  v23 = v53[1];
  sub_1001B6D9C(sub_1001CF37C, v22, v3);

  v24 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v22) = (*(*(v24 - 8) + 48))(v3, 1, v24);
  sub_100095C84(v3, &qword_1002ABEE8, &qword_10023F720);
  v25 = v55;
  v26 = *(v54 + 8);
  v26(v9, v55);
  if (v22 == 1)
  {
    v27 = v53[0];
    DockKitIDSMessage.token.getter();
    v28 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, enum case for DockKitIDSMessagingError.notRegistered(_:), v28);
    sub_1001C6CCC(v27, v29);
    v26(v27, v25);

LABEL_6:
    swift_willThrow();
    return;
  }

  v35 = DockKitIDSMessage.payload.getter();
  if (v36 >> 60 == 15)
  {
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v33 = v37;
    v34 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v35, v36);
  v38 = type metadata accessor for PropertyListDecoder();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v41 = DockKitIDSMessage.payload.getter();
  if (v42 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v43 = v41;
    v44 = v42;
    sub_1001CE850();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_1000A452C(v43, v44);

    if (!v23)
    {
      v45 = v58;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v46 = sub_100187E14();
      if (v48)
      {
        sub_1001CE8A4(v47, v48, v46, v47, v48, v45);
      }

      else
      {
        if (qword_1002A6790 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_100093DE8(v49, qword_1002ABE48);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "No foregrounded app available to set framing mode!", v52, 2u);
        }
      }
    }
  }
}

uint64_t sub_1001C48F0()
{
  v0 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v53 - v2;
  v54 = type metadata accessor for UUID();
  v56 = *(v54 - 8);
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v54);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v9 = type metadata accessor for DockKitIDSMessageType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  DockKitIDSMessage.type.getter();
  (*(v10 + 104))(v14, enum case for DockKitIDSMessageType.offset(_:), v9);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v10 + 8);
  v17(v14, v9);
  v17(v16, v9);
  if (v57 != v58)
  {
    v30 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v32 = v31;
    v33 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_24:
    (*(*(v30 - 8) + 104))(v32, *v33, v30);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v18 = qword_1002ABE78;
  v19 = v55;
  v20 = swift_beginAccess();
  v21 = *(v19 + v18);
  __chkstk_darwin(v20);
  *(&v53 - 2) = v8;

  sub_1001B6D9C(sub_1001CF37C, v21, v3);

  v22 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v21) = (*(*(v22 - 8) + 48))(v3, 1, v22);
  sub_100095C84(v3, &qword_1002ABEE8, &qword_10023F720);
  v23 = v56 + 8;
  v24 = *(v56 + 8);
  v25 = v54;
  v24(v8, v54);
  if (v21 != 1)
  {
    v34 = DockKitIDSMessage.payload.getter();
    if (v35 >> 60 != 15)
    {
      sub_1000A452C(v34, v35);
      v36 = DockKitIDSMessage.payload.getter();
      if (v37 >> 60 == 15)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v38 = v37;
      v39 = v37 >> 62;
      if ((v37 >> 62) <= 1)
      {
        if (!v39)
        {
          v40 = v36;
          goto LABEL_20;
        }

        v47 = v36;
        if (v36 <= v36 >> 32)
        {
          v41 = v36;
          v48 = __DataStorage._bytes.getter();
          if (!v48)
          {
LABEL_33:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_34;
          }

          v49 = v48;
          v50 = __DataStorage._offset.getter();
          if (!__OFSUB__(v47, v50))
          {
            v46 = (v47 - v50 + v49);
            result = __DataStorage._length.getter();
            if (v46)
            {
              goto LABEL_19;
            }

LABEL_34:
            __break(1u);
            return result;
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v39 == 2)
      {
        v41 = v36;
        v42 = *(v36 + 16);
        v43 = __DataStorage._bytes.getter();
        if (!v43)
        {
LABEL_31:
          __DataStorage._length.getter();
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v44 = v43;
        v45 = __DataStorage._offset.getter();
        if (!__OFSUB__(v42, v45))
        {
          v46 = (v42 - v45 + v44);
          __DataStorage._length.getter();
          if (v46)
          {
LABEL_19:
            v40 = *v46;
            v36 = v41;
LABEL_20:
            result = sub_1000A452C(v36, v38);
            if (v40)
            {
              return result;
            }

            goto LABEL_23;
          }

          goto LABEL_32;
        }

        goto LABEL_28;
      }

      sub_1000A452C(v36, v37);
    }

LABEL_23:
    v30 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v32 = v52;
    v33 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_24;
  }

  v26 = v53;
  v56 = v23;
  DockKitIDSMessage.token.getter();
  v27 = type metadata accessor for DockKitIDSMessagingError();
  sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
  v28 = swift_allocError();
  (*(*(v27 - 8) + 104))(v29, enum case for DockKitIDSMessagingError.notRegistered(_:), v27);
  sub_1001C6CCC(v26, v28);
  v24(v26, v25);

  return swift_willThrow();
}

void sub_1001C4FB4()
{
  v0 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v109 = &v109 - v2;
  v112 = type metadata accessor for DockKitCameraCommand();
  v111 = *(v112 - 8);
  v3 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DockKitCameraCommandPayload();
  v113 = *(v115 - 8);
  v5 = *(v113 + 64);
  __chkstk_darwin(v115);
  v114 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v109 - v9;
  v119 = type metadata accessor for UUID();
  v118 = *(v119 - 8);
  v11 = *(v118 + 64);
  v12 = __chkstk_darwin(v119);
  v116 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v109 - v14;
  v16 = type metadata accessor for DockKitIDSMessageType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v109 - v22;
  DockKitIDSMessage.type.getter();
  (*(v17 + 104))(v21, enum case for DockKitIDSMessageType.camera(_:), v16);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v17 + 8);
  v24(v21, v16);
  v24(v23, v16);
  if (aBlock != v126)
  {
    v37 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v39 = v38;
    v40 = &enum case for DockKitIDSMessagingError.unsupportedMessageType(_:);
LABEL_5:
    (*(*(v37 - 8) + 104))(v39, *v40, v37);
    goto LABEL_6;
  }

  DockKitIDSMessage.token.getter();
  v25 = qword_1002ABE78;
  v26 = v127;
  v27 = swift_beginAccess();
  v28 = *(v26 + v25);
  __chkstk_darwin(v27);
  *(&v109 - 2) = v15;

  v29 = v117;
  sub_1001B6D9C(sub_1001CF37C, v28, v10);

  v30 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v28) = (*(*(v30 - 8) + 48))(v10, 1, v30);
  sub_100095C84(v10, &qword_1002ABEE8, &qword_10023F720);
  v31 = *(v118 + 8);
  v32 = v119;
  v31(v15, v119);
  if (v28 == 1)
  {
    v33 = v116;
    DockKitIDSMessage.token.getter();
    v34 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v35 = swift_allocError();
    (*(*(v34 - 8) + 104))(v36, enum case for DockKitIDSMessagingError.notRegistered(_:), v34);
    sub_1001C6CCC(v33, v35);
    v31(v33, v32);

LABEL_6:
    swift_willThrow();
    return;
  }

  v41 = DockKitIDSMessage.payload.getter();
  if (v42 >> 60 == 15)
  {
    v37 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    v39 = v43;
    v40 = &enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:);
    goto LABEL_5;
  }

  sub_1000A452C(v41, v42);
  v44 = type metadata accessor for PropertyListDecoder();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v47 = DockKitIDSMessage.payload.getter();
  if (v48 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_40;
  }

  v49 = v47;
  v50 = v48;
  sub_1001CF2C4(&qword_1002ABF30, &type metadata accessor for DockKitCameraCommandPayload);
  v51 = v114;
  v52 = v115;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000A452C(v49, v50);

  if (!v29)
  {
    v53 = v110;
    DockKitCameraCommandPayload.command.getter();
    v54 = v111;
    v55 = v112;
    v56 = (*(v111 + 88))(v53, v112);
    if (v56 != enum case for DockKitCameraCommand.photo(_:))
    {
      if (v56 == enum case for DockKitCameraCommand.flip(_:))
      {
        if (qword_1002A6790 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100093DE8(v60, qword_1002ABE48);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "Doing camera flip!", v63, 2u);
        }

        v64 = type metadata accessor for AccessorySystemEvent();
        static AccessorySystemEvent.kHeaderCameraFlip.getter();
        v65 = objc_allocWithZone(v64);
        LOBYTE(aBlock) = 0;
        v66 = AccessorySystemEvent.init(name:payload:)();
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v67 = qword_1002B1CF0;
        v68 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v69 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v69 + 4);

        v70 = *(v67 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v71 = *(v67 + v68);
        v72 = v70;

        os_unfair_lock_unlock(v71 + 4);

        if (!v70)
        {
          (*(v113 + 8))(v51, v52);

          return;
        }

        v73 = dispatch thunk of DockCoreAccessory.info.getter();

        v74 = *(v67 + v68);

        os_unfair_lock_lock(v74 + 4);

        v75 = sub_1001F3BB8(_swiftEmptyArrayStorage);
        v76 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_previousCameraSessions;
        swift_beginAccess();
        v77 = *(v67 + v76);
        *(v67 + v76) = v75;

        v78 = *(v67 + v68);

        os_unfair_lock_unlock(v78 + 4);

        v79 = *(*(v67 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
        sub_1001688C0(v73, v66);
      }

      else
      {
        if (v56 == enum case for DockKitCameraCommand.zoom(_:))
        {
          v89 = DockKitCameraCommandPayload.payload.getter();
          if (v90 >> 60 == 15)
          {
            v91 = type metadata accessor for DockKitIDSMessagingError();
            sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
            swift_allocError();
            (*(*(v91 - 8) + 104))(v92, enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:), v91);
            swift_willThrow();
            goto LABEL_27;
          }

          sub_1000A452C(v89, v90);
          v101 = *(v44 + 48);
          v102 = *(v44 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          v103 = DockKitCameraCommandPayload.payload.getter();
          if (v104 >> 60 != 15)
          {
            v105 = v103;
            v106 = v104;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            (*(v113 + 8))(v51, v52);
            sub_1000A452C(v105, v106);

            return;
          }

LABEL_41:
          __break(1u);
          return;
        }

        if (v56 != enum case for DockKitCameraCommand.open(_:))
        {
          v107 = type metadata accessor for DockKitIDSMessagingError();
          sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
          swift_allocError();
          (*(*(v107 - 8) + 104))(v108, enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:), v107);
          swift_willThrow();
          (*(v113 + 8))(v51, v52);
          (*(v54 + 8))(v53, v55);
          return;
        }

        v93 = SBSCreateOpenApplicationService();
        sub_100095274(&qword_1002A81A0, &qword_10023D038);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10023C170;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v121 = v95;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        sub_1001F2ABC(inited);
        swift_setDeallocating();
        sub_100095C84(inited + 32, &qword_1002ACA30, qword_10023D040);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v97 = [objc_opt_self() optionsWithDictionary:isa];

        if (!v93)
        {
          (*(v113 + 8))(v51, v52);

          return;
        }

        v98 = v93;
        v99 = String._bridgeToObjectiveC()();
        v124 = sub_1001C92B4;
        v125 = 0;
        aBlock = _NSConcreteStackBlock;
        v121 = 1107296256;
        v122 = sub_1000A5218;
        v123 = &unk_10027AAE8;
        v100 = _Block_copy(&aBlock);
        [v98 openApplication:v99 withOptions:v97 completion:v100];
        _Block_release(v100);
      }

LABEL_27:
      (*(v113 + 8))(v51, v52);
      return;
    }

    v57 = DockKitCameraCommandPayload.payload.getter();
    if (v58 >> 60 == 15)
    {
      v59 = 0;
LABEL_26:
      v86 = type metadata accessor for TaskPriority();
      v87 = v109;
      (*(*(v86 - 8) + 56))(v109, 1, 1, v86);
      v88 = swift_allocObject();
      v88[2] = 0;
      v88[3] = 0;
      v88[4] = v59;
      sub_1001B6A08(0, 0, v87, &unk_10023F768, v88);

      goto LABEL_27;
    }

    sub_1000A452C(v57, v58);
    v80 = *(v44 + 48);
    v81 = *(v44 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v82 = DockKitCameraCommandPayload.payload.getter();
    if (v83 >> 60 != 15)
    {
      v84 = v82;
      v85 = v83;
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      sub_1000A452C(v84, v85);

      v59 = aBlock;
      goto LABEL_26;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }
}

uint64_t sub_1001C607C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[2] = a3;
  v38[1] = a2;
  v3 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v38 - v5;
  v7 = type metadata accessor for UUID();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  v9 = __chkstk_darwin(v7);
  v38[0] = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v38 - v11;
  v13 = type metadata accessor for DockKitIDSMessageType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v38 - v19;
  DockKitIDSMessage.type.getter();
  (*(v14 + 104))(v18, enum case for DockKitIDSMessageType.keepAliveResp(_:), v13);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v14 + 8);
  v21(v18, v13);
  v21(v20, v13);
  if (v42 != v43)
  {
    v34 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for DockKitIDSMessagingError.unsupportedMessageType(_:), v34);
    return swift_willThrow();
  }

  DockKitIDSMessage.token.getter();
  v22 = qword_1002ABE78;
  v23 = v41;
  v24 = swift_beginAccess();
  v25 = *(v23 + v22);
  __chkstk_darwin(v24);
  v38[-2] = v12;

  sub_1001B6D9C(sub_1001CF37C, v25, v6);

  v26 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v25) = (*(*(v26 - 8) + 48))(v6, 1, v26);
  sub_100095C84(v6, &qword_1002ABEE8, &qword_10023F720);
  v27 = *(v39 + 8);
  v28 = v12;
  v29 = v40;
  v27(v28, v40);
  if (v25 == 1)
  {
    v30 = v38[0];
    DockKitIDSMessage.token.getter();
    v31 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, enum case for DockKitIDSMessagingError.notRegistered(_:), v31);
    sub_1001C6CCC(v30, v32);
    v27(v30, v29);

    return swift_willThrow();
  }

  v37 = *(v23 + qword_1002ABE90);

  dispatch thunk of DKIDSKeepAlive.monitor(from:)();
}

void sub_1001C65DC(uint64_t a1)
{
  v2 = type metadata accessor for DockKitIDSMessage();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&qword_1002ABEE8, &qword_10023F720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v47 - v7;
  v57 = type metadata accessor for UUID();
  v55 = *(v57 - 8);
  v9 = *(v55 + 64);
  v10 = __chkstk_darwin(v57);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for DockKitIDSMessageType();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  v56 = a1;
  DockKitIDSMessage.type.getter();
  v22 = v15[13];
  v48 = enum case for DockKitIDSMessageType.objects(_:);
  v47 = v22;
  v22(v19);
  sub_1001CF2C4(&qword_1002ABEF0, &type metadata accessor for DockKitIDSMessageType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v23 = v15[1];
  v23(v19, v14);
  v23(v21, v14);
  if (v58 != v59)
  {
    v35 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, enum case for DockKitIDSMessagingError.unsupportedMessageType(_:), v35);
    goto LABEL_5;
  }

  DockKitIDSMessage.token.getter();
  v24 = qword_1002ABE78;
  v25 = v54;
  v26 = swift_beginAccess();
  v27 = *(v25 + v24);
  __chkstk_darwin(v26);
  *(&v47 - 2) = v13;

  v28 = v53;
  sub_1001B6D9C(sub_1001CF37C, v27, v8);
  v53 = v28;

  v29 = sub_100095274(&qword_1002ABEF8, &qword_10023F728);
  LODWORD(v27) = (*(*(v29 - 8) + 48))(v8, 1, v29);
  sub_100095C84(v8, &qword_1002ABEE8, &qword_10023F720);
  v30 = *(v55 + 8);
  v30(v13, v57);
  if (v27 == 1)
  {
    v31 = v52;
    DockKitIDSMessage.token.getter();
    v32 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, enum case for DockKitIDSMessagingError.notRegistered(_:), v32);
    sub_1001C6CCC(v31, v33);
    v30(v31, v57);

LABEL_5:
    swift_willThrow();
    return;
  }

  v37 = type metadata accessor for PropertyListEncoder();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v59 = _swiftEmptyArrayStorage;
  sub_100095274(&qword_1002ABF40, &qword_10023F778);
  sub_1001CEFF0();
  v40 = v53;
  v41 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v43 = v42;

  if (!v40)
  {
    v44 = *(v25 + qword_1002ABE68);
    if (v44)
    {
      v47(v21, v48, v14);
      type metadata accessor for DockKitIDSClient();
      v45 = v44;
      static DockKitIDSClient.DockKitBroadcastToken.getter();
      sub_1000A0CD8(v41, v43);
      v46 = v49;
      DockKitIDSMessage.init(type:token:payload:)();
      DKIDSMessagingCenter.send(_:)();
      (*(v50 + 8))(v46, v51);
      sub_1000A0D2C(v41, v43);
    }

    else
    {
      sub_1000A0D2C(v41, v43);
    }
  }
}

uint64_t sub_1001C6CCC(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v37 = *(v40 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v40);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DockKitIDSMessageType();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DockKitIDSMessage();
  v36 = *(v38 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v38);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DockKitIDSMessagingError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  v41 = a2;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  if (swift_dynamicCast())
  {
    v31 = a1;
    v32 = v2;
    v21 = *(v14 + 8);
    v21(v20, v13);
    v22 = type metadata accessor for PropertyListEncoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v41 = a2;
    swift_errorRetain();
    swift_dynamicCast();
    sub_1001CF2C4(&qword_1002ABF70, &type metadata accessor for DockKitIDSMessagingError);
    v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v27 = v26;

    v21(v18, v13);
    a1 = v31;
    v2 = v32;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v28 = *(v2 + qword_1002ABE68);
  if (v28)
  {
    (*(v33 + 104))(v35, enum case for DockKitIDSMessageType.ack(_:), v34);
    (*(v37 + 16))(v39, a1, v40);
    v29 = v28;
    sub_1000B4F20(v25, v27);
    DockKitIDSMessage.init(type:token:payload:)();
    DKIDSMessagingCenter.send(_:)();
    (*(v36 + 8))(v12, v38);
    sub_1000A452C(v25, v27);
  }

  else
  {
    sub_1000A452C(v25, v27);
  }

  swift_errorRetain();
  return a2;
}

uint64_t sub_1001C716C(unint64_t a1)
{
  v78 = a1;
  v99 = type metadata accessor for UUID();
  v2 = *(v99 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v99);
  v77 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DockKitIDSMessageType();
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v76);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DockKitIDSMessage();
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v75);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100095274(&qword_1002ABF60, &qword_10023F780);
  v12 = *(*(v94 - 8) + 64);
  v13 = __chkstk_darwin(v94);
  v70 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v88 = &v68 - v16;
  v17 = __chkstk_darwin(v15);
  v98 = &v68 - v18;
  __chkstk_darwin(v17);
  v87 = &v68 - v19;
  v20 = qword_1002ABE70;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v84 = qword_1002ABE68;
  v85 = v1;
  v26 = (v23 + 63) >> 6;
  v95 = v2 + 16;
  v86 = v2 + 32;
  v90 = v2;
  v69 = (v2 + 8);
  v72 = enum case for DockKitIDSMessageType.info(_:);
  v71 = (v5 + 104);
  v73 = (v8 + 8);
  v92 = v21;

  v28 = 0;
  *&v29 = 138412290;
  v68 = v29;
  v82 = v26;
  v83 = v22;
  v89 = v11;
  while (v25)
  {
LABEL_11:
    v31 = __clz(__rbit64(v25)) | (v28 << 6);
    v32 = v92;
    v33 = v90;
    v34 = *(v92 + 48) + *(v90 + 72) * v31;
    v35 = v87;
    v93 = *(v90 + 16);
    v93(v87, v34, v99);
    v36 = *(v32 + 56);
    v37 = type metadata accessor for DockKitIDSInfo();
    v38 = *(v37 - 8);
    v39 = v36 + *(v38 + 72) * v31;
    v40 = v94;
    v41 = *(v94 + 48);
    (*(v38 + 16))(&v35[v41], v39, v37);
    v42 = *(v40 + 48);
    v43 = v98;
    (*(v33 + 32))(v98, v35, v99);
    v91 = v38;
    v44 = *(v38 + 32);
    v96 = v42;
    v97 = v37;
    v44(v43 + v42, &v35[v41], v37);
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100093DE8(v45, qword_1002ABE48);
    v46 = v88;
    sub_1000B5150(v43, v88, &qword_1002ABF60, &qword_10023F780);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v80 = v49;
      v81 = swift_slowAlloc();
      *v49 = v68;
      v50 = v70;
      sub_1000B5150(v46, v70, &qword_1002ABF60, &qword_10023F780);
      v51 = *(v94 + 48);
      v79 = v47;
      v52 = DockKitIDSInfo.info.getter();
      sub_100095C84(v46, &qword_1002ABF60, &qword_10023F780);
      (*(v91 + 8))(v50 + v51, v97);
      (*v69)(v50, v99);
      v53 = v80;
      *(v80 + 1) = v52;
      v54 = v81;
      *v81 = v52;
      v55 = v79;
      _os_log_impl(&_mh_execute_header, v79, v48, "Sending INFO for accessory %@", v53, 0xCu);
      sub_100095C84(v54, &unk_1002A6F60, &unk_10023C4E0);

      v43 = v98;
    }

    else
    {

      sub_100095C84(v46, &qword_1002ABF60, &qword_10023F780);
    }

    v56 = v89;
    v57 = type metadata accessor for PropertyListEncoder();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1001CF2C4(&qword_1002ABF68, &type metadata accessor for DockKitIDSInfo);
    v60 = v100;
    v61 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v100 = v60;
    if (v60)
    {
      sub_100095C84(v43, &qword_1002ABF60, &qword_10023F780);
    }

    v63 = v61;
    v64 = v62;

    v65 = *(v85 + v84);
    if (v65)
    {
      (*v71)(v74, v72, v76);
      v93(v77, v78, v99);
      v66 = v65;
      sub_1000A0CD8(v63, v64);
      DockKitIDSMessage.init(type:token:payload:)();
      v67 = v100;
      DKIDSMessagingCenter.send(_:)();
      v100 = v67;
      if (v67)
      {

        sub_1000A0D2C(v63, v64);
        (*v73)(v56, v75);
        return sub_100095C84(v98, &qword_1002ABF60, &qword_10023F780);
      }

      sub_1000A0D2C(v63, v64);
      (*v73)(v56, v75);
      v43 = v98;
    }

    else
    {
      sub_1000A0D2C(v63, v64);
    }

    v25 &= v25 - 1;
    result = sub_100095C84(v43, &qword_1002ABF60, &qword_10023F780);
    v26 = v82;
    v22 = v83;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
    }

    v25 = *(v22 + 8 * v30);
    ++v28;
    if (v25)
    {
      v28 = v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1001C7A50()
{
  if (!qword_1002AA7A8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AA7A8);
    }
  }
}

uint64_t sub_1001C7AB8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DockKitIDSMessage.token.getter();
  v5 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_1001C7BA4(char a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Errors();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(a2, 1, v11) == 1)
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1002A6790 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100093DE8(v14, qword_1002ABE48);
      v26 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v26, v15, "Unable to set actuator velocities!", v16, 2u);
      }

      v17 = v26;
    }
  }

  else
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100093DE8(v18, qword_1002ABE48);
    sub_1000B5150(a2, v10, &unk_1002A6F30, &unk_10023C4D0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v21 = 136315138;
      sub_1000B5150(v10, v8, &unk_1002A6F30, &unk_10023C4D0);
      if (v13(v8, 1, v11) == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1001CF2C4(&qword_1002A6F50, &type metadata accessor for Errors);
        v22 = Error.localizedDescription.getter();
        v24 = v23;
        sub_100095C84(v10, &unk_1002A6F30, &unk_10023C4D0);
        (*(v12 + 8))(v8, v11);
        v25 = sub_1000952D4(v22, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Unable to set actuator velocities: %s", v21, 0xCu);
        sub_100095808(v26);
      }
    }

    else
    {

      sub_100095C84(v10, &unk_1002A6F30, &unk_10023C4D0);
    }
  }
}

uint64_t sub_1001C7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1001C803C;

  return sub_1000F77BC();
}

uint64_t sub_1001C803C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return (_swift_task_switch)(sub_1001C8138, 0, 0);
}

uint64_t sub_1001C8138()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v0[4] = v1;
  if (v1)
  {

    v2 = sub_1001F3CC8(_swiftEmptyArrayStorage);
    sub_100095B94(0, &qword_1002A7AB0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(5242880).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001ED690(isa, 0x6953676F4C78616DLL, 0xEA0000000000657ALL, isUniquelyReferenced_nonNull_native);
    v5 = NSNumber.init(integerLiteral:)(2).super.super.isa;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001ED690(v5, 0x746F687370616E73, 0xEC00000065707954, v6);
    type metadata accessor for AccessoryDiagnosticsOptions();
    swift_allocObject();
    v7 = sub_100106520(v2);
    v0[5] = v7;
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_1001C83C4;

    return sub_1000C7C54(v7);
  }

  else
  {
    v10 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for DockKitIDSMessagingError.invalidOrMissingParameters(_:), v10);
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1001C83C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v8 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v6 = sub_1001C86B0;
  }

  else
  {
    v6 = sub_1001C84DC;
  }

  return (_swift_task_switch)(v6, 0, 0);
}

uint64_t sub_1001C84DC()
{
  v18 = v0;
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002ABE48);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_1000952D4(v7, v6, &v17);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Diagnostic logs saved to %s", v10, 0xCu);
    sub_100095808(v11);
  }

  else
  {
    v14 = v0[4];
    v13 = v0[5];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001C86B0()
{
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002ABE48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v8 = v0[4];
  v7 = v0[5];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Diagnostics transfer failed: %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

void sub_1001C8884(char a1, void *a2)
{
  if (!a2)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100093DE8(v14, qword_1002ABE48);
    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v19, v15, "Region of Interest request completed successfully: %{BOOL}d", v16, 8u);
    }

    goto LABEL_10;
  }

  v2 = qword_1002A6790;
  v3 = a2;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002ABE48);
  v19 = v3;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v8 = [v19 localizedDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000952D4(v9, v11, &v20);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Region of Interest request failed: %s", v6, 0xCu);
    sub_100095808(v7);

LABEL_10:
    v17 = v19;
    goto LABEL_12;
  }

  v17 = oslog;
LABEL_12:
}

uint64_t (*sub_1001C8AF8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v5 = qword_1002B1CF0;
  result = sub_100194938(a2, a3);
  if (result)
  {
    sub_1000BAA84(result);
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100093DE8(v7, qword_1002ABE48);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Region of Interest not completed after 1 sec, expiring", v10, 2u);
    }

    v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v12 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v12 + 4);

    swift_beginAccess();
    v13 = sub_1001E4D18(a2, a3);
    swift_endAccess();
    sub_1000BAA84(v13);
    v14 = *(v5 + v11);

    os_unfair_lock_unlock(v14 + 4);
  }

  return result;
}

void sub_1001C8CC4(id *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v31 = a3;
  v11 = type metadata accessor for TrajectoryCommand();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v30 - v17;
  v32 = *a1;
  if (qword_1002A6790 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100093DE8(v19, qword_1002ABE48);
  v20 = *(v12 + 16);
  v20(v18, a5, v11);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v30[1] = a7;
    v24 = v23;
    v30[0] = swift_slowAlloc();
    v34 = v30[0];
    *v24 = 136315394;
    *(v24 + 4) = sub_1000952D4(v31, a4, &v34);
    *(v24 + 12) = 2080;
    v20(v16, v18, v11);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v12 + 8))(v18, v11);
    v28 = sub_1000952D4(v25, v27, &v34);

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Notifying client that %s just sent a trajectory: %s ", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v18, v11);
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v32 sendCommandEventWithCommand:isa];
}

uint64_t sub_1001C8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return (_swift_task_switch)(sub_1001C8FDC, 0, 0);
}

uint64_t sub_1001C8FDC()
{
  v1 = v0[3];
  v2 = TrajectoryCommand.encode()();
  v0[4] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v3;
    v7 = v0[2];
    v0[5] = v2;
    v8 = v2;
    v9 = swift_task_alloc();
    v0[6] = v9;
    v9[2] = v7;
    v9[3] = v8;
    v9[4] = v6;
    v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1001C913C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000012, 0x8000000100231FD0, sub_100137B90, v9, &type metadata for Bool);
  }
}

uint64_t sub_1001C913C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return (_swift_task_switch)(sub_1001C9254, 0, 0);
}

uint64_t sub_1001C9254()
{
  sub_1000A452C(v0[5], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_1001C92B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002ABE48);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000952D4(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to launch camera app: %s", v4, 0xCu);
      sub_100095808(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1001C9450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001C9510, 0, 0);
}

uint64_t sub_1001C9510()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1001C9604;
  v7 = v0[5];

  return sub_1001C9A00(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_1001C9604()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;
  v6[7] = v0;

  (*(v4 + 8))(v3, v5);
  if (!v0)
  {
    v7 = v6[5];

    v8 = v6[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001C97AC, 0, 0);
}

uint64_t sub_1001C97AC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1001C9810(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001C9908;

  return v7(a1);
}

uint64_t sub_1001C9908()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001C9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(sub_1001C9B00, 0, 0);
}

uint64_t sub_1001C9B00()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1001CF2C4(&qword_1002AB488, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001CF2C4(&qword_1002ABF38, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1001C9C90;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1001C9C90()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (!v0)
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001C9E4C, 0, 0);
}

uint64_t sub_1001C9E4C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_1001C9ED8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_1001C9F98(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1001F7A2C(v2, 0);

    v1 = sub_1001F1528(&v5, (v3 + 32), v2, v1);
    sub_1000C7084();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1001CA048(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for TrackedSubjectInternal();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100095274(&qword_1002A7390, &qword_10023BEF0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t *sub_1001CA12C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1001CCD14(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_1001CA1C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1001CD324(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1001CA268(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for BTDiscoveredDevice();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  sub_100095274(&unk_1002AC9E0, &qword_10023F7B8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_1000E40C4(v23 + v45 * v22, v42);
    sub_1000E45C8(v27, v18);
    v28 = *(v14 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_1000E45C8(v18, *(v14 + 56) + v32 * v45);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001CA578(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100095274(&qword_1002ACA90, &qword_10023F798);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001CA7BC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v51 = type metadata accessor for UUID();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v51);
  v50 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = v39 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100095274(&qword_1002ABF00, &qword_100240010);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v42;
  }

  v15 = 0;
  v39[1] = v7 + 16;
  v40 = result;
  v49 = v7 + 32;
  v16 = result + 64;
  v39[0] = a4;
  v41 = v7;
  v17 = v51;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v44 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v48 = *(v7 + 72);
    v23 = v43;
    (*(v7 + 16))(v43, v22 + v48 * v21, v17);
    v24 = (a4[7] + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    v45 = *(v7 + 32);
    v46 = v25;
    v45(v50, v23, v17);
    v13 = v40;
    v27 = *(v40 + 40);
    sub_1001CF2C4(&qword_1002A9810, &type metadata accessor for UUID);
    v47 = v26;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v13 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v7 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v7 = v41;
LABEL_26:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v13 + 48) + v31 * v48, v50, v51);
    v36 = (*(v13 + 56) + 16 * v31);
    v37 = v47;
    *v36 = v46;
    v36[1] = v37;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v14 = v44;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v42[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001CAB64(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_1001CAC10(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1001CAC10(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = &_swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1001CAD34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v14 = v6;
    while (1)
    {
      v10 = *v6;

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v16 < 1 || v15 > 0 && v16 >= v15)
      {
LABEL_4:
        ++v4;
        v6 = v14 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v11 = *v6;
      *v6 = v6[1];
      v6[1] = v11;
      --v6;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CAE5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v19 = v7;
    v20 = v6;
    while (1)
    {
      v9 = *v6;

      v10 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v12 = (v11 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v10;
      v13 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v15 = v14;

      if (v15)
      {
        if ((v12 - 1) >= 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_4;
        }
      }

      else if (v12 <= 0 || v13 >= 1 && v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v20 + 1;
        v7 = v19 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v6;
      *v6 = v6[1];
      v6[1] = v16;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001CAF84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_102:
    v10 = *v97;
    if (!*v97)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_135:
      result = sub_1001D99BC(v9);
      v9 = result;
    }

    v104 = v9;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (1)
      {
        v88 = *v4;
        if (!*v4)
        {
          goto LABEL_139;
        }

        v4 = *&v9[16 * v87];
        v89 = *&v9[16 * v87 + 24];
        sub_1001CBDE4((v88 + 8 * v4), (v88 + 8 * *&v9[16 * v87 + 16]), (v88 + 8 * v89), v10);
        if (v6)
        {
        }

        if (v89 < v4)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001D99BC(v9);
        }

        if (v87 - 2 >= *(v9 + 2))
        {
          goto LABEL_129;
        }

        v90 = &v9[16 * v87];
        *v90 = v4;
        v90[1] = v89;
        v104 = v9;
        result = sub_1001D9930(v87 - 1);
        v9 = v104;
        v87 = *(v104 + 2);
        v4 = a3;
        if (v87 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      v23 = a3;
    }

    else
    {
      v12 = *a3;
      v103 = *(*a3 + 8 * v11);
      v4 = *(v12 + 8 * v8);
      v102 = v4;

      v13 = sub_1001BB308(&v103, &v102);
      if (v6)
      {
      }

      v14 = v13;

      v15 = v10;
      v16 = v10 + 2;
      v95 = v15;
      if (v16 < v7)
      {
        v92 = v9;
        v17 = (v12 + 8 * v15 + 16);
        while (1)
        {
          v19 = *(v17 - 1);
          v18 = *v17;

          dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
          dispatch thunk of DKProbabilityValue.variable.getter();

          v20 = v103;
          v4 = dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
          dispatch thunk of DKProbabilityValue.variable.getter();

          if (v20 <= 0)
          {
            if (v14)
            {
              v9 = v92;
              v23 = a3;
              goto LABEL_23;
            }
          }

          else
          {
            v22 = v102 < 1 || v20 < v102;
            if (v14 != v22)
            {
              goto LABEL_21;
            }
          }

          ++v17;
          if (v7 == ++v16)
          {
            v16 = v7;
LABEL_21:
            v9 = v92;
            break;
          }
        }
      }

      v23 = a3;
      if (v14)
      {
LABEL_23:
        v11 = v16;
        v10 = v95;
        if (v11 < v95)
        {
          goto LABEL_132;
        }

        if (v95 < v11)
        {
          v24 = 8 * v11 - 8;
          v25 = 8 * v95;
          v26 = v11;
          v27 = v95;
          do
          {
            if (v27 != --v26)
            {
              v28 = *v23;
              if (!*v23)
              {
                goto LABEL_138;
              }

              v29 = *(v28 + v25);
              *(v28 + v25) = *(v28 + v24);
              *(v28 + v24) = v29;
            }

            ++v27;
            v24 -= 8;
            v25 += 8;
          }

          while (v27 < v26);
        }
      }

      else
      {
        v11 = v16;
        v10 = v95;
      }
    }

    v30 = v23[1];
    if (v11 < v30)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_131;
      }

      if (v11 - v10 < a4)
      {
        v31 = &v10[a4];
        if (__OFADD__(v10, a4))
        {
          goto LABEL_133;
        }

        if (v31 >= v30)
        {
          v31 = v23[1];
        }

        if (v31 < v10)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (v11 != v31)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v11 < v10)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100102974(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_100102974((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v4;
    v44 = &v9[16 * v43];
    *(v44 + 4) = v10;
    *(v44 + 5) = v11;
    v101 = v11;
    v45 = *v97;
    if (!*v97)
    {
      goto LABEL_140;
    }

    if (v43)
    {
      while (1)
      {
        v46 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_70:
          if (v50)
          {
            goto LABEL_119;
          }

          v63 = &v9[16 * v4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_122;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_126;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v4 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v73 = &v9[16 * v4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_84:
        if (v68)
        {
          goto LABEL_121;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_124;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_91:
        v84 = v46 - 1;
        if (v46 - 1 >= v4)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v23)
        {
          goto LABEL_137;
        }

        v4 = *&v9[16 * v84 + 32];
        v85 = *&v9[16 * v46 + 40];
        sub_1001CBDE4((*v23 + 8 * v4), (*v23 + 8 * *&v9[16 * v46 + 32]), (*v23 + 8 * v85), v45);
        if (v6)
        {
        }

        if (v85 < v4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1001D99BC(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_116;
        }

        v86 = &v9[16 * v84];
        *(v86 + 4) = v4;
        *(v86 + 5) = v85;
        v104 = v9;
        result = sub_1001D9930(v46);
        v9 = v104;
        v4 = *(v104 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_117;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_118;
      }

      v58 = &v9[16 * v4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_120;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_123;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_127;
        }

        if (v49 < v83)
        {
          v46 = v4 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v7 = v23[1];
    v8 = v101;
    if (v101 >= v7)
    {
      goto LABEL_102;
    }
  }

  v91 = v6;
  v93 = v9;
  v32 = *v23;
  v33 = *v23 + 8 * v11 - 8;
  v96 = v10;
  v34 = &v10[-v11];
  v99 = v31;
LABEL_41:
  v100 = v11;
  v35 = *(v32 + 8 * v11);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;

    dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
    dispatch thunk of DKProbabilityValue.variable.getter();

    v39 = v103;
    v4 = dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
    dispatch thunk of DKProbabilityValue.variable.getter();

    if (v39 < 1 || v102 > 0 && v39 >= v102)
    {
LABEL_40:
      v11 = v100 + 1;
      v33 += 8;
      --v34;
      if ((v100 + 1) != v99)
      {
        goto LABEL_41;
      }

      v11 = v99;
      v6 = v91;
      v9 = v93;
      v23 = a3;
      v10 = v96;
      goto LABEL_50;
    }

    if (!v32)
    {
      break;
    }

    v40 = *v37;
    *v37 = v37[1];
    v37[1] = v40;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1001CB690(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v111 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_122:
    v20 = *v111;
    if (!*v111)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_124:
      v101 = *(v8 + 2);
      if (v101 >= 2)
      {
        v102 = a3;
        while (1)
        {
          v103 = *v102;
          if (!v103)
          {
            goto LABEL_159;
          }

          v104 = *&v8[16 * v101];
          v105 = *&v8[16 * v101 + 24];
          sub_1001CC124((v103 + 8 * v104), (v103 + 8 * *&v8[16 * v101 + 16]), (v103 + 8 * v105), v20);
          if (v5)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_148;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1001D99BC(v8);
          }

          if (v101 - 2 >= *(v8 + 2))
          {
            goto LABEL_149;
          }

          v106 = &v8[16 * v101];
          *v106 = v104;
          *(v106 + 1) = v105;
          result = sub_1001D9930(v101 - 1);
          v101 = *(v8 + 2);
          v102 = a3;
          if (v101 <= 1)
          {
          }
        }
      }
    }

LABEL_155:
    result = sub_1001D99BC(v8);
    v8 = result;
    goto LABEL_124;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v114 = v8;
    if (v7 + 1 >= v6)
    {
      v20 = a3;
      goto LABEL_43;
    }

    v11 = *a3;
    v12 = *(*a3 + 8 * v10);
    v109 = v7;
    v13 = *(*a3 + 8 * v7);

    v14 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v16 = (v15 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v14;
    v17 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v19 = v18;

    if (v19)
    {
      if (v16 <= 0)
      {
        goto LABEL_16;
      }

      v17 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = v114;
    }

    else
    {
      if (v16 <= 0)
      {
LABEL_16:
        v116 = 0;
        v8 = v114;
        goto LABEL_17;
      }

      v8 = v114;
      if (v17 < 1)
      {
        v21 = 1;
        goto LABEL_15;
      }
    }

    v21 = v16 < v17;
LABEL_15:
    v116 = v21;
LABEL_17:
    v9 = v109;
    v10 = v109 + 2;
    if (v109 + 2 < v6)
    {
      v22 = (v11 + 8 * v109 + 16);
      while (1)
      {
        v23 = v10;
        v25 = *(v22 - 1);
        v24 = *v22;

        v26 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
        v28 = (v27 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v26;
        v29 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
        v31 = v30;

        if (v31)
        {
          break;
        }

        v8 = v114;
        if (v28 <= 0)
        {
          goto LABEL_19;
        }

        v10 = v23;
        if (v29 > 0)
        {
          goto LABEL_29;
        }

        if (!v116)
        {
          v20 = a3;
          v9 = v109;
          goto LABEL_43;
        }

LABEL_20:
        ++v10;
        ++v22;
        if (v6 == v10)
        {
          v10 = v6;
LABEL_34:
          v9 = v109;
          goto LABEL_35;
        }
      }

      v8 = v114;
      if (v28 > 0)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        v10 = v23;
LABEL_29:
        if (((v116 ^ (v28 >= v29)) & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_20;
      }

LABEL_19:
      v10 = v23;
      if (v116)
      {
        v20 = a3;
        v9 = v109;
        if (v23 < v109)
        {
          goto LABEL_152;
        }

        goto LABEL_37;
      }

      goto LABEL_20;
    }

LABEL_35:
    v20 = a3;
    if (v116)
    {
      if (v10 < v9)
      {
        goto LABEL_152;
      }

LABEL_37:
      if (v9 < v10)
      {
        v32 = 8 * v10 - 8;
        v33 = 8 * v9;
        v34 = v10;
        v35 = v9;
        do
        {
          if (v35 != --v34)
          {
            v36 = *v20;
            if (!*v20)
            {
              goto LABEL_158;
            }

            v37 = *(v36 + v33);
            *(v36 + v33) = *(v36 + v32);
            *(v36 + v32) = v37;
          }

          ++v35;
          v32 -= 8;
          v33 += 8;
        }

        while (v35 < v34);
      }
    }

LABEL_43:
    v38 = *(v20 + 1);
    if (v10 < v38)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_151;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_68:
    if (v10 < v9)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100102974(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v55 = *(v8 + 2);
    v54 = *(v8 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_100102974((v54 > 1), v55 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v55];
    *(v57 + 4) = v9;
    *(v57 + 5) = v10;
    v118 = v10;
    v58 = *v111;
    if (!*v111)
    {
      goto LABEL_160;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v8 + 4);
          v61 = *(v8 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_88:
          if (v63)
          {
            goto LABEL_139;
          }

          v76 = &v8[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_142;
          }

          v82 = &v8[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_146;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v86 = &v8[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_102:
        if (v81)
        {
          goto LABEL_141;
        }

        v89 = &v8[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_144;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_109:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v20)
        {
          goto LABEL_157;
        }

        v98 = *&v8[16 * v97 + 32];
        v99 = *&v8[16 * v59 + 40];
        sub_1001CC124((*v20 + 8 * v98), (*v20 + 8 * *&v8[16 * v59 + 32]), (*v20 + 8 * v99), v58);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001D99BC(v8);
        }

        if (v97 >= *(v8 + 2))
        {
          goto LABEL_136;
        }

        v100 = &v8[16 * v97];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        result = sub_1001D9930(v59);
        v56 = *(v8 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v8[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_137;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_138;
      }

      v71 = &v8[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_140;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_143;
      }

      if (v75 >= v67)
      {
        v93 = &v8[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_147;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v6 = *(v20 + 1);
    v7 = v118;
    if (v118 >= v6)
    {
      goto LABEL_122;
    }
  }

  v39 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_153;
  }

  if (v39 >= v38)
  {
    v39 = *(v20 + 1);
  }

  if (v39 < v9)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v10 == v39)
  {
    goto LABEL_68;
  }

  v107 = v5;
  v40 = *v20;
  v41 = (v40 + 8 * v10 - 8);
  v110 = v9;
  v42 = v9 - v10;
  v113 = v39;
LABEL_53:
  v115 = v41;
  v117 = v10;
  v43 = *(v40 + 8 * v10);
  v44 = v42;
  while (1)
  {
    v45 = *v41;

    v46 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    if (v47)
    {
      v48 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v46;
    }

    v49 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      if (v48 > 0 && (v49 < 1 || v48 < v49))
      {
        goto LABEL_63;
      }

LABEL_52:
      v10 = v117 + 1;
      v41 = v115 + 1;
      --v42;
      if (v117 + 1 == v113)
      {
        v10 = v113;
        v5 = v107;
        v20 = a3;
        v8 = v114;
        v9 = v110;
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    if ((v48 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_52;
    }

LABEL_63:
    if (!v40)
    {
      break;
    }

    v52 = *v41;
    *v41 = v41[1];
    v41[1] = v52;
    --v41;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_1001CBDE4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = v6;
      v16 = *v6;
      v17 = *v4;

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v32 < 1)
      {
        break;
      }

      if (v31 <= 0)
      {
        v6 = v15;
      }

      else
      {
        v6 = v15;
        if (v32 >= v31)
        {
          goto LABEL_20;
        }
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 8;
      if (v19)
      {
        goto LABEL_13;
      }

LABEL_12:
      *v7 = *v18;
LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v6 = v15;
LABEL_20:
    v18 = v4;
    v19 = v7 == v4;
    v4 += 8;
    if (v19)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_32:
    v29 = v6;
    v20 = v6 - 8;
    v21 = v5;
    v22 = v14;
    do
    {
      v30 = v14;
      v23 = v4;
      v24 = *(v22 - 1);
      v22 -= 8;
      v25 = v20;
      v26 = *v20;

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      dispatch thunk of DKPersonTrackerState.rankConfidence.getter();
      dispatch thunk of DKProbabilityValue.variable.getter();

      if (v32 <= 0)
      {
        v5 = v21 - 8;
      }

      else
      {
        v5 = v21 - 8;
        if (v31 < 1 || v32 < v31)
        {
          v27 = v25;
          if (v21 != v29)
          {
            *v5 = *v25;
          }

          v4 = v23;
          v14 = v30;
          if (v30 <= v4 || (v6 = v27, v27 <= v7))
          {
            v6 = v27;
            goto LABEL_47;
          }

          goto LABEL_32;
        }
      }

      v20 = v25;
      v4 = v23;
      if (v30 != v21)
      {
        *v5 = *v22;
      }

      v14 = v22;
      v21 = v5;
    }

    while (v22 > v4);
    v14 = v22;
    v6 = v29;
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1001CC124(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v41 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v15 = v5;
      goto LABEL_52;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v18 = *v12;
      v19 = *v14;

      v20 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      if (v21)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      v23 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v25 = v24;

      if (v25)
      {
        if ((v22 - 1) < 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_24;
        }
      }

      else if (v22 > 0 && (v23 < 1 || v22 < v23))
      {
LABEL_24:
        v16 = v12;
        v17 = v5 == v12;
        v12 += 8;
        if (v17)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v5 = *v16;
        goto LABEL_13;
      }

      v16 = v14;
      v17 = v5 == v14;
      v14 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 8;
      if (v14 >= v41)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = a4;
  if (a4 != a2 || &a2[8 * v11] <= a4)
  {
    v26 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v26;
  }

  v15 = a2;
  v41 = &v14[8 * v11];
  if (v9 >= 8 && a2 > v5)
  {
    v40 = v14;
LABEL_33:
    __dst = v15;
    v27 = v15 - 8;
    v4 -= 8;
    v28 = v41;
    do
    {
      v29 = *(v28 - 1);
      v28 -= 8;
      v30 = v27;
      v31 = *v27;

      v32 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      if (v33)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      v35 = dispatch thunk of TrackedSubjectInternal.saliencyRank.getter();
      v37 = v36;

      if (v37)
      {
        if ((v34 - 1) < 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_46;
        }
      }

      else if (v34 > 0 && (v35 < 1 || v34 < v35))
      {
LABEL_46:
        if (v4 + 8 != __dst)
        {
          *v4 = *v30;
        }

        v14 = v40;
        if (v41 <= v40 || (v15 = v30, v30 <= v5))
        {
          v15 = v30;
          goto LABEL_52;
        }

        goto LABEL_33;
      }

      if (v4 + 8 != v41)
      {
        *v4 = *v28;
      }

      v4 -= 8;
      v41 = v28;
      v14 = v40;
      v27 = v30;
    }

    while (v28 > v40);
    v41 = v28;
    v15 = __dst;
  }

LABEL_52:
  if (v15 != v14 || v15 >= &v14[(v41 - v14 + (v41 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v15, v14, 8 * ((v41 - v14) / 8));
  }

  return 1;
}

uint64_t sub_1001CC454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  v31 = v16;
  v17 = sub_10016D5D4(a3);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v18;
  if (v16[3] < v22)
  {
    sub_1001E7280(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_10016D5D4(a3);
    if ((v4 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    v17 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v28 = v17;
    sub_1001EEB6C();
    v17 = v28;
    v24 = v31;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v29 = v17;
    (*(v10 + 16))(v13, a3, v9);
    sub_1001ED81C(v29, v13, a1, a2, v24);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  v24 = v31;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v25 = (v24[7] + 16 * v17);
  result = *v25;
  v27 = v25[1];
  *v25 = a1;
  v25[1] = a2;
LABEL_11:
  *v5 = v24;
  return result;
}