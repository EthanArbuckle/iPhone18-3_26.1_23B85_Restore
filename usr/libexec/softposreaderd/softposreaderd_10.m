void sub_1000ECA4C(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CBF0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD00000000000001ALL;
    v12 = 0x800000010034CBF0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CBF0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CBF0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3140, &qword_1002C7198);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CBF0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CBF0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD00000000000001ALL, 0x800000010034CBF0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3140, &qword_1002C7198);
        *&v27 = 0xD00000000000001ALL;
        *(&v27 + 1) = 0x800000010034CBF0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D50, &qword_1002C6E10);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000010034CBF0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD00000000000001ALL, 0x800000010034CBF0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000ED0B0()
{
  v2 = v0;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v3 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v3);

  v6 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC50);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v30, 0, sizeof(v30));
    v31 = -1;
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v4 + 56) + 40 * v6, v30);
  sub_100065074(v30, v28, qword_10039EEE0, &qword_1002C23D8);
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

      v12 = v28[0];
      v11 = v28[1];
      v25 = 0u;
      v26 = 0u;
      v27 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v25, 0xD000000000000010, 0x800000010034CC50);
      swift_endAccess();
      v12(&v25, v0);
      if (!v1)
      {
        v13 = type metadata accessor for MonitorAnalytics();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }

        *&v25 = 0xD000000000000010;
        *(&v25 + 1) = 0x800000010034CC50;
        v14._countAndFlagsBits = 0x646E65706564203ALL;
        v14._object = 0xEB00000000746E65;
        String.append(_:)(v14);
        sub_100020384(7004, v25, *(&v25 + 1), 0);
        swift_willThrow();
      }

      *&v25 = v12;
      *(&v25 + 1) = v11;
      v27 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v25, 0xD000000000000010, 0x800000010034CC50);
      swift_endAccess();
LABEL_17:
      swift_willThrow();
LABEL_19:

      goto LABEL_11;
    }

    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
LABEL_9:
    v9 = 0xD000000000000010;
    v10 = 0x800000010034CC50;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v29)
  {
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    (v28[0])(&v25, v15);
    if (v1)
    {
      goto LABEL_19;
    }

    v13 = type metadata accessor for MonitorAnalytics();
    if (swift_dynamicCast())
    {
LABEL_25:
      *(&v26 + 1) = v13;
      *&v25 = v24;
      v27 = 0;
      swift_beginAccess();

      sub_10002D0A4(&v25, 0xD000000000000010, 0x800000010034CC50);
      swift_endAccess();

      goto LABEL_11;
    }

    *&v25 = 0xD000000000000010;
    *(&v25 + 1) = 0x800000010034CC50;
    v23._countAndFlagsBits = 0x657065646E69203ALL;
    v23._object = 0xED0000746E65646ELL;
    String.append(_:)(v23);
    sub_100020384(7004, v25, *(&v25 + 1), 0);
    goto LABEL_17;
  }

  type metadata accessor for MonitorAnalytics();
  if (swift_dynamicCast())
  {
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v28);
  *&v25 = 0xD000000000000010;
  *(&v25 + 1) = 0x800000010034CC50;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v0 + v3);
  if (*(v17 + 16))
  {
    v18 = *(v2 + v3);

    v19 = sub_1000F5A28(0xD000000000000010, 0x800000010034CC50);
    if (v20)
    {
      v21 = v19;
      sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v21, v28);

      v22._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v22);

      sub_1000F3008(v28);
      v10 = *(&v25 + 1);
      v9 = v25;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000ED6B4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v39 = a4;
  v9 = v4;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v10 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = *(v4 + v10);

  v13 = sub_1000F5A28(a1, a2);
  if ((v14 & 1) == 0)
  {

LABEL_8:
    memset(v37, 0, sizeof(v37));
    v38 = -1;
    sub_10000BD44(v37, qword_10039EEE0, &qword_1002C23D8);
    v15 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v11 + 56) + 40 * v13, v37);
  sub_100065074(v37, v35, qword_10039EEE0, &qword_1002C23D8);
  if (v36 > 1u)
  {
    if (v36 == 2)
    {
      sub_10000BD44(v37, qword_10039EEE0, &qword_1002C23D8);

      v19 = v35[0];
      v18 = v35[1];
      v32 = 0u;
      v33 = 0u;
      v34 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v32, a1, a2);
      swift_endAccess();
      v19(&v32, v4);
      if (!v5)
      {
        v21 = v39(0);
        if (swift_dynamicCast())
        {
          goto LABEL_23;
        }

        *&v32 = a1;
        *(&v32 + 1) = a2;
        v30._countAndFlagsBits = 0x646E65706564203ALL;
        v30._object = 0xEB00000000746E65;
        String.append(_:)(v30);
        sub_100020384(7004, v32, *(&v32 + 1), 0);
        swift_willThrow();
      }

      *&v32 = v19;
      *(&v32 + 1) = v18;
      v34 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v32, a1, a2);
      swift_endAccess();
      goto LABEL_26;
    }

    sub_10000BD44(v37, qword_10039EEE0, &qword_1002C23D8);

    v15 = 7003;
LABEL_9:
    v16 = a1;
    v17 = a3;
LABEL_10:
    sub_100020384(v15, v16, v17, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v36)
  {
    sub_10000BD44(v37, qword_10039EEE0, &qword_1002C23D8);

    (v35[0])(&v32, v20);
    if (v5)
    {
LABEL_27:

      goto LABEL_11;
    }

    v21 = v39(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v32 = a1;
      *(&v32 + 1) = a2;
      v22._countAndFlagsBits = 0x657065646E69203ALL;
      v22._object = 0xED0000746E65646ELL;
      String.append(_:)(v22);
      sub_100020384(7004, v32, *(&v32 + 1), 0);
LABEL_26:
      swift_willThrow();
      goto LABEL_27;
    }

LABEL_23:
    *(&v33 + 1) = v21;
    *&v32 = v31;
    v34 = 0;
    swift_beginAccess();

    sub_10002D0A4(&v32, a1, a2);
    swift_endAccess();

    goto LABEL_11;
  }

  v39(0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v37, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v35);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v35);
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v23._countAndFlagsBits = 8250;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24 = *(v4 + v10);
  if (*(v24 + 16))
  {
    v25 = *(v9 + v10);

    v26 = sub_1000F5A28(a1, a2);
    if (v27)
    {
      v28 = v26;
      sub_10000BD44(v37, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v24 + 56) + 40 * v28, v35);

      v29._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v29);

      sub_1000F3008(v35);
      v17 = *(&v32 + 1);
      v16 = v32;
      v15 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EDC24(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0x7065654B656D6954, 0xEA00000000007265);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0x7065654B656D6954;
    v12 = 0xEA00000000007265;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0x7065654B656D6954, 0xEA00000000007265);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0x7065654B656D6954, 0xEA00000000007265);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3160, &qword_1002C71B8);
        *&v27 = 0x7065654B656D6954;
        *(&v27 + 1) = 0xEA00000000007265;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0x7065654B656D6954, 0xEA00000000007265);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    (v31)(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0x7065654B656D6954, 0xEA00000000007265);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3160, &qword_1002C71B8);
        *&v27 = 0x7065654B656D6954;
        *(&v27 + 1) = 0xEA00000000007265;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2DF8, &qword_1002C6EC0);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0x7065654B656D6954;
  v32 = 0xEA00000000007265;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0x7065654B656D6954, 0xEA00000000007265);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EE288()
{
  v2 = v0;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v3 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v3);

  v6 = sub_1000F5A28(0xD000000000000011, 0x800000010034CC70);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    memset(v30, 0, sizeof(v30));
    v31 = -1;
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);
    v8 = 7002;
    goto LABEL_9;
  }

  sub_1000DC884(*(v4 + 56) + 40 * v6, v30);
  sub_100065074(v30, v28, qword_10039EEE0, &qword_1002C23D8);
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

      v12 = v28[0];
      v11 = v28[1];
      v25 = 0u;
      v26 = 0u;
      v27 = 3;
      swift_beginAccess();
      sub_10002D0A4(&v25, 0xD000000000000011, 0x800000010034CC70);
      swift_endAccess();
      v12(&v25, v0);
      if (!v1)
      {
        v13 = type metadata accessor for SecurityAnalytics();
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }

        *&v25 = 0xD000000000000011;
        *(&v25 + 1) = 0x800000010034CC70;
        v14._countAndFlagsBits = 0x646E65706564203ALL;
        v14._object = 0xEB00000000746E65;
        String.append(_:)(v14);
        sub_100020384(7004, v25, *(&v25 + 1), 0);
        swift_willThrow();
      }

      *&v25 = v12;
      *(&v25 + 1) = v11;
      v27 = 2;
      swift_beginAccess();

      sub_10002D0A4(&v25, 0xD000000000000011, 0x800000010034CC70);
      swift_endAccess();
LABEL_17:
      swift_willThrow();
LABEL_19:

      goto LABEL_11;
    }

    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    v8 = 7003;
LABEL_9:
    v9 = 0xD000000000000011;
    v10 = 0x800000010034CC70;
LABEL_10:
    sub_100020384(v8, v9, v10, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v29)
  {
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    (v28[0])(&v25, v15);
    if (v1)
    {
      goto LABEL_19;
    }

    v13 = type metadata accessor for SecurityAnalytics();
    if (swift_dynamicCast())
    {
LABEL_25:
      *(&v26 + 1) = v13;
      *&v25 = v24;
      v27 = 0;
      swift_beginAccess();

      sub_10002D0A4(&v25, 0xD000000000000011, 0x800000010034CC70);
      swift_endAccess();

      goto LABEL_11;
    }

    *&v25 = 0xD000000000000011;
    *(&v25 + 1) = 0x800000010034CC70;
    v23._countAndFlagsBits = 0x657065646E69203ALL;
    v23._object = 0xED0000746E65646ELL;
    String.append(_:)(v23);
    sub_100020384(7004, v25, *(&v25 + 1), 0);
    goto LABEL_17;
  }

  type metadata accessor for SecurityAnalytics();
  if (swift_dynamicCast())
  {
    sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

    sub_10000959C(v28);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(v28);
  *&v25 = 0xD000000000000011;
  *(&v25 + 1) = 0x800000010034CC70;
  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(v0 + v3);
  if (*(v17 + 16))
  {
    v18 = *(v2 + v3);

    v19 = sub_1000F5A28(0xD000000000000011, 0x800000010034CC70);
    if (v20)
    {
      v21 = v19;
      sub_10000BD44(v30, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v17 + 56) + 40 * v21, v28);

      v22._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v22);

      sub_1000F3008(v28);
      v10 = *(&v25 + 1);
      v9 = v25;
      v8 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EE7EC(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000022, 0x800000010034CEF0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000022;
    v12 = 0x800000010034CEF0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CEF0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CEF0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3138, &qword_1002C7190);
        *&v27 = 0xD000000000000022;
        *(&v27 + 1) = 0x800000010034CEF0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CEF0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000022, 0x800000010034CEF0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3138, &qword_1002C7190);
        *&v27 = 0xD000000000000022;
        *(&v27 + 1) = 0x800000010034CEF0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D78, &qword_1002C6E38);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000022;
  v32 = 0x800000010034CEF0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000022, 0x800000010034CEF0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EEE50(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD000000000000019, 0x800000010034CED0);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v34, 0, sizeof(v34));
    v35 = -1;
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);
    v10 = 7002;
LABEL_9:
    v11 = 0xD000000000000019;
    v12 = 0x800000010034CED0;
LABEL_10:
    sub_100020384(v10, v11, v12, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v34);
  sub_100065074(v34, &v31, qword_10039EEE0, &qword_1002C23D8);
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      v13 = v31;
      v14 = v32;
      v27 = 0u;
      v28 = 0u;
      LOBYTE(v29) = 3;
      swift_beginAccess();
      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CED0);
      swift_endAccess();
      v36 = v14;
      v13(v30, v1);
      if (!v2)
      {
        v15 = sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
        if (swift_dynamicCast())
        {
          sub_100029790(&v27, a1);
          *(&v28 + 1) = v15;
          *&v27 = swift_allocObject();
          sub_10000CCE4(a1, v27 + 16);
          LOBYTE(v29) = 0;
          swift_beginAccess();
          sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CED0);
          swift_endAccess();

          goto LABEL_11;
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3130, &qword_1002C7188);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CED0;
        v25._countAndFlagsBits = 0x646E65706564203ALL;
        v25._object = 0xEB00000000746E65;
        String.append(_:)(v25);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }

      *&v27 = v13;
      *(&v27 + 1) = v36;
      LOBYTE(v29) = 2;
      swift_beginAccess();

      sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CED0);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v10 = 7003;
    goto LABEL_9;
  }

  if (v33)
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    v31(v30, v16);
    if (!v2)
    {
      v17 = sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
      if (swift_dynamicCast())
      {
        sub_100029790(&v27, a1);
        *(&v28 + 1) = v17;
        *&v27 = swift_allocObject();
        sub_10000CCE4(a1, v27 + 16);
        LOBYTE(v29) = 0;
        swift_beginAccess();
        sub_10002D0A4(&v27, 0xD000000000000019, 0x800000010034CED0);
        swift_endAccess();
      }

      else
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_10000BD44(&v27, &qword_1003A3130, &qword_1002C7188);
        *&v27 = 0xD000000000000019;
        *(&v27 + 1) = 0x800000010034CED0;
        v26._countAndFlagsBits = 0x657065646E69203ALL;
        v26._object = 0xED0000746E65646ELL;
        String.append(_:)(v26);
        sub_100020384(7004, v27, *(&v27 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A2D80, &qword_1002C6E40);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

    sub_100029790(&v27, a1);
    sub_10000959C(&v31);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v31);
  v31 = 0xD000000000000019;
  v32 = 0x800000010034CED0;
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + v5);
  if (*(v19 + 16))
  {
    v20 = *(v3 + v5);

    v21 = sub_1000F5A28(0xD000000000000019, 0x800000010034CED0);
    if (v22)
    {
      v23 = v21;
      sub_10000BD44(v34, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v19 + 56) + 40 * v23, &v27);

      v24._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v24);

      sub_1000F3008(&v27);
      v11 = v31;
      v12 = v32;
      v10 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000EF4B4(uint64_t a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  v5 = OBJC_IVAR____TtC14softposreaderd5Depot_components;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = *(v1 + v5);

  v8 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034D630);
  if ((v9 & 1) == 0)
  {

LABEL_8:
    memset(v36, 0, sizeof(v36));
    v37 = -1;
    sub_10000BD44(v36, qword_10039EEE0, &qword_1002C23D8);
    v11 = 7002;
LABEL_9:
    v12 = 0xD00000000000001FLL;
    v13 = 0x800000010034D630;
LABEL_10:
    sub_100020384(v11, v12, v13, 0);
    swift_willThrow();
    goto LABEL_11;
  }

  sub_1000DC884(*(v6 + 56) + 40 * v8, v36);
  sub_100065074(v36, &v33, qword_10039EEE0, &qword_1002C23D8);
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      sub_10000BD44(v36, qword_10039EEE0, &qword_1002C23D8);

      v14 = v33;
      v15 = v34;
      v30 = 0u;
      *v31 = 0u;
      v31[16] = 3;
      swift_beginAccess();
      sub_10002D0A4(&v30, 0xD00000000000001FLL, 0x800000010034D630);
      swift_endAccess();
      v38 = v15;
      v14(v32, v1);
      if (!v2)
      {
        v16 = sub_100004074(&qword_1003A30B0, &qword_1002C70F8);
        if (swift_dynamicCast())
        {
          v17 = *v31;
          *a1 = v30;
          *(a1 + 16) = v17;
          *(a1 + 32) = *&v31[16];
          *&v31[8] = v16;
          *&v30 = swift_allocObject();
          sub_100065074(a1, v30 + 16, &qword_1003A30B0, &qword_1002C70F8);
          v31[16] = 0;
          swift_beginAccess();
          sub_10002D0A4(&v30, 0xD00000000000001FLL, 0x800000010034D630);
          swift_endAccess();

          goto LABEL_11;
        }

        v30 = 0uLL;
        *v31 = 0;
        *&v31[8] = xmmword_1002C4E40;
        sub_10000BD44(&v30, &qword_1003A3110, &qword_1002C7168);
        *&v30 = 0xD00000000000001FLL;
        *(&v30 + 1) = 0x800000010034D630;
        v28._countAndFlagsBits = 0x646E65706564203ALL;
        v28._object = 0xEB00000000746E65;
        String.append(_:)(v28);
        sub_100020384(7004, v30, *(&v30 + 1), 0);
        swift_willThrow();
      }

      *&v30 = v14;
      *(&v30 + 1) = v38;
      v31[16] = 2;
      swift_beginAccess();

      sub_10002D0A4(&v30, 0xD00000000000001FLL, 0x800000010034D630);
      swift_endAccess();
      swift_willThrow();

      goto LABEL_11;
    }

    sub_10000BD44(v36, qword_10039EEE0, &qword_1002C23D8);

    v11 = 7003;
    goto LABEL_9;
  }

  if (v35)
  {
    sub_10000BD44(v36, qword_10039EEE0, &qword_1002C23D8);

    v33(v32, v18);
    if (!v2)
    {
      v19 = sub_100004074(&qword_1003A30B0, &qword_1002C70F8);
      if (swift_dynamicCast())
      {
        v20 = *v31;
        *a1 = v30;
        *(a1 + 16) = v20;
        *(a1 + 32) = *&v31[16];
        *&v31[8] = v19;
        *&v30 = swift_allocObject();
        sub_100065074(a1, v30 + 16, &qword_1003A30B0, &qword_1002C70F8);
        v31[16] = 0;
        swift_beginAccess();
        sub_10002D0A4(&v30, 0xD00000000000001FLL, 0x800000010034D630);
        swift_endAccess();
      }

      else
      {
        v30 = 0uLL;
        *v31 = 0;
        *&v31[8] = xmmword_1002C4E40;
        sub_10000BD44(&v30, &qword_1003A3110, &qword_1002C7168);
        *&v30 = 0xD00000000000001FLL;
        *(&v30 + 1) = 0x800000010034D630;
        v29._countAndFlagsBits = 0x657065646E69203ALL;
        v29._object = 0xED0000746E65646ELL;
        String.append(_:)(v29);
        sub_100020384(7004, v30, *(&v30 + 1), 0);
        swift_willThrow();
      }
    }

    goto LABEL_11;
  }

  sub_100004074(&qword_1003A30B0, &qword_1002C70F8);
  if (swift_dynamicCast())
  {
    sub_10000BD44(v36, qword_10039EEE0, &qword_1002C23D8);

    v10 = *v31;
    *a1 = v30;
    *(a1 + 16) = v10;
    *(a1 + 32) = *&v31[16];
    sub_10000959C(&v33);
LABEL_11:
    swift_beginAccess();
    os_unfair_recursive_lock_unlock();
    swift_endAccess();
    return;
  }

  sub_10000959C(&v33);
  v33 = 0xD00000000000001FLL;
  v34 = 0x800000010034D630;
  v21._countAndFlagsBits = 8250;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22 = *(v1 + v5);
  if (*(v22 + 16))
  {
    v23 = *(v3 + v5);

    v24 = sub_1000F5A28(0xD00000000000001FLL, 0x800000010034D630);
    if (v25)
    {
      v26 = v24;
      sub_10000BD44(v36, qword_10039EEE0, &qword_1002C23D8);

      sub_1000DC884(*(v22 + 56) + 40 * v26, &v30);

      v27._countAndFlagsBits = sub_1000DA088();
      String.append(_:)(v27);

      sub_1000F3008(&v30);
      v12 = v33;
      v13 = v34;
      v11 = 7004;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000EFB54()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2F50);
  sub_10000403C(v0, qword_1003A2F50);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000EFBB0()
{
  v0 = type metadata accessor for Settings();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Settings.default.getter(v3);
  v4 = type metadata accessor for Depot();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1000DA1BC(v3);
  type metadata accessor for Primer();
  v8 = swift_allocObject();
  sub_100004074(&qword_10039D800, &qword_1002BDC58);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v8 + 40) = v9;
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  type metadata accessor for Provider();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v8 + 32) = v10;
  static Primer.shared = v8;
}

uint64_t static Primer.shared.getter()
{
  if (qword_10039D5E0 != -1)
  {
    swift_once();
  }
}

uint64_t Primer.storageSetting.getter()
{
  v1 = *(v0 + 24);

  sub_1000E3850(v5);

  v2 = *sub_10000BE18(v5, v5[3]) + OBJC_IVAR____TtC14softposreaderd11Environment_storageSetting;
  v3 = *v2;
  sub_1000EFF2C(*v2, *(v2 + 8), *(v2 + 16));
  sub_10000959C(v5);
  return v3;
}

uint64_t sub_1000EFF2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t Primer.__allocating_init(settings:)(uint64_t a1)
{
  v2 = type metadata accessor for Settings();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32[-1] - v7;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A2F50);
  sub_1000DD24C(a1, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, v32);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1660;
    *(v16 + 56) = v2;
    v17 = sub_10000BE5C((v16 + 32));
    sub_1000DD24C(v8, v17);
    v18 = showFunction(signature:_:)(0x7465732874696E69, 0xEF293A73676E6974, v16);
    v20 = v19;

    sub_1000F02C0(v8);
    v21 = sub_100008F6C(v18, v20, v32);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000F02C0(v8);
  }

  sub_1000DD24C(a1, v6);
  v22 = type metadata accessor for Depot();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1000DA1BC(v6);
  swift_beginAccess();
  v26 = atomic_fetch_add_explicit(dword_1003A6D68, 1u, memory_order_relaxed) + 1;
  swift_endAccess();
  type metadata accessor for Primer();
  v27 = swift_allocObject();
  sub_100004074(&qword_10039D800, &qword_1002BDC58);
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = 0;
  *(v27 + 40) = v28;
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  type metadata accessor for Provider();
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v27 + 32) = v29;

  sub_1000F02C0(a1);
  return v27;
}

uint64_t sub_1000F02C0(uint64_t a1)
{
  v2 = type metadata accessor for Settings();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t Primer.configuration.getter()
{
  sub_100004074(&qword_10039E4C0, &unk_1002C3780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002C7060;
  *(v1 + 32) = 0xD00000000000001ALL;
  *(v1 + 40) = 0x800000010034D310;
  v2 = *(v0 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v3 = type metadata accessor for Settings();
  *(v1 + 48) = *(v2 + v3[6]);
  *(v1 + 72) = &type metadata for Bool;
  *(v1 + 80) = 0xD000000000000020;
  *(v1 + 88) = 0x800000010034D330;
  *(v1 + 96) = *(v2 + v3[7]);
  *(v1 + 120) = &type metadata for Double;
  *(v1 + 128) = 0xD00000000000001BLL;
  *(v1 + 136) = 0x800000010034D360;
  *(v1 + 144) = *(v2 + v3[8]);
  *(v1 + 168) = &type metadata for Int;
  *(v1 + 176) = 0xD000000000000018;
  *(v1 + 184) = 0x800000010034D380;
  *(v1 + 192) = *(v2 + v3[9]);
  *(v1 + 216) = &type metadata for Int;
  *(v1 + 224) = 0xD000000000000029;
  *(v1 + 232) = 0x800000010034D3A0;
  *(v1 + 240) = *(v2 + v3[10]);
  *(v1 + 264) = &type metadata for Double;
  *(v1 + 272) = 0xD000000000000025;
  *(v1 + 280) = 0x800000010034D3D0;
  *(v1 + 288) = *(v2 + v3[11]);
  *(v1 + 312) = &type metadata for Double;
  *(v1 + 320) = 0xD000000000000025;
  *(v1 + 328) = 0x800000010034D400;
  *(v1 + 336) = *(v2 + v3[12]);
  *(v1 + 360) = &type metadata for Double;
  *(v1 + 368) = 0xD000000000000027;
  *(v1 + 376) = 0x800000010034D430;
  v4 = *(v2 + v3[13]);
  v5 = sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  *(v1 + 384) = v4;
  *(v1 + 408) = v5;
  *(v1 + 416) = 0xD000000000000025;
  *(v1 + 424) = 0x800000010034D460;
  *(v1 + 432) = *(v2 + v3[14]);
  *(v1 + 456) = v5;
  *(v1 + 464) = 0xD00000000000001ALL;
  *(v1 + 472) = 0x800000010034D490;
  *(v1 + 480) = *(v2 + v3[15]);
  *(v1 + 504) = &type metadata for Bool;
  *(v1 + 512) = 0xD000000000000013;
  *(v1 + 520) = 0x800000010034D4B0;
  v6 = *(v2 + v3[16]);
  *(v1 + 552) = &type metadata for Bool;
  *(v1 + 528) = v6;
  *(v1 + 560) = 0x2E726F74696E6F4DLL;
  *(v1 + 568) = 0xEF64656C62616E45;
  v7 = *(v2 + v3[17]);
  *(v1 + 600) = &type metadata for Bool;
  *(v1 + 576) = v7;
  *(v1 + 608) = 0xD00000000000003CLL;
  *(v1 + 616) = 0x800000010034D4D0;
  v8 = *(v2 + v3[18]);
  *(v1 + 648) = &type metadata for Bool;
  *(v1 + 624) = v8;
  *(v1 + 656) = 0xD00000000000001DLL;
  *(v1 + 664) = 0x800000010034D510;
  v9 = *(v2 + v3[19]);
  *(v1 + 696) = &type metadata for Double;
  *(v1 + 672) = v9;
  *(v1 + 704) = 0xD00000000000002ALL;
  *(v1 + 712) = 0x800000010034D530;
  v10 = *(v2 + v3[20]);
  *(v1 + 744) = &type metadata for Int;
  *(v1 + 720) = v10;
  *(v1 + 752) = 0xD00000000000001DLL;
  *(v1 + 760) = 0x800000010034D560;
  v11 = *(v2 + v3[21]);
  *(v1 + 792) = &type metadata for Double;
  *(v1 + 768) = v11;

  v12 = sub_100182BA0(v1);
  swift_setDeallocating();
  sub_100004074(&qword_10039E4D0, &qword_1002C94A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = *(v38 + 24);

  sub_1000E3850(v42);

  v14 = sub_10000BE18(v42, v43);
  v15 = type metadata accessor for URL();
  v41 = v15;
  v16 = sub_10000BE5C(v40);
  v17 = *(*(v15 - 8) + 16);
  v17(v16, *v14 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v15);
  sub_100019D3C(v40, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v39, 0x552E726576726553, 0xEA00000000006C72, isUniquelyReferenced_nonNull_native);
  v19 = sub_10000BE18(v42, v43);
  v41 = v15;
  v20 = sub_10000BE5C(v40);
  v17(v20, *v19 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v15);
  sub_100019D3C(v40, v39);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v39, 0xD000000000000017, 0x800000010034D580, v21);
  v22 = sub_10000BE18(v42, v43);
  v41 = v15;
  v23 = sub_10000BE5C(v40);
  v17(v23, *v22 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v15);
  sub_100019D3C(v40, v39);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v39, 0xD00000000000001ALL, 0x800000010034D5A0, v24);
  v25 = sub_10000BE18(v42, v43);
  v41 = v15;
  v26 = sub_10000BE5C(v40);
  v17(v26, *v25 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v15);
  sub_100019D3C(v40, v39);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_10017F944(v39, 0xD000000000000015, 0x800000010034D5C0, v27);
  sub_10000959C(v42);
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000403C(v28, qword_1003A2F50);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42[0] = v32;
    *v31 = 136315138;

    v33 = Dictionary.description.getter();
    v35 = v34;

    v36 = sub_100008F6C(v33, v35, v42);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Primer.configuration: %s", v31, 0xCu);
    sub_10000959C(v32);
  }

  return v12;
}

uint64_t Primer.getProvider()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  a1[3] = type metadata accessor for Provider();
  a1[4] = &off_100383D78;
  *a1 = v3;
}

uint64_t Primer.makeSecureChannel(owner:)@<X0>(double **a1@<X8>)
{
  v4 = *(v1 + 24);

  sub_1000EBD84(v7);

  if (!v2)
  {
    v6 = sub_10000BE18(v7, v7[3]);
    sub_100139720((*v6 + 216), a1);
    return sub_10000959C(v7);
  }

  return result;
}

uint64_t Primer.getMPOCMonitorManagerPublic()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);

  sub_1000E31EC(v10);

  if (!v2)
  {
    v6 = v11;
    v7 = v12;
    v8 = sub_10000BE18(v10, v11);
    a1[3] = v6;
    a1[4] = *(v7 + 8);
    v9 = sub_10000BE5C(a1);
    (*(*(v6 - 8) + 16))(v9, v8, v6);
    return sub_10000959C(v10);
  }

  return result;
}

Swift::Void __swiftcall Primer.attach(isPOS:)(Swift::Bool isPOS)
{
  v2 = v1;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2F50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    v9 = Primer.description.getter(v8);
    v11 = sub_100008F6C(v9, v10, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for Bool;
    *(v12 + 32) = isPOS;
    v13 = showFunction(signature:_:)(0x6928686361747461, 0xEE00293A534F5073, v12);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, v18);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v2 + 40);
  os_unfair_lock_lock((v17 + 24));
  sub_1000F0FDC((v17 + 16), isPOS, v2);

  os_unfair_lock_unlock((v17 + 24));
}

void sub_1000F0FDC(void *a1, char a2, uint64_t a3)
{
  v7 = sub_100004074(&qword_10039F738, &qword_1002C2AB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v85 - v9;
  v11 = &unk_10039D000;
  v90 = *a1;
  if (!v90 && (a2 & 1) != 0 && (v12 = *(a3 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings, *(v12 + *(type metadata accessor for Settings() + 68)) == 1))
  {
    static TaskPriority.low.getter();
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    sub_10013C974(0, 0, v10, &unk_1002C7160, v15);

    v16 = *(a3 + 24);

    sub_1000EA3F4(v88);
    v86 = a1;
    if (v3)
    {

      if (qword_10039D5D8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000403C(v49, qword_1003A2F50);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v88[0] = v53;
        *v52 = 136315138;
        v54 = Primer.description.getter();
        v56 = sub_100008F6C(v54, v55, v88);

        *(v52 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v50, v51, "%s: Missing TimeTokenManager instance", v52, 0xCu);
        sub_10000959C(v53);
        v11 = &unk_10039D000;
      }
    }

    else
    {

      v48 = *sub_10000BE18(v88, v89);
      sub_100148128();
      sub_10000959C(v88);
      if (qword_10039D5D8 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_10000403C(v77, qword_1003A2F50);

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v88[0] = v81;
        *v80 = 136315138;
        v82 = Primer.description.getter();
        v84 = sub_100008F6C(v82, v83, v88);

        *(v80 + 4) = v84;
        v11 = &unk_10039D000;
        _os_log_impl(&_mh_execute_header, v78, v79, "%s: TimeTokenManager started", v80, 0xCu);
        sub_10000959C(v81);
      }
    }

    v57 = *(a3 + 24);

    sub_1000E31EC(v88);

    v58 = *sub_10000BE18(v88, v89);
    sub_1000AE1FC();
    sub_10000959C(v88);
    if (v11[187] != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000403C(v59, qword_1003A2F50);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v88[0] = v63;
      *v62 = 136315138;
      v64 = Primer.description.getter();
      v66 = sub_100008F6C(v64, v65, v88);

      *(v62 + 4) = v66;
      v11 = &unk_10039D000;
      _os_log_impl(&_mh_execute_header, v60, v61, "%s: Background MPOC monitoring started", v62, 0xCu);
      sub_10000959C(v63);
    }

    if (v11[187] != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000403C(v67, qword_1003A2F50);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v88[0] = v71;
      *v70 = 136315138;
      v72 = Primer.description.getter();
      v74 = sub_100008F6C(v72, v73, v88);

      *(v70 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "%s: Start certificate background renewal", v70, 0xCu);
      sub_10000959C(v71);
    }

    a1 = v86;
    v75 = *(a3 + 24);

    sub_1000E7D9C(v88);

    v76 = *sub_10000BE18(v88, v89);
    sub_100045E20();
    sub_10000959C(v88);
  }

  else
  {
    if (qword_10039D5D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A2F50);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v87 = v3;
      v21 = a1;
      v22 = v20;
      v23 = swift_slowAlloc();
      v88[0] = v23;
      *v22 = 136315138;
      v24 = Primer.description.getter();
      v26 = sub_100008F6C(v24, v25, v88);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: Background MPOC monitoring is disabled", v22, 0xCu);
      sub_10000959C(v23);

      a1 = v21;
    }
  }

  v27 = v90 + 1;
  if (v90 == -1)
  {
    __break(1u);
    goto LABEL_53;
  }

  *a1 = v27;
  if (qword_10039D708 != -1)
  {
LABEL_53:
    swift_once();
  }

  v28 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v28 + 104) > 0 || *(v28 + 112) == 1)
  {
    [*(v28 + 88) wait];
  }

  v29 = *(v28 + 96);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_55;
  }

  *(v28 + 96) = v31;
  [*(v28 + 88) unlock];
  v32 = *(v28 + 80);
  [*(v28 + 88) lock];
  v33 = *(v28 + 96);
  v30 = __OFSUB__(v33, 1);
  v34 = v33 - 1;
  if (v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(v28 + 96) = v34;
  if (!v34)
  {
    [*(v28 + 88) broadcast];
  }

  [*(v28 + 88) unlock];
  v30 = __OFADD__(v32, 1);
  v35 = v32 + 1;
  if (v30)
  {
    goto LABEL_56;
  }

  [*(v28 + 88) lock];
  v36 = *(v28 + 104);
  v30 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v30)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v28 + 104) = v37;
  while (*(v28 + 96) > 0 || *(v28 + 112) == 1)
  {
    [*(v28 + 88) wait];
  }

  v38 = *(v28 + 104);
  v30 = __OFSUB__(v38, 1);
  v39 = v38 - 1;
  if (!v30)
  {
    *(v28 + 104) = v39;
    *(v28 + 112) = 1;
    [*(v28 + 88) unlock];
    *(v28 + 80) = v35;
    [*(v28 + 88) lock];
    *(v28 + 112) = 0;
    [*(v28 + 88) broadcast];
    [*(v28 + 88) unlock];
    if (qword_10039D5D8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_29:
  v40 = type metadata accessor for Logger();
  sub_10000403C(v40, qword_1003A2F50);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v88[0] = v44;
    *v43 = 136315394;
    v45 = Primer.description.getter();
    v47 = sub_100008F6C(v45, v46, v88);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s: Client attached. currentAttachCount: (%lu)", v43, 0x16u);
    sub_10000959C(v44);
  }
}

uint64_t sub_1000F1D10()
{
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A2F50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Primer.attach() Validating SE pairing", v4, 2u);
  }

  type metadata accessor for StatusInspector();
  swift_initStackObject();
  sub_100090FC8();
  v6 = v5;
  if ((sub_100091684() & 1) == 0 && *(v6 + 34) == 1)
  {
    v7 = *(v0 + 224);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 24);

      sub_1000EF4B4(v0 + 160);

      v10 = *(v0 + 184);
      if (v10)
      {
        v11 = *(v0 + 192);
        sub_100022438(v0 + 160, *(v0 + 184));
        (*(v11 + 88))(1, v10, v11);
      }
    }

    else
    {
      *(v0 + 192) = 0;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0u;
    }

    sub_10000BD44(v0 + 160, &qword_1003A30B0, &qword_1002C70F8);
  }

  if (*(v6 + 32) == 1)
  {
    *(v6 + 32) = 0;
    v12 = sub_100091050();
    if (v12)
    {
      v13 = v12;
      *(v0 + 144) = sub_100091444;
      *(v0 + 152) = 0;
      *(v0 + 112) = _NSConcreteStackBlock;
      *(v0 + 120) = 1107296256;
      *(v0 + 128) = sub_100003974;
      *(v0 + 136) = &unk_100383AB8;
      v14 = _Block_copy((v0 + 112));
      [v13 endSessionWithCompletion:v14];
      _Block_release(v14);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

Swift::Void __swiftcall Primer.detach(isPOS:)(Swift::Bool isPOS)
{
  v2 = v1;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2F50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315394;
    v9 = Primer.description.getter(v8);
    v11 = sub_100008F6C(v9, v10, v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for Bool;
    *(v12 + 32) = isPOS;
    v13 = showFunction(signature:_:)(0x6928686361746564, 0xEE00293A534F5073, v12);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, v19);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = *(v2 + 40);
  __chkstk_darwin(v17);
  os_unfair_lock_lock((v18 + 24));
  sub_1000F2FB0((v18 + 16));
  os_unfair_lock_unlock((v18 + 24));
}

void sub_1000F22B0(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  if (qword_10039D5D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000403C(v7, qword_1003A2F50);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v66 = a3;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67[0] = v11;
    *v10 = 136315394;
    v12 = Primer.description.getter(v11);
    v14 = sub_100008F6C(v12, v13, v67);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: Detaching client. currentAttachCount: (%lu)", v10, 0x16u);
    sub_10000959C(v11);
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_41;
  }

  *a1 = v6 - 1;
  if (qword_10039D708 != -1)
  {
LABEL_41:
    swift_once();
  }

  v15 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  while (*(v15 + 104) > 0 || *(v15 + 112) == 1)
  {
    [*(v15 + 88) wait];
  }

  v16 = *(v15 + 96);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v15 + 96) = v18;
  [*(v15 + 88) unlock];
  v19 = *(v15 + 80);
  [*(v15 + 88) lock];
  v20 = *(v15 + 96);
  v17 = __OFSUB__(v20, 1);
  v21 = v20 - 1;
  if (v17)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v15 + 96) = v21;
  if (!v21)
  {
    [*(v15 + 88) broadcast];
  }

  [*(v15 + 88) unlock];
  v17 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v17)
  {
    goto LABEL_44;
  }

  [*(v15 + 88) lock];
  v23 = *(v15 + 104);
  v17 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v17)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v15 + 104) = v24;
  while (*(v15 + 96) > 0 || *(v15 + 112) == 1)
  {
    [*(v15 + 88) wait];
  }

  v25 = *(v15 + 104);
  v17 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (!v17)
  {
    *(v15 + 104) = v26;
    *(v15 + 112) = 1;
    [*(v15 + 88) unlock];
    *(v15 + 80) = v22;
    [*(v15 + 88) lock];
    *(v15 + 112) = 0;
    [*(v15 + 88) broadcast];
    [*(v15 + 88) unlock];
    if (v6 == 1 && (v66 & 1) != 0 && (v27 = *(a2 + 24) + OBJC_IVAR____TtC14softposreaderd5Depot_settings, *(v27 + *(type metadata accessor for Settings() + 68)) == 1))
    {

      v28 = v69;
      sub_1000E31EC(v67);
      if (v28)
      {

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v67[0] = v32;
          *v31 = 136315138;
          v33 = Primer.description.getter(v32);
          v35 = sub_100008F6C(v33, v34, v67);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v30, "%s: Missing MPOCMonitorManager instance", v31, 0xCu);
          sub_10000959C(v32);
        }
      }

      else
      {

        v44 = *sub_10000BE18(v67, v68);
        sub_1000AEF24();
        sub_10000959C(v67);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v67[0] = v48;
          *v47 = 136315138;
          v49 = Primer.description.getter(v48);
          v51 = sub_100008F6C(v49, v50, v67);

          *(v47 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v45, v46, "%s: Background MPOC monitoring stopped", v47, 0xCu);
          sub_10000959C(v48);
        }
      }

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v67[0] = v55;
        *v54 = 136315138;
        v56 = Primer.description.getter(v55);
        v58 = sub_100008F6C(v56, v57, v67);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "%s: Stop certificate background renewal", v54, 0xCu);
        sub_10000959C(v55);
      }

      v59 = *(a2 + 24);

      sub_1000E7D9C(v67);

      v60 = *(*sub_10000BE18(v67, v68) + 192);

      dispatch thunk of DispatchWorkItem.cancel()();

      sub_10000959C(v67);
      v61 = *(a2 + 24);

      sub_1000EA3F4(v67);

      v62 = *sub_10000BE18(v67, v68);
      sub_100149100();
      sub_10000959C(v67);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_32;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67[0] = v39;
      *v38 = 136315138;
      v63 = Primer.description.getter(v39);
      v65 = sub_100008F6C(v63, v64, v67);

      *(v38 + 4) = v65;
      v43 = "%s: TimeTokenManager stopped";
    }

    else
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v36, v37))
      {
LABEL_32:

        return;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67[0] = v39;
      *v38 = 136315138;
      v40 = Primer.description.getter(v39);
      v42 = sub_100008F6C(v40, v41, v67);

      *(v38 + 4) = v42;
      v43 = "%s: Background MPOC monitoring is disabled";
    }

    _os_log_impl(&_mh_execute_header, v36, v37, v43, v38, 0xCu);
    sub_10000959C(v39);

    goto LABEL_32;
  }

LABEL_46:
  __break(1u);
}

void *Primer.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t Primer.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2DDC@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 32);
  a1[3] = type metadata accessor for Provider();
  a1[4] = &off_100383D78;
  *a1 = v3;
}

uint64_t sub_1000F2E30@<X0>(double **a1@<X8>)
{
  v4 = *(*v1 + 24);

  sub_1000EBD84(v7);

  if (!v2)
  {
    v6 = sub_10000BE18(v7, v7[3]);
    sub_100139720((*v6 + 216), a1);
    return sub_10000959C(v7);
  }

  return result;
}

uint64_t sub_1000F2EC8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(*v1 + 24);

  sub_1000E31EC(v10);

  if (!v2)
  {
    v6 = v11;
    v7 = v12;
    v8 = sub_10000BE18(v10, v11);
    a1[3] = v6;
    a1[4] = *(v7 + 8);
    v9 = sub_10000BE5C(a1);
    (*(*(v6 - 8) + 16))(v9, v8, v6);
    return sub_10000959C(v10);
  }

  return result;
}

uint64_t sub_1000F2FD0()
{
  sub_10000959C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F305C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F3094()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F30D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000375E8;

  return sub_1000F1CF0(a1, v4, v5, v6);
}

uint64_t sub_1000F3188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F31A0()
{
  if (*(v0 + 40))
  {
    sub_10000959C((v0 + 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1000F3248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000F5D0C(a1, a2, &String.hash(into:), sub_1000F6058), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000BDA4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1000F32D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000F5F5C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000BDA4(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void static Settings.default.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BackendSetting();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for Settings();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  sub_1000F39E0();
  sub_1000F5958(v11, a1);
  if (qword_10039D5E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A3178);
  sub_1000F3C28(a1, v9, type metadata accessor for Settings);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = Settings.description.getter(v16);
    v19 = v18;
    sub_1000F3C90(v9, type metadata accessor for Settings);
    v20 = sub_100008F6C(v17, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "using settings: %s", v15, 0xCu);
    sub_10000959C(v16);
  }

  else
  {

    sub_1000F3C90(v9, type metadata accessor for Settings);
  }
}

uint64_t type metadata accessor for Settings()
{
  result = qword_1003A31E8;
  if (!qword_1003A31E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F3984()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3178);
  sub_10000403C(v0, qword_1003A3178);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

void sub_1000F39E0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = [v2 dictionaryRepresentation];

    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  if (qword_10039D5E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3178);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = Dictionary.description.getter();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100008F6C(v10, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "user default: %s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v15.value._rawValue = v4;
  Settings.init(dictionary:)(v15);
}

uint64_t sub_1000F3C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F3C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Settings.init(dictionary:)(Swift::OpaquePointer_optional dictionary)
{
  v3 = v2;
  rawValue = dictionary.value._rawValue;
  v111 = v1;
  v5 = type metadata accessor for BackendSetting();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v112 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v94 - v9;
  if (qword_10039D5E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A3178);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    if (rawValue)
    {
      goto LABEL_7;
    }

LABEL_12:
    v23 = 0uLL;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    goto LABEL_13;
  }

  v110 = v2;
  v14 = swift_slowAlloc();
  *&v119 = swift_slowAlloc();
  *v14 = 136315394;
  *(v14 + 4) = sub_100008F6C(0x73676E6974746553, 0xE800000000000000, &v119);
  *(v14 + 12) = 2080;
  sub_100004074(&qword_1003A6740, &unk_1002C2930);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002C1660;
  *(v15 + 56) = sub_100004074(&qword_1003A0190, &unk_1002C4040);
  v16 = rawValue;
  if (!rawValue)
  {
    v16 = sub_100182BA0(_swiftEmptyArrayStorage);
  }

  *(v15 + 32) = v16;

  v17 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034D880, v15);
  v19 = v18;

  v20 = sub_100008F6C(v17, v19, &v119);

  *(v14 + 14) = v20;
  _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v14, 0x16u);
  swift_arrayDestroy();

  v3 = v110;
  if (!rawValue)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!rawValue[2])
  {
LABEL_24:
    v26 = 0uLL;
    v117 = 0u;
    v118 = 0u;
    if (rawValue[2])
    {

      v27 = sub_1000F5D0C(0xD000000000000017, 0x800000010034D580, &String.hash(into:), sub_1000F6058);
      if (v28)
      {
        sub_10000BDA4(rawValue[7] + 32 * v27, &v115);

        sub_100019D3C(&v115, &v119);
        if (!*(&v118 + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v26 = 0uLL;
    }

    v115 = v26;
    v116 = v26;
    if (rawValue[2])
    {

      v29 = sub_1000F5D0C(0xD00000000000001ALL, 0x800000010034D5A0, &String.hash(into:), sub_1000F6058);
      if (v30)
      {
        sub_10000BDA4(rawValue[7] + 32 * v29, &v113);

        sub_100019D3C(&v113, &v119);
        goto LABEL_14;
      }
    }

    v23 = 0uLL;
    v114 = 0u;
    v113 = 0u;
    if (rawValue[2])
    {

      v31 = sub_1000F5D0C(0xD000000000000016, 0x800000010034D860, &String.hash(into:), sub_1000F6058);
      if (v32)
      {
        sub_10000BDA4(rawValue[7] + 32 * v31, &v119);

        if (*(&v114 + 1))
        {
          sub_10009E294(&v113);
        }

LABEL_14:
        if (*(&v116 + 1))
        {
          sub_10009E294(&v115);
        }

        if (!*(&v118 + 1))
        {
LABEL_18:
          sub_1000D9488(&v119, v10);
          if (!v3)
          {
            if (!rawValue)
            {
              goto LABEL_38;
            }

            goto LABEL_20;
          }

LABEL_39:

          return;
        }

LABEL_17:
        sub_10009E294(&v117);
        goto LABEL_18;
      }

      v23 = 0uLL;
    }

LABEL_13:
    v119 = v23;
    v120 = v23;
    goto LABEL_14;
  }

  v21 = sub_1000F5D0C(0x552E726576726553, 0xEA00000000006C72, &String.hash(into:), sub_1000F6058);
  if ((v22 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_10000BDA4(rawValue[7] + 32 * v21, &v117);

  sub_100019D3C(&v117, &v119);
  sub_1000D9488(&v119, v10);
  if (v3)
  {
    goto LABEL_39;
  }

LABEL_20:
  if (rawValue[2])
  {

    v24 = sub_1000F5D0C(0xD000000000000015, 0x800000010034D5C0, &String.hash(into:), sub_1000F6058);
    if (v25)
    {
      sub_10000BDA4(rawValue[7] + 32 * v24, &v119);

      goto LABEL_40;
    }
  }

LABEL_38:
  v119 = 0u;
  v120 = 0u;
LABEL_40:
  v33 = sub_1000F9194(&v119);
  v108 = v34;
  v109 = v35;
  v110 = v33;
  sub_1000F3C28(v10, v112, type metadata accessor for BackendSetting);
  if (!rawValue)
  {
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v119 = 0u;
    v120 = 0u;
    sub_10009E294(&v119);
    v39 = 0;
    v99 = 0;
    v106 = 0;
    v100 = 0;
    v119 = 0u;
    v120 = 0u;
    v40 = 2;
    v41 = 0.0;
    v42 = 1;
    v97 = 2;
    v101 = 1;
    v103 = 1;
    v43 = 0.0;
    v105 = 1;
    v38 = 2;
    v44 = 0.0;
    v107 = 1;
    v45 = 0.0;
    v104 = 1;
    v46 = 0.0;
    v102 = 1;
    v98 = 2;
    v96 = 2;
    v47 = 0.0;
    v95 = 1;
LABEL_122:
    sub_10009E294(&v119);
    v69 = 1;
    v70 = 0.0;
    goto LABEL_123;
  }

  if (rawValue[2])
  {

    v36 = sub_1000F5D0C(0xD00000000000001ALL, 0x800000010034D310, &String.hash(into:), sub_1000F6058);
    if (v37)
    {
      sub_10000BDA4(rawValue[7] + 32 * v36, &v119);

      if (swift_dynamicCast())
      {
        v38 = v117;
      }

      else
      {
        v38 = 2;
      }

      goto LABEL_50;
    }
  }

  v38 = 2;
LABEL_50:

  sub_1000F3248(0xD000000000000020, 0x800000010034D330, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v48 = swift_dynamicCast();
    v107 = v48 ^ 1;
    if (v48)
    {
      v44 = *&v117;
    }

    else
    {
      v44 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v44 = 0.0;
    v107 = 1;
  }

  sub_1000F3248(0xD00000000000001BLL, 0x800000010034D360, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v49 = swift_dynamicCast();
    v50 = v117;
    if (!v49)
    {
      v50 = 0;
    }

    v106 = v50;
    v51 = v49 ^ 1;
  }

  else
  {
    sub_10009E294(&v119);
    v106 = 0;
    v51 = 1;
  }

  v105 = v51;

  sub_1000F3248(0xD000000000000018, 0x800000010034D380, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v52 = swift_dynamicCast();
    v104 = v52 ^ 1;
    if (v52)
    {
      v45 = v117;
    }

    else
    {
      v45 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v45 = 0.0;
    v104 = 1;
  }

  sub_1000F3248(0xD000000000000029, 0x800000010034D3A0, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v53 = swift_dynamicCast();
    v103 = v53 ^ 1;
    if (v53)
    {
      v43 = *&v117;
    }

    else
    {
      v43 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v43 = 0.0;
    v103 = 1;
  }

  sub_1000F3248(0xD000000000000025, 0x800000010034D3D0, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v54 = swift_dynamicCast();
    v102 = v54 ^ 1;
    if (v54)
    {
      v46 = *&v117;
    }

    else
    {
      v46 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v46 = 0.0;
    v102 = 1;
  }

  sub_1000F3248(0xD000000000000025, 0x800000010034D400, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v55 = swift_dynamicCast();
    v101 = v55 ^ 1;
    if (v55)
    {
      v41 = *&v117;
    }

    else
    {
      v41 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v41 = 0.0;
    v101 = 1;
  }

  sub_1000F3248(0xD000000000000027, 0x800000010034D430, rawValue, &v119);

  if (*(&v120 + 1))
  {
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v56 = swift_dynamicCast();
    v57 = v117;
    if (!v56)
    {
      v57 = 0;
    }

    v100 = v57;
  }

  else
  {
    sub_10009E294(&v119);
    v100 = 0;
  }

  sub_1000F3248(0xD000000000000025, 0x800000010034D460, rawValue, &v119);

  if (*(&v120 + 1))
  {
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v58 = swift_dynamicCast();
    v59 = v117;
    if (!v58)
    {
      v59 = 0;
    }

    v99 = v59;
  }

  else
  {
    sub_10009E294(&v119);
    v99 = 0;
  }

  sub_1000F3248(0xD00000000000001ALL, 0x800000010034D490, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v60 = swift_dynamicCast();
    v61 = v117;
    if (!v60)
    {
      v61 = 2;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v61 = 2;
  }

  v98 = v61;

  sub_1000F3248(0xD000000000000013, 0x800000010034D4B0, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v62 = swift_dynamicCast();
    v63 = v117;
    if (!v62)
    {
      v63 = 2;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v63 = 2;
  }

  v97 = v63;

  sub_1000F3248(0x2E726F74696E6F4DLL, 0xEF64656C62616E45, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v64 = swift_dynamicCast();
    v65 = v117;
    if (!v64)
    {
      v65 = 2;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v65 = 2;
  }

  v96 = v65;

  sub_1000F3248(0xD00000000000003CLL, 0x800000010034D4D0, rawValue, &v119);

  if (*(&v120 + 1))
  {
    if (swift_dynamicCast())
    {
      v40 = v117;
    }

    else
    {
      v40 = 2;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v40 = 2;
  }

  sub_1000F3248(0xD00000000000001DLL, 0x800000010034D510, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v66 = swift_dynamicCast();
    v95 = v66 ^ 1;
    if (v66)
    {
      v47 = *&v117;
    }

    else
    {
      v47 = 0.0;
    }
  }

  else
  {
    sub_10009E294(&v119);
    v47 = 0.0;
    v95 = 1;
  }

  sub_1000F3248(0xD00000000000002ALL, 0x800000010034D530, rawValue, &v119);

  if (*(&v120 + 1))
  {
    v67 = swift_dynamicCast();
    if (v67)
    {
      v39 = v117;
    }

    else
    {
      v39 = 0;
    }

    v42 = v67 ^ 1;
  }

  else
  {
    sub_10009E294(&v119);
    v39 = 0;
    v42 = 1;
  }

  sub_1000F3248(0xD00000000000001DLL, 0x800000010034D560, rawValue, &v119);

  if (!*(&v120 + 1))
  {
    goto LABEL_122;
  }

  v68 = swift_dynamicCast();
  v69 = v68 ^ 1;
  if (v68)
  {
    v70 = *&v117;
  }

  else
  {
    v70 = 0.0;
  }

LABEL_123:
  v71 = v111;
  sub_1000F3C28(v112, v111, type metadata accessor for BackendSetting);
  v72 = (v38 == 2) | v38;
  v73 = type metadata accessor for Settings();
  v74 = v73;
  *(v71 + v73[6]) = v72 & 1;
  v75 = v71 + v73[5];
  v76 = v109;
  *v75 = v110;
  *(v75 + 8) = v76;
  *(v75 + 16) = v108;
  v77 = fmin(fmax(v43, 120.0), 300.0);
  if (v103)
  {
    v77 = 300.0;
  }

  *(v71 + v73[10]) = v77;
  v78 = fmin(fmax(v46, 120.0), 300.0);
  if (v102)
  {
    v78 = 300.0;
  }

  *(v71 + v73[11]) = v78;
  v79 = fmin(fmax(v41, 120.0), 86400.0);
  if (v101)
  {
    v79 = 86400.0;
  }

  *(v71 + v73[12]) = v79;
  v80 = 3600.0;
  if (v44 <= 3600.0)
  {
    v81 = v44;
  }

  else
  {
    v81 = 3600.0;
  }

  v82 = 5.0;
  if (v44 < 5.0)
  {
    v81 = 5.0;
  }

  if (!v107)
  {
    v80 = v81;
  }

  *(v71 + v73[7]) = v80;
  v83 = 86400;
  if (!v105)
  {
    v83 = v106;
  }

  *(v71 + v73[8]) = v83;
  if ((v104 & 1) == 0)
  {
    v85 = fmin(v45, 151200.0);
    if (v45 <= 12600.0)
    {
      v85 = 12600.0;
    }

    if (v85 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v85 < 9.22337204e18)
    {
      v84 = v85;
      goto LABEL_145;
    }

    __break(1u);
    return;
  }

  v84 = 81900;
LABEL_145:
  v86 = v111;
  *(v111 + v73[9]) = v84;
  v87 = 3600.0;
  if (v47 <= 3600.0)
  {
    v88 = v47;
  }

  else
  {
    v88 = 3600.0;
  }

  if (v47 < 5.0)
  {
    v88 = 5.0;
  }

  if (!v95)
  {
    v87 = v88;
  }

  *(v86 + v73[19]) = v87;
  v89 = 2592000;
  if (v39 >= 2592000)
  {
    v90 = 2592000;
  }

  else
  {
    v90 = v39;
  }

  if (v90 <= 172800)
  {
    v90 = 172800;
  }

  if (!v42)
  {
    v89 = v90;
  }

  *(v86 + v73[20]) = v89;
  if (v70 <= 30.0)
  {
    v91 = v70;
  }

  else
  {
    v91 = 30.0;
  }

  if (v70 >= 5.0)
  {
    v82 = v91;
  }

  if (v69)
  {
    v82 = 30.0;
  }

  *(v86 + v73[21]) = v82;
  v92 = v100;
  if (!v100)
  {
    v92 = _swiftEmptyArrayStorage;
  }

  *(v86 + v73[13]) = v92;
  if (v99)
  {
    v93 = v99;
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
  }

  sub_1000F3C90(v112, type metadata accessor for BackendSetting);
  sub_1000F3C90(v10, type metadata accessor for BackendSetting);
  *(v86 + v74[14]) = v93;
  *(v86 + v74[15]) = (v98 == 2) | v98 & 1;
  *(v86 + v74[16]) = (v97 == 2) | v97 & 1;
  *(v86 + v74[17]) = (v96 == 2) | v96 & 1;
  *(v86 + v74[18]) = (v40 == 2) | v40 & 1;
}

uint64_t sub_1000F5728@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000F5958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Settings();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000F59C0(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_1000F5FEC(a1, v4);
}

unint64_t sub_1000F5A54(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000F5FEC(a1, v4);
}

unint64_t sub_1000F5AC4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000F67E0(a1, v4);
}

unint64_t sub_1000F5B08(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_1000F68A8(a1, v4);
}

unint64_t sub_1000F5B74(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_1000F6918(a1, v4);
}

uint64_t sub_1000F5D0C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_1000F5DA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100041F9C(&qword_10039FB28);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000F77B0(a1, v5);
}

uint64_t sub_1000F5E50(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v7 = Hasher._finalize()();

  return a3(a1, v7);
}

unint64_t sub_1000F5EEC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10017C8D8();
  v4 = Hasher._finalize()();

  return sub_1000F7EA8(a1, v4);
}

unint64_t sub_1000F5F5C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000F81D4(a1, v4);
}

unint64_t sub_1000F5FEC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000F6058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000F6110(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x44496769666E6F63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100345970;
          break;
        case 2:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100345990;
          break;
        case 3:
          break;
        case 4:
          v8 = 0xD000000000000019;
          v7 = 0x80000001003459B0;
          break;
        case 5:
          v8 = 0x79636E6572727563;
          v7 = 0xEC00000065646F43;
          break;
        case 6:
          v8 = 0x696C6C6F50766D65;
          v7 = 0xEE0065707954676ELL;
          break;
        case 7:
          v8 = 0x646F43726F727265;
          v7 = 0xE900000000000065;
          break;
        case 8:
          v8 = 0x646E49726F727265;
          v7 = 0xEF6E6F6974616369;
          break;
        case 9:
          v8 = 0x746361466D726F66;
          goto LABEL_17;
        case 0xA:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100345A10;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100344F70;
          break;
        case 0xC:
          v8 = 0x44496C656E72656BLL;
          break;
        case 0xD:
          v8 = 0x664F7265626D756ELL;
          v9 = 1918985556;
          goto LABEL_23;
        case 0xE:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345A40;
          break;
        case 0xF:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100345A60;
          break;
        case 0x10:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345A80;
          break;
        case 0x11:
          v8 = 0x5041527472617473;
          v7 = 0xEC00000057535544;
          break;
        case 0x12:
          v8 = 0x6574726F70707573;
          v9 = 1145651556;
LABEL_23:
          v7 = v9 | 0xED00007300000000;
          break;
        case 0x13:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345AB0;
          break;
        case 0x14:
          v8 = 0x7272456B63617274;
LABEL_17:
          v7 = 0xEA0000000000726FLL;
          break;
        case 0x15:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100345AD0;
          break;
        default:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100345950;
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x44496769666E6F63;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000100345970;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        case 2:
          v10 = 0x8000000100345990;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 3:
          goto LABEL_67;
        case 4:
          v10 = 0x80000001003459B0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 5:
          v13 = 0x79636E6572727563;
          v14 = 1701080899;
          goto LABEL_54;
        case 6:
          v10 = 0xEE0065707954676ELL;
          if (v8 != 0x696C6C6F50766D65)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 7:
          v10 = 0xE900000000000065;
          if (v8 != 0x646F43726F727265)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 8:
          v11 = 0x646E49726F727265;
          v10 = 0xEF6E6F6974616369;
LABEL_67:
          if (v8 == v11)
          {
            goto LABEL_68;
          }

          goto LABEL_69;
        case 9:
          v12 = 0x746361466D726F66;
          goto LABEL_51;
        case 10:
          v10 = 0x8000000100345A10;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 11:
          v10 = 0x8000000100344F70;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 12:
          if (v8 != 0x44496C656E72656BLL)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 13:
          v15 = 0x664F7265626D756ELL;
          v16 = 1918985556;
          goto LABEL_62;
        case 14:
          v10 = 0x8000000100345A40;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 15:
          v10 = 0x8000000100345A60;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 16:
          v10 = 0x8000000100345A80;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 17:
          v13 = 0x5041527472617473;
          v14 = 1465079108;
LABEL_54:
          v10 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v13)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 18:
          v15 = 0x6574726F70707573;
          v16 = 1145651556;
LABEL_62:
          v10 = v16 | 0xED00007300000000;
          if (v8 != v15)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 19:
          v10 = 0x8000000100345AB0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 20:
          v12 = 0x7272456B63617274;
LABEL_51:
          v10 = 0xEA0000000000726FLL;
          if (v8 != v12)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        case 21:
          v10 = 0x8000000100345AD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        default:
          v10 = 0x8000000100345950;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_69;
          }

LABEL_68:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_69:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000F67E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000F87E0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001A124(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000F68A8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000F6918(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000018;
          v8 = 0x8000000100344F20;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0x7A69536863746142;
          }

          else
          {
            v7 = 0x646F43726F727245;
          }

          v8 = 0xE900000000000065;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x746942746E657645;
        }

        else
        {
          v7 = 0xD000000000000011;
        }

        if (v6 == 1)
        {
          v8 = 0xEB0000000070616DLL;
        }

        else
        {
          v8 = 0x8000000100344F00;
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701080909;
      }

      v9 = 0xD000000000000018;
      v10 = 0x7A69536863746142;
      if (v5 != 4)
      {
        v10 = 0x646F43726F727245;
      }

      if (v5 != 3)
      {
        v9 = v10;
      }

      v11 = 0xE900000000000065;
      if (v5 == 3)
      {
        v11 = 0x8000000100344F20;
      }

      v12 = 0x746942746E657645;
      if (v5 != 1)
      {
        v12 = 0xD000000000000011;
      }

      v13 = 0xEB0000000070616DLL;
      if (v5 != 1)
      {
        v13 = 0x8000000100344F00;
      }

      if (!v5)
      {
        v12 = 1701080909;
        v13 = 0xE400000000000000;
      }

      v14 = v5 <= 2 ? v12 : v9;
      v15 = v5 <= 2 ? v13 : v11;
      if (v7 == v14 && v8 == v15)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000F6B58(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000065;
      v8 = 0x646F43726F727245;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344F90;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD000000000000016;
          v7 = 0x8000000100344FB0;
          break;
        case 4:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344FD0;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100344FF0;
          break;
        case 6:
          v8 = 0x6F436C61626F6C47;
          v7 = 0xEE0044496769666ELL;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344D50;
          break;
        case 8:
          v8 = 0x4E73736150534156;
          v7 = 0xEA00000000006D75;
          break;
        case 9:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000100345020;
          break;
        case 0xA:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100345040;
          break;
        case 0xB:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100345060;
          break;
        case 0xC:
          v8 = 0x746361466D726F46;
          goto LABEL_29;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345090;
          break;
        case 0xE:
          v7 = 0xE300000000000000;
          v8 = 5396052;
          break;
        case 0xF:
          v8 = 0x646E49726F727245;
          v7 = 0xEF6E6F6974616369;
          break;
        case 0x10:
          v8 = 0xD000000000000013;
          v7 = 0x80000001003450C0;
          break;
        case 0x11:
          v8 = 0xD000000000000012;
          v7 = 0x80000001003450E0;
          break;
        case 0x12:
          v8 = 0x5274756F656D6954;
          v7 = 0xEE00534156646165;
          break;
        case 0x13:
          v8 = 0x7272456B63617254;
LABEL_29:
          v7 = 0xEA0000000000726FLL;
          break;
        case 0x14:
          v8 = 0x43676E6972616554;
          v7 = 0xEC000000746E756FLL;
          break;
        case 0x15:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000100345120;
          break;
        case 0x16:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100345140;
          break;
        case 0x17:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100345160;
          break;
        case 0x18:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100345180;
          break;
        case 0x19:
          v8 = 0xD000000000000012;
          v7 = 0x80000001003451A0;
          break;
        case 0x1A:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001003451C0;
          break;
        case 0x1B:
          v8 = 0xD000000000000013;
          v7 = 0x80000001003451E0;
          break;
        case 0x1C:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100345200;
          break;
        default:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100344F70;
          break;
      }

      v9 = 0x646F43726F727245;
      v10 = 0xE900000000000065;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000100344F90;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        case 2:
          goto LABEL_87;
        case 3:
          v10 = 0x8000000100344FB0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 4:
          v10 = 0x8000000100344FD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 5:
          v10 = 0x8000000100344FF0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 6:
          v12 = 0x6F436C61626F6C47;
          v13 = 0x44496769666ELL;
          goto LABEL_73;
        case 7:
          v10 = 0x8000000100344D50;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 8:
          v10 = 0xEA00000000006D75;
          if (v8 != 0x4E73736150534156)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 9:
          v10 = 0x8000000100345020;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 10:
          v10 = 0x8000000100345040;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 11:
          v10 = 0x8000000100345060;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 12:
          v11 = 0x746361466D726F46;
          goto LABEL_82;
        case 13:
          v10 = 0x8000000100345090;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 14:
          v10 = 0xE300000000000000;
          if (v8 != 5396052)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 15:
          v10 = 0xEF6E6F6974616369;
          if (v8 != 0x646E49726F727245)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 16:
          v10 = 0x80000001003450C0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 17:
          v10 = 0x80000001003450E0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 18:
          v12 = 0x5274756F656D6954;
          v13 = 0x534156646165;
LABEL_73:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v12)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 19:
          v11 = 0x7272456B63617254;
LABEL_82:
          v10 = 0xEA0000000000726FLL;
          if (v8 != v11)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 20:
          v10 = 0xEC000000746E756FLL;
          if (v8 != 0x43676E6972616554)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 21:
          v10 = 0x8000000100345120;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 22:
          v10 = 0x8000000100345140;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 23:
          v10 = 0x8000000100345160;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 24:
          v10 = 0x8000000100345180;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 25:
          v10 = 0x80000001003451A0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 26:
          v10 = 0x80000001003451C0;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 27:
          v10 = 0x80000001003451E0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        case 28:
          v9 = 0xD000000000000012;
          v10 = 0x8000000100345200;
LABEL_87:
          if (v8 == v9)
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        default:
          v10 = 0x8000000100344F70;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_89;
          }

LABEL_88:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_89:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000F73B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1000094F4(v17, v16);
          sub_1000F5728(v45, v9, v8, &v44);
          sub_100009548(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1000094F4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1000094F4(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1000F5728(v34, a1, a2, v45);
        sub_100009548(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1000094F4(v17, v16);
      sub_1000F5728(v45, v9, v8, &v44);
      sub_100009548(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1000F77B0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100041F9C(&qword_1003A3268);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000F795C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00006E6F697372;
      v8 = 0x655674656C707041;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100344D70;
          break;
        case 3:
          v8 = 0x7250646564616F4CLL;
          v7 = 0xED0000656C69666FLL;
          break;
        case 4:
          v8 = 0x646F43726F727245;
          v7 = 0xE900000000000065;
          break;
        case 5:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100344DA0;
          break;
        case 6:
          v8 = 0x637465464D414C53;
          v7 = 0xEF73757461745368;
          break;
        case 7:
          v8 = 0x7245726576726553;
          v7 = 0xEF65646F43726F72;
          break;
        case 8:
          v8 = 0x654E6C656E72654BLL;
          v9 = 1684366437;
          goto LABEL_17;
        case 9:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100344DE0;
          break;
        case 0xA:
          v8 = 0x4E656C69666F7250;
          v7 = 0xED00006465646565;
          break;
        case 0xB:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100344E10;
          break;
        case 0xC:
          v8 = 0x5374736575716552;
          v7 = 0xED00007375746174;
          break;
        case 0xD:
          v8 = 0x726F727245464153;
          v9 = 1701080899;
LABEL_17:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100344D50;
          break;
      }

      v10 = 0x655674656C707041;
      v11 = 0xED00006E6F697372;
      switch(a1)
      {
        case 1:
          goto LABEL_41;
        case 2:
          v11 = 0x8000000100344D70;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v12 = 0x7250646564616F4CLL;
          v13 = 0x656C69666FLL;
          goto LABEL_31;
        case 4:
          v11 = 0xE900000000000065;
          if (v8 != 0x646F43726F727245)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v11 = 0x8000000100344DA0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v11 = 0xEF73757461745368;
          if (v8 != 0x637465464D414C53)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v11 = 0xEF65646F43726F72;
          if (v8 != 0x7245726576726553)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v14 = 0x654E6C656E72654BLL;
          v15 = 1684366437;
          goto LABEL_47;
        case 9:
          v11 = 0x8000000100344DE0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0x4E656C69666F7250;
          v11 = 0xED00006465646565;
LABEL_41:
          if (v8 == v10)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 11:
          v11 = 0x8000000100344E10;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v12 = 0x5374736575716552;
          v13 = 0x7375746174;
LABEL_31:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v12)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v14 = 0x726F727245464153;
          v15 = 1701080899;
LABEL_47:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
          v11 = 0x8000000100344D50;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_43:
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000F7EA8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        v9 = 0xD000000000000019;
        if (v6 == 2)
        {
          v10 = 0x80000001003463F0;
        }

        else
        {
          v9 = 0x74536D6574737973;
          v10 = 0xEC00000073757461;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0x666E6F4365726F63;
        }

        else
        {
          v11 = 0x736B706163;
        }

        if (v6)
        {
          v12 = 0xEC00000064496769;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v6 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (v6 <= 1)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xD000000000000013;
        }

        else
        {
          v7 = 0xD000000000000018;
        }

        if (v6 == 4)
        {
          v8 = 0x8000000100346420;
        }

        else
        {
          v8 = 0x8000000100346440;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x6572617764726168;
        v8 = 0xEC00000065707954;
      }

      else if (v6 == 7)
      {
        v7 = 0x4965746174536573;
        v8 = 0xEB000000006F666ELL;
      }

      else
      {
        v7 = 0x6F436C61626F6C67;
        v8 = 0xEE0064496769666ELL;
      }

      v13 = 0x6F436C61626F6C67;
      if (v5 == 7)
      {
        v13 = 0x4965746174536573;
      }

      v14 = 0xEE0064496769666ELL;
      if (v5 == 7)
      {
        v14 = 0xEB000000006F666ELL;
      }

      if (v5 == 6)
      {
        v13 = 0x6572617764726168;
        v14 = 0xEC00000065707954;
      }

      v15 = 0xD000000000000018;
      if (v5 == 4)
      {
        v15 = 0xD000000000000013;
      }

      v16 = 0x8000000100346440;
      if (v5 == 4)
      {
        v16 = 0x8000000100346420;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0xD000000000000019;
      if (v5 == 2)
      {
        v18 = 0x80000001003463F0;
      }

      else
      {
        v17 = 0x74536D6574737973;
        v18 = 0xEC00000073757461;
      }

      if (v5)
      {
        v19 = 0x666E6F4365726F63;
      }

      else
      {
        v19 = 0x736B706163;
      }

      if (v5)
      {
        v20 = 0xEC00000064496769;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1000F81D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

BOOL _s14softposreaderd8SettingsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1000D9AD4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Settings();
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  if (!v8)
  {
    if (v12)
    {
      return 0;
    }

LABEL_7:
    if (v7 != v10 || v6 != v11)
    {
      v14 = v4;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

  if (v8 == 1)
  {
    if (v12 != 1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v7 | v6)
  {
    if (v7 ^ 1 | v6)
    {
      if (v12 != 2)
      {
        return 0;
      }

      if (v10 != 2 || v11 != 0)
      {
        return 0;
      }
    }

    else
    {
      if (v12 != 2)
      {
        return 0;
      }

      if (v10 != 1 || v11 != 0)
      {
        return 0;
      }
    }
  }

  else if (v12 != 2 || (v11 | v10) != 0)
  {
    return 0;
  }

LABEL_34:
  if (*(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v19 = v4;
    if ((sub_10015140C(*(a1 + v4[13]), *(a2 + v4[13])) & 1) != 0 && (sub_10015140C(*(a1 + v19[14]), *(a2 + v19[14])) & 1) != 0 && *(a1 + v19[15]) == *(a2 + v19[15]) && *(a1 + v19[16]) == *(a2 + v19[16]) && *(a1 + v19[17]) == *(a2 + v19[17]) && *(a1 + v19[18]) == *(a2 + v19[18]) && *(a1 + v19[19]) == *(a2 + v19[19]) && *(a1 + v19[20]) == *(a2 + v19[20]))
    {
      return *(a1 + v19[21]) == *(a2 + v19[21]);
    }
  }

  return 0;
}

uint64_t sub_1000F852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BackendSetting();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F85FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BackendSetting();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

void sub_1000F86B4()
{
  type metadata accessor for BackendSetting();
  if (v0 <= 0x3F)
  {
    sub_1000F8790();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F8790()
{
  if (!qword_1003A31F8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A31F8);
    }
  }
}

uint64_t static StorageSetting.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 0;
}

unint64_t sub_1000F8A04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1000F8AF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(v4 | v5))
    {
      return v9 == 2 && (v8 | v7) == 0;
    }

    if (v4 ^ 1 | v5)
    {
      if (v9 != 2 || v7 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 2 || v7 != 1)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }
  }

  else if (!v9)
  {
LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1000F8BA8(uint64_t a1)
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

uint64_t sub_1000F8BC4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000F8C0C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000F8C50(uint64_t result, unsigned int a2)
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

uint64_t sub_1000F8C78(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

unint64_t sub_1000F8CE4(uint64_t a1, unint64_t a2)
{
  sub_1000F8A04(58, 0xE100000000000000, a1, a2);
  if (v4)
  {
    v5 = Substring.init(_:)();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    result = 15;
  }

  else
  {
    v5 = String.subscript.getter();
    v7 = v13;
    v9 = v14;
    v11 = v15;

    result = String.index(after:)();
  }

  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v16 >= result >> 14)
  {
    v17 = String.subscript.getter();
    v19 = v18;
    v21 = v20;
    v42[1] = v11;

    v45 = v9;
    v43 = 47;
    v44 = 0xE100000000000000;
    __chkstk_darwin(v22);
    v41[2] = &v43;
    v23 = sub_100187974(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002956C, v41, v17, v19, v21, v42);
    v24 = v5;
    v25 = v45;
    if (sub_1000F8C78(0x746C7561666564, 0xE700000000000000, v24, v7, v45, v11))
    {

      swift_bridgeObjectRelease_n();
      return 0;
    }

    if (sub_1000F8C78(0x7261726F706D6574, 0xE900000000000079, v24, v7, v25, v11))
    {
      swift_bridgeObjectRelease_n();
      v26 = *(v23 + 2);
      if (v26 != 1)
      {
        if (!v26)
        {

          return 1;
        }

        v34 = "invalid location name";
        v35 = 0xD000000000000016;
LABEL_21:
        v36 = (v34 | 0x8000000000000000);
LABEL_23:
        sub_100020384(7001, v35, v36, 0);
        return swift_willThrow();
      }
    }

    else
    {
      if (sub_1000F8C78(0x656C6974616C6F76, 0xE800000000000000, v24, v7, v25, v11))
      {

        swift_bridgeObjectRelease_n();
        return 2;
      }

      v27 = sub_1000F8C78(0x6E6F697461636F6CLL, 0xE800000000000000, v24, v7, v25, v11);

      if ((v27 & 1) == 0)
      {

        v43 = 0;
        v44 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v43 = 0xD000000000000014;
        v44 = 0x800000010034D8C0;
        v37 = static String._fromSubstring(_:)();
        v39 = v38;

        v40._countAndFlagsBits = v37;
        v40._object = v39;
        String.append(_:)(v40);

        v35 = v43;
        v36 = v44;
        goto LABEL_23;
      }

      v28 = *(v23 + 2);
      if (v28 != 1)
      {
        if (!v28)
        {

          return 0;
        }

        v34 = "unsupported scheme: ";
        v35 = 0xD000000000000015;
        goto LABEL_21;
      }
    }

    v29 = *(v23 + 4);
    v30 = *(v23 + 5);
    v31 = *(v23 + 6);
    v32 = *(v23 + 7);

    v33 = static String._fromSubstring(_:)();

    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F9194(uint64_t a1)
{
  v3 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v19 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    v6 = 0;
LABEL_16:
    sub_10000BD44(a1, &qword_10039E248, &qword_1002C23D0);
    return v6;
  }

  sub_100022380(a1, &v21);
  if (v23)
  {
    v12 = swift_dynamicCast();
    (*(v8 + 56))(v6, v12 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v11, v6, v7);
      v6 = v11;
      v13 = URL.absoluteString.getter();
      v15 = sub_1000F8CE4(v13, v14);
      if (!v1)
      {
        v6 = v15;
      }

      (*(v8 + 8))(v11, v7);
      goto LABEL_16;
    }
  }

  else
  {
    sub_10000BD44(&v21, &qword_10039E248, &qword_1002C23D0);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_10000BD44(v6, &qword_1003A03D0, &unk_1002C3D50);
  sub_100022380(a1, &v21);
  if (v23)
  {
    if (swift_dynamicCast())
    {
      v16 = sub_1000F8CE4(v19, v20);
      if (!v1)
      {
        v6 = v16;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_10000BD44(&v21, &qword_10039E248, &qword_1002C23D0);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v19 = v21;
  v20 = v22;
  v17._object = 0x800000010034D8A0;
  v6 = &v19;
  v17._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v17);
  result = sub_100022380(a1, &v21);
  if (v23)
  {
    _print_unlocked<A, B>(_:_:)();
    sub_10000959C(&v21);
    sub_100020384(7001, v19, v20, 0);
    swift_willThrow();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F9548()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3270);
  sub_10000403C(v0, qword_1003A3270);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000F95A4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3270);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v28);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0x64616552656B616DLL, 0xEC00000029287265, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v28);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v1[2];

  result = sub_10011362C(v16);
  if (!v2)
  {
    v18 = result;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100008F6C(v22, v23, &v28);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = showFunction(signature:_:)(0x64616552656B616DLL, 0xEC00000029287265, _swiftEmptyArrayStorage);
      v27 = sub_100008F6C(v25, v26, &v28);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s: done", v21, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for Reader();
    a1[3] = result;
    a1[4] = &off_100384000;
    *a1 = v18;
  }

  return result;
}

uint64_t sub_1000F98FC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3270);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v28);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034D960, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v28);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v1[2];

  result = sub_1000628DC(v16);
  if (!v2)
  {
    v18 = result;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100008F6C(v22, v23, &v28);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034D960, _swiftEmptyArrayStorage);
      v27 = sub_100008F6C(v25, v26, &v28);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s: done", v21, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for Configurator();
    a1[3] = result;
    a1[4] = &off_100381560;
    *a1 = v18;
  }

  return result;
}

uint64_t sub_1000F9C4C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3270);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v27);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0x696E6F4D656B616DLL, 0xED00002928726F74, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v27);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v1[2];

  result = sub_1000C3DF4();
  if (!v2)
  {
    v17 = result;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = sub_100008F6C(v21, v22, &v27);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = showFunction(signature:_:)(0x696E6F4D656B616DLL, 0xED00002928726F74, _swiftEmptyArrayStorage);
      v26 = sub_100008F6C(v24, v25, &v27);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s: done", v20, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for Monitor();
    a1[3] = result;
    a1[4] = &off_100382EB8;
    *a1 = v17;
  }

  return result;
}

uint64_t sub_1000F9FAC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  if (qword_10039D5F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3270);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v28);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034D940, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v28);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v1[2];

  result = sub_1000D6150(v16);
  if (!v2)
  {
    v18 = result;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100008F6C(v22, v23, &v28);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034D940, _swiftEmptyArrayStorage);
      v27 = sub_100008F6C(v25, v26, &v28);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s: done", v21, 0x16u);
      swift_arrayDestroy();
    }

    result = type metadata accessor for DefaultPINController();
    a1[3] = result;
    a1[4] = &off_100383118;
    *a1 = v18;
  }

  return result;
}

uint64_t sub_1000FA2FC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1000FA3E8()
{
  v0 = type metadata accessor for TLV();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v43 - v6;
  v8 = type metadata accessor for TLVTag();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static TLV.decode(from:)();
  v46 = v7;
  v47 = v5;
  v54 = v13;
  static TLVTag.fileControlInformationTemplate.getter();
  sub_100004074(&qword_1003A2700, &qword_1002C16D0);
  sub_1000CCFF4();
  v14 = Collection<>.filter(tag:)();
  (*(v9 + 8))(v12, v8);

  v16 = *(v14 + 16);
  if (v16)
  {
    v18 = *(v1 + 16);
    v17 = v1 + 16;
    v19 = *(v17 + 64);
    v43[1] = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v50 = *(v17 + 56);
    v51 = v18;
    v49 = (v17 + 16);
    v21 = _swiftEmptyArrayStorage;
    v48 = (v17 - 8);
    *&v15 = 136446210;
    v44 = v15;
    v23 = v46;
    v22 = v47;
    v45 = v17;
    do
    {
      v53 = v16;
      v51(v23, v20, v0);
      v33 = TLV.value.getter();
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10004D810(0, *(v21 + 2) + 1, 1, v21);
      }

      v37 = *(v21 + 2);
      v36 = *(v21 + 3);
      if (v37 >= v36 >> 1)
      {
        v21 = sub_10004D810((v36 > 1), v37 + 1, 1, v21);
      }

      *(v21 + 2) = v37 + 1;
      v52 = v21;
      v38 = &v21[16 * v37];
      *(v38 + 4) = v33;
      *(v38 + 5) = v35;
      if (qword_10039D5F8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000403C(v39, qword_1003A3348);
      (*v49)(v22, v23, v0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v54 = v25;
        *v24 = v44;
        v26 = TLV.value.getter();
        v27 = v0;
        v29 = v28;
        v30 = Data.hexString()();
        v31 = v29;
        v0 = v27;
        v22 = v47;
        sub_100009548(v26, v31);
        (*v48)(v22, v0);
        v32 = sub_100008F6C(v30._countAndFlagsBits, v30._object, &v54);

        *(v24 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v40, v41, "PPSE Response: %{public}s", v24, 0xCu);
        sub_10000959C(v25);
        v23 = v46;
      }

      else
      {

        (*v48)(v22, v0);
      }

      v20 += v50;
      v21 = v52;
      v16 = v53 - 1;
    }

    while (v53 != 1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t sub_1000FA9C0(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_27;
  }

  v4 = HIDWORD(result) - result;
LABEL_11:
  v7 = static TLVTag.TAG_DF8129_LENGTH.getter();
  if (v4 != v7)
  {
    if (qword_10039D5F8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000403C(v8, qword_1003A3348);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_100008F6C(0xD000000000000017, 0x800000010034D9B0, &v18);
      *(v11 + 12) = 2048;
      *(v11 + 14) = static TLVTag.TAG_DF8129_LENGTH.getter();
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - OPS length is not %ld", v11, 0x16u);
      sub_10000959C(v12);
    }

    v13 = 0;
    return v13 | ((v4 != v7) << 8);
  }

  if (v3 > 1)
  {
    v14 = 0;
    if (v3 == 2)
    {
      v14 = *(v2 + 16);
    }
  }

  else if (v3)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  v15 = static TLVTag.OFFSET_OPS_STATUS.getter();
  v16 = __OFADD__(v14, v15);
  result = v14 + v15;
  if (!v16)
  {
    v17 = Data._Representation.subscript.getter();
    v13 = static TLVTag.OPS_STATUS_MASK.getter() & v17;
    return v13 | ((v4 != v7) << 8);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000FABDC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return Data._Representation.subscript.getter();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000FAC48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = a2 >> 32;
    }

    else
    {
      v6 = BYTE6(a3);
    }

    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 >= result && v6 >= v7)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FACA8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3348);
  sub_10000403C(v0, qword_1003A3348);
  sub_100023B24();
  return static SPRLogger.reader.getter();
}

uint64_t sub_1000FAD04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0xF000000000000000;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 16 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 1) = v4;
      return sub_1000094F4(v4, *(&v4 + 1));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FAD88(uint64_t a1, unint64_t a2)
{
  result = sub_10011AA24(a1, a2);
  if ((result & 0x100) != 0 || !result)
  {
    if (qword_10039D5F8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_18;
    }

LABEL_15:
    LODWORD(v8) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v8 = v8;
    goto LABEL_18;
  }

  if (v7 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = __OFSUB__(v14, v15);
    v8 = v14 - v15;
    if (v16)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  v17 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v3 = result;
  v2 = v17 / 5;
  if (v17 / 5 >= result)
  {
    goto LABEL_24;
  }

  if (qword_10039D5F8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A3348);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v3;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v19, v20, "%ld errors reported but only %ld described", v21, 0x16u);
    }

LABEL_24:
    if (v17 >= 5)
    {
      break;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v22 = v2 - 1;
  v13 = _swiftEmptyArrayStorage;
  v23 = 6;
  while (1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v25 = *(a1 + 16);
        v24 = *(a1 + 24);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }
    }

    else
    {
      v24 = a1 >> 32;
      v25 = a1;
      if (!v7)
      {
        v25 = 0;
        v24 = BYTE6(a2);
      }
    }

    if (v23 - 1 < v25)
    {
      break;
    }

    if (v23 - 1 >= v24)
    {
      goto LABEL_42;
    }

    v26 = Data._Representation.subscript.getter();
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10004D810(0, *(v13 + 2) + 1, 1, v13);
    }

    v30 = *(v13 + 2);
    v29 = *(v13 + 3);
    if (v30 >= v29 >> 1)
    {
      v13 = sub_10004D810((v29 > 1), v30 + 1, 1, v13);
    }

    *(v13 + 2) = v30 + 1;
    v31 = &v13[16 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v28;
    if (!v22)
    {
      return v13;
    }

    v23 += 5;
    --v22;
    if (v23 == 0x8000000000000003)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_7:
  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A3348);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "empty Track Error", v12, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000FB9D4()
{
  v0 = &unk_10037E4C0;
  v1 = 12;
  sub_10008AB88();
  while (1)
  {
    v3 = *(v0 - 1);
    v2 = *v0;
    v5 = *(v0 - 3);
    v6 = *(v0 - 2);

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v0 += 4;
    if (!--v1)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1000FBA98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v362 = a4;
  v358 = a3;
  v380 = a2;
  v356 = type metadata accessor for Data.Endianness();
  v355 = *(v356 - 8);
  v4 = *(v355 + 64);
  __chkstk_darwin(v356);
  v354 = &v333[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v381 = type metadata accessor for TLVTag();
  v376 = *(v381 - 8);
  v6 = *(v376 + 64);
  __chkstk_darwin(v381);
  v361 = &v333[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v336 = &v333[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v337 = &v333[-v13];
  v14 = __chkstk_darwin(v12);
  v340 = &v333[-v15];
  v16 = __chkstk_darwin(v14);
  v339 = &v333[-v17];
  v18 = __chkstk_darwin(v16);
  v338 = &v333[-v19];
  v20 = __chkstk_darwin(v18);
  v347 = &v333[-v21];
  v22 = __chkstk_darwin(v20);
  v346 = &v333[-v23];
  v24 = __chkstk_darwin(v22);
  v343 = &v333[-v25];
  v26 = __chkstk_darwin(v24);
  v374 = &v333[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v333[-v29];
  v31 = __chkstk_darwin(v28);
  v33 = &v333[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v333[-v35];
  v37 = __chkstk_darwin(v34);
  v39 = &v333[-v38];
  v40 = __chkstk_darwin(v37);
  v42 = &v333[-v41];
  v43 = __chkstk_darwin(v40);
  v45 = &v333[-v44];
  v46 = __chkstk_darwin(v43);
  v48 = &v333[-v47];
  __chkstk_darwin(v46);
  v50 = &v333[-v49];
  v391 = xmmword_1002C3C70;
  v390 = xmmword_1002C3C70;
  v389 = xmmword_1002C3C70;
  v388 = xmmword_1002C3C70;
  v51 = static TLV.decode(from:)();
  v375 = v48;
  v370 = v45;
  v371 = v42;
  v372 = v39;
  v373 = v36;
  v359 = v33;
  v367 = v30;
  v360 = 0;
  *&v382 = v51;
  v53 = v361;
  v54 = v51;
  static TLVTag.applicationLabel.getter();
  v55 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
  v380 = sub_1000CCFF4();
  Collection<>.first(tag:)();
  v56 = *(v376 + 8);
  v376 += 8;
  v379 = v56;
  v56(v53, v381);
  v57 = type metadata accessor for TLV();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  v378 = v58 + 48;
  v377 = v59;
  v60 = v59(v50, 1, v57);
  if (v60 == 1)
  {
    sub_10000BD44(v50, &unk_10039E210, &unk_1002C65B0);
    v61 = 0;
    v366 = 0;
  }

  else
  {
    v61 = TLV.stringValue.getter();
    v366 = v62;
    (*(v58 + 8))(v50, v57);
  }

  *&v382 = v54;
  v63 = v361;
  static TLVTag.applicationPreferredName.getter();
  v64 = v375;
  Collection<>.first(tag:)();
  v379(v63, v381);
  if (v377(v64, 1, v57) == 1)
  {
    sub_10000BD44(v64, &unk_10039E210, &unk_1002C65B0);
    v357 = 0;
    v335 = 0;
  }

  else
  {
    v357 = TLV.stringValue.getter();
    v335 = v65;
    (*(v58 + 8))(v64, v57);
  }

  v66 = v54;
  *&v382 = v54;
  static TLVTag.applicationIdentifier.getter();
  v67 = v370;
  Collection<>.first(tag:)();
  v379(v63, v381);
  v68 = v377(v67, 1, v57);
  v364 = v57;
  if (v68 == 1)
  {
    sub_10000BD44(v67, &unk_10039E210, &unk_1002C65B0);
    v369 = 0;
    v375 = 0;
    v344 = v61;
    v69 = v374;
    v70 = v372;
    goto LABEL_25;
  }

  v375 = TLV.hexStringValue.getter();
  v72 = v71;
  (*(v58 + 8))(v67, v57);
  v70 = v372;
  v369 = v72;
  if (v366)
  {
    v344 = v61;
    v69 = v374;
    goto LABEL_25;
  }

  v69 = v374;
  if (!v72)
  {
    v344 = v61;
    goto LABEL_25;
  }

  v73 = sub_1000FB9D4();
  if (v74)
  {
    v344 = v73;
    v366 = v74;
    if (qword_10039D5F8 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000403C(v75, qword_1003A3348);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "readResult network set from AID", v78, 2u);
    }

    goto LABEL_25;
  }

  if (qword_10039D5F8 == -1)
  {
    goto LABEL_22;
  }

  while (2)
  {
    swift_once();
LABEL_22:
    v79 = type metadata accessor for Logger();
    sub_10000403C(v79, qword_1003A3348);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "appLabel nil and AID unrecognized", v82, 2u);
      v63 = v361;
    }

    v366 = 0;
    v344 = v61;
LABEL_25:
    *&v382 = v66;
    static TLVTag.thirdPartyData.getter();
    v83 = v371;
    Collection<>.first(tag:)();
    v84 = v83;
    v379(v63, v381);
    v85 = v83;
    v86 = v364;
    v87 = v377(v85, 1, v364);
    v368 = v55;
    if (v87 == 1)
    {
      sub_10000BD44(v84, &unk_10039E210, &unk_1002C65B0);
      if (qword_10039D5F8 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_10000403C(v88, qword_1003A3348);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&_mh_execute_header, v89, v90, "thirdPartyData absent so formFactor from cardInterfaceCapabilities", v91, 2u);
      }

      *&v382 = v66;
      static TLVTag.cardInterfaceCapabilities.getter();
      Collection<>.first(tag:)();
      v379(v63, v381);
      v86 = v364;
      if (v377(v70, 1, v364) == 1)
      {
        sub_10000BD44(v70, &unk_10039E210, &unk_1002C65B0);
        v352 = 0;
        v351 = 0;
      }

      else
      {
        v352 = TLV.hexStringValue.getter();
        v351 = v93;
        (*(v58 + 8))(v70, v86);
      }
    }

    else
    {
      v352 = TLV.hexStringValue.getter();
      v351 = v92;
      (*(v58 + 8))(v84, v86);
    }

    *&v382 = v66;
    static TLVTag.outcomeParameterSet.getter();
    v70 = v373;
    Collection<>.first(tag:)();
    v379(v63, v381);
    v94 = v377(v70, 1, v86);
    v363 = v58;
    if (v94 == 1)
    {
      sub_10000BD44(v70, &unk_10039E210, &unk_1002C65B0);
      v95 = 0;
      v96 = 0xF000000000000000;
    }

    else
    {
      v97 = v86;
      v95 = TLV.value.getter();
      v96 = v98;
      (*(v58 + 8))(v70, v97);
    }

    sub_10001A074(v391, *(&v391 + 1));
    *&v391 = v95;
    *(&v391 + 1) = v96;
    v58 = v358;
    if (v96 >> 60 == 15)
    {
      v349 = 0;
      LODWORD(v373) = 0;
      v365 = 255;
      goto LABEL_49;
    }

    sub_1000094F4(v95, v96);
    v99 = sub_1000FA9C0(v95, v96);
    v55 = 0;
    if ((v99 & 0x100) != 0)
    {
      v100 = 0;
    }

    else
    {
      v100 = v99;
    }

    LODWORD(v373) = v100;
    v101 = v96 >> 62;
    if ((v96 >> 62) > 1)
    {
      if (v101 == 2)
      {
        v55 = *(v95 + 16);
      }
    }

    else if (v101)
    {
      v55 = v95;
    }

    if (!__OFADD__(v55, static TLVTag.OFFSET_OPS_CVM.getter()))
    {
      v102 = Data._Representation.subscript.getter();
      v103 = static TLVTag.OPS_CVM_MASK.getter();
      sub_10001A074(v95, v96);
      v365 = v103 & v102;
      v349 = (v103 & v102) == 32;
LABEL_49:
      v348 = v66;
      *&v382 = v66;
      static TLVTag.terminalCountryCode.getter();
      v104 = v359;
      Collection<>.first(tag:)();
      v379(v63, v381);
      v105 = v364;
      if (v377(v104, 1, v364) == 1)
      {
        sub_10000BD44(v104, &unk_10039E210, &unk_1002C65B0);
        v64 = 0;
        v350 = 1;
      }

      else
      {
        v64 = TLV.uint16Value.getter();
        v350 = WORD1(v64) & 1;
        (*(v363 + 8))(v104, v105);
      }

      v66 = v367;
      *&v382 = v348;
      static TLVTag.terminalVerificationResults.getter();
      Collection<>.first(tag:)();
      v379(v63, v381);
      v106 = v377(v66, 1, v105);
      v342 = v64;
      if (v106 == 1)
      {
        sub_10000BD44(v66, &unk_10039E210, &unk_1002C65B0);
        v353._countAndFlagsBits = 0;
        v353._object = 0;
        v70 = 1;
        v107 = v348;
        goto LABEL_77;
      }

      v108 = TLV.value.getter();
      v109 = v105;
      v55 = v108;
      v61 = v110;
      (*(v363 + 8))(v66, v109);
      v111 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v111 != 2)
        {
          v112 = 0;
          goto LABEL_64;
        }

        v114 = *(v55 + 16);
        v113 = *(v55 + 24);
        v112 = v113 - v114;
        if (!__OFSUB__(v113, v114))
        {
          goto LABEL_64;
        }

        __break(1u);
      }

      else if (!v111)
      {
        v112 = BYTE6(v61);
LABEL_64:
        if (v112 == static TLVTag.TAG_95_LENGTH.getter())
        {
          v353 = Data.hexString()();
          v115 = 0;
          if (v111 > 1)
          {
            if (v111 == 2)
            {
              v115 = *(v55 + 16);
            }
          }

          else if (v111)
          {
            v115 = v55;
          }

          if (!__OFADD__(v115, static TLVTag.OFFSET_BYTE_3.getter()))
          {
            LOBYTE(v382) = Data._Representation.subscript.getter();
            v116 = static TLVTag.TVR_CV_NOT_SUCCESSFUL_BIT.getter();
            sub_100031840();
            v70 = UnsignedInteger.readBit(_:)(v116);
            if (qword_10039D5F8 != -1)
            {
              goto LABEL_275;
            }

            goto LABEL_73;
          }

          goto LABEL_274;
        }

        sub_100009548(v55, v61);
        v353 = 0;
        v70 = 1;
        goto LABEL_76;
      }

      if (__OFSUB__(HIDWORD(v55), v55))
      {
        __break(1u);
LABEL_280:
        __break(1u);
        goto LABEL_281;
      }

      v112 = HIDWORD(v55) - v55;
      goto LABEL_64;
    }

    __break(1u);
LABEL_272:
    swift_once();
LABEL_135:
    v183 = type metadata accessor for Logger();
    sub_10000403C(v183, qword_1003A3348);
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&_mh_execute_header, v184, v185, "switchInterfaceOrNoCVMSuccess: true", v186, 2u);
      v64 = v348;
    }

    *(&v383 + 1) = &type metadata for Bool;
    LOBYTE(v382) = 1;
    sub_10002CFD4(&v382, 0xD00000000000001DLL, 0x800000010034A480);
    while (1)
    {
      *&v382 = v64;
      static TLVTag.merchantCategoryCode.getter();
      v187 = v343;
      Collection<>.first(tag:)();
      v379(v63, v381);
      v188 = v364;
      v189 = v377(v187, 1, v364);
      v374 = v55;
      if (v189 == 1)
      {
        sub_10000BD44(v187, &unk_10039E210, &unk_1002C65B0);
        v190 = 0;
        v191 = 0xF000000000000000;
      }

      else
      {
        v192 = v187;
        v190 = TLV.value.getter();
        v191 = v193;
        (*(v363 + 8))(v192, v188);
      }

      sub_10001A074(v389, *(&v389 + 1));
      *&v389 = v190;
      *(&v389 + 1) = v191;
      *&v382 = v64;
      static TLVTag.languagePreference.getter();
      v194 = v346;
      Collection<>.first(tag:)();
      v379(v63, v381);
      if (v377(v194, 1, v188) == 1)
      {
        sub_10000BD44(v194, &unk_10039E210, &unk_1002C65B0);
        v195 = 0;
        v196 = 0xF000000000000000;
      }

      else
      {
        v195 = TLV.value.getter();
        v196 = v197;
        (*(v363 + 8))(v194, v188);
      }

      sub_10001A074(v388, *(&v388 + 1));
      *&v388 = v195;
      *(&v388 + 1) = v196;
      *&v382 = v64;
      static TLVTag.applicationInterchangeProfile.getter();
      v198 = v347;
      v61 = v368;
      Collection<>.first(tag:)();
      v199 = v198;
      v379(v63, v381);
      v200 = v377(v198, 1, v188);
      v201 = v188;
      if (v200 == 1)
      {
        sub_10000BD44(v199, &unk_10039E210, &unk_1002C65B0);
        v343 = 0;
        v348 = 0;
      }

      else
      {
        v343 = TLV.hexStringValue.getter();
        v348 = v202;
        (*(v363 + 8))(v199, v188);
      }

      v69 = 0xD000000000000012;
      *&v382 = v64;
      static TLVTag.cardProcessingRequirement.getter();
      Collection<>.first(tag:)();
      v379(v63, v381);
      if (v377(v66, 1, v201) == 1)
      {
        sub_10000BD44(v66, &unk_10039E210, &unk_1002C65B0);
        v347 = 0;
        v346 = 0;
      }

      else
      {
        v347 = TLV.hexStringValue.getter();
        v346 = v203;
        (*(v363 + 8))(v66, v201);
      }

      *&v382 = v64;
      static TLVTag.interacCardTransactionInformation.getter();
      v204 = v339;
      Collection<>.first(tag:)();
      v379(v63, v381);
      if (v377(v204, 1, v201) == 1)
      {
        sub_10000BD44(v204, &unk_10039E210, &unk_1002C65B0);
        goto LABEL_159;
      }

      v205 = TLV.value.getter();
      v206 = v201;
      v55 = v207;
      (*(v363 + 8))(v204, v206);
      v208 = 0;
      v209 = v55 >> 62;
      if ((v55 >> 62) > 1)
      {
        if (v209 == 2)
        {
          v208 = *(v205 + 16);
        }
      }

      else if (v209)
      {
        v208 = v205;
      }

      if (!__OFADD__(v208, static TLVTag.OFFSET_BYTE_2.getter()))
      {
        break;
      }

      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      swift_once();
LABEL_73:
      v117 = type metadata accessor for Logger();
      sub_10000403C(v117, qword_1003A3348);
      object = v353._object;

      v66 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v382 = v121;
        *v120 = 136315394;

        v122 = sub_100008F6C(v353._countAndFlagsBits, object, &v382);

        *(v120 + 4) = v122;
        v63 = v361;
        *(v120 + 12) = 1024;
        *(v120 + 14) = v70 & 1;
        _os_log_impl(&_mh_execute_header, v66, v119, "95 TVR: %s, cvNotSuccessful: %{BOOL}d", v120, 0x12u);
        sub_10000959C(v121);
        v58 = v358;

        v69 = v374;
      }

      sub_100009548(v55, v61);

LABEL_76:
      v107 = v348;
      v105 = v364;
LABEL_77:
      *&v382 = v107;
      static TLVTag.errorIndication.getter();
      Collection<>.first(tag:)();
      v379(v63, v381);
      v123 = v377(v69, 1, v105);
      LODWORD(v371) = v70;
      if (v123 == 1)
      {
        sub_10000BD44(v69, &unk_10039E210, &unk_1002C65B0);
        v345 = 0;
        v341 = 0;
        v124 = 0;
        v64 = 0;
        LODWORD(v367) = 0;
        v55 = 0xF000000000000000;
        goto LABEL_95;
      }

      v61 = v105;
      v64 = TLV.value.getter();
      v55 = v125;
      (*(v363 + 8))(v69, v61);
      v126 = v55 >> 62;
      if ((v55 >> 62) > 1)
      {
        if (v126 != 2)
        {
          v127 = 0;
          goto LABEL_90;
        }

        v129 = *(v64 + 16);
        v128 = *(v64 + 24);
        v127 = v128 - v129;
        if (__OFSUB__(v128, v129))
        {
          __break(1u);
LABEL_86:
          if (__OFSUB__(HIDWORD(v64), v64))
          {
            goto LABEL_280;
          }

          v127 = HIDWORD(v64) - v64;
        }

        sub_1000094F4(v64, v55);
        goto LABEL_90;
      }

      if (v126)
      {
        goto LABEL_86;
      }

      v127 = BYTE6(v55);
LABEL_90:
      if (v127 == static TLVTag.TAG_DF8115_LENGTH.getter())
      {
        *(&v383 + 1) = &type metadata for Data;
        v384 = &protocol witness table for Data;
        v370 = v64;
        *&v382 = v64;
        v374 = v55;
        *(&v382 + 1) = v55;
        v130 = sub_10000BE18(&v382, &type metadata for Data);
        v131 = *v130;
        v132 = v130[1];
        v133 = v132 >> 62;
        if ((v132 >> 62) > 1)
        {
          v134 = v360;
          if (v133 == 2)
          {
            v137 = *(v131 + 16);
            v138 = *(v131 + 24);
            sub_1000094F4(v370, v374);
            v139 = __DataStorage._bytes.getter();
            if (v139)
            {
              v140 = __DataStorage._offset.getter();
              if (__OFSUB__(v137, v140))
              {
                goto LABEL_285;
              }

              v139 += v137 - v140;
            }

            v141 = __OFSUB__(v138, v137);
            v142 = v138 - v137;
            if (v141)
            {
              goto LABEL_284;
            }

            v143 = __DataStorage._length.getter();
            if (v143 >= v142)
            {
              v144 = v142;
            }

            else
            {
              v144 = v143;
            }

            v145 = (v144 + v139);
            if (v139)
            {
              v136 = v145;
            }

            else
            {
              v136 = 0;
            }

            v135 = v139;
          }

          else
          {
            memset(v385, 0, 14);
            sub_1000094F4(v370, v374);
            v135 = v385;
            v136 = v385;
          }
        }

        else
        {
          v134 = v360;
          if (v133)
          {
            v146 = v131;
            v147 = v131 >> 32;
            v148 = v147 - v146;
            if (v147 < v146)
            {
              __break(1u);
LABEL_284:
              __break(1u);
LABEL_285:
              __break(1u);
LABEL_286:
              __break(1u);
            }

            sub_1000094F4(v370, v374);
            v149 = __DataStorage._bytes.getter();
            if (v149)
            {
              v150 = v149;
              v151 = __DataStorage._offset.getter();
              if (__OFSUB__(v146, v151))
              {
                goto LABEL_286;
              }

              v152 = (v146 - v151 + v150);
            }

            else
            {
              v152 = 0;
            }

            v153 = __DataStorage._length.getter();
            if (v153 >= v148)
            {
              v154 = v148;
            }

            else
            {
              v154 = v153;
            }

            v155 = &v152[v154];
            if (v152)
            {
              v136 = v155;
            }

            else
            {
              v136 = 0;
            }

            v135 = v152;
          }

          else
          {
            v385[0] = *v130;
            LOWORD(v385[1]) = v132;
            BYTE2(v385[1]) = BYTE2(v132);
            BYTE3(v385[1]) = BYTE3(v132);
            BYTE4(v385[1]) = BYTE4(v132);
            BYTE5(v385[1]) = BYTE5(v132);
            sub_1000094F4(v370, v374);
            v135 = v385;
            v136 = v385 + BYTE6(v132);
          }
        }

        sub_10014B4B8(v135, v136, &v386);
        v360 = v134;
        v157 = v386;
        v156 = v387;
        sub_1000094F4(v386, v387);
        sub_10000959C(&v382);
        static TLVTag.OFFSET_ERROR_INDICATION_L2.getter();
        v345 = Data._Representation.subscript.getter();
        v158 = static TLVTag.OFFSET_ERROR_INDICATION_SW12.getter();
        v160 = sub_1000FABDC(v158, v159, v157, v156);
        v162 = v161;
        v163 = v355;
        v164 = v354;
        v165 = v356;
        (*(v355 + 104))(v354, enum case for Data.Endianness.bigEndian(_:), v356);
        v166 = Data.toUInt16(endianness:)();
        sub_100009548(v160, v162);
        (*(v163 + 8))(v164, v165);
        static TLVTag.OFFSET_ERROR_INDICATION_MSG_ON_ERROR.getter();
        v167 = Data._Representation.subscript.getter();
        v169 = v168;
        sub_100009548(v157, v156);
        LODWORD(v367) = Data.toUInt8()();
        v170 = v367;
        sub_100009548(v167, v169);
        v341 = v166;
        v172 = v166 == 27012 && v170 == 28;
        LODWORD(v359) = v172;
        if (qword_10039D5F8 != -1)
        {
          swift_once();
        }

        v173 = type metadata accessor for Logger();
        sub_10000403C(v173, qword_1003A3348);
        v64 = v370;
        v55 = v374;
        sub_1000094F4(v370, v374);
        v174 = Logger.logObject.getter();
        v175 = static os_log_type_t.default.getter();
        sub_100009548(v64, v55);
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          *&v382 = swift_slowAlloc();
          *v176 = 136315650;
          v177 = Data.hexString()();
          v178 = sub_100008F6C(v177._countAndFlagsBits, v177._object, &v382);

          *(v176 + 4) = v178;
          *(v176 + 12) = 2080;
          v179 = SPRTransactionMessage.description.getter();
          v70 = sub_100008F6C(v179, v180, &v382);

          *(v176 + 14) = v70;
          *(v176 + 22) = 1024;
          v181 = v359;
          *(v176 + 24) = v359;
          _os_log_impl(&_mh_execute_header, v174, v175, "DF8115 Error Indication: %s, Msg On Error: %s, switchInterfaceIndication: %{BOOL}d", v176, 0x1Cu);
          swift_arrayDestroy();
          v58 = v358;

          sub_100009548(v64, v55);
          sub_100009548(v157, v156);

          v124 = v181;
          LODWORD(v372) = 0;
          LOBYTE(v70) = v371;
        }

        else
        {
          sub_100009548(v157, v156);

          sub_100009548(v64, v55);
          LODWORD(v372) = 0;
          LOBYTE(v70) = v371;
          v124 = v359;
        }

        v63 = v361;
        goto LABEL_133;
      }

      sub_100009548(v64, v55);
      v345 = 0;
      v341 = 0;
      v124 = 0;
      LODWORD(v367) = 0;
LABEL_95:
      LODWORD(v372) = 1;
LABEL_133:
      v370 = v64;
      LODWORD(v359) = v124;
      v182 = v124 | v70;
      v64 = v348;
      v70 = v340;
      v66 = v338;
      if (v182)
      {
        if (qword_10039D5F8 != -1)
        {
          goto LABEL_272;
        }

        goto LABEL_135;
      }
    }

    LOBYTE(v382) = Data._Representation.subscript.getter();
    sub_100031840();
    v210 = UnsignedInteger.readBit(_:)(0);
    sub_100009548(v205, v55);
    *(v362 + 133) = v210;
    v61 = v368;
    v201 = v364;
LABEL_159:
    *&v382 = v64;
    static TLVTag.aidOverridePerformed.getter();
    Collection<>.first(tag:)();
    v379(v63, v381);
    if (v377(v70, 1, v201) == 1)
    {
      v66 = v375;
      sub_10000BD44(v70, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v66 = v375;
      v211 = TLV.uint8Value.getter();
      (*(v363 + 8))(v70, v201);
      if ((v211 & 0x100) == 0)
      {
        *(v362 + 129) = v211 != 0;
      }
    }

    *&v382 = v64;
    static TLVTag.cvmResults.getter();
    v70 = v63;
    v63 = v337;
    Collection<>.first(tag:)();
    v379(v70, v381);
    v212 = v377(v63, 1, v201);
    v375 = v66;
    if (v212 == 1)
    {
      sub_10000BD44(v63, &unk_10039E210, &unk_1002C65B0);
      v213 = 0;
      v55 = 0xF000000000000000;
    }

    else
    {
      v61 = v201;
      v213 = TLV.value.getter();
      v55 = v214;
      (*(v363 + 8))(v63, v61);
    }

    sub_10001A074(v390, *(&v390 + 1));
    *&v390 = v213;
    *(&v390 + 1) = v55;
    if (v55 >> 60 == 15)
    {
      goto LABEL_197;
    }

    v215 = v55 >> 62;
    if ((v55 >> 62) > 1)
    {
      if (v215 != 2)
      {
        v61 = 0;
        goto LABEL_178;
      }

      v217 = *(v213 + 16);
      v216 = *(v213 + 24);
      v61 = v216 - v217;
      if (!__OFSUB__(v216, v217))
      {
        goto LABEL_176;
      }

      __break(1u);
    }

    else if (!v215)
    {
      v61 = BYTE6(v55);
      goto LABEL_178;
    }

    if (__OFSUB__(HIDWORD(v213), v213))
    {
LABEL_281:
      __break(1u);
      continue;
    }

    break;
  }

  v61 = HIDWORD(v213) - v213;
LABEL_176:
  sub_1000094F4(v213, v55);
LABEL_178:
  if (v61 == static TLVTag.TAG_9F34_LENGTH.getter())
  {
    v218 = 0;
    if (v215 > 1)
    {
      if (v215 == 2)
      {
        v218 = *(v213 + 16);
      }
    }

    else if (v215)
    {
      v218 = v213;
    }

    if (__OFADD__(v218, static TLVTag.OFFSET_CVM_RESULTS_CVM_PERFORMED.getter()))
    {
      __break(1u);
    }

    else
    {
      LODWORD(v340) = Data._Representation.subscript.getter();
      LODWORD(v70) = static TLVTag.CVM_RESULTS_NO_CVM_PERFORMED.getter();
      v218 = 0;
      if (v215 > 1)
      {
        if (v215 == 2)
        {
          v218 = *(v213 + 16);
        }
      }

      else if (v215)
      {
        v218 = v213;
      }

      if (!__OFADD__(v218, static TLVTag.OFFSET_CVM_RESULTS_CVM_RESULTS.getter()))
      {
        LOBYTE(v66) = Data._Representation.subscript.getter();
        LODWORD(v218) = static TLVTag.CVM_RESULTS_CVM_SUCCESSFUL.getter();
        if (qword_10039D5F8 == -1)
        {
          goto LABEL_193;
        }

        goto LABEL_278;
      }
    }

    __break(1u);
LABEL_278:
    swift_once();
LABEL_193:
    v219 = type metadata accessor for Logger();
    sub_10000403C(v219, qword_1003A3348);
    sub_1000094F4(v213, v55);
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.default.getter();
    sub_10001A074(v213, v55);
    if (os_log_type_enabled(v220, v221))
    {
      LODWORD(v337) = v218;
      LODWORD(v338) = v66 == v218;
      v334 = v340 != v70;
      v222 = swift_slowAlloc();
      LODWORD(v339) = v70;
      v70 = v222;
      v223 = swift_slowAlloc();
      *&v382 = v223;
      *v70 = 136315650;
      v224 = Data.hexString()();
      v218 = sub_100008F6C(v224._countAndFlagsBits, v224._object, &v382);

      *(v70 + 4) = v218;
      LOBYTE(v218) = v337;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v334;
      *(v70 + 18) = 1024;
      *(v70 + 20) = v338;
      _os_log_impl(&_mh_execute_header, v220, v221, "9F34 CVM Results: %s, isCVMPerformed: %{BOOL}d, isCVMSuccess: %{BOOL}d", v70, 0x18u);
      sub_10000959C(v223);

      LOBYTE(v70) = v339;

      sub_10001A074(v213, v55);
    }

    else
    {

      sub_10001A074(v213, v55);
    }

    v225 = v362;
    *(v362 + 131) = v340 != v70;
    *(v225 + 132) = v66 == v218;
  }

  else
  {
    sub_10001A074(v213, v55);
  }

LABEL_197:
  *&v382 = v64;
  v226 = v361;
  static TLVTag.cardState.getter();
  v227 = v336;
  Collection<>.first(tag:)();
  v379(v226, v381);

  v228 = v364;
  if (v377(v227, 1, v364) == 1)
  {
    sub_10000BD44(v227, &unk_10039E210, &unk_1002C65B0);
    v229 = 0;
    v230 = 0;
    v52 = v366;
    v231 = v335;
  }

  else
  {
    v232 = TLV.uint8Value.getter();
    (*(v363 + 8))(v227, v228);
    v231 = v335;
    if ((v232 & 0x100) != 0)
    {
      v229 = 0;
      v230 = 0;
    }

    else
    {
      v230 = static TLVTag.CARD_STATE_EXPIRATION_MASK.getter() & v232;
      v229 = static TLVTag.CARD_STATE_EFFECTIVE_MASK.getter() & v232;
    }

    v52 = v366;
  }

  v233 = v369;
  if (v52)
  {
    LODWORD(v381) = 0;
    *(&v383 + 1) = &type metadata for String;
    *&v382 = v344;
    *(&v382 + 1) = v52;
  }

  else
  {
    v52 = 0;
    v383 = 0u;
    v382 = 0u;
    LODWORD(v381) = 1;
  }

  v366 = v52;

  sub_10002CFD4(&v382, 0x6B726F7774656ELL, 0xE700000000000000);
  if (v231)
  {
    v234 = &type metadata for String;
    v235 = v231;
    v236 = v231;
    v237 = v357;
  }

  else
  {
    v236 = 0;
    v237 = 0;
    v234 = 0;
    *&v383 = 0;
    v235 = 0xE000000000000000;
  }

  *&v382 = v237;
  *(&v382 + 1) = v231;
  *(&v383 + 1) = v234;

  sub_10002CFD4(&v382, 0x656D614E707061, 0xE700000000000000);
  if (*(&v391 + 1) >> 60 == 15)
  {
    v238 = 0;
    v239 = 0;
    v240 = 0;
    *&v383 = 0;
  }

  else
  {
    v240 = &type metadata for Data;
    v239 = *(&v391 + 1);
    v238 = v391;
  }

  *&v382 = v238;
  *(&v382 + 1) = v239;
  *(&v383 + 1) = v240;
  sub_10001A3E8(v391, *(&v391 + 1));
  sub_10002CFD4(&v382, 0xD000000000000013, 0x8000000100345A40);
  type metadata accessor for SPRTransactionOutcomeStatus(0);
  *(&v383 + 1) = v241;
  LOBYTE(v382) = v373;
  sub_10002CFD4(&v382, 0x53656D6F6374756FLL, 0xED00007375746174);
  type metadata accessor for SPRTransactionCVMType(0);
  *(&v383 + 1) = v242;
  LOBYTE(v382) = v365;
  sub_10002CFD4(&v382, 0x657079546D7663, 0xE700000000000000);
  if (*(&v390 + 1) >> 60 == 15)
  {
    v243 = 0;
    v244 = 0;
    v245 = 0;
    *&v383 = 0;
  }

  else
  {
    v245 = &type metadata for Data;
    v244 = *(&v390 + 1);
    v243 = v390;
  }

  *&v382 = v243;
  *(&v382 + 1) = v244;
  *(&v383 + 1) = v245;
  sub_10001A3E8(v390, *(&v390 + 1));
  sub_10002CFD4(&v382, 0x6C757365526D7663, 0xE900000000000074);
  *(&v383 + 1) = &type metadata for Bool;
  LOBYTE(v382) = v349;
  sub_10002CFD4(&v382, 0x69757165526E6970, 0xEB00000000646572);
  if (*(&v389 + 1) >> 60 == 15)
  {
    v246 = 0;
    v247 = 0;
    v248 = 0;
    *&v383 = 0;
  }

  else
  {
    v248 = &type metadata for Data;
    v247 = *(&v389 + 1);
    v246 = v389;
  }

  *&v382 = v246;
  *(&v382 + 1) = v247;
  *(&v383 + 1) = v248;
  sub_10001A3E8(v389, *(&v389 + 1));
  sub_10002CFD4(&v382, 0xD000000000000014, 0x800000010034A3C0);
  if (*(&v388 + 1) >> 60 == 15)
  {
    v249 = 0;
    v250 = 0;
    v251 = 0;
    *&v383 = 0;
  }

  else
  {
    v251 = &type metadata for Data;
    v250 = *(&v388 + 1);
    v249 = v388;
  }

  *&v382 = v249;
  *(&v382 + 1) = v250;
  *(&v383 + 1) = v251;
  sub_10001A3E8(v388, *(&v388 + 1));
  sub_10002CFD4(&v382, 0xD000000000000012, 0x800000010034A400);
  if (v372)
  {
    v252 = 0;
    v382 = 0uLL;
    *&v383 = 0;
  }

  else
  {
    LOWORD(v382) = v341;
    v252 = &type metadata for UInt16;
  }

  *(&v383 + 1) = v252;
  sub_10002CFD4(&v382, 0xD000000000000019, 0x800000010034A380);
  type metadata accessor for SPRTransactionMessage(0);
  *(&v383 + 1) = v253;
  LOBYTE(v382) = v367;
  sub_10002CFD4(&v382, 0xD000000000000019, 0x800000010034A3A0);
  type metadata accessor for SPRCardExpirationState(0);
  *(&v383 + 1) = v254;
  LOBYTE(v382) = v230;
  sub_10002CFD4(&v382, 0xD000000000000013, 0x800000010034A4A0);
  type metadata accessor for SPRCardEffectiveState(0);
  *(&v383 + 1) = v255;
  LOBYTE(v382) = v229;
  sub_10002CFD4(&v382, 0xD000000000000012, 0x800000010034A4C0);
  if (qword_10039D5F8 != -1)
  {
    swift_once();
  }

  v256 = type metadata accessor for Logger();
  sub_10000403C(v256, qword_1003A3348);

  v257 = Logger.logObject.getter();
  v258 = static os_log_type_t.default.getter();

  v259 = os_log_type_enabled(v257, v258);
  v260 = v375;
  v369 = v233;
  if (v259)
  {
    v261 = swift_slowAlloc();
    *&v382 = swift_slowAlloc();
    *v261 = 136447746;
    if (v236)
    {
      v262 = v357;
    }

    else
    {
      v262 = 0;
    }

    v263 = sub_100008F6C(v262, v235, &v382);

    *(v261 + 4) = v263;
    *(v261 + 12) = 2082;
    swift_beginAccess();
    v264 = *(&v391 + 1);
    if (*(&v391 + 1) >> 60 == 15)
    {
      countAndFlagsBits = 0;
      v266 = 0xE000000000000000;
    }

    else
    {
      v268 = v391;
      sub_1000094F4(v391, *(&v391 + 1));
      v269 = Data.hexString()();
      v266 = v269._object;
      sub_10001A074(v268, v264);
      countAndFlagsBits = v269._countAndFlagsBits;
    }

    v270 = sub_100008F6C(countAndFlagsBits, v266, &v382);

    *(v261 + 14) = v270;
    *(v261 + 22) = 2082;
    swift_beginAccess();
    v271 = *(&v390 + 1);
    if (*(&v390 + 1) >> 60 == 15)
    {
      v272 = 0;
      v273 = 0xE000000000000000;
    }

    else
    {
      v274 = v390;
      sub_1000094F4(v390, *(&v390 + 1));
      v275 = Data.hexString()();
      v273 = v275._object;
      sub_10001A074(v274, v271);
      v272 = v275._countAndFlagsBits;
    }

    v276 = sub_100008F6C(v272, v273, &v382);

    *(v261 + 24) = v276;
    *(v261 + 32) = 2082;
    v277 = SPRTransactionCVMType.description.getter();
    v279 = sub_100008F6C(v277, v278, &v382);

    *(v261 + 34) = v279;
    *(v261 + 42) = 2082;
    swift_beginAccess();
    v280 = *(&v388 + 1);
    if (*(&v388 + 1) >> 60 == 15)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
    }

    else
    {
      v283 = v388;
      sub_1000094F4(v388, *(&v388 + 1));
      v284 = Data.hexString()();
      v282 = v284._object;
      sub_10001A074(v283, v280);
      v281 = v284._countAndFlagsBits;
    }

    v285 = sub_100008F6C(v281, v282, &v382);

    *(v261 + 44) = v285;
    *(v261 + 52) = 2082;
    swift_beginAccess();
    v286 = *(&v389 + 1);
    if (*(&v389 + 1) >> 60 == 15)
    {
      v287 = 0;
      v288 = 0xE000000000000000;
    }

    else
    {
      v289 = v389;
      sub_1000094F4(v389, *(&v389 + 1));
      v290 = Data.hexString()();
      v288 = v290._object;
      sub_10001A074(v289, v286);
      v287 = v290._countAndFlagsBits;
    }

    v267 = v369;
    v291 = sub_100008F6C(v287, v288, &v382);

    *(v261 + 54) = v291;
    *(v261 + 62) = 2082;
    v292 = SPRTransactionMessage.description.getter();
    v294 = sub_100008F6C(v292, v293, &v382);

    *(v261 + 64) = v294;
    _os_log_impl(&_mh_execute_header, v257, v258, "Transaction Results: appName: %{public}s, outcomeParameterSet: %{public}s, cvmResult: %{public}s, cvmType: %{public}s, langPreference: %{public}s, MCC: %{public}s, errorIndicationMsgOnError: %{public}s,", v261, 0x48u);
    swift_arrayDestroy();

    v260 = v375;
  }

  else
  {

    v267 = v233;
  }

  sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  v295 = swift_allocObject();
  v296 = v295;
  *(v295 + 16) = xmmword_1002C7370;
  *(v295 + 32) = 10;
  v297 = v374;
  if (v381)
  {
    v298 = 0;
    v299 = 0;
    v300 = 0;
    *(v295 + 56) = 0;
  }

  else
  {
    v300 = &type metadata for String;
    v299 = v366;
    v298 = v344;
  }

  v301 = v352;
  v302 = v351;
  v303 = v353._countAndFlagsBits;
  v304 = v353._object;
  *(v295 + 40) = v298;
  *(v295 + 48) = v299;
  *(v295 + 64) = v300;
  *(v295 + 72) = 11;
  if (v267)
  {
    v305 = &type metadata for String;
    v306 = v260;
    v307 = v267;
  }

  else
  {
    v306 = 0;
    v307 = 0;
    v305 = 0;
    *(v295 + 96) = 0;
  }

  *(v295 + 80) = v306;
  *(v295 + 88) = v307;
  *(v295 + 104) = v305;
  *(v295 + 112) = 12;
  if (v302)
  {
    v308 = &type metadata for String;
  }

  else
  {
    v301 = 0;
    v308 = 0;
    *(v295 + 136) = 0;
  }

  *(v295 + 120) = v301;
  *(v295 + 128) = v302;
  *(v295 + 144) = v308;
  *(v295 + 152) = 13;
  if (v350)
  {
    v309 = 0;
    *(v295 + 160) = 0;
    *(v295 + 168) = 0;
    *(v295 + 176) = 0;
  }

  else
  {
    *(v295 + 160) = v342;
    v309 = &type metadata for UInt16;
  }

  *(v295 + 184) = v309;
  *(v295 + 192) = 14;
  if (v304)
  {
    v310 = &type metadata for String;
  }

  else
  {
    v303 = 0;
    v310 = 0;
    *(v295 + 216) = 0;
  }

  *(v295 + 200) = v303;
  *(v295 + 208) = v304;
  *(v295 + 224) = v310;
  *(v295 + 232) = 15;
  if (v297 >> 60 == 15)
  {
    *(v295 + 248) = 0;
    *(v295 + 256) = 0;

    v311 = 0;
    v312 = 0;
  }

  else
  {
    v313 = v355;
    v314 = v354;
    v315 = v356;
    (*(v355 + 104))(v354, enum case for Data.Endianness.bigEndian(_:), v356);

    v311 = Data.toUInt64(endianness:)();
    (*(v313 + 8))(v314, v315);
    v312 = &type metadata for UInt64;
  }

  *(v296 + 240) = v311;
  *(v296 + 264) = v312;
  *(v296 + 272) = 16;
  swift_beginAccess();
  v316 = *(&v391 + 1);
  if (*(&v391 + 1) >> 60 == 15)
  {
    v317 = 0;
    v318 = 0;
    *(v296 + 288) = 0;
    *(v296 + 296) = 0;
  }

  else
  {
    v319 = v391;
    v320 = v355;
    v321 = v354;
    v322 = v356;
    (*(v355 + 104))(v354, enum case for Data.Endianness.bigEndian(_:), v356);
    sub_1000094F4(v319, v316);
    v317 = Data.toUInt64(endianness:)();
    sub_10001A074(v319, v316);
    (*(v320 + 8))(v321, v322);
    v318 = &type metadata for UInt64;
  }

  v323 = v348;
  v324 = v347;
  v325 = v346;
  *(v296 + 280) = v317;
  *(v296 + 304) = v318;
  *(v296 + 312) = 21;
  if (v323)
  {
    v326 = &type metadata for String;
    v327 = v343;
  }

  else
  {
    v327 = 0;
    v326 = 0;
    *(v296 + 336) = 0;
  }

  *(v296 + 320) = v327;
  *(v296 + 328) = v323;
  *(v296 + 344) = v326;
  *(v296 + 352) = 22;
  if (v325)
  {
    v328 = &type metadata for String;
  }

  else
  {
    v324 = 0;
    v328 = 0;
    *(v296 + 376) = 0;
  }

  *(v296 + 360) = v324;
  *(v296 + 368) = v325;
  *(v296 + 384) = v328;
  v329 = sub_10018399C(v296);
  swift_setDeallocating();
  sub_100004074(&qword_10039EC60, &qword_1002C1F80);
  swift_arrayDestroy();
  v330 = swift_deallocClassInstance();
  v331 = *(v362 + 56);
  __chkstk_darwin(v330);
  *&v333[-16] = v329;
  os_unfair_lock_lock((v331 + 32));
  sub_100029720((v331 + 16));
  os_unfair_lock_unlock((v331 + 32));
  sub_10001A074(v370, v374);

  sub_10001A074(v388, *(&v388 + 1));
  sub_10001A074(v389, *(&v389 + 1));
  sub_10001A074(v390, *(&v390 + 1));
  sub_10001A074(v391, *(&v391 + 1));
  return (v345 << 8) | (v372 << 16) | v373;
}

uint64_t sub_1000FF07C(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 22)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    if (!v5)
    {
      if (BYTE6(a2) != 22)
      {
        goto LABEL_19;
      }

LABEL_11:
      v10 = sub_10011AA24(a1, a2);
      if ((v10 & 0x100) == 0)
      {
        v2 = v10;
        if (qword_10039D5F8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_19:
      if (qword_10039D5F8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000403C(v20, qword_1003A3348);
      sub_1000094F4(a1, a2);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      sub_100009548(a1, a2);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v27 = v24;
        *v23 = 136315138;
        v25 = Data.hexString()();
        v26 = sub_100008F6C(v25._countAndFlagsBits, v25._object, &v27);

        *(v23 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "Bad length or could not get messageId from UIRD: %s", v23, 0xCu);
        sub_10000959C(v24);
      }

      return 0;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 22)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_13:
  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A3348);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    v16 = SPRTransactionMessage.description.getter();
    v18 = sub_100008F6C(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "UIRD: %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  if (v2 > 0x1Fu)
  {
    if (v2 == 32)
    {
      return 8;
    }

    else
    {
      if (v2 != 33)
      {
        return 0;
      }

      return 6;
    }
  }

  else
  {
    if (v2 != 6)
    {
      if (v2 == 28)
      {
        return 7;
      }

      return 0;
    }

    return 10;
  }
}

uint64_t sub_1000FF3CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_100009548(a2, a3);
  }

  return result;
}

__n128 sub_1000FF3E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000FF404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000FF44C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000FF6A4(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A3438, &qword_1002C75B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100100224();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 1);
    v13 = *(v3 + 2);
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + 24);
    v19 = *(v3 + 24);
    v18 = 2;
    sub_1000A1E00(&v22, v17);
    sub_1001002CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v19, *(&v19 + 1));
    v21 = *(v3 + 40);
    v19 = *(v3 + 40);
    v18 = 3;
    sub_1000A1E00(&v21, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v19, *(&v19 + 1));
    v14 = v3[56];
    LOBYTE(v19) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 4);
    v20 = v19;
    v18 = 5;
    sub_1000A1E00(&v20, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100009548(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000FF944()
{
  v1 = *v0;
  v2 = 0x69757165526E6970;
  v3 = 0x61484B454B6E6970;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746361736E617274;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1000FFA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000FFB34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000FFA54(uint64_t a1)
{
  v2 = sub_100100224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FFA90(uint64_t a1)
{
  v2 = sub_100100224();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000FFACC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000FFD4C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000FFB34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69757165526E6970 && a2 == 0xEB00000000646572;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xED000064496E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010034DB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61484B454B6E6970 && a2 == 0xEA00000000006873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010034A460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010034DB60 == a2)
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

uint64_t sub_1000FFD4C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A3420, &qword_1002C75B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_100100224();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  LOBYTE(v36) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v36) = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v12;
  LOBYTE(v31) = 2;
  sub_100100278();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v36;
  v28 = v37;
  LOBYTE(v31) = 3;
  v26 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v36;
  v24 = v37;
  LOBYTE(v36) = 4;
  LODWORD(v26) = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v11 & 1;
  v13 = v26 & 1;
  (*(v6 + 8))(v9, v5);
  v23 = *(&v46 + 1);
  v26 = v46;
  LOBYTE(v31) = v11 & 1;
  v14 = v29;
  v15 = v30;
  *(&v31 + 1) = v29;
  *&v32 = v30;
  v16 = v27;
  v17 = v28;
  *(&v32 + 1) = v27;
  *&v33 = v28;
  v18 = v24;
  *(&v33 + 1) = v25;
  *&v34 = v24;
  BYTE8(v34) = v13;
  v35 = v46;
  sub_1000D7454(&v31, &v36);
  sub_10000959C(a1);
  LOBYTE(v36) = v47;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v25;
  v42 = v18;
  v43 = v13;
  v44 = v26;
  v45 = v23;
  result = sub_1000D74B0(&v36);
  v20 = v34;
  a2[2] = v33;
  a2[3] = v20;
  a2[4] = v35;
  v21 = v32;
  *a2 = v31;
  a2[1] = v21;
  return result;
}

unint64_t sub_100100224()
{
  result = qword_1003A3428;
  if (!qword_1003A3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3428);
  }

  return result;
}

unint64_t sub_100100278()
{
  result = qword_1003A3430;
  if (!qword_1003A3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3430);
  }

  return result;
}

unint64_t sub_1001002CC()
{
  result = qword_1003A3440;
  if (!qword_1003A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3440);
  }

  return result;
}

unint64_t sub_100100334()
{
  result = qword_1003A3448;
  if (!qword_1003A3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3448);
  }

  return result;
}

unint64_t sub_10010038C()
{
  result = qword_1003A3450;
  if (!qword_1003A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3450);
  }

  return result;
}

unint64_t sub_1001003E4()
{
  result = qword_1003A3458;
  if (!qword_1003A3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A3458);
  }

  return result;
}

uint64_t sub_100100438()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3460);
  sub_10000403C(v0, qword_1003A3460);
  sub_100023B24();
  return static SPRLogger.configurator.getter();
}

uint64_t sub_100100494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, id *a7)
{
  v8 = sub_100100664(a1, a3, a4, a5, a6, a7);

  return v8 & 1;
}

void sub_10010051C()
{
  if (qword_10039D600 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A3460);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100008F6C(0xD000000000000027, 0x800000010034DBB0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "NFSecureElementManagerSession ended from %s", v2, 0xCu);
    sub_10000959C(v3);
  }
}

uint64_t sub_100100664(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6)
{
  v12 = [objc_opt_self() sharedHardwareManager];
  v13 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
  if (v6)
  {

    v14 = 0;
  }

  else
  {
    v15 = v13;

    v16 = v15;
    sub_100153494(v16, a2, a3, a4, a5, a6);

    v19[4] = sub_10010051C;
    v19[5] = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100003974;
    v19[3] = &unk_100383F88;
    v17 = _Block_copy(v19);
    [v16 endSessionWithCompletion:v17];
    _Block_release(v17);

    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_100100874(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedHardwareManager];
  v5 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    v7 = v5;

    v8 = *sub_10000BE18((a2 + 528), *(a2 + 552));
    v9 = v7;
    sub_100095A94(v9);

    v12[4] = sub_10010051C;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100003974;
    v12[3] = &unk_100383FD8;
    v10 = _Block_copy(v12);
    [v9 endSessionWithCompletion:v10];
    _Block_release(v10);

    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100100ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v17 = a6;
  v9 = [objc_opt_self() sharedHardwareManager];
  v10 = NFHardwareManager.startSecureElementManagerSession(deadline:)();
  if (v7)
  {

    v11 = 0;
  }

  else
  {
    v12 = v10;

    v13 = v12;
    v17();

    v16[4] = sub_10010051C;
    v16[5] = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100003974;
    v16[3] = a7;
    v14 = _Block_copy(v16);
    [v13 endSessionWithCompletion:v14];
    _Block_release(v14);

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_100100CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100100D2C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3510);
  sub_10000403C(v0, qword_1003A3510);
  sub_100023B24();
  return static SPRLogger.reader.getter();
}

id sub_100100D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10039D608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000403C(v6, qword_1003A3510);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = SPRReadEvent.description.getter();
    v12 = sub_100008F6C(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = SPRReaderMode.description.getter();
    v15 = sub_100008F6C(v13, v14, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "onUpdate(event: .%s, mode: .%s)", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = *(v3 + 16);
  if (result)
  {

    return [result onUpdateWithEvent:a1 mode:a2];
  }

  return result;
}

uint64_t sub_100100FC0(uint64_t a1)
{
  v2 = v1;
  if (qword_10039D608 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A3510);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v8 = String.init<A>(describing:)();
    v10 = sub_100008F6C(v8, v9, &v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A35E8, &qword_1002C7730);
    v11 = String.init<A>(describing:)();
    v13 = sub_100008F6C(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "onFailure(error: %s, mode: %s)", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v2 + 32);
  return (*(v2 + 24))(0, a1);
}

uint64_t sub_10010123C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1001012A0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A35F0);
  sub_10000403C(v0, qword_1003A35F0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

uint64_t sub_10010130C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A3608);
  v1 = sub_10000403C(v0, qword_1003A3608);
  if (qword_10039D730 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1001013D4()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A35F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v24);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if ([v0[13] operationCount] >= 1)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "reader deinit and readCard in progress, client must have crashed", v15, 2u);
    }

    sub_10000CCE4((v1 + 40), v24);
    v16 = sub_10000BE18(v24, v24[3]);
    type metadata accessor for ReadError(0);
    v23[3] = v17;
    v23[0] = sub_1000207FC(4013, 0, 0, 0);
    v22 = *v16;
    type metadata accessor for DefaultManagedDictionary();
    sub_10017A800(v23, 1, 0, 0, 0.0);
    sub_10000959C(v23);
    sub_10000959C(v24);
    v18 = v1[39];
    *(v18 + 152) = 4013;
    *(v18 + 121) = 0;
    *(v18 + 127) = 1;
    sub_10011BBA0(&off_10037E7A8);
    sub_100027F94(&off_10037E7D0);
    [v1[13] cancelAllOperations];
  }

  sub_10000959C(v1 + 2);
  sub_10000959C(v1 + 7);

  sub_10000959C(v1 + 14);
  sub_10000959C(v1 + 19);
  sub_10000959C(v1 + 24);
  sub_10000959C(v1 + 29);
  sub_10000959C(v1 + 34);
  v19 = v1[39];

  sub_10000959C(v1 + 40);
  sub_10000959C(v1 + 45);
  sub_10000959C(v1 + 50);
  sub_10000959C(v1 + 56);
  v20 = v1[61];

  return v1;
}

uint64_t sub_100101770()
{
  sub_1001013D4();

  return swift_deallocClassInstance();
}

void sub_1001017C8(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  v7 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v34 - v9;
  if (qword_10039D610 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000403C(v11, qword_1003A35F0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = a1;
    v15 = v14;
    v36 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100008F6C(v16, v17, &v36);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = showFunction(signature:_:)(0xD000000000000019, 0x800000010034E8A0, _swiftEmptyArrayStorage);
    v21 = sub_100008F6C(v19, v20, &v36);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    v3 = v2;
    a1 = v35;
  }

  v22 = [*(*sub_10000BE18(v4 + 56 v4[59]) + 16)];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = type metadata accessor for ReaderConfiguration();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_100117D74(a1, v24, v26);
    if (!v3)
    {
      v31 = v4[61];
      v4[61] = v30;

      v32 = v4[61];
      if (v32)
      {
        sub_100065074(v32 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_safTPID, v10, &qword_1003A0178, &unk_1002C3BB0);
      }

      else
      {
        v33 = type metadata accessor for UUID();
        (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
      }

      sub_10010FBFC(v10);
      sub_10000BD44(v10, &qword_1003A0178, &unk_1002C3BB0);
    }
  }

  else
  {
    __break(1u);
  }
}