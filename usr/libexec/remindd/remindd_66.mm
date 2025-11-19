uint64_t sub_10060E0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AD894(v18, v24, &unk_100944ED0, off_1008D41A0, sub_100664BBC, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060E3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AD894(v18, v24, &qword_100939DF0, off_1008D4188, sub_1006654B4, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060E6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AD894(v18, v24, &qword_100940C50, off_1008D41C8, sub_100665DAC, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060E9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065B4C4(v19, a3, v25, sub_1006B021C, sub_100759CB4, &qword_100942E50, off_1008D41E0, sub_1006670C8, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060ECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065B4C4(v19, a3, v25, sub_1006B021C, sub_100759CB4, &qword_10094F150, off_1008D4178, sub_100667998, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060EFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065C9B8(v19, a3, v25, sub_1006AFDC8, sub_100759CB4, type metadata accessor for REMCDDueDateDeltaAlert, sub_100668268, sub_1005E60F0, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060F318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065C9B8(v19, a3, v25, sub_1006AC208, sub_100759CB4, type metadata accessor for REMCDTemplateSection, sub_100668B38, sub_1005E6E68, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065C9B8(v19, a3, v25, sub_1006AC314, sub_100759CB4, type metadata accessor for REMCDSmartListSection, sub_100669408, sub_1005E7BE0, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065C9B8(v19, a3, v25, sub_1006AC448, sub_100759CB4, type metadata accessor for REMCDListSection, sub_100669CD8, sub_1005E8958, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060FCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065C9B8(v19, a3, v25, sub_1006AC584, sub_100759CB4, type metadata accessor for REMCDTemplate, sub_10066A5A8, sub_1005E96B8, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065BF38(v19, a3, v25, sub_1006AC830, sub_100759CB4, &unk_10093F770, off_1008D41E8, sub_10066AE78, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100610318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065C9B8(v19, a3, v25, sub_1006AC98C, sub_100759CB4, type metadata accessor for REMCDSavedReminder, sub_10066B748, sub_1005EA438, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100610650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065BF38(v19, a3, v25, sub_1006AF518, sub_100759CB4, &unk_100938880, off_1008D41A8, sub_10066C8E8, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_100610970(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v226 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v229 = &v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v236 = &v211 - v11;
  v237 = type metadata accessor for UUID();
  v12 = *(v237 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v237);
  v231 = &v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v230 = &v211 - v16;
  v17 = a3[3];
  v242 = a3[2];
  v228 = a3[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_132;
  }

LABEL_2:
  v221 = type metadata accessor for Logger();
  v18 = sub_100006654(v221, qword_100945730);

  v240 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v4;
  v238 = a3;
  v243 = a1;
  v235 = v12;
  v239 = (a1 >> 62);
  if (v21)
  {
    v4 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    v244[0] = v234;
    *v4 = 136446978;
    *(v4 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v244);
    *(v4 + 12) = 2048;
    if (!(a1 >> 62))
    {
      a1 = v243;
      v23 = *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_135;
  }

  while (1)
  {
    v29 = v241;
    v17 = v239 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = _swiftEmptyArrayStorage;
    if (!v17)
    {
      break;
    }

    v244[0] = _swiftEmptyArrayStorage;
    v19 = v244;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      a3 = (a1 & 0xC000000000000001);
      v242 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = &selRef_persistentStoreForIdentifier_;
      while (1)
      {
        v31 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (a3)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v242 + 16))
          {
            goto LABEL_129;
          }

          v32 = *(v243 + 8 * v12 + 32);
        }

        v33 = v32;
        v34 = sub_1005E45B0([v32 remObjectID]);
        if (v22)
        {

          return;
        }

        v4 = v34;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = *(v244[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v12;
        if (v31 == v17)
        {
          a1 = v243;
          v30 = v244[0];
          v4 = 0;
          v29 = v241;
          a3 = v238;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_135:
    a1 = v243;
    v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v4 + 14) = v23;

    *(v4 + 22) = 2082;
    type metadata accessor for REMCDSavedAttachment();
    v24 = [swift_getObjCClassFromMetadata() description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10000668C(v25, v27, v244);

    *(v4 + 24) = v28;
    *(v4 + 32) = 2082;
    *(v4 + 34) = sub_10000668C(v242, v17, v244);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v4, 0x2Au);
    v20 = v234;
    swift_arrayDestroy();

    v4 = v22;
    a3 = v238;
  }

LABEL_20:
  v225 = v30;
  v36 = *(v29 + 96);
  if (v36 > 1)
  {
    if ((v36 - 2) >= 3 && v36 != 4499 && v36 != 4599)
    {
      goto LABEL_138;
    }

    goto LABEL_27;
  }

  if (!v36)
  {
LABEL_27:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v242 = v4;
      v41 = v40;
      v244[0] = v40;
      *v39 = 136315138;
      v42 = [type metadata accessor for REMCDSavedAttachment() cdEntityName];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = v43;
      a3 = v238;
      v47 = sub_10000668C(v46, v45, v244);

      *(v39 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "Performing fetch during upsert {CDType: %s}", v39, 0xCu);
      sub_10000607C(v41);
      v4 = v242;
    }

    v48 = sub_10065E91C(v225, a3);
    if (v4)
    {

      return;
    }

    goto LABEL_35;
  }

  if (v36 == 1)
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v242 = v4;
      v54 = v53;
      v244[0] = v53;
      *v52 = 136315138;
      v55 = [type metadata accessor for REMCDSavedAttachment() cdEntityName];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_10000668C(v56, v58, v244);

      *(v52 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "Skipping fetch during upsert {CDType: %s}", v52, 0xCu);
      sub_10000607C(v54);
      v4 = v242;
    }

    v48 = sub_10038F0D0(_swiftEmptyArrayStorage);
LABEL_35:
    a3 = v48;
    if (v239)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v242 = v4;
      if (!v17)
      {
LABEL_118:

        return;
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v242 = v4;
      if (!v17)
      {
        goto LABEL_118;
      }
    }

    v12 = 0;
    v224 = a1 & 0xC000000000000001;
    v223 = a1 & 0xFFFFFFFFFFFFFF8;
    v227 = v235 + 1;
    v220 = v235 + 7;
    v219 = v235 + 6;
    *&v49 = 136446978;
    v215 = v49;
    *&v49 = 136446210;
    v214 = v49;
    *&v49 = 136447490;
    v213 = v49;
    *&v49 = 136447234;
    v211 = v49;
    *&v49 = 136446466;
    v212 = v49;
    v234 = a3;
    v222 = v17;
    while (1)
    {
      if (v224)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v223 + 16))
        {
          goto LABEL_131;
        }

        v60 = *(a1 + 8 * v12 + 32);
      }

      v61 = v242;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_130;
      }

      v233 = (v12 + 1);
      v62 = v60;
      v63 = sub_1005E45B0([v62 remObjectID]);
      if (v61)
      {

        return;
      }

      v235 = v63;
      v232 = v12;
      v242 = 0;

      v239 = v62;
      v64 = [v62 accountID];
      v65 = [v64 uuid];

      v66 = v230;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = UUID.uuidString.getter();
      v69 = v68;
      isa = v227->isa;
      v71 = v237;
      (v227->isa)(v66, v237);
      v72 = [objc_opt_self() localInternalAccountID];
      v73 = [v72 uuid];

      v74 = v231;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = UUID.uuidString.getter();
      v77 = v76;
      isa(v74, v71);
      if (v67 == v75 && v69 == v77)
      {
      }

      else
      {
        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v78 & 1) == 0)
        {
          a3 = v234;
          v81 = v235;
          goto LABEL_59;
        }
      }

      v79 = *(v241 + 68);
      a3 = v234;
      if (v79 >> 14 >= 2)
      {
        v81 = v235;
        if (v79 >> 14 == 2)
        {
          v80 = *(v241 + 64);
        }

        else
        {
          v80 = 0x7FFFFFFF;
        }
      }

      else
      {
        v80 = 2147483519;
        v81 = v235;
      }

      v82 = v242;
      sub_100009A40(2, v80);
      v242 = v82;
      if (v82)
      {

        return;
      }

LABEL_59:
      v83._rawValue = &off_1008DD6F0;
      v84 = sub_1005F6E20(v83, type metadata accessor for REMCDSavedAttachment);
      if (a3[2])
      {
        v85 = sub_100393C74(v81);
        if (v86)
        {
          v87 = v85;

          v88 = *(a3[7] + 8 * v87);
          v89 = v81;
          v90 = Logger.logObject.getter();
          v4 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v90, v4))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v244[0] = v93;
            *v91 = v212;
            *(v91 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v244);
            *(v91 + 12) = 2114;
            *(v91 + 14) = v89;
            *v92 = v89;
            v94 = v89;
            _os_log_impl(&_mh_execute_header, v90, v4, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v91, 0x16u);
            sub_1000050A4(v92, &unk_100938E70, &unk_100797230);
            a3 = v234;

            sub_10000607C(v93);
          }

          else
          {
          }

          goto LABEL_42;
        }
      }

      if (v84 == 2)
      {
        goto LABEL_124;
      }

      if (v84)
      {
        v95 = 6911093;
      }

      else
      {
        v95 = 0x44497463656A626FLL;
      }

      if (v84)
      {
        v96 = 0xE300000000000000;
      }

      else
      {
        v96 = 0xE800000000000000;
      }

      if (v95 == 0x44497463656A626FLL && v96 == 0xE800000000000000)
      {
LABEL_72:
        v97 = v241;

        goto LABEL_78;
      }

      v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v98 & 1) == 0)
      {
        if (v95 == 6911093 && v96 == 0xE300000000000000)
        {
          goto LABEL_72;
        }

        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v99 & 1) == 0)
        {
LABEL_124:

          [objc_opt_self() noSuchObjectErrorWithObjectID:v81];
          swift_willThrow();

          return;
        }
      }

      v97 = v241;
LABEL_78:
      v100 = *(v97 + 88);
      type metadata accessor for REMCDSavedAttachment();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v102 = [ObjCClassFromMetadata entity];
      v103 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v102 insertIntoManagedObjectContext:v100];
      v104 = v228;
      [v100 assignObject:v103 toPersistentStore:v104];

      v105 = v103;
      v106 = [v81 uuid];
      v107 = v236;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v108 = v237;
      (v220->isa)(v107, 0, 1, v237);
      v109 = v229;
      sub_10018E470(v107, v229);
      LODWORD(v107) = (v219->isa)(v109, 1, v108);
      v110 = v105;
      v111 = 0;
      if (v107 != 1)
      {
        v112 = v229;
        v111 = UUID._bridgeToObjectiveC()().super.isa;
        isa(v112, v237);
      }

      [v110 setIdentifier:{v111, v211}];

      sub_1000050A4(v236, &unk_100939D90, "8\n\r");
      v113 = v81;
      v114 = v241;

      v115 = v110;
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.default.getter();

      v118 = os_log_type_enabled(v116, v117);
      v235 = v113;
      if (v118)
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v249 = v218;
        *v119 = v215;
        *(v119 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v249);
        *(v119 + 12) = 2082;
        v121 = *(v114 + 40);
        v247 = *(v114 + 24);
        *v248 = v121;
        *&v248[14] = *(v114 + 54);
        sub_100009DAC(&v247, v244);
        v122 = sub_1000063E8();
        v124 = v123;
        sub_1005812D4(&v247);
        v125 = sub_10000668C(v122, v124, &v249);

        *(v119 + 14) = v125;
        *(v119 + 22) = 2114;
        *(v119 + 24) = v113;
        *v120 = v113;
        *(v119 + 32) = 2112;
        v126 = v113;
        v127 = v115;
        v128 = [v115 objectID];
        *(v119 + 34) = v128;
        v120[1] = v128;
        _os_log_impl(&_mh_execute_header, v116, v117, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v119, 0x2Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      else
      {
        v127 = v115;
      }

      v129 = v238;
      v130 = v242;
      v131 = v239;
      swift_beginAccess();
      v132 = v129[6];
      v242 = v130;
      if ((v132 & 0xC000000000000001) != 0)
      {
        if (v132 < 0)
        {
          v133 = v132;
        }

        else
        {
          v133 = v132 & 0xFFFFFFFFFFFFFF8;
        }

        v134 = v235;
        v135 = v235;
        v136 = v127;
        v137 = v127;
        v138 = __CocoaDictionary.count.getter();
        if (__OFADD__(v138, 1))
        {
          __break(1u);
LABEL_137:
          swift_once();
LABEL_120:
          sub_100006654(v221, qword_100950D98);
          v198 = Logger.logObject.getter();
          v199 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v198, v199))
          {
            v200 = swift_slowAlloc();
            v244[0] = swift_slowAlloc();
            *v200 = v212;
            v201 = sub_100729CB0(1);
            v203 = sub_10000668C(v201, v202, v244);

            *(v200 + 4) = v203;
            *(v200 + 12) = 2082;
            v204 = sub_100729CB0(v116);
            v206 = sub_10000668C(v204, v205, v244);

            *(v200 + 14) = v206;
            _os_log_impl(&_mh_execute_header, v198, v199, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v200, 0x16u);
            swift_arrayDestroy();
          }

          v207 = objc_opt_self();
          v208 = String._bridgeToObjectiveC()();
          sub_100729CB0(1);
          v209 = String._bridgeToObjectiveC()();

          sub_100729CB0(v116);
          v210 = String._bridgeToObjectiveC()();

          [v207 unauthorizedErrorWithMissingEntitlement:v208 requestedAccessLevel:v209 currentAccesslevel:v210];

          swift_willThrow();

LABEL_127:

          return;
        }

        v129[6] = sub_10021CDBC(v133, v138 + 1);
        v139 = v241;
      }

      else
      {
        v134 = v235;
        v140 = v235;
        v136 = v127;
        v141 = v127;
        v139 = v241;
        v130 = v242;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v249 = v129[6];
      sub_1002C8398(v136, v134, isUniquelyReferenced_nonNull_native);
      v129[6] = v249;

      swift_endAccess();
      if (((*(v139 + 64) | (*(v139 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v244[0] = v146;
          *v145 = v214;
          LOBYTE(v249) = 0;
          v147 = String.init<A>(describing:)();
          v149 = sub_10000668C(v147, v148, v244);
          v129 = v238;

          *(v145 + 4) = v149;
          _os_log_impl(&_mh_execute_header, v143, v144, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v145, 0xCu);
          sub_10000607C(v146);

          v131 = v239;
        }

        v130 = v242;
        v139 = v241;
      }

      v116 = *(v139 + 64);
      if (*(v139 + 68) >> 14 == 2 && (v116 & 1) == 0)
      {
        goto LABEL_119;
      }

      if ((v116 & 0xFFFF000000000001 | (*(v139 + 68) << 32) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v244[0] = v153;
          *v152 = v214;
          LOBYTE(v249) = 1;
          v154 = String.init<A>(describing:)();
          v156 = sub_10000668C(v154, v155, v244);
          v129 = v238;

          *(v152 + 4) = v156;
          _os_log_impl(&_mh_execute_header, v150, v151, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v152, 0xCu);
          sub_10000607C(v153);

          v131 = v239;
        }

        v130 = v242;
        v139 = v241;
      }

      if (*(v139 + 68) >> 14 == 2)
      {
        LODWORD(v116) = *(v139 + 64);
        if ((v116 & 1) == 0)
        {
LABEL_119:
          if (qword_1009367A0 == -1)
          {
            goto LABEL_120;
          }

          goto LABEL_137;
        }
      }

      swift_retain_n();
      v134 = v134;
      v136 = v136;
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v157, v158))
      {
        LODWORD(v218) = v158;
        v235 = v157;
        v159 = v139;
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v249 = v217;
        *v160 = v213;
        *(v160 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v249);
        *(v160 + 12) = 2082;
        v162 = *(v159 + 40);
        v245 = *(v159 + 24);
        *v246 = v162;
        *&v246[14] = *(v159 + 54);
        sub_100009DAC(&v245, v244);
        v163 = sub_1000063E8();
        v165 = v164;
        sub_1005812D4(&v245);
        v166 = sub_10000668C(v163, v165, &v249);

        *(v160 + 14) = v166;
        *(v160 + 22) = 2114;
        *(v160 + 24) = v134;
        *v161 = v134;
        *(v160 + 32) = 2112;
        v167 = v134;
        v168 = [v136 objectID];
        *(v160 + 34) = v168;
        v216 = v161;
        v161[1] = v168;
        *(v160 + 42) = 2082;
        v244[0] = _swiftEmptyArrayStorage;
        sub_100026EF4(0, 2, 0);
        v169 = v244[0];
        v171 = *(v244[0] + 16);
        v170 = *(v244[0] + 24);
        v172 = v170 >> 1;
        v173 = v171 + 1;
        if (v170 >> 1 <= v171)
        {
          sub_100026EF4((v170 > 1), v171 + 1, 1);
          v169 = v244[0];
          v170 = *(v244[0] + 24);
          v172 = v170 >> 1;
        }

        *(v169 + 16) = v173;
        v174 = v169 + 16 * v171;
        *(v174 + 32) = 0x44497463656A626FLL;
        *(v174 + 40) = 0xE800000000000000;
        v244[0] = v169;
        if (v172 <= v173)
        {
          sub_100026EF4((v170 > 1), v171 + 2, 1);
          v169 = v244[0];
        }

        *(v169 + 16) = v171 + 2;
        v175 = v169 + 16 * v173;
        *(v175 + 32) = 6911093;
        *(v175 + 40) = 0xE300000000000000;
        v176 = Array.description.getter();
        v178 = v177;

        v179 = sub_10000668C(v176, v178, &v249);

        *(v160 + 44) = v179;
        *(v160 + 52) = 1024;
        v180 = v241;
        v181 = *(v241 + 104);

        *(v160 + 54) = v181;

        v182 = v235;
        _os_log_impl(&_mh_execute_header, v235, v218, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v160, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v139 = v180;

        v130 = v242;
        v129 = v238;
        v131 = v239;
      }

      else
      {
      }

      sub_10022A984(v131, v136);
      v4 = v130;
      if (v130)
      {

        goto LABEL_127;
      }

      v183 = [v136 changedValues];

      v184 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      swift_beginAccess();
      v185 = v134;

      v186 = v129[7];
      v187 = swift_isUniquelyReferenced_nonNull_native();
      v249 = v129[7];
      v129[7] = 0x8000000000000000;
      sub_1002C8688(v184, v185, v187);

      v129[7] = v249;
      swift_endAccess();
      v188 = *(v139 + 104);
      v242 = 0;
      if (v188)
      {

        [v136 updateChangeCount];
      }

      else
      {

        v189 = v185;

        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v190, v191))
        {

          goto LABEL_116;
        }

        v192 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v244[0] = v235;
        *v192 = v211;
        *(v192 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v244);
        *(v192 + 12) = 1024;
        *(v192 + 14) = 0;

        *(v192 + 18) = 1024;
        *(v192 + 20) = 1;
        *(v192 + 24) = 2114;
        *(v192 + 26) = v189;
        *v4 = v189;
        *(v192 + 34) = 2082;
        v218 = v189;
        v193 = v242;
        sub_1005E2810(v184);
        v242 = v193;

        v194 = Array.description.getter();
        v196 = v195;

        v197 = sub_10000668C(v194, v196, v244);

        *(v192 + 36) = v197;
        _os_log_impl(&_mh_execute_header, v190, v191, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v192, 0x2Cu);
        sub_1000050A4(v4, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

LABEL_116:
      a1 = v243;
      a3 = v234;
LABEL_42:
      v12 = v232 + 1;
      v17 = v222;
      if (v233 == v222)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_138:
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2);
  __break(1u);
}

void sub_100612898(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = v4;
  v7 = v3;
  v263 = a2;
  v10 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v261 = v239 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v264 = v239 - v14;
  v268 = type metadata accessor for Date();
  *&v260 = *(v268 - 8);
  v15 = *(v260 + 64);
  __chkstk_darwin(v268);
  v267 = v239 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for UUID();
  v259 = *(v271 - 8);
  v17 = v259[8];
  __chkstk_darwin(v271);
  v262 = v239 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v269 = v239 - v20;
  v22 = a3[2];
  v21 = a3[3];
  v266 = a3;
  v257 = a3[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_189;
  }

LABEL_2:
  v256 = type metadata accessor for Logger();
  v23 = sub_100006654(v256, qword_100945730);

  v274 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = (a1 >> 62);
  v272 = v7;
  v275 = a1;
  v265 = (a1 >> 62);
  if (v26)
  {
    v273 = v22;
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v276 = v22;
    *v5 = 136446978;
    *(v5 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v276);
    *(v5 + 6) = 2048;
    v270 = v6;
    if (!v27)
    {
      v28 = v275;
      v29 = *((v275 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_192;
  }

  while (1)
  {
    v21 = v27 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = _swiftEmptyArrayStorage;
    if (!v21)
    {
      break;
    }

    v276 = _swiftEmptyArrayStorage;
    v24 = &v276;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v7 = a1 & 0xC000000000000001;
      v273 = (a1 & 0xFFFFFFFFFFFFFF8);
      v5 = off_1008D4190;
      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v7)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= v273[2])
          {
            goto LABEL_186;
          }

          v38 = *(a1 + 8 * v36 + 32);
        }

        v39 = v38;
        sub_1005E3810([v38 remObjectID], &qword_10093CFE0, off_1008D4190);
        v22 = v6;
        if (v6)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = v276[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v36;
        v6 = 0;
        a1 = v275;
        if (v37 == v21)
        {
          v35 = v276;
          v7 = v272;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_192:
    v28 = v275;
    v29 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v5 + 14) = v29;

    *(v5 + 11) = 2082;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v30 = [swift_getObjCClassFromMetadata() description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_10000668C(v31, v33, &v276);

    v5[3] = v34;
    *(v5 + 16) = 2082;
    *(v5 + 34) = sub_10000668C(v273, v21, &v276);
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
    swift_arrayDestroy();

    v6 = v270;
    v7 = v272;
    a1 = v28;
    v27 = v265;
  }

LABEL_20:
  v41 = *(v7 + 96);
  if (v41 > 1)
  {
    if ((v41 - 2) >= 3 && v41 != 4499 && v41 != 4599)
    {
      goto LABEL_197;
    }

    goto LABEL_27;
  }

  if (!v41)
  {
LABEL_27:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v276 = v45;
      *v44 = 136315138;
      v46 = [objc_opt_self() cdEntityName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10000668C(v47, v49, &v276);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Performing fetch during upsert {CDType: %s}", v44, 0xCu);
      sub_10000607C(v45);
      a1 = v275;
    }

    v51 = sub_10065FB04(v35, v266);
    if (v6)
    {
LABEL_181:

      return;
    }

    goto LABEL_35;
  }

  if (v41 != 1)
  {
LABEL_197:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v276 = v56;
    *v55 = 136315138;
    v57 = [objc_opt_self() cdEntityName];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = sub_10000668C(v58, v60, &v276);

    *(v55 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v53, v54, "Skipping fetch during upsert {CDType: %s}", v55, 0xCu);
    sub_10000607C(v56);
    a1 = v275;
  }

  v51 = sub_10038F780(_swiftEmptyArrayStorage);
LABEL_35:
  v62 = v51;
  if (v265)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
    if (!v63)
    {
      goto LABEL_180;
    }
  }

  else
  {
    v63 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v63)
    {
      goto LABEL_180;
    }
  }

  v64 = 0;
  v65 = a1 & 0xC000000000000001;
  v250 = a1 & 0xFFFFFFFFFFFFFF8;
  v249 = a1 + 32;
  v273 = (v259 + 1);
  v248 = (v259 + 7);
  v247 = (v259 + 6);
  v258 = (v260 + 8);
  *&v52 = 136446978;
  v244 = v52;
  *&v52 = 136446210;
  v260 = v52;
  *&v52 = 136447490;
  v241 = v52;
  *&v52 = 136447234;
  v240 = v52;
  *&v52 = 136446466;
  v243 = v52;
  v254 = v35;
  v255 = v62;
  v246 = v63;
  v245 = a1 & 0xC000000000000001;
LABEL_40:
  if (!v65)
  {
    if (v64 >= *(v250 + 16))
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v66 = *(v249 + 8 * v64);
    v67 = __OFADD__(v64, 1);
    v68 = v64 + 1;
    if (!v67)
    {
      goto LABEL_43;
    }

LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v67 = __OFADD__(v64, 1);
  v68 = v64 + 1;
  if (v67)
  {
    goto LABEL_193;
  }

LABEL_43:
  v69 = v66;
  v70 = sub_1005E3810([v69 remObjectID], &qword_10093CFE0, off_1008D4190);
  if (v6)
  {

    return;
  }

  v253 = v70;
  v251 = v68;
  v270 = 0;
  v259 = v69;

  v71 = [*(v263 + 16) uuid];
  v72 = v269;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = UUID.uuidString.getter();
  v75 = v74;
  v76 = *v273;
  v77 = v271;
  (*v273)(v72, v271);
  v78 = [objc_opt_self() localInternalAccountID];
  v79 = [v78 uuid];

  v80 = v262;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = UUID.uuidString.getter();
  v83 = v82;
  v265 = v76;
  v76(v80, v77);
  if (v73 == v81 && v75 == v83)
  {

    v84 = v259;
    v85 = v253;
    v86 = v272;
    goto LABEL_48;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v84 = v259;
  v85 = v253;
  v86 = v272;
  if (v87)
  {
LABEL_48:
    v88 = *(v86 + 68);
    v89 = v255;
    if (v88 >> 14 >= 2)
    {
      if (v88 >> 14 == 2)
      {
        v90 = *(v86 + 64);
      }

      else
      {
        v90 = 0x7FFFFFFF;
      }
    }

    else
    {
      v90 = 2147483519;
    }

    v91 = v270;
    sub_100009A40(2, v90);
    v270 = v91;
    if (v91)
    {

      return;
    }

    goto LABEL_55;
  }

  v89 = v255;
LABEL_55:
  v92._rawValue = &off_1008DEE60;
  v93 = sub_1005F65A4(v92, &qword_10093CFE0, off_1008D4190);
  if (*(v89 + 16))
  {
    v94 = sub_100393C74(v85);
    if (v95)
    {
      v96 = v94;

      v97 = *(*(v89 + 56) + 8 * v96);
      v98 = v85;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v276 = v103;
        *v101 = v243;
        *(v101 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v276);
        *(v101 + 12) = 2114;
        *(v101 + 14) = v98;
        *v102 = v98;
        v104 = v98;
        _os_log_impl(&_mh_execute_header, v99, v100, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v101, 0x16u);
        sub_1000050A4(v102, &unk_100938E70, &unk_100797230);

        sub_10000607C(v103);
      }

      else
      {
      }

      goto LABEL_143;
    }
  }

  if (v93 == 4)
  {
    goto LABEL_184;
  }

  v105 = 0x6E6F697461657263;
  v106 = 0xEC00000065746144;
  v107 = 1701869940;
  if (v93 == 2)
  {
    v107 = 1701667182;
  }

  if (!v93)
  {
    v105 = 0x44497463656A626FLL;
    v106 = 0xE800000000000000;
  }

  if (v93 <= 1u)
  {
    v108 = v105;
  }

  else
  {
    v108 = v107;
  }

  if (v93 <= 1u)
  {
    v109 = v106;
  }

  else
  {
    v109 = 0xE400000000000000;
  }

  if (v108 == 0x44497463656A626FLL && v109 == 0xE800000000000000)
  {
    goto LABEL_72;
  }

  v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v110 & 1) == 0)
  {
    if (v93 > 1u)
    {
      v174 = 0xE400000000000000;
      if (v93 == 2)
      {
        v173 = 1701667182;
      }

      else
      {
        v173 = 1701869940;
      }
    }

    else
    {
      if (v93)
      {
        v173 = 0x6E6F697461657263;
      }

      else
      {
        v173 = 0x44497463656A626FLL;
      }

      if (v93)
      {
        v174 = 0xEC00000065746144;
      }

      else
      {
        v174 = 0xE800000000000000;
      }
    }

    if (v173 == 0x6E6F697461657263 && v174 == 0xEC00000065746144)
    {
      goto LABEL_72;
    }

    v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v175)
    {
      goto LABEL_74;
    }

    if (v93 > 1u)
    {
      v218 = 0xE400000000000000;
      v217 = v93 == 2 ? 1701667182 : 1701869940;
    }

    else
    {
      v217 = v93 ? 0x6E6F697461657263 : 0x44497463656A626FLL;
      v218 = v93 ? 0xEC00000065746144 : 0xE800000000000000;
    }

    if (v217 == 1701667182 && v218 == 0xE400000000000000)
    {
      goto LABEL_72;
    }

    v219 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v219)
    {
      goto LABEL_74;
    }

    if (v93 > 1u)
    {
      v221 = 0xE400000000000000;
      v220 = v93 == 2 ? 1701667182 : 1701869940;
    }

    else
    {
      v220 = v93 ? 0x6E6F697461657263 : 0x44497463656A626FLL;
      v221 = v93 ? 0xEC00000065746144 : 0xE800000000000000;
    }

    if (v220 == 1701869940 && v221 == 0xE400000000000000)
    {
LABEL_72:

      goto LABEL_74;
    }

    v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = v259;
    if ((v222 & 1) == 0)
    {
LABEL_184:

      [objc_opt_self() noSuchObjectErrorWithObjectID:v85];
      swift_willThrow();

      return;
    }
  }

LABEL_74:

  v111 = *(v86 + 88);
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v113 = [ObjCClassFromMetadata entity];
  v114 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v113 insertIntoManagedObjectContext:v111];
  v115 = v257;
  [v111 assignObject:v114 toPersistentStore:v115];

  v116 = v114;
  v117 = [v85 uuid];
  v118 = v264;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v119 = v271;
  (*v248)(v118, 0, 1, v271);
  v120 = v261;
  sub_10018E470(v118, v261);
  LODWORD(v120) = (*v247)(v120, 1, v119);
  v121 = v116;
  isa = 0;
  if (v120 != 1)
  {
    v123 = v261;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v265)(v123, v271);
  }

  [v121 setIdentifier:isa];

  sub_1000050A4(v264, &unk_100939D90, "8\n\r");
  v124 = v85;
  v7 = v272;

  v125 = v121;
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  v128 = os_log_type_enabled(v126, v127);
  v253 = v125;
  v252 = v124;
  if (v128)
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v281 = v242;
    *v129 = v244;
    *(v129 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v281);
    *(v129 + 12) = 2082;
    v131 = *(v7 + 40);
    v279 = *(v7 + 24);
    *v280 = v131;
    *&v280[14] = *(v7 + 54);
    sub_100009DAC(&v279, &v276);
    v132 = sub_1000063E8();
    v134 = v133;
    sub_1005812D4(&v279);
    v135 = sub_10000668C(v132, v134, &v281);

    *(v129 + 14) = v135;
    *(v129 + 22) = 2114;
    *(v129 + 24) = v124;
    *v130 = v124;
    *(v129 + 32) = 2112;
    v136 = v124;
    v137 = [v125 objectID];
    *(v129 + 34) = v137;
    v130[1] = v137;
    _os_log_impl(&_mh_execute_header, v126, v127, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v129, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v6 = v270;
  v22 = &off_1008E30C8;
  a1 = v266;
  swift_beginAccess();
  v138 = *(a1 + 48);
  if ((v138 & 0xC000000000000001) != 0)
  {
    if (v138 < 0)
    {
      v139 = *(a1 + 48);
    }

    else
    {
      v139 = v138 & 0xFFFFFFFFFFFFFF8;
    }

    v140 = v252;
    v141 = v252;
    v63 = v253;
    v142 = v253;
    v143 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v143, 1))
    {
      *(a1 + 48) = sub_10021CDBC(v139, v143 + 1);
      goto LABEL_85;
    }

LABEL_195:
    __break(1u);
LABEL_196:
    swift_once();
    goto LABEL_177;
  }

  v144 = *(a1 + 48);
  v140 = v252;
  v145 = v252;
  v63 = v253;
  v146 = v253;
LABEL_85:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v281 = *(a1 + 48);
  sub_1002C8398(v63, v140, isUniquelyReferenced_nonNull_native);
  *(a1 + 48) = v281;

  swift_endAccess();
  v148 = 0;
  v149 = *(v7 + 64) | (*(v7 + 68) << 32);
  while (1)
  {
    if ((v149 & 0xC00000000001) == 0x800000000000)
    {
      v150 = *(&off_1008E30C8 + v148 + 32);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v151, v152))
      {
        a1 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v276 = v153;
        *a1 = v260;
        LOBYTE(v281) = v150;
        v154 = String.init<A>(describing:)();
        v156 = sub_10000668C(v154, v155, &v276);
        v7 = v272;

        *(a1 + 4) = v156;
        v22 = &off_1008E30C8;
        _os_log_impl(&_mh_execute_header, v151, v152, "Client doesn't have permission to write key {changedValueKey: %{public}s}", a1, 0xCu);
        sub_10000607C(v153);
      }
    }

    v63 = *(v7 + 64);
    if (*(v7 + 68) >> 14 == 2 && (*(v7 + 64) & 1) == 0)
    {
      break;
    }

    ++v148;
    v149 = v63 & 0xFFFF0000FFFFFFFFLL | (*(v7 + 68) << 32);
    if (v148 == 4)
    {
      swift_retain_n();
      v158 = v252;
      v159 = v253;
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();

      v162 = os_log_type_enabled(v160, v161);
      v252 = v158;
      if (v162)
      {
        LODWORD(v242) = v161;
        v253 = v160;
        v270 = v6;
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v281 = v165;
        *v163 = v241;
        *(v163 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v281);
        *(v163 + 12) = 2082;
        v166 = *(v7 + 40);
        v277 = *(v7 + 24);
        *v278 = v166;
        *&v278[14] = *(v7 + 54);
        sub_100009DAC(&v277, &v276);
        v167 = sub_1000063E8();
        v169 = v168;
        sub_1005812D4(&v277);
        v170 = sub_10000668C(v167, v169, &v281);

        *(v163 + 14) = v170;
        *(v163 + 22) = 2114;
        *(v163 + 24) = v158;
        *v164 = v158;
        *(v163 + 32) = 2112;
        v171 = v158;
        v172 = [v159 objectID];
        *(v163 + 34) = v172;
        v164[1] = v172;
        *(v163 + 42) = 2082;
        v276 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, 4, 0);
        v176 = v276;
        v178 = v276[2];
        v177 = v276[3];
        v179 = v178 + 1;
        if (v178 >= v177 >> 1)
        {
          sub_100026EF4((v177 > 1), v178 + 1, 1);
          v176 = v276;
        }

        v176[2] = v179;
        v180 = &v176[2 * v178];
        v180[4] = 0x44497463656A626FLL;
        v180[5] = 0xE800000000000000;
        v239[1] = v165;
        v276 = v176;
        v181 = v176[3];
        if (v179 >= v181 >> 1)
        {
          sub_100026EF4((v181 > 1), v178 + 2, 1);
          v176 = v276;
        }

        v176[2] = v178 + 2;
        v182 = &v176[2 * v179];
        strcpy(v182 + 32, "creationDate");
        v182[45] = 0;
        *(v182 + 23) = -5120;
        v276 = v176;
        v184 = v176[2];
        v183 = v176[3];
        v185 = v184 + 1;
        if (v184 >= v183 >> 1)
        {
          sub_100026EF4((v183 > 1), v184 + 1, 1);
          v176 = v276;
        }

        v176[2] = v185;
        v186 = &v176[2 * v184];
        v186[4] = 1701667182;
        v186[5] = 0xE400000000000000;
        v276 = v176;
        v187 = v176[3];
        if (v185 >= v187 >> 1)
        {
          sub_100026EF4((v187 > 1), v184 + 2, 1);
          v176 = v276;
        }

        v176[2] = v184 + 2;
        v188 = &v176[2 * v185];
        v188[4] = 1701869940;
        v188[5] = 0xE400000000000000;
        a1 = Array.description.getter();
        v190 = v189;

        v191 = sub_10000668C(a1, v190, &v281);

        *(v163 + 44) = v191;
        *(v163 + 52) = 1024;
        v7 = v272;
        v192 = *(v272 + 104);

        *(v163 + 54) = v192;

        v193 = v253;
        _os_log_impl(&_mh_execute_header, v253, v242, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v163, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v6 = v270;
        v22 = &off_1008E30C8;
      }

      else
      {
      }

      v21 = 0;
      v5 = v259;
      while (1)
      {
        if (*(&off_1008E30C8 + v21 + 32) > 1u)
        {
          if (*(&off_1008E30C8 + v21 + 32) != 2)
          {
            v200 = [v5 type];
            if (v200 < -32768)
            {
              goto LABEL_187;
            }

            if (v200 >= 0x8000)
            {
              goto LABEL_188;
            }

            [v159 setType:v200];
            goto LABEL_127;
          }

          v196.super.isa = [v5 name];
          if (!v196.super.isa)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            a1 = v199;
            v196.super.isa = String._bridgeToObjectiveC()();
          }

          [v159 setName:v196.super.isa];
        }

        else if (*(&off_1008E30C8 + v21 + 32))
        {
          v197 = [v5 creationDate];
          v198 = v267;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v196.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*v258)(v198, v268);
          [v159 setCreationDate:v196.super.isa];
        }

        else
        {
          v194 = [v5 objectID];
          a1 = [v194 uuid];

          v195 = v269;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v196.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (v265)(v195, v271);
          [v159 setIdentifier:v196.super.isa];
        }

LABEL_127:
        if (++v21 == 4)
        {
          v201 = [v159 changedValues];

          v202 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v203 = v266;
          swift_beginAccess();
          v204 = v252;

          v205 = v203[7];
          v206 = swift_isUniquelyReferenced_nonNull_native();
          v281 = v203[7];
          v203[7] = 0x8000000000000000;
          sub_1002C8688(v202, v204, v206);

          v203[7] = v281;
          swift_endAccess();
          if (*(v7 + 104))
          {

            [v159 updateChangeCount];

            goto LABEL_144;
          }

          v270 = v6;

          v207 = v204;

          v208 = Logger.logObject.getter();
          v209 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v208, v209))
          {
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v265 = swift_slowAlloc();
            v276 = v265;
            *v210 = v240;
            *(v210 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v276);
            *(v210 + 12) = 1024;
            *(v210 + 14) = 0;

            *(v210 + 18) = 1024;
            *(v210 + 20) = 1;
            *(v210 + 24) = 2114;
            *(v210 + 26) = v207;
            *v211 = v207;
            *(v210 + 34) = 2082;
            v253 = v207;
            v212 = v270;
            sub_1005E2810(v202);
            v6 = v212;

            v213 = Array.description.getter();
            v215 = v214;

            v216 = sub_10000668C(v213, v215, &v276);

            *(v210 + 36) = v216;
            _os_log_impl(&_mh_execute_header, v208, v209, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v210, 0x2Cu);
            sub_1000050A4(v211, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            goto LABEL_144;
          }

LABEL_143:
          v6 = v270;
LABEL_144:
          LOWORD(v63) = v246;
          v64 = v251;
          v65 = v245;
          if (v251 == v246)
          {
LABEL_180:

            goto LABEL_181;
          }

          goto LABEL_40;
        }
      }
    }
  }

  if (qword_1009367A0 != -1)
  {
    goto LABEL_196;
  }

LABEL_177:
  sub_100006654(v256, qword_100950D98);
  v223 = Logger.logObject.getter();
  v224 = static os_log_type_t.error.getter();
  v225 = os_log_type_enabled(v223, v224);
  v226 = v259;
  if (v225)
  {
    v227 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    *v227 = v243;
    v228 = sub_100729CB0(1);
    v230 = sub_10000668C(v228, v229, &v276);

    *(v227 + 4) = v230;
    *(v227 + 12) = 2082;
    v231 = sub_100729CB0(v63);
    v233 = sub_10000668C(v231, v232, &v276);

    *(v227 + 14) = v233;
    _os_log_impl(&_mh_execute_header, v223, v224, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v227, 0x16u);
    swift_arrayDestroy();
  }

  v234 = objc_opt_self();
  v235 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v236 = String._bridgeToObjectiveC()();

  sub_100729CB0(v63);
  v237 = String._bridgeToObjectiveC()();

  [v234 unauthorizedErrorWithMissingEntitlement:v235 requestedAccessLevel:v236 currentAccesslevel:v237];

  swift_willThrow();

  v238 = v253;
}

void sub_100614E10(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v257 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v256 = &v229 - v11;
  v12 = type metadata accessor for UUID();
  v253 = *(v12 - 8);
  v13 = v253[8];
  __chkstk_darwin(v12);
  v15 = &v229 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v229 - v17;
  __chkstk_darwin(v19);
  v21 = &v229 - v20;
  v22 = a3[3];
  v254 = a3[2];
  v261 = v22;
  v255 = a3[4];
  v262 = v3;
  v23 = *(v3 + 72);
  v260 = a2;
  v265[3] = v23;
  v266[0] = a2;
  v265[2] = v266;

  v24 = v264;
  v25 = sub_100759CB4(sub_1006B021C, v265, a1);
  v263 = v24;
  if (!v24)
  {
    v26 = v25;
    v248 = v23;
    v251 = v21;
    v249 = v18;
    v246 = v15;
    v258 = v12;
    v252 = a3;
    if (qword_100936008 != -1)
    {
      goto LABEL_135;
    }

    while (1)
    {
      v240 = type metadata accessor for Logger();
      v27 = sub_100006654(v240, qword_100945730);

      v259 = v27;
      v28 = Logger.logObject.getter();
      LOBYTE(v29) = static os_log_type_t.info.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v26 >> 62;
      v264 = v26;
      v32 = v263;
      v33 = v263;
      if (v30)
      {
        v32 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v266[0] = v247;
        *v32 = 136446978;
        *(v32 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v266);
        *(v32 + 12) = 2048;
        if (v31)
        {
          goto LABEL_140;
        }

        v34 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        *(v32 + 14) = v34;

        *(v32 + 22) = 2082;
        type metadata accessor for REMCDManualSortHint();
        v35 = [swift_getObjCClassFromMetadata() description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v26 = v264;
        v39 = sub_10000668C(v36, v38, v266);

        *(v32 + 24) = v39;
        *(v32 + 32) = 2082;
        *(v32 + 34) = sub_10000668C(v254, v261, v266);
        _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v32, 0x2Au);
        swift_arrayDestroy();

        v32 = v33;
      }

      else
      {
      }

      v40 = v31 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = _swiftEmptyArrayStorage;
      v250 = v31;
      if (!v40)
      {
        break;
      }

      v266[0] = _swiftEmptyArrayStorage;
      v28 = v266;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v40 < 0)
      {
        goto LABEL_139;
      }

      v31 = 0;
      v42 = v26 & 0xC000000000000001;
      v261 = (v26 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v43 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v42)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= v261[2])
          {
            goto LABEL_134;
          }

          v44 = *(v26 + 8 * v31 + 32);
        }

        v45 = v44;
        sub_1005E5350([v44 remObjectID]);
        if (v33)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(v266[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v31;
        v26 = v264;
        if (v43 == v40)
        {
          v41 = v266[0];
          v32 = 0;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      swift_once();
    }

LABEL_21:
    v244 = v41;
    v47 = *(v262 + 96);
    if (v47 <= 1)
    {
      if (v47)
      {
        if (v47 != 1)
        {
LABEL_143:
          sub_1001F67C8(_swiftEmptyArrayStorage);
          sub_1001F67C8(_swiftEmptyArrayStorage);
          sub_10054573C("unknown mode", 12, 2);
          __break(1u);
          return;
        }

        v263 = v32;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v266[0] = v31;
          *v62 = 136315138;
          v63 = [type metadata accessor for REMCDManualSortHint() cdEntityName];
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = sub_10000668C(v64, v66, v266);

          *(v62 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v60, v61, "Skipping fetch during upsert {CDType: %s}", v62, 0xCu);
          sub_10000607C(v31);

          v26 = v264;
        }

        v56 = v251;
        v59 = v253;
        v29 = sub_10038F8AC(_swiftEmptyArrayStorage);
LABEL_37:
        if (v250)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
          if (!v28)
          {
LABEL_121:

            goto LABEL_122;
          }
        }

        else
        {
          v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v28)
          {
            goto LABEL_121;
          }
        }

        v33 = 0;
        v239 = v26 & 0xC000000000000001;
        v238 = v26 & 0xFFFFFFFFFFFFFF8;
        v250 = (v59 + 1);
        v234 = (v59 + 7);
        v233 = (v59 + 6);
        *&v58 = 136446978;
        v230 = v58;
        *&v58 = 136446210;
        v232 = v58;
        *&v58 = 136447490;
        v231 = v58;
        *&v58 = 136447234;
        v229 = v58;
        v254 = v29;
        v237 = v28;
        while (1)
        {
          if (v239)
          {
            v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v31 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_137;
            }
          }

          else
          {
            if (v33 >= *(v238 + 16))
            {
              goto LABEL_138;
            }

            v68 = *(v26 + 8 * v33 + 32);
            v31 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              v34 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_6;
            }
          }

          v69 = v68;
          v70 = [v69 remObjectID];
          v71 = v263;
          v253 = sub_1005E5350(v70);
          if (v71)
          {

            return;
          }

          v241 = v31;
          v242 = v33;
          v261 = v69;

          v243 = *(v260 + 16);
          v72 = [v243 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v263 = UUID.uuidString.getter();
          v74 = v73;
          v75 = *v250;
          v76 = v258;
          (*v250)(v56, v258);
          v77 = [objc_opt_self() localInternalAccountID];
          v78 = [v77 uuid];

          v79 = v249;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = UUID.uuidString.getter();
          v82 = v81;
          v247 = v75;
          v75(v79, v76);
          v245 = v74;
          if (v263 == v80 && v74 == v82)
          {
            break;
          }

          v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v83 = 0;
          v84 = v253;
          if (v85)
          {
            goto LABEL_50;
          }

          v88 = v248;
          v86 = v262;
          v91 = v254;
          v89 = v258;
LABEL_57:
          v92 = [v261 remObjectID];
          v93 = v92;
          if (*(v88 + 16))
          {
            sub_10002B924(v92);
          }

          v94._rawValue = &off_1008E0BF0;
          v95 = sub_1005F6E20(v94, type metadata accessor for REMCDManualSortHint);
          v96 = *(v91 + 16);
          v263 = 0;
          if (v96)
          {
            v97 = sub_100393C74(v84);
            if (v98)
            {
              v99 = v97;

              v100 = *(*(v91 + 56) + 8 * v99);
              goto LABEL_89;
            }
          }

          if (v95 == 2)
          {
            goto LABEL_132;
          }

          if (v95)
          {
            v101 = 0x6465696669646F6DLL;
          }

          else
          {
            v101 = 0x44497463656A626FLL;
          }

          if (v95)
          {
            v102 = 0xEC00000065746144;
          }

          else
          {
            v102 = 0xE800000000000000;
          }

          if (v101 != 0x44497463656A626FLL || v102 != 0xE800000000000000)
          {
            v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v104)
            {
              goto LABEL_76;
            }

            if (v101 != 0x6465696669646F6DLL || v102 != 0xEC00000065746144)
            {
              v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v105 & 1) == 0)
              {
LABEL_132:

                [objc_opt_self() noSuchObjectErrorWithObjectID:v84];
                swift_willThrow();

                return;
              }

LABEL_76:

              v103 = v255;
              goto LABEL_77;
            }
          }

          v103 = v255;

LABEL_77:
          v106 = *(v86 + 88);
          type metadata accessor for REMCDManualSortHint();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v108 = [ObjCClassFromMetadata entity];
          v109 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v108 insertIntoManagedObjectContext:v106];
          v110 = v103;
          v111 = v109;
          [v106 assignObject:v111 toPersistentStore:v110];

          v112 = v111;
          v113 = [v84 uuid];
          v114 = v256;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*v234)(v114, 0, 1, v89);
          v115 = v257;
          sub_10018E470(v114, v257);
          isa = 0;
          if ((*v233)(v115, 1, v89) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v247(v115, v89);
          }

          [v112 setIdentifier:isa];

          sub_1000050A4(v114, &unk_100939D90, "8\n\r");

          v117 = v84;
          v100 = v112;
          v118 = v86;
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.default.getter();

          v121 = os_log_type_enabled(v119, v120);
          v83 = v263;
          if (v121)
          {
            v122 = swift_slowAlloc();
            v245 = v100;
            v123 = v122;
            v124 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            *v123 = v230;
            *(v123 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
            *(v123 + 12) = 2082;
            v125 = *(v118 + 40);
            v269 = *(v118 + 24);
            *v270 = v125;
            *&v270[14] = *(v118 + 54);
            sub_100009DAC(&v269, v266);
            v126 = sub_1000063E8();
            v128 = v127;
            sub_1005812D4(&v269);
            v129 = sub_10000668C(v126, v128, &v271);

            *(v123 + 14) = v129;
            *(v123 + 22) = 2114;
            *(v123 + 24) = v117;
            *v124 = v117;
            *(v123 + 32) = 2112;
            v130 = v117;
            v131 = [v245 objectID];
            *(v123 + 34) = v131;
            v124[1] = v131;
            _os_log_impl(&_mh_execute_header, v119, v120, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v123, 0x2Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v100 = v245;
          }

          v132 = v252;
          swift_beginAccess();
          v133 = v132[6];
          v86 = v262;
          if ((v133 & 0xC000000000000001) != 0)
          {
            if (v133 < 0)
            {
              v134 = v132[6];
            }

            else
            {
              v134 = v133 & 0xFFFFFFFFFFFFFF8;
            }

            v135 = v117;
            v136 = __CocoaDictionary.count.getter();
            if (__OFADD__(v136, 1))
            {
              __break(1u);
LABEL_142:
              swift_once();
LABEL_125:
              v206 = v100;
              sub_100006654(v240, qword_100950D98);
              v207 = Logger.logObject.getter();
              v208 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v207, v208))
              {
                v209 = swift_slowAlloc();
                v266[0] = swift_slowAlloc();
                *v209 = 136446466;
                v210 = sub_100729CB0(1);
                v212 = sub_10000668C(v210, v211, v266);

                *(v209 + 4) = v212;
                *(v209 + 12) = 2082;
                v213 = sub_100729CB0(v117);
                v215 = sub_10000668C(v213, v214, v266);

                *(v209 + 14) = v215;
                _os_log_impl(&_mh_execute_header, v207, v208, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v209, 0x16u);
                swift_arrayDestroy();
              }

              v216 = objc_opt_self();
              v217 = String._bridgeToObjectiveC()();
              sub_100729CB0(1);
              v218 = String._bridgeToObjectiveC()();

              sub_100729CB0(v117);
              v219 = String._bridgeToObjectiveC()();

              [v216 unauthorizedErrorWithMissingEntitlement:v217 requestedAccessLevel:v218 currentAccesslevel:v219];

              swift_willThrow();

LABEL_131:

              return;
            }

            v132[6] = sub_10021CDBC(v134, v136 + 1);
          }

          else
          {
            v137 = v132[6];
            v138 = v117;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v271 = v132[6];
          sub_1002C8398(v100, v117, isUniquelyReferenced_nonNull_native);
          v132[6] = v271;

          swift_endAccess();
LABEL_89:
          if (((*(v86 + 64) | (*(v86 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v140 = Logger.logObject.getter();
            v141 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              v245 = v100;
              v144 = v143;
              v266[0] = v143;
              *v142 = v232;
              LOBYTE(v271) = 0;
              v145 = String.init<A>(describing:)();
              v147 = sub_10000668C(v145, v146, v266);

              *(v142 + 4) = v147;
              _os_log_impl(&_mh_execute_header, v140, v141, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v142, 0xCu);
              sub_10000607C(v144);
              v100 = v245;
            }
          }

          v117 = *(v86 + 64);
          if (*(v86 + 68) >> 14 == 2 && (v117 & 1) == 0)
          {
            goto LABEL_124;
          }

          if ((v117 & 0xFFFF000000000001 | (*(v86 + 68) << 32) & 0xFFFFC00000000001) == 0x800000000000)
          {
            v148 = Logger.logObject.getter();
            v149 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v245 = v100;
              v152 = v151;
              v266[0] = v151;
              *v150 = v232;
              LOBYTE(v271) = 1;
              v153 = String.init<A>(describing:)();
              v155 = sub_10000668C(v153, v154, v266);

              *(v150 + 4) = v155;
              _os_log_impl(&_mh_execute_header, v148, v149, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v150, 0xCu);
              sub_10000607C(v152);
              v100 = v245;
            }
          }

          if (*(v86 + 68) >> 14 == 2)
          {
            LODWORD(v117) = *(v86 + 64);
            if ((v117 & 1) == 0)
            {
LABEL_124:
              if (qword_1009367A0 == -1)
              {
                goto LABEL_125;
              }

              goto LABEL_142;
            }
          }

          swift_retain_n();
          v156 = v253;
          v157 = v100;
          v158 = v86;
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.default.getter();

          v161 = os_log_type_enabled(v159, v160);
          v253 = v156;
          if (v161)
          {
            v236 = v160;
            v162 = swift_slowAlloc();
            v163 = v157;
            v164 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            v271 = v235;
            *v162 = v231;
            *(v162 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
            *(v162 + 12) = 2082;
            v165 = *(v158 + 40);
            v267 = *(v158 + 24);
            *v268 = v165;
            *&v268[14] = *(v158 + 54);
            sub_100009DAC(&v267, v266);
            v166 = sub_1000063E8();
            v168 = v167;
            sub_1005812D4(&v267);
            v169 = sub_10000668C(v166, v168, &v271);

            *(v162 + 14) = v169;
            *(v162 + 22) = 2114;
            *(v162 + 24) = v156;
            *v164 = v156;
            *(v162 + 32) = 2112;
            v170 = v156;
            v245 = v163;
            v171 = [v163 objectID];
            *(v162 + 34) = v171;
            v164[1] = v171;
            *(v162 + 42) = 2082;
            v266[0] = _swiftEmptyArrayStorage;
            sub_100026EF4(0, 2, 0);
            v172 = v266[0];
            v174 = *(v266[0] + 16);
            v173 = *(v266[0] + 24);
            v175 = v173 >> 1;
            v176 = v174 + 1;
            if (v173 >> 1 <= v174)
            {
              sub_100026EF4((v173 > 1), v174 + 1, 1);
              v172 = v266[0];
              v173 = *(v266[0] + 24);
              v175 = v173 >> 1;
            }

            *(v172 + 16) = v176;
            v177 = v172 + 16 * v174;
            *(v177 + 32) = 0x44497463656A626FLL;
            *(v177 + 40) = 0xE800000000000000;
            v266[0] = v172;
            if (v175 <= v176)
            {
              sub_100026EF4((v173 > 1), v174 + 2, 1);
              v172 = v266[0];
            }

            *(v172 + 16) = v174 + 2;
            v178 = v172 + 16 * v176;
            strcpy((v178 + 32), "modifiedDate");
            *(v178 + 45) = 0;
            *(v178 + 46) = -5120;
            v179 = Array.description.getter();
            v181 = v180;

            v182 = sub_10000668C(v179, v181, &v271);

            *(v162 + 44) = v182;
            *(v162 + 52) = 1024;
            v183 = v262;
            LODWORD(v182) = *(v262 + 104);

            *(v162 + 54) = v182;

            _os_log_impl(&_mh_execute_header, v159, v236, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v162, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();

            v32 = v183;
            v83 = v263;
            v157 = v245;
          }

          else
          {

            v32 = v158;
          }

          v184 = v243;
          v185 = [v243 uuid];
          v186 = v246;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v187 = UUID.uuidString.getter();
          v189 = v188;
          v247(v186, v258);
          v190 = sub_1003DA134(v187, v189);
          LOBYTE(v29) = v254;
          if (v83)
          {

            goto LABEL_131;
          }

          v191 = v190;

          if (!v191)
          {
            v220 = v261;

            v221 = objc_opt_self();
            v266[0] = 0;
            v266[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(97);
            v222._countAndFlagsBits = 0xD00000000000005FLL;
            v222._object = 0x80000001007FE6B0;
            String.append(_:)(v222);
            v223 = [v184 description];
            v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v226 = v225;

            v227._countAndFlagsBits = v224;
            v227._object = v226;
            String.append(_:)(v227);

            v228 = String._bridgeToObjectiveC()();

            [v221 internalErrorWithDebugDescription:v228];

            swift_willThrow();
            return;
          }

          sub_1004A963C(v261, v157, v191);

          v192 = v157;
          v193 = [v192 changedValues];
          v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v194 = v252;
          swift_beginAccess();
          v195 = v253;

          v196 = v194[7];
          v197 = swift_isUniquelyReferenced_nonNull_native();
          v271 = v194[7];
          v194[7] = 0x8000000000000000;
          sub_1002C8688(v31, v195, v197);

          v194[7] = v271;
          swift_endAccess();
          if (*(v32 + 104))
          {
            v263 = 0;

            [v192 updateChangeCount];
          }

          else
          {
            v198 = v29;

            v199 = v195;

            v200 = Logger.logObject.getter();
            v201 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v200, v201))
            {
              v263 = 0;

              v56 = v251;
              LOBYTE(v29) = v198;
              goto LABEL_116;
            }

            v202 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v253 = swift_slowAlloc();
            v266[0] = v253;
            *v202 = v229;
            *(v202 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v266);
            *(v202 + 12) = 1024;
            *(v202 + 14) = 0;

            *(v202 + 18) = 1024;
            *(v202 + 20) = 0;
            *(v202 + 24) = 2114;
            *(v202 + 26) = v199;
            *v32 = v199;
            *(v202 + 34) = 2082;
            v247 = v199;
            sub_1005E2810(v31);
            v263 = 0;

            v203 = Array.description.getter();
            v31 = v204;

            v205 = sub_10000668C(v203, v31, v266);

            *(v202 + 36) = v205;
            _os_log_impl(&_mh_execute_header, v200, v201, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v202, 0x2Cu);
            sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
            LOBYTE(v29) = v254;

            swift_arrayDestroy();
          }

          v56 = v251;
LABEL_116:
          v33 = v242 + 1;
          v28 = v237;
          v26 = v264;
          if (v241 == v237)
          {
            goto LABEL_121;
          }
        }

        v83 = 0;
        v84 = v253;
LABEL_50:
        v86 = v262;
        v87 = *(v262 + 68);
        v88 = v248;
        v89 = v258;
        if (v87 >> 14 >= 2)
        {
          v91 = v254;
          if (v87 >> 14 == 2)
          {
            v90 = *(v262 + 64);
          }

          else
          {
            v90 = 0x7FFFFFFF;
          }
        }

        else
        {
          v90 = 2147483519;
          v91 = v254;
        }

        sub_100009A40(2, v90);
        goto LABEL_57;
      }
    }

    else if ((v47 - 2) >= 3 && v47 != 4499 && v47 != 4599)
    {
      goto LABEL_143;
    }

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v266[0] = v31;
      *v50 = 136315138;
      v51 = [type metadata accessor for REMCDManualSortHint() cdEntityName];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_10000668C(v52, v54, v266);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Performing fetch during upsert {CDType: %s}", v50, 0xCu);
      sub_10000607C(v31);

      v26 = v264;
    }

    v56 = v251;
    v57 = sub_1006603FC(v244, v252);
    v263 = v32;
    if (v32)
    {

LABEL_122:

      return;
    }

    v29 = v57;
    v59 = v253;
    goto LABEL_37;
  }
}

void sub_100616F70(unint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v211 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v209 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v208 = &v192 - v11;
  v221 = type metadata accessor for UUID();
  v215 = *(v221 - 8);
  v12 = v215[8];
  __chkstk_darwin(v221);
  v210 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v218 = &v192 - v15;
  v17 = *(a3 + 2);
  v16 = *(a3 + 3);
  v207 = *(a3 + 4);
  if (qword_100936008 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v202 = type metadata accessor for Logger();
    v18 = sub_100006654(v202, qword_100945730);

    v222 = v18;
    v19 = Logger.logObject.getter();
    LOBYTE(v20) = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = a1 >> 62;
    v220 = a3;
    v225 = a1;
    v219 = (a1 >> 62);
    if (v21)
    {
      v217 = v17;
      v223 = v4;
      v17 = swift_slowAlloc();
      v226[0] = swift_slowAlloc();
      *v17 = 136446978;
      *(v17 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v226);
      *(v17 + 6) = 2048;
      if (v22)
      {
        goto LABEL_140;
      }

      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      *(v17 + 14) = v23;

      *(v17 + 11) = 2082;
      sub_1000060C8(0, &qword_100940370, off_1008D4150);
      v24 = [swift_getObjCClassFromMetadata() description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      a1 = v225;
      v28 = sub_10000668C(v25, v27, v226);

      v17[3] = v28;
      *(v17 + 16) = 2082;
      *(v17 + 34) = sub_10000668C(v217, v16, v226);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v17, 0x2Au);
      swift_arrayDestroy();

      v4 = v223;
      a3 = v220;
      v22 = v219;
    }

    else
    {
    }

    v20 = v224;
    v16 = v22 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      break;
    }

    v226[0] = _swiftEmptyArrayStorage;
    v19 = v226;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_138;
    }

    v17 = v4;
    v29 = 0;
    v30 = a1 & 0xC000000000000001;
    v223 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v4 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v223 + 16))
        {
          goto LABEL_131;
        }

        v31 = *(a1 + 8 * v29 + 32);
      }

      v32 = v31;
      sub_1005E3810([v31 remObjectID], &qword_100940370, off_1008D4150);
      if (v17)
      {

        return;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a3 = *(v226[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v29;
      a1 = v225;
      if (v4 == v16)
      {
        v206 = v226[0];
        v4 = 0;
        v20 = v224;
        a3 = v220;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

  v206 = _swiftEmptyArrayStorage;
LABEL_21:
  v33 = *(v20 + 12);
  if (v33 > 1)
  {
    if ((v33 - 2) >= 3 && v33 != 4499 && v33 != 4599)
    {
      goto LABEL_141;
    }

    goto LABEL_28;
  }

  if (!v33)
  {
LABEL_28:
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v226[0] = v37;
      *v36 = 136315138;
      v38 = a3;
      v39 = [objc_opt_self() cdEntityName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_10000668C(v17, v41, v226);
      v20 = v224;

      *(v36 + 4) = v42;
      a3 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Performing fetch during upsert {CDType: %s}", v36, 0xCu);
      sub_10000607C(v37);
      a1 = v225;
    }

    v43 = v219;
    v44 = sub_100660CF4(v206, a3);
    if (v4)
    {

      return;
    }

    goto LABEL_36;
  }

  if (v33 == 1)
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v226[0] = v49;
      *v48 = 136315138;
      v50 = [objc_opt_self() cdEntityName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      a3 = sub_10000668C(v17, v52, v226);
      v20 = v224;

      *(v48 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v46, v47, "Skipping fetch during upsert {CDType: %s}", v48, 0xCu);
      sub_10000607C(v49);
      a1 = v225;
    }

    v43 = v219;
    v44 = sub_10038F8C0(_swiftEmptyArrayStorage);
LABEL_36:
    v53 = v44;
    if (v43)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (!v16)
      {
LABEL_119:

        return;
      }
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_119;
      }
    }

    v54 = 0;
    v205 = a1 & 0xC000000000000001;
    v204 = a1 & 0xFFFFFFFFFFFFFF8;
    v217 = (v215 + 1);
    v201 = (v215 + 7);
    v200 = (v215 + 6);
    *&v45 = 136446978;
    v196 = v45;
    *&v45 = 136446210;
    v195 = v45;
    *&v45 = 136447490;
    v194 = v45;
    *&v45 = 136447234;
    v192 = v45;
    *&v45 = 136446466;
    v193 = v45;
    v216 = v53;
    v203 = v16;
    while (1)
    {
      if (v205)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a3 = (v54 + 1);
        if (__OFADD__(v54, 1))
        {
          goto LABEL_132;
        }
      }

      else
      {
        if (v54 >= *(v204 + 16))
        {
          goto LABEL_133;
        }

        v55 = *(a1 + 8 * v54 + 32);
        a3 = (v54 + 1);
        if (__OFADD__(v54, 1))
        {
          goto LABEL_132;
        }
      }

      v56 = v55;
      v57 = sub_1005E3810([v56 remObjectID], &qword_100940370, off_1008D4150);
      if (v4)
      {

LABEL_126:

        return;
      }

      v215 = v57;
      v223 = 0;
      v212 = a3;
      v213 = v54;
      v219 = v56;

      v58 = [*(v211 + 16) uuid];
      v59 = v218;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = UUID.uuidString.getter();
      v62 = v61;
      v63 = *v217;
      v64 = v221;
      (*v217)(v59, v221);
      v65 = [objc_opt_self() localInternalAccountID];
      v66 = [v65 uuid];

      v67 = v210;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = UUID.uuidString.getter();
      v70 = v69;
      v214 = v63;
      v63(v67, v64);
      if (v60 == v68 && v62 == v70)
      {
        break;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v71)
      {
        goto LABEL_51;
      }

      v73 = v216;
      v4 = v223;
      v17 = v215;
LABEL_58:
      v76._rawValue = &off_1008E1090;
      v77 = sub_1005F716C(v76, &qword_100940370, off_1008D4150);
      if (*(v73 + 16))
      {
        v78 = sub_100393C74(v17);
        if (v79)
        {
          v80 = v78;

          v81 = *(*(v73 + 56) + 8 * v80);
          a3 = v17;
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v226[0] = v85;
            *v84 = v193;
            *(v84 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v226);
            *(v84 + 12) = 2114;
            *(v84 + 14) = a3;
            *v17 = a3;
            a3 = a3;
            _os_log_impl(&_mh_execute_header, v82, v83, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v84, 0x16u);
            sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

            sub_10000607C(v85);
            v20 = v224;
          }

          else
          {
          }

          a1 = v225;
          goto LABEL_42;
        }
      }

      if (v77 == 2)
      {
        goto LABEL_127;
      }

      if (v77)
      {
        v86 = 0x746E657665;
      }

      else
      {
        v86 = 0x44497463656A626FLL;
      }

      if (v77)
      {
        v87 = 0xE500000000000000;
      }

      else
      {
        v87 = 0xE800000000000000;
      }

      if (v86 != 0x44497463656A626FLL || v87 != 0xE800000000000000)
      {
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v89)
        {
          goto LABEL_76;
        }

        if (v86 != 0x746E657665 || v87 != 0xE500000000000000)
        {
          v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v90 & 1) == 0)
          {
LABEL_127:

            [objc_opt_self() noSuchObjectErrorWithObjectID:v17];
            swift_willThrow();

LABEL_129:
            return;
          }

LABEL_76:

          v88 = v208;
          goto LABEL_77;
        }
      }

      v88 = v208;

LABEL_77:
      v91 = *(v20 + 11);
      sub_1000060C8(0, &qword_100940370, off_1008D4150);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v93 = [ObjCClassFromMetadata entity];
      v94 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v93 insertIntoManagedObjectContext:v91];
      v95 = v207;
      [v91 assignObject:v94 toPersistentStore:v95];

      v96 = v94;
      v97 = [v17 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v98 = v221;
      (*v201)(v88, 0, 1, v221);
      v99 = v209;
      sub_10018E470(v88, v209);
      LODWORD(v98) = (*v200)(v99, 1, v98);
      v100 = v96;
      isa = 0;
      if (v98 != 1)
      {
        v102 = v209;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v214(v102, v221);
      }

      [v100 setIdentifier:{isa, v192}];

      sub_1000050A4(v88, &unk_100939D90, "8\n\r");
      v17 = v17;

      v103 = v100;
      v16 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      v105 = os_log_type_enabled(v16, v104);
      v215 = v103;
      v223 = v4;
      if (v105)
      {
        v106 = v103;
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *v107 = v196;
        *(v107 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v231);
        *(v107 + 12) = 2082;
        v109 = *(v224 + 10);
        v229 = *(v224 + 6);
        *v230 = v109;
        *&v230[14] = *(v224 + 54);
        sub_100009DAC(&v229, v226);
        v110 = sub_1000063E8();
        v112 = v111;
        sub_1005812D4(&v229);
        v113 = sub_10000668C(v110, v112, &v231);

        *(v107 + 14) = v113;
        *(v107 + 22) = 2114;
        *(v107 + 24) = v17;
        *v108 = v17;
        *(v107 + 32) = 2112;
        v114 = v17;
        v115 = [v106 objectID];
        *(v107 + 34) = v115;
        v108[1] = v115;
        _os_log_impl(&_mh_execute_header, v16, v104, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v107, 0x2Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
        a3 = v220;

        swift_arrayDestroy();
        v20 = v224;

        a1 = v225;
      }

      else
      {

        a1 = v225;
        a3 = v220;
      }

      swift_beginAccess();
      v116 = *(a3 + 6);
      if ((v116 & 0xC000000000000001) != 0)
      {
        if (v116 < 0)
        {
          v19 = *(a3 + 6);
        }

        else
        {
          v19 = (v116 & 0xFFFFFFFFFFFFFF8);
        }

        v117 = v17;
        v118 = v215;
        v119 = v215;
        v120 = __CocoaDictionary.count.getter();
        if (__OFADD__(v120, 1))
        {
          goto LABEL_139;
        }

        *(a3 + 6) = sub_10021CDBC(v19, v120 + 1);
      }

      else
      {
        v121 = *(a3 + 6);
        v122 = v17;
        v118 = v215;
        v123 = v215;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v231 = *(a3 + 6);
      sub_1002C8398(v118, v17, isUniquelyReferenced_nonNull_native);
      *(a3 + 6) = v231;

      swift_endAccess();
      if (((v20[16] | (*(v20 + 34) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          a3 = swift_slowAlloc();
          v226[0] = a3;
          *v127 = v195;
          LOBYTE(v231) = 0;
          v128 = String.init<A>(describing:)();
          v130 = sub_10000668C(v128, v129, v226);
          a1 = v225;

          *(v127 + 4) = v130;
          v20 = v224;
          _os_log_impl(&_mh_execute_header, v125, v126, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v127, 0xCu);
          sub_10000607C(a3);

          v118 = v215;
        }
      }

      v131 = v20[16];
      if (*(v20 + 34) >> 14 == 2 && (v131 & 1) == 0)
      {
        goto LABEL_120;
      }

      if ((v131 & 0xFFFF000000000001 | (*(v20 + 34) << 32) & 0xFFFFC00000000001) == 0x800000000000)
      {
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          a3 = swift_slowAlloc();
          v226[0] = a3;
          *v134 = v195;
          LOBYTE(v231) = 1;
          v135 = String.init<A>(describing:)();
          v137 = sub_10000668C(v135, v136, v226);
          a1 = v225;

          *(v134 + 4) = v137;
          v20 = v224;
          _os_log_impl(&_mh_execute_header, v132, v133, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v134, 0xCu);
          sub_10000607C(a3);

          v118 = v215;
        }
      }

      if (*(v20 + 34) >> 14 == 2)
      {
        LODWORD(v131) = v20[16];
        if ((v131 & 1) == 0)
        {
LABEL_120:
          if (qword_1009367A0 != -1)
          {
            swift_once();
          }

          sub_100006654(v202, qword_100950D98);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            v226[0] = swift_slowAlloc();
            *v181 = v193;
            v182 = sub_100729CB0(1);
            v184 = sub_10000668C(v182, v183, v226);

            *(v181 + 4) = v184;
            *(v181 + 12) = 2082;
            v185 = sub_100729CB0(v131);
            v187 = sub_10000668C(v185, v186, v226);

            *(v181 + 14) = v187;
            _os_log_impl(&_mh_execute_header, v179, v180, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v181, 0x16u);
            swift_arrayDestroy();
          }

          v188 = objc_opt_self();
          v189 = String._bridgeToObjectiveC()();
          sub_100729CB0(1);
          v190 = String._bridgeToObjectiveC()();

          sub_100729CB0(v131);
          v191 = String._bridgeToObjectiveC()();

          [v188 unauthorizedErrorWithMissingEntitlement:v189 requestedAccessLevel:v190 currentAccesslevel:v191];

          swift_willThrow();

          v56 = v215;

          goto LABEL_126;
        }
      }

      swift_retain_n();
      v17 = v17;
      v138 = v118;
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v139, v140))
      {
        v199 = v140;
        a3 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v231 = v198;
        *a3 = v194;
        *(a3 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v231);
        *(a3 + 6) = 2082;
        v142 = *(v20 + 10);
        v227 = *(v20 + 6);
        *v228 = v142;
        *&v228[14] = *(v20 + 54);
        sub_100009DAC(&v227, v226);
        v143 = sub_1000063E8();
        v145 = v144;
        sub_1005812D4(&v227);
        v146 = sub_10000668C(v143, v145, &v231);

        *(a3 + 14) = v146;
        *(a3 + 11) = 2114;
        *(a3 + 3) = v17;
        *v141 = v17;
        *(a3 + 16) = 2112;
        v215 = v17;
        v147 = v17;
        v148 = [v138 objectID];
        *(a3 + 34) = v148;
        v197 = v141;
        v141[1] = v148;
        *(a3 + 21) = 2082;
        v226[0] = _swiftEmptyArrayStorage;
        sub_100026EF4(0, 2, 0);
        v149 = v226[0];
        v151 = *(v226[0] + 16);
        v150 = *(v226[0] + 24);
        v152 = v150 >> 1;
        v153 = v151 + 1;
        if (v150 >> 1 <= v151)
        {
          sub_100026EF4((v150 > 1), v151 + 1, 1);
          v149 = v226[0];
          v150 = *(v226[0] + 24);
          v152 = v150 >> 1;
        }

        *(v149 + 16) = v153;
        v154 = v149 + 16 * v151;
        *(v154 + 32) = 0x44497463656A626FLL;
        *(v154 + 40) = 0xE800000000000000;
        v226[0] = v149;
        if (v152 <= v153)
        {
          sub_100026EF4((v150 > 1), v151 + 2, 1);
          v149 = v226[0];
        }

        *(v149 + 16) = v151 + 2;
        v155 = v149 + 16 * v153;
        *(v155 + 32) = 0x746E657665;
        *(v155 + 40) = 0xE500000000000000;
        v156 = Array.description.getter();
        v158 = v157;

        v159 = sub_10000668C(v156, v158, &v231);

        *(a3 + 44) = v159;
        *(a3 + 26) = 1024;
        v20 = v224;
        v160 = *(v224 + 104);

        *(a3 + 54) = v160;

        _os_log_impl(&_mh_execute_header, v139, v199, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", a3, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        a1 = v225;
        v17 = v215;
      }

      else
      {
      }

      v161 = v219;
      v162 = [v219 remObjectID];
      v16 = [v162 uuid];

      v163 = v218;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = UUID._bridgeToObjectiveC()().super.isa;
      v214(v163, v221);
      [v138 setIdentifier:v19];

      v164 = [v161 event];
      if (v164 < -32768)
      {
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        v23 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_5;
      }

      if (v164 >= 0x8000)
      {
        goto LABEL_137;
      }

      [v138 setEvent:v164];
      v165 = [v138 changedValues];

      v166 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v220;
      swift_beginAccess();
      v168 = v17;

      v169 = *(v167 + 7);
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v231 = *(v167 + 7);
      *(v167 + 7) = 0x8000000000000000;
      sub_1002C8688(v166, v168, v170);

      *(v167 + 7) = v231;
      swift_endAccess();
      if (*(v20 + 104) == 1)
      {

        [v138 updateChangeCount];

        v4 = v223;
      }

      else
      {

        v17 = v20;
        v171 = v168;

        v172 = Logger.logObject.getter();
        a3 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v172, a3))
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v226[0] = v215;
          *v173 = v192;
          *(v173 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v226);
          *(v173 + 12) = 1024;
          *(v173 + 14) = 0;

          *(v173 + 18) = 1024;
          *(v173 + 20) = 1;
          *(v173 + 24) = 2114;
          *(v173 + 26) = v171;
          *v174 = v171;
          *(v173 + 34) = 2082;
          v214 = v171;
          v175 = v223;
          sub_1005E2810(v166);
          v4 = v175;

          v176 = Array.description.getter();
          v17 = v177;

          v178 = sub_10000668C(v176, v17, v226);

          *(v173 + 36) = v178;
          _os_log_impl(&_mh_execute_header, v172, a3, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v173, 0x2Cu);
          sub_1000050A4(v174, &unk_100938E70, &unk_100797230);
          a1 = v225;

          swift_arrayDestroy();

          v20 = v224;
        }

        else
        {

          v4 = v223;
          v20 = v17;
        }
      }

LABEL_42:
      v16 = v203;
      v54 = v213 + 1;
      if (v212 == v203)
      {
        goto LABEL_119;
      }
    }

LABEL_51:
    v72 = *(v20 + 34);
    v73 = v216;
    v74 = v223;
    if (v72 >> 14 >= 2)
    {
      v17 = v215;
      if (v72 >> 14 == 2)
      {
        v75 = v20[16];
      }

      else
      {
        v75 = 0x7FFFFFFF;
      }
    }

    else
    {
      v75 = 2147483519;
      v17 = v215;
    }

    sub_100009A40(2, v75);
    v4 = v74;
    if (v74)
    {

      goto LABEL_129;
    }

    goto LABEL_58;
  }

LABEL_141:
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown mode", 12, 2);
  __break(1u);
}

void sub_10061904C(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v240 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v237 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v236 = &v214 - v13;
  v242 = type metadata accessor for UUID();
  v14 = *(v242 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v242);
  v239 = &v214 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v238 = &v214 - v18;
  v19 = a3[2];
  v20 = a3[3];
  v243 = a3;
  v235 = a3[4];
  if (qword_100936008 != -1)
  {
LABEL_143:
    swift_once();
  }

  v233 = type metadata accessor for Logger();
  v21 = sub_100006654(v233, qword_100945730);

  v244 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = (a1 >> 62);
  v246 = v6;
  v248 = a1;
  v241 = (a1 >> 62);
  v234 = v14;
  if (!v24)
  {

    goto LABEL_7;
  }

  *&v247 = v19;
  v19 = swift_slowAlloc();
  v249[0] = swift_slowAlloc();
  *v19 = 136446978;
  *(v19 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v249);
  *(v19 + 12) = 2048;
  v245 = v5;
  if (v25)
  {
    goto LABEL_146;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v19 + 14) = i;

    *(v19 + 22) = 2082;
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v27 = [swift_getObjCClassFromMetadata() description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v249);

    *(v19 + 24) = v31;
    a1 = v248;
    *(v19 + 32) = 2082;
    *(v19 + 34) = sub_10000668C(v247, v20, v249);
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v19, 0x2Au);
    swift_arrayDestroy();

    v5 = v245;
    v6 = v246;
    v25 = v241;
LABEL_7:
    v14 = v25 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = _swiftEmptyArrayStorage;
    if (!v14)
    {
      break;
    }

    v249[0] = _swiftEmptyArrayStorage;
    v22 = v249;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v6 = a1 & 0xC000000000000001;
      *&v247 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v33 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v6)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v247 + 16))
          {
            __break(1u);
            goto LABEL_143;
          }

          v34 = *(a1 + 8 * v19 + 32);
        }

        v35 = v34;
        sub_1005E3810([v34 remObjectID], &qword_100940360, off_1008D4138);
        v20 = v5;
        if (v5)
        {

          return;
        }

        v22 = v249;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = *(v249[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v248;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v19;
        v5 = 0;
        if (v33 == v14)
        {
          v32 = v249[0];
          v6 = v246;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_141:

      return;
    }

    __break(1u);
LABEL_146:
    ;
  }

LABEL_20:
  v37 = *(v6 + 96);
  if (v37 > 1)
  {
    if ((v37 - 2) >= 3 && v37 != 4499 && v37 != 4599)
    {
      goto LABEL_151;
    }

LABEL_27:
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v249[0] = v20;
      *v40 = 136315138;
      v41 = [objc_opt_self() cdEntityName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_10000668C(v42, v44, v249);

      *(v40 + 4) = v45;
      a1 = v248;
      _os_log_impl(&_mh_execute_header, v38, v39, "Performing fetch during upsert {CDType: %s}", v40, 0xCu);
      sub_10000607C(v20);
    }

    v46 = sub_1006615EC(v32, v243);
    if (v5)
    {
      goto LABEL_136;
    }

    goto LABEL_35;
  }

  if (!v37)
  {
    goto LABEL_27;
  }

  if (v37 != 1)
  {
LABEL_151:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v249[0] = v20;
    *v50 = 136315138;
    v51 = [objc_opt_self() cdEntityName];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = sub_10000668C(v52, v54, v249);

    *(v50 + 4) = v55;
    a1 = v248;
    _os_log_impl(&_mh_execute_header, v48, v49, "Skipping fetch during upsert {CDType: %s}", v50, 0xCu);
    sub_10000607C(v20);
  }

  v46 = sub_10038F8D4(_swiftEmptyArrayStorage);
LABEL_35:
  v56 = v46;
  if (v241)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
    if (!v57)
    {
LABEL_135:

LABEL_136:

      return;
    }
  }

  else
  {
    v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v57)
    {
      goto LABEL_135;
    }
  }

  v58 = 0;
  v59 = a1 & 0xC000000000000001;
  v226 = a1 & 0xFFFFFFFFFFFFFF8;
  v225 = a1 + 32;
  v229 = (v234 + 8);
  v228 = 0x80000001007EA8C0;
  v224 = v234 + 56;
  v223 = (v234 + 48);
  *&v47 = 136446978;
  v220 = v47;
  *&v47 = 136446210;
  v247 = v47;
  *&v47 = 136447490;
  v217 = v47;
  *&v47 = 136447234;
  v216 = v47;
  *&v47 = 136446466;
  v219 = v47;
  v231 = v32;
  v232 = v56;
  v222 = v57;
  v221 = a1 & 0xC000000000000001;
  while (v59)
  {
    v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v61 = __OFADD__(v58, 1);
    v62 = v58 + 1;
    if (v61)
    {
      goto LABEL_147;
    }

LABEL_43:
    v227 = v62;
    v63 = v60;
    v64 = sub_1005E3810([v63 remObjectID], &qword_100940360, off_1008D4138);
    if (v5)
    {

      return;
    }

    v234 = v64;
    v245 = 0;
    v241 = v63;

    v65 = [*(v240 + 16) uuid];
    v66 = v238;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = UUID.uuidString.getter();
    v69 = v68;
    v70 = *v229;
    v71 = v66;
    v72 = v242;
    (*v229)(v71, v242);
    v73 = [objc_opt_self() localInternalAccountID];
    v74 = [v73 uuid];

    v75 = v239;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = UUID.uuidString.getter();
    v78 = v77;
    v230 = v70;
    (v70)(v75, v72);
    if (v67 == v76 && v69 == v78)
    {

      v79 = v234;
      v80 = v246;
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79 = v234;
      v80 = v246;
      if ((v81 & 1) == 0)
      {
        v83 = v232;
        goto LABEL_55;
      }
    }

    v82 = *(v80 + 68);
    v83 = v232;
    if (v82 >> 14 >= 2)
    {
      if (v82 >> 14 == 2)
      {
        v84 = *(v80 + 64);
      }

      else
      {
        v84 = 0x7FFFFFFF;
      }
    }

    else
    {
      v84 = 2147483519;
    }

    v85 = v245;
    sub_100009A40(2, v84);
    v245 = v85;
    if (v85)
    {

      return;
    }

LABEL_55:
    v86 = sub_1005F79C4();
    if (!*(v83 + 16) || (v87 = sub_100393C74(v79), (v88 & 1) == 0))
    {
      if (v86 != 3)
      {
        if (!v86)
        {
LABEL_63:
          v97 = v236;

LABEL_66:

          v99 = *(v80 + 88);
          sub_1000060C8(0, &qword_100940360, off_1008D4138);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v101 = [ObjCClassFromMetadata entity];
          v102 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v101 insertIntoManagedObjectContext:v99];
          v103 = v235;
          [v99 assignObject:v102 toPersistentStore:v103];

          v104 = v102;
          v105 = [v79 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v106 = v242;
          (*v224)(v97, 0, 1, v242);
          v107 = v237;
          sub_10018E470(v97, v237);
          LODWORD(v106) = (*v223)(v107, 1, v106);
          v108 = v104;
          isa = 0;
          if (v106 != 1)
          {
            v110 = v237;
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (v230)(v110, v242);
          }

          [v108 setIdentifier:isa];

          sub_1000050A4(v97, &unk_100939D90, "8\n\r");
          v111 = v79;
          v112 = v246;

          v113 = v108;
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();

          v116 = os_log_type_enabled(v114, v115);
          v234 = v113;
          v230 = v111;
          if (v116)
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v254 = swift_slowAlloc();
            *v117 = v220;
            *(v117 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v254);
            *(v117 + 12) = 2082;
            v119 = *(v112 + 40);
            v252 = *(v112 + 24);
            *v253 = v119;
            *&v253[14] = *(v112 + 54);
            sub_100009DAC(&v252, v249);
            v218 = v115;
            v120 = sub_1000063E8();
            v122 = v121;
            sub_1005812D4(&v252);
            v123 = sub_10000668C(v120, v122, &v254);

            *(v117 + 14) = v123;
            *(v117 + 22) = 2114;
            *(v117 + 24) = v111;
            *v118 = v111;
            *(v117 + 32) = 2112;
            v124 = v111;
            v125 = [v113 objectID];
            *(v117 + 34) = v125;
            v118[1] = v125;
            _os_log_impl(&_mh_execute_header, v114, v218, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v117, 0x2Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();
          }

          v126 = v243;
          swift_beginAccess();
          v127 = v126[6];
          if ((v127 & 0xC000000000000001) != 0)
          {
            if (v127 < 0)
            {
              v128 = v126[6];
            }

            else
            {
              v128 = v127 & 0xFFFFFFFFFFFFFF8;
            }

            v20 = v230;
            v129 = v230;
            v130 = v234;
            v131 = v234;
            v132 = __CocoaDictionary.count.getter();
            if (__OFADD__(v132, 1))
            {
              goto LABEL_149;
            }

            v126[6] = sub_10021CDBC(v128, v132 + 1);
          }

          else
          {
            v133 = v126[6];
            v20 = v230;
            v134 = v230;
            v130 = v234;
            v135 = v234;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v254 = v126[6];
          sub_1002C8398(v130, v20, isUniquelyReferenced_nonNull_native);
          v126[6] = v254;

          swift_endAccess();
          v137 = 0;
          v138 = *(v112 + 64) | (*(v112 + 68) << 32);
          do
          {
            if ((v138 & 0xC00000000001) == 0x800000000000)
            {
              v139 = *(&off_1008E3140 + v137 + 32);
              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v249[0] = v143;
                *v142 = v247;
                LOBYTE(v254) = v139;
                v144 = String.init<A>(describing:)();
                v146 = sub_10000668C(v144, v145, v249);
                v112 = v246;

                *(v142 + 4) = v146;
                _os_log_impl(&_mh_execute_header, v140, v141, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v142, 0xCu);
                sub_10000607C(v143);
              }
            }

            v20 = *(v112 + 64);
            if (*(v112 + 68) >> 14 == 2 && (*(v112 + 64) & 1) == 0)
            {
              if (qword_1009367A0 != -1)
              {
                goto LABEL_150;
              }

              goto LABEL_132;
            }

            ++v137;
            v138 = v20 & 0xFFFF0000FFFFFFFFLL | (*(v112 + 68) << 32);
          }

          while (v137 != 3);
          swift_retain_n();
          v20 = v230;
          v5 = v234;
          v148 = Logger.logObject.getter();
          v149 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v148, v149))
          {
            v218 = v149;
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v215 = swift_slowAlloc();
            v254 = v215;
            *v150 = v217;
            *(v150 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v254);
            *(v150 + 12) = 2082;
            v152 = *(v112 + 40);
            v250 = *(v112 + 24);
            *v251 = v152;
            *&v251[14] = *(v112 + 54);
            sub_100009DAC(&v250, v249);
            v153 = sub_1000063E8();
            v155 = v154;
            sub_1005812D4(&v250);
            v156 = sub_10000668C(v153, v155, &v254);

            *(v150 + 14) = v156;
            *(v150 + 22) = 2114;
            *(v150 + 24) = v20;
            *v151 = v20;
            *(v150 + 32) = 2112;
            v157 = v20;
            v158 = [v5 objectID];
            *(v150 + 34) = v158;
            v214 = v151;
            v151[1] = v158;
            *(v150 + 42) = 2082;
            v249[0] = _swiftEmptyArrayStorage;
            sub_100026EF4(0, 3, 0);
            v230 = v148;
            v162 = v249[0];
            v164 = *(v249[0] + 16);
            v163 = *(v249[0] + 24);
            v165 = v164 + 1;
            if (v164 >= v163 >> 1)
            {
              sub_100026EF4((v163 > 1), v164 + 1, 1);
              v162 = v249[0];
            }

            *(v162 + 16) = v165;
            v166 = v162 + 16 * v164;
            *(v166 + 32) = 0x44497463656A626FLL;
            *(v166 + 40) = 0xE800000000000000;
            v234 = v5;
            v167 = v228;
            v249[0] = v162;
            v168 = *(v162 + 24);
            if (v165 >= v168 >> 1)
            {
              sub_100026EF4((v168 > 1), v164 + 2, 1);
              v162 = v249[0];
            }

            *(v162 + 16) = v164 + 2;
            v169 = v162 + 16 * v165;
            *(v169 + 32) = 0xD000000000000012;
            *(v169 + 40) = v167;
            v5 = v234;
            v249[0] = v162;
            v171 = *(v162 + 16);
            v170 = *(v162 + 24);
            if (v171 >= v170 >> 1)
            {
              sub_100026EF4((v170 > 1), v171 + 1, 1);
              v162 = v249[0];
            }

            *(v162 + 16) = v171 + 1;
            v172 = v162 + 16 * v171;
            *(v172 + 32) = 0x74696D69786F7270;
            *(v172 + 40) = 0xE900000000000079;
            v173 = Array.description.getter();
            v175 = v174;

            v176 = sub_10000668C(v173, v175, &v254);

            *(v150 + 44) = v176;
            *(v150 + 52) = 1024;
            v112 = v246;
            v177 = *(v246 + 104);

            *(v150 + 54) = v177;

            v178 = v230;
            _os_log_impl(&_mh_execute_header, v230, v218, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v150, 0x3Au);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            swift_arrayDestroy();
          }

          else
          {
          }

          v22 = v241;
          v179 = v245;
          sub_1001D4010(v241, v5, &off_1008E3140);
          if (!v179)
          {
            v180 = [v5 changedValues];

            v181 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
            v182 = v243;
            swift_beginAccess();
            v183 = v20;

            v184 = v182[7];
            v185 = swift_isUniquelyReferenced_nonNull_native();
            v254 = v182[7];
            v182[7] = 0x8000000000000000;
            sub_1002C8688(v181, v183, v185);

            v182[7] = v254;
            swift_endAccess();
            if (*(v112 + 104))
            {

              [v5 updateChangeCount];

              v5 = 0;
            }

            else
            {

              v186 = v183;

              v187 = Logger.logObject.getter();
              LOWORD(v20) = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v187, v20))
              {
                v188 = swift_slowAlloc();
                v189 = swift_slowAlloc();
                v230 = v187;
                v190 = v189;
                v245 = swift_slowAlloc();
                v249[0] = v245;
                *v188 = v216;
                *(v188 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v249);
                *(v188 + 12) = 1024;
                *(v188 + 14) = 0;

                *(v188 + 18) = 1024;
                *(v188 + 20) = 1;
                *(v188 + 24) = 2114;
                *(v188 + 26) = v186;
                *v190 = v186;
                *(v188 + 34) = 2082;
                v191 = v186;
                sub_1005E2810(v181);

                v192 = Array.description.getter();
                v194 = v193;

                v195 = sub_10000668C(v192, v194, v249);

                *(v188 + 36) = v195;
                v196 = v230;
                _os_log_impl(&_mh_execute_header, v230, v20, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v188, 0x2Cu);
                sub_1000050A4(v190, &unk_100938E70, &unk_100797230);

                swift_arrayDestroy();

                v5 = 0;
              }

              else
              {

                v5 = 0;
              }
            }

            goto LABEL_116;
          }

          goto LABEL_141;
        }

        v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v98)
        {
          goto LABEL_65;
        }

        if (v86 == 1)
        {
          v159 = 0xD000000000000012;
        }

        else
        {
          v159 = 0x74696D69786F7270;
        }

        if (v86 == 1)
        {
          v160 = v228;
        }

        else
        {
          v160 = 0xE900000000000079;
        }

        if (v159 == 0xD000000000000012 && v228 == v160)
        {
          goto LABEL_63;
        }

        v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v161)
        {
          goto LABEL_65;
        }

        if (v86 == 1)
        {
          v197 = 0xD000000000000012;
        }

        else
        {
          v197 = 0x74696D69786F7270;
        }

        if (v86 == 1)
        {
          v198 = v228;
        }

        else
        {
          v198 = 0xE900000000000079;
        }

        if (v197 == 0x74696D69786F7270 && v198 == 0xE900000000000079)
        {
          goto LABEL_63;
        }

        v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v199)
        {
LABEL_65:
          v97 = v236;
          goto LABEL_66;
        }
      }

      [objc_opt_self() noSuchObjectErrorWithObjectID:v79];
      swift_willThrow();

      return;
    }

    v89 = v87;

    v20 = *(*(v83 + 56) + 8 * v89);
    v90 = v79;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v249[0] = v95;
      *v93 = v219;
      *(v93 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v249);
      *(v93 + 12) = 2114;
      *(v93 + 14) = v90;
      *v94 = v90;
      v96 = v90;
      _os_log_impl(&_mh_execute_header, v91, v92, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v93, 0x16u);
      sub_1000050A4(v94, &unk_100938E70, &unk_100797230);

      sub_10000607C(v95);
    }

    else
    {
    }

    v5 = v245;
LABEL_116:
    v58 = v227;
    v59 = v221;
    if (v227 == v222)
    {
      goto LABEL_135;
    }
  }

  if (v58 >= *(v226 + 16))
  {
    goto LABEL_148;
  }

  v60 = *(v225 + 8 * v58);
  v61 = __OFADD__(v58, 1);
  v62 = v58 + 1;
  if (!v61)
  {
    goto LABEL_43;
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  swift_once();
LABEL_132:
  sub_100006654(v233, qword_100950D98);
  v200 = Logger.logObject.getter();
  v201 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v249[0] = swift_slowAlloc();
    *v202 = v219;
    v203 = sub_100729CB0(1);
    v205 = sub_10000668C(v203, v204, v249);

    *(v202 + 4) = v205;
    *(v202 + 12) = 2082;
    v206 = sub_100729CB0(v20);
    v208 = sub_10000668C(v206, v207, v249);

    *(v202 + 14) = v208;
    _os_log_impl(&_mh_execute_header, v200, v201, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v202, 0x16u);
    swift_arrayDestroy();
  }

  v209 = objc_opt_self();
  v210 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v211 = String._bridgeToObjectiveC()();

  sub_100729CB0(v20);
  v212 = String._bridgeToObjectiveC()();

  [v209 unauthorizedErrorWithMissingEntitlement:v210 requestedAccessLevel:v211 currentAccesslevel:v212];

  swift_willThrow();

  v213 = v234;
}

void sub_10061B198(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v252 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v250 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v247 = &v227 - v13;
  v14 = type metadata accessor for DateComponents();
  v258 = *(v14 - 8);
  v15 = *(v258 + 64);
  __chkstk_darwin(v14);
  v253 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for UUID();
  v257 = *(v262 - 8);
  v17 = *(v257 + 64);
  __chkstk_darwin(v262);
  v251 = &v227 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v261 = &v227 - v20;
  v21 = a3[3];
  v263 = a3[2];
  v255 = a3;
  v246 = a3[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_136;
  }

LABEL_2:
  v243 = type metadata accessor for Logger();
  v22 = sub_100006654(v243, qword_100945730);

  v256 = v22;
  v23 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.info.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = (a1 >> 62);
  v27 = v5;
  v259 = v6;
  v249 = v14;
  v264 = a1;
  v260 = (a1 >> 62);
  if (v25)
  {
    v14 = swift_slowAlloc();
    v265[0] = swift_slowAlloc();
    *v14 = 136446978;
    *(v14 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v265);
    *(v14 + 12) = 2048;
    if (!(a1 >> 62))
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_141;
  }

  while (1)
  {
    v21 = v26 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      break;
    }

    v265[0] = _swiftEmptyArrayStorage;
    v23 = v265;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v6 = a1 & 0xC000000000000001;
      v263 = (a1 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v5 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= v263[2])
          {
            goto LABEL_135;
          }

          v35 = *(a1 + 8 * v14 + 32);
        }

        v36 = v35;
        v37 = sub_1005E3810([v35 remObjectID], &qword_100940350, off_1008D4130);
        if (v27)
        {

          return;
        }

        LOBYTE(v24) = v37;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v38 = *(v265[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v264;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v14;
        if (v5 == v21)
        {
          v21 = v265[0];
          v5 = 0;
          v6 = v259;
          v26 = v260;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v14 + 14) = v28;

    *(v14 + 22) = 2082;
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v29 = [swift_getObjCClassFromMetadata() description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_10000668C(v30, v32, v265);

    *(v14 + 24) = v33;
    v34 = v263;
    a1 = v264;
    *(v14 + 32) = 2082;
    *(v14 + 34) = sub_10000668C(v34, v21, v265);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v14, 0x2Au);
    swift_arrayDestroy();

    v5 = v27;
    v6 = v259;
    v26 = v260;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_21:
  v39 = *(v6 + 96);
  if (v39 > 1)
  {
    if ((v39 - 2) >= 3 && v39 != 4499 && v39 != 4599)
    {
      goto LABEL_144;
    }

LABEL_28:
    v40 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v14))
    {
      v41 = swift_slowAlloc();
      v248 = v21;
      v42 = v41;
      v43 = swift_slowAlloc();
      v265[0] = v43;
      *v42 = 136315138;
      v44 = [objc_opt_self() cdEntityName];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v26;
      v47 = v46;

      v48 = sub_10000668C(v45, v47, v265);
      v26 = v24;

      *(v42 + 4) = v48;
      a1 = v264;
      _os_log_impl(&_mh_execute_header, v40, v14, "Performing fetch during upsert {CDType: %s}", v42, 0xCu);
      sub_10000607C(v43);

      v21 = v248;
    }

    v49 = sub_100661EE4(v21, v255);
    if (v5)
    {
      goto LABEL_124;
    }

    goto LABEL_36;
  }

  if (!v39)
  {
    goto LABEL_28;
  }

  if (v39 != 1)
  {
LABEL_144:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v51 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v14))
  {
    v52 = swift_slowAlloc();
    v248 = v21;
    v53 = v52;
    v54 = swift_slowAlloc();
    v265[0] = v54;
    *v53 = 136315138;
    v55 = [objc_opt_self() cdEntityName];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v26;
    v58 = v57;

    v59 = sub_10000668C(v56, v58, v265);
    v26 = v24;

    *(v53 + 4) = v59;
    a1 = v264;
    _os_log_impl(&_mh_execute_header, v51, v14, "Skipping fetch during upsert {CDType: %s}", v53, 0xCu);
    sub_10000607C(v54);

    v21 = v248;
  }

  v49 = sub_10038F8E8(_swiftEmptyArrayStorage);
LABEL_36:
  v23 = v49;
  if (v26)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (!v27)
    {
LABEL_123:

LABEL_124:

      return;
    }
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_123;
    }
  }

  v60 = 0;
  v241 = a1 & 0xC000000000000001;
  v240 = a1 & 0xFFFFFFFFFFFFFF8;
  v239 = a1 + 32;
  v260 = (v257 + 8);
  v237 = (v257 + 56);
  v236 = (v257 + 48);
  v257 = v258 + 8;
  *&v50 = 136446978;
  v235 = v50;
  *&v50 = 136446210;
  v234 = v50;
  *&v50 = 136447490;
  v233 = v50;
  *&v50 = 136447234;
  v227 = v50;
  *&v50 = 136446466;
  v228 = v50;
  v248 = v21;
  v245 = v23;
  v238 = v27;
  while (1)
  {
    if (v241)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v62 = __OFADD__(v60, 1);
      v63 = v60 + 1;
      if (v62)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (v60 >= *(v240 + 16))
      {
        goto LABEL_140;
      }

      v61 = *(v239 + 8 * v60);
      v62 = __OFADD__(v60, 1);
      v63 = v60 + 1;
      if (v62)
      {
        goto LABEL_139;
      }
    }

    v64 = v61;
    v65 = sub_1005E3810([v64 remObjectID], &qword_100940350, off_1008D4130);
    if (v5)
    {

LABEL_133:
      return;
    }

    v254 = 0;
    v244 = v65;
    v242 = v63;
    v263 = v64;

    v66 = [*(v252 + 16) uuid];
    v67 = v261;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = UUID.uuidString.getter();
    v70 = v69;
    v71 = *v260;
    v72 = v262;
    (*v260)(v67, v262);
    v73 = [objc_opt_self() localInternalAccountID];
    v74 = [v73 uuid];

    v75 = v251;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = UUID.uuidString.getter();
    v78 = v77;
    v258 = v71;
    v71(v75, v72);
    if (v68 != v76)
    {
      goto LABEL_51;
    }

    if (v70 == v78)
    {

      v79 = v259;
      v24 = v244;
    }

    else
    {
LABEL_51:
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79 = v259;
      v24 = v244;
      if ((v80 & 1) == 0)
      {
        v82 = v245;
        v5 = v254;
        goto LABEL_59;
      }
    }

    v81 = *(v79 + 68);
    v82 = v245;
    v64 = v263;
    v83 = v254;
    if (v81 >> 14 >= 2)
    {
      if (v81 >> 14 == 2)
      {
        v84 = *(v79 + 64);
      }

      else
      {
        v84 = 0x7FFFFFFF;
      }
    }

    else
    {
      v84 = 2147483519;
    }

    sub_100009A40(2, v84);
    v5 = v83;
    if (v83)
    {

      goto LABEL_133;
    }

LABEL_59:
    v85._rawValue = &off_1008E0E30;
    v14 = sub_1005F716C(v85, &qword_100940350, off_1008D4130);
    if (v82[2].isa)
    {
      v86 = sub_100393C74(v24);
      if (v87)
      {
        v88 = v86;

        v89 = *(v82[7].isa + v88);
        v90 = v24;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v14 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v265[0] = v94;
          *v14 = v228;
          *(v14 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v265);
          *(v14 + 12) = 2114;
          *(v14 + 14) = v90;
          *v93 = v90;
          v95 = v90;
          _os_log_impl(&_mh_execute_header, v91, v92, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v14, 0x16u);
          sub_1000050A4(v93, &unk_100938E70, &unk_100797230);

          sub_10000607C(v94);
        }

        else
        {
        }

        goto LABEL_43;
      }
    }

    if (v14 == 2)
    {
      goto LABEL_131;
    }

    if (v14)
    {
      v96 = 0x706D6F4365746164;
    }

    else
    {
      v96 = 0x44497463656A626FLL;
    }

    if (v14)
    {
      v97 = 0xEE0073746E656E6FLL;
    }

    else
    {
      v97 = 0xE800000000000000;
    }

    if (v96 == 0x44497463656A626FLL && v97 == 0xE800000000000000)
    {
LABEL_72:
      v98 = v247;

      goto LABEL_78;
    }

    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v99 & 1) == 0)
    {
      if (v96 == 0x706D6F4365746164 && v97 == 0xEE0073746E656E6FLL)
      {
        goto LABEL_72;
      }

      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v100 & 1) == 0)
      {
LABEL_131:

        [objc_opt_self() noSuchObjectErrorWithObjectID:v24];
        swift_willThrow();

        return;
      }
    }

    v98 = v247;
LABEL_78:
    v101 = *(v79 + 88);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v103 = [ObjCClassFromMetadata entity];
    v104 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v103 insertIntoManagedObjectContext:v101];
    v105 = v246;
    [v101 assignObject:v104 toPersistentStore:v105];

    v106 = v104;
    v107 = [v24 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v108 = v262;
    (*v237)(v98, 0, 1, v262);
    v109 = v250;
    sub_10018E470(v98, v250);
    LODWORD(v108) = (*v236)(v109, 1, v108);
    v110 = v106;
    isa = 0;
    if (v108 != 1)
    {
      v112 = v250;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (v258)(v112, v262);
    }

    [v110 setIdentifier:{isa, v227}];

    sub_1000050A4(v98, &unk_100939D90, "8\n\r");
    v113 = v24;

    v114 = v110;
    v115 = Logger.logObject.getter();
    v116 = v79;
    v117 = static os_log_type_t.default.getter();

    v118 = os_log_type_enabled(v115, v117);
    v244 = v113;
    if (v118)
    {
      v119 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v270 = v254;
      *v119 = v235;
      *(v119 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v270);
      *(v119 + 12) = 2082;
      v120 = *(v116 + 40);
      v268 = *(v116 + 24);
      *v269 = v120;
      *&v269[14] = *(v116 + 54);
      sub_100009DAC(&v268, v265);
      v121 = sub_1000063E8();
      v123 = v122;
      sub_1005812D4(&v268);
      v124 = sub_10000668C(v121, v123, &v270);

      *(v119 + 14) = v124;
      *(v119 + 22) = 2114;
      *(v119 + 24) = v113;
      *v24 = v113;
      *(v119 + 32) = 2112;
      v125 = v113;
      v126 = [v114 objectID];
      *(v119 + 34) = v126;
      v24[1] = v126;
      _os_log_impl(&_mh_execute_header, v115, v117, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v119, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    v127 = v255;
    v128 = v249;
    v129 = v253;
    swift_beginAccess();
    v130 = *(v127 + 48);
    v254 = v5;
    if ((v130 & 0xC000000000000001) == 0)
    {
      v132 = v244;
      v136 = v244;
      v137 = v114;
      v5 = v254;
      goto LABEL_89;
    }

    v131 = v130 < 0 ? v130 : v130 & 0xFFFFFFFFFFFFFF8;
    v132 = v244;
    v133 = v244;
    v134 = v114;
    v135 = __CocoaDictionary.count.getter();
    if (__OFADD__(v135, 1))
    {
      break;
    }

    *(v127 + 48) = sub_10021CDBC(v131, v135 + 1);
LABEL_89:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v270 = *(v127 + 48);
    v24 = v114;
    sub_1002C8398(v114, v132, isUniquelyReferenced_nonNull_native);
    *(v127 + 48) = v270;

    swift_endAccess();
    v139 = v259;
    if (((*(v139 + 64) | (*(v139 + 68) << 32)) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v265[0] = v143;
        *v142 = v234;
        LOBYTE(v270) = 0;
        v144 = String.init<A>(describing:)();
        v146 = sub_10000668C(v144, v145, v265);

        *(v142 + 4) = v146;
        v139 = v259;
        _os_log_impl(&_mh_execute_header, v140, v141, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v142, 0xCu);
        sub_10000607C(v143);
        v132 = v244;

        v129 = v253;

        v5 = v254;
      }

      else
      {

        v5 = v254;
        v139 = v259;
      }
    }

    v127 = *(v139 + 64);
    if (*(v139 + 68) >> 14 == 2 && (v127 & 1) == 0)
    {
      goto LABEL_126;
    }

    if ((v127 & 0xFFFF000000000001 | (*(v139 + 68) << 32) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v265[0] = v150;
        *v149 = v234;
        LOBYTE(v270) = 1;
        v151 = String.init<A>(describing:)();
        v153 = sub_10000668C(v151, v152, v265);

        *(v149 + 4) = v153;
        _os_log_impl(&_mh_execute_header, v147, v148, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v149, 0xCu);
        sub_10000607C(v150);
        v132 = v244;

        v129 = v253;
      }

      v5 = v254;
    }

    if (*(v259 + 68) >> 14 == 2)
    {
      LODWORD(v127) = *(v259 + 64);
      if ((v127 & 1) == 0)
      {
LABEL_126:
        if (qword_1009367A0 == -1)
        {
          goto LABEL_127;
        }

        goto LABEL_143;
      }
    }

    v154 = v259;
    swift_retain_n();
    v155 = v132;
    v24 = v24;
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    v158 = os_log_type_enabled(v156, v157);
    v244 = v155;
    if (v158)
    {
      v231 = v157;
      v232 = v156;
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v270 = v230;
      *v159 = v233;
      *(v159 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v270);
      *(v159 + 12) = 2082;
      v161 = *(v154 + 40);
      v266 = *(v154 + 24);
      *v267 = v161;
      *&v267[14] = *(v154 + 54);
      sub_100009DAC(&v266, v265);
      v162 = sub_1000063E8();
      v164 = v163;
      sub_1005812D4(&v266);
      v165 = sub_10000668C(v162, v164, &v270);

      *(v159 + 14) = v165;
      *(v159 + 22) = 2114;
      *(v159 + 24) = v155;
      *v160 = v155;
      *(v159 + 32) = 2112;
      v166 = v155;
      v167 = [v24 objectID];
      *(v159 + 34) = v167;
      v229 = v160;
      v160[1] = v167;
      *(v159 + 42) = 2082;
      v265[0] = _swiftEmptyArrayStorage;
      sub_100026EF4(0, 2, 0);
      v168 = v265[0];
      v170 = *(v265[0] + 16);
      v169 = *(v265[0] + 24);
      v171 = v169 >> 1;
      v172 = v170 + 1;
      if (v169 >> 1 <= v170)
      {
        sub_100026EF4((v169 > 1), v170 + 1, 1);
        v168 = v265[0];
        v169 = *(v265[0] + 24);
        v171 = v169 >> 1;
      }

      *(v168 + 16) = v172;
      v173 = v168 + 16 * v170;
      *(v173 + 32) = 0x44497463656A626FLL;
      *(v173 + 40) = 0xE800000000000000;
      v265[0] = v168;
      if (v171 <= v172)
      {
        sub_100026EF4((v169 > 1), v170 + 2, 1);
        v168 = v265[0];
      }

      *(v168 + 16) = v170 + 2;
      v174 = v168 + 16 * v172;
      strcpy((v174 + 32), "dateComponents");
      *(v174 + 47) = -18;
      v175 = Array.description.getter();
      v177 = v176;

      v178 = sub_10000668C(v175, v177, &v270);

      *(v159 + 44) = v178;
      *(v159 + 52) = 1024;
      v179 = *(v259 + 104);

      *(v159 + 54) = v179;

      v180 = v232;
      _os_log_impl(&_mh_execute_header, v232, v231, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v159, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v5 = v254;
      v128 = v249;
      v129 = v253;
    }

    else
    {
    }

    v181 = 0;
    v182 = 0;
    do
    {
      v187 = v181;
      if (*(&off_1008E3168 + v182 + 32))
      {
        v188 = type metadata accessor for JSONEncoder();
        v189 = *(v188 + 48);
        v190 = *(v188 + 52);
        swift_allocObject();
        JSONEncoder.init()();
        v191 = [v263 dateComponents];
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1006ABE80(&qword_10093B8C8, &type metadata accessor for DateComponents);
        v192 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v194 = v129;
        if (v5)
        {

          (*v257)(v129, v128);
          return;
        }

        v195 = v192;
        v196 = v193;
        (*v257)(v194, v128);

        v197 = Data._bridgeToObjectiveC()().super.isa;
        [v24 setDateComponentsData:v197];

        sub_10001BBA0(v195, v196);
        v129 = v194;
      }

      else
      {
        v183 = [v263 remObjectID];
        v184 = [v183 uuid];

        v185 = v261;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v186 = UUID._bridgeToObjectiveC()().super.isa;
        (v258)(v185, v262);
        [v24 setIdentifier:v186];
      }

      v181 = 1;
      v182 = &_mh_execute_header.magic + 1;
    }

    while ((v187 & 1) == 0);
    v198 = [v24 changedValues];

    v199 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v200 = v255;
    swift_beginAccess();
    v14 = v244;

    v201 = v200[7];
    v202 = swift_isUniquelyReferenced_nonNull_native();
    v270 = v200[7];
    v200[7] = 0x8000000000000000;
    sub_1002C8688(v199, v14, v202);

    v200[7] = v270;
    swift_endAccess();
    if (*(v259 + 104))
    {

      [v24 updateChangeCount];

LABEL_118:
      goto LABEL_43;
    }

    v14 = v14;

    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      v254 = v203;
      v207 = v206;
      v258 = swift_slowAlloc();
      v265[0] = v258;
      *v205 = v227;
      *(v205 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v265);
      *(v205 + 12) = 1024;
      *(v205 + 14) = 0;

      *(v205 + 18) = 1024;
      *(v205 + 20) = 1;
      *(v205 + 24) = 2114;
      *(v205 + 26) = v14;
      *v207 = v14;
      *(v205 + 34) = 2082;
      v14 = v14;
      sub_1005E2810(v199);

      v208 = Array.description.getter();
      v210 = v209;

      v211 = sub_10000668C(v208, v210, v265);

      *(v205 + 36) = v211;
      v212 = v204;
      v213 = v254;
      _os_log_impl(&_mh_execute_header, v254, v212, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v205, 0x2Cu);
      sub_1000050A4(v207, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      goto LABEL_118;
    }

LABEL_43:
    v27 = v238;
    v60 = v242;
    v21 = v248;
    v23 = v245;
    if (v242 == v238)
    {
      goto LABEL_123;
    }
  }

  __break(1u);
LABEL_143:
  swift_once();
LABEL_127:
  sub_100006654(v243, qword_100950D98);
  v214 = Logger.logObject.getter();
  v215 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    v265[0] = swift_slowAlloc();
    *v216 = v228;
    v217 = sub_100729CB0(1);
    v219 = sub_10000668C(v217, v218, v265);

    *(v216 + 4) = v219;
    *(v216 + 12) = 2082;
    v220 = sub_100729CB0(v127);
    v222 = sub_10000668C(v220, v221, v265);

    *(v216 + 14) = v222;
    _os_log_impl(&_mh_execute_header, v214, v215, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v216, 0x16u);
    swift_arrayDestroy();
  }

  v223 = objc_opt_self();
  v224 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v225 = String._bridgeToObjectiveC()();

  sub_100729CB0(v127);
  v226 = String._bridgeToObjectiveC()();

  [v223 unauthorizedErrorWithMissingEntitlement:v224 requestedAccessLevel:v225 currentAccesslevel:v226];

  swift_willThrow();
}

void sub_10061D3F4(unint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v211 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v209 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v216 = &v193 - v11;
  v222 = type metadata accessor for UUID();
  v215 = *(v222 - 8);
  v12 = v215[8];
  __chkstk_darwin(v222);
  v210 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v219 = &v193 - v15;
  v17 = *(a3 + 2);
  v16 = *(a3 + 3);
  v208 = *(a3 + 4);
  if (qword_100936008 != -1)
  {
    goto LABEL_131;
  }

LABEL_2:
  v201 = type metadata accessor for Logger();
  v18 = sub_100006654(v201, qword_100945730);

  v223 = v18;
  v19 = Logger.logObject.getter();
  LOBYTE(v20) = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = a1 >> 62;
  v221 = a3;
  v226 = a1;
  v220 = (a1 >> 62);
  if (v21)
  {
    v218 = v17;
    v224 = v4;
    v17 = swift_slowAlloc();
    v227[0] = swift_slowAlloc();
    *v17 = 136446978;
    *(v17 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v227);
    *(v17 + 6) = 2048;
    if (!v22)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_135;
  }

  while (1)
  {
    v20 = v225;
    v16 = v22 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      break;
    }

    v227[0] = _swiftEmptyArrayStorage;
    v19 = v227;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = v4;
      v29 = 0;
      v30 = a1 & 0xC000000000000001;
      v224 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v4 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v30)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *(v224 + 16))
          {
            goto LABEL_128;
          }

          v31 = *(a1 + 8 * v29 + 32);
        }

        v32 = v31;
        sub_1005E3810([v31 remObjectID], &qword_10094F688, off_1008D4140);
        if (v17)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a3 = *(v227[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v29;
        a1 = v226;
        if (v4 == v16)
        {
          v207 = v227[0];
          v4 = 0;
          v20 = v225;
          a3 = v221;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v17 + 14) = v23;

    *(v17 + 11) = 2082;
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    v24 = [swift_getObjCClassFromMetadata() description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    a1 = v226;
    v28 = sub_10000668C(v25, v27, v227);

    v17[3] = v28;
    *(v17 + 16) = 2082;
    *(v17 + 34) = sub_10000668C(v218, v16, v227);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v17, 0x2Au);
    swift_arrayDestroy();

    v4 = v224;
    a3 = v221;
    v22 = v220;
  }

  v207 = _swiftEmptyArrayStorage;
LABEL_21:
  v33 = *(v20 + 12);
  if (v33 <= 1)
  {
    if (v33)
    {
      if (v33 != 1)
      {
LABEL_136:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v227[0] = v49;
        *v48 = 136315138;
        v50 = [objc_opt_self() cdEntityName];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        a3 = sub_10000668C(v17, v52, v227);
        v20 = v225;

        *(v48 + 4) = a3;
        _os_log_impl(&_mh_execute_header, v46, v47, "Skipping fetch during upsert {CDType: %s}", v48, 0xCu);
        sub_10000607C(v49);
        a1 = v226;
      }

      v43 = v220;
      v44 = sub_10038F8FC(_swiftEmptyArrayStorage);
      goto LABEL_36;
    }
  }

  else if ((v33 - 2) >= 3 && v33 != 4499 && v33 != 4599)
  {
    goto LABEL_136;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v227[0] = v37;
    *v36 = 136315138;
    v38 = a3;
    v39 = [objc_opt_self() cdEntityName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10000668C(v17, v41, v227);
    v20 = v225;

    *(v36 + 4) = v42;
    a3 = v38;
    _os_log_impl(&_mh_execute_header, v34, v35, "Performing fetch during upsert {CDType: %s}", v36, 0xCu);
    sub_10000607C(v37);
    a1 = v226;
  }

  v43 = v220;
  v44 = sub_1006627DC(v207, a3);
  if (v4)
  {

    return;
  }

LABEL_36:
  v53 = v44;
  if (v43)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
LABEL_116:

      return;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_116;
    }
  }

  v54 = 0;
  v206 = a1 & 0xC000000000000001;
  v205 = a1 & 0xFFFFFFFFFFFFFF8;
  v218 = (v215 + 1);
  v203 = (v215 + 7);
  v202 = (v215 + 6);
  *&v45 = 136446978;
  v197 = v45;
  *&v45 = 136446210;
  v196 = v45;
  *&v45 = 136447490;
  v195 = v45;
  *&v45 = 136447234;
  v193 = v45;
  *&v45 = 136446466;
  v194 = v45;
  v217 = v53;
  v204 = v16;
  while (1)
  {
    if (v206)
    {
      v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a3 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v54 >= *(v205 + 16))
      {
        goto LABEL_130;
      }

      v55 = *(a1 + 8 * v54 + 32);
      a3 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        goto LABEL_129;
      }
    }

    v56 = v55;
    v57 = sub_1005E3810([v56 remObjectID], &qword_10094F688, off_1008D4140);
    if (v4)
    {

LABEL_123:

      return;
    }

    v215 = v57;
    v224 = 0;
    v212 = a3;
    v213 = v54;
    v220 = v56;

    v58 = [*(v211 + 16) uuid];
    v59 = v219;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = UUID.uuidString.getter();
    v62 = v61;
    v63 = *v218;
    v64 = v222;
    (*v218)(v59, v222);
    v65 = [objc_opt_self() localInternalAccountID];
    v66 = [v65 uuid];

    v67 = v210;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = UUID.uuidString.getter();
    v70 = v69;
    v214 = v63;
    v63(v67, v64);
    if (v60 != v68)
    {
      goto LABEL_50;
    }

    if (v62 == v70)
    {
    }

    else
    {
LABEL_50:
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v71 & 1) == 0)
      {
        v73 = v217;
        v4 = v224;
        v17 = v215;
        goto LABEL_58;
      }
    }

    v72 = v20[34];
    v73 = v217;
    v74 = v224;
    if (v72 >> 14 >= 2)
    {
      v17 = v215;
      v75 = v72 >> 14 == 2 ? *(v20 + 16) : 0x7FFFFFFF;
    }

    else
    {
      v75 = 2147483519;
      v17 = v215;
    }

    sub_100009A40(2, v75);
    v4 = v74;
    if (v74)
    {
      break;
    }

LABEL_58:
    v76._rawValue = &off_1008E07F0;
    v77 = sub_1005F716C(v76, &qword_10094F688, off_1008D4140);
    if (*(v73 + 16))
    {
      v78 = sub_100393C74(v17);
      if (v79)
      {
        v80 = v78;

        v81 = *(*(v73 + 56) + 8 * v80);
        a3 = v17;
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v227[0] = v85;
          *v84 = v194;
          *(v84 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v227);
          *(v84 + 12) = 2114;
          *(v84 + 14) = a3;
          *v17 = a3;
          a3 = a3;
          _os_log_impl(&_mh_execute_header, v82, v83, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v84, 0x16u);
          sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

          sub_10000607C(v85);
          v20 = v225;
        }

        else
        {
        }

        a1 = v226;
        goto LABEL_42;
      }
    }

    if (v77 == 2)
    {
      goto LABEL_124;
    }

    if (v77)
    {
      v86 = 0x65746E49656D6974;
    }

    else
    {
      v86 = 0x44497463656A626FLL;
    }

    if (v77)
    {
      v87 = 0xEC0000006C617672;
    }

    else
    {
      v87 = 0xE800000000000000;
    }

    if (v86 != 0x44497463656A626FLL || v87 != 0xE800000000000000)
    {
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        goto LABEL_76;
      }

      if (v86 != 0x65746E49656D6974 || v87 != 0xEC0000006C617672)
      {
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v89 & 1) == 0)
        {
LABEL_124:

          [objc_opt_self() noSuchObjectErrorWithObjectID:v17];
          swift_willThrow();

          goto LABEL_126;
        }

        goto LABEL_76;
      }
    }

LABEL_76:

    v90 = *(v20 + 11);
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v92 = [ObjCClassFromMetadata entity];
    v93 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v92 insertIntoManagedObjectContext:v90];
    v94 = v208;
    [v90 assignObject:v93 toPersistentStore:v94];

    v95 = v93;
    v96 = [v17 uuid];
    v97 = v216;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v98 = v222;
    (*v203)(v97, 0, 1, v222);
    v99 = v209;
    sub_10018E470(v97, v209);
    LODWORD(v97) = (*v202)(v99, 1, v98);
    v100 = v95;
    isa = 0;
    if (v97 != 1)
    {
      v102 = v209;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v214(v102, v222);
    }

    [v100 setIdentifier:{isa, v193}];

    sub_1000050A4(v216, &unk_100939D90, "8\n\r");
    v17 = v17;

    v103 = v100;
    v16 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    v105 = os_log_type_enabled(v16, v104);
    v215 = v103;
    v224 = v4;
    if (v105)
    {
      v106 = v103;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      *v107 = v197;
      *(v107 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v232);
      *(v107 + 12) = 2082;
      v109 = *(v225 + 20);
      v230 = *(v225 + 12);
      *v231 = v109;
      *&v231[14] = *(v225 + 27);
      sub_100009DAC(&v230, v227);
      v110 = sub_1000063E8();
      v112 = v111;
      sub_1005812D4(&v230);
      v113 = sub_10000668C(v110, v112, &v232);

      *(v107 + 14) = v113;
      *(v107 + 22) = 2114;
      *(v107 + 24) = v17;
      *v108 = v17;
      *(v107 + 32) = 2112;
      v114 = v17;
      v115 = [v106 objectID];
      *(v107 + 34) = v115;
      v108[1] = v115;
      _os_log_impl(&_mh_execute_header, v16, v104, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v107, 0x2Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      a3 = v221;

      swift_arrayDestroy();
      v20 = v225;

      a1 = v226;
    }

    else
    {

      a1 = v226;
      a3 = v221;
    }

    swift_beginAccess();
    v116 = *(a3 + 6);
    if ((v116 & 0xC000000000000001) != 0)
    {
      if (v116 < 0)
      {
        v19 = *(a3 + 6);
      }

      else
      {
        v19 = (v116 & 0xFFFFFFFFFFFFFF8);
      }

      v117 = v17;
      v118 = v215;
      v119 = v215;
      v120 = __CocoaDictionary.count.getter();
      if (__OFADD__(v120, 1))
      {
        goto LABEL_134;
      }

      *(a3 + 6) = sub_10021CDBC(v19, v120 + 1);
    }

    else
    {
      v121 = *(a3 + 6);
      v122 = v17;
      v118 = v215;
      v123 = v215;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v232 = *(a3 + 6);
    sub_1002C8398(v118, v17, isUniquelyReferenced_nonNull_native);
    *(a3 + 6) = v232;

    swift_endAccess();
    if (((*(v20 + 16) | (v20[34] << 32)) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        a3 = swift_slowAlloc();
        v227[0] = a3;
        *v127 = v196;
        LOBYTE(v232) = 0;
        v128 = String.init<A>(describing:)();
        v130 = sub_10000668C(v128, v129, v227);
        a1 = v226;

        *(v127 + 4) = v130;
        v20 = v225;
        _os_log_impl(&_mh_execute_header, v125, v126, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v127, 0xCu);
        sub_10000607C(a3);

        v118 = v215;
      }
    }

    v131 = *(v20 + 16);
    if (v20[34] >> 14 == 2 && (v131 & 1) == 0)
    {
      goto LABEL_117;
    }

    if ((v131 & 0xFFFF000000000001 | (v20[34] << 32) & 0xFFFFC00000000001) == 0x800000000000)
    {
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        a3 = swift_slowAlloc();
        v227[0] = a3;
        *v134 = v196;
        LOBYTE(v232) = 1;
        v135 = String.init<A>(describing:)();
        v137 = sub_10000668C(v135, v136, v227);
        a1 = v226;

        *(v134 + 4) = v137;
        v20 = v225;
        _os_log_impl(&_mh_execute_header, v132, v133, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v134, 0xCu);
        sub_10000607C(a3);

        v118 = v215;
      }
    }

    if (v20[34] >> 14 == 2)
    {
      LODWORD(v131) = *(v20 + 16);
      if ((v131 & 1) == 0)
      {
LABEL_117:
        if (qword_1009367A0 != -1)
        {
          swift_once();
        }

        sub_100006654(v201, qword_100950D98);
        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v227[0] = swift_slowAlloc();
          *v182 = v194;
          v183 = sub_100729CB0(1);
          v185 = sub_10000668C(v183, v184, v227);

          *(v182 + 4) = v185;
          *(v182 + 12) = 2082;
          v186 = sub_100729CB0(v131);
          v188 = sub_10000668C(v186, v187, v227);

          *(v182 + 14) = v188;
          _os_log_impl(&_mh_execute_header, v180, v181, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v182, 0x16u);
          swift_arrayDestroy();
        }

        v189 = objc_opt_self();
        v190 = String._bridgeToObjectiveC()();
        sub_100729CB0(1);
        v191 = String._bridgeToObjectiveC()();

        sub_100729CB0(v131);
        v192 = String._bridgeToObjectiveC()();

        [v189 unauthorizedErrorWithMissingEntitlement:v190 requestedAccessLevel:v191 currentAccesslevel:v192];

        swift_willThrow();

        v56 = v215;

        goto LABEL_123;
      }
    }

    swift_retain_n();
    v17 = v17;
    v138 = v118;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v140))
    {
      a3 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v232 = v199;
      *a3 = v195;
      *(a3 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v232);
      *(a3 + 6) = 2082;
      v142 = *(v20 + 20);
      v228 = *(v20 + 12);
      *v229 = v142;
      *&v229[14] = *(v20 + 27);
      sub_100009DAC(&v228, v227);
      v143 = sub_1000063E8();
      v145 = v144;
      sub_1005812D4(&v228);
      v146 = sub_10000668C(v143, v145, &v232);

      *(a3 + 14) = v146;
      *(a3 + 11) = 2114;
      *(a3 + 3) = v17;
      *v141 = v17;
      *(a3 + 16) = 2112;
      v215 = v17;
      v147 = v17;
      v148 = [v138 objectID];
      *(a3 + 34) = v148;
      v198 = v141;
      v141[1] = v148;
      *(a3 + 21) = 2082;
      v227[0] = _swiftEmptyArrayStorage;
      sub_100026EF4(0, 2, 0);
      v149 = v227[0];
      v151 = *(v227[0] + 16);
      v150 = *(v227[0] + 24);
      v152 = v150 >> 1;
      v153 = v151 + 1;
      v200 = v140;
      if (v150 >> 1 <= v151)
      {
        sub_100026EF4((v150 > 1), v151 + 1, 1);
        v149 = v227[0];
        v150 = *(v227[0] + 24);
        v152 = v150 >> 1;
      }

      *(v149 + 16) = v153;
      v154 = v149 + 16 * v151;
      *(v154 + 32) = 0x44497463656A626FLL;
      *(v154 + 40) = 0xE800000000000000;
      v227[0] = v149;
      if (v152 <= v153)
      {
        sub_100026EF4((v150 > 1), v151 + 2, 1);
        v149 = v227[0];
      }

      *(v149 + 16) = v151 + 2;
      v155 = v149 + 16 * v153;
      strcpy((v155 + 32), "timeInterval");
      *(v155 + 45) = 0;
      *(v155 + 46) = -5120;
      v156 = Array.description.getter();
      v158 = v157;

      v159 = sub_10000668C(v156, v158, &v232);

      *(a3 + 44) = v159;
      *(a3 + 26) = 1024;
      v20 = v225;
      v160 = *(v225 + 104);

      *(a3 + 54) = v160;

      _os_log_impl(&_mh_execute_header, v139, v200, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", a3, 0x3Au);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      swift_arrayDestroy();

      a1 = v226;
      v17 = v215;
    }

    else
    {
    }

    v161 = v220;
    v162 = [v220 remObjectID];
    v163 = [v162 uuid];

    v164 = v219;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v165 = UUID._bridgeToObjectiveC()().super.isa;
    v214(v164, v222);
    [v138 setIdentifier:v165];

    [v161 timeInterval];
    [v138 setTimeInterval:?];
    v166 = [v138 changedValues];

    v167 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v168 = v221;
    swift_beginAccess();
    v169 = v17;

    v170 = *(v168 + 7);
    v171 = swift_isUniquelyReferenced_nonNull_native();
    v232 = *(v168 + 7);
    *(v168 + 7) = 0x8000000000000000;
    sub_1002C8688(v167, v169, v171);

    *(v168 + 7) = v232;
    swift_endAccess();
    if (*(v20 + 104) == 1)
    {

      [v138 updateChangeCount];

      v4 = v224;
    }

    else
    {

      v17 = v20;
      v172 = v169;

      v173 = Logger.logObject.getter();
      a3 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v173, a3))
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v227[0] = v215;
        *v174 = v193;
        *(v174 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v227);
        *(v174 + 12) = 1024;
        *(v174 + 14) = 0;

        *(v174 + 18) = 1024;
        *(v174 + 20) = 1;
        *(v174 + 24) = 2114;
        *(v174 + 26) = v172;
        *v175 = v172;
        *(v174 + 34) = 2082;
        v214 = v172;
        v176 = v224;
        sub_1005E2810(v167);
        v4 = v176;

        v177 = Array.description.getter();
        v17 = v178;

        v179 = sub_10000668C(v177, v17, v227);

        *(v174 + 36) = v179;
        _os_log_impl(&_mh_execute_header, v173, a3, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v174, 0x2Cu);
        sub_1000050A4(v175, &unk_100938E70, &unk_100797230);
        a1 = v226;

        swift_arrayDestroy();

        v20 = v225;
      }

      else
      {

        v4 = v224;
        v20 = v17;
      }
    }

LABEL_42:
    v16 = v204;
    v54 = v213 + 1;
    if (v212 == v204)
    {
      goto LABEL_116;
    }
  }

LABEL_126:
}

void sub_10061F4CC(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v262 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v259 = v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v257 = v235 - v13;
  v263 = type metadata accessor for UUID();
  v258 = *(v263 - 8);
  v14 = v258[8];
  __chkstk_darwin(v263);
  v261 = v235 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v260 = v235 - v17;
  v19 = a3[2];
  v18 = a3[3];
  v264 = a3;
  v256 = a3[4];
  if (qword_100936008 != -1)
  {
LABEL_158:
    swift_once();
  }

  v255 = type metadata accessor for Logger();
  v20 = sub_100006654(v255, qword_100945730);

  v267 = v20;
  v21 = Logger.logObject.getter();
  LOBYTE(v22) = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = a1 >> 62;
  v268 = v6;
  v270 = a1;
  *&v265 = a1 >> 62;
  if (!v23)
  {

    goto LABEL_7;
  }

  v269 = v19;
  v266 = v5;
  v5 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v271 = v19;
  *v5 = 136446978;
  *(v5 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
  *(v5 + 12) = 2048;
  if (v24)
  {
    goto LABEL_161;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v5 + 14) = i;

    *(v5 + 22) = 2082;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v26 = [swift_getObjCClassFromMetadata() description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10000668C(v27, v29, &v271);

    *(v5 + 24) = v30;
    v31 = v269;
    a1 = v270;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_10000668C(v31, v18, &v271);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
    swift_arrayDestroy();

    v5 = v266;
    v6 = v268;
    v24 = v265;
LABEL_7:
    v22 = v24 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = _swiftEmptyArrayStorage;
    if (!v22)
    {
      break;
    }

    v271 = _swiftEmptyArrayStorage;
    v21 = &v271;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v22 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v33 = a1 & 0xC000000000000001;
      v269 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v6 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_156:

          return;
        }

        if (v33)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v269 + 16))
          {
            __break(1u);
            goto LABEL_158;
          }

          v34 = *(a1 + 8 * v18 + 32);
        }

        v35 = v34;
        sub_1005E3810([v34 remObjectID], &unk_100938870, off_1008D4128);
        v19 = v5;
        if (v5)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = v271[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v270;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v18;
        v5 = 0;
        if (v6 == v22)
        {
          v32 = v271;
          v6 = v268;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_161:
    ;
  }

LABEL_20:
  v37 = *(v6 + 96);
  if (v37 <= 1)
  {
    if (v37)
    {
      if (v37 != 1)
      {
LABEL_166:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v271 = v54;
        *v53 = 136315138;
        v55 = [objc_opt_self() cdEntityName];
        v56 = v32;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = v57;
        v32 = v56;
        v61 = sub_10000668C(v60, v59, &v271);

        *(v53 + 4) = v61;
        a1 = v270;
        _os_log_impl(&_mh_execute_header, v51, v52, "Skipping fetch during upsert {CDType: %s}", v53, 0xCu);
        sub_10000607C(v54);
      }

      v49 = sub_10038FA48(_swiftEmptyArrayStorage);
      goto LABEL_35;
    }
  }

  else if ((v37 - 2) >= 3 && v37 != 4499 && v37 != 4599)
  {
    goto LABEL_166;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v271 = v41;
    *v40 = 136315138;
    v42 = [objc_opt_self() cdEntityName];
    v43 = v32;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = v44;
    v32 = v43;
    v48 = sub_10000668C(v47, v46, &v271);

    *(v40 + 4) = v48;
    a1 = v270;
    _os_log_impl(&_mh_execute_header, v38, v39, "Performing fetch during upsert {CDType: %s}", v40, 0xCu);
    sub_10000607C(v41);
  }

  v49 = sub_1006630D4(v32, v264);
  if (v5)
  {

    return;
  }

LABEL_35:
  v62 = v49;
  if (v265)
  {
    v63 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v63 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v266 = v5;
  if (!v63)
  {
LABEL_147:

    return;
  }

  v64 = 0;
  v65 = a1 & 0xC000000000000001;
  v66 = a1 & 0xFFFFFFFFFFFFFF8;
  v67 = a1 + 32;
  v252 = (v258 + 1);
  v251 = 0x80000001007E9F30;
  v269 = 0x80000001007E9F10;
  v243 = (v258 + 7);
  v242 = (v258 + 6);
  *&v50 = 136446978;
  v240 = v50;
  *&v50 = 136446210;
  v265 = v50;
  *&v50 = 136447490;
  v239 = v50;
  *&v50 = 136447234;
  v238 = v50;
  *&v50 = 136446466;
  v241 = v50;
  v249 = v32;
  v254 = v62;
  v247 = v63;
  v246 = a1 & 0xC000000000000001;
  v245 = a1 & 0xFFFFFFFFFFFFFF8;
  v244 = a1 + 32;
  while (1)
  {
    if (v65)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v64 >= *(v66 + 16))
      {
        goto LABEL_163;
      }

      v68 = *(v67 + 8 * v64);
    }

    v69 = __OFADD__(v64, 1);
    v70 = v64 + 1;
    v71 = v266;
    if (v69)
    {
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      swift_once();
LABEL_150:
      sub_100006654(v255, qword_100950D98);
      v221 = Logger.logObject.getter();
      v222 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *v223 = v241;
        v224 = sub_100729CB0(1);
        v226 = sub_10000668C(v224, v225, &v271);

        *(v223 + 4) = v226;
        *(v223 + 12) = 2082;
        v227 = sub_100729CB0(v62);
        v229 = sub_10000668C(v227, v228, &v271);

        *(v223 + 14) = v229;
        _os_log_impl(&_mh_execute_header, v221, v222, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v223, 0x16u);
        swift_arrayDestroy();
      }

      v230 = objc_opt_self();
      v231 = String._bridgeToObjectiveC()();
      sub_100729CB0(1);
      v232 = String._bridgeToObjectiveC()();

      sub_100729CB0(v62);
      v233 = String._bridgeToObjectiveC()();

      [v230 unauthorizedErrorWithMissingEntitlement:v231 requestedAccessLevel:v232 currentAccesslevel:v233];

      swift_willThrow();

      v234 = v253;

      return;
    }

    v250 = v70;
    v72 = v68;
    v73 = sub_1005E3810([v72 remObjectID], &unk_100938870, off_1008D4128);
    if (v71)
    {

      return;
    }

    v253 = v73;
    v266 = 0;
    v258 = v72;

    v74 = [*(v262 + 16) uuid];
    v75 = v260;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = UUID.uuidString.getter();
    v78 = v77;
    v79 = *v252;
    v80 = v75;
    v81 = v263;
    (*v252)(v80, v263);
    v82 = [objc_opt_self() localInternalAccountID];
    v83 = [v82 uuid];

    v84 = v261;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = UUID.uuidString.getter();
    v87 = v86;
    v248 = v79;
    (v79)(v84, v81);
    if (v76 != v85)
    {
      goto LABEL_48;
    }

    if (v78 == v87)
    {

      v88 = v251;
      v89 = v253;
    }

    else
    {
LABEL_48:
      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v88 = v251;
      v89 = v253;
      if ((v90 & 1) == 0)
      {
        v92 = v254;
        goto LABEL_56;
      }
    }

    v91 = *(v268 + 68);
    v92 = v254;
    if (v91 >> 14 >= 2)
    {
      if (v91 >> 14 == 2)
      {
        v93 = *(v268 + 64);
      }

      else
      {
        v93 = 0x7FFFFFFF;
      }
    }

    else
    {
      v93 = 2147483519;
    }

    v94 = v266;
    sub_100009A40(2, v93);
    v266 = v94;
    if (v94)
    {

      return;
    }

LABEL_56:
    v95._rawValue = &off_1008E0868;
    v96 = sub_1005F6904(v95, &unk_100938870, off_1008D4128);
    if (!*(v92 + 16))
    {
      break;
    }

    v97 = sub_100393C74(v89);
    if ((v98 & 1) == 0)
    {
      break;
    }

    v99 = v97;

    v100 = *(*(v92 + 56) + 8 * v99);
    v101 = v89;
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v271 = v106;
      *v104 = v241;
      *(v104 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
      *(v104 + 12) = 2114;
      *(v104 + 14) = v101;
      *v105 = v101;
      v107 = v101;
      _os_log_impl(&_mh_execute_header, v102, v103, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v104, 0x16u);
      sub_1000050A4(v105, &unk_100938E70, &unk_100797230);

      sub_10000607C(v106);
    }

    else
    {
    }

    LOWORD(v62) = v254;
LABEL_144:
    v64 = v250;
    v65 = v246;
    v66 = v245;
    v67 = v244;
    if (v250 == v247)
    {
      goto LABEL_147;
    }
  }

  if (v96 != 5)
  {
    v108 = 0;
    while (v108 != 5)
    {
      v110 = *(&off_1008E31B8 + v108 + 32);
      if (v110 <= 1)
      {
        if (*(&off_1008E31B8 + v108 + 32))
        {
          v112 = 0x72656767697274;
        }

        else
        {
          v112 = 0x44497463656A626FLL;
        }

        if (*(&off_1008E31B8 + v108 + 32))
        {
          v113 = 0xE700000000000000;
        }

        else
        {
          v113 = 0xE800000000000000;
        }

        v111 = 0x4449556D72616C61;
      }

      else
      {
        v111 = 0x4449556D72616C61;
        if (v110 == 2)
        {
          v112 = 0xD000000000000010;
          v113 = v269;
        }

        else
        {
          if (v110 == 3)
          {
            v112 = 0x4449556D72616C61;
          }

          else
          {
            v112 = 0xD000000000000010;
          }

          if (v110 == 3)
          {
            v113 = 0xE800000000000000;
          }

          else
          {
            v113 = v88;
          }
        }
      }

      if (v96 == 3)
      {
        v114 = 0xE800000000000000;
      }

      else
      {
        v111 = 0xD000000000000010;
        v114 = v88;
      }

      if (v96 == 2)
      {
        v111 = 0xD000000000000010;
        v114 = v269;
      }

      if (v96)
      {
        v115 = 0x72656767697274;
      }

      else
      {
        v115 = 0x44497463656A626FLL;
      }

      if (v96)
      {
        v116 = 0xE700000000000000;
      }

      else
      {
        v116 = 0xE800000000000000;
      }

      if (v96 <= 1u)
      {
        v117 = v115;
      }

      else
      {
        v117 = v111;
      }

      if (v96 <= 1u)
      {
        v118 = v116;
      }

      else
      {
        v118 = v114;
      }

      if (v112 == v117 && v113 == v118)
      {

LABEL_100:

        v119 = *(v268 + 88);
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v121 = [ObjCClassFromMetadata entity];
        v122 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v121 insertIntoManagedObjectContext:v119];
        v123 = v256;
        [v119 assignObject:v122 toPersistentStore:v123];

        v124 = v122;
        v125 = [v89 uuid];
        v126 = v257;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v127 = v263;
        (*v243)(v126, 0, 1, v263);
        v128 = v259;
        sub_10018E470(v126, v259);
        LODWORD(v127) = (*v242)(v128, 1, v127);
        v129 = v124;
        isa = 0;
        if (v127 != 1)
        {
          v131 = v259;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (v248)(v131, v263);
        }

        [v129 setIdentifier:isa];

        sub_1000050A4(v126, &unk_100939D90, "8\n\r");
        v132 = v89;
        v133 = v268;

        v134 = v129;
        v135 = Logger.logObject.getter();
        v136 = static os_log_type_t.default.getter();

        v137 = os_log_type_enabled(v135, v136);
        v253 = v134;
        v248 = v132;
        if (v137)
        {
          v138 = swift_slowAlloc();
          v139 = v132;
          v140 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          *v138 = v240;
          *(v138 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v276);
          *(v138 + 12) = 2082;
          v141 = *(v133 + 40);
          v274 = *(v133 + 24);
          *v275 = v141;
          *&v275[14] = *(v133 + 54);
          sub_100009DAC(&v274, &v271);
          v142 = sub_1000063E8();
          v144 = v143;
          sub_1005812D4(&v274);
          v145 = sub_10000668C(v142, v144, &v276);

          *(v138 + 14) = v145;
          *(v138 + 22) = 2114;
          *(v138 + 24) = v139;
          *v140 = v139;
          *(v138 + 32) = 2112;
          v146 = v139;
          v147 = [v253 objectID];
          *(v138 + 34) = v147;
          v140[1] = v147;
          _os_log_impl(&_mh_execute_header, v135, v136, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v138, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v148 = v264;
        swift_beginAccess();
        v149 = v148[6];
        if ((v149 & 0xC000000000000001) != 0)
        {
          if (v149 < 0)
          {
            v150 = v148[6];
          }

          else
          {
            v150 = v149 & 0xFFFFFFFFFFFFFF8;
          }

          v62 = v248;
          v151 = v248;
          v152 = v253;
          v153 = v253;
          v154 = __CocoaDictionary.count.getter();
          if (__OFADD__(v154, 1))
          {
            goto LABEL_164;
          }

          v148[6] = sub_10021CDBC(v150, v154 + 1);
        }

        else
        {
          v155 = v148[6];
          v62 = v248;
          v156 = v248;
          v152 = v253;
          v157 = v253;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v276 = v148[6];
        sub_1002C8398(v152, v62, isUniquelyReferenced_nonNull_native);
        v148[6] = v276;

        swift_endAccess();
        v159 = 0;
        v160 = *(v133 + 64) | (*(v133 + 68) << 32);
        do
        {
          if ((v160 & 0xC00000000001) == 0x800000000000)
          {
            v161 = *(&off_1008E31B8 + v159 + 32);
            v162 = Logger.logObject.getter();
            v163 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v162, v163))
            {
              v164 = swift_slowAlloc();
              v165 = swift_slowAlloc();
              v271 = v165;
              *v164 = v265;
              LOBYTE(v276) = v161;
              v166 = String.init<A>(describing:)();
              v168 = sub_10000668C(v166, v167, &v271);
              v133 = v268;

              *(v164 + 4) = v168;
              _os_log_impl(&_mh_execute_header, v162, v163, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v164, 0xCu);
              sub_10000607C(v165);
            }
          }

          v62 = *(v133 + 64);
          if (*(v133 + 68) >> 14 == 2 && (*(v133 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_165;
            }

            goto LABEL_150;
          }

          ++v159;
          v160 = v62 & 0xFFFF0000FFFFFFFFLL | (*(v133 + 68) << 32);
        }

        while (v159 != 5);
        swift_retain_n();
        v22 = v248;
        v18 = v253;
        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v170, v171))
        {
          v237 = v171;
          v172 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v276 = v236;
          *v172 = v239;
          *(v172 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v276);
          *(v172 + 12) = 2082;
          v173 = *(v133 + 40);
          v272 = *(v133 + 24);
          *v273 = v173;
          *&v273[14] = *(v133 + 54);
          sub_100009DAC(&v272, &v271);
          v174 = sub_1000063E8();
          v176 = v175;
          sub_1005812D4(&v272);
          v177 = sub_10000668C(v174, v176, &v276);

          *(v172 + 14) = v177;
          *(v172 + 22) = 2114;
          *(v172 + 24) = v22;
          *v62 = v22;
          *(v172 + 32) = 2112;
          v178 = v22;
          v179 = [v18 objectID];
          *(v172 + 34) = v179;
          v235[1] = v62;
          *(v62 + 8) = v179;
          *(v172 + 42) = 2082;
          v271 = _swiftEmptyArrayStorage;
          sub_100026EF4(0, 5, 0);
          LOWORD(v62) = v254;
          v253 = v18;
          v248 = v22;
          v181 = v271;
          v183 = v271[2];
          v182 = v271[3];
          v184 = v183 + 1;
          if (v183 >= v182 >> 1)
          {
            sub_100026EF4((v182 > 1), v183 + 1, 1);
            v181 = v271;
          }

          v181[2] = v184;
          v185 = &v181[2 * v183];
          v185[4] = 0x44497463656A626FLL;
          v185[5] = 0xE800000000000000;
          v271 = v181;
          v186 = v181[3];
          if (v184 >= v186 >> 1)
          {
            sub_100026EF4((v186 > 1), v183 + 2, 1);
            v181 = v271;
          }

          v181[2] = v183 + 2;
          v187 = &v181[2 * v184];
          v187[4] = 0x72656767697274;
          v187[5] = 0xE700000000000000;
          v188 = v269;
          v271 = v181;
          v190 = v181[2];
          v189 = v181[3];
          v191 = v190 + 1;
          if (v190 >= v189 >> 1)
          {
            sub_100026EF4((v189 > 1), v190 + 1, 1);
            v181 = v271;
          }

          v181[2] = v191;
          v192 = &v181[2 * v190];
          v192[4] = 0xD000000000000010;
          v192[5] = v188;
          v271 = v181;
          v193 = v181[3];
          if (v191 >= v193 >> 1)
          {
            sub_100026EF4((v193 > 1), v190 + 2, 1);
            v181 = v271;
          }

          v181[2] = v190 + 2;
          v194 = &v181[2 * v191];
          v194[4] = 0x4449556D72616C61;
          v194[5] = 0xE800000000000000;
          v133 = v268;
          v195 = v251;
          v271 = v181;
          v197 = v181[2];
          v196 = v181[3];
          if (v197 >= v196 >> 1)
          {
            sub_100026EF4((v196 > 1), v197 + 1, 1);
            v181 = v271;
          }

          v181[2] = v197 + 1;
          v198 = &v181[2 * v197];
          v198[4] = 0xD000000000000010;
          v198[5] = v195;
          v199 = Array.description.getter();
          v201 = v200;

          v202 = sub_10000668C(v199, v201, &v276);

          *(v172 + 44) = v202;
          *(v172 + 52) = 1024;
          v203 = *(v133 + 104);

          *(v172 + 54) = v203;

          _os_log_impl(&_mh_execute_header, v170, v237, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v172, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v180 = v266;
          v18 = v253;
          v22 = v248;
        }

        else
        {

          v180 = v266;
          LOWORD(v62) = v254;
        }

        sub_100212774(v258, v18, &off_1008E31B8, v133);
        if (v180)
        {
          goto LABEL_156;
        }

        v266 = 0;
        v204 = [v18 changedValues];

        v205 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v264;
        swift_beginAccess();
        v207 = v22;

        v208 = v206[7];
        v209 = swift_isUniquelyReferenced_nonNull_native();
        v276 = v206[7];
        v206[7] = 0x8000000000000000;
        sub_1002C8688(v205, v207, v209);

        v206[7] = v276;
        swift_endAccess();
        if (*(v133 + 104))
        {

          [v18 updateChangeCount];

LABEL_142:
          goto LABEL_144;
        }

        v210 = v207;

        v211 = Logger.logObject.getter();
        v212 = v18;
        v213 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v211, v213))
        {
          v214 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v271 = v248;
          *v214 = v238;
          *(v214 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
          v253 = v212;
          *(v214 + 12) = 1024;
          *(v214 + 14) = 0;

          *(v214 + 18) = 1024;
          *(v214 + 20) = 1;
          *(v214 + 24) = 2114;
          *(v214 + 26) = v210;
          *v62 = v210;
          *(v214 + 34) = 2082;
          v215 = v210;
          v216 = v266;
          sub_1005E2810(v205);
          v266 = v216;

          v217 = Array.description.getter();
          v219 = v218;

          v220 = sub_10000668C(v217, v219, &v271);

          *(v214 + 36) = v220;
          _os_log_impl(&_mh_execute_header, v211, v213, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v214, 0x2Cu);
          sub_1000050A4(v62, &unk_100938E70, &unk_100797230);
          LOWORD(v62) = v254;

          swift_arrayDestroy();

          goto LABEL_142;
        }

        goto LABEL_144;
      }

      v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v108;
      if (v109)
      {
        goto LABEL_100;
      }
    }
  }

  [objc_opt_self() noSuchObjectErrorWithObjectID:v89];
  swift_willThrow();
}

void sub_100621758(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v255 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v252 = v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v250 = v227 - v13;
  v256 = type metadata accessor for UUID();
  v14 = *(v256 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v256);
  v254 = v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v253 = v227 - v18;
  v19 = a3[3];
  v262 = a3[2];
  v258 = a3;
  v249 = a3[4];
  if (qword_100936008 != -1)
  {
LABEL_174:
    swift_once();
  }

  v248 = type metadata accessor for Logger();
  v20 = sub_100006654(v248, qword_100945730);

  v259 = v20;
  v21 = Logger.logObject.getter();
  LOBYTE(v22) = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = a1 >> 62;
  v25 = v5;
  v260 = v6;
  v263 = a1;
  v261 = a1 >> 62;
  v251 = v14;
  if (!v23)
  {

    goto LABEL_7;
  }

  v24 = swift_slowAlloc();
  v264 = swift_slowAlloc();
  *v24 = 136446978;
  *(v24 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v264);
  *(v24 + 12) = 2048;
  if (a1 >> 62)
  {
    goto LABEL_177;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v24 + 14) = i;

    *(v24 + 22) = 2082;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v27 = [swift_getObjCClassFromMetadata() description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, &v264);

    *(v24 + 24) = v31;
    v32 = v262;
    a1 = v263;
    *(v24 + 32) = 2082;
    *(v24 + 34) = sub_10000668C(v32, v19, &v264);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v24, 0x2Au);
    swift_arrayDestroy();

    v5 = v25;
    v6 = v260;
    v24 = v261;
LABEL_7:
    v14 = v24 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = _swiftEmptyArrayStorage;
    if (!v14)
    {
      break;
    }

    v264 = _swiftEmptyArrayStorage;
    v21 = &v264;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v6 = a1 & 0xC000000000000001;
      v262 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v5 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_172:

          return;
        }

        if (v6)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v262 + 16))
          {
            __break(1u);
            goto LABEL_174;
          }

          v33 = *(a1 + 8 * v19 + 32);
        }

        v34 = v33;
        sub_1005E3810([v33 remObjectID], &unk_10093F790, off_1008D4158);
        if (v25)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v35 = v264[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v263;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v19;
        if (v5 == v14)
        {
          v22 = v264;
          v5 = 0;
          v6 = v260;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_177:
    ;
  }

LABEL_20:
  v36 = *(v6 + 96);
  if (v36 > 1)
  {
    if ((v36 - 2) >= 3 && v36 != 4499 && v36 != 4599)
    {
      goto LABEL_181;
    }

LABEL_27:
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v264 = v40;
      *v39 = 136315138;
      v41 = [objc_opt_self() cdEntityName];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_10000668C(v42, v44, &v264);

      *(v39 + 4) = v45;
      a1 = v263;
      _os_log_impl(&_mh_execute_header, v37, v38, "Performing fetch during upsert {CDType: %s}", v39, 0xCu);
      sub_10000607C(v40);
    }

    v46 = sub_1006639CC(v22, v258);
    if (v5)
    {
      goto LABEL_162;
    }

    goto LABEL_35;
  }

  if (!v36)
  {
    goto LABEL_27;
  }

  if (v36 != 1)
  {
LABEL_181:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v264 = v51;
    *v50 = 136315138;
    v52 = [objc_opt_self() cdEntityName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = sub_10000668C(v53, v55, &v264);

    *(v50 + 4) = v56;
    a1 = v263;
    _os_log_impl(&_mh_execute_header, v48, v49, "Skipping fetch during upsert {CDType: %s}", v50, 0xCu);
    sub_10000607C(v51);
  }

  v46 = sub_10038FA5C(_swiftEmptyArrayStorage);
LABEL_35:
  v57 = v46;
  if (v261)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (!v58)
    {
LABEL_161:

LABEL_162:

      return;
    }
  }

  else
  {
    v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v58)
    {
      goto LABEL_161;
    }
  }

  v59 = 0;
  v60 = a1 & 0xC000000000000001;
  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v62 = a1 + 32;
  v243 = (v251 + 8);
  v257 = 0x80000001007E8B60;
  v262 = 0x80000001007E8B40;
  v261 = 0x80000001007E8B20;
  v235 = v251 + 56;
  v234 = (v251 + 48);
  *&v47 = 136446978;
  v232 = v47;
  *&v47 = 136446210;
  v246 = v47;
  *&v47 = 136447490;
  v231 = v47;
  *&v47 = 136447234;
  v230 = v47;
  *&v47 = 136446466;
  v233 = v47;
  v242 = v22;
  v244 = v57;
  v239 = v58;
  v238 = a1 & 0xC000000000000001;
  v237 = a1 & 0xFFFFFFFFFFFFFF8;
  v236 = a1 + 32;
  while (v60)
  {
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v64 = __OFADD__(v59, 1);
    v65 = v59 + 1;
    if (v64)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

LABEL_43:
    v66 = v63;
    v251 = sub_1005E3810([v66 remObjectID], &unk_10093F790, off_1008D4158);
    if (v5)
    {

      return;
    }

    v247 = 0;
    v241 = v65;
    v245 = v66;

    v67 = [*(v255 + 16) uuid];
    v68 = v253;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = UUID.uuidString.getter();
    v71 = v70;
    v72 = *v243;
    v73 = v256;
    (*v243)(v68, v256);
    v74 = [objc_opt_self() localInternalAccountID];
    v75 = [v74 uuid];

    v76 = v254;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = UUID.uuidString.getter();
    v79 = v78;
    v240 = v72;
    (v72)(v76, v73);
    if (v69 == v77 && v71 == v79)
    {

      v80 = v257;
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v80 = v257;
      if ((v81 & 1) == 0)
      {
        v83 = v244;
        v5 = v247;
        goto LABEL_55;
      }
    }

    v82 = *(v260 + 68);
    v83 = v244;
    v84 = v247;
    if (v82 >> 14 >= 2)
    {
      if (v82 >> 14 == 2)
      {
        v85 = *(v260 + 64);
      }

      else
      {
        v85 = 0x7FFFFFFF;
      }
    }

    else
    {
      v85 = 2147483519;
    }

    sub_100009A40(2, v85);
    v5 = v84;
    if (v84)
    {

LABEL_164:

      return;
    }

LABEL_55:
    v86 = sub_1005F623C();
    if (!*(v83 + 16) || (v87 = sub_100393C74(v251), (v88 & 1) == 0))
    {
      v247 = v5;
      if (v86 != 6)
      {
        v98 = 0;
        while (v98 != 6)
        {
          v100 = *(&off_1008E31E0 + v98 + 32);
          if (v100 > 2)
          {
            if (v100 == 3)
            {
              v101 = 0xD000000000000014;
              v102 = v261;
            }

            else
            {
              if (v100 == 4)
              {
                v101 = 0xD000000000000016;
              }

              else
              {
                v101 = 0xD000000000000018;
              }

              if (v100 == 4)
              {
                v102 = v262;
              }

              else
              {
                v102 = v80;
              }
            }
          }

          else if (*(&off_1008E31E0 + v98 + 32))
          {
            if (v100 == 1)
            {
              v101 = 0x64656E6769737361;
            }

            else
            {
              v101 = 0x737574617473;
            }

            if (v100 == 1)
            {
              v102 = 0xEC00000065746144;
            }

            else
            {
              v102 = 0xE600000000000000;
            }
          }

          else
          {
            v102 = 0xE800000000000000;
            v101 = 0x44497463656A626FLL;
          }

          v103 = 0xD000000000000016;
          if (v86 != 4)
          {
            v103 = 0xD000000000000018;
          }

          v104 = v262;
          if (v86 != 4)
          {
            v104 = v80;
          }

          if (v86 == 3)
          {
            v103 = 0xD000000000000014;
            v104 = v261;
          }

          v105 = 0x64656E6769737361;
          if (v86 != 1)
          {
            v105 = 0x737574617473;
          }

          v106 = 0xEC00000065746144;
          if (v86 != 1)
          {
            v106 = 0xE600000000000000;
          }

          if (!v86)
          {
            v105 = 0x44497463656A626FLL;
            v106 = 0xE800000000000000;
          }

          if (v86 <= 2u)
          {
            v107 = v105;
          }

          else
          {
            v107 = v103;
          }

          if (v86 <= 2u)
          {
            v108 = v106;
          }

          else
          {
            v108 = v104;
          }

          if (v101 == v107 && v102 == v108)
          {

LABEL_101:

            v109 = *(v260 + 88);
            sub_1000060C8(0, &unk_10093F790, off_1008D4158);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v111 = [ObjCClassFromMetadata entity];
            v112 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v111 insertIntoManagedObjectContext:v109];
            v113 = v249;
            [v109 assignObject:v112 toPersistentStore:v113];

            v114 = v112;
            v115 = [v251 uuid];
            v116 = v250;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v117 = v256;
            (*v235)(v116, 0, 1, v256);
            v118 = v252;
            sub_10018E470(v116, v252);
            LODWORD(v117) = (*v234)(v118, 1, v117);
            v119 = v114;
            isa = 0;
            if (v117 != 1)
            {
              v121 = v252;
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (v240)(v121, v256);
            }

            [v119 setIdentifier:isa];

            sub_1000050A4(v116, &unk_100939D90, "8\n\r");
            v122 = v251;
            v123 = v260;

            v124 = v119;
            v125 = Logger.logObject.getter();
            v126 = static os_log_type_t.default.getter();

            v127 = os_log_type_enabled(v125, v126);
            v251 = v124;
            v240 = v122;
            if (v127)
            {
              v128 = swift_slowAlloc();
              v129 = swift_slowAlloc();
              v130 = v122;
              v269 = swift_slowAlloc();
              *v128 = v232;
              *(v128 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v269);
              *(v128 + 12) = 2082;
              v131 = *(v123 + 40);
              v267 = *(v123 + 24);
              *v268 = v131;
              *&v268[14] = *(v123 + 54);
              sub_100009DAC(&v267, &v264);
              v132 = sub_1000063E8();
              v134 = v133;
              sub_1005812D4(&v267);
              v135 = sub_10000668C(v132, v134, &v269);

              *(v128 + 14) = v135;
              *(v128 + 22) = 2114;
              *(v128 + 24) = v130;
              *v129 = v130;
              *(v128 + 32) = 2112;
              v136 = v130;
              v137 = [v251 objectID];
              *(v128 + 34) = v137;
              v129[1] = v137;
              _os_log_impl(&_mh_execute_header, v125, v126, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v128, 0x2Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();
            }

            v138 = v258;
            swift_beginAccess();
            v139 = v138[6];
            v140 = v260;
            if ((v139 & 0xC000000000000001) != 0)
            {
              if (v139 < 0)
              {
                v141 = v138[6];
              }

              else
              {
                v141 = v139 & 0xFFFFFFFFFFFFFF8;
              }

              v62 = v240;
              v142 = v240;
              v143 = v251;
              v144 = v251;
              v145 = __CocoaDictionary.count.getter();
              if (__OFADD__(v145, 1))
              {
                goto LABEL_179;
              }

              v138[6] = sub_10021CDBC(v141, v145 + 1);
            }

            else
            {
              v146 = v138[6];
              v62 = v240;
              v147 = v240;
              v143 = v251;
              v148 = v251;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v269 = v138[6];
            sub_1002C8398(v143, v62, isUniquelyReferenced_nonNull_native);
            v138[6] = v269;

            swift_endAccess();
            v150 = 0;
            v151 = *(v140 + 64) | (*(v140 + 68) << 32);
            do
            {
              if ((v151 & 0xC00000000001) == 0x800000000000)
              {
                v152 = *(&off_1008E31E0 + v150 + 32);
                v153 = Logger.logObject.getter();
                v154 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v153, v154))
                {
                  v155 = swift_slowAlloc();
                  v156 = swift_slowAlloc();
                  v264 = v156;
                  *v155 = v246;
                  LOBYTE(v269) = v152;
                  v157 = String.init<A>(describing:)();
                  v159 = sub_10000668C(v157, v158, &v264);
                  v140 = v260;

                  *(v155 + 4) = v159;
                  _os_log_impl(&_mh_execute_header, v153, v154, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v155, 0xCu);
                  sub_10000607C(v156);
                }
              }

              v62 = *(v140 + 64);
              if (*(v140 + 68) >> 14 == 2 && (*(v140 + 64) & 1) == 0)
              {
                if (qword_1009367A0 != -1)
                {
                  goto LABEL_180;
                }

                goto LABEL_166;
              }

              ++v150;
              v151 = v62 & 0xFFFF0000FFFFFFFFLL | (*(v140 + 68) << 32);
            }

            while (v150 != 6);
            swift_retain_n();
            v14 = v240;
            v25 = v251;
            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v161, v162))
            {
              LODWORD(v229) = v162;
              v240 = v161;
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v228 = swift_slowAlloc();
              v269 = v228;
              *v163 = v231;
              *(v163 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v269);
              *(v163 + 12) = 2082;
              v165 = *(v140 + 40);
              v265 = *(v140 + 24);
              *v266 = v165;
              *&v266[14] = *(v140 + 54);
              sub_100009DAC(&v265, &v264);
              v166 = sub_1000063E8();
              v168 = v167;
              sub_1005812D4(&v265);
              v169 = sub_10000668C(v166, v168, &v269);

              *(v163 + 14) = v169;
              *(v163 + 22) = 2114;
              *(v163 + 24) = v14;
              *v164 = v14;
              *(v163 + 32) = 2112;
              v251 = v14;
              v170 = v14;
              v171 = [v25 objectID];
              *(v163 + 34) = v171;
              v227[1] = v164;
              v164[1] = v171;
              *(v163 + 42) = 2082;
              v264 = _swiftEmptyArrayStorage;
              sub_100026EF4(0, 6, 0);
              v172 = 0;
              v173 = v264;
              do
              {
                v174 = *(&off_1008E31E0 + v172 + 32);
                v175 = 0xD000000000000016;
                if (v174 != 4)
                {
                  v175 = 0xD000000000000018;
                }

                v176 = v257;
                if (v174 == 4)
                {
                  v176 = v262;
                }

                if (v174 == 3)
                {
                  v175 = 0xD000000000000014;
                  v176 = v261;
                }

                v177 = 0x64656E6769737361;
                if (v174 != 1)
                {
                  v177 = 0x737574617473;
                }

                v178 = 0xEC00000065746144;
                if (v174 != 1)
                {
                  v178 = 0xE600000000000000;
                }

                if (!*(&off_1008E31E0 + v172 + 32))
                {
                  v177 = 0x44497463656A626FLL;
                  v178 = 0xE800000000000000;
                }

                if (*(&off_1008E31E0 + v172 + 32) <= 2u)
                {
                  v179 = v177;
                }

                else
                {
                  v179 = v175;
                }

                if (*(&off_1008E31E0 + v172 + 32) <= 2u)
                {
                  v180 = v178;
                }

                else
                {
                  v180 = v176;
                }

                v264 = v173;
                v182 = v173[2];
                v181 = v173[3];
                if (v182 >= v181 >> 1)
                {
                  sub_100026EF4((v181 > 1), v182 + 1, 1);
                  v173 = v264;
                }

                ++v172;
                v173[2] = v182 + 1;
                v183 = &v173[2 * v182];
                v183[4] = v179;
                v183[5] = v180;
              }

              while (v172 != 6);
              v184 = Array.description.getter();
              v186 = v185;

              v187 = sub_10000668C(v184, v186, &v269);

              *(v163 + 44) = v187;
              *(v163 + 52) = 1024;
              v140 = v260;
              v188 = *(v260 + 104);

              *(v163 + 54) = v188;

              v189 = v240;
              _os_log_impl(&_mh_execute_header, v240, v229, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v163, 0x3Au);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              swift_arrayDestroy();

              v190 = v247;
              v14 = v251;
            }

            else
            {

              v190 = v247;
            }

            sub_10031109C(v245, v25, &off_1008E31E0);
            v5 = v190;
            if (v190)
            {
              goto LABEL_172;
            }

            v191 = [v25 changedValues];

            v192 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
            v193 = v258;
            swift_beginAccess();
            v194 = v14;

            v195 = v193[7];
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v269 = v193[7];
            v193[7] = 0x8000000000000000;
            sub_1002C8688(v192, v194, v196);

            v193[7] = v269;
            swift_endAccess();
            if (*(v140 + 104))
            {

              [v25 updateChangeCount];

LABEL_154:
              goto LABEL_156;
            }

            v197 = v194;

            v198 = Logger.logObject.getter();
            v199 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v198, v199))
            {
              v200 = swift_slowAlloc();
              v201 = swift_slowAlloc();
              LODWORD(v247) = v199;
              v202 = v201;
              v229 = v201;
              v251 = swift_slowAlloc();
              v264 = v251;
              *v200 = v230;
              *(v200 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v264);
              v240 = v198;
              *(v200 + 12) = 1024;
              *(v200 + 14) = 0;

              *(v200 + 18) = 1024;
              *(v200 + 20) = 1;
              *(v200 + 24) = 2114;
              *(v200 + 26) = v197;
              *v202 = v197;
              *(v200 + 34) = 2082;
              v203 = v197;
              sub_1005E2810(v192);

              v204 = Array.description.getter();
              v206 = v205;

              v207 = sub_10000668C(v204, v206, &v264);

              *(v200 + 36) = v207;
              v208 = v240;
              _os_log_impl(&_mh_execute_header, v240, v247, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v200, 0x2Cu);
              sub_1000050A4(v229, &unk_100938E70, &unk_100797230);

              swift_arrayDestroy();

              goto LABEL_154;
            }

            goto LABEL_156;
          }

          v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v98;
          if (v99)
          {
            goto LABEL_101;
          }
        }
      }

      v209 = objc_opt_self();
      v210 = v251;
      [v209 noSuchObjectErrorWithObjectID:v251];
      swift_willThrow();

      goto LABEL_164;
    }

    v89 = v87;

    v90 = *(*(v83 + 56) + 8 * v89);
    v91 = v251;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v264 = v96;
      *v94 = v233;
      *(v94 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v264);
      *(v94 + 12) = 2114;
      *(v94 + 14) = v91;
      *v95 = v91;
      v97 = v91;
      _os_log_impl(&_mh_execute_header, v92, v93, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v94, 0x16u);
      sub_1000050A4(v95, &unk_100938E70, &unk_100797230);

      sub_10000607C(v96);
    }

    else
    {
    }

LABEL_156:
    v59 = v241;
    v60 = v238;
    v61 = v237;
    v62 = v236;
    if (v241 == v239)
    {
      goto LABEL_161;
    }
  }

  if (v59 < *(v61 + 16))
  {
    v63 = *(v62 + 8 * v59);
    v64 = __OFADD__(v59, 1);
    v65 = v59 + 1;
    if (v64)
    {
      goto LABEL_160;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  swift_once();
LABEL_166:
  sub_100006654(v248, qword_100950D98);
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.error.getter();
  v213 = os_log_type_enabled(v211, v212);
  v214 = v251;
  if (v213)
  {
    v215 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    *v215 = v233;
    v216 = sub_100729CB0(1);
    v218 = sub_10000668C(v216, v217, &v264);

    *(v215 + 4) = v218;
    *(v215 + 12) = 2082;
    v219 = sub_100729CB0(v62);
    v221 = sub_10000668C(v219, v220, &v264);

    *(v215 + 14) = v221;
    _os_log_impl(&_mh_execute_header, v211, v212, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v215, 0x16u);
    swift_arrayDestroy();
  }

  v222 = v245;
  v223 = objc_opt_self();
  v224 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v225 = String._bridgeToObjectiveC()();

  sub_100729CB0(v62);
  v226 = String._bridgeToObjectiveC()();

  [v223 unauthorizedErrorWithMissingEntitlement:v224 requestedAccessLevel:v225 currentAccesslevel:v226];

  swift_willThrow();
}