uint64_t sub_1002AA338(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726569666974;
  v3 = 0x6E65644965736163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69666E6F4363666ELL;
    }

    else
    {
      v5 = 0x69746C754D7369;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x444955557462;
    }

    else
    {
      v5 = 0x6E65644965736163;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEE00726569666974;
    }
  }

  v7 = 0x69666E6F4363666ELL;
  v8 = 0xE900000000000067;
  if (a2 != 2)
  {
    v7 = 0x69746C754D7369;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x444955557462;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_1002AA484(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065646F43;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0x655270756B6F6F6CLL;
    }

    if (v3 == 2)
    {
      v4 = 0x8000000100788100;
    }

    else
    {
      v4 = 0xED000073746C7573;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF6567617373654DLL;
    }

    else
    {
      v4 = 0xEC00000065646F43;
    }

    v5 = 0x65736E6F70736572;
  }

  v6 = 0xD000000000000019;
  v7 = 0x8000000100788100;
  if (a2 != 2)
  {
    v6 = 0x655270756B6F6F6CLL;
    v7 = 0xED000073746C7573;
  }

  if (a2)
  {
    v2 = 0xEF6567617373654DLL;
  }

  if (a2 <= 1u)
  {
    v8 = 0x65736E6F70736572;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1002AA5D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF4449656C707041;
  v3 = 0x7265766965636552;
  v4 = a1;
  v5 = 0x80000001007884C0;
  v6 = 0xD000000000000013;
  if (a1 != 4)
  {
    v5 = 0x80000001007884E0;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000010;
    v7 = 0x80000001007884A0;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0x8000000100788460;
  v9 = 0xD000000000000015;
  if (a1 == 1)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v8 = 0x8000000100788480;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7265766965636552;
  }

  if (!v4)
  {
    v8 = 0xEF4449656C707041;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v10 = v6;
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001007884C0;
      }

      else
      {
        v2 = 0x80000001007884E0;
      }

      v3 = 0xD000000000000013;
      goto LABEL_29;
    }

    v2 = 0x80000001007884A0;
LABEL_25:
    v3 = 0xD000000000000010;
    goto LABEL_29;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v2 = 0x8000000100788480;
      v3 = 0xD000000000000015;
      goto LABEL_29;
    }

    v2 = 0x8000000100788460;
    goto LABEL_25;
  }

LABEL_29:
  if (v10 == v3 && v11 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_1002AA758(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004449;
  v3 = 0x726566736E617254;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x656C646E6148;
  v7 = 0x7461446472614356;
  if (a1 == 4)
  {
    v8 = 0xE900000000000061;
  }

  else
  {
    v7 = 0xD000000000000011;
    v8 = 0x80000001007886E0;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6D614E6E65766947;
  v10 = 0xE900000000000065;
  if (a1 != 1)
  {
    v9 = 0x656D614E6C6C7546;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x726566736E617254;
    v10 = 0xEA00000000004449;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x656C646E6148)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000061;
      if (v11 != 0x7461446472614356)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x80000001007886E0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x6D614E6E65766947)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D614E6C6C7546;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_1002AA934(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004449;
  v3 = 0x726566736E617254;
  v4 = a1;
  v5 = 0x73507265646E6553;
  v6 = 0xEF6D796E6F647565;
  if (a1 != 5)
  {
    v5 = 0x75507265646E6553;
    v6 = 0xEF6E656B6F546873;
  }

  v7 = 0xE400000000000000;
  v8 = 1635017028;
  if (a1 != 3)
  {
    v8 = 0x6F4364616F6C7055;
    v7 = 0xEE006574656C706DLL;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7479426C61746F54;
  v10 = 0xEA00000000007365;
  if (a1 != 1)
  {
    v9 = 0x2D746E65746E6F43;
    v10 = 0xEC00000065707954;
  }

  if (!a1)
  {
    v9 = 0x726566736E617254;
    v10 = 0xEA00000000004449;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000007365;
        if (v11 != 0x7479426C61746F54)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC00000065707954;
        if (v11 != 0x2D746E65746E6F43)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF6D796E6F647565;
        if (v11 != 0x73507265646E6553)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF6E656B6F546873;
        if (v11 != 0x75507265646E6553)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1635017028)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6F4364616F6C7055;
    v2 = 0xEE006574656C706DLL;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_1002AABA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000044496E6FLL;
  v3 = a1;
  if (a1 <= 2u)
  {
    v10 = 0x80000001007885E0;
    v11 = 0xD000000000000017;
    if (a1 == 1)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v10 = 0x80000001007887B0;
    }

    if (a1)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0xD000000000000014;
    }

    if (v3)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0x8000000100788580;
    }
  }

  else
  {
    v4 = 0x8000000100788800;
    v5 = 0xD000000000000015;
    if (a1 == 5)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x8000000100788820;
    }

    v6 = 0x80000001007887E0;
    if (a1 == 3)
    {
      v7 = 0x6973736553534449;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a1 == 3)
    {
      v6 = 0xEC00000044496E6FLL;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 4)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000100788580;
      if (v8 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (a2 != 1)
    {
      v2 = 0x80000001007887B0;
      if (v8 != 0xD000000000000017)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = "ReceiverModelName";
    goto LABEL_40;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      if (v8 != 0x6973736553534449)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = "ReceiverPseudonym";
LABEL_40:
    v2 = (v12 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 == 5)
  {
    v12 = "ReceiverPushToken";
    goto LABEL_40;
  }

  v2 = 0x8000000100788820;
  if (v8 != 0xD000000000000015)
  {
LABEL_45:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_43:
  if (v9 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_1002AADAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x69447349656C6946;
  v5 = 0xEF79726F74636572;
  if (a1 != 5)
  {
    v4 = 0xD000000000000019;
    v5 = 0x8000000100788880;
  }

  v6 = 0xE800000000000000;
  v7 = 0x657A6953656C6946;
  if (a1 != 3)
  {
    v7 = 0x506D6F42656C6946;
    v6 = 0xEB00000000687461;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65707954656C6946;
  if (a1 != 1)
  {
    v9 = 0x54627553656C6946;
    v8 = 0xEB00000000657079;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656D614E656C6946;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656D614E656C6946)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x65707954656C6946)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x54627553656C6946;
    v14 = 6647929;
    goto LABEL_34;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x657A6953656C6946)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x506D6F42656C6946;
    v14 = 6845537;
LABEL_34:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v13)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v12 = 0xEF79726F74636572;
    if (v10 != 0x69447349656C6946)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0x8000000100788880;
    if (v10 != 0xD000000000000019)
    {
LABEL_39:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_1002AB004(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7472617453746F6ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6572676F72506E69;
    }

    else
    {
      v5 = 0x7472617453746F6ELL;
    }

    if (v4)
    {
      v6 = 0xEA00000000007373;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x64656C696166;
    }

    else
    {
      v5 = 1885956979;
    }

    if (v4 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 0x6574656C706D6F63;
  v8 = 0xE900000000000064;
  v9 = 0xE600000000000000;
  v10 = 0x64656C696166;
  if (a2 != 3)
  {
    v10 = 1885956979;
    v9 = 0xE400000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6572676F72506E69;
    v2 = 0xEA00000000007373;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1002AB178()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975CC0);
  v1 = sub_10000C4AC(v0, qword_100975CC0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002AB240()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  v1 = type metadata accessor for SDAuthenticationBioArmUnarmedDevices();
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;
  v6 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner) = 0;
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner) = 0;
  *(v0 + 128) = v4;
  return v0;
}

uint64_t sub_1002AB32C()
{
  v1 = v0[15];

  v2 = v0[16];

  if (v0[20])
  {
    sub_10000C60C(v0 + 17);
  }

  sub_100005508((v0 + 22), &qword_100982080, &unk_1007FDD30);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1002AB3B8(uint64_t a1)
{
  v52 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v54 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v53 = v47 - v7;
  v8 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(v8);
  v11 = v47 - v10;
  v12 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = sub_10028088C(&qword_100975E30, &qword_1007F9068);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = SFDeviceClassCodeGet();
  if (v16 == 1)
  {
    swift_beginAccess();
    if (*(v1 + 160))
    {
      sub_1002A9938(v1 + 136, &v58);
      if (*(&v59 + 1))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v35 = *(v1 + 152);
      v58 = *(v1 + 136);
      v59 = v35;
      v60 = *(v1 + 168);
      if (*(&v35 + 1))
      {
LABEL_4:
        sub_10000C60C(&v58);
        if (*(v1 + 160))
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    v48 = v3;
    v49 = v2;
    v50 = v1;
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000C4AC(v36, qword_100975CC0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "BioArmInitiator: Creating device stream", v39, 2u);
    }

    v1 = v50;
    v47[0] = *(v50 + 128);
    *(&v59 + 1) = sub_10028088C(&qword_100975E38, &qword_1007F9070);
    v47[2] = &protocol conformance descriptor for AsyncCompactMapSequence<A, B>;
    v60 = sub_100011630(&qword_100975E40, &qword_100975E38, &qword_1007F9070);
    v47[1] = sub_10002F604(&v58);
    sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
    (*(v51 + 104))(v11, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);

    AsyncStream.init(_:bufferingPolicy:_:)();
    sub_100011630(&qword_100975E48, &qword_100975E28, &qword_1007F9060);
    AsyncCompactMapSequence.init(_:transform:)();
    sub_10028088C(&qword_100975E50, &qword_1007F9078);
    sub_100011630(&qword_100975E58, &qword_100975E30, &qword_1007F9068);
    AsyncCompactMapSequence.init(_:transform:)();

    swift_beginAccess();
    v40 = *(&v59 + 1);
    if (*(v1 + 160))
    {
      sub_10000C60C((v1 + 136));
    }

    v3 = v48;
    v2 = v49;
    if (v40)
    {
      sub_1000121F8(&v58, v1 + 136);
    }

    else
    {
      v41 = v59;
      *(v1 + 136) = v58;
      *(v1 + 152) = v41;
      *(v1 + 168) = v60;
    }

    swift_endAccess();
    if (*(v1 + 160))
    {
LABEL_5:
      sub_1002A9938(v1 + 136, &v55);
      if (*(&v56 + 1))
      {
LABEL_6:
        sub_1000121F8(&v55, &v58);
        v17 = type metadata accessor for TaskPriority();
        v18 = v53;
        (*(*(v17 - 8) + 56))(v53, 1, 1, v17);
        sub_1002A9938(&v58, &v55);
        v19 = v54;
        (*(v3 + 16))(v54, v52, v2);
        v21 = sub_1002AF520(&qword_100975E60, v20, _s19UnlockClassCManagerCMa);
        v22 = v3;
        v23 = (*(v3 + 80) + 72) & ~*(v3 + 80);
        v24 = v2;
        v25 = swift_allocObject();
        *(v25 + 16) = v1;
        *(v25 + 24) = v21;
        sub_1000121F8(&v55, v25 + 32);
        (*(v22 + 32))(v25 + v23, v19, v24);
        *(v25 + ((v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
        swift_retain_n();
        sub_1002B3098(0, 0, v18, &unk_1007F9088, v25);

        sub_10000C60C(&v58);
        return;
      }

      goto LABEL_26;
    }

LABEL_25:
    v42 = *(v1 + 152);
    v55 = *(v1 + 136);
    v56 = v42;
    v57 = *(v1 + 168);
    if (*(&v42 + 1))
    {
      goto LABEL_6;
    }

LABEL_26:
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000C4AC(v43, qword_100975CC0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "BioArmInitiator: device stream is nil. This shouldn't happen", v46, 2u);
    }

    return;
  }

  v26 = v16;
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_100975CC0);
  v54 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v58 = v30;
    *v29 = 136315138;
    sub_1002AF3D0(v26);
    v31 = String.init(cString:)();
    v33 = sub_10000C4E4(v31, v32, &v58);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v54, v28, "BioArmInitiator: Not iPhone. Got %s instead", v29, 0xCu);
    sub_10000C60C(v30);
  }

  else
  {
    v34 = v54;
  }
}

void sub_1002ABCDC(int a1)
{
  v76 = type metadata accessor for UUID();
  v3 = *(v76 - 8);
  v4 = v3[8];
  __chkstk_darwin(v76);
  v75 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!SFDeviceIsRealityDevice())
  {
    return;
  }

  v6 = objc_opt_self();
  v7 = [v6 sharedMonitor];
  if (!v7)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 defaultWiFiDevice];

  v70 = v3;
  v71 = v1;
  LODWORD(v74) = a1;
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v77, 0, sizeof(v77));
  }

  sub_100005508(v77, &unk_1009746F0, &qword_1007F90B0);
  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 BOOLForKey:v12];

  sub_1002AF1FC();
  v15 = v14;
  v16 = [v10 standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100975CC0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "pretendClassDUntilNextBioArm is set", v22, 2u);
    }
  }

  v23 = sub_10005CF6C();
  v24 = [v6 sharedMonitor];
  if (!v24)
  {
    goto LABEL_58;
  }

  v25 = v24;
  LODWORD(v26) = v15 | v13;
  LODWORD(v27) = v23 ^ 1 | v18;
  v28 = v9 != 0;
  v29 = [v24 screenOn];

  LODWORD(v30) = v28 & v26 & v27;
  if (v29)
  {
    LODWORD(v31) = 1;
    LODWORD(v32) = v28 & v26 & v27;
  }

  else
  {
    LODWORD(v32) = v30 & v74;
    LODWORD(v31) = v74 & 1;
  }

  if (qword_100973540 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_100975CC0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67110400;
      *(v36 + 4) = v30;
      *(v36 + 8) = 1024;
      *(v36 + 10) = v9 != 0;
      *(v36 + 14) = 1024;
      *(v36 + 16) = v26 & 1;
      *(v36 + 20) = 1024;
      *(v36 + 22) = v27 & 1;
      *(v36 + 26) = 1024;
      *(v36 + 28) = v74 & 1;
      *(v36 + 32) = 1024;
      *(v36 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v34, v35, "Advertising for Unlock Class C: %{BOOL}d (wifiDeviceLoaded: %{BOOL}d, enabled: %{BOOL}d, inClassD: %{BOOL}d, ignoreScreenState: %{BOOL}d, screen on: %{BOOL}d", v36, 0x26u);
    }

    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    v37 = qword_1009A10A8;
    v9 = v70;
    v38 = v71;
    if (!qword_1009A10A8)
    {
      break;
    }

    if (v30)
    {
      v39 = 8;
    }

    else
    {
      v39 = 0;
    }

    v40 = objc_opt_self();
    v41 = v37;
    v42 = [v40 sharedNearbyAgent];
    [v42 unlockUpdateAdvertising:v39 mask:8];

    if (!v32)
    {
      goto LABEL_52;
    }

    v43 = *(v38 + 120);
    if (v43)
    {
      if (*(v43 + 16))
      {
        goto LABEL_52;
      }
    }

    v73 = objc_opt_self();
    v44 = [v73 sharedTransport];
    if (!v44)
    {
      goto LABEL_59;
    }

    v45 = v44;
    v46 = [v44 enabledAutoUnlockDevices];

    if (!v46)
    {
      goto LABEL_60;
    }

    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    sub_10002764C();
    v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = sub_1002AF074(v47);

    v30 = *&v41[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
    if ((v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
LABEL_50:
        v63 = v30;

        v32 = _swiftEmptyArrayStorage;
LABEL_51:
        type metadata accessor for SDAuthenticationNearbyActionAdvertiser();
        v64 = swift_allocObject();
        *(v64 + 40) = 0;
        v65 = [objc_allocWithZone(SFService) init];
        *(v64 + 24) = v65;
        [v65 setDispatchQueue:v30];

        *(v64 + 32) = v32;
        *(v64 + 16) = 0;
        v66 = *(v38 + 120);
        *(v38 + 120) = v64;

        sub_10033AAB8();

LABEL_52:

        return;
      }
    }

    else
    {
      v26 = *(v48 + 16);
      if (!v26)
      {
        goto LABEL_50;
      }
    }

    v74 = v48;
    v69 = v41;
    *&v77[0] = _swiftEmptyArrayStorage;
    v68 = v30;
    v49 = v30;
    sub_10028FBDC(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v27 = 0;
    v32 = *&v77[0];
    v50 = v74;
    v72 = v74 & 0xC000000000000001;
    v51 = (v9 + 8);
    while (1)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v72)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v50 + 16))
        {
          goto LABEL_47;
        }

        v52 = *(v50 + 8 * v27 + 32);
      }

      v53 = v52;
      v54 = [v73 sharedTransport];
      if (!v54)
      {
        goto LABEL_55;
      }

      v55 = v54;
      v56 = [v53 uniqueID];
      v57 = [v55 bluetoothIDForIDSID:v56];

      if (!v57)
      {
        goto LABEL_56;
      }

      v58 = v75;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = UUID.uuidString.getter();
      v30 = v60;

      (*v51)(v58, v76);
      *&v77[0] = v32;
      v9 = v32[2];
      v61 = v32[3];
      if (v9 >= v61 >> 1)
      {
        sub_10028FBDC((v61 > 1), v9 + 1, 1);
        v32 = *&v77[0];
      }

      v32[2] = v9 + 1;
      v62 = &v32[2 * v9];
      v62[4] = v59;
      v62[5] = v30;
      ++v27;
      v50 = v74;
      if (v31 == v26)
      {

        v38 = v71;
        v30 = v68;
        v41 = v69;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }
}

void sub_1002AC4E4()
{
  out_token = 0;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1002AF7BC;
  v11 = v1;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1006935D4;
  v9 = &unk_1008D9AB8;
  v2 = _Block_copy(&v6);

  notify_register_dispatch("postUnlockKeyRequestNotification", &out_token, v0, v2);
  _Block_release(v2);

  v3 = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1002AF7F4;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1006935D4;
  v9 = &unk_1008D9AE0;
  v5 = _Block_copy(&v6);

  notify_register_dispatch("triggerStateChange", &out_token, v3, v5);
  _Block_release(v5);
}

uint64_t sub_1002AC700()
{
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "postUnlockKeyRequestNotification by command line", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1002AC878, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002AC878()
{
  v1 = *(v0 + 48);
  sub_1002AC8E0();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1002AC8E0()
{
  v1 = [objc_opt_self() sharedMonitor];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 deviceKeyBagLocked];

  if (!v3)
  {
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100975CC0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "not posting request to unlock phone because device is already unlocked";
    goto LABEL_12;
  }

  if (*(v0 + 216))
  {
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100975CC0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "not posting request to unlock phone because notification has already been posted";
LABEL_12:
    _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_13:

    return;
  }

  v9 = v0;
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100975CC0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Posting request to unlock phone", v13, 2u);
  }

  v14 = [objc_opt_self() sharedManager];
  [v14 showRequestToUnlockNotification];

  *(v9 + 216) = 1;
}

uint64_t sub_1002ACBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_1002B3098(0, 0, v9, a4, v11);
}

uint64_t sub_1002ACCCC()
{
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "triggerStateChange by command line", v4, 2u);
  }

  v5 = v0[5];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1002ACE44, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002ACE44()
{
  v1 = *(v0 + 48);
  sub_100017200();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002ACEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C04;

  return sub_1002ACF48(a5);
}

uint64_t sub_1002ACF48(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = _s7RequestVMa();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v2[14] = *(v7 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[17] = v8;
  v9 = *(v8 - 8);
  v2[18] = v9;
  v10 = *(v9 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD0E0, v1, 0);
}

uint64_t sub_1002AD0E0()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  *(v0 + 160) = qword_1009A10A8;
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v9 = *(v0 + 56);
    v10 = v1;
    UUID.init()();
    (*(v3 + 16))(v5, v2, v4);
    sub_1002A9938(v9, v5 + v8[5]);
    v11 = v5 + v8[6];
    *v11 = xmmword_1007F4EE0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0;
    *(v5 + v8[7]) = 0;
    UUID.uuidString.getter();
    *(v0 + 184) = 0;
    sub_1002AF568(v5, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    sub_1002AF5CC(v6, v13 + v12);
    v14 = v10;
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v15 = async function pointer to SFProgressTask.finalValue.getter[1];
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_1002AD370;
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);

    return SFProgressTask.finalValue.getter(v0 + 185, v18);
  }

  else
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 120);
    v21 = *(v0 + 128);
    v22 = *(v0 + 88);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1002AD370()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1002AD594;
  }

  else
  {
    v6 = sub_1002AD49C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002AD49C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  sub_1002ADA0C(4uLL);

  (*(v7 + 8))(v6, v9);
  sub_1002AF630(v5);
  (*(v4 + 8))(v1, v3);
  v10 = v0[19];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002AD594()
{
  v1 = v0[22];
  v2 = v0[20];
  v16 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  sub_1002A9938(v0[7], (v0 + 2));
  sub_1002ADDA8(4uLL, (v0 + 2), v1);

  sub_100005508((v0 + 2), &qword_100982080, &unk_1007FDD30);
  (*(v6 + 8))(v7, v9);
  sub_1002AF630(v5);
  (*(v4 + 8))(v16, v3);
  v10 = v0[19];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

void sub_1002AD6C8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  if (qword_1009A10A8)
  {
    if ((a1 - 3) > 0x14)
    {
      v8 = 0;
    }

    else
    {
      v8 = byte_1007F90FA[a1 - 3];
    }

    v9 = *(v1 + 112);
    v15 = qword_1009A10A8;
    if (sub_10000D2C0(v8, v9))
    {
      sub_1002AD8D4();
      v10 = sub_100693628()[2];

      if (v10)
      {
        Date.init()();
        sub_1002AB3B8(v7);

        (*(v4 + 8))(v7, v3);
        return;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();

      sub_10001ED70(0, v11, v12);
    }

    v13 = v15;
  }
}

uint64_t sub_1002AD8D4()
{
  v1 = v0;
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975CC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BioArmInitiator: Stopping device stream", v5, 2u);
  }

  v6 = *(v1 + 128);

  sub_100342E84();

  swift_beginAccess();
  if (*(v1 + 160))
  {
    sub_10000C60C((v1 + 136));
  }

  *(v1 + 168) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  return swift_endAccess();
}

void sub_1002ADA0C(unint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0x17)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xFE0000) != 0)
  {
    v8 = 0x6E556E6F69736976;
    v9 = 0xEF534F696B636F6CLL;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x7E00) != 0)
  {
    v8 = 0x646F4D7473657567;
    v9 = 0xEF6B636F6C6E5565;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x1E0) != 0)
  {
    v8 = 0x636F6C6E5563616DLL;
    v9 = 0xEE00656E6F68506BLL;
  }

  else
  {
LABEL_8:
    if (a1 - 3 >= 2)
    {
      v8 = 0x6E776F6E6B6E75;
    }

    else
    {
      v8 = 0x6C436B636F6C6E75;
    }

    if (a1 - 3 >= 2)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xEC00000043737361;
    }
  }

LABEL_14:
  v10 = 0xE700000000000000;
  v11 = *(v1 + 112);
  v12 = 0x6C436B636F6C6E75;
  v13 = 0xEC00000043737361;
  v14 = 0x646F4D7473657567;
  v15 = 0xEF6B636F6C6E5565;
  if (v11 != 3)
  {
    v14 = 0x6E556E6F69736976;
    v15 = 0xEF534F696B636F6CLL;
  }

  if (v11 != 2)
  {
    v12 = v14;
    v13 = v15;
  }

  v16 = 0x636F6C6E5563616DLL;
  if (*(v1 + 112))
  {
    v10 = 0xEE00656E6F68506BLL;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (*(v1 + 112) <= 1u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (*(v1 + 112) <= 1u)
  {
    v18 = v10;
  }

  else
  {
    v18 = v13;
  }

  if (v8 == v17 && v9 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return;
    }
  }

  if (a1 == 3)
  {
    sub_100017200();
    sub_1002AD8D4();
    Date.init()();
    sub_1002AB3B8(v7);
    (*(v4 + 8))(v7, v3);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
    v22 = String._bridgeToObjectiveC()();

    sub_10001ED70(1, v21, v22);
  }

  else if (a1 == 4)
  {
    Date.init()();
    sub_1002AB3B8(v7);
    (*(v4 + 8))(v7, v3);
    if (*(v1 + 120))
    {
      v20 = *(v1 + 120);

      sub_10033B470();
    }

    sub_1002ABCDC(0);
  }
}

uint64_t sub_1002ADDA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0x17)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xFE0000) != 0)
  {
    v13 = 0x6E556E6F69736976;
    v14 = 0xEF534F696B636F6CLL;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x7E00) != 0)
  {
    v13 = 0x646F4D7473657567;
    v14 = 0xEF6B636F6C6E5565;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x1E0) != 0)
  {
    v13 = 0x636F6C6E5563616DLL;
    v14 = 0xEE00656E6F68506BLL;
  }

  else
  {
LABEL_8:
    if (a1 - 3 >= 2)
    {
      v13 = 0x6E776F6E6B6E75;
    }

    else
    {
      v13 = 0x6C436B636F6C6E75;
    }

    if (a1 - 3 >= 2)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xEC00000043737361;
    }
  }

LABEL_14:
  v15 = 0xE700000000000000;
  v16 = *(v4 + 112);
  v17 = 0x6C436B636F6C6E75;
  v18 = 0xEC00000043737361;
  v19 = 0x646F4D7473657567;
  v20 = 0xEF6B636F6C6E5565;
  if (v16 != 3)
  {
    v19 = 0x6E556E6F69736976;
    v20 = 0xEF534F696B636F6CLL;
  }

  if (v16 != 2)
  {
    v17 = v19;
    v18 = v20;
  }

  v21 = 0x636F6C6E5563616DLL;
  if (*(v4 + 112))
  {
    v15 = 0xEE00656E6F68506BLL;
  }

  else
  {
    v21 = 0x6E776F6E6B6E75;
  }

  if (*(v4 + 112) <= 1u)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (*(v4 + 112) <= 1u)
  {
    v23 = v15;
  }

  else
  {
    v23 = v18;
  }

  if (v13 == v22 && v14 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  v37 = a3;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v26 = v36;
    v27 = 0;
    v28 = 0xE000000000000000;
LABEL_36:
    v29 = sub_100010F88(v26, v27, v28);
    goto LABEL_37;
  }

  v36 = a3;
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    v36 = a3;
    _print_unlocked<A, B>(_:_:)();
    v27 = v37;
    v28 = v38;
    v26 = 10;
    goto LABEL_36;
  }

  v29 = v37;
LABEL_37:

  if (v29 == 22)
  {
    sub_1002AC8E0();
    swift_beginAccess();
    sub_1002AF360(a2, v4 + 176);
    swift_endAccess();
  }

  sub_10000FF90(a2, &v37, &qword_100982080, &unk_1007FDD30);
  v30 = v39;
  if (v39)
  {
    v31 = v40;
    sub_10002CDC0(&v37, v39);
    v32 = (*(v31 + 8))(v30, v31);
    v34 = v33;
    sub_10000C60C(&v37);
    if (v34)
    {
      if (v29 == 24 || v29 == 9)
      {
        if (*(*(v4 + 128) + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner))
        {
          swift_beginAccess();

          sub_10046DAAC(&v36, v32, v34);
          swift_endAccess();
        }
      }

      else if (*(*(v4 + 128) + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner))
      {
        swift_beginAccess();

        sub_10036DB18(v32, v34);
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_100005508(&v37, &qword_100982080, &unk_1007FDD30);
  }

  static Date.distantPast.getter();
  sub_1002AB3B8(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1002AE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v8 = type metadata accessor for Date();
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100975E50, &qword_1007F9078);
  v6[18] = v11;
  v12 = *(v11 - 8);
  v6[19] = v12;
  v13 = *(v12 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v14 = *(*(sub_10028088C(&qword_100975E68, &qword_1007F9090) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE4A0, a6, 0);
}

uint64_t sub_1002AE4A0()
{
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_10000C4AC(v1, qword_100975CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BioArmInitiator: Waiting to arm next device...", v4, 2u);
  }

  v5 = v0[12];

  v6 = v5[3];
  v7 = sub_10002CDC0(v5, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_10002F604(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v12 = sub_1002AF520(&qword_100975E60, v11, _s19UnlockClassCManagerCMa);
  v0[26] = v12;
  v13 = v0[14];
  v14 = v0[6];
  sub_10002F5B4((v0 + 2), v0[5]);
  v15 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v16 = swift_task_alloc();
  v0[27] = v16;
  *v16 = v0;
  v16[1] = sub_1002AE758;
  v17 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v17, v13, v12);
}

uint64_t sub_1002AE758()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 112);

    return _swift_task_switch(sub_1002AE868, v5, 0);
  }

  return result;
}

uint64_t sub_1002AE868()
{
  v66 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = (*(v0[19] + 48))(v1, 1, v2);
  v4 = v0[23];
  if (v3 == 1)
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[17];
    sub_10000C60C(v0 + 2);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[13];
    v12 = *(v0[16] + 32);
    v13 = *(v2 + 48);
    v12(v0[23], v1, v0[15]);
    sub_1000121F8((v1 + v13), v4 + v13);
    v14 = static Date.> infix(_:_:)();
    v15 = v0[25];
    if (v14)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "BioArmInitiator: Processing unarmed device!", v18, 2u);
      }

      v20 = v0[22];
      v19 = v0[23];
      v21 = v0[18];
      v22 = v0[15];
      v23 = v0[16];

      sub_10000FF90(v19, v20, &qword_100975E50, &qword_1007F9078);
      sub_1000121F8((v20 + *(v21 + 48)), (v0 + 7));
      (*(v23 + 8))(v20, v22);
      v24 = swift_task_alloc();
      v0[28] = v24;
      *v24 = v0;
      v24[1] = sub_1002AEE90;
      v25 = v0[14];

      return sub_1002ACF48((v0 + 7));
    }

    else
    {
      v26 = v0[23];
      v27 = v0[20];
      sub_10000FF90(v26, v0[21], &qword_100975E50, &qword_1007F9078);
      sub_10000FF90(v26, v27, &qword_100975E50, &qword_1007F9078);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[23];
      if (v30)
      {
        v33 = v0[21];
        v32 = v0[22];
        v34 = v0[18];
        v58 = v34;
        v59 = v0[20];
        v63 = v0[16];
        v60 = v0[17];
        v61 = v0[15];
        v64 = v0[23];
        v35 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v35 = 136315394;
        v36 = (v33 + *(v34 + 48));
        v38 = v36[3];
        v37 = v36[4];
        sub_10002CDC0(v36, v38);
        v62 = v29;
        v39 = (*(v37 + 8))(v38, v37);
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xD000000000000015;
        }

        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0x8000000100789F30;
        }

        sub_100005508(v33, &qword_100975E50, &qword_1007F9078);
        v43 = sub_10000C4E4(v41, v42, &v65);

        *(v35 + 4) = v43;
        *(v35 + 12) = 2080;
        sub_10000FF90(v59, v32, &qword_100975E50, &qword_1007F9078);
        v44 = *(v58 + 48);
        v12(v60, v32, v61);
        sub_10000C60C((v32 + v44));
        sub_1002AF520(&qword_100983290, 255, &type metadata accessor for Date);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v63 + 8))(v60, v61);
        sub_100005508(v59, &qword_100975E50, &qword_1007F9078);
        v48 = sub_10000C4E4(v45, v47, &v65);

        *(v35 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v28, v62, "BioArmInitiator: Skipping %s since it was yielded before %s", v35, 0x16u);
        swift_arrayDestroy();

        v49 = v64;
      }

      else
      {
        v50 = v0[20];
        v51 = v0[21];

        sub_100005508(v50, &qword_100975E50, &qword_1007F9078);
        sub_100005508(v31, &qword_100975E50, &qword_1007F9078);
        v49 = v51;
      }

      sub_100005508(v49, &qword_100975E50, &qword_1007F9078);
      v52 = v0[26];
      v53 = v0[14];
      v54 = v0[6];
      sub_10002F5B4((v0 + 2), v0[5]);
      v55 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v56 = swift_task_alloc();
      v0[27] = v56;
      *v56 = v0;
      v56[1] = sub_1002AE758;
      v57 = v0[24];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v57, v53, v52);
    }
  }
}

uint64_t sub_1002AEE90()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1002AEFA0, v2, 0);
}

uint64_t sub_1002AEFA0()
{
  v1 = v0[23];
  sub_10000C60C(v0 + 7);
  sub_100005508(v1, &qword_100975E50, &qword_1007F9078);
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[17];
  sub_10000C60C(v0 + 2);

  v8 = v0[1];

  return v8();
}

void *sub_1002AF074(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10029434C(v2, 0);

    v1 = sub_100027B24(&v5, (v3 + 32), v2, v1);
    sub_100027D64();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1002AF124(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002AF1FC()
{
  if (SFDeviceClassCodeGet() == 1 || !SFDeviceIsRealityDevice())
  {
    return;
  }

  v0 = objc_opt_self();
  v1 = [v0 sharedManager];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  [v1 updateLocalLTK];

  v3 = [v0 sharedManager];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  [v3 loadRemoteLTKsIfNeeded];

  v5 = [objc_opt_self() sharedTransport];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v5 enabledAutoUnlockDevices];

  if (!v7)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
  sub_10002764C();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }
}

uint64_t sub_1002AF360(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982080, &unk_1007FDD30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

const char *sub_1002AF3D0(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_1008D9B58[a1];
  }
}

uint64_t sub_1002AF3FC(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1002AE314(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t sub_1002AF520(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002AF568(uint64_t a1, uint64_t a2)
{
  v4 = _s7RequestVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF5CC(uint64_t a1, uint64_t a2)
{
  v4 = _s7RequestVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF630(uint64_t a1)
{
  v2 = _s7RequestVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AF68C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1002ACEAC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1002AF74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982080, &unk_1007FDD30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002ACCAC(a1, v4, v5, v6);
}

uint64_t sub_1002AF8E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002AC6E0(a1, v4, v5, v6);
}

uint64_t sub_1002AF99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000106E0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100011170(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100005508(a1, &unk_1009746F0, &qword_1007F90B0);
    sub_1002D298C(a2, a3, v10);

    return sub_100005508(v10, &unk_1009746F0, &qword_1007F90B0);
  }

  return result;
}

uint64_t sub_1002AFA94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_100578B14(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100570848(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_1002D2338(&type metadata accessor for SFAirDrop.TransferIdentifier, &qword_1009762B8, &qword_1007F9428);
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1002D5F50(v13, v16, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_1002AFCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1002D6398(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100578D1C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100005508(a1, &qword_100976180, &unk_1007F9300);
    sub_1002D2AD4(a2, a3, v10);

    return sub_100005508(v10, &qword_100976180, &unk_1007F9300);
  }

  return result;
}

uint64_t sub_1002AFDB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100578F48(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_10000EBD4(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1002CE548();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1002D42C0(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1002AFF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&unk_1009761A0, &unk_1007F9320);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SFClientIdentity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100005508(a1, &unk_1009761A0, &unk_1007F9320);
    sub_1002D2B80(a2, a3, v10);

    return sub_100005508(v10, &unk_1009761A0, &unk_1007F9320);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1005792F0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&unk_100976430, &unk_1007F9640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &unk_100976430, &unk_1007F9640);
    sub_1002D3850(a2, a3, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, sub_1002CE818, v10);

    return sub_100005508(v10, &unk_100976430, &unk_1007F9640);
  }

  else
  {
    sub_10000CA10(a1, v14, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1005794F8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B0370(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&unk_10097F330, &qword_1007F9410);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NWEndpoint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100005508(a1, &unk_10097F330, &qword_1007F9410);
    sub_1002D2D28(a2, v8);
    v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100005508(v8, &unk_10097F330, &qword_1007F9410);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100579714(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1002B059C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&unk_1009762C0, &unk_1007F9430);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SFAirDropReceive.Transfer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100005508(a1, &unk_1009762C0, &unk_1007F9430);
    sub_1002D2F14(a2, v8);
    v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100005508(v8, &unk_1009762C0, &unk_1007F9430);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100579950(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1002B07F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    v18 = sub_100012854(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v25 = *v7;
      if (!v21)
      {
        sub_1002D13CC(a5, a6);
        v22 = v25;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      result = sub_1002D533C(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

uint64_t sub_1002B0958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &qword_1009763E0, &qword_1007F95D0);
    sub_1002D3850(a2, a3, type metadata accessor for SDAirDropDiscoveredEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint, sub_1002CEC98, v10);

    return sub_100005508(v10, &qword_1009763E0, &qword_1007F95D0);
  }

  else
  {
    sub_10000CA10(a1, v14, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100579DF0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_10057A00C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100012854(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1002CEEF0();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1002D45F8(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1002B0C84(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_100976468, &qword_1007F9738);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100005508(a1, &qword_100976468, &qword_1007F9738);
    sub_1002D3100(a2, v8);
    v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100005508(v8, &qword_100976468, &qword_1007F9738);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10057A1E4(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1002B0EB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_1009762A8, &qword_1007F9418);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &qword_1009762A8, &qword_1007F9418);
    sub_1002D32B8(a2, v8);
    v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100005508(v8, &qword_1009762A8, &qword_1007F9418);
  }

  else
  {
    sub_10000CA10(a1, v12, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10057A3F4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1002B1100(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a3, v14);
    *v6 = v32;
  }

  else
  {
    v18 = *v6;
    v19 = sub_10000EBD4(a3);
    if (v20)
    {
      v21 = v19;
      v22 = *v7;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v7;
      v33 = *v7;
      if (!v23)
      {
        sub_1002CF98C(a5, a6);
        v24 = v33;
      }

      v25 = *(v24 + 48);
      v26 = type metadata accessor for UUID();
      v27 = *(v26 - 8);
      v28 = *(v27 + 8);
      v28(v25 + *(v27 + 72) * v21, v26);
      v29 = *(*(v24 + 56) + 16 * v21);
      swift_unknownObjectRelease();
      sub_1002D5A9C(v21, v24);
      result = (v28)(a3, v26);
      *v7 = v24;
    }

    else
    {
      v30 = type metadata accessor for UUID();
      v31 = *(*(v30 - 8) + 8);

      return v31(a3, v30);
    }
  }

  return result;
}

uint64_t sub_1002B12F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_100976460, &qword_1007F9730);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SFAirDropSend.Transfer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100005508(a1, &qword_100976460, &qword_1007F9730);
    sub_1002D3468(a2, v8);
    v14 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_100005508(v8, &qword_100976460, &qword_1007F9730);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10057A688(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1002B1544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
    sub_1002D3654(a2, a3, v10);

    return sub_100005508(v10, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10057A8EC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&unk_100976320, &qword_100810410);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RegistrationState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &unk_100976320, &qword_100810410);
    sub_1002D3850(a2, a3, type metadata accessor for RegistrationState, type metadata accessor for RegistrationState, type metadata accessor for RegistrationState, sub_1002D0350, v10);

    return sub_100005508(v10, &unk_100976320, &qword_100810410);
  }

  else
  {
    sub_10000CA10(a1, v14, type metadata accessor for RegistrationState);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10057ACD4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B1940(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (a1 == 2)
  {
    v7 = *v3;
    v8 = sub_100012854(a2, a3);
    LOBYTE(v7) = v9;

    if (v7)
    {
      v11 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v18 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002D1ED0(&unk_100974720, &unk_10080B0A0);
        v13 = v18;
      }

      v14 = *(*(v13 + 48) + 16 * v8 + 8);

      result = sub_1002D518C(v8, v13);
      *v4 = v13;
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_10057B284(a1 & 1, a2, a3, v17);

    *v4 = v19;
  }

  return result;
}

uint64_t sub_1002B1A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10057B4A0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100012854(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1002D0FD0(&qword_100976390, &qword_1007F9580);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1002D533C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1002B1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100005508(a1, &qword_1009763B8, &qword_1007F95A8);
    sub_1002D39D4(a2, a3, v10);

    return sub_100005508(v10, &qword_1009763B8, &qword_1007F95A8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10057B6B8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NWBrowser.Result();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100005508(a1, &qword_1009763D0, &unk_1007F95C0);
    sub_1002D3B5C(a2, a3, v10);

    return sub_100005508(v10, &qword_1009763D0, &unk_1007F95C0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_10057BABC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1002B1F78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v11 = *v7;
  if (a2)
  {
    v14 = sub_100012854(a3, a4);
    v16 = v15;

    if (v16)
    {
      v18 = *v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v8;
      v25 = *v8;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002D153C(a6, a7);
        v20 = v25;
      }

      v21 = *(*(v20 + 48) + 16 * v14 + 8);

      result = sub_1002D533C(v14, v20);
      *v8 = v20;
    }
  }

  else
  {
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v8;
    a5(a1, a3, a4, v24);

    *v8 = v26;
  }

  return result;
}

uint64_t sub_1002B20D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v25;
  }

  else
  {
    v17 = *v6;
    v18 = sub_100012854(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v26 = *v7;
      if (!v21)
      {
        sub_1002D196C(a5, a6);
        v22 = v26;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      v24 = *(*(v22 + 56) + 8 * v18);

      result = sub_1002D533C(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

uint64_t sub_1002B2214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_10057C0D4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_10000EBD4(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_1002D1C3C();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_1002D5A9C(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

unint64_t sub_1002B23E0(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_10057C47C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_10057091C(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1002D2028();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_1002D5DBC(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1002B24B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_10057C5DC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100012854(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1002D2190();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14);
      swift_unknownObjectRelease();
      result = sub_1002D45F8(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1002B25E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v5 = v29;
  }

  else
  {
    v16 = *v5;
    v17 = sub_10000EBD4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v30 = *v6;
      if (!v21)
      {
        sub_1002D2338(&type metadata accessor for UUID, a4, a5);
        v22 = v30;
      }

      v23 = *(v22 + 48);
      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);

      sub_1002D5F50(v19, v22, &type metadata accessor for UUID, &qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = (v26)(a2, v24);
      *v6 = v22;
    }

    else
    {
      v27 = type metadata accessor for UUID();
      v28 = *(*(v27 - 8) + 8);

      return v28(a2, v27);
    }
  }

  return result;
}

uint64_t sub_1002B2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000FF90(a3, v24 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
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

      sub_10028088C(&qword_100976168, &qword_1007F92F0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

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

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1002B2B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v26 - v12;
  sub_10000FF90(a3, v26 - v12, &qword_100976160, &qword_1007F8770);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100005508(v13, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = String.utf8CString.getter() + 32;
      a6(0);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  a6(0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1002B2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000FF90(a3, v24 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
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
      v24[0] = a2;
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

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

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

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1002B3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000FF90(a3, v26 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v24;
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

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1002B3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000FF90(a3, v27 - v11, &qword_100976160, &qword_1007F8770);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
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

      sub_10028088C(&qword_100976168, &qword_1007F92F0);
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

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

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

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1002B36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000FF90(a3, v27 - v11, &qword_100976160, &qword_1007F8770);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
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

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

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

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
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

uint64_t sub_1002B39A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000FF90(a3, v27 - v11, &qword_100976160, &qword_1007F8770);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
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

      sub_10028088C(&qword_100976378, &qword_1007F9560);
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

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

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

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10028088C(&qword_100976378, &qword_1007F9560);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1002B3CB8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975E80);
  v1 = sub_10000C4AC(v0, qword_100975E80);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_1002B3D80()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0648 = result;
  return result;
}

NSString sub_1002B3DB8()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0650 = result;
  return result;
}

NSString sub_1002B3DF0()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0658 = result;
  return result;
}

uint64_t sub_1002B3E28()
{
  v1 = sub_10028088C(&qword_100976138, qword_1007F92B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for SDNearFieldTap();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  swift_beginAccess();
  sub_10000FF90(v0 + v10, v4, &qword_100976138, qword_1007F92B8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005508(v4, &qword_100976138, qword_1007F92B8);
  }

  else
  {
    sub_10000CA10(v4, v9, type metadata accessor for SDNearFieldTap);
    result = [objc_opt_self() sharedMonitor];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = [result deviceKeyBagLocked];

    if (v13)
    {
      if (v9[*(v5 + 48)] == 1)
      {
        sub_1002D6414(v9, type metadata accessor for SDNearFieldTap);
        return 1;
      }

      v14 = *&v9[*(v5 + 24) + 8];

      sub_1002D6414(v9, type metadata accessor for SDNearFieldTap);
      if (v14)
      {

        return 1;
      }
    }

    else
    {
      sub_1002D6414(v9, type metadata accessor for SDNearFieldTap);
    }
  }

  return 0;
}

uint64_t sub_1002B409C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void (*sub_1002B4114(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1002B41B8;
}

void sub_1002B41B8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void sub_1002B4220()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_notificationCenter];
  [v2 addObserver:v1 selector:"keyBagLockStateChangeWithNotification:" name:@"com.apple.sharingd.KeyBagLockStatusChanged" object:0];
  [v2 addObserver:v1 selector:"handleAirDropAllowedChanged" name:@"com.apple.sharingd.AirDropAllowedChanged" object:0];
  [v2 addObserver:v1 selector:"handleWifiStateChanged" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
  [v2 addObserver:v1 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  [v2 addObserver:v1 selector:"handleSystemUIChanged" name:@"com.apple.sharingd.SystemUIChanged" object:0];
  sub_1000276B4(0, &qword_100976418, NSDistributedNotificationCenter_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [ObjCClassFromMetadata defaultCenter];
  if (qword_100973558 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v1 selector:? name:? object:?];

  v5 = [ObjCClassFromMetadata defaultCenter];
  if (qword_100973560 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v1 selector:? name:? object:?];

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, v1, sub_1002C1308, BYSetupAssistantExitedDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  out_token = 0;
  v7 = [SFNotificationAirDropNearbySharingChanged UTF8String];
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_1002D8120;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1006935D4;
  v11[3] = &unk_1008DA180;
  v10 = _Block_copy(v11);

  notify_register_dispatch(v7, &out_token, v8, v10);
  _Block_release(v10);
}

id sub_1002B45A4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_notificationCenter] removeObserver:v0];
  sub_1000276B4(0, &qword_100976418, NSDistributedNotificationCenter_ptr);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v2 removeObserver:v0];

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v0);

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1002B4888(void (*a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v138 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v137 = &v132 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v132 - v11;
  __chkstk_darwin(v10);
  v146 = &v132 - v13;
  v14 = type metadata accessor for UUID();
  v149 = *(v14 - 8);
  v150 = v14;
  v15 = v149[8];
  v16 = __chkstk_darwin(v14);
  v136 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v132 - v19;
  v21 = __chkstk_darwin(v18);
  v140 = &v132 - v22;
  v23 = __chkstk_darwin(v21);
  v139 = &v132 - v24;
  v25 = __chkstk_darwin(v23);
  v134 = &v132 - v26;
  v27 = __chkstk_darwin(v25);
  v147 = &v132 - v28;
  v29 = __chkstk_darwin(v27);
  v142 = &v132 - v30;
  __chkstk_darwin(v29);
  v145 = &v132 - v31;
  v32 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v132 - v38;
  __chkstk_darwin(v37);
  v41 = &v132 - v40;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_10000C4AC(v42, qword_100975E80);
  v143 = a1;
  sub_10000FF90(a1, v41, &unk_100976120, &qword_1007F9260);
  v148 = v43;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v144 = v2;
  v135 = v20;
  if (v46)
  {
    v133 = v12;
    v141 = v36;
    v47 = swift_slowAlloc();
    v49 = v149;
    v48 = v150;
    v50 = v47;
    v51 = swift_slowAlloc();
    v152 = v51;
    *v50 = 136315138;
    sub_10000FF90(v41, v39, &unk_100976120, &qword_1007F9260);
    if ((v49[6])(v39, 1, v48) == 1)
    {
      sub_100005508(v39, &unk_100976120, &qword_1007F9260);
      v52 = 0xEA00000000004449;
      v53 = 0x20746E6572727563;
    }

    else
    {
      v53 = UUID.uuidString.getter();
      v52 = v54;
      (v49[1])(v39, v48);
    }

    sub_100005508(v41, &unk_100976120, &qword_1007F9260);
    v55 = sub_10000C4E4(v53, v52, &v152);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v44, v45, "SDAirDropNearFieldService: requested end nearby sharing interaction:%s", v50, 0xCu);
    sub_10000C60C(v51);

    v2 = v144;
    v36 = v141;
    v12 = v133;
  }

  else
  {

    sub_100005508(v41, &unk_100976120, &qword_1007F9260);
  }

  v56 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(&v2[v56], v12, &unk_100975F60, &unk_1007F91B0);
  v57 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v58 = *(v57 - 8);
  v59 = *(v58 + 6);
  if (v59(v12, 1, v57) == 1)
  {
    swift_getKeyPath();
    v141 = v57;
    swift_getKeyPath();
    v60 = v146;
    static Published.subscript.getter();
    v57 = v141;

    if (v59(v12, 1, v57) != 1)
    {
      sub_100005508(v12, &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v60 = v146;
    (*(v58 + 4))(v146, v12, v57);
    (*(v58 + 7))(v60, 0, 1, v57);
  }

  if (v59(v60, 1, v57) == 1)
  {
    sub_100005508(v60, &unk_100975F60, &unk_1007F91B0);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "SDAirDropNearFieldService: ignoring request to end request nearby sharing interaction, no current interaction", v63, 2u);
    }
  }

  else
  {
    v64 = v142;
    SFAirDrop.NearbySharingInteraction.id.getter();
    v146 = v58;
    (*(v58 + 1))(v60, v57);
    v66 = v149;
    v65 = v150;
    v67 = v149[4];
    v68 = v145;
    v67(v145, v64, v150);
    sub_10000FF90(v143, v36, &unk_100976120, &qword_1007F9260);
    v69 = v66[6];
    if (v69(v36, 1, v65) == 1)
    {
      v70 = v147;
      v71 = v150;
      (v66[2])(v147, v68, v150);
      v72 = v69(v36, 1, v71);
      v73 = v70;
      if (v72 != 1)
      {
        sub_100005508(v36, &unk_100976120, &qword_1007F9260);
      }
    }

    else
    {
      v73 = v147;
      v67(v147, v36, v150);
    }

    v74 = static UUID.== infix(_:_:)();
    v75 = v66[2];
    if (v74)
    {
      v76 = v134;
      v143 = v66[2];
      v75(v134, v73, v150);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v79 = os_log_type_enabled(v77, v78);
      v141 = v57;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v151[0] = v81;
        *v80 = 136315138;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
        v82 = v150;
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        v142 = v149[1];
        (v142)(v76, v82);
        v86 = sub_10000C4E4(v83, v85, v151);

        *(v80 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v77, v78, "SDAirDropNearFieldService: end nearby sharing interaction:%s", v80, 0xCu);
        sub_10000C60C(v81);

        v73 = v147;
      }

      else
      {

        v142 = v149[1];
        (v142)(v76, v150);
      }

      v107 = v144;
      v108 = *&v144[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager];
      sub_1004AB1D0(v73);
      v109 = *(v146 + 7);
      v110 = v137;
      v111 = v141;
      v109(v137, 1, 1, v141);
      swift_beginAccess();
      sub_10000C788(v110, v107 + v56, &unk_100975F60, &unk_1007F91B0);
      swift_endAccess();
      v109(v110, 1, 1, v111);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10000FF90(v110, v138, &unk_100975F60, &unk_1007F91B0);
      v107;
      static Published.subscript.setter();
      sub_100005508(v110, &unk_100975F60, &unk_1007F91B0);
      v112 = v139;
      v113 = v143;
      v143(v139, v73, v150);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v151[0] = v117;
        *v116 = 136315138;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
        v118 = v150;
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v120 = v118;
        v122 = v121;
        v123 = v112;
        v124 = v142;
        (v142)(v123, v120);
        v125 = sub_10000C4E4(v119, v122, v151);

        *(v116 + 4) = v125;
        _os_log_impl(&_mh_execute_header, v114, v115, "SDAirDropNearFieldService: Removing all assertions for nearby sharing interaction:%s", v116, 0xCu);
        sub_10000C60C(v117);

        v113 = v143;
      }

      else
      {

        v128 = v112;
        v124 = v142;
        (v142)(v128, v150);
      }

      v129 = v140;
      v130 = v147;
      v131 = v150;
      v113(v140, v147, v150);
      swift_beginAccess();
      sub_1002AFDB4(0, v129);
      swift_endAccess();
      sub_1002BB85C();
      v124(v130, v131);
      v124(v145, v131);
    }

    else
    {
      v87 = v135;
      v88 = v150;
      v75(v135, v73, v150);
      v89 = v136;
      v75(v136, v68, v88);
      v90 = Logger.logObject.getter();
      v91 = v68;
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v92))
      {
        v93 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v151[0] = v148;
        *v93 = 136315394;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
        v94 = v89;
        v95 = v150;
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v87;
        v98 = v95;
        v100 = v99;
        v101 = v149[1];
        v101(v97, v98);
        v102 = sub_10000C4E4(v96, v100, v151);

        *(v93 + 4) = v102;
        *(v93 + 12) = 2080;
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        v101(v94, v98);
        v106 = sub_10000C4E4(v103, v105, v151);

        *(v93 + 14) = v106;
        _os_log_impl(&_mh_execute_header, v90, v92, "SDAirDropNearFieldService: ignoring request to end nearby sharing interaction:%s currentID:%s", v93, 0x16u);
        swift_arrayDestroy();

        v101(v147, v98);
        v101(v145, v98);
      }

      else
      {

        v126 = v150;
        v127 = v149[1];
        v127(v89, v150);
        v127(v87, v126);
        v127(v73, v126);
        v127(v91, v126);
      }
    }
  }
}

void sub_1002B5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a2;
  v85 = a3;
  v83 = a1;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v78 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = v66 - v9;
  v10 = type metadata accessor for UUID();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 8);
  __chkstk_darwin(v10);
  v80 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  __chkstk_darwin(v13);
  v75 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v79 = v66 - v23;
  __chkstk_darwin(v22);
  v25 = v66 - v24;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_100975E80);
  v71 = *(v17 + 16);
  v72 = v17 + 16;
  (v71)(v25, v85, v16);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v82 = v3;
    v70 = v30;
    v88[0] = v30;
    *v29 = 136315138;
    sub_100005358(&qword_100976270, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v21;
    v33 = v17;
    v35 = v34;
    v36 = *(v33 + 8);
    (v36)(v25, v16);
    v37 = sub_10000C4E4(v31, v35, v88);
    v17 = v33;
    v21 = v32;

    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "SDAirDropNearFieldService: connected… for interactionType:%s", v29, 0xCu);
    sub_10000C60C(v70);
    v4 = v82;
  }

  else
  {

    v36 = *(v17 + 8);
    (v36)(v25, v16);
  }

  v38 = sub_1002B4114(v88);
  v40 = v39;
  v41 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  if ((*(*(v41 - 8) + 48))(v40, 1, v41))
  {
    (v38)(v88, 0);
  }

  else
  {
    (v71)(v79, v85, v16);
    v42 = type metadata accessor for SDNearFieldTap();
    v82 = v4;
    v43 = v42;
    v44 = *(v42 + 60);
    v72 = v17;
    v69 = v40;
    v45 = v73;
    v70 = v36;
    v46 = *(v73 + 2);
    v47 = v83;
    v48 = v74;
    v46(v80, v83 + v44, v74);
    v49 = v81;
    v46(v81, v47 + v43[14], v48);
    v71 = v21;
    v50 = *(v45 + 7);
    v50(v49, 0, 1, v48);
    v51 = (v47 + v43[13]);
    v52 = v51[1];
    v67 = *v51;
    v73 = v38;
    v53 = v78;
    v46(v78, v84, v48);
    v50(v53, 0, 1, v48);
    v54 = v43[7];
    v55 = (v47 + v43[6]);
    v56 = v55[1];
    v74 = *v55;
    v66[0] = v56;
    v57 = *(v47 + v54 + 8);
    v68 = *(v47 + v54);
    v58 = v43[9];
    v59 = (v47 + v43[8]);
    v60 = v59[1];
    v66[1] = *v59;
    v61 = *(v47 + v58);
    v62 = *(v47 + v58 + 8);
    LOBYTE(v43) = *(v47 + v43[12]);
    sub_100294008(v67, v52);

    v36 = v70;
    v21 = v71;
    v17 = v72;
    v63 = v75;
    SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:bonjourListenerUUID:publicKey:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)();
    (*(v76 + 104))(v63, enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:), v77);
    SFAirDrop.NearbySharingInteraction.state.setter();
    (v73)(v88, 0);
  }

  (*(v17 + 104))(v21, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:), v16);
  sub_100005358(&qword_100976260, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v88[0] == v86 && v88[1] == v87)
  {
    (v36)(v21, v16);
  }

  else
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (v36)(v21, v16);

    if ((v64 & 1) == 0)
    {
      return;
    }
  }

  v65 = type metadata accessor for SDNearFieldTap();
  sub_1002B6074(v84, (*(v83 + *(v65 + 44)) & 1) == 0, v83 + *(v65 + 60));
}

void sub_1002B6074(uint64_t a1, int a2, uint64_t a3)
{
  v47 = a3;
  v52 = a2;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v51 = &v42 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v50 = &v42 - v13;
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100975E80);
  v45 = *(v8 + 16);
  v45(v15, a1, v7);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v49 = v8;
  v46 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v8;
    v22 = v20;
    v42 = swift_slowAlloc();
    v53 = v42;
    *v22 = 67109378;
    *(v22 + 4) = v52 & 1;
    *(v22 + 8) = 2080;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v9;
    v25 = v24;
    v26 = v21;
    v11 = v44;
    (*(v26 + 8))(v15, v7);
    v27 = sub_10000C4E4(v23, v25, &v53);
    v9 = v43;

    *(v22 + 10) = v27;
    LOBYTE(v27) = v52;
    _os_log_impl(&_mh_execute_header, v17, v18, "SDAirDropNearFieldService: start NameDrop flow {isActive: %{BOOL}d endpointIdentifier: %s}", v22, 0x12u);
    sub_10000C60C(v42);

    v28 = v50;
    if ((v27 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    (*(v8 + 8))(v15, v7);
    v28 = v50;
    if ((v52 & 1) == 0)
    {
      return;
    }
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  v30 = v45;
  v45(v28, v46, v7);
  v30(v11, v47, v7);
  v31 = qword_1009735E0;
  v32 = v48;
  v33 = v11;
  if (v31 != -1)
  {
    swift_once();
  }

  v34 = static AirDropActor.shared;
  v35 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v36 = v49;
  v37 = *(v49 + 80);
  v38 = (v37 + 40) & ~v37;
  v39 = (v9 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  *(v40 + 2) = v34;
  *(v40 + 3) = v35;
  *(v40 + 4) = v32;
  v41 = *(v36 + 32);
  v41(&v40[v38], v28, v7);
  v41(&v40[v39], v33, v7);

  sub_1002B3098(0, 0, v51, &unk_1007F93E0, v40);
}

BOOL sub_1002B656C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 currentApplicationLabel];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = type metadata accessor for SDNearFieldTap();
  v7 = (a1 + *(v6 + 40));
  v11 = *v7;
  v12 = v7[1];
  sub_10001229C();
  if (StringProtocol.contains<A>(_:)())
  {
  }

  else
  {
    v8 = StringProtocol.contains<A>(_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + *(v6 + 68));
  return v9 != 2 && (v9 & 1) == 0;
}

uint64_t sub_1002B66B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
  result = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!result)
  {
    return result;
  }

  v5 = v1;
  v6 = &selRef_createWiFiRequest;
  v7 = [result currentApplicationLabel];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for SDNearFieldTap();
    v10 = (a1 + *(v9 + 40));
    v24 = *v10;
    v25 = v10[1];
    sub_10001229C();
    if (StringProtocol.contains<A>(_:)())
    {

      v6 = &selRef_createWiFiRequest;
    }

    else
    {
      v11 = StringProtocol.contains<A>(_:)();

      v6 = &selRef_createWiFiRequest;
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v12 = *(a1 + *(v9 + 68));
    if (v12 != 2 && (v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_8:
  result = *(v5 + v3);
  if (result)
  {
    result = [result v6[11]];
    if (result)
    {
      v13 = result;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = (a1 + *(type metadata accessor for SDNearFieldTap() + 40));
      v18 = *v17 == 0xD000000000000013 && 0x800000010078A3E0 == v17[1];
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (type metadata accessor for SFAirDropClient(), v19._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter(), v20 = String.hasPrefix(_:)(v19), , v20))
      {
        v21 = v14 == 0xD000000000000013 && 0x800000010078A3E0 == v16;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 0;
        }

        type metadata accessor for SFAirDropClient();
        v22._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter();
        v23 = String.hasPrefix(_:)(v22);

        if (v23)
        {
          return 0;
        }
      }

      else
      {
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1002B6938(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!result)
  {
    return result;
  }

  v4 = a1;
  result = [result currentApplicationLabel];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0xD00000000000001BLL && 0x800000010078A530 == v8)
  {

    return 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return 1;
  }

  v11 = (v4 + *(type metadata accessor for SDNearFieldTap() + 40));
  if (*v11 == 0xD00000000000001BLL && 0x800000010078A530 == v11[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1002B6A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_1009762D8, &qword_100807790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_1002B6938(a1);
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v11 = static NSUserDefaults.airdrop.getter();
  SFAirDropUserDefaults.boopInteractionTypeOverride.getter();

  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    return (*(v13 + 32))(a2, v9, v12);
  }

  sub_100005508(v9, &qword_1009762D8, &qword_100807790);
  if ((v10 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
    v17 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v17)
    {
      v18 = &selRef_createWiFiRequest;
      v19 = [v17 currentApplicationLabel];
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v21._object = 0x800000010078A550;
        v21._countAndFlagsBits = 0xD000000000000015;
        v18 = &selRef_createWiFiRequest;
        LOBYTE(v20) = String.hasPrefix(_:)(v21);

        if ((v20 & 1) != 0 || (v22 = (a1 + *(type metadata accessor for SDNearFieldTap() + 40)), v23 = *v22, v24 = v22[1], v25._object = 0x800000010078A550, v25._countAndFlagsBits = 0xD000000000000015, String.hasPrefix(_:)(v25)))
        {
          v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:);
          return (*(v13 + 104))(a2, *v14, v12);
        }
      }

      v26 = *(v3 + v16);
      if (v26)
      {
        v27 = [v26 v18[11]];
        if (v27)
        {
          v28 = v27;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for SFAirDropClient();
          v29._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter();
          v30 = String.hasPrefix(_:)(v29);

          if (v30 || (v31 = (a1 + *(type metadata accessor for SDNearFieldTap() + 40)), v32 = *v31, v33 = v31[1], v34._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter(), LOBYTE(v32) = String.hasPrefix(_:)(v34), , (v32 & 1) != 0))
          {
            if (!sub_1002B656C(a1))
            {
              v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:);
              return (*(v13 + 104))(a2, *v14, v12);
            }
          }
        }
      }
    }

    if (sub_1002B66B0(a1))
    {
      v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.generic(_:);
    }

    else if (sub_1002D6D98(a1))
    {
      v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:);
    }

    else
    {
      v35 = type metadata accessor for SDNearFieldTap();
      if ((*(a1 + *(v35 + 48)) & 1) != 0 || *(a1 + *(v35 + 24) + 8))
      {
        v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.share(_:);
      }

      else
      {
        v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.unknown(_:);
      }
    }

    return (*(v13 + 104))(a2, *v14, v12);
  }

  v14 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.peerPayment(_:);
  return (*(v13 + 104))(a2, *v14, v12);
}

uint64_t sub_1002B6DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.PollingType();
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  v6 = __chkstk_darwin(v4);
  v98 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v85 - v8;
  v10 = type metadata accessor for UUID();
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  __chkstk_darwin(v10);
  v88 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10028088C(&unk_1009761A0, &unk_1007F9320);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v93 = &v85 - v15;
  v16 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v94 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v87 = (&v85 - v20);
  v21 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v91 = &v85 - v23;
  v24 = type metadata accessor for SFClientIdentity();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100975E80);
  v35 = *(v30 + 16);
  v102 = a1;
  v35(v33, a1, v29);
  v36 = *(v25 + 16);
  v95 = a2;
  v89 = v36;
  v90 = v25 + 16;
  v36(v28, a2, v24);
  v37 = Logger.logObject.getter();
  v38 = v25;
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v37, v39);
  v99 = v9;
  v92 = v24;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v105[0] = v86;
    *v41 = 136315394;
    v85 = v38;
    v42 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
    v44 = v43;
    (*(v30 + 8))(v33, v29);
    v45 = sub_10000C4E4(v42, v44, v105);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    sub_100005358(&qword_1009761E8, &type metadata accessor for SFClientIdentity);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v49 = v85;
    (*(v85 + 8))(v28, v24);
    v50 = sub_10000C4E4(v46, v48, v105);

    *(v41 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v37, v39, "SDAirDropNearFieldService: start active nearby sharing discovery: %s for client: %s", v41, 0x16u);
    swift_arrayDestroy();

    v51 = v49;
  }

  else
  {

    (*(v38 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v51 = v38;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v91;
  v53 = v103;
  static Published.subscript.getter();

  v54 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v55 = (*(*(v54 - 8) + 48))(v52, 1, v54);
  sub_100005508(v52, &unk_100975F60, &unk_1007F91B0);
  v57 = v96;
  v56 = v97;
  if (v55 != 1)
  {
    v58 = v87;
    (*(v96 + 56))(v87, 1, 1, v97);
    sub_1002B4888(v58);
    sub_100005508(v58, &unk_100976120, &qword_1007F9260);
  }

  v59 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
  v61 = v60;
  v62 = v92;
  v63 = v93;
  v89(v93, v95, v92);
  (*(v51 + 56))(v63, 0, 1, v62);
  swift_beginAccess();
  sub_1002AFF74(v63, v59, v61);
  swift_endAccess();
  v64 = v94;
  SFClientIdentity.connectionID.getter();
  if ((*(v57 + 48))(v64, 1, v56) == 1)
  {
    sub_100005508(v64, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v65 = v88;
    (*(v57 + 32))(v88, v64, v56);
    v66 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
    v68 = v67;
    v69 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryLabelForConnectionID;
    swift_beginAccess();
    v70 = *(v53 + v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v53 + v69);
    *(v53 + v69) = 0x8000000000000000;
    sub_100579114(v66, v68, v65, isUniquelyReferenced_nonNull_native);
    *(v53 + v69) = v104;
    swift_endAccess();
    (*(v57 + 8))(v65, v56);
  }

  v73 = v99;
  v72 = v100;
  SFAirDrop.NearbySharingDiscovery.Request.pollingType.getter();
  v74 = v98;
  v75 = v101;
  (*(v72 + 16))(v98, v73, v101);
  v76 = (*(v72 + 88))(v74, v75);
  if (v76 == enum case for SFAirDrop.NearbySharingDiscovery.PollingType.automatic(_:))
  {
    v77 = 0;
LABEL_17:
    (*(v72 + 8))(v73, v75);
    v78 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
    v80 = v79;
    v81 = SFAirDrop.NearbySharingDiscovery.Request.publicKey.getter();
    v83 = v82;
    sub_10002887C(v77, v78, v80, 1, v81, v82);
    sub_10028BCC0(v81, v83);
  }

  if (v76 == enum case for SFAirDrop.NearbySharingDiscovery.PollingType.passive(_:))
  {
    v77 = 1;
    goto LABEL_17;
  }

  if (v76 == enum case for SFAirDrop.NearbySharingDiscovery.PollingType.full(_:))
  {
    v77 = 2;
    goto LABEL_17;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B7794(uint64_t a1)
{
  v125 = a1;
  v124 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v1 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v102 = &v97 - v2;
  v131 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v99 = *(v131 - 8);
  v3 = *(v99 + 64);
  __chkstk_darwin(v131);
  v132 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&qword_1009761D0, &qword_1007F9338);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v97 - v10;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v129 = &v97 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v97 - v19;
  __chkstk_darwin(v18);
  v22 = &v97 - v21;
  v128 = type metadata accessor for UUID();
  v103 = *(v128 - 8);
  v23 = *(v103 + 64);
  v24 = __chkstk_darwin(v128);
  v114 = (&v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v97 = (&v97 - v26);
  v27 = type metadata accessor for SFClientIdentity();
  v28 = *(v27 - 1);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v122 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v97 - v32;
  if (qword_100973548 != -1)
  {
LABEL_43:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100975E80);
  (v28[2])(v33, v125, v27);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v115 = v15;
  v107 = v9;
  v123 = v27;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v133 = v130;
    *v38 = 136315138;
    sub_100005358(&qword_1009761E8, &type metadata accessor for SFClientIdentity);
    v39 = v36;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v121 = v28[1];
    v121(v33, v27);
    v43 = sub_10000C4E4(v40, v42, &v133);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v39, "SDAirDropNearFieldService: Requested stop active nearby sharing discovery for client: %s", v38, 0xCu);
    sub_10000C60C(v130);
  }

  else
  {

    v121 = v28[1];
    v121(v33, v27);
  }

  SFClientIdentity.connectionID.getter();
  v44 = v103;
  v45 = (v103 + 48);
  v46 = *(v103 + 48);
  v47 = v128;
  v48 = v46(v22, 1, v128);
  v15 = v102;
  if (v48 == 1)
  {
    return sub_100005508(v22, &unk_100976120, &qword_1007F9260);
  }

  v120 = v45;
  v50 = *(v44 + 32);
  v27 = v97;
  v111 = v44 + 32;
  v110 = v50;
  v50(v97, v22, v47);
  v51 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryLabelForConnectionID;
  v52 = v112;
  swift_beginAccess();
  v53 = *(v52 + v51);
  if (*(v53 + 16) && (v54 = sub_10000EBD4(v27), (v55 & 1) != 0))
  {
    v56 = *(v53 + 56) + 16 * v54;
    v57 = *v56;
    v58 = *(v56 + 8);
    swift_endAccess();

    sub_1002B857C(v57, v58);

    swift_beginAccess();
    sub_1002B8CE8(v27);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
  v60 = v112;
  swift_beginAccess();
  v61 = *(v60 + v59);
  v62 = *(v61 + 64);
  v104 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v109 = v64 & v62;
  v98 = (v63 + 63) >> 6;
  v100 = v103 + 16;
  v118 = (v28 + 1);
  v119 = v99 + 16;
  v116 = (v103 + 8);
  v117 = (v99 + 8);
  v101 = v61;

  v65 = 0;
  v28 = &unk_100976120;
  v9 = v107;
  v33 = v106;
  v113 = v46;
  while (1)
  {
    v66 = v109;
    if (v109)
    {
      v108 = v65;
      v67 = v65;
      goto LABEL_26;
    }

    v68 = v98 <= v65 + 1 ? v65 + 1 : v98;
    v69 = v68 - 1;
    do
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v67 >= v98)
      {
        v22 = &qword_1009761D8;
        v27 = &qword_1007F9340;
        v96 = sub_10028088C(&qword_1009761D8, &qword_1007F9340);
        (*(*(v96 - 8) + 56))(v9, 1, 1, v96);
        v109 = 0;
        v108 = v69;
        goto LABEL_27;
      }

      v66 = *(v104 + 8 * v67);
      ++v65;
    }

    while (!v66);
    v108 = v67;
LABEL_26:
    v109 = (v66 - 1) & v66;
    v70 = __clz(__rbit64(v66)) | (v67 << 6);
    v71 = v101;
    v72 = v114;
    v73 = v128;
    (*(v103 + 16))(v114, *(v101 + 48) + *(v103 + 72) * v70, v128);
    v74 = *(*(v71 + 56) + 8 * v70);
    v27 = &qword_1007F9340;
    v75 = sub_10028088C(&qword_1009761D8, &qword_1007F9340);
    v76 = *(v75 + 48);
    v77 = v107;
    v78 = v73;
    v22 = &qword_1009761D8;
    v110(v107, v72, v78);
    *&v77[v76] = v74;
    v9 = v77;
    (*(*(v75 - 8) + 56))(v77, 0, 1, v75);

    v33 = v106;
    v46 = v113;
    v28 = &unk_100976120;
    v15 = v102;
LABEL_27:
    sub_1002D7130(v9, v33);
    v79 = sub_10028088C(&qword_1009761D8, &qword_1007F9340);
    if ((*(*(v79 - 8) + 48))(v33, 1, v79) == 1)
    {
      break;
    }

    v80 = *&v33[*(v79 + 48)];
    v81 = *(v80 + 16);
    if (v81)
    {
      v82 = (*(v99 + 80) + 32) & ~*(v99 + 80);
      v105 = *&v33[*(v79 + 48)];
      v83 = v80 + v82;
      v84 = *(v99 + 72);
      v126 = *(v99 + 16);
      v127 = v84;
      while (1)
      {
        v130 = v81;
        v126(v132, v83, v131);
        v85 = v122;
        SFAirDrop.NearbySharingAssertion.client.getter();
        SFClientIdentity.connectionID.getter();
        v121(v85, v123);
        v22 = v20;
        v86 = v129;
        SFClientIdentity.connectionID.getter();
        v87 = *(v124 + 48);
        sub_10000FF90(v22, v15, &unk_100976120, &qword_1007F9260);
        sub_10000FF90(v86, &v15[v87], &unk_100976120, &qword_1007F9260);
        v88 = v15;
        v89 = v15;
        v90 = v128;
        v27 = v120;
        if (v46(v88, 1, v128) == 1)
        {
          break;
        }

        v91 = v46;
        v92 = v115;
        sub_10000FF90(v89, v115, &unk_100976120, &qword_1007F9260);
        if (v91(v89 + v87, 1, v90) == 1)
        {
          sub_100005508(v129, &unk_100976120, &qword_1007F9260);
          v20 = v22;
          sub_100005508(v22, &unk_100976120, &qword_1007F9260);
          (*v116)(v92, v90);
          v46 = v113;
LABEL_31:
          sub_100005508(v89, &unk_100987030, &qword_1007F9330);
          v15 = v89;
          goto LABEL_32;
        }

        v27 = v114;
        v110(v114, (v89 + v87), v90);
        sub_100005358(&qword_1009761E0, &type metadata accessor for UUID);
        v93 = dispatch thunk of static Equatable.== infix(_:_:)();
        v94 = v90;
        v95 = *v116;
        (*v116)(v27, v94);
        sub_100005508(v129, &unk_100976120, &qword_1007F9260);
        sub_100005508(v22, &unk_100976120, &qword_1007F9260);
        v95(v115, v94);
        v20 = v22;
        sub_100005508(v89, &unk_100976120, &qword_1007F9260);
        v46 = v113;
        v15 = v89;
        if (v93)
        {
          goto LABEL_38;
        }

LABEL_32:
        (*v117)(v132, v131);
        v83 += v127;
        v81 = (v130 - 1);
        if (v130 == 1)
        {

          v33 = v106;
          goto LABEL_15;
        }
      }

      sub_100005508(v86, &unk_100976120, &qword_1007F9260);
      sub_100005508(v22, &unk_100976120, &qword_1007F9260);
      v20 = v22;
      if (v46((v89 + v87), 1, v90) == 1)
      {
        sub_100005508(v89, &unk_100976120, &qword_1007F9260);
        v15 = v89;
LABEL_38:
        v27 = v114;
        SFAirDrop.NearbySharingAssertion.id.getter();
        sub_1002B8EF4(v27);
        (*v116)(v27, v128);
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_15:
    (*v116)(v33, v128);
    v9 = v107;
    v65 = v108;
  }

  (*v116)(v97, v128);
}

void sub_1002B857C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (v43 - v8);
  v10 = sub_10028088C(&unk_1009761A0, &unk_1007F9320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v43 - v12;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100975E80);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000C4E4(a1, a2, v44);
    _os_log_impl(&_mh_execute_header, v15, v16, "SDAirDropNearFieldService: Requested stop active nearby sharing discovery: %s", v17, 0xCu);
    sub_10000C60C(v18);
  }

  v19 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (v19)
  {
    v43[0] = v19;
    v20 = [v43[0] currentApplicationLabel];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = type metadata accessor for SFClientIdentity();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      swift_beginAccess();

      sub_1002AFF74(v13, v22, v24);
      swift_endAccess();
      if (v22 == a1 && v24 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v44[0] = v22, v44[1] = v24, v43[1] = a1, v43[2] = a2, sub_10001229C(), (StringProtocol.contains<A>(_:)() & 1) != 0))
      {
        sub_10002887C(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_defaultPollingType), 0xD000000000000013, 0x800000010078A3E0, 0, 0, 0xF000000000000000);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v44[0] = v29;
          *v28 = 136315138;
          v30 = sub_10000C4E4(v22, v24, v44);

          *(v28 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v26, v27, "SDAirDropNearFieldService: stop active nearby sharing discovery: %s", v28, 0xCu);
          sub_10000C60C(v29);
        }

        else
        {
        }

        v38 = type metadata accessor for UUID();
        (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
        sub_1002B4888(v9);

        sub_100005508(v9, &unk_100976120, &qword_1007F9260);
        return;
      }

      v34 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v34, v40))
      {

        goto LABEL_18;
      }

      v41 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_10000C4E4(a1, a2, v44);
      *(v41 + 12) = 2080;
      v42 = sub_10000C4E4(v22, v24, v44);

      *(v41 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v40, "SDAirDropNearFieldService: stop nearby sharing discovery for application label: %s failed because active application label is not matching: %s", v41, 0x16u);
      swift_arrayDestroy();
LABEL_17:

LABEL_18:

      goto LABEL_19;
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10000C4E4(a1, a2, v44);
      _os_log_impl(&_mh_execute_header, v34, v35, "SDAirDropNearFieldService: missing current application label. Ignore request to to stop active nearby sharing discovery for: %s", v36, 0xCu);
      sub_10000C60C(v37);
      goto LABEL_17;
    }
  }

  else
  {

    v43[0] = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43[0], v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10000C4E4(a1, a2, v44);
      _os_log_impl(&_mh_execute_header, v43[0], v31, "SDAirDropNearFieldService: Near field controller not start. Fail to stop active nearby sharing discovery for: %s", v32, 0xCu);
      sub_10000C60C(v33);

LABEL_19:

      return;
    }
  }

  v39 = v43[0];
}

uint64_t sub_1002B8CE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000EBD4(a1);
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
    sub_1002D0A80(&type metadata accessor for UUID, &qword_1009761F0, &qword_1007F9348);
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_1002D4ED8(v6, v9, &type metadata accessor for UUID, &qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *v2 = v9;
  return v13;
}

uint64_t sub_1002B8E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000EBD4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002D270C();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1002D42C0(v6, v9);
  *v2 = v9;
  return v12;
}

void sub_1002B8EF4(uint64_t *a1)
{
  v138 = a1;
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v128 = (&v122 - v3);
  v4 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v130 = *(v4 - 8);
  v131 = v4;
  v5 = *(v130 + 64);
  __chkstk_darwin(v4);
  v129 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v135 = *(v7 - 8);
  v8 = *(v135 + 64);
  __chkstk_darwin(v7);
  v133 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v122 - v12;
  v14 = type metadata accessor for UUID();
  v136 = *(v14 - 8);
  v137 = v14;
  v15 = *(v136 + 64);
  v16 = __chkstk_darwin(v14);
  v134 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v132 = &v122 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v122 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v122 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v122 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v122 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v122 - v33;
  __chkstk_darwin(v32);
  v36 = &v122 - v35;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37 = v7;

  v38 = v135;
  if (!(*(v135 + 48))(v13, 1, v37))
  {
    v134 = v31;
    v124 = v28;
    v125 = v22;
    v126 = v25;
    v54 = v132;
    v53 = v133;
    (*(v38 + 16))(v133, v13, v37);
    sub_100005508(v13, &unk_100975F60, &unk_1007F91B0);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v38 + 8))(v53, v37);
    v55 = v136;
    v56 = v137;
    (*(v136 + 32))(v36, v34, v137);
    v57 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
    v58 = v139;
    swift_beginAccess();
    v59 = *(v58 + v57);
    v60 = *(v59 + 16);
    v127 = v36;
    if (v60)
    {
      v61 = sub_10000EBD4(v36);
      v62 = v138;
      if (v63)
      {
        v141 = *(*(v59 + 56) + 8 * v61);
        v64 = v141;
        v65 = swift_endAccess();
        __chkstk_darwin(v65);
        *(&v122 - 2) = v62;

        v66 = sub_1002CCF70(sub_1002CDE20, (&v122 - 4), v64, &type metadata accessor for SFAirDrop.NearbySharingAssertion);
        if ((v67 & 1) == 0)
        {
          v135 = v66;
          if (qword_100973548 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          sub_10000C4AC(v68, qword_100975E80);
          v69 = *(v55 + 16);
          v70 = v134;
          v132 = (v55 + 16);
          v133 = v69;
          (v69)(v134, v62, v56);
          v71 = Logger.logObject.getter();
          v72 = v56;
          v73 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v71, v73))
          {
            v74 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v140[0] = v122;
            *v74 = 136315138;
            v75 = v74;
            sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
            v76 = dispatch thunk of CustomStringConvertible.description.getter();
            v77 = v55;
            v79 = v78;
            v123 = *(v77 + 8);
            v123(v70, v72);
            v80 = sub_10000C4E4(v76, v79, v140);
            v55 = v77;

            *(v75 + 1) = v80;
            _os_log_impl(&_mh_execute_header, v71, v73, "SDAirDropNearFieldService: Releasing assertion:%s", v75, 0xCu);
            sub_10000C60C(v122);

            v62 = v138;

            v81 = v123;
          }

          else
          {

            v81 = *(v55 + 8);
            v81(v70, v72);
          }

          v96 = v72;
          v98 = v130;
          v97 = v131;
          v99 = v129;
          sub_1002CD0EC(v135, v129);
          (*(v98 + 8))(v99, v97);
          v138 = v141;
          if (!v141)
          {
            v81(v127, v96);
            return;
          }

          if (v138[2])
          {
            v81(v127, v96);
          }

          else
          {
            v100 = v124;
            v101 = v133;
            (v133)(v124, v62, v96);
            v102 = v126;
            (v101)(v126, v127, v96);
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.default.getter();
            v105 = os_log_type_enabled(v103, v104);
            v123 = v81;
            if (v105)
            {
              v106 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v140[0] = v136;
              *v106 = 136315394;
              sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
              LODWORD(v135) = v104;
              v107 = dispatch thunk of CustomStringConvertible.description.getter();
              v108 = v55;
              v109 = v96;
              v111 = v110;
              v137 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v81(v100, v109);
              v112 = sub_10000C4E4(v107, v111, v140);
              v96 = v109;
              v55 = v108;

              *(v106 + 4) = v112;
              *(v106 + 12) = 2080;
              v113 = v126;
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              v81(v113, v96);
              v117 = sub_10000C4E4(v114, v116, v140);

              *(v106 + 14) = v117;
              _os_log_impl(&_mh_execute_header, v103, v135, "SDAirDropNearFieldService: No more assertions:%s for nearby sharing interaction:%s", v106, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v137 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v81(v102, v96);
              v81(v100, v96);
            }

            v118 = v127;
            v119 = v128;
            v120 = v125;
            v121 = v133;
            (v133)(v125, v127, v96);
            swift_beginAccess();
            sub_1002AFDB4(0, v120);
            swift_endAccess();
            (v121)(v119, v118, v96);
            (*(v55 + 56))(v119, 0, 1, v96);
            sub_1002B4888(v119);
            sub_100005508(v119, &unk_100976120, &qword_1007F9260);
            v123(v118, v96);
          }

LABEL_21:

          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
      v62 = v138;
    }

    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_10000C4AC(v82, qword_100975E80);
    (*(v55 + 16))(v54, v62, v56);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = v55;
      v87 = swift_slowAlloc();
      v140[0] = v87;
      *v85 = 136315138;
      sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v54;
      v90 = v56;
      v92 = v91;
      v93 = *(v86 + 8);
      v93(v89, v90);
      v94 = sub_10000C4E4(v88, v92, v140);

      *(v85 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v83, v84, "SDAirDropNearFieldService: Failed to release nearby sharing assertion %s because we don't have any active assertions for it.", v85, 0xCu);
      sub_10000C60C(v87);

      v93(v127, v90);
    }

    else
    {

      v95 = *(v55 + 8);
      v95(v54, v56);
      v95(v127, v56);
    }

    goto LABEL_21;
  }

  v40 = v136;
  v39 = v137;
  sub_100005508(v13, &unk_100975F60, &unk_1007F91B0);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000C4AC(v41, qword_100975E80);
  v42 = v40;
  v43 = v134;
  (*(v40 + 16))(v134, v138, v39);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v140[0] = v47;
    *v46 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v42;
    v51 = v50;
    (*(v49 + 8))(v43, v39);
    v52 = sub_10000C4E4(v48, v51, v140);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v44, v45, "SDAirDropNearFieldService: Failed to release assertion:%s because there is no active nearby sharing interaction", v46, 0xCu);
    sub_10000C60C(v47);
  }

  else
  {

    (*(v40 + 8))(v43, v39);
  }
}

void sub_1002B9D54()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v12 - v4);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100975E80);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropNearFieldService: stop", v9, 2u);
  }

  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1002B4888(v5);
  sub_100005508(v5, &unk_100976120, &qword_1007F9260);
  sub_1002B9FB8(1);
  v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController) = 0;
}

void sub_1002B9F08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = (a5 + *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 20));
  v10 = *v9;
  v11 = v9[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = UUID._bridgeToObjectiveC()().super.isa;
  [a1 startPolling:a2 applicationLabel:v8 pkData:isa bonjourListenerUUID:v13];
}

uint64_t sub_1002B9FB8(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (v14)
  {
    v17[1] = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue);
    v18 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1 & 1;
    aBlock[4] = sub_1002D71A0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008D9DC0;
    v16 = _Block_copy(aBlock);
    v17[0] = v14;
    static DispatchQoS.unspecified.getter();
    v19 = &_swiftEmptyArrayStorage;
    sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v18);
  }

  return result;
}

uint64_t sub_1002BA2B0()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100975E80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "SDAirDropNearFieldService: restart", v3, 2u);
  }

  sub_1002B9D54();

  return sub_1000286E8(0, 1, 0, 0);
}

void sub_1002BA3B4()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v130 = &v109 - v2;
  v128 = type metadata accessor for SFPlatform();
  v126 = *(v128 - 8);
  v3 = *(v126 + 64);
  __chkstk_darwin(v128);
  v125 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DispatchTime();
  v127 = *(v129 - 8);
  v5 = *(v127 + 64);
  v6 = __chkstk_darwin(v129);
  v123 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v124 = &v109 - v8;
  v120 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v121 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v114 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v117 = &v109 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v119 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v113 = &v109 - v22;
  v23 = __chkstk_darwin(v21);
  v116 = &v109 - v24;
  v118 = v25;
  __chkstk_darwin(v23);
  v27 = &v109 - v26;
  v28 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v109 - v30;
  v32 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  isa = v37[-1].isa;
  v132 = v37;
  v38 = *(isa + 8);
  __chkstk_darwin(v37);
  v40 = &v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v41 = static NSUserDefaults.airdrop.getter();
  v42 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if (v42)
  {
    SFAirDrop.NearbySharingInteraction.PresenceContext.init()();
    (*(v33 + 104))(v36, enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:), v32);
    (*(v17 + 56))(v31, 1, 1, v16);
    SFAirDrop.NearbySharingInteraction.init(state:id:)();
    v115 = v27;
    SFAirDrop.NearbySharingInteraction.id.getter();
    v43 = [objc_opt_self() sharedMonitor];
    if (v43)
    {
      v44 = v43;
      v45 = v16;
      v46 = [v43 deviceKeyBagLocked];

      v112 = v40;
      v47 = v116;
      if (v46)
      {
        v48 = v115;
        if (qword_100973548 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_10000C4AC(v49, qword_100975E80);
        v50 = *(v17 + 16);
        v111 = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v50(v47, v48, v16);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          aBlock[0] = v54;
          *v53 = 136315138;
          sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v56;
          (*(v17 + 8))(v47, v16);
          v58 = sub_10000C4E4(v55, v57, aBlock);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v52, "SDAirDropNearFieldService: begin pending nearby sharing interaction:%s", v53, 0xCu);
          sub_10000C60C(v54);
          v40 = v112;
        }

        else
        {

          (*(v17 + 8))(v47, v16);
        }

        v45 = v16;
        v77 = isa;
        v76 = v132;
        v78 = v117;
        (*(isa + 2))(v117, v40, v132);
        (*(v77 + 7))(v78, 0, 1, v76);
        v79 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
        v80 = v122;
        swift_beginAccess();
        sub_10000C788(v78, v80 + v79, &unk_100975F60, &unk_1007F91B0);
        swift_endAccess();
        v81 = v115;
      }

      else
      {
        v63 = v115;
        if (qword_100973548 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_10000C4AC(v64, qword_100975E80);
        v65 = *(v17 + 16);
        v111 = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v66 = v113;
        v116 = v65;
        (v65)(v113, v63, v16);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock[0] = v70;
          *v69 = 136315138;
          sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v66;
          v74 = v73;
          (*(v17 + 8))(v72, v16);
          v75 = sub_10000C4E4(v71, v74, aBlock);

          *(v69 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v67, v68, "SDAirDropNearFieldService: begin nearby sharing interaction:%s", v69, 0xCu);
          sub_10000C60C(v70);
          v40 = v112;
        }

        else
        {

          (*(v17 + 8))(v66, v16);
        }

        v83 = isa;
        v82 = v132;
        v84 = v117;
        (*(isa + 2))(v117, v40, v132);
        (*(v83 + 7))(v84, 0, 1, v82);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10000FF90(v84, v114, &unk_100975F60, &unk_1007F91B0);
        v80 = v122;
        v85 = v122;
        static Published.subscript.setter();
        sub_100005508(v84, &unk_100975F60, &unk_1007F91B0);
        v81 = v115;
        v50 = v116;
      }

      v110 = v45;
      sub_1002BB374();
      v86 = v119;
      v50(v119, v81, v45);
      v87 = (*(v17 + 80) + 24) & ~*(v17 + 80);
      v88 = swift_allocObject();
      *(v88 + 16) = v80;
      (*(v17 + 32))(v88 + v87, v86, v45);
      aBlock[4] = sub_1002D7904;
      aBlock[5] = v88;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008D9F28;
      _Block_copy(aBlock);
      v133 = _swiftEmptyArrayStorage;
      sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      v89 = v80;
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v90 = type metadata accessor for DispatchWorkItem();
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      v93 = DispatchWorkItem.init(flags:block:)();

      v94 = *&v89[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue];
      v95 = v81;
      v96 = v123;
      static DispatchTime.now()();
      v97 = v125;
      static SFPlatform.watchOS.getter();
      static SFPlatform.isPlatform(_:)();
      (*(v126 + 8))(v97, v128);
      v98 = v124;
      + infix(_:_:)();
      v99 = *(v127 + 8);
      v100 = v129;
      v99(v96, v129);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();
      v99(v98, v100);
      v101 = *&v89[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem];
      *&v89[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem] = v93;

      sub_1002CB084(v95);
      v102 = type metadata accessor for TaskPriority();
      v103 = v130;
      (*(*(v102 - 8) + 56))(v130, 1, 1, v102);
      v104 = qword_1009735E0;
      v105 = v89;
      if (v104 != -1)
      {
        swift_once();
      }

      v106 = static AirDropActor.shared;
      v107 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
      v108 = swift_allocObject();
      v108[2] = v106;
      v108[3] = v107;
      v108[4] = v105;

      sub_1002B2DEC(0, 0, v103, &unk_1007F9460, v108);

      (*(v17 + 8))(v95, v110);
      (*(isa + 1))(v112, v132);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000C4AC(v59, qword_100975E80);
    v132 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v132, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v132, v60, "SDAirDropNearFieldService: Boop To Action is disabled on beginNearbySharingInteraction", v61, 2u);
    }

    v62 = v132;
  }
}

uint64_t sub_1002BB374()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  swift_beginAccess();
  sub_10000FF90(v1 + v17, v8, &unk_100976120, &qword_1007F9260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100005508(v8, &unk_100976120, &qword_1007F9260);
  }

  v41 = v17;
  (*(v10 + 32))(v16, v8, v9);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100975E80);
  (*(v10 + 16))(v14, v16, v9);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v42 = v6;
  v43 = v16;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v23 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v10 + 8);
    v27(v14, v9);
    v28 = sub_10000C4E4(v24, v26, &v44);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "SDAirDropNearFieldService finish existing AirDrop connection for transaction:%s", v23, 0xCu);
    sub_10000C60C(v40);

    v29 = v27;
  }

  else
  {

    v29 = *(v10 + 8);
    v29(v14, v9);
  }

  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem;
  v31 = v41;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem))
  {
    v32 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem);

    dispatch thunk of DispatchWorkItem.cancel()();

    v33 = *(v1 + v30);
  }

  *(v1 + v30) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService);
    sub_10047F040(v43);
    swift_unknownObjectRelease();
  }

  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = *(*(v36 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService) + 32);
    v38 = v43;
    sub_10035F618(v43);
    v29(v38, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v29(v43, v9);
  }

  v39 = v42;
  (*(v10 + 56))(v42, 1, 1, v9);
  swift_beginAccess();
  sub_10000C788(v39, v1 + v31, &unk_100976120, &qword_1007F9260);
  return swift_endAccess();
}

void sub_1002BB85C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  __chkstk_darwin(v2);
  v103 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&qword_100976130, &qword_1007F92B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v97 = (v92 - v7);
  v99 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v108 = *(v99 - 8);
  v8 = *(v108 + 64);
  v9 = __chkstk_darwin(v99);
  v101 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v92 - v11;
  v13 = __chkstk_darwin(v10);
  v98 = v92 - v14;
  __chkstk_darwin(v13);
  v109 = v92 - v15;
  v16 = sub_10028088C(&qword_100976138, qword_1007F92B8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v92 - v18;
  v95 = type metadata accessor for DispatchTime();
  v94 = *(v95 - 8);
  v20 = v94[8];
  v21 = __chkstk_darwin(v95);
  v23 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v92 - v24;
  v107 = type metadata accessor for DispatchWorkItemFlags();
  v102 = *(v107 - 8);
  v26 = *(v102 + 64);
  __chkstk_darwin(v107);
  v106 = v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = v92 - v30;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v100 = v12;
  v32 = type metadata accessor for Logger();
  v96 = sub_10000C4AC(v32, qword_100975E80);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "SDAirDropNearFieldService: stop services.", v35, 2u);
  }

  v36 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  swift_beginAccess();
  sub_10000FF90(&v1[v36], v31, &unk_100976120, &qword_1007F9260);
  v37 = type metadata accessor for UUID();
  LODWORD(v36) = (*(*(v37 - 8) + 48))(v31, 1, v37);
  sub_100005508(v31, &unk_100976120, &qword_1007F9260);
  if (v36 != 1)
  {
    v38 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem;
    if (!*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem])
    {
      if (sub_1002B3E28())
      {
        v39 = swift_allocObject();
        *(v39 + 16) = v1;
        v115 = sub_1002CDEA4;
        v116 = v39;
        aBlock = _NSConcreteStackBlock;
        v112 = 1107296256;
        v113 = sub_100011678;
        v114 = &unk_1008D9CD0;
        v92[1] = _Block_copy(&aBlock);
        v110 = &_swiftEmptyArrayStorage;
        v92[0] = sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
        v93 = v1;
        sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
        sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v40 = type metadata accessor for DispatchWorkItem();
        v41 = *(v40 + 48);
        v42 = *(v40 + 52);
        swift_allocObject();
        v43 = DispatchWorkItem.init(flags:block:)();

        v44 = *&v1[v38];
        *&v1[v38] = v43;

        v45 = *&v93[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue];
        static DispatchTime.now()();
        + infix(_:_:)();
        v46 = v94[1];
        v47 = v23;
        v48 = v95;
        v46(v47, v95);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v46(v25, v48);
      }

      else
      {
        sub_1002BB374();
      }
    }
  }

  v49 = type metadata accessor for SDNearFieldTap();
  (*(*(v49 - 8) + 56))(v19, 1, 1, v49);
  v50 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  swift_beginAccess();
  sub_10000C788(v19, &v1[v50], &qword_100976138, qword_1007F92B8);
  swift_endAccess();
  v51 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController];
  if (v51)
  {
    v52 = v51;
    v53 = [v52 currentTransaction];
    if (v53)
    {
      v94 = v52;
      v95 = v53;
      v54 = v99;
      v55 = *(v99 + 24);
      v56 = v109;
      UUID.init()();
      v57 = sub_1001BBEF4(kSecAttrKeyTypeECSECPrimeRandom, 256);
      v58 = sub_1001BC0FC(v57);
      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = (v56 + *(v54 + 20));
      *v62 = v59;
      v62[1] = v61;
      *(v56 + v55) = v57;
      v63 = v97;
      sub_1002D7388(v56, v97, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      (*(v108 + 56))(v63, 0, 1, v54);
      v64 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
      swift_beginAccess();
      sub_10000C788(v63, &v1[v64], &qword_100976130, &qword_1007F92B0);
      swift_endAccess();
      v65 = v98;
      sub_1002D7388(v56, v98, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v66 = v100;
      sub_1002D7388(v56, v100, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v96 = v37;
        v71 = v70;
        v97 = swift_slowAlloc();
        aBlock = v97;
        *v69 = 138412546;
        v72 = (v65 + *(v54 + 20));
        v73 = *v72;
        v74 = v72[1];
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1002D6414(v65, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        *(v69 + 4) = isa;
        v76 = v71;
        *v71 = isa;
        *(v69 + 12) = 2080;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        sub_1002D6414(v66, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v80 = sub_10000C4E4(v77, v79, &aBlock);

        *(v69 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v67, v68, "SDAirDropNearFieldService: Updating public key: %@ listener ID: %s", v69, 0x16u);
        sub_100005508(v76, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v97);
      }

      else
      {

        sub_1002D6414(v66, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        sub_1002D6414(v65, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      }

      v100 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue];
      v81 = v109;
      v82 = v101;
      sub_1002D7388(v109, v101, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v83 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v84 = swift_allocObject();
      v85 = v94;
      v86 = v95;
      *(v84 + 16) = v94;
      *(v84 + 24) = v86;
      sub_10000CA10(v82, v84 + v83, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v115 = sub_1002CDE40;
      v116 = v84;
      aBlock = _NSConcreteStackBlock;
      v112 = 1107296256;
      v113 = sub_100011678;
      v114 = &unk_1008D9C80;
      v87 = _Block_copy(&aBlock);
      v88 = v85;
      swift_unknownObjectRetain();
      v89 = v103;
      static DispatchQoS.unspecified.getter();
      v110 = &_swiftEmptyArrayStorage;
      sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
      v91 = v106;
      v90 = v107;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v87);

      swift_unknownObjectRelease();
      (*(v102 + 8))(v91, v90);
      (*(v104 + 8))(v89, v105);
      sub_1002D6414(v81, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    }

    else
    {
    }
  }
}

uint64_t sub_1002BC5BC()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1007F92D8;
  *(v6 + 24) = v5;
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v3, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1002BC728(uint64_t a1)
{
  *(v1 + 40) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002BC7C4, v2, 0);
}

uint64_t sub_1002BC7C4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002BB374();
  }

  v3 = *(v0 + 8);

  return v3(Strong == 0);
}

uint64_t sub_1002BC854(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1002BC940;

  return v6();
}

uint64_t sub_1002BC940(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

void sub_1002BCA54(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = UUID._bridgeToObjectiveC()().super.isa;
  [a1 invalidateTransaction:a2 updatedPkData:isa bonjourListenerUUID:v9];
}

uint64_t sub_1002BCAE4(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v3[20] = *(v6 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&qword_100976130, &qword_1007F92B0) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v3[31] = *(v9 + 64);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v3[35] = v10;
  v11 = *(v10 - 8);
  v3[36] = v11;
  v3[37] = *(v11 + 64);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v3[41] = v12;
  v13 = *(v12 - 8);
  v3[42] = v13;
  v14 = *(v13 + 64) + 15;
  v3[43] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&qword_100976138, qword_1007F92B8) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v3[46] = v16;
  v17 = *(v16 - 8);
  v3[47] = v17;
  v18 = *(v17 + 64) + 15;
  v3[48] = swift_task_alloc();
  v19 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v3[51] = v20;
  v21 = *(v20 - 8);
  v3[52] = v21;
  v22 = *(v21 + 64) + 15;
  v3[53] = swift_task_alloc();
  v23 = type metadata accessor for SDNearFieldTap();
  v3[54] = v23;
  v24 = *(v23 - 8);
  v3[55] = v24;
  v3[56] = *(v24 + 64);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v25 = static AirDropActor.shared;
  v3[60] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002BCFB4, v25, 0);
}

uint64_t sub_1002BCFB4()
{
  v256 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  *(v0 + 488) = sub_10000C4AC(v3, qword_100975E80);
  sub_1002D7388(v2, v1, type metadata accessor for SDNearFieldTap);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 472);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v255[0] = v9;
    *v8 = 136315138;
    v10 = sub_1004E85E0();
    v12 = v11;
    sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
    v13 = sub_10000C4E4(v10, v12, v255);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService: handle tap:%s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
  }

  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 128);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v17 + v18, v16, &unk_100975F60, &unk_1007F91B0);
  v19 = *(v15 + 48);
  if (v19(v16, 1, v14) == 1)
  {
    v21 = *(v0 + 400);
    v20 = *(v0 + 408);
    v22 = *(v0 + 392);
    v23 = *(v0 + 128);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19(v22, 1, v20) != 1)
    {
      sub_100005508(*(v0 + 392), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v24 = *(v0 + 408);
    v25 = *(v0 + 416);
    v26 = *(v0 + 400);
    (*(v25 + 32))(v26, *(v0 + 392), v24);
    (*(v25 + 56))(v26, 0, 1, v24);
  }

  v27 = *(v0 + 400);
  v28 = *(v0 + 408);
  if (v19(v27, 1, v28) == 1)
  {
    sub_100005508(v27, &unk_100975F60, &unk_1007F91B0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "SDAirDropNearFieldService: handling tap while we don't have a current nearbySharingInteraction.", v31, 2u);
    }

    goto LABEL_28;
  }

  v33 = *(v0 + 376);
  v32 = *(v0 + 384);
  v34 = *(v0 + 368);
  (*(*(v0 + 416) + 32))(*(v0 + 424), v27, v28);
  SFAirDrop.NearbySharingInteraction.state.getter();
  v35 = SFAirDrop.NearbySharingInteraction.State.isConnected.getter();
  (*(v33 + 8))(v32, v34);
  if (v35)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 416);
    v39 = *(v0 + 424);
    v41 = *(v0 + 408);
    if (v38)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "SDAirDropNearFieldService: nearbySharingInteraction is already connected.";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v36, v37, v43, v42, 2u);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v44 = *(v0 + 432);
  v45 = *(v0 + 440);
  v46 = *(v0 + 360);
  v47 = *(v0 + 128);
  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  swift_beginAccess();
  sub_10000FF90(v47 + v48, v46, &qword_100976138, qword_1007F92B8);
  LODWORD(v44) = (*(v45 + 48))(v46, 1, v44);
  sub_100005508(v46, &qword_100976138, qword_1007F92B8);
  if (v44 != 1)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v68 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 416);
    v39 = *(v0 + 424);
    v41 = *(v0 + 408);
    if (v68)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "SDAirDropNearFieldService: still handling previous tap.";
      goto LABEL_26;
    }

LABEL_27:

    (*(v40 + 8))(v39, v41);
LABEL_28:
    v70 = *(v0 + 464);
    v69 = *(v0 + 472);
    v71 = *(v0 + 456);
    v72 = *(v0 + 424);
    v73 = *(v0 + 392);
    v74 = *(v0 + 400);
    v75 = *(v0 + 384);
    v77 = *(v0 + 352);
    v76 = *(v0 + 360);
    v78 = *(v0 + 344);
    v204 = *(v0 + 320);
    v206 = *(v0 + 312);
    v208 = *(v0 + 304);
    v210 = *(v0 + 272);
    v212 = *(v0 + 264);
    v214 = *(v0 + 256);
    v216 = *(v0 + 224);
    v218 = *(v0 + 216);
    v220 = *(v0 + 208);
    v223 = *(v0 + 200);
    v226 = *(v0 + 192);
    v230 = *(v0 + 184);
    v235 = *(v0 + 176);
    v243 = *(v0 + 168);
    v249 = *(v0 + 136);

    v79 = *(v0 + 8);

    return v79();
  }

  v49 = *(v0 + 432);
  v50 = *(v0 + 112);
  v51 = *(v50 + *(v49 + 72));
  if (v51 != 2 && (v51 & 1) != 0)
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "SDAirDropNearFieldService: tap application label not supported.", v54, 2u);
    }

    v55 = *(v0 + 128);

    v56 = *(v55 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v56)
    {
      v248 = *(v0 + 424);
      v57 = *(v0 + 408);
      v58 = *(v0 + 416);
      v59 = *(v0 + 336);
      v60 = *(v0 + 344);
      v61 = *(v0 + 328);
      v62 = *(v0 + 128);
      v63 = (*(v0 + 112) + *(*(v0 + 432) + 40));
      v64 = *v63;
      v65 = v63[1];
      v66 = v56;
      v67 = String._bridgeToObjectiveC()();
      LOBYTE(v65) = [v66 supportsApplicationLabel:v67];

      *v60 = v65 ^ 1;
      (*(v59 + 104))(v60, enum case for SFAirDrop.NearbySharingInteraction.FailureType.unsupported(_:), v61);
      sub_1002BEF14(v60);

      (*(v59 + 8))(v60, v61);
      (*(v58 + 8))(v248, v57);
    }

    else
    {
      (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    }

    goto LABEL_28;
  }

  v81 = *(v0 + 440);
  v82 = *(v0 + 352);
  v83 = *(v0 + 240);
  v250 = *(v0 + 232);
  v236 = *(v0 + 320);
  v244 = *(v0 + 224);
  v84 = *(v0 + 128);
  sub_1002D7388(v50, v82, type metadata accessor for SDNearFieldTap);
  (*(v81 + 56))(v82, 0, 1, v49);
  swift_beginAccess();
  sub_10000C788(v82, v47 + v48, &qword_100976138, qword_1007F92B8);
  swift_endAccess();
  sub_1002B6A58(v50, v236);
  v85 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
  swift_beginAccess();
  sub_10000FF90(v84 + v85, v244, &qword_100976130, &qword_1007F92B0);
  if ((*(v83 + 48))(v244, 1, v250) == 1)
  {
    v87 = *(v0 + 416);
    v86 = *(v0 + 424);
    v88 = *(v0 + 408);
    v89 = *(v0 + 224);
    (*(*(v0 + 288) + 8))(*(v0 + 320), *(v0 + 280));
    (*(v87 + 8))(v86, v88);
    sub_100005508(v89, &qword_100976130, &qword_1007F92B0);
    goto LABEL_28;
  }

  v90 = *(v0 + 272);
  v91 = *(v0 + 232);
  v92 = *(v0 + 216);
  v93 = *(v0 + 144);
  v94 = *(v0 + 152);
  v95 = *(v0 + 120);
  sub_10000CA10(*(v0 + 224), v90, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v96 = *(v94 + 16);
  *(v0 + 496) = v96;
  *(v0 + 504) = (v94 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v96(v92, v95, v93);
  v97 = *(v90 + *(v91 + 24));
  *(v0 + 512) = v97;
  if (!v97)
  {
    v105 = *(v0 + 112);
    v106 = (v105 + *(*(v0 + 432) + 52));
    v107 = *v106;
    v108 = v106[1];
    v109 = v108 >> 62;
    if ((v108 >> 62) > 1)
    {
      if (v109 != 2)
      {
        goto LABEL_50;
      }

      v122 = *(v107 + 16);
      v121 = *(v107 + 24);
    }

    else
    {
      if (!v109)
      {
        if ((v108 & 0xFF000000000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_53:
        v135 = *(v0 + 504);
        v197 = *(v0 + 496);
        v227 = *(v0 + 464);
        v203 = *(v0 + 456);
        v217 = *(v0 + 448);
        v211 = *(v0 + 440);
        v136 = *(v0 + 424);
        v137 = *(v0 + 312);
        v193 = *(v0 + 320);
        v253 = v137;
        v209 = *(v0 + 296);
        v139 = *(v0 + 280);
        v138 = *(v0 + 288);
        v198 = *(v0 + 304);
        v199 = v138;
        v140 = *(v0 + 264);
        v195 = *(v0 + 272);
        v239 = v140;
        v201 = *(v0 + 256);
        v215 = *(v0 + 248);
        v207 = *(v0 + 240);
        v141 = *(v0 + 208);
        v196 = *(v0 + 216);
        v142 = *(v0 + 200);
        v247 = *(v0 + 192);
        v200 = *(v0 + 184);
        v202 = *(v0 + 176);
        v213 = *(v0 + 160);
        v205 = *(v0 + 152);
        v232 = *(v0 + 144);
        v219 = *(v0 + 128);
        v221 = *(v0 + 112);
        v224 = *(v0 + 432);
        SFAirDrop.NearbySharingInteraction.id.getter();
        v194 = *(v138 + 16);
        v194(v137, v193, v139);
        sub_1002D7388(v105, v227, type metadata accessor for SDNearFieldTap);
        sub_1002D7388(v195, v140, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v197(v142, v141, v232);
        v197(v247, v196, v232);
        v194(v198, v137, v139);
        sub_1002D7388(v227, v203, type metadata accessor for SDNearFieldTap);
        sub_1002D7388(v140, v201, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v197(v200, v142, v232);
        v197(v202, v247, v232);
        v143 = (*(v199 + 80) + 16) & ~*(v199 + 80);
        v144 = (v209 + *(v211 + 80) + v143) & ~*(v211 + 80);
        v145 = (v217 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
        v146 = (*(v207 + 80) + v145 + 8) & ~*(v207 + 80);
        v147 = *(v205 + 80);
        v148 = (v215 + v147 + v146) & ~v147;
        v149 = (v213 + v147 + v148) & ~v147;
        v150 = swift_allocObject();
        (*(v199 + 32))(v150 + v143, v253, v139);
        sub_10000CA10(v227, v150 + v144, type metadata accessor for SDNearFieldTap);
        *(v150 + v145) = v219;
        sub_10000CA10(v239, v150 + v146, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v151 = *(v205 + 32);
        v151(v150 + v148, v142, v232);
        v151(v150 + v149, v247, v232);
        if (*(v221 + *(v224 + 64)))
        {
          v152 = *(v0 + 288);
          v222 = *(v0 + 456);
          v225 = *(v0 + 280);
          v153 = *(v0 + 256);
          v233 = *(v0 + 208);
          v240 = *(v0 + 304);
          v155 = *(v0 + 176);
          v154 = *(v0 + 184);
          v156 = *(v0 + 144);
          v228 = *(v0 + 112);
          v157 = *(*(v0 + 152) + 8);
          v158 = *(v0 + 128);
          v157(v155, v156);
          v254 = v157;
          v157(v154, v156);
          sub_1002D6414(v153, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
          sub_1002D6414(v222, type metadata accessor for SDNearFieldTap);
          v159 = v240;
          v241 = *(v152 + 8);
          v241(v159, v225);
          v160 = *&v158[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager];
          v161 = v158;

          sub_1004AC2D4(v228, v233, v160, v161, sub_1002D73F0, v150);
        }

        else
        {
          v162 = *(v0 + 504);
          v163 = *(v0 + 488);
          v164 = *(v0 + 128);
          (*(v0 + 496))(*(v0 + 168), *(v0 + 208), *(v0 + 144));
          v165 = v164;
          v166 = Logger.logObject.getter();
          v167 = static os_log_type_t.default.getter();
          v168 = os_log_type_enabled(v166, v167);
          v169 = *(v0 + 168);
          v171 = *(v0 + 144);
          v170 = *(v0 + 152);
          if (v168)
          {
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v255[0] = v173;
            *v172 = 136315138;
            sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
            v174 = dispatch thunk of CustomStringConvertible.description.getter();
            v176 = v175;
            v254 = *(v170 + 8);
            v254(v169, v171);
            v177 = sub_10000C4E4(v174, v176, v255);

            *(v172 + 4) = v177;
            _os_log_impl(&_mh_execute_header, v166, v167, "SDAirDropNearFieldService: Single band not required for Nearby Sharing Interaction:%s", v172, 0xCu);
            sub_10000C60C(v173);
          }

          else
          {

            v254 = *(v170 + 8);
            v254(v169, v171);
          }

          v178 = *(v0 + 456);
          v179 = *(v0 + 304);
          v180 = *(v0 + 288);
          v242 = *(v0 + 280);
          v181 = *(v0 + 256);
          v183 = *(v0 + 176);
          v182 = *(v0 + 184);
          v184 = *(v0 + 144);
          sub_1002BF3B8(v179, v178, *(v0 + 128), v181, v182, v183);

          v254(v183, v184);
          v254(v182, v184);
          sub_1002D6414(v181, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
          sub_1002D6414(v178, type metadata accessor for SDNearFieldTap);
          v185 = v242;
          v241 = *(v180 + 8);
          v241(v179, v185);
        }

        v186 = *(v0 + 416);
        v187 = *(v0 + 408);
        v229 = v187;
        v234 = *(v0 + 424);
        v188 = *(v0 + 320);
        v190 = *(v0 + 272);
        v189 = *(v0 + 280);
        v191 = *(v0 + 216);
        v192 = *(v0 + 144);
        v254(*(v0 + 208), v192);
        v254(v191, v192);
        sub_1002D6414(v190, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v241(v188, v189);
        (*(v186 + 8))(v234, v229);
        goto LABEL_28;
      }

      v122 = v107;
      v121 = v107 >> 32;
    }

    if (v122 != v121)
    {
      goto LABEL_53;
    }

LABEL_50:
    v123 = *(v0 + 488);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "SDAirDropNearFieldService: Tap doesn't contain any public key data, this isn't supported", v126, 2u);
    }

    v127 = *(v0 + 416);
    v246 = *(v0 + 408);
    v252 = *(v0 + 424);
    v238 = *(v0 + 320);
    v129 = *(v0 + 280);
    v128 = *(v0 + 288);
    v130 = *(v0 + 272);
    v131 = *(v0 + 216);
    v133 = *(v0 + 144);
    v132 = *(v0 + 152);
    v134 = *(v0 + 128);

    sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
    (*(v132 + 8))(v131, v133);
    sub_1002D6414(v130, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    (*(v128 + 8))(v238, v129);
    (*(v127 + 8))(v252, v246);
    goto LABEL_28;
  }

  v98 = *(v0 + 128);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 520) = Strong;
  if (!Strong)
  {
    v110 = *(v0 + 136);
    (*(*(v0 + 152) + 56))(v110, 1, 1, *(v0 + 144));
    swift_unknownObjectRetain();
    sub_100005508(v110, &unk_100976120, &qword_1007F9260);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "SDAirDropNearFieldService: Failed to get endpoint UUID from tap", v113, 2u);
    }

    v114 = *(v0 + 416);
    v245 = *(v0 + 408);
    v251 = *(v0 + 424);
    v115 = *(v0 + 288);
    v231 = *(v0 + 280);
    v237 = *(v0 + 320);
    v116 = *(v0 + 272);
    v117 = *(v0 + 216);
    v119 = *(v0 + 144);
    v118 = *(v0 + 152);
    v120 = *(v0 + 128);

    sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
    swift_unknownObjectRelease();
    (*(v118 + 8))(v117, v119);
    sub_1002D6414(v116, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    (*(v115 + 8))(v237, v231);
    (*(v114 + 8))(v251, v245);
    goto LABEL_28;
  }

  v100 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_endpointService);
  swift_unknownObjectRetain();
  v101 = swift_task_alloc();
  *(v0 + 528) = v101;
  *v101 = v0;
  v101[1] = sub_1002BE3F8;
  v102 = *(v0 + 136);
  v104 = *(v0 + 112);
  v103 = *(v0 + 120);

  return sub_10047E734(v102, v103, v97, v104);
}

uint64_t sub_1002BE3F8()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 480);
  v4 = *v0;

  return _swift_task_switch(sub_1002BE508, v2, 0);
}

uint64_t sub_1002BE508()
{
  v148 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 56))(v5, 0, 1, v3);
  sub_100005508(v5, &unk_100976120, &qword_1007F9260);
  v6 = *(v0 + 112);
  v7 = (v6 + *(*(v0 + 432) + 52));
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!v10)
  {
    if ((v9 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    v11 = *(v0 + 504);
    v97 = *(v0 + 496);
    v126 = *(v0 + 464);
    v103 = *(v0 + 456);
    v116 = *(v0 + 448);
    v110 = *(v0 + 440);
    v12 = *(v0 + 424);
    v13 = *(v0 + 312);
    v93 = *(v0 + 320);
    v143 = v13;
    v108 = *(v0 + 296);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v98 = *(v0 + 304);
    v99 = v14;
    v16 = *(v0 + 264);
    v95 = *(v0 + 272);
    v134 = v16;
    v101 = *(v0 + 256);
    v114 = *(v0 + 248);
    v106 = *(v0 + 240);
    v17 = *(v0 + 208);
    v96 = *(v0 + 216);
    v18 = *(v0 + 200);
    v140 = *(v0 + 192);
    v100 = *(v0 + 184);
    v102 = *(v0 + 176);
    v112 = *(v0 + 160);
    v104 = *(v0 + 152);
    v130 = *(v0 + 144);
    v118 = *(v0 + 128);
    v120 = *(v0 + 112);
    v123 = *(v0 + 432);
    SFAirDrop.NearbySharingInteraction.id.getter();
    v94 = *(v14 + 16);
    v94(v13, v93, v15);
    sub_1002D7388(v6, v126, type metadata accessor for SDNearFieldTap);
    sub_1002D7388(v95, v16, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v97(v18, v17, v130);
    v97(v140, v96, v130);
    v94(v98, v13, v15);
    sub_1002D7388(v126, v103, type metadata accessor for SDNearFieldTap);
    sub_1002D7388(v16, v101, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v97(v100, v18, v130);
    v97(v102, v140, v130);
    v19 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v20 = (v108 + *(v110 + 80) + v19) & ~*(v110 + 80);
    v21 = (v116 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (*(v106 + 80) + v21 + 8) & ~*(v106 + 80);
    v23 = *(v104 + 80);
    v24 = (v114 + v23 + v22) & ~v23;
    v25 = (v112 + v23 + v24) & ~v23;
    v26 = swift_allocObject();
    (*(v99 + 32))(v26 + v19, v143, v15);
    sub_10000CA10(v126, v26 + v20, type metadata accessor for SDNearFieldTap);
    *(v26 + v21) = v118;
    sub_10000CA10(v134, v26 + v22, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v27 = *(v104 + 32);
    v27(v26 + v24, v18, v130);
    v27(v26 + v25, v140, v130);
    if (*(v120 + *(v123 + 64)))
    {
      v28 = *(v0 + 288);
      v121 = *(v0 + 456);
      v124 = *(v0 + 280);
      v29 = *(v0 + 256);
      v131 = *(v0 + 208);
      v135 = *(v0 + 304);
      v31 = *(v0 + 176);
      v30 = *(v0 + 184);
      v32 = *(v0 + 144);
      v127 = *(v0 + 112);
      v33 = *(*(v0 + 152) + 8);
      v34 = *(v0 + 128);
      v33(v31, v32);
      v144 = v33;
      v33(v30, v32);
      sub_1002D6414(v29, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      sub_1002D6414(v121, type metadata accessor for SDNearFieldTap);
      v35 = v135;
      v136 = *(v28 + 8);
      v136(v35, v124);
      v36 = *&v34[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager];
      v37 = v34;

      sub_1004AC2D4(v127, v131, v36, v37, sub_1002D73F0, v26);
    }

    else
    {
      v50 = *(v0 + 504);
      v51 = *(v0 + 488);
      v52 = *(v0 + 128);
      (*(v0 + 496))(*(v0 + 168), *(v0 + 208), *(v0 + 144));
      v53 = v52;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 168);
      v59 = *(v0 + 144);
      v58 = *(v0 + 152);
      if (v56)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v147 = v61;
        *v60 = 136315138;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        v144 = *(v58 + 8);
        v144(v57, v59);
        v65 = sub_10000C4E4(v62, v64, &v147);

        *(v60 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v54, v55, "SDAirDropNearFieldService: Single band not required for Nearby Sharing Interaction:%s", v60, 0xCu);
        sub_10000C60C(v61);
      }

      else
      {

        v144 = *(v58 + 8);
        v144(v57, v59);
      }

      v66 = *(v0 + 456);
      v67 = *(v0 + 304);
      v68 = *(v0 + 288);
      v138 = *(v0 + 280);
      v69 = *(v0 + 256);
      v71 = *(v0 + 176);
      v70 = *(v0 + 184);
      v72 = *(v0 + 144);
      sub_1002BF3B8(v67, v66, *(v0 + 128), v69, v70, v71);

      v144(v71, v72);
      v144(v70, v72);
      sub_1002D6414(v69, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      sub_1002D6414(v66, type metadata accessor for SDNearFieldTap);
      v73 = v138;
      v136 = *(v68 + 8);
      v136(v67, v73);
    }

    v74 = *(v0 + 416);
    v75 = *(v0 + 408);
    v128 = v75;
    v132 = *(v0 + 424);
    v76 = *(v0 + 320);
    v78 = *(v0 + 272);
    v77 = *(v0 + 280);
    v79 = *(v0 + 216);
    v80 = *(v0 + 144);
    v144(*(v0 + 208), v80);
    v144(v79, v80);
    sub_1002D6414(v78, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v136(v76, v77);
    (*(v74 + 8))(v132, v128);
    goto LABEL_18;
  }

  if (v8 != v8 >> 32)
  {
    goto LABEL_7;
  }

LABEL_10:
  v38 = *(v0 + 488);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "SDAirDropNearFieldService: Tap doesn't contain any public key data, this isn't supported", v41, 2u);
  }

  v42 = *(v0 + 416);
  v141 = *(v0 + 408);
  v145 = *(v0 + 424);
  v137 = *(v0 + 320);
  v44 = *(v0 + 280);
  v43 = *(v0 + 288);
  v45 = *(v0 + 272);
  v46 = *(v0 + 216);
  v48 = *(v0 + 144);
  v47 = *(v0 + 152);
  v49 = *(v0 + 128);

  sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
  (*(v47 + 8))(v46, v48);
  sub_1002D6414(v45, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  (*(v43 + 8))(v137, v44);
  (*(v42 + 8))(v145, v141);
LABEL_18:
  v82 = *(v0 + 464);
  v81 = *(v0 + 472);
  v83 = *(v0 + 456);
  v84 = *(v0 + 424);
  v85 = *(v0 + 392);
  v86 = *(v0 + 400);
  v87 = *(v0 + 384);
  v89 = *(v0 + 352);
  v88 = *(v0 + 360);
  v90 = *(v0 + 344);
  v105 = *(v0 + 320);
  v107 = *(v0 + 312);
  v109 = *(v0 + 304);
  v111 = *(v0 + 272);
  v113 = *(v0 + 264);
  v115 = *(v0 + 256);
  v117 = *(v0 + 224);
  v119 = *(v0 + 216);
  v122 = *(v0 + 208);
  v125 = *(v0 + 200);
  v129 = *(v0 + 192);
  v133 = *(v0 + 184);
  v139 = *(v0 + 176);
  v142 = *(v0 + 168);
  v146 = *(v0 + 136);

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_1002BEF14(uint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100975E80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "SDAirDropNearFieldService: near field interruption", v16, 2u);
  }

  v17 = sub_1002B4114(v34);
  v19 = v18;
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    (v17)(v34, 0);
    v21 = v32;
  }

  else
  {
    v21 = v32;
    (*(v2 + 16))(v12, v32, v1);
    (*(v9 + 104))(v12, enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:), v8);
    SFAirDrop.NearbySharingInteraction.state.setter();
    (v17)(v34, 0);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v33;
  (*(v2 + 16))(v33, v21, v1);
  v25 = qword_1009735E0;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static AirDropActor.shared;
  v27 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
  v28 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v26;
  *(v29 + 3) = v27;
  *(v29 + 4) = v23;
  (*(v2 + 32))(&v29[v28], v24, v1);

  sub_1002B3098(0, 0, v7, &unk_1007F93D0, v29);
}

void sub_1002BF3B8(uint64_t a1, uint64_t a2, objc_class *a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v126 = a6;
  v122 = a5;
  v128 = a4;
  v135 = a2;
  v8 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v120 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v121 = &v114 - v13;
  __chkstk_darwin(v12);
  v130 = &v114 - v14;
  v125 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v124 = *(v125 - 8);
  v15 = *(v124 + 64);
  __chkstk_darwin(v125);
  v119 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v127 = &v114 - v19;
  v134 = type metadata accessor for SDNearFieldTap();
  v20 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v123 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v114 - v28;
  v30 = v23[13];
  v129 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:);
  v132 = v30;
  v30(&v114 - v28);
  sub_100005358(&qword_100976260, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
  v133 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v136[0] == v139 && v136[1] == v140)
  {
    v31 = 1;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v131 = v23[1];
  v131(v29, v22);

  if (v31)
  {
    v32 = (v135 + *(v134 + 40));
    v33 = *v32;
    v34 = v32[1];
    v35._object = 0x800000010078A550;
    v35._countAndFlagsBits = 0xD000000000000015;
    v36 = String.hasPrefix(_:)(v35);
    v37 = *(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (!v37)
    {
      return;
    }

    v38 = [v37 currentApplicationLabel];
    if (!v38)
    {
      return;
    }

    LODWORD(v117) = v36;
    isa = a3;
    v39 = v38;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v40._object = 0x800000010078A550;
    v40._countAndFlagsBits = 0xD000000000000015;
    LOBYTE(v39) = String.hasPrefix(_:)(v40);

    if ((v39 & 1) != 0 && (v41._object = 0x800000010078A550, v41._countAndFlagsBits = 0xD000000000000015, String.hasPrefix(_:)(v41)))
    {
      a3 = isa;
      if ((*(v135 + *(v134 + 44)) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      a3 = isa;
      if ((v117 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_100975E80);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "SDAirDropNearFieldService: start DDUI server", v45, 2u);
    }

    v46 = *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 24);
    v47 = *(v128 + v46);
    if (!v47)
    {
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = "No identity to start server";
LABEL_57:
        _os_log_impl(&_mh_execute_header, v56, v57, v59, v58, 2u);
      }

LABEL_58:

      sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
      return;
    }

    v48 = *(v128 + v46);
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v50 = v134;
    v49 = v135;
    v51 = (v135 + *(v134 + 52));
    v52 = *v51;
    v53 = v51[1];
    v117 = Data._bridgeToObjectiveC()().super.isa;
    v54 = (v49 + *(v50 + 24));
    if (v54[1])
    {
      v55 = *v54;
      v116 = String._bridgeToObjectiveC()();
    }

    else
    {
      v116 = 0;
    }

    v60 = (v49 + *(v50 + 32));
    if (v60[1])
    {
      v61 = *v60;
      v115 = String._bridgeToObjectiveC()();
    }

    else
    {
      v115 = 0;
    }

    v62 = (v135 + *(v134 + 28));
    if (v62[1])
    {
      v63 = *v62;
      v64 = String._bridgeToObjectiveC()();
    }

    else
    {
      v64 = 0;
    }

    v65 = isa;
    v66 = v117;
    v67 = v116;
    v68 = v115;
    v114 = v64;
    sub_1001BC200(v47, isa, v117, v116, v115, v64);
    swift_unknownObjectRelease();
  }

LABEL_30:
  v69 = v135;
  v70 = (v135 + *(v134 + 40));
  if (*v70 == 0xD00000000000001BLL && 0x800000010078A530 == v70[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v71 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
    swift_beginAccess();
    sub_1002A9938(a3 + v71, v136);
    v72 = v137;
    v73 = v138;
    sub_10002CDC0(v136, v137);
    (*(v73 + 80))(v69, v72, v73);
    sub_10000C60C(v136);
  }

  v132(v27, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:), v22);
  sub_100005358(&qword_100976268, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  v131(v27, v22);
  v75 = v134;
  if ((v74 & 1) != 0 && *(v135 + *(v134 + 44)) != 1)
  {
    goto LABEL_46;
  }

  v132(v27, v129, v22);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v131(v27, v22);
  if (v76)
  {
    goto LABEL_46;
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  v78 = sub_10000C4AC(v77, qword_100975E80);
  v79 = v123;
  sub_1002D7388(v135, v123, type metadata accessor for SDNearFieldTap);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v128;
  if (v82)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v132 = v78;
    v86 = v85;
    v136[0] = v85;
    *v84 = 136315138;
    v87 = v75[15];
    type metadata accessor for UUID();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID);
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v89;
    sub_1002D6414(v79, type metadata accessor for SDNearFieldTap);
    v83 = v128;
    v91 = sub_10000C4E4(v88, v90, v136);

    *(v84 + 4) = v91;
    _os_log_impl(&_mh_execute_header, v80, v81, "SDAirDropNearFieldService: begin listening for incoming AirDrop connection for transaction:%s", v84, 0xCu);
    sub_10000C60C(v86);
  }

  else
  {

    sub_1002D6414(v79, type metadata accessor for SDNearFieldTap);
  }

  v92 = *(v83 + *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 24));
  if (!v92)
  {
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "No identity";
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v93 = v75[15];
  v94 = type metadata accessor for UUID();
  v95 = *(v94 - 8);
  v96 = v135;
  v97 = v127;
  (*(v95 + 16))(v127, v135 + v93, v94);
  (*(v95 + 56))(v97, 0, 1, v94);
  v98 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_10000C788(v97, a3 + v98, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v100 = *(*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDAirDropService_receiveService) + 32);
    sub_10035ED60(v96 + v93, v83, v92, *(v96 + v75[13]), *(v96 + v75[13] + 8));
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_46:
  v101 = [objc_opt_self() sharedMonitor];
  if (v101)
  {
    v102 = v101;
    v103 = [v101 deviceKeyBagLocked];

    v104 = v130;
    if (v103 && ((*(v135 + v75[12]) & 1) != 0 || *(v135 + v75[6] + 8)))
    {
      v105 = type metadata accessor for UUID();
      v106 = *(v105 - 8);
      v107 = v127;
      (*(v106 + 16))(v127, v122, v105);
      (*(v106 + 56))(v107, 0, 1, v105);
      sub_1002B4888(v107);
      sub_100005508(v107, &unk_100976120, &qword_1007F9260);
    }

    else
    {
      v108 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
      swift_beginAccess();
      sub_10000FF90(a3 + v108, v104, &unk_100975F60, &unk_1007F91B0);
      v109 = v124;
      v110 = v125;
      if ((*(v124 + 48))(v104, 1, v125) == 1)
      {
        sub_100005508(v104, &unk_100975F60, &unk_1007F91B0);
      }

      else
      {
        v111 = v119;
        (*(v109 + 32))(v119, v104, v110);
        v112 = v121;
        (*(v109 + 16))(v121, v111, v110);
        v134 = *(v109 + 56);
        (v134)(v112, 0, 1, v110);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10000FF90(v112, v120, &unk_100975F60, &unk_1007F91B0);
        v113 = a3;
        static Published.subscript.setter();
        sub_100005508(v112, &unk_100975F60, &unk_1007F91B0);
        (*(v109 + 8))(v111, v110);
        (v134)(v112, 1, 1, v110);
        swift_beginAccess();
        sub_10000C788(v112, a3 + v108, &unk_100975F60, &unk_1007F91B0);
        swift_endAccess();
      }

      sub_1002B5838(v135, v126, v133);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C031C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    return sub_1002C035C("SDAirDropNearFieldService: Failed to enforce single band mode");
  }

  else
  {
    return a3();
  }
}

uint64_t sub_1002C035C(const char *a1)
{
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v22 - v13);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100975E80);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, a1, v18, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_100005508(v10, &unk_100975F60, &unk_1007F91B0);
    v19 = 1;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_100005508(v10, &unk_100975F60, &unk_1007F91B0);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v3 + 8))(v6, v2);
    v19 = 0;
  }

  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 56))(v14, v19, 1, v20);
  sub_1002B4888(v14);
  return sub_100005508(v14, &unk_100976120, &qword_1007F9260);
}

uint64_t sub_1002C06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = *(*(sub_10028088C(&unk_100975F60, &unk_1007F91B0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v5[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C08D4, v17, 0);
}

uint64_t sub_1002C08D4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[14];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((*(v5 + 48))(v3, 1, v4))
    {
      sub_100005508(v0[16], &unk_100975F60, &unk_1007F91B0);
      v6 = 1;
    }

    else
    {
      v7 = v0[16];
      v9 = v0[14];
      v8 = v0[15];
      v10 = v0[13];
      (*(v9 + 16))(v8, v7, v10);
      sub_100005508(v7, &unk_100975F60, &unk_1007F91B0);
      SFAirDrop.NearbySharingInteraction.id.getter();
      (*(v9 + 8))(v8, v10);
      v6 = 0;
    }

    v11 = v0[17];
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v15 = v0[6];
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v11, v6, 1, v16);
    (*(v13 + 16))(v12, v15, v14);
    if ((*(v13 + 88))(v12, v14) == enum case for SFAirDrop.NearbySharingInteraction.FailureType.unsupported(_:))
    {
      v17 = v0[9];
      static Clock<>.continuous.getter();
      v18 = swift_task_alloc();
      v0[20] = v18;
      *v18 = v0;
      v18[1] = sub_1002C0C28;
      v19 = v0[9];

      return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
    v21 = v0[19];
    v22 = v0[17];
    sub_1002B4888(v22);

    sub_100005508(v22, &unk_100976120, &qword_1007F9260);
  }

  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[15];
  v26 = v0[12];
  v27 = v0[9];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002C0C28()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  v5 = v2[18];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1002D8BA4;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = sub_1002C0DD4;
  }

  return _swift_task_switch(v9, v5, 0);
}

uint64_t sub_1002C0DD4()
{
  v1 = v0[19];
  v2 = v0[17];
  sub_1002B4888(v2);

  sub_100005508(v2, &unk_100976120, &qword_1007F9260);
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002C0E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_10028088C(&qword_100976278, &qword_1007F93E8) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v6[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C0F70, v8, 0);
}

uint64_t sub_1002C0F70()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropClient);
  v2 = async function pointer to SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:)[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1002C1040;
  v4 = v0[5];
  v5 = v0[3];
  v8 = v0[4];

  return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:)(v4, _swiftEmptyArrayStorage, v5, 0, 0xF000000000000000, 0, 0, 1);
}

uint64_t sub_1002C1040()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_1002C1240;
  }

  else
  {
    v6 = sub_1002C1178;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C1178()
{
  v1 = *(v0 + 40);
  v2 = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_100005508(v1, &qword_100976278, &qword_1007F93E8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002C1240()
{
  v1 = *(v0 + 40);
  v2 = sub_10028088C(&unk_100976280, &qword_1007F93F0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100005508(v1, &qword_100976278, &qword_1007F93E8);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1002C1308(uint64_t a1, void *a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  if (a2)
  {
    v7 = type metadata accessor for TaskPriority();
    v8 = *(*(v7 - 8) + 56);
    v9 = a2;
    v8(v6, 1, 1, v7);
    v10 = qword_1009735E0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = static AirDropActor.shared;
    v13 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v13;
    v14[4] = v11;

    sub_1002B3098(0, 0, v6, &unk_1007F9628, v14);
  }
}

void sub_1002C14AC()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = qword_1009735E0;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = static AirDropActor.shared;
    v10 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v8;

    sub_1002B3098(0, 0, v3, &unk_1007F9618, v11);
  }
}

uint64_t sub_1002C1668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1704, v5, 0);
}

uint64_t sub_1002C1704()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975E80);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus] isAirDropAllowed];

    _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService airdrop allowed changed:%{BOOL}d - restarting", v7, 8u);

    v8 = *(v0 + 16);
  }

  else
  {

    v4 = *(v0 + 16);
  }

  sub_1002BA2B0();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002C1884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1920, v5, 0);
}

uint64_t sub_1002C1920()
{
  if ([*(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_deviceStatus) wirelessEnabled])
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100975E80);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService wifi enabled, attempting to start", v4, 2u);
    }

    v5 = *(v0 + 16);

    sub_1000286E8(0, 1, 0, 0);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100975E80);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "SDAirDropNearFieldService wifi disabled, stopping", v9, 2u);
    }

    v10 = *(v0 + 16);

    sub_1002B9D54();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002C1B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1BDC, v5, 0);
}

uint64_t sub_1002C1BDC()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService Buddy finished, attempting to start", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_1000286E8(0, 1, 0, 0);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C1DC4, v5, 0);
}

uint64_t sub_1002C1DC4()
{
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v1 = static NSUserDefaults.airdrop.getter();
  v2 = SFAirDropUserDefaults.nearFieldSharingEnabled.getter();

  if (v2)
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100975E80);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService Nearby sharing enabled, attempting to start", v6, 2u);
    }

    v7 = *(v0 + 16);

    sub_1000286E8(0, 1, 0, 0);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100975E80);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "SDAirDropNearFieldService Nearby sharing disabled, stopping", v11, 2u);
    }

    v12 = *(v0 + 16);

    sub_1002B9D54();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C1FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C2074, v5, 0);
}

uint64_t sub_1002C2074()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService Proximity Apple ID Sign In progress, stopping", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_1002B9D54();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C21B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C224C, v5, 0);
}

uint64_t sub_1002C224C()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975E80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SDAirDropNearFieldService Proximity Apple ID Sign In Finished, starting", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_1000286E8(0, 1, 0, 0);
  v6 = *(v0 + 8);

  return v6();
}

void sub_1002C23C8()
{
  sub_1002C2668(319, &qword_100975F48, type metadata accessor for SDNearFieldTap);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1002C2668(319, &qword_100975F50, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1002CD9EC(319, &qword_100975F58, &unk_100975F60, &unk_1007F91B0, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1002C2668(319, &qword_100986120, &type metadata accessor for SFAirDrop.NearbySharingInteraction);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1002C2668(319, &qword_100975F70, &type metadata accessor for UUID);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1002C2668(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002C26BC(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1002C2788(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v43 - v5);
  v7 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  if (IsAppleInternalBuild())
  {
    v48 = v1;
    v49 = v6;
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v47 = v11;
    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100975E80);
    v23 = *(v15 + 16);
    v46 = a1;
    v23(v21, a1, v14);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v26 = 136315138;
      v23(v19, v21, v14);
      v27 = String.init<A>(describing:)();
      v45 = v23;
      v29 = v28;
      (*(v15 + 8))(v21, v14);
      v30 = sub_10000C4E4(v27, v29, &v50);
      v23 = v45;

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "SDAirDropNearFieldService: updating nearby sharing interaction with simulated state: %s", v26, 0xCu);
      sub_10000C60C(v44);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    v23(v13, v46, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000FF90(v13, v47, &unk_100975F60, &unk_1007F91B0);
    v35 = v48;
    static Published.subscript.setter();
    sub_100005508(v13, &unk_100975F60, &unk_1007F91B0);
    v36 = type metadata accessor for TaskPriority();
    v37 = v49;
    (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
    v38 = qword_1009735E0;
    v39 = v35;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = static AirDropActor.shared;
    v41 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor);
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v41;
    v42[4] = v39;

    sub_1002B2DEC(0, 0, v37, &unk_1007F94C8, v42);
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100975E80);
    v49 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v49, v32, "Ignoring simulated nearby sharing interaction since we are not on an internal build", v33, 2u);
    }

    v34 = v49;
  }
}

uint64_t sub_1002C2D84(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_1002C2E20(a1);
}

uint64_t sub_1002C2E20(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100976130, &qword_1007F92B0);
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v2[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C2F84, v10, 0);
}