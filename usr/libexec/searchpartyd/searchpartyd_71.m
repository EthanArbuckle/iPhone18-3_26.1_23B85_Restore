uint64_t sub_10076CBDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000010;
    v5 = 0x8000000101348340;
    if (a1 != 2)
    {
      v4 = 0x656475746974616CLL;
      v5 = 0xE800000000000000;
    }

    v8 = 0xD000000000000010;
    v9 = 0x8000000101347C50;
    if (a1)
    {
      v8 = 0x696669746E656469;
      v9 = 0xEA00000000007265;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
    v6 = 0x6E6F697461636F6CLL;
    v7 = 0xEE00656372756F53;
    if (a1 != 7)
    {
      v6 = 0x657461446E616373;
      v7 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x64757469676E6F6CLL;
    v9 = 0xE900000000000065;
    if (a1 != 4)
    {
      v8 = 0xD000000000000012;
      v9 = 0x8000000101347FC0;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x656475746974616CLL)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v13 = "associatedBeacon";
    }

    else
    {
      if (a2)
      {
        goto LABEL_41;
      }

      v13 = "cloudKitMetadata";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v11 != 0xD000000000000010)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v11 != 0x64757469676E6F6CLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x8000000101347FC0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v2 = 0xE900000000000070;
    if (v11 != 0x6D617473656D6974)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (a2 == 7)
  {
    v2 = 0xEE00656372756F53;
    if (v11 != 0x6E6F697461636F6CLL)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v2 = 0xE800000000000000;
  v3 = 0x657461446E616373;
LABEL_41:
  if (v11 != v3)
  {
LABEL_45:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_10076CEC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064656C62616ELL;
  v3 = 0x45676E69646E6966;
  v4 = a1;
  if (a1 > 3u)
  {
    v10 = 0x53746E756F636361;
    v11 = 0xEF79746972756365;
    if (a1 != 6)
    {
      v10 = 0xD000000000000015;
      v11 = 0x8000000101349D10;
    }

    v12 = 0x7461745370696D66;
    v13 = 0xE900000000000065;
    if (a1 != 4)
    {
      v12 = 0xD000000000000012;
      v13 = 0x8000000101349CE0;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v4 <= 5)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v5 = 0x4565636976726573;
    if (a1 == 2)
    {
      v5 = 0x45676E69646E6966;
    }

    v6 = 0x8000000101349C70;
    v7 = 0xD000000000000017;
    if (a1)
    {
      v7 = 0xD00000000000001BLL;
      v6 = 0x8000000101349C90;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v4 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEE0064656C62616ELL;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF79746972756365;
        if (v8 != 0x53746E756F636361)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x8000000101349D10;
        if (v8 != 0xD000000000000015)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v2 = 0xE900000000000065;
      if (v8 != 0x7461745370696D66)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v3 = 0xD000000000000012;
    v2 = 0x8000000101349CE0;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000101349C90;
        v14 = 9;
      }

      else
      {
        v2 = 0x8000000101349C70;
        v14 = 5;
      }

      if (v8 != (v14 | 0xD000000000000012))
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (a2 != 2)
    {
      if (v8 != 0x4565636976726573)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }
  }

  if (v8 != v3)
  {
LABEL_44:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_10076D178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6F4C657275636573;
  v5 = 0xEF736E6F69746163;
  v6 = 0xE300000000000000;
  v7 = 6448503;
  if (a1 != 4)
  {
    v7 = 0x646574726F706D69;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1936094325;
  if (a1 != 1)
  {
    v9 = 0x63616542666C6573;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1835365481;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEF736E6F69746163;
      if (v10 != 0x6F4C657275636573)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6448503)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x646574726F706D69)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936094325)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x63616542666C6573)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1835365481)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_10076D358(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEE00646572696170;
  v5 = 0x646572696170;
  if (a1 == 2)
  {
    v5 = 0x6E55794D646E6966;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x8000000101347C10;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6E55794D646E6966;
    }

    else
    {
      v11 = 0x646572696170;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00646572696170;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x8000000101347C10;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_10076D4B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F687069;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1684107369;
    }

    else
    {
      v5 = 0x656E6F687069;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 1685024873;
    v4 = 0xE400000000000000;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x6863746177;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6513005;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE400000000000000;
    v8 = 1684107369;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 1685024873;
    v6 = 0xE400000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x6863746177;
    if (a2 != 3)
    {
      v8 = 6513005;
      v7 = 0xE300000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_10076D5F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 3158066;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xE300000000000000;
    if (a1 == 2)
    {
      v5 = 3223602;
    }

    else
    {
      v5 = 3354674;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 3158066;
    }

    else
    {
      v5 = 12589;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 3223602;
  if (a2 != 2)
  {
    v8 = 3354674;
  }

  if (a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v2 = 12589;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
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

uint64_t sub_10076D6E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696772616843;
    }

    else
    {
      v4 = 0x6772616843746F4ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000676E69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656772616843;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x676E696772616843;
  if (a2 != 2)
  {
    v7 = 0x6772616843746F4ELL;
    v6 = 0xEB00000000676E69;
  }

  if (a2)
  {
    v2 = 0x64656772616843;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10076D83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65746144646E65;
    }

    else
    {
      v5 = 0x7461447472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE300000000000000;
    v5 = 7562345;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7261646E6F636573;
    }

    else
    {
      v5 = 0x6F43686372616573;
    }

    if (v4 == 3)
    {
      v6 = 0xEC00000073644979;
    }

    else
    {
      v6 = 0xED0000747865746ELL;
    }
  }

  v7 = 0xE300000000000000;
  v8 = 7562345;
  v9 = 0x7261646E6F636573;
  v10 = 0xEC00000073644979;
  if (a2 != 3)
  {
    v9 = 0x6F43686372616573;
    v10 = 0xED0000747865746ELL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x65746144646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
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

uint64_t sub_10076D9D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x65776F5068676968;
    v13 = 0xE900000000000072;
    if (a1 != 2)
    {
      v12 = 0x4F7265776F506E6FLL;
      v13 = 0xED0000694669576ELL;
    }

    v14 = 0x6F506D756964656DLL;
    if (a1)
    {
      v11 = 0xEB00000000726577;
    }

    else
    {
      v14 = 0x7265776F50776F6CLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x7265747461426E6FLL;
    v4 = 0xEF6C6C65436E4F79;
    v5 = 0x6F696E61706D6F63;
    v6 = 0xEF79627261654E6ELL;
    if (a1 != 7)
    {
      v5 = 0x6857796669746F6ELL;
      v6 = 0xEF646E756F466E65;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x4F7265776F506E6FLL;
    v8 = 0xED00006C6C65436ELL;
    if (a1 != 4)
    {
      v7 = 0x7265747461426E6FLL;
      v8 = 0xEF694669576E4F79;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xEB00000000726577;
        if (v9 != 0x6F506D756964656DLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x7265776F50776F6CLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v15 = 0xE900000000000072;
      if (v9 != 0x65776F5068676968)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x694669576ELL;
LABEL_45:
    v15 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v9 != 0x4F7265776F506E6FLL)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xEF6C6C65436E4F79;
      if (v9 != 0x7265747461426E6FLL)
      {
        goto LABEL_52;
      }
    }

    else if (a2 == 7)
    {
      v15 = 0xEF79627261654E6ELL;
      if (v9 != 0x6F696E61706D6F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEF646E756F466E65;
      if (v9 != 0x6857796669746F6ELL)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6C6C65436ELL;
    goto LABEL_45;
  }

  v15 = 0xEF694669576E4F79;
  if (v9 != 0x7265747461426E6FLL)
  {
LABEL_52:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_10076DD34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x614D6E6F63616562;
  if (a1 == 5)
  {
    v5 = 0x657264644163616DLL;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  v6 = 0x8000000101347C70;
  v7 = 0xD000000000000016;
  if (a1 != 3)
  {
    v7 = 1701667182;
    v6 = 0xE400000000000000;
  }

  if (a1 > 4u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x696669746E656469;
  if (a1 == 1)
  {
    v9 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0xEA00000000007265;
  }

  if (a1)
  {
    v8 = v9;
  }

  else
  {
    v3 = 0x8000000101347C50;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6E6F6973726576)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = 0xEA00000000007265;
        if (v10 != 0x696669746E656469)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0x8000000101347C50;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000007373;
      if (v10 != 0x657264644163616DLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE900000000000070;
      if (v10 != 0x614D6E6F63616562)
      {
LABEL_42:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x8000000101347C70;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_10076DF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "instructionsToDisableItems";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD00000000000002ALL;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (a1 == 5)
  {
    v6 = "isementDurationInSecs";
  }

  else
  {
    v6 = "isementDurationDecayFactor";
  }

  v7 = 0xD000000000000025;
  if (a1 == 3)
  {
    v7 = 0xD000000000000016;
    v8 = "ementIntervalInSecs";
  }

  else
  {
    v8 = "slowRollDurationInSecs";
  }

  if (v4 <= 4)
  {
    v9 = v8;
  }

  else
  {
    v7 = v5;
    v9 = v6;
  }

  v10 = 0xD000000000000023;
  if (v4 == 1)
  {
    v10 = 0xD000000000000016;
    v11 = "initialNoBeaconPeriodInSecs";
  }

  else
  {
    v11 = "fastRollDurationInSecs";
  }

  if (!v4)
  {
    v10 = 0xD00000000000001BLL;
    v11 = "instructionsToDisableItems";
  }

  if (v4 <= 2)
  {
    v12 = v11;
  }

  else
  {
    v10 = v7;
    v12 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "initialNoBeaconPeriodInSecs";
      }

      else
      {
        v2 = 0xD000000000000023;
        v3 = "fastRollDurationInSecs";
      }
    }

    else
    {
      v2 = 0xD00000000000001BLL;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000002ALL;
      v3 = "isementDurationInSecs";
    }

    else
    {
      v2 = 0xD000000000000020;
      v3 = "isementDurationDecayFactor";
    }
  }

  else if (a2 == 3)
  {
    v3 = "ementIntervalInSecs";
  }

  else
  {
    v2 = 0xD000000000000025;
    v3 = "slowRollDurationInSecs";
  }

  if (v10 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10076E110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x666E497865646E69;
      v4 = 0xE90000000000006FLL;
    }

    else
    {
      v3 = 0x6D617473656D6974;
      v4 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1701869940;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x8000000101347590;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0x666E497865646E69;
    }

    else
    {
      v7 = 0x6D617473656D6974;
    }

    if (a2 == 2)
    {
      v6 = 0xE90000000000006FLL;
    }

    else
    {
      v6 = 0xE900000000000070;
    }

    if (v3 != v7)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 1701869940;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x8000000101347590;
    }

    if (v3 != v5)
    {
      goto LABEL_29;
    }
  }

  if (v4 != v6)
  {
LABEL_29:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

  v8 = 1;
LABEL_30:

  return v8 & 1;
}

uint64_t sub_10076E260(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000746E656D65;
  v3 = 0x7369747265766461;
  v4 = a1;
  v5 = 0x8000000101347FC0;
  v6 = 0xD000000000000012;
  if (a1 != 6)
  {
    v6 = 0x737574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656475746974616CLL;
  if (a1 != 4)
  {
    v8 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461446174656DLL;
  if (a1 != 2)
  {
    v10 = 0xD000000000000010;
    v9 = 0x8000000101347FA0;
  }

  v11 = 0x6D617473656D6974;
  v12 = 0xE900000000000070;
  if (!a1)
  {
    v11 = 0x7369747265766461;
    v12 = 0xED0000746E656D65;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000101347FC0;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x737574617473)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x656475746974616CLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0xE900000000000065;
      if (v13 != 0x64757469676E6F6CLL)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x617461446174656DLL)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000101347FA0;
    }

    else if (a2)
    {
      v2 = 0xE900000000000070;
      if (v13 != 0x6D617473656D6974)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_10076E4D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747265434143;
  v3 = a1;
  v4 = 0xE600000000000000;
  if (a1 <= 3u)
  {
    v12 = 0x6843657571696E55;
    v13 = 0xEC00000044497069;
    if (a1 != 2)
    {
      v12 = 0x6E496F545344494FLL;
      v13 = 0xED00006564756C63;
    }

    v14 = 0x444970696843;
    if (!a1)
    {
      v14 = 0x747265434143;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x6275504B4953;
    v6 = 0xD000000000000012;
    v7 = 0x8000000101347F60;
    if (a1 != 7)
    {
      v6 = 0x6574744174726373;
      v7 = 0xEF6E6F6974617473;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x754E6C6169726553;
    v9 = 0xEC0000007265626DLL;
    if (a1 != 4)
    {
      v8 = 0x79746964696C6156;
      v9 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE600000000000000;
        if (v10 != 0x6275504B4953)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (a2 == 7)
      {
        v15 = 0x8000000101347F60;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0x6574744174726373;
      v15 = 0xEF6E6F6974617473;
      goto LABEL_45;
    }

    if (a2 != 4)
    {
      v15 = 0xE800000000000000;
      if (v10 != 0x79746964696C6156)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = 0x754E6C6169726553;
    v17 = 1919246957;
LABEL_38:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v16)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v15 = 0xED00006564756C63;
      if (v10 != 0x6E496F545344494FLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = 0x6843657571696E55;
    v17 = 1145663593;
    goto LABEL_38;
  }

  v15 = 0xE600000000000000;
  if (a2)
  {
    if (v10 != 0x444970696843)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v18 = 1;
LABEL_50:

  return v18 & 1;
}

uint64_t sub_10076E7B8()
{
  String.hash(into:)();
}

uint64_t sub_10076E8F0()
{
  String.hash(into:)();
}

uint64_t sub_10076EA6C()
{
  String.hash(into:)();
}

uint64_t sub_10076EB90()
{
  String.hash(into:)();
}

uint64_t sub_10076ED0C()
{
  String.hash(into:)();
}

uint64_t sub_10076EE68()
{
  String.hash(into:)();
}

uint64_t sub_10076F00C()
{
  String.hash(into:)();
}

uint64_t sub_10076F154()
{
  String.hash(into:)();
}

Swift::Int sub_10076F2C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F3CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F500()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F64C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F790()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F8C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FA38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FB34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FC6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FD74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10076FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __DataStorage();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v35 = 0x2000000000;
  v36 = __DataStorage.init(length:)();
  sub_1007765FC(&v35, 0);
  v7 = v35;
  v8 = HIDWORD(v35);
  if (__OFSUB__(HIDWORD(v35), v35))
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = v36;
  if (HIDWORD(v35) - v35 != 32)
  {
    goto LABEL_8;
  }

  v10 = *(v4 + 48);
  v11 = *(v4 + 52);
  swift_allocObject();
  v12 = __DataStorage.init(length:)();
  v35 = 0x2000000000;
  v36 = v12;
  sub_1007765FC(&v35, 0);
  if (__OFSUB__(HIDWORD(v35), v35))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v35) - v35 == 32)
  {
    v34 = v36 | 0x4000000000000000;
    v13 = v35 | (HIDWORD(v35) << 32);
    v14 = v9 | 0x4000000000000000;
    v15 = v7 | (v8 << 32);
    v16 = type metadata accessor for TimeBasedKey();
    v17 = *(v16 + 20);
    v18 = type metadata accessor for DateInterval();
    (*(*(v18 - 8) + 16))(a2, a1 + v17, v18);
    v19 = (a1 + *(v16 + 24));
    v20 = v19[4];
    v21 = v19[5];
    v22 = type metadata accessor for CryptoKeys();
    v23 = (a2 + v22[5]);
    *v23 = v20;
    v23[1] = v21;
    v24 = v19[2];
    v25 = v19[3];
    v26 = (a2 + v22[6]);
    *v26 = v24;
    v26[1] = v25;
    sub_10002E98C(v20, v21);
    sub_100017D5C(v24, v25);
    v27 = PublicKey.advertisement.getter(v24, v25);
    v29 = v28;
    result = sub_100038BC4(a1, type metadata accessor for TimeBasedKey);
    v31 = (a2 + v22[7]);
    *v31 = v27;
    v31[1] = v29;
    v32 = (a2 + v22[8]);
    *v32 = v15;
    v32[1] = v14;
    v33 = (a2 + v22[9]);
    *v33 = v13;
    v33[1] = v34;
    return result;
  }

LABEL_8:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CryptoKeys.privateKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys() + 20);
  v2 = *v1;
  sub_10002E98C(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for CryptoKeys()
{
  result = qword_1016A90B0;
  if (!qword_1016A90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptoKeys.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys() + 24);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.advertisement.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys() + 28);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.sharedSecretKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys() + 32);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.intermediateKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys() + 36);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.hash(into:)()
{
  v1 = v0;
  type metadata accessor for DateInterval();
  sub_1000211C0(&qword_1016A9030, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for CryptoKeys();
  v3 = (v0 + v2[5]);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *v3;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v5, v4);
    Data.hash(into:)();
    sub_100006654(v5, v4);
  }

  v6 = (v0 + v2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(*v6, v8);
  Data.hash(into:)();
  sub_100016590(v7, v8);
  v9 = (v1 + v2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_100017D5C(*v9, v11);
  Data.hash(into:)();
  sub_100016590(v10, v11);
  v12 = (v1 + v2[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v12, v14);
  Data.hash(into:)();
  sub_100016590(v13, v14);
  v15 = (v1 + v2[9]);
  v16 = *v15;
  v17 = v15[1];
  sub_100017D5C(*v15, v17);
  Data.hash(into:)();

  return sub_100016590(v16, v17);
}

Swift::Int CryptoKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  CryptoKeys.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007704F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 19779;
    v7 = 20035;
    if (a1 != 10)
    {
      v7 = 78;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 17747;
    v9 = 18771;
    if (a1 != 7)
    {
      v9 = 73;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 68;
    v2 = 65;
    v3 = 19283;
    if (a1 != 4)
    {
      v3 = 79;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 21072;
    if (a1 != 1)
    {
      v4 = 21840;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1007705E4()
{
  Hasher.init(_seed:)();
  CryptoKeys.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100770620(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1007704F4(*a1);
  v5 = v4;
  if (v3 == sub_1007704F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007706A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1007704F4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10077070C()
{
  sub_1007704F4(*v0);
  String.hash(into:)();
}

Swift::Int sub_100770760()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1007704F4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007707C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100776F70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007707F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007704F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100770838@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100776F70(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100770860(uint64_t a1)
{
  v2 = sub_100776CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10077089C(uint64_t a1)
{
  v2 = sub_100776CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CryptoKeys.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A9038, &qword_1013BAC20);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v67 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100776CE4();
  v70 = v13;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  v16 = dispatch thunk of Encoder.userInfo.getter();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for CodingUserInfoKey();
  v18 = sub_1000076D4(v17, static CodingUserInfoKey.messagingCoder);
  if (*(v16 + 16) && (v19 = sub_100771F94(v18), (v20 & 1) != 0))
  {
    sub_100013894(*(v16 + 56) + 32 * v19, &v72);

    if (swift_dynamicCast())
    {
      v21 = v71;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_9:
  sub_1000BC4D4(&qword_1016A0DA0, &qword_1013A4CC8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10138BBE0;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v24 = v23;
  (*(v5 + 8))(v8, v4);
  *(v22 + 32) = v24;
  DateInterval.duration.getter();
  *(v22 + 40) = v25;
  v72 = v22;
  v71 = 0;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  sub_10047AC58(&qword_1016A0DB0);
  v26 = v67[1];
  v27 = v68;
  v28 = v70;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v26)
  {
  }

  else
  {

    v29 = type metadata accessor for CryptoKeys();
    v30 = (v2 + v29[5]);
    v31 = *v30;
    v32 = v30[1];
    if (v32 >> 60 == 15)
    {
      v33 = 0;
    }

    else
    {
      v33 = *v30;
    }

    v34 = 0xF000000000000000;
    if (v32 >> 60 != 15)
    {
      v34 = v32;
    }

    v72 = v33;
    v73 = v34;
    v71 = 1;
    sub_10002E98C(v31, v32);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v72, v73);
    v35 = (v2 + v29[6]);
    v36 = v35[1];
    v72 = *v35;
    v73 = v36;
    v71 = 2;
    sub_100017D5C(v72, v36);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
    v37 = (v2 + v29[7]);
    v38 = v37[1];
    v72 = *v37;
    v73 = v38;
    v71 = 3;
    sub_100017D5C(v72, v38);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
    v39 = v2 + v29[9];
    v40 = *(v39 + 8);
    v72 = *v39;
    v73 = v40;
    v71 = 8;
    sub_100017D5C(v72, v40);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
    if (v21)
    {
      v42 = type metadata accessor for __DataStorage();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v45 = __DataStorage.init(length:)();
      v72 = 0x2000000000;
      v73 = v45;
      sub_1007765FC(&v72, 0);
      v73 |= 0x4000000000000000uLL;
      v71 = 4;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v72, v73);
      v58 = *(v42 + 48);
      v59 = *(v42 + 52);
      swift_allocObject();
      v60 = __DataStorage.init(length:)();
      v72 = 0x2000000000;
      v73 = v60;
      sub_1007765FC(&v72, 0);
      v73 |= 0x4000000000000000uLL;
      v71 = 5;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v72, v73);
      v61 = *(v42 + 48);
      v62 = *(v42 + 52);
      swift_allocObject();
      v63 = __DataStorage.init(length:)();
      v72 = 0x2000000000;
      v73 = v63;
      sub_1007765FC(&v72, 0);
      v73 |= 0x4000000000000000uLL;
      v71 = 6;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v72, v73);
      v64 = *(v42 + 48);
      v65 = *(v42 + 52);
      swift_allocObject();
      v66 = __DataStorage.init(length:)();
      v72 = 0x1000000000;
      v73 = v66;
      sub_1007765FC(&v72, 0);
      v73 |= 0x4000000000000000uLL;
      v71 = 7;
    }

    else
    {
      v46 = (v2 + v29[8]);
      v47 = v46[1];
      v72 = *v46;
      v73 = v47;
      v71 = 4;
      sub_100017D5C(v72, v47);
    }

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
    v72 = sub_100499CE0(*v39, *(v39 + 8));
    v73 = v48;
    v71 = 9;
    v28 = v70;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
    v72 = sub_100497AF4(*v39, *(v39 + 8));
    v73 = v49;
    v71 = 10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
    v51 = *v37;
    v50 = v37[1];
    v52 = sub_100499CE0(*v39, *(v39 + 8));
    v54 = v53;
    v55 = sub_100499208(v52, v53, v51, v50);
    v57 = v56;
    sub_100016590(v52, v54);
    v72 = v55;
    v73 = v57;
    v71 = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v72, v73);
  }

  return (*(v69 + 8))(v28, v27);
}

uint64_t CryptoKeys.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A9048, &qword_1013BAC28);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for CryptoKeys();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v61 = a1;
  sub_1000035D0(a1, v17);
  sub_100776CE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v61);
  }

  v56 = v7;
  v57 = v15;
  v18 = v60;
  v58 = v12;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  v63 = 0;
  sub_10047AC58(&qword_1016A0DC0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v62;
  v63 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55 = v19;
  v20 = v62;
  v63 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = v20;
  v21 = v62;
  v63 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v53 = v21;
  v22 = v62;
  v63 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = *(&v22 + 1);
  v52 = v22;
  v23 = v62;
  v63 = 8;
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = v23;
  v25 = v55;
  if (!*(v55 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v48 = v62;
  v26 = *(v55 + 32);
  result = Date.init(timeIntervalSinceReferenceDate:)();
  v27 = v57;
  if (*(v25 + 16) < 2uLL)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v49 = *(&v23 + 1);
  v28 = *(v25 + 40);

  DateInterval.init(start:duration:)();
  v29 = *(&v54 + 1);
  v30 = v27;
  if (*(&v54 + 1) >> 60 == 15)
  {
    v31 = 0;
    v32 = 0xF000000000000000;
    v33 = v58;
    v36 = v53;
    v34 = v36 >> 64;
    v35 = v36;
  }

  else
  {
    v37 = v54;
    sub_10002E98C(v54, *(&v54 + 1));
    v31 = sub_10049BD68(v37, v29);
    v38 = v53;
    v34 = v38 >> 64;
    v35 = v38;
    v33 = v58;
  }

  v39 = &v30[v33[5]];
  *v39 = v31;
  v39[1] = v32;
  sub_100017D5C(v35, v34);
  v40 = sub_10049C0AC(v35, v34);
  v41 = &v30[v58[6]];
  *v41 = v40;
  v41[1] = v42;
  v44 = v51;
  v43 = v52;
  sub_100017D5C(v52, v51);
  sub_100018000(v43, v44, &v62);
  *&v30[v58[7]] = v62;
  v45 = v49;
  sub_100017D5C(v50, v49);
  sub_1004A4714(v50, v45, &v62);
  *&v30[v58[8]] = v62;
  sub_1004A4714(v48, *(&v48 + 1), &v62);
  (*(v18 + 8))(v11, v8);
  sub_100006654(v54, *(&v54 + 1));
  sub_100016590(v53, *(&v53 + 1));
  sub_100016590(v52, v51);
  sub_100016590(v50, v49);
  v46 = v57;
  *&v57[v58[9]] = v62;
  sub_100038B5C(v46, v59, type metadata accessor for CryptoKeys);
  sub_100007BAC(v61);
  return sub_100038BC4(v46, type metadata accessor for CryptoKeys);
}

uint64_t sub_100771A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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

unint64_t sub_100771C58(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();
  return sub_100775A94(a1, v4);
}

unint64_t sub_100771C94(Swift::UInt32 a1, Swift::UInt a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();

  return sub_100772EB4(a1, a2, v6);
}

unint64_t sub_100771D14(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_10076F790();

  return sub_100772F30(a1, v4);
}

unint64_t sub_100771D84(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_100773274(a1 & 1, v5);
}

unint64_t sub_100771E5C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1007737BC(a1, v4);
}

unint64_t sub_100771EA0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10076EE68();
  v4 = Hasher._finalize()();

  return sub_100773884(a1, v4);
}

unint64_t sub_100771F0C(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10125403C(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100773BDC(a1, v4);
}

unint64_t sub_100771F94(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100774184(a1, v5);
}

unint64_t sub_100771FF8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016A9110, CKRecordID_ptr);
}

unint64_t sub_100772048(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013BAE48[a1]);
  v4 = Hasher._finalize()();

  return sub_10077431C(a1, v4);
}

unint64_t sub_1007720C0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_101698D00, SPHandle_ptr);
}

unint64_t sub_100772110(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_100774468(a1, a2, a3, v8);
}

unint64_t sub_1007721A4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();
  return sub_100775680(a1, v4);
}

unint64_t sub_1007721E4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016C21A0, NSObject_ptr);
}

unint64_t sub_100772234(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 1);
  v4 = Hasher._finalize()();
  return sub_100775680(a1, v4);
}

unint64_t sub_1007722A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();

  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 44;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  String.hash(into:)();

  v13 = Hasher._finalize()();
  return sub_100774540(a1, a2, a3, a4, v13);
}

unint64_t sub_1007723C0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for MACAddress();
  sub_1000211C0(&unk_1016BC080, &type metadata accessor for MACAddress);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100021208(a1, v5, &type metadata accessor for MACAddress, &unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
}

unint64_t sub_100772494(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100774764(a1, v4);
}

unint64_t sub_100772524(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_100D6178C();
  v4 = Hasher._finalize()();
  return sub_100775938(a1, v4, type metadata accessor for OwnedBeaconRecord, type metadata accessor for OwnedBeaconRecord, sub_100D65130, type metadata accessor for OwnedBeaconRecord);
}

unint64_t sub_1007725DC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016A9118, IDSService_ptr);
}

unint64_t sub_10077262C(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_1007768D0(v6, a1);
  v4 = Hasher._finalize()();

  return sub_100774868(a1, v4);
}

unint64_t sub_100772698(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_100775A94(a1, v4);
}

uint64_t sub_100772700(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_100772794(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  sub_100017D5C(a1, a2);
  Data.hash(into:)();
  sub_100016590(a1, a2);
  v6 = Hasher._finalize()();

  return sub_100774904(a1, a2, v6);
}

unint64_t sub_100772824(Swift::UInt64 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100774E0C(a1, v4);
}

unint64_t sub_100772890(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = a1 + *(type metadata accessor for BeaconIdentifier() + 20);
  dispatch thunk of Hashable.hash(into:)();
  v5 = type metadata accessor for BeaconKeyServiceBuilder.FileKey(0);
  *(a1 + *(v5 + 20));
  *(a1 + *(v5 + 20));
  String.hash(into:)();

  v6 = Hasher._finalize()();

  return sub_100774E9C(a1, v6);
}

unint64_t sub_100772A10(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10110787C();
  v4 = Hasher._finalize()();

  return sub_100775100(a1, v4);
}

unint64_t sub_100772A7C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_100775680(a1, v4);
}

unint64_t sub_100772AE4(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for BeaconKeyManager.FileKey(0);
  *(a1 + *(v4 + 20));
  *(a1 + *(v4 + 20));
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_1007756F0(a1, v5);
}

unint64_t sub_100772BF4(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_1010DC2EC();
  v4 = Hasher._finalize()();
  return sub_100775938(a1, v4, type metadata accessor for StableIdentifier, type metadata accessor for StableIdentifier, sub_1010DF484, type metadata accessor for StableIdentifier);
}

unint64_t sub_100772CAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  sub_100776FBC(&unk_1016C3020);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100775B00(a1, v5);
}

unint64_t sub_100772D3C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016A9120, CBUUID_ptr);
}

unint64_t sub_100772D8C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &unk_1016BBFC0, CKRecordZoneID_ptr);
}

unint64_t sub_100772DDC(char *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013BAFA8[*a1]);
  v4 = *(type metadata accessor for ShareAttemptTracker.AttemptKey(0) + 20);
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v5 = Hasher._finalize()();

  return sub_100775CB4(a1, v5);
}

unint64_t sub_100772EB4(int a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100772F30(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = 0xE700000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v25 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v25 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v12 = 0xE700000000000000;
            v11 = 0x6465726F6E6769;
          }

          else
          {
            v11 = 0x7265766F63736964;
            v12 = 0xEA00000000006465;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v11 = 0x6465676174736E75;
          }

          else
          {
            v11 = 0x7761726468746977;
          }

          v12 = 0xE800000000000000;
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x796669746F6ELL;
        }

        else
        {
          v8 = 0x657461647075;
        }

        if (*(*(v25 + 48) + v4))
        {
          v9 = 0x646567617473;
        }

        else
        {
          v9 = 0x6E776F6E6B6E75;
        }

        if (*(*(v25 + 48) + v4))
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xE600000000000000;
        }
      }

      v13 = 0x7265766F63736964;
      if (v6 == 6)
      {
        v13 = 0x6465726F6E6769;
      }

      v14 = 0xEA00000000006465;
      if (v6 == 6)
      {
        v14 = 0xE700000000000000;
      }

      v15 = 0x7761726468746977;
      if (v6 == 4)
      {
        v15 = 0x6465676174736E75;
      }

      if (v6 <= 5)
      {
        v13 = v15;
        v14 = 0xE800000000000000;
      }

      if (v6 == 2)
      {
        v16 = 0x796669746F6ELL;
      }

      else
      {
        v16 = 0x657461647075;
      }

      v17 = 0xE600000000000000;
      if (v6)
      {
        v18 = 0x646567617473;
      }

      else
      {
        v18 = 0x6E776F6E6B6E75;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v16 = v18;
        v17 = v5;
      }

      v19 = v6 <= 3 ? v16 : v13;
      v20 = v6 <= 3 ? v17 : v14;
      if (v11 == v19 && v12 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        v5 = 0xE700000000000000;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007731BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100773274(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1)
    {
      v7 = 0x800000010134A000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000014 : 0x6E776F6E6B6E75;
      v9 = *(*(v2 + 48) + v4) ? 0x800000010134A000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

unint64_t sub_1007733BC(uint64_t a1, unint64_t a2, uint64_t a3)
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
          sub_100017D5C(v17, v16);
          sub_100771A28(v45, v9, v8, &v44);
          sub_100016590(v17, v16);
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

        sub_100017D5C(v17, v16);
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
        sub_100017D5C(v17, v16);
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
        sub_100771A28(v34, a1, a2, v45);
        sub_100016590(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100017D5C(v17, v16);
      sub_100771A28(v45, v9, v8, &v44);
      sub_100016590(v17, v16);
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

unint64_t sub_1007737BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100476DEC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100476E48(v8);
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

unint64_t sub_100773884(unsigned __int8 a1, uint64_t a2)
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
        if (v6 == 2)
        {
          v9 = 0x65776F5068676968;
        }

        else
        {
          v9 = 0x4F7265776F506E6FLL;
        }

        if (v6 == 2)
        {
          v10 = 0xE900000000000072;
        }

        else
        {
          v10 = 0xED0000694669576ELL;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0x6F506D756964656DLL;
        }

        else
        {
          v11 = 0x7265776F50776F6CLL;
        }

        if (v6)
        {
          v12 = 0xEB00000000726577;
        }

        else
        {
          v12 = 0xE800000000000000;
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
          v7 = 0x4F7265776F506E6FLL;
        }

        else
        {
          v7 = 0x7265747461426E6FLL;
        }

        if (v6 == 4)
        {
          v8 = 0xED00006C6C65436ELL;
        }

        else
        {
          v8 = 0xEF694669576E4F79;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x7265747461426E6FLL;
        v8 = 0xEF6C6C65436E4F79;
      }

      else if (v6 == 7)
      {
        v7 = 0x6F696E61706D6F63;
        v8 = 0xEF79627261654E6ELL;
      }

      else
      {
        v7 = 0x6857796669746F6ELL;
        v8 = 0xEF646E756F466E65;
      }

      v13 = 0x6F696E61706D6F63;
      if (v5 != 7)
      {
        v13 = 0x6857796669746F6ELL;
      }

      v14 = 0xEF79627261654E6ELL;
      if (v5 != 7)
      {
        v14 = 0xEF646E756F466E65;
      }

      if (v5 == 6)
      {
        v13 = 0x7265747461426E6FLL;
        v14 = 0xEF6C6C65436E4F79;
      }

      if (v5 == 4)
      {
        v15 = 0x4F7265776F506E6FLL;
      }

      else
      {
        v15 = 0x7265747461426E6FLL;
      }

      v16 = 0xEF694669576E4F79;
      if (v5 == 4)
      {
        v16 = 0xED00006C6C65436ELL;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x65776F5068676968;
      }

      else
      {
        v17 = 0x4F7265776F506E6FLL;
      }

      if (v5 == 2)
      {
        v18 = 0xE900000000000072;
      }

      else
      {
        v18 = 0xED0000694669576ELL;
      }

      if (v5)
      {
        v19 = 0x6F506D756964656DLL;
      }

      else
      {
        v19 = 0x7265776F50776F6CLL;
      }

      if (v5)
      {
        v20 = 0xEB00000000726577;
      }

      else
      {
        v20 = 0xE800000000000000;
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

unint64_t sub_100773BDC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7972616D697270;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE900000000000079;
          v8 = 0x7261646E6F636573;
          break;
        case 2:
          v8 = 0xD000000000000019;
          v7 = 0x8000000101348160;
          break;
        case 3:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000101348180;
          break;
        case 4:
          v8 = 0x646E7542646C6977;
          v7 = 0xEA0000000000656CLL;
          break;
        case 5:
          v8 = 0x417972616D697270;
          v7 = 0xEE00737365726464;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x80000001013481C0;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x80000001013475D0;
          break;
        case 8:
          v8 = 0xD000000000000011;
          v7 = 0x80000001013475F0;
          break;
        case 9:
          v8 = 0x697463656E6E6F63;
          v7 = 0xED000079654B6E6FLL;
          break;
        case 0xA:
          v8 = 0x656E774F7261656ELL;
          v7 = 0xEC00000079654B72;
          break;
        case 0xB:
          v8 = 0x656B6F546E696F6ALL;
          v7 = 0xE90000000000006ELL;
          break;
        case 0xC:
          v8 = 0xD000000000000015;
          v7 = 0x80000001013481F0;
          break;
        case 0xD:
          v8 = 0xD000000000000010;
          v7 = 0x8000000101348210;
          break;
        case 0xE:
          v8 = 0x7461636F4C626577;
          v7 = 0xEE0079654B6E6F69;
          break;
        case 0xF:
          v8 = 0x646174654D626577;
          v7 = 0xEB00000000617461;
          break;
        case 0x10:
          v8 = 0x6D65744974736F6CLL;
          v7 = 0xED00007365746144;
          break;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x8000000101348240;
          break;
        case 0x12:
          v8 = 0xD000000000000016;
          v7 = 0x8000000101348260;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x7972616D697270;
      switch(a1)
      {
        case 1:
          v9 = 0xE900000000000079;
          if (v8 == 0x7261646E6F636573)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        case 2:
          v9 = 0x8000000101348160;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v9 = 0x8000000101348180;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          v9 = 0xEA0000000000656CLL;
          if (v8 != 0x646E7542646C6977)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v13 = 0x417972616D697270;
          v14 = 0x737365726464;
          goto LABEL_47;
        case 6:
          v9 = 0x80000001013481C0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 7:
          v9 = 0x80000001013475D0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v9 = 0x80000001013475F0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v11 = 0x697463656E6E6F63;
          v12 = 0x79654B6E6FLL;
          goto LABEL_34;
        case 10:
          v10 = 0x656E774F7261656ELL;
          v9 = 0xEC00000079654B72;
          goto LABEL_56;
        case 11:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x656B6F546E696F6ALL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v9 = 0x80000001013481F0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 13:
          v9 = 0x8000000101348210;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v13 = 0x7461636F4C626577;
          v14 = 0x79654B6E6F69;
LABEL_47:
          v9 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v13)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v9 = 0xEB00000000617461;
          if (v8 != 0x646174654D626577)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v11 = 0x6D65744974736F6CLL;
          v12 = 0x7365746144;
LABEL_34:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v11)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v9 = 0x8000000101348240;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v9 = 0x8000000101348260;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v8 != v10)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_58:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
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

unint64_t sub_100774184(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10077431C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_1013BAE48[*(*(v2 + 48) + result)] == qword_1013BAE48[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10077439C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100008BB8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100774468(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a1;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == v10)
      {
        v14 = *(v13 + 1) == a2 && *(v13 + 2) == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100774540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v21 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v5;
    v20 = ~v6;
    while (1)
    {
      v10 = (*(v8 + 48) + 32 * v7);
      v11 = v10[3];
      v24 = *v10;
      v25 = v10[1];
      v23 = v10[2];
      swift_bridgeObjectRetain_n();
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 44;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 44;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      if (v24 == a1 && v25 == a2)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v7 = (v7 + 1) & v20;
        if ((*(v21 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v7;
    }
  }

  return v7;
}

unint64_t sub_100774764(uint64_t a1, uint64_t a2)
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

unint64_t sub_100774868(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (sub_100776224(*(*(v2 + 48) + 8 * v4), a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100774904(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
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
    v45 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v42 = v14;
    v41 = HIDWORD(a1) - a1;
    v43 = v10;
    v44 = BYTE6(a2);
    v39 = v4;
    v37 = v7;
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
          goto LABEL_65;
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
          goto LABEL_66;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v44;
          if (v13)
          {
            v26 = v41;
            if (v42)
            {
              goto LABEL_64;
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

      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
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

LABEL_39:
      if (v22 == v26)
      {
        if (v22 < 1)
        {
          return v6;
        }

        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v29 = *(v17 + 16);
            v38 = *(v17 + 24);
            sub_100017D5C(v17, v16);
            sub_100017D5C(v17, v16);
            sub_100017D5C(a1, v8);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v31 = __DataStorage._offset.getter();
              if (__OFSUB__(v29, v31))
              {
                goto LABEL_69;
              }

              v30 += v29 - v31;
            }

            if (__OFSUB__(v38, v29))
            {
              goto LABEL_68;
            }

            __DataStorage._length.getter();
            v32 = v30;
            v8 = a2;
            sub_100771A28(v32, a1, a2, v47);
            sub_100016590(v17, v16);
            sub_100016590(v17, v16);
            sub_100016590(a1, a2);
            if (v47[0])
            {
              return v6;
            }

LABEL_60:
            v4 = v39;
            v10 = v43;
            goto LABEL_13;
          }

          memset(v47, 0, 14);
          sub_100017D5C(v17, v16);
          sub_100017D5C(v17, v16);
          sub_100017D5C(a1, v8);
          sub_100771A28(v47, a1, v8, &v46);
          sub_100016590(v17, v16);
          sub_100016590(v17, v16);
          sub_100016590(a1, v8);
          if (v46)
          {
            return v6;
          }
        }

        else
        {
          if (v18)
          {
            if (v17 >> 32 < v17)
            {
              goto LABEL_67;
            }

            sub_100017D5C(v17, v16);
            sub_100017D5C(v17, v16);
            sub_100017D5C(a1, v8);
            v33 = __DataStorage._bytes.getter();
            if (v33)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v17, v34))
              {
                goto LABEL_70;
              }

              v33 += v17 - v34;
            }

            __DataStorage._length.getter();
            v35 = v33;
            v8 = a2;
            sub_100771A28(v35, a1, a2, v47);
            sub_100016590(v17, v16);
            sub_100016590(v17, v16);
            sub_100016590(a1, a2);
            v7 = v37;
            if (v47[0])
            {
              return v6;
            }

            goto LABEL_60;
          }

          v47[0] = v17;
          LOWORD(v47[1]) = v16;
          BYTE2(v47[1]) = BYTE2(v16);
          BYTE3(v47[1]) = BYTE3(v16);
          BYTE4(v47[1]) = BYTE4(v16);
          BYTE5(v47[1]) = BYTE5(v16);
          sub_100017D5C(v17, v16);
          sub_100017D5C(v17, v16);
          sub_100017D5C(a1, v8);
          sub_100771A28(v47, a1, v8, &v46);
          sub_100016590(v17, v16);
          sub_100016590(v17, v16);
          sub_100016590(a1, v8);
          if (v46)
          {
            return v6;
          }

          v10 = v43;
        }
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
    if (((v21 | v45) & 1) == 0)
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

unint64_t sub_100774E0C(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(v2 + 48) + 8 * result);
    if (v7 > a1)
    {
      break;
    }

    v8 = a1 - v7;
    if ((a1 - v7) < 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    if (v8)
    {
      result = (result + 1) & v6;
      if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
      {
        continue;
      }
    }

    return result;
  }

  if ((v7 - a1) >= 0)
  {
    v8 = a1 - v7;
    goto LABEL_7;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100774E9C(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for BeaconKeyServiceBuilder.FileKey(0);
  v5 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100038B5C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (v13 = *(type metadata accessor for BeaconIdentifier() + 20), (static UUID.== infix(_:_:)()))
      {
        v14 = *(v25 + 20);
        v15 = v8[v14];
        v16 = *(a1 + v14);
        if (v15)
        {
          v17 = 0x7261646E6F636553;
        }

        else
        {
          v17 = 0x7972616D697250;
        }

        if (v15)
        {
          v18 = 0xE900000000000079;
        }

        else
        {
          v18 = 0xE700000000000000;
        }

        if (v16)
        {
          v19 = 0x7261646E6F636553;
        }

        else
        {
          v19 = 0x7972616D697250;
        }

        if (v16)
        {
          v20 = 0xE900000000000079;
        }

        else
        {
          v20 = 0xE700000000000000;
        }

        if (v17 == v19 && v18 == v20)
        {

          sub_100038BC4(v8, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
          return v10;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100038BC4(v8, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
        if (v22)
        {
          return v10;
        }
      }

      else
      {
        sub_100038BC4(v8, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100775100(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v60 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v13 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v15 = &v49 - v14;
  v54 = type metadata accessor for ManagedCBPeripheralBeaconInfo();
  v16 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2 + 64;
  v21 = -1 << *(v2 + 32);
  v22 = a2 & ~v21;
  if ((*(v2 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v59 = v5;
    v23 = ~v21;
    v24 = (v6 + 48);
    v25 = *(v17 + 72);
    v49 = (v6 + 32);
    v52 = (v6 + 8);
    v53 = v12;
    v26 = v25;
    v27 = v54;
    v57 = v24;
    v58 = ~v21;
    v55 = v25;
    v56 = v2 + 64;
    do
    {
      sub_100038B5C(*(v2 + 48) + v26 * v22, v19, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      v28 = v27[5];
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      v29 = v2;
      v30 = v27[6];
      v31 = *(v60 + 48);
      sub_100015794(&v19[v30], v15);
      sub_100015794(a1 + v30, &v15[v31]);
      v32 = *v24;
      v33 = v59;
      if ((*v24)(v15, 1, v59) == 1)
      {
        v34 = v32(&v15[v31], 1, v33);
        v2 = v29;
        if (v34 != 1)
        {
          goto LABEL_4;
        }

        sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
        v20 = v56;
        v24 = v57;
        v23 = v58;
        v26 = v55;
      }

      else
      {
        v35 = v53;
        sub_100015794(v15, v53);
        if (v32(&v15[v31], 1, v33) == 1)
        {
          (*v52)(v35, v33);
          v2 = v29;
          v27 = v54;
LABEL_4:
          sub_10000B3A8(v15, &qword_1016AF880, &unk_10138CE20);
          v20 = v56;
          v24 = v57;
          v23 = v58;
          v26 = v55;
          goto LABEL_5;
        }

        v36 = &v15[v31];
        v37 = v50;
        (*v49)(v50, v36, v33);
        sub_1000211C0(&qword_1016984A0, &type metadata accessor for UUID);
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *v52;
        (*v52)(v37, v33);
        v38(v35, v33);
        sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
        v2 = v29;
        v27 = v54;
        v26 = v55;
        v20 = v56;
        v24 = v57;
        v23 = v58;
        if ((v51 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v39 = v27[7];
      if (static Date.== infix(_:_:)())
      {
        if (v40 = v27[8], v41 = *&v19[v40], v42 = *&v19[v40 + 8], v43 = (a1 + v40), v41 == *v43) && v42 == v43[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          if (*&v19[v27[9]] == *(a1 + v27[9]))
          {
            if (v44 = v27[10], v45 = *&v19[v44], v46 = *&v19[v44 + 8], v47 = (a1 + v44), v45 == *v47) && v46 == v47[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              if (v19[v27[11]] == *(a1 + v27[11]) && v19[v27[12]] == *(a1 + v27[12]))
              {
                sub_100038BC4(v19, type metadata accessor for ManagedCBPeripheralBeaconInfo);
                return v22;
              }
            }
          }
        }
      }

LABEL_5:
      sub_100038BC4(v19, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v22 = (v22 + 1) & v23;
    }

    while (((*(v20 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  return v22;
}

unint64_t sub_100775680(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1007756F0(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for BeaconKeyManager.FileKey(0);
  v5 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100038B5C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for BeaconKeyManager.FileKey);
      if (static UUID.== infix(_:_:)())
      {
        v13 = *(v24 + 20);
        v14 = v8[v13];
        v15 = *(a1 + v13);
        if (v14)
        {
          v16 = 0x7261646E6F636553;
        }

        else
        {
          v16 = 0x7972616D697250;
        }

        if (v14)
        {
          v17 = 0xE900000000000079;
        }

        else
        {
          v17 = 0xE700000000000000;
        }

        if (v15)
        {
          v18 = 0x7261646E6F636553;
        }

        else
        {
          v18 = 0x7972616D697250;
        }

        if (v15)
        {
          v19 = 0xE900000000000079;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        if (v16 == v18 && v17 == v19)
        {

          sub_100038BC4(v8, type metadata accessor for BeaconKeyManager.FileKey);
          return v10;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100038BC4(v8, type metadata accessor for BeaconKeyManager.FileKey);
        if (v21)
        {
          return v10;
        }
      }

      else
      {
        sub_100038BC4(v8, type metadata accessor for BeaconKeyManager.FileKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100775938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v23 = a6;
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v22 - v14;
  v16 = -1 << *(v6 + 32);
  v17 = a2 & ~v16;
  if ((*(v6 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v13 + 72);
    do
    {
      sub_100038B5C(*(v6 + 48) + v19 * v17, v15, a4);
      v20 = a5(v15, a1);
      sub_100038BC4(v15, v23);
      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v6 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

unint64_t sub_100775A94(uint64_t a1, uint64_t a2)
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

unint64_t sub_100775B00(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
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
      sub_100776FBC(&qword_1016A9128);
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

unint64_t sub_100775CB4(char *a1, uint64_t a2)
{
  v18 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v5 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = dword_1013BAFA8[*a1];
    v13 = *(v6 + 72);
    do
    {
      sub_100038B5C(*(v2 + 48) + v13 * v10, v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
      if (dword_1013BAFA8[*v8] == v12)
      {
        v14 = *(v18 + 20);
        v15 = static UUID.== infix(_:_:)();
        sub_100038BC4(v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
        if (v15)
        {
          return v10;
        }
      }

      else
      {
        sub_100038BC4(v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_100775E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1000211C0(&qword_1016984A0, &type metadata accessor for UUID);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100776224(Swift::Int result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_100776394(uint64_t *a1, int a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_100016590(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10138C660;
      sub_100016590(0, 0xC000000000000000);
      sub_1007765FC(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_100016590(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  v9 = *a1;

  sub_100016590(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_16;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  memset((v14 + v16), a2, v20);
  *a1 = __b;
  a1[1] = v10 | 0x8000000000000000;
}

void sub_1007765FC(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

void sub_1007766A4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  v27 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v22[0] = a1;
  v23 = v11;
  v24 = v10;
  v12 = Hasher._finalize()();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v12;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v15; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      Hasher._combine(_:)(v17);
      return;
    }

    v15 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1007768D0(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  Hasher._finalize()();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= Hasher._finalize()())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + (v10 | (v9 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      Hasher._combine(_:)(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _s12searchpartyd10CryptoKeysV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CryptoKeys();
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
      sub_100006654(v10, v9);
      sub_100006654(v10, v9);
      sub_100006654(v7, v6);
      sub_100006654(v7, v6);
      if ((v11 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  sub_100006654(v7, v6);
LABEL_8:
  v12 = v4[6];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *v15;
  v17 = v15[1];
  sub_100017D5C(v13, v14);
  sub_100017D5C(v16, v17);
  v18 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14, v16, v17);
  sub_100016590(v16, v17);
  sub_100016590(v13, v14);
  if (v18)
  {
    v19 = v4[7];
    v20 = *(a1 + v19);
    v21 = *(a1 + v19 + 8);
    v22 = (a2 + v19);
    v23 = *v22;
    v24 = v22[1];
    sub_100017D5C(v20, v21);
    sub_100017D5C(v23, v24);
    v25 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21, v23, v24);
    sub_100016590(v23, v24);
    sub_100016590(v20, v21);
    if (v25)
    {
      v26 = v4[8];
      v27 = *(a1 + v26);
      v28 = *(a1 + v26 + 8);
      v29 = (a2 + v26);
      v30 = *v29;
      v31 = v29[1];
      sub_100017D5C(v27, v28);
      sub_100017D5C(v30, v31);
      v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v27, v28, v30, v31);
      sub_100016590(v30, v31);
      sub_100016590(v27, v28);
      if (v32)
      {
        v33 = v4[9];
        v34 = a1 + v33;
        v35 = *(a1 + v33);
        v36 = *(v34 + 8);
        v37 = (a2 + v33);
        v38 = *v37;
        v39 = v37[1];
        sub_100017D5C(v35, v36);
        sub_100017D5C(v38, v39);
        v40 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v36, v38, v39);
        sub_100016590(v38, v39);
        sub_100016590(v35, v36);
        return v40 & 1;
      }
    }
  }

  return 0;
}

unint64_t sub_100776CE4()
{
  result = qword_1016A9040;
  if (!qword_1016A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9040);
  }

  return result;
}

void sub_100776DA8()
{
  type metadata accessor for DateInterval();
  if (v0 <= 0x3F)
  {
    sub_10047B1B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100776E6C()
{
  result = qword_1016A90F8;
  if (!qword_1016A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A90F8);
  }

  return result;
}

unint64_t sub_100776EC4()
{
  result = qword_1016A9100;
  if (!qword_1016A9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9100);
  }

  return result;
}

unint64_t sub_100776F1C()
{
  result = qword_1016A9108;
  if (!qword_1016A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9108);
  }

  return result;
}

unint64_t sub_100776F70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609DD0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100776FBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169A060, &unk_10139DB00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100777020(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100777040, 0, 0);
}

uint64_t sub_100777040()
{
  v1 = v0[2];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for ObservedAdvertisement(0);
  sub_100780324(&qword_1016A9238, type metadata accessor for ObservedAdvertisement);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v0[4] = v5;
  v0[5] = v6;

  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[6] = v9;
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_100777210;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0x5F28747265736E69, 0xEA0000000000293ALL, sub_100780388, v9, &type metadata for () + 8);
}

uint64_t sub_100777210()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100780A30;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1007809CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10077732C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100777398(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_1007773B8, 0, 0);
}

uint64_t sub_1007773B8()
{
  v1 = v0[3];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_10077FC44(&qword_1016A9230, &qword_1016A9238);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[5] = v5;
  v0[6] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[4];

  v10 = swift_task_alloc();
  v0[7] = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1007775A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, 0, 0, 0x5F286574656C6564, 0xEA0000000000293ALL, sub_10078037C, v10, &type metadata for () + 8);
}

uint64_t sub_1007775A8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_100780A2C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1007809C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1007776C4(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1007809BC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632520;
  v12 = _Block_copy(aBlock);

  [a2 deleteObservedAdvertisementsWithAdvertisementsData:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_100777894(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_100006654(v4, v9);
}

uint64_t sub_100777940(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100777960, 0, 0);
}

uint64_t sub_100777960()
{
  v1 = v0[3];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_10077FC44(&qword_1016A9230, &qword_1016A9238);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[5] = v5;
  v0[6] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[4];

  v10 = swift_task_alloc();
  v0[7] = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_100777B50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, 0, 0, 0xD000000000000011, 0x800000010135F120, sub_10078036C, v10, &type metadata for () + 8);
}

uint64_t sub_100777B50()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_100777CD0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100777C6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100777C6C()
{
  sub_100016590(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100777CD0()
{
  v1 = v0[7];
  sub_100016590(v0[5], v0[6]);

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

void sub_100777D40(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100780378;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016324D0;
  v12 = _Block_copy(aBlock);

  [a2 markObservedAdvertisementsPublishedWithAdvertisementsData:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_100777F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100777F88(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a4;
  *(v4 + 96) = a3;
  *(v4 + 32) = a1;
  return _swift_task_switch(sub_100777FB0, 0, 0);
}

uint64_t sub_100777FB0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  *(v0 + 16) = v1;
  sub_1000BC4D4(&qword_1016A9220, &qword_1013BB1A0);
  sub_100780190();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v9 = *(v0 + 96);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v11;
  *(v12 + 48) = v9;
  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  *v14 = v0;
  v14[1] = sub_100778190;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000040, 0x800000010135F0A0, sub_100780244, v12, v15);
}

uint64_t sub_100778190()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100778314;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1007782AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007782AC()
{
  sub_100016590(v0[7], v0[8]);
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100778314()
{
  v1 = v0[9];
  sub_100016590(v0[7], v0[8]);

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

void sub_100778384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = sub_1007809B8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632430;
  v18 = _Block_copy(aBlock);

  [a2 reverseChronologicalObservationsWithIdentifierData:isa limit:a5 isPublished:a6 & 1 completion:v18];
  _Block_release(v18);
}

uint64_t sub_10077856C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10077858C, 0, 0);
}

uint64_t sub_10077858C()
{
  v1 = v0[4];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_10077FDCC();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[6] = v5;
  v0[7] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[5];

  v10 = swift_task_alloc();
  v0[8] = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[9] = v12;
  v13 = sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  *v12 = v0;
  v12[1] = sub_100778758;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001DLL, 0x800000010135F080, sub_10078015C, v10, v13);
}

uint64_t sub_100778758()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1007788DC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100778874;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100778874()
{
  sub_100016590(v0[6], v0[7]);
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1007788DC()
{
  v1 = v0[8];
  sub_100016590(v0[6], v0[7]);

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

void sub_10077894C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100780168;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016323E0;
  v12 = _Block_copy(aBlock);

  [a2 observationsWithAdvertisementsData:isa completion:v12];
  _Block_release(v12);
}

void sub_100778B1C(uint64_t a1, void *a2, double a3)
{
  v6 = sub_1000BC4D4(&qword_1016A9218, &unk_1013BB180);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_10077FF44;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632390;
  v13 = _Block_copy(aBlock);

  [a2 nearbyBeaconsWithSeconds:v13 completion:a3];
  _Block_release(v13);
}

uint64_t sub_100778CDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_willThrow();
    v17 = a3;
LABEL_6:
    v42 = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A9218, &unk_1013BB180);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a2 >> 60 == 15)
  {
    sub_10022A480();
    v17 = swift_allocError();
    *v18 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v39 = v14;
  v19 = type metadata accessor for PropertyListDecoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_100017D5C(a1, a2);
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10077FF6C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v35 = a1;
  v36 = a2;
  v37 = a4;

  v41 = v42;
  v23 = *(v42 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v39 + 48);
    v40 = (v39 + 32);
    v26 = (v41 + 40);
    v27 = _swiftEmptyArrayStorage;
    v38 = v23;
    while (v24 < *(v41 + 16))
    {
      v29 = *(v26 - 1);
      v28 = *v26;

      UUID.init(uuidString:)();

      if ((*v25)(v11, 1, v12) == 1)
      {
        result = sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v30 = *v40;
        (*v40)(v16, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100A5BFE0(0, v27[2] + 1, 1, v27);
        }

        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = sub_100A5BFE0(v31 > 1, v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        result = (v30)(v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32, v16, v12);
        v23 = v38;
      }

      ++v24;
      v26 += 2;
      if (v23 == v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_19:

    v33 = sub_10000954C(v27);

    v42 = v33;

    sub_1000BC4D4(&qword_1016A9218, &unk_1013BB180);
    CheckedContinuation.resume(returning:)();
    sub_100006654(v35, v36);
  }

  return result;
}

uint64_t sub_1007790F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100779114, 0, 0);
}

uint64_t sub_100779114()
{
  v1 = v0[4];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_10077FDCC();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[6] = v5;
  v0[7] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[5];

  v10 = swift_task_alloc();
  v0[8] = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[9] = v12;
  v13 = sub_1000BC4D4(&qword_1016A9200, &qword_10140D630);
  *v12 = v0;
  v12[1] = sub_1007792E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001ALL, 0x800000010135F040, sub_10077FE50, v10, v13);
}

uint64_t sub_1007792E0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1007809D4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1007809AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1007793FC(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9208, &unk_1013BB170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_10077FE5C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632340;
  v12 = _Block_copy(aBlock);

  [a2 locationsWithAdvertisementsData:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_1007795CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v6 = type metadata accessor for PropertyListDecoder();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A9200, &qword_10140D630);
      sub_10077FE84();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A9208, &unk_1013BB170);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A9208, &unk_1013BB170);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10077977C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10077979C, 0, 0);
}

uint64_t sub_10077979C()
{
  v1 = v0[2];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier();
  sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[4] = v5;
  v0[5] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[3];

  v10 = swift_task_alloc();
  v0[6] = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[7] = v12;
  v13 = sub_1000BC4D4(&qword_1016A91D0, &qword_1013BB140);
  *v12 = v0;
  v12[1] = sub_100779984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, 0, 0, 0xD000000000000013, 0x800000010135F020, sub_10077FD14, v10, v13);
}

uint64_t sub_100779984()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100779B10;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100779AA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100779AA0()
{
  sub_100016590(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 72) | (*(v0 + 73) << 8);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100779B10()
{
  v1 = v0[6];
  sub_100016590(v0[4], v0[5]);

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

void sub_100779B80(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A91D8, &qword_1013BB148);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_10077FD20;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016322F0;
  v12 = _Block_copy(aBlock);

  [a2 latestStatusWithIdentifierData:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_100779D50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
LABEL_6:
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A91D8, &qword_1013BB148);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a2 >> 60 == 15)
  {
    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v6 = type metadata accessor for PropertyListDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_100017D5C(a1, a2);
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91E0, &qword_1013BB150);
  sub_10077FD48();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (*(v11 + 16))
  {
    v10 = *(v11 + 32);
  }

  sub_1000BC4D4(&qword_1016A91D8, &qword_1013BB148);
  CheckedContinuation.resume(returning:)();
  return sub_100006654(a1, a2);
}

uint64_t sub_100779F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100779F38, 0, 0);
}

uint64_t sub_100779F38()
{
  v1 = v0[3];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier();
  sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v0[5] = v5;
  v0[6] = v6;

  v8 = v0[4];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  *v11 = v0;
  v11[1] = sub_1007775A8;
  v13 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000013, 0x800000010135F020, sub_10077FCE0, v9, v12);
}

void sub_10077A11C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_10077FCEC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016322A0;
  v12 = _Block_copy(aBlock);

  [a2 latestObservedAdvertisementWithIdentifierData:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_10077A2EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_1016A91C8, &qword_1013BB130);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  v15 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v32 - v20;
  if (a3)
  {
    swift_willThrow();
    v22 = a3;
LABEL_6:
    v33 = v22;
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a2 >> 60 == 15)
  {
    sub_10022A480();
    v22 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v32[1] = a4;
  v24 = type metadata accessor for PropertyListDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_100017D5C(a1, a2);
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_10077FC44(&qword_1016A91B0, &qword_1016A91B8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v28 = v33;
  if (*(v33 + 16))
  {
    v29 = type metadata accessor for ObservedAdvertisement(0);
    v30 = *(v29 - 8);
    sub_10078057C(v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v21, type metadata accessor for ObservedAdvertisement);

    (*(v30 + 56))(v21, 0, 1, v29);
  }

  else
  {

    v31 = type metadata accessor for ObservedAdvertisement(0);
    (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  }

  sub_1000D2A70(v21, v14, &unk_10169BB50, &unk_101395760);
  swift_storeEnumTagMultiPayload();
  sub_1000D2A70(v14, v12, &qword_1016A91C8, &qword_1013BB130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v12;
    sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000D2AD8(v12, v19, &unk_10169BB50, &unk_101395760);
    sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
    CheckedContinuation.resume(returning:)();
  }

  sub_100006654(a1, a2);
  sub_10000B3A8(v14, &qword_1016A91C8, &qword_1013BB130);
  return sub_10000B3A8(v21, &unk_10169BB50, &unk_101395760);
}

uint64_t sub_10077A798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 96) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_10077A7C0, 0, 0);
}

uint64_t sub_10077A7C0()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier();
  sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;

  v8 = *(v0 + 96);
  if (v8 == 8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v8];
  }

  *(v0 + 64) = v9;
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  v12[2] = v10;
  v12[3] = v5;
  v12[4] = v7;
  v12[5] = v9;
  v12[6] = v11;
  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  *v14 = v0;
  v14[1] = sub_10077A9EC;
  v16 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD000000000000029, 0x800000010135EE50, sub_10077F694, v12, v15);
}

uint64_t sub_10077A9EC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10077AB7C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10077AB08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077AB08()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  sub_100016590(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10077AB7C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  sub_100016590(v3, v2);

  v4 = *(v0 + 88);
  v5 = *(v0 + 8);

  return v5();
}

void sub_10077AC00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  v7 = sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000D2A70(a6, v15, &qword_1016980D0, &unk_10138F3B0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  isa = 0;
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v18 + 8))(v15, v17);
  }

  (*(v8 + 16))(v11, v24, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v11, v7);
  aBlock[4] = sub_10077F6A4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101631F80;
  v22 = _Block_copy(aBlock);

  [v25 latestDeviceEventWithIdentifierData:v16.super.isa source:v26 attachedDevice:isa completion:v22];
  _Block_release(v22);
}

uint64_t sub_10077AED0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a4;
  v6 = type metadata accessor for DeviceEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  v15 = sub_1000BC4D4(&qword_1016A9148, &qword_1013BB0D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v23 = (&v34 - v22);
  __chkstk_darwin(v21);
  v26 = &v34 - v24;
  if (a3)
  {
    swift_willThrow();
    v38 = a3;
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v34 = v14;
    v35 = v7;
    v28 = v36;
    if (a2 >> 60 == 15)
    {
      (*(v35 + 56))(&v34 - v24, 1, 1, v6);
      swift_storeEnumTagMultiPayload();
      sub_1000D2A70(v26, v23, &qword_1016A9148, &qword_1013BB0D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = *v23;
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        sub_1000D2AD8(v23, v34, &unk_1016AA500, &unk_1013B3600);
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(returning:)();
      }

      return sub_10000B3A8(v26, &qword_1016A9148, &qword_1013BB0D0);
    }

    else
    {
      v29 = v25;
      v30 = type metadata accessor for PropertyListDecoder();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      sub_100017D5C(v28, a2);
      PropertyListDecoder.init()();
      sub_100780324(&qword_1016A9150, type metadata accessor for DeviceEvent);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_10078057C(v10, v29, type metadata accessor for DeviceEvent);
      (*(v35 + 56))(v29, 0, 1, v6);
      swift_storeEnumTagMultiPayload();
      sub_1000D2A70(v29, v19, &qword_1016A9148, &qword_1013BB0D0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v38 = *v19;
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        sub_1000D2AD8(v19, v34, &unk_1016AA500, &unk_1013B3600);
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(returning:)();
      }

      sub_100006654(v28, a2);
      sub_10000B3A8(v29, &qword_1016A9148, &qword_1013BB0D0);
      return sub_1007805E4(v10, type metadata accessor for DeviceEvent);
    }
  }
}

uint64_t sub_10077B3DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10077B3FC, 0, 0);
}

uint64_t sub_10077B3FC()
{
  v1 = v0[2];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for DeviceEvent(0);
  sub_100780324(&qword_1016A9130, type metadata accessor for DeviceEvent);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v0[4] = v5;
  v0[5] = v6;

  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[6] = v9;
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_10077B5CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000013, 0x800000010135EE30, sub_10077F630, v9, &type metadata for () + 8);
}

uint64_t sub_10077B5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100779B10;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10077B6E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077B6E8()
{
  sub_100016590(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

void sub_10077B74C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1007809B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632250;
  v13 = _Block_copy(aBlock);

  [a2 latestAnonymousObservationsWithLimit:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_10077B904(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v6 = type metadata accessor for PropertyListDecoder();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
      sub_10077FC44(&qword_1016A91B0, &qword_1016A91B8);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  return CheckedContinuation.resume(throwing:)();
}

void sub_10077BAEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_10077BB64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v18);
}

uint64_t sub_10077BD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10077BD98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = sub_1000BC4D4(&qword_1016A9198, &qword_1013BB100);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077BAEC;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v18);
}

uint64_t sub_10077BF40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A9198, &qword_1013BB100);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&qword_1016A9198, &qword_1013BB100);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10077BFD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10077BFF4, 0, 0);
}

uint64_t sub_10077BFF4()
{
  v1 = v0[2];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for KeySyncMetadata();
  sub_100780324(&qword_1016A9190, type metadata accessor for KeySyncMetadata);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v0[4] = v5;
  v0[5] = v6;

  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[6] = v9;
  v9[2] = v8;
  v9[3] = v5;
  v9[4] = v7;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_100777210;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000017, 0x800000010135EF40, sub_10077F9CC, v9, &type metadata for () + 8);
}

void sub_10077C1C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v20 = a2;
  v21 = a8;
  v11 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = a7;
  v19 = _Block_copy(aBlock);

  [v20 *v21];
  _Block_release(v19);
}

uint64_t sub_10077C388(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10077C3FC(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1007809B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016320C0;
  v12 = _Block_copy(aBlock);

  [a2 metadataWithBeaconIdentifier:isa completion:v12];
  _Block_release(v12);
}

uint64_t sub_10077C5C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v6 = type metadata accessor for PropertyListDecoder();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
      sub_10077F910();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10077C770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10077C794, 0, 0);
}

uint64_t sub_10077C794()
{
  v1 = v0[5];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A9158, &qword_1013BB0E0);
  sub_10077F774();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[7] = v5;
  v0[8] = v6;
  v7 = v5;
  v8 = v6;
  v9 = v0[6];
  v10 = v0[4];

  v11 = swift_task_alloc();
  v0[9] = v11;
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v7;
  v11[5] = v8;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v0[10] = v13;
  v14 = sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  *v13 = v0;
  v13[1] = sub_10077C970;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000021, 0x800000010135EEF0, sub_10077F84C, v11, v14);
}

uint64_t sub_10077C970()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1007809D8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1007809B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10077CA8C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_10077F858;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632070;
  v13 = _Block_copy(aBlock);

  [a2 metadataWithBeaconIdentifier:isa typesData:v10 completion:v13];
  _Block_release(v13);
}

void sub_10077CC78(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_10077F75C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_101632020;
  v12 = _Block_copy(aBlock);

  [a2 deleteMetadataWithBeaconIdentifier:isa completion:v12];
  _Block_release(v12);
}

void sub_10077CE3C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100780A34;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_101631FD0;
  v11 = _Block_copy(aBlock);

  [a2 removeOrphanedKeySyncMetaDataWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_10077CFEC(uint64_t a1)
{
  if (a1)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10077D078(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A92E8, &qword_1013BB290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100780528();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  type metadata accessor for DeviceEvent(0);
  sub_100780324(&qword_1016A9130, type metadata accessor for DeviceEvent);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for AttachedAccessoryEventsTransport();
    v10 = v9[5];
    v21 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = v9[6];
    v20 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = v9[7];
    v19 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v9[8];
    v18 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v9[9];
    v17 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10077D314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v45 = v41 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v41 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v41 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = v41 - v16;
  __chkstk_darwin(v15);
  v49 = (v41 - v18);
  v19 = sub_1000BC4D4(&qword_1016A92F8, &qword_1013BB298);
  v46 = *(v19 - 8);
  v47 = v19;
  v20 = *(v46 + 64);
  __chkstk_darwin(v19);
  v22 = v41 - v21;
  v23 = type metadata accessor for AttachedAccessoryEventsTransport();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v28 = a1[4];
  v51 = a1;
  sub_1000035D0(a1, v27);
  sub_100780528();
  v48 = v22;
  v29 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    return sub_100007BAC(v51);
  }

  v50 = v14;
  v42 = v11;
  v30 = v46;
  v31 = v26;
  v32 = type metadata accessor for DeviceEvent(0);
  v57 = 0;
  v33 = sub_100780324(&qword_1016A9150, type metadata accessor for DeviceEvent);
  v34 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v49, v31, &unk_1016AA500, &unk_1013B3600);
  v56 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v23;
  sub_1000D2AD8(v17, v31 + *(v23 + 20), &unk_1016AA500, &unk_1013B3600);
  v55 = 2;
  v35 = v50;
  v41[0] = v33;
  v41[1] = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v49;
  sub_1000D2AD8(v35, v31 + v49[6], &unk_1016AA500, &unk_1013B3600);
  v54 = 3;
  v37 = v42;
  v50 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v37, v31 + v36[7], &unk_1016AA500, &unk_1013B3600);
  v53 = 4;
  v38 = v45;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v38, v31 + v36[8], &unk_1016AA500, &unk_1013B3600);
  v52 = 5;
  v39 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v30 + 8))(v48, v34);
  sub_1000D2AD8(v39, v31 + v36[9], &unk_1016AA500, &unk_1013B3600);
  sub_10078057C(v31, v43, type metadata accessor for AttachedAccessoryEventsTransport);
  sub_100007BAC(v51);
  return sub_1007805E4(v31, type metadata accessor for AttachedAccessoryEventsTransport);
}

uint64_t sub_10077D9C4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100777020(a1, v4);
}

uint64_t sub_10077DA60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100777398(a1, v4);
}

uint64_t sub_10077DAFC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100777940(a1, v4);
}

uint64_t sub_10077DBBC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10077DCB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x800000010135F0F0, sub_100780254, v2, &type metadata for () + 8);
}

uint64_t sub_10077DCB0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_100780A40;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077DDCC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100780A44;

  return sub_100777F88(a1, a2, a3, v8);
}

uint64_t sub_10077DE80(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000D2118;

  return sub_10077856C(a1, v4);
}

uint64_t sub_10077DF1C(double a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *v1;
  return _swift_task_switch(sub_10077DF44, 0, 0);
}

uint64_t sub_10077DF44()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  *v5 = v0;
  v5[1] = sub_10077E054;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000017, 0x800000010135F060, sub_10077FF38, v3, v6);
}

uint64_t sub_10077E054()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100274F20;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100780A48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077E170(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1007790F4(a1, v4);
}

uint64_t sub_10077E20C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10077E2A8;

  return sub_10077977C(a1, v4);
}

uint64_t sub_10077E2A8(__int16 a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 & 0x1FF);
  }
}

uint64_t sub_10077E3E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100779F14(a1, a2, v6);
}

uint64_t sub_10077E494(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_10077E4B8, 0, 0);
}

uint64_t sub_10077E4B8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  *v5 = v0;
  v5[1] = sub_10077E5C0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000023, 0x800000010135EFF0, sub_10077FC3C, v3, v6);
}

uint64_t sub_10077E5C0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1007809C0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100780A48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077E700()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10077E7F4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001ELL, 0x800000010135EFD0, sub_10077FB2C, v2, &type metadata for () + 8);
}

uint64_t sub_10077E7F4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_10077E910;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077E910()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_10077E998()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10077EA90;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000029, 0x800000010135EFA0, sub_10077FA64, v2, &type metadata for Int64);
}

uint64_t sub_10077EA90()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1007809C4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100780A48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077EBD0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10077ECC8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001BLL, 0x800000010135EF60, sub_10077FA18, v2, &type metadata for Int64);
}

uint64_t sub_10077ECC8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10077EE00;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10077EDE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077EE00()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_10077EE64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10077BFD4(a1, v4);
}

uint64_t sub_10077EF00(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_10077EF24, 0, 0);
}

uint64_t sub_10077EF24()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  *v3 = v0;
  v3[1] = sub_10077E5C0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000010135EF20, sub_10077F9C4, v1, v4);
}

uint64_t sub_10077F030(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100780A44;

  return sub_10077C770(a1, a2, v6);
}

uint64_t sub_10077F0DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10077F100, 0, 0);
}

uint64_t sub_10077F100()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_10077F1F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000021, 0x800000010135EEC0, sub_10077F754, v1, &type metadata for () + 8);
}

uint64_t sub_10077F1F0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10077EE00;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = Database.await(state:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10077F330()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10077DCB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001FLL, 0x800000010135EEA0, sub_10077F6CC, v2, &type metadata for () + 8);
}

uint64_t sub_10077F424(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100014744;

  return sub_10077A798(a1, a2, a3, a4, v10);
}

uint64_t sub_10077F508()
{
  sub_10022A480();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10077F594(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10077B3DC(a1, v4);
}

unint64_t sub_10077F774()
{
  result = qword_1016A9160;
  if (!qword_1016A9160)
  {
    sub_1000BC580(&qword_1016A9158, &qword_1013BB0E0);
    sub_10077F7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9160);
  }

  return result;
}

unint64_t sub_10077F7F8()
{
  result = qword_1016A9168;
  if (!qword_1016A9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9168);
  }

  return result;
}

void sub_10077F84C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_10077CA8C(a1, *(v1 + 16));
}

unint64_t sub_10077F910()
{
  result = qword_1016A9180;
  if (!qword_1016A9180)
  {
    sub_1000BC580(&qword_1016A9170, &qword_1013BB0E8);
    sub_100780324(&qword_1016A9188, type metadata accessor for KeySyncMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9180);
  }

  return result;
}

uint64_t sub_10077FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1000BC4D4(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_10077FC44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A91A0, &qword_1013BB108);
    sub_100780324(a2, type metadata accessor for ObservedAdvertisement);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10077FCE0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_10077A11C(a1, *(v1 + 16));
}

void sub_10077FD14(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100779B80(a1, *(v1 + 16));
}

unint64_t sub_10077FD48()
{
  result = qword_1016A91E8;
  if (!qword_1016A91E8)
  {
    sub_1000BC580(&qword_1016A91E0, &qword_1013BB150);
    sub_10028E850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A91E8);
  }

  return result;
}

unint64_t sub_10077FDCC()
{
  result = qword_1016A91F8;
  if (!qword_1016A91F8)
  {
    sub_1000BC580(&qword_1016A91F0, &unk_1013BB160);
    sub_10028E94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A91F8);
  }

  return result;
}

void sub_10077FE50(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1007793FC(a1, *(v1 + 16));
}

unint64_t sub_10077FE84()
{
  result = qword_1016A9210;
  if (!qword_1016A9210)
  {
    sub_1000BC580(&qword_1016A9200, &qword_10140D630);
    sub_100780324(&qword_10169C738, type metadata accessor for ObservedAdvertisement.Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9210);
  }

  return result;
}

unint64_t sub_10077FF6C()
{
  result = qword_1016A8A58;
  if (!qword_1016A8A58)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A58);
  }

  return result;
}

unint64_t sub_10077FFE8()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000017;
  if (v2 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_10078008C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10078075C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007800B4(uint64_t a1)
{
  v2 = sub_100780528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007800F0(uint64_t a1)
{
  v2 = sub_100780528();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10078015C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_10077894C(a1, *(v1 + 16));
}

unint64_t sub_100780190()
{
  result = qword_1016A9228;
  if (!qword_1016A9228)
  {
    sub_1000BC580(&qword_1016A9220, &qword_1013BB1A0);
    sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9228);
  }

  return result;
}

uint64_t sub_100780324(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10078036C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100777D40(a1, *(v1 + 16));
}

void sub_10078037C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1007776C4(a1, *(v1 + 16));
}

uint64_t type metadata accessor for AttachedAccessoryEventsTransport()
{
  result = qword_1016A9298;
  if (!qword_1016A9298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100780448()
{
  sub_1007804C0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1007804C0()
{
  if (!qword_1016A92A8)
  {
    type metadata accessor for DeviceEvent(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A92A8);
    }
  }
}

unint64_t sub_100780528()
{
  result = qword_1016A92F0;
  if (!qword_1016A92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A92F0);
  }

  return result;
}

uint64_t sub_10078057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007805E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100780658()
{
  result = qword_1016A9300;
  if (!qword_1016A9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9300);
  }

  return result;
}

unint64_t sub_1007806B0()
{
  result = qword_1016A9308;
  if (!qword_1016A9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9308);
  }

  return result;
}

unint64_t sub_100780708()
{
  result = qword_1016A9310;
  if (!qword_1016A9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9310);
  }

  return result;
}

uint64_t sub_10078075C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010135F140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135F160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135F180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135F1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010135F1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135F1E0 == a2)
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

uint64_t sub_100780A4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for WildModeAssociationRecord(0);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for MACAddress();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 address];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  MACAddress.init(data:type:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &qword_1016A40D0, &unk_10138BE70);
    v22 = type metadata accessor for Date();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
    v24 = a2;
    (*(v17 + 32))(v20, v15, v16);
    v25 = *(v29 + 16);
    v26 = sub_10002F740();
    __chkstk_darwin(v26);
    *(&v29 - 2) = v20;
    sub_1012BC3D0(sub_10079934C, v26, v7);

    (*(v17 + 8))(v20, v16);
    v27 = v31;
    if ((*(v30 + 48))(v7, 1, v31) == 1)
    {
      sub_10000B3A8(v7, &unk_1016C7C90, &qword_1013BB4B0);
      v28 = type metadata accessor for Date();
      return (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    }

    else
    {
      sub_1007A91C8(v7, v11, type metadata accessor for WildModeAssociationRecord);
      sub_1000D2A70(&v11[*(v27 + 44)], v24, &unk_101696900, &unk_10138B1E0);
      return sub_1007A810C(v11, type metadata accessor for WildModeAssociationRecord);
    }
  }
}

Swift::Int sub_100780E54(void **a1)
{
  v2 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32124(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1007979C8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100780EFC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = type metadata accessor for Calendar.SearchDirection();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  __chkstk_darwin(v1);
  v51 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v44 = *(v50 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v50);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Calendar.MatchingPolicy();
  v40 = *(v55 - 8);
  v6 = v40;
  v7 = *(v40 + 64);
  __chkstk_darwin(v55);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A9620, &qword_1013BB5A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - v12;
  v14 = sub_1000BC4D4(&qword_1016A9628, &unk_1013BB5A8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v40 - v16;
  v18 = type metadata accessor for DateComponents();
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v45 = *(v22 - 8);
  v46 = v22;
  v23 = *(v45 + 64);
  __chkstk_darwin(v22);
  v41 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v26 = *(v25 - 8);
  v27 = v26;
  v42 = v25;
  v43 = v26;
  v28 = *(v26 + 64);
  __chkstk_darwin(v25);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  Date.init()();
  (*(v27 + 56))(v17, 1, 1, v25);
  v31 = type metadata accessor for TimeZone();
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  (*(v6 + 104))(v9, enum case for Calendar.MatchingPolicy.nextTime(_:), v55);
  v32 = v44;
  v34 = v49;
  v33 = v50;
  (*(v44 + 104))(v49, enum case for Calendar.RepeatedTimePolicy.first(_:), v50);
  v36 = v51;
  v35 = v52;
  v37 = v53;
  (*(v52 + 104))(v51, enum case for Calendar.SearchDirection.forward(_:), v53);
  v38 = v41;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v35 + 8))(v36, v37);
  (*(v32 + 8))(v34, v33);
  (*(v40 + 8))(v9, v55);
  (*(v47 + 8))(v21, v48);
  (*(v45 + 8))(v38, v46);
  return (*(v43 + 8))(v30, v42);
}

uint64_t sub_1007814F4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B2D0);
  sub_1000076D4(v0, qword_10177B2D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007817BC(void *a1)
{
  type metadata accessor for TrackingAvoidanceError(0);
  sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
  _BridgedStoredNSError.code.getter();
  if (v9 <= 6)
  {
    if ((v9 - 1) >= 4)
    {
      if (v9 == 5)
      {
        return 1;
      }

      if (v9 != 6)
      {
LABEL_16:
        if (qword_101694910 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_1000076D4(v3, qword_10177B2D0);
        v4 = a1;
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134217984;
          _BridgedStoredNSError.code.getter();
          *(v7 + 4) = v8;

          _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected TrackingAvoidanceError %ld!", v7, 0xCu);
        }

        else
        {
        }
      }
    }

    return 0;
  }

  if (v9 > 0xD)
  {
    goto LABEL_12;
  }

  if (((1 << v9) & 0x3600) != 0)
  {
    return 0;
  }

  if (v9 != 8)
  {
    if (v9 == 11)
    {
      return 3;
    }

LABEL_12:
    if (v9 == 7)
    {
      return 2;
    }

    goto LABEL_16;
  }

  return 4;
}

uint64_t SPUnauthorizedTrackingObservationType.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x746C75616665642ELL;
  }

  if (a1 == 1)
  {
    return 0x4D6E4F706565622ELL;
  }

  type metadata accessor for TrackingObservationType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100781A68()
{
  if (!*v0)
  {
    return 0x746C75616665642ELL;
  }

  if (*v0 == 1)
  {
    return 0x4D6E4F706565622ELL;
  }

  v2 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t SPUnauthorizedTrackingObservationAction.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6465676174732ELL;
    }

    if (a1 == 1)
    {
      return 0x796669746F6E2ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6574616470752ELL;
      case 3:
        return 0x65676174736E752ELL;
      case 4:
        return 0x617264687469772ELL;
    }
  }

  return 0x6E776F6E6B6E752ELL;
}

uint64_t sub_100781BB0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6465676174732ELL;
    }

    if (v1 == 1)
    {
      return 0x796669746F6E2ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6574616470752ELL;
      case 3:
        return 0x65676174736E752ELL;
      case 4:
        return 0x617264687469772ELL;
    }
  }

  return 0x6E776F6E6B6E752ELL;
}

uint64_t sub_100781C80()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A9318);
  v1 = sub_1000076D4(v0, qword_1016A9318);
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B2D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100781D48(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100799304(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[2] = v16;
  v2[3] = v12;
  v13 = v17;
  v2[4] = &_swiftEmptySetSingleton;
  v2[5] = v13;
  return v2;
}

void sub_100781FD8(unint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v83 = a3;
  v84 = a2;
  v75 = type metadata accessor for UnwantedTrackingUserNotification();
  v5 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v80 = &v65 - v10;
  v79 = type metadata accessor for WildModeAssociationRecord(0);
  v87 = *(v79 - 8);
  v11 = *(v87 + 8);
  __chkstk_darwin(v79);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v82 = &v65 - v16;
  v17 = type metadata accessor for MACAddress();
  v86 = *(v17 - 8);
  v18 = *(v86 + 64);
  __chkstk_darwin(v17);
  v88 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v85 = v17;
    v20 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10138BBE0;
    v22 = *v3;
    v81 = v3;
    v90 = v22;
    sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v21 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v26;
    v66 = v26;
    *(v21 + 64) = v26;
    *(v21 + 72) = 0xD00000000000003BLL;
    *(v21 + 80) = 0x800000010135F320;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v27 = qword_10177C3F8;
    v3 = swift_allocObject();
    v69 = xmmword_101385D80;
    *(v3 + 16) = xmmword_101385D80;
    v28 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 56) = &type metadata for Int;
    *(v3 + 64) = &protocol witness table for Int;
    *(v3 + 32) = v28;
    os_log(_:dso:log:_:_:)();

    v67 = v20;
    v68 = v27;
    v30 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v85;
    if (!v30)
    {
      break;
    }

    v31 = 0;
    v78 = a1 & 0xC000000000000001;
    v77 = a1 & 0xFFFFFFFFFFFFFF8;
    v76 = (v86 + 48);
    v73 = (v86 + 32);
    v72 = (v87 + 48);
    v74 = (v86 + 8);
    *&v29 = 67109120;
    v70 = v29;
    v71 = a1;
    while (v78)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_35;
      }

LABEL_14:
      v34 = v30;
      v87 = v32;
      v35 = [v32 trackingIdentifier];
      v36 = [v35 address];

      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v82;
      MACAddress.init(data:type:)();
      if ((*v76)(v37, 1, v17) == 1)
      {
        sub_10000B3A8(v37, &qword_1016A40D0, &unk_10138BE70);
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        type metadata accessor for TrackingAvoidanceError(0);
        v89 = 3;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        inited = swift_initStackObject();
        *(inited + 16) = v69;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v55;
        *(inited + 48) = 0xD00000000000001ALL;
        *(inited + 56) = 0x800000010135F300;
        sub_10090403C(inited);
        swift_setDeallocating();
        sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v56 = v90;
        v84(v90);

        return;
      }

      v38 = v88;
      (*v73)(v88, v37, v17);
      v39 = *(v81 + 16);
      v40 = v80;
      sub_10125FD10(v38, v80);
      if ((*v72)(v40, 1, v79) == 1)
      {
        sub_10000B3A8(v40, &unk_1016C7C90, &qword_1013BB4B0);
        static os_log_type_t.error.getter();
        v57 = swift_allocObject();
        *(v57 + 16) = v69;
        v58 = v88;
        v59 = MACAddress.description.getter();
        v60 = v66;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = v60;
        *(v57 + 32) = v59;
        *(v57 + 40) = v61;
        os_log(_:dso:log:_:_:)();

        type metadata accessor for TrackingAvoidanceError(0);
        v89 = 10;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        v62 = swift_initStackObject();
        *(v62 + 16) = v69;
        *(v62 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v62 + 72) = &type metadata for String;
        *(v62 + 40) = v63;
        *(v62 + 48) = 0xD000000000000021;
        *(v62 + 56) = 0x800000010135F3D0;
        sub_10090403C(v62);
        swift_setDeallocating();
        sub_10000B3A8(v62 + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v64 = v90;
        v84(v90);

        (*v74)(v58, v85);
        return;
      }

      v86 = v33;
      sub_1007A91C8(v40, v13, type metadata accessor for WildModeAssociationRecord);
      v41 = *(v39 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for URL();
      v43 = sub_1000076D4(v42, qword_10177A8D0);
      v44 = *(v41 + 16);
      v45 = __chkstk_darwin(v43);
      *(&v65 - 4) = v41;
      *(&v65 - 3) = v13;
      *(&v65 - 2) = v45;
      OS_dispatch_queue.sync<A>(execute:)();
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177BA08);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = v70;
        _os_log_impl(&_mh_execute_header, v47, v48, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v49, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      v17 = v85;
      if (v50)
      {
      }

      v51 = v87;
      v30 = v34;
      sub_100A8AF58();
      v52 = v75;
      sub_1007A7DFC(v13, &v7[*(v75 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v7 = 2;
      v7[*(v52 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10079936C(v7);
      v3 = v83;
      v84(0);

      sub_1007A810C(v7, type metadata accessor for UnwantedTrackingUserNotification);
      (*v74)(v88, v17);
      sub_1007A810C(v13, type metadata accessor for WildModeAssociationRecord);
      ++v31;
      v53 = v86 == v34;
      a1 = v71;
      if (v53)
      {
        return;
      }
    }

    if (v31 >= *(v77 + 16))
    {
      goto LABEL_36;
    }

    v32 = *(a1 + 8 * v31 + 32);
    v33 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_14;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }
}

void sub_100782CBC(void *a1, void *a2, void (*a3)(uint64_t, void *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v44 = a2, swift_errorRetain(), sub_1000BC4D4(&qword_101696960, &unk_10138B220), type metadata accessor for TrackingAvoidanceError(0), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v43;
    v12 = sub_1007817BC(v43);
    if (v13)
    {
      v14 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = objc_allocWithZone(SPTrackingAvoidanceResult);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      sub_100008BB8(0, &qword_1016A9618, SPTrackingAvoidancePolicy_ptr);
      v17 = Array._bridgeToObjectiveC()().super.isa;
      v18 = [v15 initWithIdentifier:isa type:5 policies:v17];

      (*(v7 + 8))(v10, v6);
      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10138C320;
      *(inited + 32) = v18;
      v20 = v18;
      v21 = sub_10112B0F0(inited);
      swift_setDeallocating();
      v22 = *(inited + 16);
      swift_arrayDestroy();
      v23 = v11;
      a3(v21, v11);

      return;
    }

    v33 = v12;
    v34 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = objc_allocWithZone(SPTrackingAvoidanceResult);
    v36 = UUID._bridgeToObjectiveC()().super.isa;
    sub_100008BB8(0, &qword_1016A9618, SPTrackingAvoidancePolicy_ptr);
    v37 = Array._bridgeToObjectiveC()().super.isa;
    v38 = [v35 initWithIdentifier:v36 type:v33 policies:v37];

    (*(v7 + 8))(v10, v6);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10138C320;
    *(v39 + 32) = v38;
    v30 = v38;
    v40 = sub_10112B0F0(v39);
    swift_setDeallocating();
    v41 = *(v39 + 16);
    swift_arrayDestroy();
    a3(v40, 0);
  }

  else
  {
    v24 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = objc_allocWithZone(SPTrackingAvoidanceResult);
    v26 = UUID._bridgeToObjectiveC()().super.isa;
    sub_100008BB8(0, &qword_1016A9618, SPTrackingAvoidancePolicy_ptr);
    v27 = Array._bridgeToObjectiveC()().super.isa;
    v28 = [v25 initWithIdentifier:v26 type:0 policies:v27];

    (*(v7 + 8))(v10, v6);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_10138C320;
    *(v29 + 32) = v28;
    v30 = v28;
    v31 = sub_10112B0F0(v29);
    swift_setDeallocating();
    v32 = *(v29 + 16);
    swift_arrayDestroy();
    a3(v31, a2);
  }
}

uint64_t sub_100783194(uint64_t a1, void (*a2)(void *, uint64_t))
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100B134FC(_swiftEmptyArrayStorage);
    v4 = v6;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  a2(v4, a1);
}

uint64_t sub_100783224@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v297 = a2;
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v283 = v274 - v6;
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v281 = v274 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v282 = v274 - v12;
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v284 = v274 - v15;
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v293 = (v274 - v18);
  v19 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v286 = v274 - v21;
  v291 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *&v296 = *(v291 - 8);
  v22 = *(v296 + 64);
  __chkstk_darwin(v291);
  v285 = v274 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v290 = v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v280 = v274 - v29;
  __chkstk_darwin(v28);
  v288 = v274 - v30;
  v292 = type metadata accessor for MACAddress();
  v294 = *(v292 - 8);
  v31 = *(v294 + 8);
  v32 = __chkstk_darwin(v292);
  *&v295 = v274 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v289 = v274 - v34;
  v35 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = v274 - v37;
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v44 = v274 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = v274 - v45;
  *&v298 = a1;
  v47 = [a1 trackingIdentifier];
  v287 = v2;
  sub_100780A4C(v47, v38);

  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    v279 = v8;
    sub_10000B3A8(v38, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v40 + 32))(v46, v38, v39);
    static Date.trustedNow.getter(v44);
    v48 = static Date.> infix(_:_:)();
    v49 = *(v40 + 8);
    v49(v44, v39);
    if (v48)
    {
      v294 = v49;
      *&v295 = v46;
      v293 = " present in the request";
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      v296 = xmmword_101385D80;
      *(v50 + 16) = xmmword_101385D80;
      v51 = [v298 trackingIdentifier];
      v52 = [v51 advertisementData];

      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = Data.hexString.getter();
      v58 = v57;
      sub_100016590(v53, v55);
      *(v50 + 56) = &type metadata for String;
      v59 = sub_100008C00();
      *(v50 + 64) = v59;
      *(v50 + 32) = v56;
      *(v50 + 40) = v58;
      v60 = String.init(format:_:)();
      v62 = v61;
      static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v63 = swift_allocObject();
      *(v63 + 16) = v296;
      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = v59;
      *(v63 + 32) = v60;
      *(v63 + 40) = v62;

      os_log(_:dso:log:_:_:)();

      type metadata accessor for TrackingAvoidanceError(0);
      v301 = 7;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v64 = swift_allocObject();
      *(v64 + 16) = v296;
      *(v64 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v64 + 72) = &type metadata for String;
      *(v64 + 40) = v65;
      *(v64 + 48) = v60;
      *(v64 + 56) = v62;
      sub_10090403C(v64);
      swift_setDeallocating();
      sub_10000B3A8(v64 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v294(v295, v39);
      goto LABEL_125;
    }

    v279 = v8;
    v49(v46, v39);
  }

  v66 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  v67 = [v298 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v68 >> 62))
  {
    v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_10;
    }

LABEL_123:

    static os_log_type_t.error.getter();
    if (qword_1016950B0 == -1)
    {
LABEL_124:
      os_log(_:dso:log:_:_:)();
      type metadata accessor for TrackingAvoidanceError(0);
      v301 = 4;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v272 = swift_allocObject();
      *(v272 + 16) = xmmword_101385D80;
      *(v272 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v272 + 72) = &type metadata for String;
      *(v272 + 40) = v273;
      *(v272 + 48) = 0xD000000000000027;
      *(v272 + 56) = 0x800000010135F5B0;
      sub_10090403C(v272);
      swift_setDeallocating();
      sub_10000B3A8(v272 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_125;
    }

LABEL_132:
    swift_once();
    goto LABEL_124;
  }

  v69 = _CocoaArrayWrapper.endIndex.getter();
  if (!v69)
  {
    goto LABEL_123;
  }

LABEL_10:
  v70 = __OFSUB__(v69, 1);
  v71 = v69 - 1;
  if (v70)
  {
    __break(1u);
  }

  else if ((v68 & 0xC000000000000001) == 0)
  {
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_130;
    }

    if (v71 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v72 = *(v68 + 8 * v71 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_132;
  }

  v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v47 = v72;

  v73 = [v298 observedLocations];
  v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v277 = v7;
  v66 = (v68 & 0xFFFFFFFFFFFFFF8);
  if (v68 >> 62)
  {
LABEL_130:
    v74 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }

  v74 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v75 = 0;
  while (1)
  {
    if (v74 == v75)
    {

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v79 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v80 = sub_101074534(v299);

      if ((v80 & 1) == 0)
      {
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        v299 = 0x7365547265646E75;
        v300 = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        if (v301 != 1)
        {
          static os_log_type_t.error.getter();
          if (qword_1016950B0 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          type metadata accessor for TrackingAvoidanceError(0);
          v301 = 5;
          sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_101385D80;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = inited + 32;
          v98 = 0x800000010135FDB0;
          *(inited + 72) = &type metadata for String;
          v99 = 0xD000000000000029;
          goto LABEL_45;
        }
      }

      v81 = v297;
      v275 = v47;
      v82 = [v298 trackingIdentifier];
      v83 = [v82 data];

      v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_1000076D4(v87, qword_1016A9318);
      sub_100017D5C(v84, v86);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.default.getter();
      v90 = os_log_type_enabled(v88, v89);
      v278 = v84;
      v276 = v86;
      v274[1] = 0;
      if (!v90)
      {
        sub_100016590(v84, v86);
        goto LABEL_54;
      }

      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v299 = v92;
      *v91 = 134218242;
      v93 = v86 >> 62;
      if ((v86 >> 62) > 1)
      {
        if (v93 != 2)
        {
          v94 = 0;
          goto LABEL_53;
        }

        v101 = *(v84 + 16);
        v100 = *(v84 + 24);
        v70 = __OFSUB__(v100, v101);
        v94 = v100 - v101;
        if (!v70)
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else if (!v93)
      {
        v94 = BYTE6(v86);
LABEL_53:
        *(v91 + 4) = v94;
        sub_100016590(v84, v86);
        *(v91 + 12) = 2082;
        v102 = Data.hexString.getter();
        v104 = sub_1000136BC(v102, v103, &v299);

        *(v91 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v88, v89, "Decoding advertisement from advertisementData[%ld]: %{public}s", v91, 0x16u);
        sub_100007BAC(v92);

LABEL_54:

        v105 = v81;
        v106 = v298;
        v107 = [v298 trackingIdentifier];
        v108 = [v107 isPosh];

        v109 = [v106 trackingIdentifier];
        v110 = [v109 networkID];

        v111 = [v106 trackingIdentifier];
        v112 = [v111 status];

        if (v110 == 1)
        {
          v113 = 5;
        }

        else
        {
          v113 = 6;
        }

        if (v108)
        {
          v114 = v113;
        }

        else
        {
          v114 = (v112 >> 4) & 3;
        }

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v299 = v118;
          *v117 = 136446210;
          v119 = sub_100781578(v114);
          v121 = sub_1000136BC(v119, v120, &v299);

          *(v117 + 4) = v121;
          _os_log_impl(&_mh_execute_header, v115, v116, "UnauthorizedTrackingAdvertisementType: %{public}s", v117, 0xCu);
          sub_100007BAC(v118);
        }

        v122 = v278;
        v123 = v296;
        v124 = v295;
        switch(v114)
        {
          case 4u:
            v150 = v298;
            v151 = Logger.logObject.getter();
            v152 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              *v153 = 67109632;
              v154 = [v150 trackingIdentifier];
              v155 = [v154 isPosh];

              *(v153 + 4) = v155;
              *(v153 + 8) = 256;
              v156 = [v150 trackingIdentifier];
              LOBYTE(v155) = [v156 networkID];

              *(v153 + 10) = v155;
              *(v153 + 11) = 256;
              v157 = [v150 trackingIdentifier];
              LOBYTE(v155) = [v157 status];

              *(v153 + 13) = v155;
              _os_log_impl(&_mh_execute_header, v151, v152, "Unknown advertisement type. isPosh: %{BOOL}d networkID: %hhu status: %hhu", v153, 0xEu);
            }

            else
            {

              v151 = v150;
            }

            type metadata accessor for TrackingAvoidanceError(0);
            v301 = 6;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v179 = swift_initStackObject();
            *(v179 + 16) = xmmword_101385D80;
            *(v179 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v179 + 72) = &type metadata for String;
            *(v179 + 40) = v180;
            *(v179 + 48) = 0xD00000000000001ALL;
            *(v179 + 56) = 0x800000010135F4B0;
            sub_10090403C(v179);
            swift_setDeallocating();
            sub_10000B3A8(v179 + 32, &unk_101695C20, &unk_101386D90);
            sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v163 = v278;
            v164 = v276;
            goto LABEL_84;
          case 6u:
            v132 = [v298 trackingIdentifier];
            v133 = [v132 address];

            v134 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v136 = v135;

            sub_100017D5C(v134, v136);
            v137 = v288;
            MACAddress.init(data:type:)();
            v138 = v294;
            v139 = v292;
            if ((*(v294 + 6))(v137, 1, v292) == 1)
            {
              sub_10000B3A8(v137, &qword_1016A40D0, &unk_10138BE70);
              sub_100017D5C(v134, v136);
              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.error.getter();
              sub_100016590(v134, v136);
              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v299 = v143;
                *v142 = 136446210;
                v144 = Data.hexString.getter();
                v146 = sub_1000136BC(v144, v145, &v299);

                *(v142 + 4) = v146;
                _os_log_impl(&_mh_execute_header, v140, v141, "Invalid MAC address %{public}s", v142, 0xCu);
                sub_100007BAC(v143);
              }

              v147 = v297;
              type metadata accessor for TrackingAvoidanceError(0);
              v301 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v148 = swift_initStackObject();
              *(v148 + 16) = xmmword_101385D80;
              *(v148 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v148 + 72) = &type metadata for String;
              *(v148 + 40) = v149;
              *(v148 + 48) = 0xD00000000000001FLL;
              *(v148 + 56) = 0x800000010135F4D0;
              sub_10090403C(v148);
              swift_setDeallocating();
              sub_10000B3A8(v148 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              sub_100016590(v278, v276);

              sub_100016590(v134, v136);
              *v147 = v299;
              sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
            }

            else
            {
              v165 = v275;
              v166 = v137;
              v167 = v289;
              *&v298 = *(v138 + 4);
              (v298)(v289, v166, v139);
              (*(v138 + 2))(v124, v167, v139);
              v168 = Logger.logObject.getter();
              v169 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                *&v295 = v170;
                *&v296 = swift_slowAlloc();
                v299 = v296;
                *v170 = 136446210;
                sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress);
                v293 = v168;
                v171 = dispatch thunk of CustomStringConvertible.description.getter();
                v173 = v172;
                (*(v138 + 1))(v124, v139);
                v174 = v139;
                v175 = sub_1000136BC(v171, v173, &v299);

                v176 = v295;
                *(v295 + 4) = v175;
                v177 = v293;
                _os_log_impl(&_mh_execute_header, v293, v169, "Posh address: %{public}s", v176, 0xCu);
                sub_100007BAC(v296);
                v178 = v275;

                sub_100016590(v278, v276);
                sub_100016590(v134, v136);
              }

              else
              {
                sub_100016590(v278, v276);
                sub_100016590(v134, v136);

                (*(v138 + 1))(v124, v139);
                v174 = v139;
                v178 = v165;
              }

              v192 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
              v193 = v192[12];
              v194 = v192[16];
              v195 = v192[20];
              v196 = v192[24];
              v197 = v297;
              (v298)(v297, v289, v174);
              *&v197[v193] = xmmword_1013B6600;
              (*(v279 + 56))(&v197[v194], 1, 1, v277);
              *&v197[v195] = v178;
              v197[v196] = 4;
LABEL_105:
              sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
            }

            return swift_storeEnumTagMultiPayload();
          case 5u:
            v125 = v276;
            sub_100017D5C(v278, v276);
            sub_100497060(v122, v125, &v299);
            v126 = v300;
            if (v300 >> 60 == 15)
            {
              v127 = Logger.logObject.getter();
              v128 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                *v129 = 0;
                _os_log_impl(&_mh_execute_header, v127, v128, "received an advertisement of unexpected length or format", v129, 2u);
              }

              type metadata accessor for TrackingAvoidanceError(0);
              v301 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v130 = swift_allocObject();
              *(v130 + 16) = xmmword_101385D80;
              *(v130 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v130 + 72) = &type metadata for String;
              *(v130 + 40) = v131;
              *(v130 + 48) = 0xD00000000000001ALL;
              *(v130 + 56) = 0x800000010135F300;
              sub_10090403C(v130);
              swift_setDeallocating();
              sub_10000B3A8(v130 + 32, &unk_101695C20, &unk_101386D90);
              swift_deallocClassInstance();
LABEL_79:
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v163 = v278;
              v164 = v125;
LABEL_84:
              sub_100016590(v163, v164);

LABEL_85:
              *v105 = v299;
              sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
              return swift_storeEnumTagMultiPayload();
            }

            v181 = v299;
            v182 = 4;
            break;
          default:
            v125 = v276;
            sub_100017D5C(v278, v276);
            sub_100497060(v122, v125, &v299);
            v126 = v300;
            if (v300 >> 60 == 15)
            {
              v158 = Logger.logObject.getter();
              v159 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v158, v159))
              {
                v160 = swift_slowAlloc();
                *v160 = 0;
                _os_log_impl(&_mh_execute_header, v158, v159, "received an advertisement of unexpected length or format", v160, 2u);
              }

              type metadata accessor for TrackingAvoidanceError(0);
              v301 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v161 = swift_initStackObject();
              *(v161 + 16) = xmmword_101385D80;
              *(v161 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v161 + 72) = &type metadata for String;
              *(v161 + 40) = v162;
              *(v161 + 48) = 0xD00000000000001ALL;
              *(v161 + 56) = 0x800000010135F300;
              sub_10090403C(v161);
              swift_setDeallocating();
              sub_10000B3A8(v161 + 32, &unk_101695C20, &unk_101386D90);
              goto LABEL_79;
            }

            v181 = v299;
            sub_100017D5C(v299, v300);
            v186 = [v298 trackingIdentifier];
            v187 = [v186 status];

            v188 = (v187 >> 4) & 3;
            if (v188 > 1)
            {
              v185 = v286;
              if (v188 == 2)
              {
                sub_100006654(v181, v126);
                v198 = 2;
              }

              else
              {
                sub_100006654(v181, v126);
                v198 = 3;
              }

              LODWORD(v295) = v198;
              v183 = v294;
              v184 = v290;
LABEL_100:
              v199 = *(v287 + 16);
              v200 = *&v199[OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock];
              sub_100017D5C(v181, v126);
              type metadata accessor for BeaconKeyManager(0);
              v289 = v199;
              v201 = v181;
              OSAllocatedUnfairLock.callAsFunction<A>(_:)();
              v202 = type metadata accessor for UUID();
              v203 = 1;
              v204 = v293;
              (*(*(v202 - 8) + 56))(v293, 1, 1, v202);
              *&v296 = v201;
              v205 = sub_1012DD334(v201, v126, v204);
              v206 = v205[2];
              if (v206)
              {
                sub_1007A7DFC(v205 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * (v206 - 1), v185, type metadata accessor for BeaconKeyManager.IndexInformation);
                v203 = 0;
              }

              sub_10000B3A8(v293, &qword_1016980D0, &unk_10138F3B0);
              v207 = v291;
              (*(v123 + 56))(v185, v203, 1, v291);
              if ((*(v123 + 48))(v185, 1, v207) == 1)
              {
                sub_10000B3A8(v185, &unk_1016C1120, &qword_1013C49D0);
                v208 = v296;
                sub_100017D5C(v296, v126);
                v209 = static MACAddress.length.getter();
                sub_10002EA98(v209, v208, v126, &v299);
                MACAddress.init(data:type:)();
                v210 = v126;
                v211 = v292;
                result = (*(v183 + 6))(v184, 1, v292);
                if (result != 1)
                {
                  sub_100006654(v208, v210);
                  v213 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
                  v214 = v297;
                  v215 = (v297 + v213[12]);
                  v216 = v208;
                  v217 = v213[16];
                  v218 = v213[20];
                  v219 = v213[24];
                  sub_100016590(v278, v276);
                  (*(v183 + 4))(v214, v290, v211);
                  *v215 = v216;
                  v215[1] = v210;
                  (*(v279 + 56))(&v214[v217], 1, 1, v277);
                  *&v214[v218] = v275;
                  v214[v219] = v295;
                  goto LABEL_105;
                }

                __break(1u);
                goto LABEL_136;
              }

              v293 = v126;
              v86 = v285;
              sub_1007A91C8(v185, v285, type metadata accessor for BeaconKeyManager.IndexInformation);
              static os_log_type_t.default.getter();
              if (qword_1016950B0 == -1)
              {
LABEL_107:
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v220 = swift_allocObject();
                *(v220 + 16) = xmmword_10138BBE0;
                v221 = UUID.uuidString.getter();
                v223 = v222;
                *(v220 + 56) = &type metadata for String;
                v224 = sub_100008C00();
                *(v220 + 64) = v224;
                *(v220 + 32) = v221;
                *(v220 + 40) = v223;
                v225 = (v86 + *(v291 + 20));
                v226 = v225[4];
                sub_1000035D0(v225, v225[3]);
                *(v220 + 96) = &type metadata for UInt64;
                *(v220 + 104) = &protocol witness table for UInt64;
                v227 = *(v226 + 56);
                dispatch thunk of RawRepresentable.rawValue.getter();
                os_log(_:dso:log:_:_:)();

                v228 = v284;
                sub_100AA33AC(v86, v284);
                v229 = type metadata accessor for OwnedBeaconRecord();
                if ((*(*(v229 - 8) + 48))(v228, 1, v229) != 1)
                {
                  sub_100006654(v296, v293);
                  sub_10000B3A8(v228, &unk_1016A9A20, &qword_10138B280);
                  static os_log_type_t.default.getter();
                  os_log(_:dso:log:_:_:)();
                  v237 = swift_allocObject();
                  v295 = xmmword_101385D80;
                  *(v237 + 16) = xmmword_101385D80;
                  v238 = [v298 trackingIdentifier];
                  v239 = [v238 advertisementData];

                  v240 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v242 = v241;

                  v243 = Data.hexString.getter();
                  v245 = v244;
                  sub_100016590(v240, v242);
                  *(v237 + 56) = &type metadata for String;
                  *(v237 + 64) = v224;
                  *(v237 + 32) = v243;
                  *(v237 + 40) = v245;
                  v246 = String.init(format:_:)();
                  v248 = v247;
                  type metadata accessor for TrackingAvoidanceError(0);
                  v301 = 8;
                  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
                  v249 = swift_allocObject();
                  *(v249 + 16) = v295;
                  *(v249 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(v249 + 72) = &type metadata for String;
                  *(v249 + 40) = v250;
                  *(v249 + 48) = v246;
                  *(v249 + 56) = v248;
                  sub_10090403C(v249);
                  swift_setDeallocating();
                  sub_10000B3A8(v249 + 32, &unk_101695C20, &unk_101386D90);
                  swift_deallocClassInstance();
                  sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
                  _BridgedStoredNSError.init(_:userInfo:)();
                  sub_100016590(v278, v276);

                  sub_100006654(v296, v293);
                  sub_1007A810C(v86, type metadata accessor for BeaconKeyManager.IndexInformation);
LABEL_125:
                  *v297 = v299;
                  sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
                  return swift_storeEnumTagMultiPayload();
                }

                sub_10000B3A8(v228, &unk_1016A9A20, &qword_10138B280);
                v230 = v283;
                sub_100AA5198(v86, v283);
                v231 = v279;
                v232 = v277;
                v233 = (*(v279 + 48))(v230, 1, v277);
                v234 = v275;
                if (v233 == 1)
                {
                  v235 = v296;
                  v236 = v293;
                  sub_100006654(v296, v293);
                  sub_10000B3A8(v230, &unk_101698C30, &unk_101392630);
                }

                else
                {
                  v46 = v282;
                  sub_1007A91C8(v230, v282, type metadata accessor for SharedBeaconRecord);
                  v251 = v46[*(v232 + 64)];
                  if (v251 == 4 || v251 == 1)
                  {
                    v279 = v231;
                    static os_log_type_t.default.getter();
                    v252 = swift_allocObject();
                    v298 = xmmword_101385D80;
                    *(v252 + 16) = xmmword_101385D80;
                    sub_1007A7DFC(v46, v281, type metadata accessor for SharedBeaconRecord);
                    v253 = String.init<A>(describing:)();
                    *(v252 + 56) = &type metadata for String;
                    *(v252 + 64) = v224;
                    *(v252 + 32) = v253;
                    *(v252 + 40) = v254;
                    os_log(_:dso:log:_:_:)();

                    if ((sub_100785DE8(&v46[*(v232 + 20)]) & 1) == 0)
                    {
                      goto LABEL_117;
                    }

                    v255 = v296;
                    sub_100006654(v296, v293);
                    v256 = String.init(format:_:)();
                    v258 = v257;
                    static os_log_type_t.default.getter();
                    v259 = swift_allocObject();
                    *(v259 + 16) = v298;
                    *(v259 + 56) = &type metadata for String;
                    *(v259 + 64) = v224;
                    *(v259 + 32) = v256;
                    *(v259 + 40) = v258;

                    os_log(_:dso:log:_:_:)();

                    type metadata accessor for TrackingAvoidanceError(0);
                    v301 = 7;
                    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
                    v260 = swift_initStackObject();
                    *(v260 + 16) = v298;
                    *(v260 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(v260 + 72) = &type metadata for String;
                    *(v260 + 40) = v261;
                    *(v260 + 48) = v256;
                    *(v260 + 56) = v258;
                    sub_10090403C(v260);
                    swift_setDeallocating();
                    sub_10000B3A8(v260 + 32, &unk_101695C20, &unk_101386D90);
                    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
                    _BridgedStoredNSError.init(_:userInfo:)();

                    sub_100006654(v255, v293);
                    sub_100016590(v278, v276);
                    sub_1007A810C(v46, type metadata accessor for SharedBeaconRecord);
                    goto LABEL_121;
                  }

                  v235 = v296;
                  v236 = v293;
                  sub_100006654(v296, v293);
                  sub_1007A810C(v46, type metadata accessor for SharedBeaconRecord);
                  v234 = v275;
                }

                type metadata accessor for TrackingAvoidanceError(0);
                v301 = 6;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
                _BridgedStoredNSError.init(_:userInfo:)();
                sub_100016590(v278, v276);

                sub_100006654(v235, v236);
LABEL_121:
                sub_1007A810C(v285, type metadata accessor for BeaconKeyManager.IndexInformation);
                goto LABEL_125;
              }

LABEL_134:
              swift_once();
              goto LABEL_107;
            }

            if (!v188)
            {
              v189 = v181;
              static os_log_type_t.error.getter();
              if (qword_1016950B0 != -1)
              {
                swift_once();
              }

              os_log(_:dso:log:_:_:)();
              type metadata accessor for TrackingAvoidanceError(0);
              v301 = 6;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v190 = swift_initStackObject();
              *(v190 + 16) = xmmword_101385D80;
              *(v190 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v190 + 72) = &type metadata for String;
              *(v190 + 40) = v191;
              *(v190 + 48) = 0xD00000000000001DLL;
              *(v190 + 56) = 0x800000010135FE00;
              sub_10090403C(v190);
              swift_setDeallocating();
              sub_10000B3A8(v190 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
              _BridgedStoredNSError.init(_:userInfo:)();
              sub_100006654(v189, v126);
              sub_100016590(v278, v125);

              sub_100006654(v189, v126);
              goto LABEL_85;
            }

            sub_100006654(v181, v126);
            v182 = 1;
            break;
        }

        LODWORD(v295) = v182;
        v183 = v294;
        v184 = v290;
        v185 = v286;
        goto LABEL_100;
      }

      LODWORD(v94) = HIDWORD(v84) - v84;
      if (__OFSUB__(HIDWORD(v84), v84))
      {
        __break(1u);
        goto LABEL_134;
      }

      v94 = v94;
      goto LABEL_53;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v75 >= v66[2])
      {
        goto LABEL_116;
      }

      v76 = *(v68 + 8 * v75 + 32);
    }

    v77 = v76;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    v78 = sub_1010E13F0();

    ++v75;
    if (v78)
    {

      static os_log_type_t.error.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      type metadata accessor for TrackingAvoidanceError(0);
      v301 = 11;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = inited + 32;
      v98 = 0x800000010135F490;
      *(inited + 72) = &type metadata for String;
      v99 = 0xD00000000000001CLL;
LABEL_45:
      *(inited + 40) = v96;
      *(inited + 48) = v99;
      *(inited + 56) = v98;
      sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(v97, &unk_101695C20, &unk_101386D90);
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
      _BridgedStoredNSError.init(_:userInfo:)();

      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v262 = v296;
  v263 = v293;
  sub_100017D5C(v296, v293);
  v264 = static MACAddress.length.getter();
  sub_10002EA98(v264, v262, v263, &v299);
  v265 = v280;
  MACAddress.init(data:type:)();
  v266 = v294;
  v267 = v292;
  result = (*(v294 + 6))(v265, 1, v292);
  if (result != 1)
  {
    sub_100006654(v262, v263);
    v268 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
    v269 = v297;
    v270 = (v297 + v268[12]);
    v271 = v268[16];
    *&v298 = v268[20];
    v291 = v268[24];
    sub_100016590(v278, v276);
    (*(v266 + 4))(v269, v265, v267);
    sub_1007A810C(v285, type metadata accessor for BeaconKeyManager.IndexInformation);
    *v270 = v262;
    v270[1] = v263;
    sub_1007A91C8(v46, &v269[v271], type metadata accessor for SharedBeaconRecord);
    (*(v279 + 56))(&v269[v271], 0, 1, v277);
    *&v269[v298] = v275;
    v269[v291] = v295;
    goto LABEL_105;
  }

LABEL_136:
  __break(1u);
  return result;
}