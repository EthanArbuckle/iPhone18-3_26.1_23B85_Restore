__n128 sub_1000A2240(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

void sub_1000A22F4()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A5F34(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A5F34(319, &qword_100835DF8, &unk_100835E00, &qword_1006C46A0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000A241C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000A2464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A24D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000A2518(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000A257C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000A2594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1000A25C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1000A2608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A2680(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000A26AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1000A26F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A2768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000A27B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A2834(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100007224(&qword_100835E40, &qword_1006C49F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A2984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100007224(&qword_100835E40, &qword_1006C49F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A2AE0()
{
  sub_1000A437C(319, &qword_100835EB0, &type metadata for AppleCredentials, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A5F34(319, &qword_100835EB8, &qword_100833680, &qword_1006C4A20, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10007FA34(319, &qword_100835EC0, type metadata accessor for TiberiusWrappedAssessment, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000A437C(319, &qword_100835EC8, &type metadata for ImageQualityMetricData, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000A437C(319, &qword_100835ED0, &type metadata for KeyAuthorization, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_10007FA34(319, &qword_100835ED8, type metadata accessor for LivenessDataV2, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000A5F34(319, &qword_100835EE0, &unk_100835EE8, &qword_1006C4A28, &type metadata accessor for Optional);
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

uint64_t sub_1000A2DE4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000A2E00(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000A2E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_1000A2E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A2F14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000A2F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000A2FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_1000A3014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A305C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A30D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1000A30E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1000A312C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A3180(uint64_t a1, int a2)
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

uint64_t sub_1000A31C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1000A3238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HardwareAttestationType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000A338C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HardwareAttestationType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000A34E0()
{
  type metadata accessor for HardwareAttestationType();
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A437C(319, &qword_100835FC0, &type metadata for IDSPACData, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &unk_100835FC8, &qword_10084A0E0, &qword_1006E9E70, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_1000A3608(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000A3644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1000A368C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A371C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_100836008, &unk_1006C4F00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A37F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_100836008, &unk_1006C4F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000A38C8()
{
  sub_1000A5F34(319, &qword_100835488, &unk_10084A230, &qword_1006C0F50, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A5F34(319, &qword_100836078, &unk_100836080, &qword_1006C4F30, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A39A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1000A3A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A3A88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_1008360B0, &qword_1006C4F88);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A3B64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_1008360B0, &qword_1006C4F88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000A3C34()
{
  sub_1000A5F34(319, &qword_100835488, &unk_10084A230, &qword_1006C0F50, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10007FA34(319, &unk_100836120, &type metadata accessor for EncryptionParamsAlgorithmIdentifier, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000A3D54(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000A3D98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A3DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A3E6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A3EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A3F28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HardwareAttestationType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A3FE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HardwareAttestationType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000A40AC()
{
  sub_1000A437C(319, &qword_100835EB0, &type metadata for AppleCredentials, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HardwareAttestationType();
    if (v1 <= 0x3F)
    {
      sub_1000A5F34(319, &qword_1008361C0, &qword_1008361C8, &qword_1006C5148, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_1008361D0, &qword_1008361D8, &qword_1006C5150, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_1008361E0, &qword_1008361E8, &qword_1006C5158, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000A437C(319, &qword_1008361F0, &type metadata for IdVDataElement, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              sub_1000A5F34(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1000A5F34(319, &qword_1008361F8, &qword_100836200, &qword_1006C5160, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000A5F34(319, &qword_100836208, &qword_100836210, &qword_1006C5168, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1000A437C(319, &unk_100836218, &type metadata for Capabilities, &type metadata accessor for Array);
                    if (v9 <= 0x3F)
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
}

void sub_1000A437C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000A440C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 24);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_100007224(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A44E4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v9 = sub_100007224(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 28);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1000A45AC()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A5F34(319, &qword_1008359E0, &qword_100834EA0, &qword_1006C06B0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10007FA34(319, &qword_1008362E0, type metadata accessor for VerifiedClaim, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_1008361E0, &qword_1008361E8, &qword_1006C5158, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10007FA34(319, &unk_1008362E8, type metadata accessor for LegacyWorkflowPackage, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000A4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100007224(&qword_100836328, &unk_1006C51B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000A4854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100007224(&qword_100836328, &unk_1006C51B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000A4904()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000A437C(319, &qword_1008352B8, &type metadata for DIPClientGUIDSeeds, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000A437C(319, &qword_1008352D0, &type metadata for ODNErrorInfo, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10007FA34(319, &unk_100836398, type metadata accessor for AssessmentAdditionalInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000A4A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007224(&qword_10084A120, &unk_1006C51E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A4BA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007224(&qword_10084A120, &unk_1006C51E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007224(&qword_100835E38, &qword_1006C49F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000A4CEC()
{
  sub_1000A5F34(319, &qword_100836440, &unk_100836448, &unk_1006C5210, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10007FA34(319, &qword_100835EC0, type metadata accessor for TiberiusWrappedAssessment, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A4DE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HardwareAttestationType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A4F2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for HardwareAttestationType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A507C()
{
  sub_1000A437C(319, &qword_100835EB0, &type metadata for AppleCredentials, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HardwareAttestationType();
    if (v1 <= 0x3F)
    {
      sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10007FA34(319, &qword_1008364E8, type metadata accessor for VerifiedClaimPresentment, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1000A5F34(319, &qword_1008364F0, &qword_1008364F8, &qword_1006C5240, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_1000A437C(319, &qword_100835FC0, &type metadata for IDSPACData, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000A5F34(319, &qword_100836500, &unk_100836508, &qword_1006C5248, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1000A5F34(319, &unk_100835FC8, &qword_10084A0E0, &qword_1006E9E70, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000A437C(319, &qword_1008351F0, &type metadata for Bool, &type metadata accessor for Optional);
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

__n128 sub_1000A5314(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000A5338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1000A5380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 24);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_100007224(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A54F0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v9 = sub_100007224(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 24);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1000A55B8()
{
  sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10007FA34(319, &unk_1008365C8, type metadata accessor for SharingCredentials, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A56D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&unk_100836448, &unk_1006C5210);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A57A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&unk_100836448, &unk_1006C5210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000A5854()
{
  sub_1000A437C(319, &qword_100835450, &type metadata for String, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000A5934(319, &qword_100836668, sub_1000A59B0, sub_1000A5A04);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A5934(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for JWSSignedJSON();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1000A59B0()
{
  result = qword_100836670;
  if (!qword_100836670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836670);
  }

  return result;
}

unint64_t sub_1000A5A04()
{
  result = qword_100836678;
  if (!qword_100836678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836678);
  }

  return result;
}

uint64_t sub_1000A5A58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A5AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1000A5B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_100007224(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A5CAC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v9 = sub_100007224(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 20);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1000A5D74()
{
  sub_1000A5934(319, &qword_100836668, sub_1000A59B0, sub_1000A5A04);
  if (v0 <= 0x3F)
  {
    sub_10007FA34(319, &qword_100836710, type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1000A5F34(319, &qword_1008361E0, &qword_1008361E8, &qword_1006C5158, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000A5F34(319, &qword_100836718, &unk_100836720, &qword_1006C5448, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000A437C(319, &qword_100835140, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000A5F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000B870(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000A5F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A5FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityProofingStaticWorkflow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityProofingStaticWorkflow.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A6328(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000A6384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A6448(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 328))
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

uint64_t sub_1000A64A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 328) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 328) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1000A65EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000A6620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1000A6668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A66E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 417))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A672C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 416) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 417) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 417) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A67EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000A6810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A6858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000A68C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 158) = *(a2 + 158);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1000A68FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 174))
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

uint64_t sub_1000A6944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 172) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 174) = 1;
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

    *(result + 174) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A69D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000A6A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000A6AA8()
{
  result = qword_100836760;
  if (!qword_100836760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836760);
  }

  return result;
}

unint64_t sub_1000A6B00()
{
  result = qword_100836768;
  if (!qword_100836768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836768);
  }

  return result;
}

unint64_t sub_1000A6B58()
{
  result = qword_100836770;
  if (!qword_100836770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836770);
  }

  return result;
}

unint64_t sub_1000A6BB0()
{
  result = qword_100836778;
  if (!qword_100836778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836778);
  }

  return result;
}

unint64_t sub_1000A6C08()
{
  result = qword_100836780;
  if (!qword_100836780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836780);
  }

  return result;
}

unint64_t sub_1000A6C60()
{
  result = qword_100836788;
  if (!qword_100836788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836788);
  }

  return result;
}

unint64_t sub_1000A6CB8()
{
  result = qword_100836790;
  if (!qword_100836790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836790);
  }

  return result;
}

unint64_t sub_1000A6D10()
{
  result = qword_100836798;
  if (!qword_100836798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836798);
  }

  return result;
}

unint64_t sub_1000A6D68()
{
  result = qword_1008367A0;
  if (!qword_1008367A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367A0);
  }

  return result;
}

unint64_t sub_1000A6DC0()
{
  result = qword_1008367A8;
  if (!qword_1008367A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367A8);
  }

  return result;
}

unint64_t sub_1000A6E18()
{
  result = qword_1008367B0;
  if (!qword_1008367B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367B0);
  }

  return result;
}

unint64_t sub_1000A6E70()
{
  result = qword_1008367B8;
  if (!qword_1008367B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367B8);
  }

  return result;
}

unint64_t sub_1000A6EC8()
{
  result = qword_1008367C0;
  if (!qword_1008367C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367C0);
  }

  return result;
}

unint64_t sub_1000A6F20()
{
  result = qword_1008367C8;
  if (!qword_1008367C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367C8);
  }

  return result;
}

unint64_t sub_1000A6F78()
{
  result = qword_1008367D0;
  if (!qword_1008367D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367D0);
  }

  return result;
}

unint64_t sub_1000A6FD0()
{
  result = qword_1008367D8;
  if (!qword_1008367D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367D8);
  }

  return result;
}

unint64_t sub_1000A7028()
{
  result = qword_1008367E0;
  if (!qword_1008367E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367E0);
  }

  return result;
}

unint64_t sub_1000A7080()
{
  result = qword_1008367E8;
  if (!qword_1008367E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367E8);
  }

  return result;
}

unint64_t sub_1000A70D8()
{
  result = qword_1008367F0;
  if (!qword_1008367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367F0);
  }

  return result;
}

unint64_t sub_1000A7130()
{
  result = qword_1008367F8;
  if (!qword_1008367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008367F8);
  }

  return result;
}

unint64_t sub_1000A7188()
{
  result = qword_100836800;
  if (!qword_100836800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836800);
  }

  return result;
}

unint64_t sub_1000A71E0()
{
  result = qword_100836808;
  if (!qword_100836808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836808);
  }

  return result;
}

unint64_t sub_1000A7238()
{
  result = qword_100836810;
  if (!qword_100836810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836810);
  }

  return result;
}

unint64_t sub_1000A7290()
{
  result = qword_100836818;
  if (!qword_100836818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836818);
  }

  return result;
}

unint64_t sub_1000A72E8()
{
  result = qword_100836820;
  if (!qword_100836820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836820);
  }

  return result;
}

unint64_t sub_1000A7340()
{
  result = qword_100836828;
  if (!qword_100836828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836828);
  }

  return result;
}

unint64_t sub_1000A7398()
{
  result = qword_100836830;
  if (!qword_100836830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836830);
  }

  return result;
}

unint64_t sub_1000A73F0()
{
  result = qword_100836838;
  if (!qword_100836838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836838);
  }

  return result;
}

uint64_t sub_1000A7444(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_100836840, type metadata accessor for IdentitySharingRequest);
  result = sub_10009F43C(&unk_10084A030, type metadata accessor for IdentitySharingRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A74C8(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_100836848, type metadata accessor for SharingRegistrationResponse);
  result = sub_10009F43C(&qword_100836850, type metadata accessor for SharingRegistrationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A754C(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_100836858, type metadata accessor for SharingRegistrationRequest);
  result = sub_10009F43C(&unk_10084A110, type metadata accessor for SharingRegistrationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A75D0(uint64_t a1)
{
  result = sub_10009F43C(&qword_100836860, type metadata accessor for SharingRegistrationRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A7628(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_100836868, type metadata accessor for IdentityProofingResponse);
  result = sub_10009F43C(&qword_100836870, type metadata accessor for IdentityProofingResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A76B0()
{
  result = qword_100836878;
  if (!qword_100836878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836878);
  }

  return result;
}

uint64_t sub_1000A7704(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&unk_10084A200, type metadata accessor for IdentityProofingRequest);
  result = sub_10009F43C(&qword_100836880, type metadata accessor for IdentityProofingRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A7788(uint64_t a1)
{
  result = sub_10009F43C(&qword_100836888, type metadata accessor for IdentityProofingRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A780C()
{
  result = qword_100836890;
  if (!qword_100836890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836890);
  }

  return result;
}

unint64_t sub_1000A7860()
{
  result = qword_100836898;
  if (!qword_100836898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836898);
  }

  return result;
}

unint64_t sub_1000A78E0()
{
  result = qword_1008368A0;
  if (!qword_1008368A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368A0);
  }

  return result;
}

unint64_t sub_1000A7934()
{
  result = qword_1008368A8;
  if (!qword_1008368A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368A8);
  }

  return result;
}

unint64_t sub_1000A79B4()
{
  result = qword_1008368B0;
  if (!qword_1008368B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368B0);
  }

  return result;
}

unint64_t sub_1000A7A08()
{
  result = qword_1008368B8;
  if (!qword_1008368B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368B8);
  }

  return result;
}

unint64_t sub_1000A7A5C(uint64_t a1)
{
  result = sub_1000A7A84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A7A84()
{
  result = qword_1008368C0;
  if (!qword_1008368C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368C0);
  }

  return result;
}

unint64_t sub_1000A7B04()
{
  result = qword_1008368C8;
  if (!qword_1008368C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368C8);
  }

  return result;
}

unint64_t sub_1000A7B58()
{
  result = qword_1008368D0;
  if (!qword_1008368D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368D0);
  }

  return result;
}

unint64_t sub_1000A7BD8()
{
  result = qword_1008368D8;
  if (!qword_1008368D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368D8);
  }

  return result;
}

unint64_t sub_1000A7C2C()
{
  result = qword_1008368E0;
  if (!qword_1008368E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368E0);
  }

  return result;
}

unint64_t sub_1000A7CAC()
{
  result = qword_1008368E8;
  if (!qword_1008368E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368E8);
  }

  return result;
}

unint64_t sub_1000A7D00()
{
  result = qword_1008368F0;
  if (!qword_1008368F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368F0);
  }

  return result;
}

unint64_t sub_1000A7D80()
{
  result = qword_1008368F8;
  if (!qword_1008368F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008368F8);
  }

  return result;
}

unint64_t sub_1000A7DD4()
{
  result = qword_100836900;
  if (!qword_100836900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836900);
  }

  return result;
}

unint64_t sub_1000A7E28(uint64_t a1)
{
  result = sub_1000A7E50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A7E50()
{
  result = qword_100836908;
  if (!qword_100836908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836908);
  }

  return result;
}

uint64_t sub_1000A7EA4(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_100836910, type metadata accessor for IdentityProofingRequestV2);
  result = sub_10009F43C(&qword_100836918, type metadata accessor for IdentityProofingRequestV2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A7F28(uint64_t a1)
{
  result = sub_10009F43C(&qword_100836920, type metadata accessor for IdentityProofingRequestV2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A7FAC()
{
  result = qword_100836928;
  if (!qword_100836928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836928);
  }

  return result;
}

unint64_t sub_1000A8000()
{
  result = qword_100836930;
  if (!qword_100836930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836930);
  }

  return result;
}

unint64_t sub_1000A8054(uint64_t a1)
{
  result = sub_1000A807C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A807C()
{
  result = qword_100836938;
  if (!qword_100836938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836938);
  }

  return result;
}

unint64_t sub_1000A80FC()
{
  result = qword_100836940;
  if (!qword_100836940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836940);
  }

  return result;
}

unint64_t sub_1000A8150()
{
  result = qword_100836948;
  if (!qword_100836948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836948);
  }

  return result;
}

unint64_t sub_1000A81A4(uint64_t a1)
{
  result = sub_1000A81CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A81CC()
{
  result = qword_100836950;
  if (!qword_100836950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836950);
  }

  return result;
}

unint64_t sub_1000A824C()
{
  result = qword_100836958;
  if (!qword_100836958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836958);
  }

  return result;
}

unint64_t sub_1000A82A0()
{
  result = qword_100836960;
  if (!qword_100836960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836960);
  }

  return result;
}

unint64_t sub_1000A82F4(uint64_t a1)
{
  result = sub_1000A831C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A831C()
{
  result = qword_100836968;
  if (!qword_100836968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836968);
  }

  return result;
}

unint64_t sub_1000A839C()
{
  result = qword_100836970;
  if (!qword_100836970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836970);
  }

  return result;
}

unint64_t sub_1000A83F0()
{
  result = qword_100836978;
  if (!qword_100836978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836978);
  }

  return result;
}

unint64_t sub_1000A8470()
{
  result = qword_100836980;
  if (!qword_100836980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836980);
  }

  return result;
}

unint64_t sub_1000A84C4()
{
  result = qword_100836988;
  if (!qword_100836988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836988);
  }

  return result;
}

unint64_t sub_1000A8544()
{
  result = qword_100836990;
  if (!qword_100836990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836990);
  }

  return result;
}

unint64_t sub_1000A8598()
{
  result = qword_100836998;
  if (!qword_100836998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836998);
  }

  return result;
}

uint64_t sub_1000A85EC(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_1008369A0, type metadata accessor for RegisterTerminalResponse);
  result = sub_10009F43C(&qword_1008369A8, type metadata accessor for RegisterTerminalResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A86D8()
{
  result = qword_1008369B0;
  if (!qword_1008369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008369B0);
  }

  return result;
}

unint64_t sub_1000A872C()
{
  result = qword_1008369B8;
  if (!qword_1008369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008369B8);
  }

  return result;
}

uint64_t sub_1000A8780(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_1008369C0, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  result = sub_10009F43C(&qword_1008369C8, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A8804(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_1008369D0, type metadata accessor for InputValidationRequestV3);
  result = sub_10009F43C(&qword_1008369D8, type metadata accessor for InputValidationRequestV3);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000A8888(uint64_t a1)
{
  *(a1 + 8) = sub_10009F43C(&qword_1008369E0, type metadata accessor for InputValidationRequestV1);
  result = sub_10009F43C(&qword_1008369E8, type metadata accessor for InputValidationRequestV1);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A8910()
{
  result = qword_1008369F0;
  if (!qword_1008369F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008369F0);
  }

  return result;
}

unint64_t sub_1000A8968()
{
  result = qword_1008369F8;
  if (!qword_1008369F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008369F8);
  }

  return result;
}

unint64_t sub_1000A89C0()
{
  result = qword_100836A00;
  if (!qword_100836A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A00);
  }

  return result;
}

unint64_t sub_1000A8A18()
{
  result = qword_100836A08;
  if (!qword_100836A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A08);
  }

  return result;
}

unint64_t sub_1000A8A70()
{
  result = qword_100836A10;
  if (!qword_100836A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A10);
  }

  return result;
}

unint64_t sub_1000A8AC8()
{
  result = qword_100836A18;
  if (!qword_100836A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A18);
  }

  return result;
}

unint64_t sub_1000A8B20()
{
  result = qword_100836A20;
  if (!qword_100836A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A20);
  }

  return result;
}

unint64_t sub_1000A8B78()
{
  result = qword_100836A28;
  if (!qword_100836A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A28);
  }

  return result;
}

unint64_t sub_1000A8BD0()
{
  result = qword_100836A30;
  if (!qword_100836A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A30);
  }

  return result;
}

unint64_t sub_1000A8C28()
{
  result = qword_100836A38;
  if (!qword_100836A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A38);
  }

  return result;
}

unint64_t sub_1000A8C80()
{
  result = qword_100836A40;
  if (!qword_100836A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A40);
  }

  return result;
}

unint64_t sub_1000A8CD8()
{
  result = qword_100836A48;
  if (!qword_100836A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A48);
  }

  return result;
}

unint64_t sub_1000A8D30()
{
  result = qword_100836A50;
  if (!qword_100836A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A50);
  }

  return result;
}

unint64_t sub_1000A8D88()
{
  result = qword_100836A58;
  if (!qword_100836A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A58);
  }

  return result;
}

unint64_t sub_1000A8DE0()
{
  result = qword_100836A60;
  if (!qword_100836A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A60);
  }

  return result;
}

unint64_t sub_1000A8E38()
{
  result = qword_100836A68;
  if (!qword_100836A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A68);
  }

  return result;
}

unint64_t sub_1000A8E90()
{
  result = qword_100836A70;
  if (!qword_100836A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A70);
  }

  return result;
}

unint64_t sub_1000A8EE8()
{
  result = qword_100836A78;
  if (!qword_100836A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A78);
  }

  return result;
}

unint64_t sub_1000A8F40()
{
  result = qword_100836A80;
  if (!qword_100836A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A80);
  }

  return result;
}

unint64_t sub_1000A8F98()
{
  result = qword_100836A88;
  if (!qword_100836A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A88);
  }

  return result;
}

unint64_t sub_1000A8FF0()
{
  result = qword_100836A90;
  if (!qword_100836A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A90);
  }

  return result;
}

unint64_t sub_1000A9048()
{
  result = qword_100836A98;
  if (!qword_100836A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836A98);
  }

  return result;
}

unint64_t sub_1000A90A0()
{
  result = qword_100836AA0;
  if (!qword_100836AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AA0);
  }

  return result;
}

unint64_t sub_1000A90F8()
{
  result = qword_100836AA8;
  if (!qword_100836AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AA8);
  }

  return result;
}

unint64_t sub_1000A9150()
{
  result = qword_100836AB0;
  if (!qword_100836AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AB0);
  }

  return result;
}

unint64_t sub_1000A91A8()
{
  result = qword_100836AB8;
  if (!qword_100836AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AB8);
  }

  return result;
}

unint64_t sub_1000A9200()
{
  result = qword_100836AC0;
  if (!qword_100836AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AC0);
  }

  return result;
}

unint64_t sub_1000A9258()
{
  result = qword_100836AC8;
  if (!qword_100836AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AC8);
  }

  return result;
}

unint64_t sub_1000A92B0()
{
  result = qword_100836AD0;
  if (!qword_100836AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AD0);
  }

  return result;
}

unint64_t sub_1000A9308()
{
  result = qword_100836AD8;
  if (!qword_100836AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AD8);
  }

  return result;
}

unint64_t sub_1000A9360()
{
  result = qword_100836AE0;
  if (!qword_100836AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AE0);
  }

  return result;
}

unint64_t sub_1000A93B8()
{
  result = qword_100836AE8;
  if (!qword_100836AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AE8);
  }

  return result;
}

unint64_t sub_1000A9410()
{
  result = qword_100836AF0;
  if (!qword_100836AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AF0);
  }

  return result;
}

unint64_t sub_1000A9468()
{
  result = qword_100836AF8;
  if (!qword_100836AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836AF8);
  }

  return result;
}

unint64_t sub_1000A94C0()
{
  result = qword_100836B00;
  if (!qword_100836B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B00);
  }

  return result;
}

unint64_t sub_1000A9518()
{
  result = qword_100836B08;
  if (!qword_100836B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B08);
  }

  return result;
}

unint64_t sub_1000A9570()
{
  result = qword_100836B10;
  if (!qword_100836B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B10);
  }

  return result;
}

unint64_t sub_1000A95C8()
{
  result = qword_100836B18;
  if (!qword_100836B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B18);
  }

  return result;
}

unint64_t sub_1000A9620()
{
  result = qword_100836B20;
  if (!qword_100836B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B20);
  }

  return result;
}

unint64_t sub_1000A9678()
{
  result = qword_100836B28;
  if (!qword_100836B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B28);
  }

  return result;
}

unint64_t sub_1000A96D0()
{
  result = qword_100836B30;
  if (!qword_100836B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B30);
  }

  return result;
}

unint64_t sub_1000A9728()
{
  result = qword_100836B38;
  if (!qword_100836B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B38);
  }

  return result;
}

uint64_t sub_1000A977C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 6582895 && a2 == 0xE300000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6583407 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581359 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FD820 == a2)
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

uint64_t sub_1000A98D8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100836B40, &qword_1006C9488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AA514();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v35 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1000AA568(&v30, v34);
  sub_10000BB78(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_1000AA5A0(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_1000A9BCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746E6564497072 && a2 == 0xEC00000072656966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEA00000000004449)
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

uint64_t sub_1000A9CF8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_1008376F8, &qword_1006C98C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v40 = v15;
  (*(v11 + 8))(v14, v10);
  v16 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC964();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v17 = v6;
    v39 = a2;
    LOBYTE(v41) = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v18 = v46;
    v38 = v45;
    v19 = v47;
    v40 = v48;
    LOBYTE(v45) = 1;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    v36 = v20;
    v37 = v19;
    v53 = 2;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = *(v17 + 8);
    v35 = v25;
    v24(v9, v5);
    v26 = v37;
    *&v41 = v38;
    *(&v41 + 1) = v18;
    v27 = v40;
    *&v42 = v37;
    *(&v42 + 1) = v40;
    v28 = v36;
    *&v43 = v36;
    *(&v43 + 1) = v22;
    v29 = v35;
    *&v44 = v23;
    *(&v44 + 1) = v35;
    sub_1000B15E4(&v41, &v45);
    sub_10000BB78(a1);
    v45 = v38;
    v46 = v18;
    v47 = v26;
    v48 = v27;
    v49 = v28;
    v50 = v22;
    v51 = v23;
    v52 = v29;
    result = sub_1000B161C(&v45);
    v31 = v42;
    v32 = v39;
    *v39 = v41;
    v32[1] = v31;
    v33 = v44;
    v32[2] = v43;
    v32[3] = v33;
  }

  return result;
}

uint64_t sub_1000AA074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00726564616548;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FDC10 == a2)
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

uint64_t sub_1000AA1A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_100007224(&qword_100836FE0, &qword_1006C95F8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v21 - v7;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACCF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v10 = v5;
  v49 = 0;
  sub_1000ACC1C();
  v11 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v42 = v36;
  v43 = v37;
  LOBYTE(v31[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v21 = v12;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v48 = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v11);
  v15 = v35;
  v25 = v44;
  v26 = v45;
  v27 = v46;
  v28 = v47;
  v23 = v42;
  v24 = v43;
  v16 = v21;
  *&v29 = v21;
  *(&v29 + 1) = v14;
  v30 = v35;
  sub_1000ACD48(&v23, v31);
  sub_10000BB78(a1);
  v31[2] = v44;
  v31[3] = v45;
  v31[4] = v46;
  v31[5] = v47;
  v31[0] = v42;
  v31[1] = v43;
  v32 = v16;
  v33 = v14;
  v34 = v15;
  result = sub_1000ACD80(v31);
  v18 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v18;
  *(a2 + 96) = v29;
  *(a2 + 112) = v30;
  v19 = v24;
  *a2 = v23;
  *(a2 + 16) = v19;
  v20 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_1000AA4C8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9C40, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000AA514()
{
  result = qword_100836B48;
  if (!qword_100836B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B48);
  }

  return result;
}

unint64_t sub_1000AA5D0()
{
  result = qword_100836B58;
  if (!qword_100836B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B58);
  }

  return result;
}

unint64_t sub_1000AA68C()
{
  result = qword_100836B68;
  if (!qword_100836B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B68);
  }

  return result;
}

unint64_t sub_1000AA6E0()
{
  result = qword_100836B70;
  if (!qword_100836B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B70);
  }

  return result;
}

unint64_t sub_1000AA734()
{
  result = qword_100836B80;
  if (!qword_100836B80)
  {
    sub_10000B870(&qword_100836B78, &qword_1006C94A0);
    sub_1000AA6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B80);
  }

  return result;
}

unint64_t sub_1000AA7C0()
{
  result = qword_100836B98;
  if (!qword_100836B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836B98);
  }

  return result;
}

unint64_t sub_1000AA814()
{
  result = qword_100836BA0;
  if (!qword_100836BA0)
  {
    sub_10000B870(&qword_100836B78, &qword_1006C94A0);
    sub_1000AA7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BA0);
  }

  return result;
}

unint64_t sub_1000AA8A0()
{
  result = qword_100836BB0;
  if (!qword_100836BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BB0);
  }

  return result;
}

unint64_t sub_1000AA8F4()
{
  result = qword_100836BC0;
  if (!qword_100836BC0)
  {
    sub_10000B870(&qword_100836BB8, &qword_1006C94C0);
    sub_1000AA978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BC0);
  }

  return result;
}

unint64_t sub_1000AA978()
{
  result = qword_100836BC8;
  if (!qword_100836BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BC8);
  }

  return result;
}

unint64_t sub_1000AAA34()
{
  result = qword_100836BD8;
  if (!qword_100836BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BD8);
  }

  return result;
}

unint64_t sub_1000AAAF0()
{
  result = qword_100836BE8;
  if (!qword_100836BE8)
  {
    sub_10000B870(&qword_100836BB8, &qword_1006C94C0);
    sub_1000AAB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BE8);
  }

  return result;
}

unint64_t sub_1000AAB74()
{
  result = qword_100836BF0;
  if (!qword_100836BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836BF0);
  }

  return result;
}

unint64_t sub_1000AABC8()
{
  result = qword_100836C00;
  if (!qword_100836C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C00);
  }

  return result;
}

unint64_t sub_1000AAC1C()
{
  result = qword_100836C10;
  if (!qword_100836C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C10);
  }

  return result;
}

unint64_t sub_1000AAC70()
{
  result = qword_100836C20;
  if (!qword_100836C20)
  {
    sub_10000B870(&qword_100836C18, &qword_1006C94E8);
    sub_10009F43C(&qword_100836C28, &type metadata accessor for PDF417ParsingConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C20);
  }

  return result;
}

unint64_t sub_1000AAD8C()
{
  result = qword_100836C38;
  if (!qword_100836C38)
  {
    sub_10000B870(&qword_100836C18, &qword_1006C94E8);
    sub_10009F43C(&qword_100836C40, &type metadata accessor for PDF417ParsingConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C38);
  }

  return result;
}

unint64_t sub_1000AAE40()
{
  result = qword_100836C50;
  if (!qword_100836C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C50);
  }

  return result;
}

unint64_t sub_1000AAE94()
{
  result = qword_100836C58;
  if (!qword_100836C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C58);
  }

  return result;
}

unint64_t sub_1000AAEE8()
{
  result = qword_100836C68;
  if (!qword_100836C68)
  {
    sub_10000B870(&qword_100836C60, &qword_1006C9500);
    sub_1000AAF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C68);
  }

  return result;
}

unint64_t sub_1000AAF6C()
{
  result = qword_100836C70;
  if (!qword_100836C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C70);
  }

  return result;
}

unint64_t sub_1000AB028()
{
  result = qword_100836C80;
  if (!qword_100836C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C80);
  }

  return result;
}

unint64_t sub_1000AB07C()
{
  result = qword_100836C88;
  if (!qword_100836C88)
  {
    sub_10000B870(&qword_100836C60, &qword_1006C9500);
    sub_1000AB100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C88);
  }

  return result;
}

unint64_t sub_1000AB100()
{
  result = qword_100836C90;
  if (!qword_100836C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836C90);
  }

  return result;
}

unint64_t sub_1000AB154()
{
  result = qword_100836CA0;
  if (!qword_100836CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836CA0);
  }

  return result;
}

unint64_t sub_1000AB1A8()
{
  result = qword_100836CA8;
  if (!qword_100836CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836CA8);
  }

  return result;
}

unint64_t sub_1000AB1FC()
{
  result = qword_100836CC0;
  if (!qword_100836CC0)
  {
    sub_10000B870(&qword_100836CB8, &qword_1006C9518);
    sub_10009F43C(&qword_100836CC8, type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836CC0);
  }

  return result;
}

unint64_t sub_1000AB2B0()
{
  result = qword_100836CD0;
  if (!qword_100836CD0)
  {
    sub_10000B870(&qword_1008361E8, &qword_1006C5158);
    sub_1000BA30C(&qword_100836CD8, &qword_1008364F8, &qword_1006C5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836CD0);
  }

  return result;
}

unint64_t sub_1000AB360()
{
  result = qword_100836CE0;
  if (!qword_100836CE0)
  {
    sub_10000B870(&unk_100836720, &qword_1006C5448);
    sub_1000BA30C(&qword_100836CE8, &qword_100836CF0, &qword_1006C9520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836CE0);
  }

  return result;
}

unint64_t sub_1000AB410()
{
  result = qword_100836D00;
  if (!qword_100836D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D00);
  }

  return result;
}

unint64_t sub_1000AB464()
{
  result = qword_100836D10;
  if (!qword_100836D10)
  {
    sub_10000B870(&qword_100836CB8, &qword_1006C9518);
    sub_10009F43C(&qword_100836D18, type metadata accessor for VerifiedClaimPresentmentWithDSDAuthorization);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D10);
  }

  return result;
}

unint64_t sub_1000AB518()
{
  result = qword_100836D20;
  if (!qword_100836D20)
  {
    sub_10000B870(&qword_1008361E8, &qword_1006C5158);
    sub_1000BA30C(&qword_100836D28, &qword_1008364F8, &qword_1006C5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D20);
  }

  return result;
}

unint64_t sub_1000AB5C8()
{
  result = qword_100836D30;
  if (!qword_100836D30)
  {
    sub_10000B870(&unk_100836720, &qword_1006C5448);
    sub_1000BA30C(&qword_100836D38, &qword_100836CF0, &qword_1006C9520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D30);
  }

  return result;
}

unint64_t sub_1000AB678()
{
  result = qword_100836D48;
  if (!qword_100836D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D48);
  }

  return result;
}

unint64_t sub_1000AB6CC()
{
  result = qword_100836D50;
  if (!qword_100836D50)
  {
    sub_10000B870(&unk_10084A070, &unk_1006E7DF0);
    sub_1000BA30C(&unk_10084A080, &unk_100849FC0, &qword_1006C9540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D50);
  }

  return result;
}

unint64_t sub_1000AB784()
{
  result = qword_100836D58;
  if (!qword_100836D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D58);
  }

  return result;
}

uint64_t sub_1000AB7D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000AB81C()
{
  result = qword_100836D68;
  if (!qword_100836D68)
  {
    sub_10000B870(&unk_10084A070, &unk_1006E7DF0);
    sub_1000BA30C(&unk_10084A090, &unk_100849FC0, &qword_1006C9540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D68);
  }

  return result;
}

unint64_t sub_1000AB8D4()
{
  result = qword_100836D70;
  if (!qword_100836D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D70);
  }

  return result;
}

unint64_t sub_1000AB928()
{
  result = qword_100836D80;
  if (!qword_100836D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D80);
  }

  return result;
}

uint64_t sub_1000AB97C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000AB9CC()
{
  result = qword_100836D88;
  if (!qword_100836D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D88);
  }

  return result;
}

unint64_t sub_1000ABA20()
{
  result = qword_100836D90;
  if (!qword_100836D90)
  {
    sub_10000B870(&qword_1008361D8, &qword_1006C5150);
    sub_10009F43C(&qword_100836D98, type metadata accessor for VerifiedClaimPresentment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836D90);
  }

  return result;
}

unint64_t sub_1000ABAD4()
{
  result = qword_100836DA0;
  if (!qword_100836DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836DA0);
  }

  return result;
}

unint64_t sub_1000ABB28()
{
  result = qword_100836DA8;
  if (!qword_100836DA8)
  {
    sub_10000B870(&unk_100836508, &qword_1006C5248);
    sub_1000ABAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836DA8);
  }

  return result;
}

unint64_t sub_1000ABBAC()
{
  result = qword_100836DC0;
  if (!qword_100836DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836DC0);
  }

  return result;
}

unint64_t sub_1000ABC00()
{
  result = qword_100836DD0;
  if (!qword_100836DD0)
  {
    sub_10000B870(&qword_1008361D8, &qword_1006C5150);
    sub_10009F43C(&qword_100836DD8, type metadata accessor for VerifiedClaimPresentment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836DD0);
  }

  return result;
}

unint64_t sub_1000ABCB4()
{
  result = qword_100836DE0;
  if (!qword_100836DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836DE0);
  }

  return result;
}

unint64_t sub_1000ABD08()
{
  result = qword_100836DE8;
  if (!qword_100836DE8)
  {
    sub_10000B870(&unk_100836508, &qword_1006C5248);
    sub_1000ABCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836DE8);
  }

  return result;
}

unint64_t sub_1000ABD8C()
{
  result = qword_100836E00;
  if (!qword_100836E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E00);
  }

  return result;
}

unint64_t sub_1000ABDE0()
{
  result = qword_100836E10;
  if (!qword_100836E10)
  {
    sub_10000B870(&qword_100836E08, &qword_1006C9568);
    sub_1000ABE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E10);
  }

  return result;
}

unint64_t sub_1000ABE64()
{
  result = qword_100836E18;
  if (!qword_100836E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E18);
  }

  return result;
}

unint64_t sub_1000ABEB8()
{
  result = qword_100836E28;
  if (!qword_100836E28)
  {
    sub_10000B870(&qword_100836E08, &qword_1006C9568);
    sub_1000ABF3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E28);
  }

  return result;
}

unint64_t sub_1000ABF3C()
{
  result = qword_100836E30;
  if (!qword_100836E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E30);
  }

  return result;
}

unint64_t sub_1000ABF90()
{
  result = qword_100836E40;
  if (!qword_100836E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E40);
  }

  return result;
}

unint64_t sub_1000ABFE4()
{
  result = qword_100836E50;
  if (!qword_100836E50)
  {
    sub_10000B870(&qword_100836E48, &qword_1006C9580);
    sub_1000BA30C(&qword_100836E58, &qword_1008361C8, &qword_1006C5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E50);
  }

  return result;
}

unint64_t sub_1000AC094()
{
  result = qword_100836E60;
  if (!qword_100836E60)
  {
    sub_10000B870(&qword_100836200, &qword_1006C5160);
    sub_1000AC118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E60);
  }

  return result;
}

unint64_t sub_1000AC118()
{
  result = qword_100836E68;
  if (!qword_100836E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E68);
  }

  return result;
}

unint64_t sub_1000AC16C()
{
  result = qword_100836E70;
  if (!qword_100836E70)
  {
    sub_10000B870(&qword_100836210, &qword_1006C5168);
    sub_1000AC1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E70);
  }

  return result;
}

unint64_t sub_1000AC1F0()
{
  result = qword_100836E78;
  if (!qword_100836E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E78);
  }

  return result;
}

unint64_t sub_1000AC244()
{
  result = qword_100836E88;
  if (!qword_100836E88)
  {
    sub_10000B870(&qword_100836E80, &qword_1006C9588);
    sub_1000AC2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E88);
  }

  return result;
}

unint64_t sub_1000AC2C8()
{
  result = qword_100836E90;
  if (!qword_100836E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836E90);
  }

  return result;
}

unint64_t sub_1000AC31C()
{
  result = qword_100836EA0;
  if (!qword_100836EA0)
  {
    sub_10000B870(&qword_100836E48, &qword_1006C9580);
    sub_1000BA30C(&qword_100836EA8, &qword_1008361C8, &qword_1006C5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836EA0);
  }

  return result;
}

unint64_t sub_1000AC3CC()
{
  result = qword_100836EB0;
  if (!qword_100836EB0)
  {
    sub_10000B870(&qword_100836200, &qword_1006C5160);
    sub_1000AC450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836EB0);
  }

  return result;
}

unint64_t sub_1000AC450()
{
  result = qword_100836EB8;
  if (!qword_100836EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836EB8);
  }

  return result;
}

unint64_t sub_1000AC4A4()
{
  result = qword_100836EC0;
  if (!qword_100836EC0)
  {
    sub_10000B870(&qword_100836210, &qword_1006C5168);
    sub_1000AC528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836EC0);
  }

  return result;
}

unint64_t sub_1000AC528()
{
  result = qword_100836EC8;
  if (!qword_100836EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836EC8);
  }

  return result;
}

unint64_t sub_1000AC57C()
{
  result = qword_100836ED0;
  if (!qword_100836ED0)
  {
    sub_10000B870(&qword_100836E80, &qword_1006C9588);
    sub_1000AC600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836ED0);
  }

  return result;
}

unint64_t sub_1000AC600()
{
  result = qword_100836ED8;
  if (!qword_100836ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836ED8);
  }

  return result;
}

unint64_t sub_1000AC654()
{
  result = qword_100836EE8;
  if (!qword_100836EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836EE8);
  }

  return result;
}

uint64_t sub_1000AC6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TiberiusWrappedAssessment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AC70C()
{
  result = qword_100836F00;
  if (!qword_100836F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F00);
  }

  return result;
}

unint64_t sub_1000AC760()
{
  result = qword_100836F10;
  if (!qword_100836F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F10);
  }

  return result;
}

unint64_t sub_1000AC7B4()
{
  result = qword_100836F18;
  if (!qword_100836F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F18);
  }

  return result;
}

unint64_t sub_1000AC808()
{
  result = qword_100836F28;
  if (!qword_100836F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F28);
  }

  return result;
}

unint64_t sub_1000AC85C()
{
  result = qword_100836F38;
  if (!qword_100836F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F38);
  }

  return result;
}

unint64_t sub_1000AC8B0()
{
  result = qword_100836F48;
  if (!qword_100836F48)
  {
    sub_10000B870(&qword_100836F40, &qword_1006C95C0);
    sub_10009F43C(&qword_100836F50, &type metadata accessor for APDURequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F48);
  }

  return result;
}

unint64_t sub_1000AC964()
{
  result = qword_100836F60;
  if (!qword_100836F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F60);
  }

  return result;
}

unint64_t sub_1000AC9B8()
{
  result = qword_100836F70;
  if (!qword_100836F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F70);
  }

  return result;
}

unint64_t sub_1000ACA0C()
{
  result = qword_100836F80;
  if (!qword_100836F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F80);
  }

  return result;
}

unint64_t sub_1000ACA60()
{
  result = qword_100836F90;
  if (!qword_100836F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836F90);
  }

  return result;
}

unint64_t sub_1000ACAB4()
{
  result = qword_100836FA0;
  if (!qword_100836FA0)
  {
    sub_10000B870(&qword_100836F98, &qword_1006DC5A0);
    sub_1000ACB5C(&qword_10084A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836FA0);
  }

  return result;
}

uint64_t sub_1000ACB5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&unk_10084A230, &qword_1006C0F50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000ACBC8()
{
  result = qword_100836FB0;
  if (!qword_100836FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836FB0);
  }

  return result;
}

unint64_t sub_1000ACC1C()
{
  result = qword_100836FB8;
  if (!qword_100836FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836FB8);
  }

  return result;
}

unint64_t sub_1000ACCA0()
{
  result = qword_100836FC0;
  if (!qword_100836FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836FC0);
  }

  return result;
}

unint64_t sub_1000ACCF4()
{
  result = qword_100836FE8;
  if (!qword_100836FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836FE8);
  }

  return result;
}

unint64_t sub_1000ACDB0()
{
  result = qword_100836FF8;
  if (!qword_100836FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100836FF8);
  }

  return result;
}

unint64_t sub_1000ACE04()
{
  result = qword_100837008;
  if (!qword_100837008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837008);
  }

  return result;
}

unint64_t sub_1000ACE58()
{
  result = qword_100837010;
  if (!qword_100837010)
  {
    sub_10000B870(&qword_100836F40, &qword_1006C95C0);
    sub_10009F43C(&qword_100837018, &type metadata accessor for APDURequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837010);
  }

  return result;
}

unint64_t sub_1000ACF74()
{
  result = qword_100837028;
  if (!qword_100837028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837028);
  }

  return result;
}

unint64_t sub_1000ACFC8()
{
  result = qword_100837038;
  if (!qword_100837038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837038);
  }

  return result;
}

unint64_t sub_1000AD01C()
{
  result = qword_100837050;
  if (!qword_100837050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837050);
  }

  return result;
}

unint64_t sub_1000AD0D8()
{
  result = qword_100837060;
  if (!qword_100837060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837060);
  }

  return result;
}

unint64_t sub_1000AD194()
{
  result = qword_100837070;
  if (!qword_100837070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837070);
  }

  return result;
}

unint64_t sub_1000AD250()
{
  result = qword_100837080;
  if (!qword_100837080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837080);
  }

  return result;
}

unint64_t sub_1000AD2A4()
{
  result = qword_100837090;
  if (!qword_100837090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837090);
  }

  return result;
}

unint64_t sub_1000AD2F8()
{
  result = qword_1008370A0;
  if (!qword_1008370A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008370A0);
  }

  return result;
}

unint64_t sub_1000AD34C()
{
  result = qword_1008370B0;
  if (!qword_1008370B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008370B0);
  }

  return result;
}

uint64_t sub_1000AD3A0(uint64_t *a1)
{
  v2 = v1;
  v19 = type metadata accessor for DIPError.Code();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100838320, &qword_1006CFCA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA2B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v18 = v8;
    v23 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v14;
    v2 = Data.init(base64Encoded:options:)();
    v16 = v15;

    if (v16 >> 60 != 15)
    {
      (*(v18 + 8))(v11, v7);
      sub_10000BB78(a1);
      return v2;
    }

    v21 = 0;
    type metadata accessor for DecodingError();
    v2 = swift_allocError();
    sub_1000BA30C(&qword_100838330, &qword_100838320, &qword_1006CFCA0);
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    (*(v18 + 8))(v11, v7);
  }

  (*(v4 + 104))(v20, enum case for DIPError.Code.jsonDecodingFailed(_:), v19);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000BB78(a1);
  return v2;
}

uint64_t sub_1000AD80C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4874736575716572 && a2 == 0xED00007265646165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FDC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001006FDCB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDCD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FDCF0 == a2)
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

uint64_t sub_1000ADB04@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = sub_100007224(&qword_1008370B8, &qword_1006C9658);
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v63);
  v8 = &v48 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v108 = v14;
  (*(v10 + 8))(v13, v9);
  v15 = a1[3];
  v16 = a1[4];
  v64 = a1;
  sub_10000BA08(a1, v15);
  sub_1000AE2E8();
  v17 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v70 = v2;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    LODWORD(v63) = 0;
    v21 = 0;
    LODWORD(v62) = 0;
    v65 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_4;
  }

  v18 = v5;
  LOBYTE(v71) = 0;
  sub_1000AB1A8();
  v19 = v63;
  v20 = v17;
  KeyedDecodingContainer.decode<A>(_:forKey:)();

  v25 = v82;
  v58 = v83;
  v26 = v84;
  v108 = v85;
  LOBYTE(v71) = 1;
  sub_1000AB9CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v26;
  v22 = v82;
  v28 = v83;
  v55 = v84;
  v56 = v86;
  v57 = v85;
  LOBYTE(v82) = 2;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = v30;
  v62 = v29;
  LOBYTE(v82) = 3;
  v54 = KeyedDecodingContainer.decode(_:forKey:)();
  v60 = v31;
  LOBYTE(v82) = 4;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v59 = v32;
  LOBYTE(v82) = 5;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v33;
  LOBYTE(v82) = 6;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v28;
  LOBYTE(v71) = 7;
  sub_1000AE37C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v70 = 0;
  v49 = v25;
  v68 = v83;
  v69 = v82;
  v66 = v85;
  v67 = v84;
  sub_1000AE33C(0, 0, 0, 0);
  v106 = 8;
  v34 = v70;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = v34;
  if (v34)
  {
    (*(v18 + 8))(v20, v19);
    LODWORD(v63) = 1;
    v21 = 1;
    LODWORD(v62) = 1;
    v23 = v51;
LABEL_4:
    sub_10000BB78(v64);

    sub_1000AB97C(v22, v23);
    if (v63)
    {

      if (!v21)
      {
        goto LABEL_6;
      }
    }

    else if (!v21)
    {
LABEL_6:
      if (!v62)
      {
LABEL_8:

        return sub_1000AE33C(v69, v68, v67, v66);
      }

LABEL_7:

      goto LABEL_8;
    }

    if (!v62)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v36 = v35;
  v50 &= 1u;
  (*(v18 + 8))(v20, v19);
  LODWORD(v63) = v36 & 1;
  v38 = v57;
  v37 = v58;
  *&v71 = v49;
  *(&v71 + 1) = v58;
  v48 = v27;
  *&v72 = v27;
  *(&v72 + 1) = v108;
  v39 = v51;
  *&v73 = v22;
  *(&v73 + 1) = v51;
  v41 = v55;
  v40 = v56;
  *&v74 = v55;
  *(&v74 + 1) = v57;
  v42 = *(&v56 + 1);
  v75 = v56;
  *&v76 = v62;
  *(&v76 + 1) = v61;
  *&v77 = v54;
  *(&v77 + 1) = v60;
  *&v78 = v53;
  *(&v78 + 1) = v59;
  *&v79 = v52;
  *(&v79 + 1) = v65;
  LOBYTE(v80) = v50;
  DWORD1(v80) = *(v107 + 3);
  *(&v80 + 1) = v107[0];
  *(&v80 + 1) = v69;
  *&v81[0] = v68;
  *(&v81[0] + 1) = v67;
  *&v81[1] = v66;
  BYTE8(v81[1]) = v63;
  sub_1000AE3D0(&v71, &v82);
  sub_10000BB78(v64);
  v82 = v49;
  v83 = v37;
  v84 = v48;
  v85 = v108;
  *&v86 = v22;
  *(&v86 + 1) = v39;
  v87 = v41;
  v88 = v38;
  v89 = v40;
  v90 = v42;
  v91 = v62;
  v92 = v61;
  v93 = v54;
  v94 = v60;
  v95 = v53;
  v96 = v59;
  v97 = v52;
  v98 = v65;
  v99 = v50;
  *&v100[3] = *(v107 + 3);
  *v100 = v107[0];
  v101 = v69;
  v102 = v68;
  v103 = v67;
  v104 = v66;
  v105 = v63;
  result = sub_1000AE408(&v82);
  v43 = v80;
  a2[8] = v79;
  a2[9] = v43;
  a2[10] = v81[0];
  *(a2 + 169) = *(v81 + 9);
  v44 = v76;
  a2[4] = v75;
  a2[5] = v44;
  v45 = v78;
  a2[6] = v77;
  a2[7] = v45;
  v46 = v72;
  *a2 = v71;
  a2[1] = v46;
  v47 = v74;
  a2[2] = v73;
  a2[3] = v47;
  return result;
}

unint64_t sub_1000AE2E8()
{
  result = qword_1008370C0;
  if (!qword_1008370C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008370C0);
  }

  return result;
}

uint64_t sub_1000AE33C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000B90C(result, a2);
  }

  return result;
}

unint64_t sub_1000AE37C()
{
  result = qword_1008370C8;
  if (!qword_1008370C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008370C8);
  }

  return result;
}

unint64_t sub_1000AE438()
{
  result = qword_1008370E0;
  if (!qword_1008370E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008370E0);
  }

  return result;
}

unint64_t sub_1000AE48C()
{
  result = qword_1008370F0;
  if (!qword_1008370F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008370F0);
  }

  return result;
}

unint64_t sub_1000AE548()
{
  result = qword_100837108;
  if (!qword_100837108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837108);
  }

  return result;
}

unint64_t sub_1000AE59C()
{
  result = qword_100837118;
  if (!qword_100837118)
  {
    sub_10000B870(&qword_100837110, &qword_1006C9688);
    sub_1000AE620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837118);
  }

  return result;
}

unint64_t sub_1000AE620()
{
  result = qword_100837120;
  if (!qword_100837120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837120);
  }

  return result;
}

unint64_t sub_1000AE6DC()
{
  result = qword_100837130;
  if (!qword_100837130)
  {
    sub_10000B870(&qword_100837110, &qword_1006C9688);
    sub_1000AE760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837130);
  }

  return result;
}

unint64_t sub_1000AE760()
{
  result = qword_100837138;
  if (!qword_100837138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837138);
  }

  return result;
}

unint64_t sub_1000AE7B4()
{
  result = qword_100837148;
  if (!qword_100837148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837148);
  }

  return result;
}

unint64_t sub_1000AE808()
{
  result = qword_100837158;
  if (!qword_100837158)
  {
    sub_10000B870(&qword_100837150, &qword_1006C96A0);
    sub_1000BA30C(&qword_100834E68, &qword_100833680, &qword_1006C4A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837158);
  }

  return result;
}

unint64_t sub_1000AE8B8()
{
  result = qword_100837168;
  if (!qword_100837168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837168);
  }

  return result;
}

unint64_t sub_1000AE90C()
{
  result = qword_100837178;
  if (!qword_100837178)
  {
    sub_10000B870(&qword_100837170, &qword_1006C96A8);
    sub_1000AE990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837178);
  }

  return result;
}

unint64_t sub_1000AE990()
{
  result = qword_100837180;
  if (!qword_100837180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837180);
  }

  return result;
}

unint64_t sub_1000AE9E4()
{
  result = qword_100837190;
  if (!qword_100837190)
  {
    sub_10000B870(&unk_100835EE8, &qword_1006C4A28);
    sub_1000AEA70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837190);
  }

  return result;
}

unint64_t sub_1000AEA70()
{
  result = qword_100837198;
  if (!qword_100837198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837198);
  }

  return result;
}

unint64_t sub_1000AEAC4()
{
  result = qword_1008371A8;
  if (!qword_1008371A8)
  {
    sub_10000B870(&qword_100837150, &qword_1006C96A0);
    sub_1000BA30C(&qword_100834E58, &qword_100833680, &qword_1006C4A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371A8);
  }

  return result;
}

unint64_t sub_1000AEB74()
{
  result = qword_1008371B0;
  if (!qword_1008371B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371B0);
  }

  return result;
}

unint64_t sub_1000AEBC8()
{
  result = qword_1008371B8;
  if (!qword_1008371B8)
  {
    sub_10000B870(&qword_100837170, &qword_1006C96A8);
    sub_1000AEC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371B8);
  }

  return result;
}

unint64_t sub_1000AEC4C()
{
  result = qword_1008371C0;
  if (!qword_1008371C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371C0);
  }

  return result;
}

unint64_t sub_1000AECA0()
{
  result = qword_1008371D0;
  if (!qword_1008371D0)
  {
    sub_10000B870(&unk_100835EE8, &qword_1006C4A28);
    sub_1000AED2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371D0);
  }

  return result;
}

unint64_t sub_1000AED2C()
{
  result = qword_1008371D8;
  if (!qword_1008371D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371D8);
  }

  return result;
}

unint64_t sub_1000AED80()
{
  result = qword_1008371E8;
  if (!qword_1008371E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371E8);
  }

  return result;
}

unint64_t sub_1000AEDD4()
{
  result = qword_1008371F0;
  if (!qword_1008371F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371F0);
  }

  return result;
}

unint64_t sub_1000AEE28()
{
  result = qword_1008371F8;
  if (!qword_1008371F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008371F8);
  }

  return result;
}

unint64_t sub_1000AEE7C()
{
  result = qword_100837208;
  if (!qword_100837208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837208);
  }

  return result;
}

unint64_t sub_1000AEF08()
{
  result = qword_100837210;
  if (!qword_100837210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837210);
  }

  return result;
}

unint64_t sub_1000AEF8C()
{
  result = qword_100837220;
  if (!qword_100837220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837220);
  }

  return result;
}

unint64_t sub_1000AEFE0()
{
  result = qword_100837230;
  if (!qword_100837230)
  {
    sub_10000B870(&unk_100835CC0, &qword_1006C2148);
    sub_1000AF064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837230);
  }

  return result;
}

unint64_t sub_1000AF064()
{
  result = qword_100837238;
  if (!qword_100837238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837238);
  }

  return result;
}

unint64_t sub_1000AF0B8()
{
  result = qword_100837250;
  if (!qword_100837250)
  {
    sub_10000B870(&unk_100835CC0, &qword_1006C2148);
    sub_1000AF13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837250);
  }

  return result;
}

unint64_t sub_1000AF13C()
{
  result = qword_100837258;
  if (!qword_100837258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837258);
  }

  return result;
}

unint64_t sub_1000AF190()
{
  result = qword_100837268;
  if (!qword_100837268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837268);
  }

  return result;
}

unint64_t sub_1000AF1E4()
{
  result = qword_100837270;
  if (!qword_100837270)
  {
    sub_10000B870(&unk_10083A0F0, &unk_1006C96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837270);
  }

  return result;
}

unint64_t sub_1000AF260()
{
  result = qword_100837280;
  if (!qword_100837280)
  {
    sub_10000B870(&qword_100837278, &unk_1006DA590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837280);
  }

  return result;
}

unint64_t sub_1000AF2DC()
{
  result = qword_100837290;
  if (!qword_100837290)
  {
    sub_10000B870(&qword_100837288, &qword_1006C96F0);
    sub_10009F43C(&qword_100837298, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837290);
  }

  return result;
}

unint64_t sub_1000AF390()
{
  result = qword_1008372A0;
  if (!qword_1008372A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008372A0);
  }

  return result;
}

uint64_t sub_1000AF3E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_1008372A8, &qword_1006C96F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AF4BC()
{
  result = qword_10083A170;
  if (!qword_10083A170)
  {
    sub_10000B870(&unk_10083A0F0, &unk_1006C96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A170);
  }

  return result;
}

unint64_t sub_1000AF538()
{
  result = qword_1008372C0;
  if (!qword_1008372C0)
  {
    sub_10000B870(&qword_100837278, &unk_1006DA590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008372C0);
  }

  return result;
}

unint64_t sub_1000AF5B4()
{
  result = qword_1008372C8;
  if (!qword_1008372C8)
  {
    sub_10000B870(&qword_100837288, &qword_1006C96F0);
    sub_10009F43C(&qword_1008372D0, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008372C8);
  }

  return result;
}

unint64_t sub_1000AF668()
{
  result = qword_1008372D8;
  if (!qword_1008372D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008372D8);
  }

  return result;
}

unint64_t sub_1000AF6BC()
{
  result = qword_1008372F0;
  if (!qword_1008372F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008372F0);
  }

  return result;
}

unint64_t sub_1000AF710()
{
  result = qword_100837300;
  if (!qword_100837300)
  {
    sub_10000B870(&qword_1008372F8, &qword_1006C9710);
    sub_1000AF794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837300);
  }

  return result;
}

unint64_t sub_1000AF794()
{
  result = qword_100837308;
  if (!qword_100837308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837308);
  }

  return result;
}

unint64_t sub_1000AF7E8()
{
  result = qword_100837318;
  if (!qword_100837318)
  {
    sub_10000B870(&qword_100837310, &qword_1006C9718);
    sub_1000AF710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837318);
  }

  return result;
}

unint64_t sub_1000AF86C()
{
  result = qword_100837328;
  if (!qword_100837328)
  {
    sub_10000B870(&qword_1008372F8, &qword_1006C9710);
    sub_1000AF8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837328);
  }

  return result;
}

unint64_t sub_1000AF8F0()
{
  result = qword_100837330;
  if (!qword_100837330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837330);
  }

  return result;
}

unint64_t sub_1000AF944()
{
  result = qword_100837338;
  if (!qword_100837338)
  {
    sub_10000B870(&qword_100837310, &qword_1006C9718);
    sub_1000AF86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837338);
  }

  return result;
}

unint64_t sub_1000AF9C8()
{
  result = qword_100837348;
  if (!qword_100837348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837348);
  }

  return result;
}

unint64_t sub_1000AFA1C()
{
  result = qword_100837350;
  if (!qword_100837350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837350);
  }

  return result;
}

unint64_t sub_1000AFAD8()
{
  result = qword_100837360;
  if (!qword_100837360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837360);
  }

  return result;
}

unint64_t sub_1000AFB2C()
{
  result = qword_100837370;
  if (!qword_100837370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837370);
  }

  return result;
}

unint64_t sub_1000AFB80()
{
  result = qword_100837388;
  if (!qword_100837388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837388);
  }

  return result;
}

unint64_t sub_1000AFBD4()
{
  result = qword_100837390;
  if (!qword_100837390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837390);
  }

  return result;
}

unint64_t sub_1000AFCF8()
{
  result = qword_1008373A0;
  if (!qword_1008373A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373A0);
  }

  return result;
}

unint64_t sub_1000AFD4C()
{
  result = qword_1008373B0;
  if (!qword_1008373B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373B0);
  }

  return result;
}

unint64_t sub_1000AFDA0()
{
  result = qword_1008373B8;
  if (!qword_1008373B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373B8);
  }

  return result;
}

unint64_t sub_1000AFE5C()
{
  result = qword_1008373C8;
  if (!qword_1008373C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373C8);
  }

  return result;
}

unint64_t sub_1000AFEB0()
{
  result = qword_1008373D8;
  if (!qword_1008373D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373D8);
  }

  return result;
}

unint64_t sub_1000AFF04()
{
  result = qword_1008373E0;
  if (!qword_1008373E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373E0);
  }

  return result;
}

unint64_t sub_1000AFFC0()
{
  result = qword_1008373F0;
  if (!qword_1008373F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008373F0);
  }

  return result;
}

unint64_t sub_1000B0014()
{
  result = qword_100837400;
  if (!qword_100837400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837400);
  }

  return result;
}

uint64_t sub_1000B0068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000B00AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000B00F0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1000B0138()
{
  result = qword_100837418;
  if (!qword_100837418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837418);
  }

  return result;
}

unint64_t sub_1000B018C()
{
  result = qword_100837420;
  if (!qword_100837420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837420);
  }

  return result;
}

unint64_t sub_1000B01E0()
{
  result = qword_100837428;
  if (!qword_100837428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837428);
  }

  return result;
}

unint64_t sub_1000B0234()
{
  result = qword_100837438;
  if (!qword_100837438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837438);
  }

  return result;
}

unint64_t sub_1000B0288()
{
  result = qword_100837440;
  if (!qword_100837440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837440);
  }

  return result;
}

unint64_t sub_1000B02DC()
{
  result = qword_100837448;
  if (!qword_100837448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837448);
  }

  return result;
}

unint64_t sub_1000B0330()
{
  result = qword_100837450;
  if (!qword_100837450)
  {
    sub_10000B870(&qword_100835A50, &qword_1006C1ED0);
    sub_1000B03B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837450);
  }

  return result;
}

unint64_t sub_1000B03B4()
{
  result = qword_100837458;
  if (!qword_100837458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837458);
  }

  return result;
}

unint64_t sub_1000B0408()
{
  result = qword_100837460;
  if (!qword_100837460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837460);
  }

  return result;
}

unint64_t sub_1000B045C()
{
  result = qword_100837470;
  if (!qword_100837470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837470);
  }

  return result;
}

unint64_t sub_1000B04B0()
{
  result = qword_100837478;
  if (!qword_100837478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837478);
  }

  return result;
}

unint64_t sub_1000B0504()
{
  result = qword_100837480;
  if (!qword_100837480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837480);
  }

  return result;
}

unint64_t sub_1000B0558()
{
  result = qword_100837490;
  if (!qword_100837490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837490);
  }

  return result;
}

unint64_t sub_1000B05AC()
{
  result = qword_100837498;
  if (!qword_100837498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837498);
  }

  return result;
}

unint64_t sub_1000B0600()
{
  result = qword_1008374A8;
  if (!qword_1008374A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374A8);
  }

  return result;
}

unint64_t sub_1000B0654()
{
  result = qword_1008374B0;
  if (!qword_1008374B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374B0);
  }

  return result;
}

unint64_t sub_1000B06A8()
{
  result = qword_1008374B8;
  if (!qword_1008374B8)
  {
    sub_10000B870(&qword_100835A50, &qword_1006C1ED0);
    sub_1000B072C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374B8);
  }

  return result;
}

unint64_t sub_1000B072C()
{
  result = qword_1008374C0;
  if (!qword_1008374C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374C0);
  }

  return result;
}

unint64_t sub_1000B0780()
{
  result = qword_1008374C8;
  if (!qword_1008374C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374C8);
  }

  return result;
}

unint64_t sub_1000B07D4()
{
  result = qword_1008374D8;
  if (!qword_1008374D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374D8);
  }

  return result;
}

unint64_t sub_1000B0828()
{
  result = qword_1008374E0;
  if (!qword_1008374E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374E0);
  }

  return result;
}

unint64_t sub_1000B087C()
{
  result = qword_1008374F0;
  if (!qword_1008374F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008374F0);
  }

  return result;
}

unint64_t sub_1000B08D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F9D08, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B091C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_100007224(a2, a3);
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = a1[3];
  sub_10000BA08(a1, v11);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v12 = v15;
    v17 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v10, v7);
  }

  sub_10000BB78(a1);
  return v11;
}

unint64_t sub_1000B0B0C()
{
  result = qword_100837500;
  if (!qword_100837500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837500);
  }

  return result;
}

unint64_t sub_1000B0B60()
{
  result = qword_100837518;
  if (!qword_100837518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837518);
  }

  return result;
}

unint64_t sub_1000B0BB4()
{
  result = qword_100837530;
  if (!qword_100837530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837530);
  }

  return result;
}

unint64_t sub_1000B0C08()
{
  result = qword_100837540;
  if (!qword_100837540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837540);
  }

  return result;
}

unint64_t sub_1000B0C5C()
{
  result = qword_100837558;
  if (!qword_100837558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837558);
  }

  return result;
}

unint64_t sub_1000B0CB0()
{
  result = qword_100837570;
  if (!qword_100837570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837570);
  }

  return result;
}

unint64_t sub_1000B0D04()
{
  result = qword_100837598;
  if (!qword_100837598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837598);
  }

  return result;
}

unint64_t sub_1000B0D58()
{
  result = qword_1008375A0;
  if (!qword_1008375A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375A0);
  }

  return result;
}

unint64_t sub_1000B0DE4()
{
  result = qword_1008375B0;
  if (!qword_1008375B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375B0);
  }

  return result;
}

unint64_t sub_1000B0E68()
{
  result = qword_1008375C0;
  if (!qword_1008375C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375C0);
  }

  return result;
}

unint64_t sub_1000B0EBC()
{
  result = qword_1008375D0;
  if (!qword_1008375D0)
  {
    sub_10000B870(&qword_1008375C8, &qword_1006C9818);
    sub_1000B0F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375D0);
  }

  return result;
}

unint64_t sub_1000B0F40()
{
  result = qword_1008375D8;
  if (!qword_1008375D8)
  {
    sub_10000B870(&qword_1008375E0, &qword_1006C9820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375D8);
  }

  return result;
}

unint64_t sub_1000B0FBC()
{
  result = qword_1008375F0;
  if (!qword_1008375F0)
  {
    sub_10000B870(&qword_1008375E8, &qword_1006C9828);
    sub_1000B1040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375F0);
  }

  return result;
}

unint64_t sub_1000B1040()
{
  result = qword_1008375F8;
  if (!qword_1008375F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008375F8);
  }

  return result;
}

unint64_t sub_1000B1094()
{
  result = qword_100837608;
  if (!qword_100837608)
  {
    sub_10000B870(&qword_1008375C8, &qword_1006C9818);
    sub_1000B1118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837608);
  }

  return result;
}

unint64_t sub_1000B1118()
{
  result = qword_100837610;
  if (!qword_100837610)
  {
    sub_10000B870(&qword_1008375E0, &qword_1006C9820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837610);
  }

  return result;
}

unint64_t sub_1000B1194()
{
  result = qword_100837618;
  if (!qword_100837618)
  {
    sub_10000B870(&qword_1008375E8, &qword_1006C9828);
    sub_1000B1218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837618);
  }

  return result;
}

unint64_t sub_1000B1218()
{
  result = qword_100837620;
  if (!qword_100837620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837620);
  }

  return result;
}

unint64_t sub_1000B126C()
{
  result = qword_100837630;
  if (!qword_100837630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837630);
  }

  return result;
}

unint64_t sub_1000B12C0()
{
  result = qword_100837638;
  if (!qword_100837638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837638);
  }

  return result;
}

unint64_t sub_1000B137C()
{
  result = qword_100837648;
  if (!qword_100837648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837648);
  }

  return result;
}

unint64_t sub_1000B13D0()
{
  result = qword_100837658;
  if (!qword_100837658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837658);
  }

  return result;
}

unint64_t sub_1000B1424()
{
  result = qword_100837688;
  if (!qword_100837688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837688);
  }

  return result;
}

unint64_t sub_1000B14B0()
{
  result = qword_1008376A0;
  if (!qword_1008376A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008376A0);
  }

  return result;
}

unint64_t sub_1000B1504()
{
  result = qword_1008376B0;
  if (!qword_1008376B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008376B0);
  }

  return result;
}

unint64_t sub_1000B171C()
{
  result = qword_100837718;
  if (!qword_100837718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837718);
  }

  return result;
}

unint64_t sub_1000B1770()
{
  result = qword_100837728;
  if (!qword_100837728)
  {
    sub_10000B870(&qword_100837720, &qword_1006C98E8);
    sub_1000B17FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837728);
  }

  return result;
}

unint64_t sub_1000B17FC()
{
  result = qword_100837730;
  if (!qword_100837730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837730);
  }

  return result;
}

unint64_t sub_1000B1850()
{
  result = qword_100837740;
  if (!qword_100837740)
  {
    sub_10000B870(&qword_100837720, &qword_1006C98E8);
    sub_1000B18DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837740);
  }

  return result;
}

unint64_t sub_1000B18DC()
{
  result = qword_100837748;
  if (!qword_100837748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837748);
  }

  return result;
}

unint64_t sub_1000B1930()
{
  result = qword_100837758;
  if (!qword_100837758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837758);
  }

  return result;
}

unint64_t sub_1000B1984()
{
  result = qword_100837770;
  if (!qword_100837770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837770);
  }

  return result;
}

unint64_t sub_1000B19D8()
{
  result = qword_100837788;
  if (!qword_100837788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837788);
  }

  return result;
}

unint64_t sub_1000B1A2C()
{
  result = qword_100837798;
  if (!qword_100837798)
  {
    sub_10000B870(&qword_100837790, &qword_1006C9920);
    sub_1000B1AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837798);
  }

  return result;
}

unint64_t sub_1000B1AB8()
{
  result = qword_1008377A0;
  if (!qword_1008377A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008377A0);
  }

  return result;
}

unint64_t sub_1000B1B0C()
{
  result = qword_1008377B0;
  if (!qword_1008377B0)
  {
    sub_10000B870(&qword_100837790, &qword_1006C9920);
    sub_1000B1B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008377B0);
  }

  return result;
}

unint64_t sub_1000B1B98()
{
  result = qword_1008377B8;
  if (!qword_1008377B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008377B8);
  }

  return result;
}

unint64_t sub_1000B1BEC()
{
  result = qword_1008377D8;
  if (!qword_1008377D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008377D8);
  }

  return result;
}

unint64_t sub_1000B1C40()
{
  result = qword_1008377E8;
  if (!qword_1008377E8)
  {
    sub_10000B870(&qword_1008377E0, &qword_1006C9940);
    sub_10009F43C(&qword_1008377F0, type metadata accessor for ActionRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008377E8);
  }

  return result;
}

unint64_t sub_1000B1CF4()
{
  result = qword_1008377F8;
  if (!qword_1008377F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008377F8);
  }

  return result;
}

unint64_t sub_1000B1DB0()
{
  result = qword_100837808;
  if (!qword_100837808)
  {
    sub_10000B870(&qword_1008377E0, &qword_1006C9940);
    sub_10009F43C(&qword_100837810, type metadata accessor for ActionRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837808);
  }

  return result;
}

unint64_t sub_1000B1E64()
{
  result = qword_100837818;
  if (!qword_100837818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837818);
  }

  return result;
}

unint64_t sub_1000B1EB8()
{
  result = qword_100837828;
  if (!qword_100837828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837828);
  }

  return result;
}

unint64_t sub_1000B1F74()
{
  result = qword_100837848;
  if (!qword_100837848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837848);
  }

  return result;
}

uint64_t sub_1000B1FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000B2098()
{
  result = qword_100837868;
  if (!qword_100837868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837868);
  }

  return result;
}

unint64_t sub_1000B20EC()
{
  result = qword_100837898;
  if (!qword_100837898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837898);
  }

  return result;
}

unint64_t sub_1000B21A8()
{
  result = qword_1008378C8;
  if (!qword_1008378C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008378C8);
  }

  return result;
}

unint64_t sub_1000B21FC()
{
  result = qword_1008378E0;
  if (!qword_1008378E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008378E0);
  }

  return result;
}

unint64_t sub_1000B2250()
{
  result = qword_1008378F8;
  if (!qword_1008378F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008378F8);
  }

  return result;
}

unint64_t sub_1000B22A4()
{
  result = qword_100837900;
  if (!qword_100837900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837900);
  }

  return result;
}

unint64_t sub_1000B2328()
{
  result = qword_100837910;
  if (!qword_100837910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837910);
  }

  return result;
}

unint64_t sub_1000B237C()
{
  result = qword_100837920;
  if (!qword_100837920)
  {
    sub_10000B870(&qword_100837918, &qword_1006C99E8);
    sub_1000B2408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837920);
  }

  return result;
}

unint64_t sub_1000B2408()
{
  result = qword_100837928;
  if (!qword_100837928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837928);
  }

  return result;
}

unint64_t sub_1000B245C()
{
  result = qword_100837930;
  if (!qword_100837930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837930);
  }

  return result;
}

unint64_t sub_1000B24B0()
{
  result = qword_100837940;
  if (!qword_100837940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837940);
  }

  return result;
}

unint64_t sub_1000B2504()
{
  result = qword_100837970;
  if (!qword_100837970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837970);
  }

  return result;
}

unint64_t sub_1000B2558()
{
  result = qword_1008379A0;
  if (!qword_1008379A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008379A0);
  }

  return result;
}

unint64_t sub_1000B25AC()
{
  result = qword_100839A80;
  if (!qword_100839A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A80);
  }

  return result;
}

unint64_t sub_1000B2600()
{
  result = qword_1008379B0;
  if (!qword_1008379B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008379B0);
  }

  return result;
}

unint64_t sub_1000B2654()
{
  result = qword_1008379C0;
  if (!qword_1008379C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008379C0);
  }

  return result;
}

unint64_t sub_1000B2710()
{
  result = qword_1008379D8;
  if (!qword_1008379D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008379D8);
  }

  return result;
}

uint64_t sub_1000B2764(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007224(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000B27CC()
{
  result = qword_100837A00;
  if (!qword_100837A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A00);
  }

  return result;
}

unint64_t sub_1000B2820()
{
  result = qword_100837A18;
  if (!qword_100837A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A18);
  }

  return result;
}

unint64_t sub_1000B28DC()
{
  result = qword_100837A30;
  if (!qword_100837A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A30);
  }

  return result;
}

unint64_t sub_1000B2968()
{
  result = qword_100837A48;
  if (!qword_100837A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A48);
  }

  return result;
}

unint64_t sub_1000B29BC()
{
  result = qword_100837A58;
  if (!qword_100837A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A58);
  }

  return result;
}

unint64_t sub_1000B2A10()
{
  result = qword_100837A60;
  if (!qword_100837A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A60);
  }

  return result;
}

unint64_t sub_1000B2A64()
{
  result = qword_100837A68;
  if (!qword_100837A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A68);
  }

  return result;
}

unint64_t sub_1000B2AB8()
{
  result = qword_100837A70;
  if (!qword_100837A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A70);
  }

  return result;
}

unint64_t sub_1000B2B0C()
{
  result = qword_100837A78;
  if (!qword_100837A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A78);
  }

  return result;
}

unint64_t sub_1000B2B60()
{
  result = qword_100837A80;
  if (!qword_100837A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A80);
  }

  return result;
}

unint64_t sub_1000B2BB4()
{
  result = qword_100837A98;
  if (!qword_100837A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837A98);
  }

  return result;
}

unint64_t sub_1000B2C08()
{
  result = qword_100837AA0;
  if (!qword_100837AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AA0);
  }

  return result;
}

unint64_t sub_1000B2C5C()
{
  result = qword_100837AB0;
  if (!qword_100837AB0)
  {
    sub_10000B870(&qword_100837AA8, &qword_1006C9A98);
    sub_1000B2CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AB0);
  }

  return result;
}

unint64_t sub_1000B2CE0()
{
  result = qword_100837AB8;
  if (!qword_100837AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AB8);
  }

  return result;
}

unint64_t sub_1000B2D6C()
{
  result = qword_100837AC8;
  if (!qword_100837AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AC8);
  }

  return result;
}

unint64_t sub_1000B2DC0()
{
  result = qword_100837AD0;
  if (!qword_100837AD0)
  {
    sub_10000B870(&qword_100837AA8, &qword_1006C9A98);
    sub_1000B2E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AD0);
  }

  return result;
}

unint64_t sub_1000B2E44()
{
  result = qword_100837AD8;
  if (!qword_100837AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100837AD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeSettings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeSettings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProofingDataContainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProofingDataContainer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDVDataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDVDataType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B3468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000B34B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PendingActionContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PendingActionContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IQMetrics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IQMetrics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityProofingRequestV2.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityProofingRequestV2.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegisterTerminalRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RegisterTerminalRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInputField.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserInputField.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}