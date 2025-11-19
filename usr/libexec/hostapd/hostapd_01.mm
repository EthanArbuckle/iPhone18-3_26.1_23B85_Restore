uint64_t sub_10000CAC4(char *a1, unint64_t a2, char *a3, unsigned int *a4, unsigned int *a5, unint64_t *a6, unint64_t *a7, char *a8, uint64_t a9, int a10)
{
  v10 = bswap64(*a4 | (*(a4 + 2) << 32));
  v11 = bswap64(*a5 | (*(a5 + 2) << 32));
  v12 = v10 >= v11;
  if (v10 >= v11)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  if (v12)
  {
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  v46 = *v13;
  v47 = *(v13 + 2);
  v48 = *v14;
  v49 = *(v14 + 2);
  v20 = bswap64(*a6);
  v21 = bswap64(*a7);
  if (v20 == v21 && (v20 = bswap64(a6[1]), v21 = bswap64(a7[1]), v20 == v21) && (v20 = bswap64(a6[2]), v21 = bswap64(a7[2]), v20 == v21) && (v20 = bswap64(a6[3]), v21 = bswap64(a7[3]), v20 == v21))
  {
    v22 = 0;
  }

  else if (v20 < v21)
  {
    v22 = -1;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22 < 0;
  if (v22 >= 0)
  {
    v24 = a7;
  }

  else
  {
    v24 = a6;
  }

  if (v23)
  {
    v25 = a7;
  }

  else
  {
    v25 = a6;
  }

  v26 = *(v24 + 1);
  v50 = *v24;
  v51 = v26;
  v27 = *(v25 + 1);
  v52 = *v25;
  v53 = v27;
  if (a10)
  {
    sub_10000F628(a1, a2, a3, &v46, 76, a8, a9);
  }

  else
  {
    sub_10000EE1C(a1, a2, a3, &v46, 76, a8, a9);
  }

  v44 = *(a5 + 4);
  v45 = *(a5 + 5);
  v42 = *(a5 + 2);
  v43 = *(a5 + 3);
  v40 = *a5;
  v41 = *(a5 + 1);
  v38 = *(a4 + 4);
  v39 = *(a4 + 5);
  v36 = *(a4 + 2);
  v37 = *(a4 + 3);
  v35 = *(a4 + 1);
  sub_100016A20(1, "WPA: PTK derivation - A1=%02x:%02x:%02x:%02x:%02x:%02x A2=%02x:%02x:%02x:%02x:%02x:%02x", v28, v29, v30, v31, v32, v33, *a4);
  sub_100016B64(1, "WPA: PMK", a1, a2);
  return sub_100016B64(1, "WPA: PTK", a8, a9);
}

uint64_t sub_10000CCDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = xmmword_10002BBE0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v8 = (a3 + 24);
  *(a3 + 32) = 0;
  *(a3 + 40) = 32;
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  if (a2 <= 3)
  {
    sub_100016A20(1, "%s: ie len too short %lu", a3, a4, a5, a6, a7, a8, "wpa_parse_wpa_ie_rsn");
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 48 || a2 - 2 != *(a1 + 1) || *(a1 + 2) != 1)
  {
    sub_100016A20(1, "%s: malformed ie or unknown version", a3, a4, a5, a6, a7, a8, "wpa_parse_wpa_ie_rsn");
    return 4294967294;
  }

  if ((a2 - 4) < 4)
  {
    if (a2 != 4)
    {
      sub_100016A20(1, "%s: ie length mismatch, %u too much", a3, a4, a5, a6, a7, a8, "wpa_parse_wpa_ie_rsn");
      return 4294967293;
    }

    return 0;
  }

  v13 = sub_10000D108((a1 + 4));
  *(a3 + 8) = v13;
  if (v13 == 32)
  {
    sub_100016A20(1, "%s: AES-128-CMAC used as group cipher", v14, v15, v16, v17, v18, v19, "wpa_parse_wpa_ie_rsn");
    return 0xFFFFFFFFLL;
  }

  if ((v9 - 8) < 2)
  {
    if (v9 == 9)
    {
      sub_100016A20(1, "%s: ie too short (for key mgmt)", v14, v15, v16, v17, v18, v19, "wpa_parse_wpa_ie_rsn");
      return 4294967291;
    }

    return 0;
  }

  *(a3 + 4) = 0;
  v20 = *(a1 + 9);
  v21 = *(a1 + 8);
  v22 = v21 | (v20 << 8);
  if (!v22 || v9 - 10 < (4 * v22))
  {
    sub_100016A20(1, "%s: ie count botch (pairwise), count %u left %u", v14, v15, v16, v17, v18, v19, "wpa_parse_wpa_ie_rsn");
    return 4294967292;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 10;
  v26 = (4 * v21) | (v20 << 10);
  do
  {
    v24 |= sub_10000D108((v25 + v23));
    *(a3 + 4) = v24;
    v23 += 4;
  }

  while (v26 != v23);
  if ((v24 & 0x20) != 0)
  {
    sub_100016A20(1, "%s: AES-128-CMAC used as pairwise cipher", v27, v28, v29, v30, v31, v32, "wpa_parse_wpa_ie_rsn");
    return 0xFFFFFFFFLL;
  }

  if (v9 - 6 - v23 < 6)
  {
    if (v9 - 11 == v23)
    {
      sub_100016A20(1, "%s: ie too short (for capabilities)", v27, v28, v29, v30, v31, v32, "wpa_parse_wpa_ie_rsn");
      return 4294967289;
    }

    return 0;
  }

  *(a3 + 12) = 0;
  v33 = *(v25 + v23);
  v34 = v9 - 12;
  if (!*(v25 + v23) || v34 - v23 < (4 * v33))
  {
    v45 = *(v25 + v23);
    sub_100016A20(1, "%s: ie count botch (key mgmt), count %u left %u", v27, v28, v29, v30, v31, v32, "wpa_parse_wpa_ie_rsn");
    return 4294967290;
  }

  v35 = 0;
  do
  {
    v36 = bswap32(*(a1 + v23 + 12)) - 1027073;
    if (v36 > 7)
    {
      v37 = 0;
    }

    else
    {
      v37 = dword_10002BC08[v36];
    }

    v35 |= v37;
    *(a3 + 12) = v35;
    v23 += 4;
    --v33;
  }

  while (v33);
  if (v9 - 8 - v23 <= 5)
  {
    v38 = v34 - v23;
    goto LABEL_44;
  }

  *(a3 + 16) = *(a1 + v23 + 12) | (*(a1 + v23 + 13) << 8);
  v38 = v9 - 14 - v23;
  if (v38 <= 1)
  {
    goto LABEL_44;
  }

  v39 = *(a1 + v23 + 15);
  v40 = *(a1 + v23 + 14);
  v41 = v40 | (v39 << 8);
  *v8 = v41;
  v42 = v9 - 16;
  if (v9 - 16 - v23 < (16 * v41))
  {
    sub_100016A20(1, "%s: PMKID underflow (num_pmkid=%lu left=%d)", v27, v28, v29, v30, v31, v32, "wpa_parse_wpa_ie_rsn");
    *v8 = 0;
    return 4294967287;
  }

  *(a3 + 32) = a1 + v23 + 16;
  v43 = (v39 << 12) | (16 * v40);
  if (v42 - v43 - v23 <= 3)
  {
    v38 = v42 - v43 - v23;
LABEL_44:
    if (v38 >= 1)
    {
      sub_100016A20(1, "%s: ie has %u trailing bytes - ignored", v27, v28, v29, v30, v31, v32, "wpa_parse_wpa_ie_rsn");
    }

    return 0;
  }

  v44 = sub_10000D108((a1 + 16 * v41 + v23 + 16));
  *(a3 + 40) = v44;
  if (v44 == 32)
  {
    v38 = v9 - v43 - v23 - 20;
    goto LABEL_44;
  }

  sub_100016A20(1, "%s: Unsupported management group cipher 0x%x", v27, v28, v29, v30, v31, v32, "wpa_parse_wpa_ie_rsn");
  return 4294967286;
}

uint64_t sub_10000D108(unsigned int *a1)
{
  v1 = bswap32(*a1) - 1027072;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_10002BC28[v1];
  }
}

double sub_10000D138(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, int a6)
{
  v9 = xmmword_10002BBF0;
  v10 = 6;
  v11[0] = "PMK Name";
  v11[1] = a3;
  v11[2] = a4;
  if (a6)
  {
    sub_10000F43C(a1, a2, 3uLL, v11, &v9, v8);
  }

  else
  {
    sub_10000EC1C(a1, a2, 3uLL, v11, &v9, v8);
  }

  result = v8[0];
  *a5 = *v8;
  return result;
}

const char *sub_10000D1E4(int a1)
{
  if (a1 > 7)
  {
    if (a1 == 8)
    {
      return "TKIP";
    }

    if (a1 != 16)
    {
      if (a1 == 24)
      {
        return "CCMP+TKIP";
      }

      return "UNKNOWN";
    }

    return "CCMP";
  }

  else
  {
    if (a1 == 1)
    {
      return "NONE";
    }

    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return "WEP-104";
      }

      return "UNKNOWN";
    }

    return "WEP-40";
  }
}

const char *sub_10000D270(int a1, int a2)
{
  if (a1 <= 7)
  {
    switch(a1)
    {
      case 1:
        v3 = "WPA2+WPA/IEEE 802.1X/EAP";
        v4 = "WPA/IEEE 802.1X/EAP";
        v5 = "WPA2/IEEE 802.1X/EAP";
        break;
      case 2:
        v3 = "WPA2-PSK+WPA-PSK";
        v4 = "WPA-PSK";
        v5 = "WPA2-PSK";
        break;
      case 4:
        return "NONE";
      default:
        return "UNKNOWN";
    }

    if (a2 == 2)
    {
      v4 = v5;
    }

    if (a2 == 3)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 255)
  {
    if (a1 != 256)
    {
      if (a1 == 1024)
      {
        return "WPA3-SAE";
      }

      return "UNKNOWN";
    }

    return "WPA2-PSK-SHA256";
  }

  else
  {
    if (a1 != 8)
    {
      if (a1 == 128)
      {
        return "WPA2-EAP-SHA256";
      }

      return "UNKNOWN";
    }

    return "IEEE 802.1X (no WPA)";
  }
}

uint64_t sub_10000D348(int a1, void *__s1, size_t a3, void *__s2, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (__s1)
  {
    if (__s2)
    {
      if (a3 != a5)
      {
        return 0xFFFFFFFFLL;
      }

      result = memcmp(__s1, __s2, a3);
      if (result)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_10000D388(int a1)
{
  result = 32;
  if (a1 <= 255)
  {
    if (a1 > 31)
    {
      if (a1 != 32 && a1 != 64)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 8)
      {
        return result;
      }

      if (a1 != 16)
      {
        return 0;
      }
    }

    return 16;
  }

  if (a1 <= 2047)
  {
    if (a1 != 256 && a1 != 512)
    {
      return 0;
    }
  }

  else if (a1 != 0x2000 && a1 != 4096)
  {
    if (a1 != 2048)
    {
      return 0;
    }

    return 16;
  }

  return result;
}

uint64_t sub_10000D408(int a1)
{
  if (a1 <= 255)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        return 4;
      }

      if (a1 == 64)
      {
        return 6;
      }
    }

    else
    {
      if (a1 == 8)
      {
        return 2;
      }

      if (a1 == 16)
      {
        return 3;
      }
    }
  }

  else if (a1 <= 2047)
  {
    if (a1 == 256)
    {
      return 9;
    }

    if (a1 == 512)
    {
      return 10;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x800:
        return 11;
      case 0x1000:
        return 12;
      case 0x2000:
        return 13;
    }
  }

  return 0;
}

uint64_t sub_10000D4B8(int a1)
{
  v1 = a1 == 0x2000;
  if (a1 == 4096)
  {
    v1 = 1;
  }

  if (a1 == 2048)
  {
    v1 = 1;
  }

  return a1 == 32 || v1;
}

uint64_t sub_10000D4E0(unsigned int *a1, __int128 *a2, _BYTE *a3, unint64_t a4)
{
  v7 = sub_1000271DC(a1, 16);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  for (i = *a2; a4; a4 -= v10)
  {
    v9 = v20;
    sub_100027234(v8, &i, v20);
    if (a4 >= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = a4;
    }

    v11 = a3;
    v12 = v10;
    do
    {
      v13 = *v9++;
      *v11++ ^= v13;
      --v12;
    }

    while (v12);
    a3 += v10;
    v14 = 15;
    do
    {
      v15 = *(&i + v14);
      v16 = v15 + 1;
      *(&i + v14) = v15 + 1;
      v18 = v14-- != 0;
    }

    while ((v16 & 0x100) != 0 && v18);
  }

  sub_100027238(v8);
  return 0;
}

uint64_t sub_10000D5EC(unsigned int *a1, int a2, uint64_t *__src, char *__dst)
{
  v7 = *__src;
  v8 = 8 * a2;
  memcpy(__dst, __src + 1, 8 * a2);
  v9 = sub_100027370(a1, 16);
  if (v9)
  {
    v10 = v9;
    v11 = &__dst[v8 - 8];
    v12 = 6 * a2;
    v13 = 5;
    do
    {
      v14 = v13;
      if (a2 >= 1)
      {
        v15 = v12;
        v16 = a2 + 1;
        v17 = v11;
        do
        {
          v18 = *v17;
          v21 = v7;
          v22 = v18;
          HIBYTE(v21) = HIBYTE(v7) ^ v15;
          sub_1000273C8(v10, &v21, &v21);
          v7 = v21;
          *v17 = v22;
          v17 -= 8;
          --v16;
          --v15;
        }

        while (v16 > 1);
      }

      v13 = v14 - 1;
      v12 -= a2;
    }

    while (v14);
    v23 = v7;
    sub_100027238(v10);
    v19 = 0;
    while (*(&v23 + v19) == 166)
    {
      if (++v19 == 8)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000D748(unsigned int *a1, int a2, void *__src, uint64_t *a4)
{
  *a4 = 0xA6A6A6A6A6A6A6A6;
  memcpy(a4 + 1, __src, 8 * a2);
  v7 = sub_1000271DC(a1, 16);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = 0;
  v10 = 1;
  do
  {
    if (a2 >= 1)
    {
      v11 = 1;
      v12 = v10;
      v13 = a2;
      do
      {
        v14 = a4[v11];
        v18 = *a4;
        v19 = v14;
        sub_100027234(v8, &v18, &v18);
        v15 = HIBYTE(v18);
        v16 = v19;
        *a4 = v18;
        *(a4 + 7) = v15 ^ v12;
        a4[v11] = v16;
        ++v12;
        ++v11;
        --v13;
      }

      while (v13);
    }

    ++v9;
    v10 += a2;
  }

  while (v9 != 6);
  sub_100027238(v8);
  return 0;
}

uint64_t sub_10000D878(__int128 *a1, unint64_t a2, unint64_t a3, const void *a4, const void *a5, _OWORD *a6)
{
  v16 = a2;
  v17 = a1;
  if (a3 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 0;
  v10 = 0uLL;
  memset(v20, 0, sizeof(v20));
  if (a2 >= 0x41)
  {
    if (!sub_1000276B4(1, &v17, &v16, &v22))
    {
      v16 = 16;
      v17 = &v22;
      v10 = 0uLL;
      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_5:
  v25 = v10;
  v26 = v10;
  v23 = v10;
  v24 = v10;
  __memcpy_chk();
  v11 = 0;
  v12.i64[0] = 0x3636363636363636;
  v12.i64[1] = 0x3636363636363636;
  do
  {
    *(&v23 + v11) = veorq_s8(*(&v23 + v11), v12);
    v11 += 16;
  }

  while (v11 != 64);
  v19 = &v23;
  *&v18[0] = 64;
  if (a3)
  {
    memcpy(v20, a4, 8 * a3);
    memcpy(v18 + 8, a5, 8 * a3);
  }

  if (sub_1000276B4(a3 + 1, &v19, v18, a6))
  {
    return 0xFFFFFFFFLL;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  __memcpy_chk();
  v14 = 0;
  v15.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v15.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    *(&v23 + v14) = veorq_s8(*(&v23 + v14), v15);
    v14 += 16;
  }

  while (v14 != 64);
  v19 = &v23;
  *&v20[0] = a6;
  v18[0] = xmmword_10002BC50;
  return sub_1000276B4(2, &v19, v18, a6);
}

uint64_t sub_10000DA48(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a4;
  v7 = a3;
  return sub_10000D878(a1, a2, 1uLL, &v7, &v6, a5);
}

uint64_t sub_10000DA7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = ++dword_100040328;
  if (dword_10004032C < 0x3E9 || (v8 & 0x3FF) == 0)
  {
    v11 = result;
    v12[0] = 0;
    v12[1] = 0;
    sub_100016A20(1, "Add randomness: count=%u entropy=%u", a3, a4, a5, a6, a7, a8, v8);
    sub_1000162A8(v12);
    sub_100016B64(1, "random pool", dword_100040330, 128);
    sub_10000DB6C(v12, 16);
    sub_10000DB6C(v11, a2);
    result = sub_100016B64(1, "random pool", dword_100040330, 128);
    ++dword_10004032C;
    ++dword_1000403B0;
  }

  return result;
}

uint64_t sub_10000DB6C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  result = sub_100016B64(1, "random_mix_pool", a1, a2);
  if (v2)
  {
    v5 = dword_1000403C4;
    v6 = dword_1000403C0;
    do
    {
      v7 = *v3++;
      v8 = __ROR4__(v7, -v6);
      if (v5)
      {
        v9 = 7;
      }

      else
      {
        v9 = 14;
      }

      v6 += v9;
      v10 = v5 + 25;
      v11 = v5 + 19;
      v12 = v5 + 13;
      v13 = v5 + 6;
      v14 = v5 & 0x1F;
      v5 = (v5 - 1) & 0x1F;
      v15 = dword_100040330[v5] ^ v8 ^ dword_100040330[v10 & 0x1F] ^ dword_100040330[v11 & 0x1F];
      result = dword_100040330[v14];
      v16 = v15 ^ dword_100040330[v12 & 0x1F] ^ dword_100040330[v13 & 0x1F] ^ result;
      dword_100040330[v5] = dword_10002BC60[v16 & 7] ^ (v16 >> 3);
      --v2;
    }

    while (v2);
    dword_1000403C0 = v6;
    dword_1000403C4 = v5;
  }

  return result;
}

uint64_t sub_10000DC68(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(0, "Get randomness: len=%u entropy=%u", a3, a4, a5, a6, a7, a8, a2);
  v20 = sub_1000164A4(a1, a2);
  v21 = a1;
  sub_100016B64(1, "random from os_get_random", a1, a2);
  if (a2)
  {
    v10 = a2;
    v11 = v21;
    do
    {
      sub_10000EDE8(byte_1000403C8, 0x14uLL, dword_100040330, 128, &v24);
      sub_10000DB6C(&v24, 20);
      v12 = 0;
      v13 = dword_1000403C4;
      do
      {
        *&v23[v12] = dword_100040330[v13 & 0x1F];
        v12 += 4;
        --v13;
      }

      while (v12 != 64);
      sub_10000EDE8(byte_1000403C8, 0x14uLL, v23, 64, &v24);
      LODWORD(v24) = v24 ^ v25;
      *v22 = v24;
      v14 = v22;
      sub_100016B64(1, "random from internal pool", v22, 16);
      if (v10 >= 0x10)
      {
        v15 = 16;
      }

      else
      {
        v15 = v10;
      }

      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      do
      {
        v17 = *v14++;
        *v11++ ^= v17;
        --v16;
      }

      while (v16);
      v10 -= v15;
    }

    while (v10);
  }

  sub_100016B64(1, "mixed random", v21, a2);
  if (dword_10004032C >= a2)
  {
    v18 = dword_10004032C - a2;
  }

  else
  {
    v18 = 0;
  }

  dword_10004032C = v18;
  return v20;
}

void sub_10000DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_100016A20(1, "random: Mark internal entropy pool to be ready (count=%u/%u)", a3, a4, a5, a6, a7, a8, ++dword_1000403B4);

  sub_10000DEA8(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_10000DEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1000403B8 && (sub_10000DC68(v30, 0x14uLL, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
  {
    v8 = fopen(qword_1000403B8, "wb");
    if (v8)
    {
      v15 = v8;
      v16 = dword_1000403B4;
      if (dword_1000403B4 >= 0xFF)
      {
        v16 = -1;
      }

      __ptr = v16;
      if (fwrite(&__ptr, 1uLL, 1uLL, v8) == 1 && fwrite(v30, 0x14uLL, 1uLL, v15) == 1)
      {
        fclose(v15);
        sub_100016A20(1, "random: Updated entropy file %s (own_pool_ready=%u)", v17, v18, v19, v20, v21, v22, qword_1000403B8);
      }

      else
      {
        fclose(v15);
        sub_100016A20(4, "random: Could not write entropy data to %s", v23, v24, v25, v26, v27, v28, qword_1000403B8);
      }
    }

    else
    {
      sub_100016A20(4, "random: Could not open entropy file %s for writing", v9, v10, v11, v12, v13, v14, qword_1000403B8);
    }
  }
}

void sub_10000DFDC(const char *a1)
{
  free(qword_1000403B8);
  if (a1)
  {
    v2 = strdup(a1);
    qword_1000403B8 = v2;
    if (v2)
    {
      v17 = 0;
      v2 = sub_100016690(v2, &v17);
      if (v2)
      {
        v10 = v2;
        if (v17 == 21)
        {
          dword_1000403B4 = *v2;
          sub_10000DA7C((v2 + 1), 20, v4, v5, v6, v7, v8, v9);
          free(v10);
          v2 = sub_100016A20(1, "random: Added entropy from %s (own_pool_ready=%u)", v11, v12, v13, v14, v15, v16, qword_1000403B8);
        }

        else
        {
          sub_100016A20(1, "random: Invalid entropy file %s", v4, v5, v6, v7, v8, v9, qword_1000403B8);
          free(v10);
        }
      }
    }
  }

  else
  {
    qword_1000403B8 = 0;
  }

  sub_10000DEA8(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_10000E0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000DEA8(a1, a2, a3, a4, a5, a6, a7, a8);
  free(qword_1000403B8);
  qword_1000403B8 = 0;
}

uint64_t sub_10000E0E8(int8x16_t *a1, unsigned int *a2, int8x16_t *a3, uint64_t a4, _WORD *a5, void *a6, void *a7)
{
  v17 = veorq_s8(*a1, *a3);
  if (sub_100021638(a2, &v17, &v17))
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  LODWORD(v16[0]) = *a4;
  WORD2(v16[0]) = *(a4 + 4);
  HIWORD(v16[0]) = *a5;
  v16[1] = v16[0];
  do
  {
    v15.i8[v13 ^ 8] = a1->i8[v13] ^ *(v16 + v13);
    ++v13;
  }

  while (v13 != 16);
  v15 = veorq_s8(v15, v17);
  if (sub_100021638(a2, &v15, &v17))
  {
    return 0xFFFFFFFFLL;
  }

  v17 = veorq_s8(v17, *a1);
  if (a6)
  {
    *a6 = v17.i64[0];
  }

  result = 0;
  if (a7)
  {
    *a7 = v17.i64[1];
  }

  return result;
}

uint64_t sub_10000E228(int8x16_t *a1, unsigned int *a2, int8x16_t *a3, void *a4, _DWORD *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v24 = veorq_s8(*a1, *a3);
  if (sub_100021638(a2, &v24, &v23))
  {
    return 0xFFFFFFFFLL;
  }

  v24 = veorq_s8(*a1, v23);
  v24.i8[15] ^= 1u;
  if (sub_100021638(a2, &v24, &v22))
  {
    return 0xFFFFFFFFLL;
  }

  v22 = veorq_s8(v22, *a1);
  if (a4)
  {
    *a4 = v22.i64[1];
  }

  if (a7)
  {
    *a7 = v22.i32[0];
    *(a7 + 4) = v22.i16[2];
  }

  if (a5)
  {
    for (i = 0; i != 16; ++i)
    {
      *(&v24 | (i + 12) & 0xFLL) = a1->i8[i] ^ v23.i8[i];
    }

    v24.i8[15] ^= 2u;
    if (sub_100021638(a2, &v24, a5))
    {
      return 0xFFFFFFFFLL;
    }

    for (j = 0; j != 16; ++j)
    {
      *(a5 + j) ^= a1->u8[j];
    }
  }

  if (a6)
  {
    for (k = 0; k != 16; ++k)
    {
      v24.i8[k ^ 8] = a1->i8[k] ^ v23.i8[k];
    }

    v24.i8[15] ^= 4u;
    if (sub_100021638(a2, &v24, a6))
    {
      return 0xFFFFFFFFLL;
    }

    for (m = 0; m != 16; ++m)
    {
      *(a6 + m) ^= a1->u8[m];
    }
  }

  if (!a8)
  {
    return 0;
  }

  for (n = 0; n != 16; ++n)
  {
    *(&v24 | (n + 4) & 0xFLL) = a1->i8[n] ^ v23.i8[n];
  }

  v24.i8[15] ^= 8u;
  if (sub_100021638(a2, &v24, &v24))
  {
    return 0xFFFFFFFFLL;
  }

  for (ii = 0; ii != 6; ++ii)
  {
    result = 0;
    *(a8 + ii) = a1->i8[ii] ^ v24.i8[ii];
  }

  return result;
}

int8x16_t *sub_10000E4A0(int8x16_t *result, _WORD *a2, unsigned int *a3, uint64_t a4, int8x16_t *a5, uint64_t a6, _DWORD *a7, _DWORD *a8, void *a9, void *a10)
{
  if (*a10 <= 7uLL || (v17 = result, result = sub_10000E0E8(result, a3, a5, a4, a2, &v20, 0), result) || (result = sub_10000E228(v17, a3, a5, a9, a8, a7, v19, 0), result))
  {
    *a10 = 0;
  }

  else
  {
    v18 = 0;
    *a10 = 8;
    do
    {
      *(a6 + v18) = v19[v18] ^ *(a4 + v18);
      ++v18;
    }

    while (v18 != 6);
    *(a6 + 6) = *a2;
    *(a6 + 8) = v20;
  }

  return result;
}

uint64_t sub_10000E5C8(int8x16_t *a1, unsigned int *a2, int8x16_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  if (sub_10000E228(a1, a2, a3, 0, 0, 0, 0, v12))
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 6; ++i)
  {
    *(a5 + i) = v12[i] ^ *(a4 + i);
  }

  if (sub_10000E0E8(a1, a2, a3, a5, &v13, 0, &v14))
  {
    return 0xFFFFFFFFLL;
  }

  if (v14 == *(a4 + 6))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

int8x8_t sub_10000E6BC(int8x16_t *a1, unsigned int *a2, int8x16_t *a3, _DWORD *a4, uint8x8_t *a5)
{
  if (!sub_10000E228(a1, a2, a3, &v13, v12, v11, 0, 0))
  {
    v8 = veor_s8(v11[0], v11[1]);
    v9 = veor_s8(veor_s8(v12[1], v12[0]), v8);
    *a5 = v9;
    v8.i32[0] = HIDWORD(v13);
    v9.i32[0] = v13;
    v10 = veor_s8(*&vmovl_u8(v8), *&vmovl_u8(v9));
    result = vuzp1_s8(v10, v10);
    *a4 = result.i32[0];
  }

  return result;
}

uint64_t sub_10000E768(int8x16_t *a1, unsigned int *a2, unsigned int *a3, int8x16_t *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8, void *a9, uint64_t a10)
{
  sub_100016A94(1, "Milenage: AUTN", a5, 16);
  sub_100016A94(1, "Milenage: RAND", a4, 16);
  if (!sub_10000E228(a1, a2, a4, a8, a7, a6, v36, 0))
  {
    *a9 = 8;
    sub_100016B64(1, "Milenage: RES", a8, 8);
    sub_100016B64(1, "Milenage: CK", a7, 16);
    sub_100016B64(1, "Milenage: IK", a6, 16);
    sub_100016B64(1, "Milenage: AK", v36, 6);
    for (i = 0; i != 6; ++i)
    {
      *(&v34 + i + 4) = v36[i] ^ a5[i];
    }

    sub_100016A94(1, "Milenage: SQN", &v34 + 4, 6);
    v20 = bswap64(HIDWORD(v34) | (v35 << 32));
    v21 = bswap64(*a3 | (*(a3 + 2) << 32));
    v22 = v20 >= v21;
    v23 = v20 > v21;
    v24 = !v22;
    if (v23 - v24 <= 0)
    {
      LOWORD(v37) = 0;
      if (!sub_10000E228(a1, a2, a4, 0, 0, 0, 0, v36))
      {
        sub_100016B64(1, "Milenage: AK*", v36, 6);
        for (j = 0; j != 6; ++j)
        {
          *(a10 + j) = v36[j] ^ *(a3 + j);
        }

        if (!sub_10000E0E8(a1, a2, a4, a3, &v37, 0, (a10 + 6)))
        {
          sub_100016A94(1, "Milenage: AUTS", a10, 14);
          return 4294967294;
        }
      }
    }

    else
    {
      sub_100016A94(1, "Milenage: AMF", a5 + 6, 2);
      if (!sub_10000E0E8(a1, a2, a4, &v34 + 4, a5 + 3, &v37, 0))
      {
        sub_100016A94(1, "Milenage: MAC_A", &v37, 8);
        v32 = *(a5 + 1);
        v31 = a5 + 8;
        if (v37 == v32)
        {
          return 0;
        }

        sub_100016A20(1, "Milenage: MAC mismatch", v25, v26, v27, v28, v29, v30, v34);
        sub_100016A94(1, "Milenage: Received MAC_A", v31, 8);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000EA7C(char *__s, uint64_t a2, uint64_t a3, int a4, char *a5, unint64_t a6)
{
  if (!a6)
  {
    return 0;
  }

  v6 = a6;
  v11 = 0;
  while (1)
  {
    ++v11;
    v12 = strlen(__s);
    v22[0] = a2;
    v22[1] = v18;
    v21[0] = a3;
    v21[1] = 4;
    v18[0] = HIBYTE(v11);
    v18[1] = BYTE2(v11);
    v18[2] = BYTE1(v11);
    v18[3] = v11;
    if (sub_10000EC1C(__s, v12, 2uLL, v22, v21, &v25))
    {
      return 0xFFFFFFFFLL;
    }

    __src = v25;
    v20 = v26;
    if (a4 >= 2)
    {
      v13 = 1;
      while (!sub_10000EDE8(__s, v12, &v25, 20, &v23))
      {
        v14 = 0;
        v25 = v23;
        v26 = v24;
        do
        {
          *(&__src + v14) ^= *(&v23 + v14);
          ++v14;
        }

        while (v14 != 20);
        if (++v13 == a4)
        {
          goto LABEL_10;
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_10:
    if (v6 >= 0x14)
    {
      v15 = 20;
    }

    else
    {
      v15 = v6;
    }

    memcpy(a5, &__src, v15);
    a5 += v15;
    v6 -= v15;
    if (!v6)
    {
      return 0;
    }
  }
}

uint64_t sub_10000EC1C(char *a1, unint64_t a2, unint64_t a3, const void *a4, const void *a5, uint64_t a6)
{
  v16 = a2;
  v17 = a1;
  if (a3 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 0;
  v10 = 0uLL;
  memset(v20, 0, sizeof(v20));
  if (a2 >= 0x41)
  {
    if (!sub_1000282FC(1, &v17, &v16, v22))
    {
      v16 = 20;
      v17 = v22;
      v10 = 0uLL;
      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_5:
  v25 = v10;
  v26 = v10;
  v23 = v10;
  v24 = v10;
  __memcpy_chk();
  v11 = 0;
  v12.i64[0] = 0x3636363636363636;
  v12.i64[1] = 0x3636363636363636;
  do
  {
    *(&v23 + v11) = veorq_s8(*(&v23 + v11), v12);
    v11 += 16;
  }

  while (v11 != 64);
  v19 = &v23;
  *&v18[0] = 64;
  if (a3)
  {
    memcpy(v20, a4, 8 * a3);
    memcpy(v18 + 8, a5, 8 * a3);
  }

  if (sub_1000282FC(a3 + 1, &v19, v18, a6))
  {
    return 0xFFFFFFFFLL;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  __memcpy_chk();
  v14 = 0;
  v15.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v15.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  do
  {
    *(&v23 + v14) = veorq_s8(*(&v23 + v14), v15);
    v14 += 16;
  }

  while (v14 != 64);
  v19 = &v23;
  *&v20[0] = a6;
  v18[0] = xmmword_10002BC80;
  return sub_1000282FC(2, &v19, v18, a6);
}

uint64_t sub_10000EDE8(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  return sub_10000EC1C(a1, a2, 1uLL, &v7, &v6, a5);
}

uint64_t sub_10000EE1C(char *a1, unint64_t a2, char *__s, uint64_t a4, uint64_t a5, char *a6, size_t a7)
{
  v15 = 0;
  v17[0] = __s;
  v17[1] = a4;
  v16[0] = strlen(__s) + 1;
  v16[1] = a5;
  v17[2] = &v15;
  v16[2] = 1;
  if (a7)
  {
    v12 = 0;
    for (i = a7; i >= 0x14; i -= 20)
    {
      if (sub_10000EC1C(a1, a2, 3uLL, v17, v16, a6))
      {
        return 0xFFFFFFFFLL;
      }

      v12 += 20;
      ++v15;
      a6 += 20;
      if (v12 >= a7)
      {
        return 0;
      }
    }

    if (sub_10000EC1C(a1, a2, 3uLL, v17, v16, __src))
    {
      return 0xFFFFFFFFLL;
    }

    memcpy(a6, __src, i);
  }

  return 0;
}

uint64_t sub_10000EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v19[0] = xmmword_10002BC90;
  v19[1] = xmmword_10002BCA0;
  if (!a1)
  {
    v12 = 0;
LABEL_19:
    v14 = v18 + 8 * v12;
    v18 = v14;
    v15 = v12 + 1;
    LODWORD(v20) = v12 + 1;
    *(&v20 + v12 + 4) = 0x80;
    if (v12 < 0x38)
    {
      if (v12 == 55)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v12 != 63)
      {
        bzero(&v20 + v12 + 5, v12 ^ 0x3F);
        LODWORD(v20) = 64;
      }

      sub_10000F1B4(&v18, &v20 + 4);
      v15 = 0;
    }

    bzero(&v20 + v15 + 4, 56 - v15);
    LODWORD(v20) = 56;
    v14 = v18;
LABEL_25:
    *(&v24 + 4) = bswap64(v14);
    sub_10000F1B4(&v18, &v20 + 4);
    v16 = 0;
    v17 = a4 + 1;
    do
    {
      *(v17 - 1) = bswap32(*(v19 + v16++));
      v17 += 4;
    }

    while (v16 != 8);
    return 0;
  }

  v8 = 0;
  while (v20 <= 0x40)
  {
    v9 = *(a3 + 8 * v8);
    if (v9)
    {
      v10 = *(a2 + 8 * v8);
      do
      {
        if (v9 < 0x40 || v20)
        {
          if (v9 >= (64 - v20))
          {
            v11 = (64 - v20);
          }

          else
          {
            v11 = v9;
          }

          memcpy(&v20 + v20 + 4, v10, v11);
          LODWORD(v20) = v20 + v11;
          v10 += v11;
          v9 -= v11;
          if (v20 == 64)
          {
            sub_10000F1B4(&v18, &v20 + 4);
            v18 += 512;
            LODWORD(v20) = 0;
          }
        }

        else
        {
          sub_10000F1B4(&v18, v10);
          v18 += 512;
          v10 += 64;
          v9 -= 64;
        }
      }

      while (v9);
    }

    if (++v8 == a1)
    {
      v12 = v20;
      if (v20 <= 0x3F)
      {
        goto LABEL_19;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}

int32x4_t sub_10000F1B4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  v41 = vld4q_s8(a2);
  v3 = *(a1 + 24);
  v4 = vmovl_u8(*v41.val[0].i8);
  v5 = vmovl_high_u8(v41.val[0]);
  _Q18 = vmovl_high_u8(v41.val[1]);
  _Q19 = vmovl_u8(*v41.val[1].i8);
  v8 = vshll_n_s16(*_Q19.i8, 0x10uLL);
  __asm
  {
    SHLL2           V21.4S, V18.8H, #0x10
    SHLL2           V19.4S, V19.8H, #0x10
  }

  v14 = vmovl_u8(*v41.val[2].i8);
  v15 = vmovl_high_u8(v41.val[2]);
  v16 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q18.i8, 0x10uLL), vshll_n_u16(*v15.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v5.i8), 0x18uLL));
  v17 = vmovl_u8(*v41.val[3].i8);
  v41.val[0] = vmovl_high_u8(v41.val[3]);
  v40[3] = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v15, 8uLL)), vshlq_n_s32(vmovl_high_u16(v5), 0x18uLL)), vmovl_high_u16(v41.val[0]));
  v40[2] = vorrq_s8(v16, vmovl_u16(*v41.val[0].i8));
  v40[0] = vorrq_s8(vorrq_s8(vorrq_s8(v8, vshll_n_u16(*v14.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL)), vmovl_u16(*v17.i8));
  v40[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v14, 8uLL)), vshlq_n_s32(vmovl_high_u16(v4), 0x18uLL)), vmovl_high_u16(v17));
  v18 = 64;
  v19 = v40[0];
  do
  {
    HIDWORD(v20) = *(v40 + v18 - 8);
    LODWORD(v20) = HIDWORD(v20);
    v21 = (v20 >> 17) ^ __ROR4__(HIDWORD(v20), 19) ^ (HIDWORD(v20) >> 10);
    HIDWORD(v20) = *(&v40[-3] + v18 - 12);
    LODWORD(v20) = HIDWORD(v20);
    *(v40 + v18) = v21 + *(&v40[-1] + v18 - 12) + v19 + ((v20 >> 7) ^ __ROR4__(HIDWORD(v20), 18) ^ (HIDWORD(v20) >> 3));
    v18 += 4;
    v19 = HIDWORD(v20);
  }

  while (v18 != 256);
  v22 = 0;
  v23 = HIDWORD(v3);
  v24 = v3;
  v25 = DWORD2(v3);
  v26 = DWORD1(v3);
  v27 = DWORD1(v2);
  v28 = DWORD2(v2);
  v29 = v2;
  v30 = HIDWORD(v2);
  do
  {
    v31 = v26;
    v32 = v25;
    v26 = v24;
    v33 = vdupq_n_s64(v24);
    v34 = vorrq_s8(vandq_s8(vshlq_u64(v33, xmmword_10002BCC0), xmmword_10002BCD0), vshlq_u64(v33, xmmword_10002BCB0));
    v35 = (v31 & v26 | v25 & ~v26) + qword_10002BCE0[v22] + v23 + *(v40 + v22) + (veorq_s8(v34, vdupq_laneq_s64(v34, 1)).u32[0] ^ ((v24 >> 25) | (v26 << 7)));
    v24 = v35 + v30;
    v30 = v28;
    v28 = v27;
    v27 = v29;
    HIDWORD(v36) = v29;
    LODWORD(v36) = v29;
    v29 = ((v28 | v27) & v30 | v28 & v27) + ((v36 >> 2) ^ __ROR4__(v29, 13) ^ __ROR4__(v27, 22)) + v35;
    ++v22;
    v23 = v25;
    v25 = v31;
  }

  while (v22 != 64);
  v37.i64[0] = __PAIR64__(v27, v29);
  v37.i64[1] = __PAIR64__(v30, v28);
  v38.i64[0] = __PAIR64__(v26, v24);
  v38.i64[1] = __PAIR64__(v32, v31);
  *(a1 + 8) = vaddq_s32(v37, *(a1 + 8));
  result = vaddq_s32(v38, *(a1 + 24));
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10000F43C(uint64_t result, unint64_t a2, unint64_t a3, const void *a4, const void *a5, uint64_t a6)
{
  v15 = a2;
  v16 = result;
  if (a3 <= 5)
  {
    v20 = 0;
    v10 = 0uLL;
    memset(v19, 0, sizeof(v19));
    if (a2 >= 0x41)
    {
      sub_10000EF54(1, &v16, &v15, v21);
      v10 = 0uLL;
      v15 = 32;
      v16 = v21;
    }

    v24 = v10;
    v25 = v10;
    v22 = v10;
    v23 = v10;
    __memcpy_chk();
    v11 = 0;
    v12.i64[0] = 0x3636363636363636;
    v12.i64[1] = 0x3636363636363636;
    do
    {
      *(&v22 + v11) = veorq_s8(*(&v22 + v11), v12);
      v11 += 16;
    }

    while (v11 != 64);
    v18 = &v22;
    *&v17[0] = 64;
    if (a3)
    {
      memcpy(v19, a4, 8 * a3);
      memcpy(v17 + 8, a5, 8 * a3);
    }

    sub_10000EF54(a3 + 1, &v18, v17, a6);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    __memcpy_chk();
    v13 = 0;
    v14.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
    v14.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
    do
    {
      *(&v22 + v13) = veorq_s8(*(&v22 + v13), v14);
      v13 += 16;
    }

    while (v13 != 64);
    v18 = &v22;
    *&v19[0] = a6;
    v17[0] = xmmword_10002BEE0;
    return sub_10000EF54(2, &v18, v17, a6);
  }

  return result;
}

uint64_t sub_10000F5F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  return sub_10000F43C(a1, a2, 1uLL, &v7, &v6, a5);
}

void *sub_10000F628(uint64_t a1, unint64_t a2, char *__s, uint64_t a4, uint64_t a5, char *a6, size_t a7)
{
  v19[0] = 2;
  v20[0] = &v18;
  v20[1] = __s;
  result = strlen(__s);
  v19[1] = result;
  v19[2] = a5;
  v20[2] = a4;
  v20[3] = &v17;
  v19[3] = 2;
  v17 = 8 * a7;
  if (a7)
  {
    v14 = 0;
    v15 = 1;
    for (i = a7; ; i -= 32)
    {
      v18 = v15;
      if (i < 0x20)
      {
        break;
      }

      result = sub_10000F43C(a1, a2, 4uLL, v20, v19, a6);
      v14 += 32;
      ++v15;
      a6 += 32;
      if (v14 >= a7)
      {
        return result;
      }
    }

    sub_10000F43C(a1, a2, 4uLL, v20, v19, __src);
    return memcpy(a6, __src, i);
  }

  return result;
}

uint64_t sub_10000F758(int a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3 + 24;
  v9 = *(a3 + 8);
  if (*(a3 + 16))
  {
    v8 = *(a3 + 16);
  }

  if (v9 > 3)
  {
    v11 = bswap32(*(v8 + 2)) >> 16;
    if (v11 >= 5 && v9 >= v11)
    {
      v14 = *(v8 + 4);
      if (v14 == 254)
      {
        if (v11 > 0xB)
        {
          if (((*(v8 + 5) << 16) | (*(v8 + 6) << 8) | *(v8 + 7)) == a1 && bswap32(*(v8 + 8)) == a2)
          {
            result = v8 + 12;
            *a4 = v11 - 12;
            return result;
          }

          v10 = "EAP: Invalid expanded frame type";
        }

        else
        {
          v10 = "EAP: Invalid expanded EAP length";
        }
      }

      else
      {
        if (!a1 && v14 == a2)
        {
          *a4 = v11 - 5;
          return v8 + 5;
        }

        v10 = "EAP: Invalid frame type";
      }
    }

    else
    {
      v10 = "EAP: Invalid EAP length";
    }
  }

  else
  {
    v10 = "EAP: Too short EAP frame";
  }

  sub_100016A20(2, v10, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

unint64_t *sub_10000F850(int a1, unsigned int a2, uint64_t a3, char a4, char a5)
{
  v9 = 12;
  if (!a1)
  {
    v9 = 5;
  }

  v10 = v9 + a3;
  v11 = sub_1000170C4(v9 + a3);
  v18 = v11;
  if (v11)
  {
    v19 = sub_10001723C(v11, 4, v12, v13, v14, v15, v16, v17);
    *v19 = a4;
    v19[1] = a5;
    *(v19 + 1) = bswap32(v10) >> 16;
    if (a1)
    {
      *sub_10001723C(v18, 1, v20, v21, v22, v23, v24, v25) = -2;
      v32 = sub_10001723C(v18, 3, v26, v27, v28, v29, v30, v31);
      *v32 = BYTE2(a1);
      v32[1] = BYTE1(a1);
      v32[2] = a1;
      *sub_10001723C(v18, 4, v33, v34, v35, v36, v37, v38) = bswap32(a2);
    }

    else
    {
      *sub_10001723C(v18, 1, v20, v21, v22, v23, v24, v25) = a2;
    }
  }

  return v18;
}

uint64_t sub_10000F92C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 4)
  {
    v2 = *(result + 16);
    if (!v2)
    {
      v2 = result + 24;
    }

    *(v2 + 2) = bswap32(v1) >> 16;
  }

  return result;
}

uint64_t sub_10000F958(uint64_t a1)
{
  if (*(a1 + 8) < 4uLL)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = a1 + 24;
  }

  return *(v2 + 1);
}

uint64_t sub_10000F984(uint64_t a1)
{
  if (*(a1 + 8) < 5uLL)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = a1 + 24;
  }

  return *(v2 + 4);
}

uint64_t sub_10000F9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  *(a2 + 4) = *(a1 + 116);
  *a2 = v2;
  return 0;
}

uint64_t sub_10000F9C8(uint64_t a1, int *a2, unsigned int a3, u_char *a4, size_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 136))
  {
    v12 = malloc_type_malloc(a5 + 14, 0x131CAC4uLL);
    if (v12)
    {
      v13 = v12;
      v14 = *a2;
      *(v12 + 2) = *(a2 + 2);
      *v12 = v14;
      v15 = *(a1 + 112);
      *(v12 + 5) = *(a1 + 116);
      *(v12 + 6) = v15;
      *(v12 + 6) = __rev16(a3);
      memcpy(v12 + 14, a4, a5);
      v16 = pcap_sendpacket(*a1, v13, a5 + 14);
      free(v13);
      return v16;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = *a1;

  return pcap_sendpacket(v8, a4, a5);
}

uint64_t sub_10000FACC(unint64_t a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_100016754(0x90uLL);
  v13 = v12;
  if (!v12)
  {
    return v13;
  }

  sub_100016768(v12 + 12, a1, 100);
  *(v13 + 120) = a4;
  *(v13 + 128) = a5;
  *(v13 + 136) = a6;
  if (a2)
  {
    v14 = *a2;
    *(v13 + 116) = *(a2 + 2);
    *(v13 + 112) = v14;
  }

  v28.bf_insns = 0;
  *v29 = 0;
  *&v28.bf_len = 0;
  pcap_lookupnet((v13 + 12), v29, &v29[1], v30);
  v15 = pcap_open_live((v13 + 12), 2500, 0, 10, v30);
  *v13 = v15;
  if (!v15)
  {
    fprintf(__stderrp, "pcap_open_live: %s\n", v30);
    fprintf(__stderrp, "ifname='%s'\n");
LABEL_19:
    free(v13);
    return 0;
  }

  if (pcap_datalink(v15) != 1 && pcap_set_datalink(*v13, 1) < 0)
  {
    v23 = __stderrp;
    v26 = pcap_geterr(*v13);
    v24 = "pcap_set_datalink(DLT_EN10MB): %s\n";
    goto LABEL_18;
  }

  if (pcap_setnonblock(*v13, 1, v30) < 0)
  {
    v16 = __stderrp;
    v17 = pcap_geterr(*v13);
    fprintf(v16, "pcap_setnonblock: %s\n", v17);
  }

  snprintf(__str, 0xC8uLL, "not ether src %02x:%02x:%02x:%02x:%02x:%02x and(ether dst %02x:%02x:%02x:%02x:%02x:%02x or ether dst %02x:%02x:%02x:%02x:%02x:%02x) and ether proto 0x%x", *(v13 + 112), *(v13 + 113), *(v13 + 114), *(v13 + 115), *(v13 + 116), *(v13 + 117), *(v13 + 112), *(v13 + 113), *(v13 + 114), *(v13 + 115), *(v13 + 116), *(v13 + 117), 1, 128, 194, 0, 0, 3, a3);
  if (pcap_compile(*v13, &v28, __str, 1, v29[0]) < 0)
  {
    v23 = __stderrp;
    v26 = pcap_geterr(*v13);
    v24 = "pcap_compile: %s\n";
LABEL_18:
    fprintf(v23, v24, v26);
    goto LABEL_19;
  }

  if (pcap_setfilter(*v13, &v28) < 0)
  {
    v23 = __stderrp;
    v26 = pcap_geterr(*v13);
    v24 = "pcap_setfilter: %s\n";
    goto LABEL_18;
  }

  pcap_freecode(&v28);
  v27 = 1;
  v18 = pcap_fileno(*v13);
  if (ioctl(v18, 0x80044270uLL, &v27) < 0)
  {
    v19 = __stderrp;
    v20 = __error();
    v21 = strerror(*v20);
    fprintf(v19, "%s: cannot enable immediate mode on interface %s: %s\n", "l2_packet_init_libpcap", (v13 + 12), v21);
  }

  selectable_fd = pcap_get_selectable_fd(*v13);
  sub_100025E30(selectable_fd, sub_100010084, v13, *v13);
  return v13;
}

void sub_10000FDFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_10002662C(sub_10000FE60, a1, *a1, a4, a5, a6, a7, a8);
    if (*a1)
    {
      pcap_close(*a1);
    }

    free(a1);
  }
}

uint64_t sub_10000FE60(uint64_t a1, pcap_t *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = v4 - 1;
    v5 = 20000;
  }

  else
  {
    v5 = 100000;
  }

  sub_100026404(0, v5, sub_10000FE60, a1, a2);

  return pcap_dispatch(a2, 10, sub_10001014C, a1);
}

uint64_t sub_10000FEF0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v20 = 0;
  if (pcap_findalldevs(&v20, v21) < 0)
  {
    sub_100016A20(1, "pcap_findalldevs: %s\n", v6, v7, v8, v9, v10, v11, v21);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v12 = v20;
    if (v20)
    {
      while (1)
      {
        if (!strcmp(v12->name, (a1 + 12)))
        {
          addresses = v12->addresses;
          if (addresses)
          {
            break;
          }
        }

LABEL_4:
        v12 = v12->next;
        if (!v12)
        {
          v18 = 0xFFFFFFFFLL;
          goto LABEL_14;
        }
      }

      while (1)
      {
        addr = addresses->addr;
        if (addr)
        {
          if (addr->sa_family == 2)
          {
            break;
          }
        }

        addresses = addresses->next;
        if (!addresses)
        {
          goto LABEL_4;
        }
      }

      v15.s_addr = *&addr->sa_data[2];
      v16 = inet_ntoa(v15);
      sub_100016768(a2, v16, a3);
      v18 = 0;
LABEL_14:
      v17 = v20;
    }

    else
    {
      v17 = 0;
      v18 = 0xFFFFFFFFLL;
    }

    pcap_freealldevs(v17);
  }

  return v18;
}

uint64_t sub_100010018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 8) = 150;
  sub_10002662C(sub_10000FE60, a1, *a1, a4, a5, a6, a7, a8);
  v9 = *a1;

  return sub_100026404(0, 0x2710u, sub_10000FE60, a1, v9);
}

const u_char *sub_100010084(int a1, uint64_t a2, pcap_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  result = pcap_next(a3, &v7);
  if (result && v7.caplen >= 0xE)
  {
    v5 = 14;
    if (*(a2 + 136))
    {
      v5 = 0;
      caplen = v7.caplen;
    }

    else
    {
      caplen = v7.caplen - 14;
    }

    return (*(a2 + 120))(*(a2 + 128), result + 6, &result[v5], caplen);
  }

  return result;
}

uint64_t sub_10001014C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a2 + 16);
    if (v3 >= 0xE)
    {
      v4 = result;
      v5 = 14;
      if (*(result + 136))
      {
        v5 = 0;
        v6 = *(a2 + 16);
      }

      else
      {
        v6 = v3 - 14;
      }

      result = (*(result + 120))(*(result + 128), a3 + 6, a3 + v5, v6);
      *(v4 + 8) = 150;
    }
  }

  return result;
}

char *sub_1000101C0(char a1, char a2)
{
  v4 = sub_100016754(0x28uLL);
  if (v4)
  {
    v5 = sub_1000170C4(1024);
    *v4 = v5;
    if (v5 && (v6 = sub_100016754(0x80uLL), (*(v4 + 2) = v6) != 0))
    {
      *(v4 + 24) = xmmword_10002BEF0;
      v13 = sub_10001723C(*v4, 20, v7, v8, v9, v10, v11, v12);
      *(v4 + 1) = v13;
      *v13 = a1;
      v13[1] = a2;
    }

    else
    {
      sub_100010254(v4);
      return 0;
    }
  }

  return v4;
}

void sub_100010254(uint64_t a1)
{
  if (a1)
  {
    sub_1000171F8(*a1);
    free(*(a1 + 16));

    free(a1);
  }
}

uint64_t sub_1000102A0(void *a1)
{
  v2 = a1[1];
  v3 = *v2;
  v4 = "?Unknown?";
  if ((v3 + 1) <= 0xEu)
  {
    v4 = off_10003CAD8[(v3 + 1)];
  }

  result = printf("RADIUS message: code=%d (%s) identifier=%d length=%d\n", v3, v4, v2[1], bswap32(*(v2 + 1)) >> 16);
  if (a1[4])
  {
    v6 = 0;
    while (1)
    {
      v7 = *a1 + 24;
      if (*(*a1 + 16))
      {
        v7 = *(*a1 + 16);
      }

      v8 = (v7 + *(a1[2] + 8 * v6));
      v9 = *v8;
      v10 = &dword_10003C710;
      v11 = 41;
      while (*(v10 - 16) != v9)
      {
        v10 += 6;
        if (!--v11)
        {
          v21 = v8[1];
          result = printf("   Attribute %d (%s) length=%d\n");
          goto LABEL_28;
        }
      }

      result = printf("   Attribute %d (%s) length=%d\n", v9, *(v10 - 1), v8[1]);
      v12 = v8[1];
      v13 = v12 - 2;
      v14 = (v8 + 2);
      v15 = *v10;
      if (*v10 <= 1)
      {
        break;
      }

      switch(v15)
      {
        case 2:
          if (v12 == 6)
          {
            v19.s_addr = *v14;
            inet_ntoa(v19);
            result = printf("      Value: %s\n");
          }

          else
          {
            result = printf("      Invalid IP address length %d\n");
          }

          break;
        case 3:
          goto LABEL_25;
        case 4:
          if (v12 == 6)
          {
            v20 = bswap32(*(v8 + 2));
            result = printf("      Value: %u\n");
          }

          else
          {
            result = printf("      Invalid INT32 length %d\n");
          }

          break;
      }

LABEL_28:
      if (++v6 >= a1[4])
      {
        return result;
      }
    }

    if (v15)
    {
      if (v15 == 1)
      {
        printf("      Value: '");
        if (v12 >= 3)
        {
          do
          {
            v17 = *v14;
            v14 = (v14 + 1);
            v16 = v17;
            if ((v17 - 32) > 0x5E)
            {
              printf("<%02x>", v16);
            }

            else
            {
              putchar(v16);
            }

            --v13;
          }

          while (v13);
        }

        result = puts("'");
      }

      goto LABEL_28;
    }

LABEL_25:
    printf("      Value:");
    if (v12 >= 3)
    {
      do
      {
        v18 = *v14;
        v14 = (v14 + 1);
        printf(" %02x", v18);
        --v13;
      }

      while (v13);
    }

    result = putchar(10);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_10001051C(void *a1, __int128 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v26[0] = 0;
    v26[1] = 0;
    v11 = sub_100010624(a1, 80, v26, 0x10uLL, a5, a6, a7, a8);
    if (!v11)
    {
      sub_100016A20(3, "RADIUS: Could not add Message-Authenticator", v12, v13, v14, v15, v16, v17, v25);
      return 0xFFFFFFFFLL;
    }

    v18 = *a1;
    v19 = *(*a1 + 8);
    v20 = *(*a1 + 16);
    *(a1[1] + 2) = bswap32(v19) >> 16;
    v21 = v18 + 24;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    sub_10000DA48(a2, a3, v22, v19, v11 + 2);
    v23 = *(*a1 + 8);
  }

  else
  {
    v23 = *(*a1 + 8);
    *(a1[1] + 2) = bswap32(v23) >> 16;
  }

  if (v23 < 0x10000)
  {
    return 0;
  }

  sub_100016A20(3, "RADIUS: Too long message (%lu)", a3, a4, a5, a6, a7, a8, v23);
  return 0xFFFFFFFFLL;
}

char *sub_100010624(uint64_t a1, char a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 0xFE)
  {
    printf("radius_msg_add_attr: too long attribute (%lu bytes)\n", a4);
    return 0;
  }

  v13 = a4 + 2;
  v14 = *a1;
  if (*v14 - v14[1] < a4 + 2)
  {
    if ((sub_100016FCC(a1, a4 + 2) & 0x80000000) != 0)
    {
      return 0;
    }

    v14 = *a1;
    v15 = *(*a1 + 16);
    if (!v15)
    {
      v15 = *a1 + 24;
    }

    *(a1 + 8) = v15;
  }

  v22 = sub_10001723C(v14, 2, a3, a4, a5, a6, a7, a8);
  *v22 = a2;
  v22[1] = v13;
  if (a3)
  {
    v23 = sub_10001723C(*a1, a4, v16, v17, v18, v19, v20, v21);
    memcpy(v23, a3, a4);
  }

  if (sub_100010918(a1, v22))
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

uint64_t sub_10001070C(void *a1, __int128 *a2, unint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[0] = 0;
  v32[1] = 0;
  v12 = sub_100010624(a1, 80, v32, 0x10uLL, a5, a6, a7, a8);
  if (!v12)
  {
    puts("WARNING: Could not add Message-Authenticator");
    return 0xFFFFFFFFLL;
  }

  v13 = a1[1];
  *(v13 + 2) = bswap32(*(*a1 + 8)) >> 16;
  *(v13 + 4) = *a4;
  if (*(*a1 + 16))
  {
    v14 = *(*a1 + 16);
  }

  else
  {
    v14 = *a1 + 24;
  }

  sub_10000DA48(a2, a3, v14, *(*a1 + 8), v12 + 2);
  v16 = *a1;
  v15 = a1[1];
  v31[0] = v15;
  v31[1] = a4;
  v28 = xmmword_10002BF00;
  v17 = v16 + 24;
  v20 = v16 + 8;
  v18 = *(v16 + 8);
  v19 = *(v20 + 8);
  if (v19)
  {
    v17 = v19;
  }

  v31[2] = (v17 + 20);
  v31[3] = a2;
  v29 = v18 - 20;
  v30 = a3;
  sub_1000276B4(4, v31, &v28, (v15 + 4));
  if (*(*a1 + 8) >= 0x10000uLL)
  {
    sub_100016A20(3, "RADIUS: Too long message (%lu)", v21, v22, v23, v24, v25, v26, *(*a1 + 8));
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_100010854(void *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1[1];
  *(v4 + 2) = bswap32(*(*a1 + 8)) >> 16;
  *(v4 + 12) = 0;
  *(v4 + 4) = 0;
  v5 = a1[1];
  v6 = (*a1 + 24);
  v7 = *(*a1 + 8);
  if (*(*a1 + 16))
  {
    v6 = *(*a1 + 16);
  }

  v16[0] = v6;
  v16[1] = a2;
  v15[0] = v7;
  v15[1] = a3;
  result = sub_1000276B4(2, v16, v15, (v5 + 4));
  if (*(*a1 + 8) >= 0x10000uLL)
  {
    return sub_100016A20(3, "RADIUS: Too long messages (%lu)", v9, v10, v11, v12, v13, v14, *(*a1 + 8));
  }

  return result;
}

uint64_t sub_100010918(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v5 >= v4)
  {
    v7 = 2 * v4;
    v6 = malloc_type_realloc(*(a1 + 16), 16 * v4, 0x100004000313F17uLL);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    v5 = *(a1 + 32);
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v8 = 0;
  v9 = *a1 + 24;
  if (*(*a1 + 16))
  {
    v9 = *(*a1 + 16);
  }

  *(a1 + 32) = v5 + 1;
  v6[v5] = a2 - v9;
  return v8;
}

char *sub_1000109BC(unsigned __int16 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a1 && a2 >= 0x14)
  {
    v10 = bswap32(a1[1]) >> 16;
    if (v10 < 0x14 || a2 < v10)
    {
      sub_100016A20(2, "RADIUS: Invalid message length", a3, a4, a5, a6, a7, a8, v21);
      return 0;
    }

    if (a2 > v10)
    {
      sub_100016A20(1, "RADIUS: Ignored %lu extra bytes after RADIUS message", a3, a4, a5, a6, a7, a8, a2 - v10);
    }

    v8 = sub_100016754(0x28uLL);
    if (v8)
    {
      v12 = sub_10001712C(a1, v10);
      *v8 = v12;
      if (!v12 || (v13 = sub_100016754(0x80uLL), (*(v8 + 2) = v13) == 0))
      {
LABEL_25:
        sub_100010254(v8);
        return 0;
      }

      *(v8 + 24) = xmmword_10002BEF0;
      v14 = *v8 + 24;
      v15 = *(*v8 + 8);
      if (*(*v8 + 16))
      {
        v14 = *(*v8 + 16);
      }

      *(v8 + 1) = v14;
      if (v15 >= 21)
      {
        v16 = v14 + v15;
        v17 = v14 + 20;
        while (v16 - v17 >= 2)
        {
          v18 = *(v17 + 1);
          v19 = v18 < 2 || v17 + v18 > v16;
          if (v19 || sub_100010918(v8, v17))
          {
            break;
          }

          v17 += *(v17 + 1);
          if (v17 >= v16)
          {
            return v8;
          }
        }

        goto LABEL_25;
      }
    }
  }

  return v8;
}

char *sub_100010B00(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (a3)
  {
    if (a3 >= 0xFD)
    {
      v11 = 253;
    }

    else
    {
      v11 = a3;
    }

    result = sub_100010624(a1, 79, a2, v11, a5, a6, a7, a8);
    a2 += v11;
    a3 -= v11;
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

void *sub_100010B70(void *a1, size_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1 + 24;
  if (*(*a1 + 16))
  {
    v7 = *(*a1 + 16);
  }

  do
  {
    v8 = (v7 + *(a1[2] + (v5 >> 29)));
    if (*v8 == 79)
    {
      v6 = v6 + v8[1] - 2;
    }

    v5 += &_mh_execute_header;
    --v3;
  }

  while (v3);
  if (!v6)
  {
    return 0;
  }

  v9 = malloc_type_malloc(v6, 0x37C56592uLL);
  v10 = v9;
  if (v9)
  {
    v11 = a1[4];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = v9;
      do
      {
        v15 = *a1 + 24;
        if (*(*a1 + 16))
        {
          v15 = *(*a1 + 16);
        }

        v16 = (v15 + *(a1[2] + (v12 >> 29)));
        if (*v16 == 79)
        {
          v17 = v16[1] - 2;
          memcpy(v14, v16 + 2, v17);
          v14 += v17;
          v11 = a1[4];
        }

        ++v13;
        v12 += &_mh_execute_header;
      }

      while (v13 < v11);
    }

    if (a2)
    {
      *a2 = v6;
    }
  }

  return v10;
}

uint64_t sub_100010CBC(void *a1, __int128 *a2, unint64_t a3, _OWORD *a4)
{
  v4 = a1[4];
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = 0;
  v8 = *a1 + 24;
  if (*(*a1 + 16))
  {
    v8 = *(*a1 + 16);
  }

  do
  {
    v9 = v8 + *(a1[2] + (v6 >> 29));
    if (*v9 == 80)
    {
      if (v7)
      {
        v12 = "Multiple Message-Authenticator attributes in RADIUS message";
        goto LABEL_25;
      }
    }

    else
    {
      v9 = v7;
    }

    v6 += &_mh_execute_header;
    v7 = v9;
    --v4;
  }

  while (v4);
  if (v9)
  {
    v17 = *(v9 + 2);
    *(v9 + 10) = 0;
    *(v9 + 2) = 0;
    if (a4)
    {
      v10 = a1[1];
      v16 = *(v10 + 4);
      *(v10 + 4) = *a4;
      if (*(*a1 + 16))
      {
        v11 = *(*a1 + 16);
      }

      else
      {
        v11 = *a1 + 24;
      }

      sub_10000DA48(a2, a3, v11, *(*a1 + 8), &v18);
      *(v9 + 2) = v17;
      *(a1[1] + 4) = v16;
    }

    else
    {
      if (*(*a1 + 16))
      {
        v13 = *(*a1 + 16);
      }

      else
      {
        v13 = *a1 + 24;
      }

      sub_10000DA48(a2, a3, v13, *(*a1 + 8), &v18);
      *(v9 + 2) = v17;
    }

    if (v17 == v18 && *(&v17 + 1) == *(&v18 + 1))
    {
      return 0;
    }

    v12 = "Invalid Message-Authenticator!";
  }

  else
  {
LABEL_15:
    v12 = "No Message-Authenticator attribute found";
  }

LABEL_25:
  puts(v12);
  return 1;
}

uint64_t sub_100010E50(uint64_t *a1, __int128 *a2, unint64_t a3, uint64_t a4, int a5)
{
  if (a4)
  {
    if (a5 && sub_100010CBC(a1, a2, a3, (*(a4 + 8) + 4)))
    {
      return 1;
    }

    v9 = (*(a4 + 8) + 4);
    v10 = *a1;
    v25[0] = a1[1];
    v25[1] = v9;
    v22 = xmmword_10002BF00;
    v11 = v10 + 24;
    v14 = v10 + 8;
    v13 = *(v10 + 8);
    v12 = *(v14 + 8);
    if (v12)
    {
      v11 = v12;
    }

    v25[2] = (v11 + 20);
    v25[3] = a2;
    v23 = v13 - 20;
    v24 = a3;
    sub_1000276B4(4, v25, &v22, &v21);
    v15 = a1[1];
    v16 = *(v15 + 4);
    v17 = *(v15 + 12);
    if (v21 == v16 && *(&v21 + 1) == v17)
    {
      return 0;
    }

    v19 = "Response Authenticator invalid!";
  }

  else
  {
    v19 = "No matching Access-Request message found";
  }

  puts(v19);
  return 1;
}

uint64_t sub_100010F6C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[4];
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *a2 + 24;
      if (*(*a2 + 16))
      {
        v15 = *(*a2 + 16);
      }

      v16 = (v15 + *(a2[2] + (v12 >> 29)));
      if (*v16 == a3)
      {
        if (!sub_100010624(a1, a3, v16 + 2, v16[1] - 2, a5, a6, a7, a8))
        {
          return 0xFFFFFFFFLL;
        }

        v13 = (v13 + 1);
        v8 = a2[4];
      }

      ++v14;
      v12 += &_mh_execute_header;
      if (v14 >= v8)
      {
        return v13;
      }
    }
  }

  return 0;
}

uint64_t sub_10001103C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_1000162A8(v8);
  v7 = j__random();
  v10[0] = v8;
  v10[1] = a2;
  v9[0] = 16;
  v9[1] = a3;
  v10[2] = &v7;
  v9[2] = 8;
  return sub_1000276B4(3, v10, v9, (*(a1 + 8) + 4));
}

void *sub_1000110EC(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = sub_100016754(0x20uLL);
      if (v4)
      {
        v14 = 0;
        v9 = sub_1000111DC(a1, 311, 16, &v14);
        if (v9)
        {
          v10 = v9;
          *v4 = sub_1000112E0(v9, v14, (*(a2 + 8) + 4), a3, a4, v4 + 1);
          free(v10);
        }

        v11 = sub_1000111DC(a1, 311, 17, &v14);
        if (v11)
        {
          v12 = v11;
          v4[2] = sub_1000112E0(v11, v14, (*(a2 + 8) + 4), a3, a4, v4 + 3);
          free(v12);
        }
      }
    }
  }

  return v4;
}

void *sub_1000111DC(void *a1, int a2, int a3, size_t *a4)
{
  v4 = a1[4];
  if (v4)
  {
    v6 = 0;
    v7 = *a1 + 24;
    if (*(*a1 + 16))
    {
      v7 = *(*a1 + 16);
    }

    do
    {
      v8 = v7 + *(a1[2] + 8 * v6);
      if (*v8 == 26)
      {
        v9 = *(v8 + 1);
        if ((v9 - 2) >= 4)
        {
          v10 = v9 - 6;
          if (bswap32(*(v8 + 2)) == a2 && v10 >= 2)
          {
            v12 = (v8 + 6);
            do
            {
              v13 = v12[1];
              v14 = v13 - 2;
              if (v13 < 2 || v10 < v13)
              {
                break;
              }

              if (*v12 == a3)
              {
                v18 = malloc_type_malloc(v13 - 2, 0xE317D60DuLL);
                v16 = v18;
                if (v18)
                {
                  memcpy(v18, v12 + 2, v14);
                  if (a4)
                  {
                    *a4 = v14;
                  }
                }

                return v16;
              }

              v12 += v13;
              v10 -= v13;
            }

            while (v10 > 1);
          }
        }
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return 0;
}

void *sub_1000112E0(uint64_t a1, unint64_t a2, char *a3, __int128 *a4, uint64_t a5, void *a6)
{
  if (a2 < 0x12)
  {
    return 0;
  }

  v7 = a2 - 2;
  if (((a2 - 2) & 0xF) != 0)
  {
    printf("Invalid ms key len %lu\n", a2 - 2);
    return 0;
  }

  v13 = malloc_type_malloc(a2 - 2, 0x6899120EuLL);
  if (!v13)
  {
    return 0;
  }

  v27 = a6;
  v14 = 0;
  v15 = (a1 + 2);
  v32 = 0;
  v33 = 0;
  *v13 = 0;
  v28 = v13;
  v16 = v13;
  do
  {
    v31 = a4;
    v29 = a5;
    if (v14)
    {
      v32 = v15 - 16;
      *&v30 = 16;
      v17 = 2;
    }

    else
    {
      v32 = a3;
      v33 = a1;
      v17 = 3;
      v30 = xmmword_10002BF10;
    }

    v18 = &v34;
    sub_1000276B4(v17, &v31, &v29, &v34);
    v19 = 16;
    do
    {
      v21 = *v15++;
      v20 = v21;
      v22 = *v18++;
      *v16++ = v22 ^ v20;
      --v19;
    }

    while (v19);
    v14 = 1;
    v7 -= 16;
  }

  while (v7);
  v23 = *v28;
  if (!*v28 || a2 - 3 < v23)
  {
    puts("Failed to decrypt MPPE key");
    free(v28);
    return 0;
  }

  v26 = malloc_type_malloc(v23, 0x51A60F36uLL);
  v24 = v26;
  if (v26)
  {
    memcpy(v26, v28 + 1, *v28);
    if (v27)
    {
      *v27 = *v28;
    }
  }

  free(v28);
  return v24;
}

void *sub_1000114B4(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = sub_100016754(0x20uLL);
      if (v4)
      {
        v14 = 0;
        v9 = sub_1000111DC(a1, 9, 1, &v14);
        v10 = v9;
        if (v9 && v14 == 51 && *v9 == 0x7365733A7061656CLL && v9[1] == 0x79656B2D6E6F6973 && *(v9 + 16) == 61)
        {
          v4[2] = sub_1000112E0(v9 + 17, 0x22uLL, (*(a2 + 8) + 4), a3, a4, v4 + 3);
        }

        free(v10);
      }
    }
  }

  return v4;
}

_BYTE *sub_1000115AC(uint64_t a1, _BYTE *a2, __int128 *a3, uint64_t a4, const void *a5, size_t a6, const void *a7, uint64_t a8)
{
  result = malloc_type_malloc(a6 + 24, 0x8FE1EA6EuLL);
  if (result)
  {
    v17 = result;
    *v34 = a8;
    v35 = 0;
    *result = 922812416;
    result[4] = 16;
    v18 = j__random();
    v19 = v18 | 0x8000;
    v20 = (*&v18 | 0xFFFF8000) >> 8;
    v17[6] = (v18 | 0x8000) >> 8;
    v17[7] = v18;
    sub_100011738(a5, a6, v18 | 0x8000, a2, a3, a4, v17 + 8, &v35);
    v21 = v35;
    v17[5] = v35 + 4;
    v26 = sub_100010624(a1, 26, v17, v21 + 8, v22, v23, v24, v25);
    free(v17);
    if (v26)
    {
      result = malloc_type_malloc(a6 + 24, 0x82D7A9FBuLL);
      if (result)
      {
        v27 = result;
        *result = 922812416;
        result[4] = 17;
        result[6] = v20;
        result[7] = v19 ^ 1;
        sub_100011738(a7, *v34, v19 ^ 1, a2, a3, a4, result + 8, &v35);
        v28 = v35;
        v27[5] = v35 + 4;
        v33 = sub_100010624(a1, 26, v27, v28 + 8, v29, v30, v31, v32);
        free(v27);
        return (v33 != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100011738(const void *a1, size_t a2, unsigned int a3, _BYTE *a4, __int128 *a5, uint64_t a6, _BYTE *a7, void *a8)
{
  v9 = a7;
  v23 = __rev16(a3);
  if (((a2 + 1) & 0xF) != 0)
  {
    v15 = ((a2 + 1) & 0xF0) + 16;
  }

  else
  {
    v15 = a2 + 1;
  }

  bzero(a7, v15);
  *v9 = a2;
  result = memcpy(v9 + 1, a1, a2);
  *a8 = v15;
  if (v15 >= 1)
  {
    v17 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v26 = a5;
      v24 = a6;
      if (v17)
      {
        v27 = v9 - 16;
        *&v25 = 16;
        v18 = 2;
      }

      else
      {
        v27 = a4;
        v28 = &v23;
        v18 = 3;
        v25 = xmmword_10002BF10;
      }

      v19 = &v29;
      result = sub_1000276B4(v18, &v26, &v24, &v29);
      v20 = 16;
      do
      {
        v21 = *v19++;
        *v9++ ^= v21;
        --v20;
      }

      while (v20);
      v17 = 1;
      v22 = __OFSUB__(v15, 16);
      v15 -= 16;
    }

    while (!((v15 < 0) ^ v22 | (v15 == 0)));
  }

  return result;
}

char *sub_100011898(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, uint64_t a5)
{
  if (a3 > 0x80)
  {
    return 0;
  }

  v8 = a3;
  __memcpy_chk();
  if ((v8 & 0xF) != 0)
  {
    v10 = 16 - (v8 & 0xF);
    bzero(v24 + v8, v10);
    v8 += v10;
  }

  v11 = *(a1 + 8) + 4;
  v22 = a4;
  v23 = v11;
  v20 = a5;
  v21 = 16;
  sub_1000276B4(2, &v22, &v20, &v19);
  v24[0] = veorq_s8(v24[0], v19);
  if (v8 >= 0x11)
  {
    v16 = v24;
    for (i = 16; i < v8; i += 16)
    {
      v22 = a4;
      v23 = v16;
      v20 = a5;
      v21 = 16;
      sub_1000276B4(2, &v22, &v20, &v19);
      v18 = v16[1];
      *++v16 = veorq_s8(v18, v19);
    }
  }

  return sub_100010624(a1, 2, v24, v8, v12, v13, v14, v15);
}

unint64_t sub_1000119E8(void *a1, int a2, void *__dst, size_t a4)
{
  v4 = a1[4];
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  v6 = *a1 + 24;
  if (*(*a1 + 16))
  {
    v6 = *(*a1 + 16);
  }

  while (1)
  {
    v7 = *(a1[2] + (v5 >> 29));
    if (*(v6 + v7) == a2)
    {
      break;
    }

    v5 += &_mh_execute_header;
    if (!--v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = *(v6 + v7 + 1) - 2;
  if (__dst)
  {
    if (v8 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = *(v6 + v7 + 1) - 2;
    }

    memcpy(__dst, (v6 + v7 + 2), v9);
  }

  return v8;
}

uint64_t sub_100011A80(void *a1, int a2, void *a3, void *a4, unint64_t a5)
{
  v5 = a1[4];
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *a1 + 24;
  if (*(*a1 + 16))
  {
    v7 = *(*a1 + 16);
  }

  while (1)
  {
    v8 = (v7 + *(a1[2] + (v6 >> 29)));
    if (*v8 == a2 && v8 > a5)
    {
      break;
    }

    v6 += &_mh_execute_header;
    if (!--v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  *a3 = v8 + 2;
  *a4 = v8[1] - 2;
  return result;
}

uint64_t sub_100011AF4(void *a1, int a2, int a3)
{
  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = *a1 + 24;
  if (*(*a1 + 16))
  {
    v7 = *(*a1 + 16);
  }

  v8 = a1[2];
  do
  {
    v9 = (v7 + *(v8 + (v5 >> 29)));
    if (*v9 == a2)
    {
      if (a3 + 2 > v9[1])
      {
        result = result;
      }

      else
      {
        result = (result + 1);
      }
    }

    v5 += &_mh_execute_header;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t sub_100011B68(void *a1)
{
  memset(v18, 0, sizeof(v18));
  v1 = a1[4];
  if (v1)
  {
    v2 = 0;
    v3 = a1[2];
    if (*(*a1 + 16))
    {
      v4 = *(*a1 + 16);
    }

    else
    {
      v4 = *a1 + 24;
    }

    do
    {
      v5 = (v4 + *(v3 + (v2 >> 29)));
      v6 = v5[1];
      if (v6 >= 3)
      {
        v7 = v5[2];
        if (v7 <= 0x1F)
        {
          v8 = &v18[v5[2]];
        }

        else
        {
          v8 = v18;
        }

        v9 = *v5;
        if (v9 == 81)
        {
          if (v7 < 0x20)
          {
            v13 = -3;
          }

          else
          {
            v13 = -2;
          }

          v14 = v13 + v6;
          if ((v13 + v6) > 9)
          {
            goto LABEL_25;
          }

          __memcpy_chk();
          v17[v14] = 0;
          ++*v8;
          v11 = atoi(v17);
          v12 = 12;
          goto LABEL_24;
        }

        if (v9 != 65)
        {
          if (v9 != 64 || v6 != 6)
          {
            goto LABEL_25;
          }

          ++*v8;
          v11 = (v5[3] << 16) | (v5[4] << 8) | v5[5];
          v12 = 4;
          goto LABEL_24;
        }

        if (v6 == 6)
        {
          ++*v8;
          v11 = (v5[3] << 16) | (v5[4] << 8) | v5[5];
          v12 = 8;
LABEL_24:
          *(v8 + v12) = v11;
        }
      }

LABEL_25:
      v2 += &_mh_execute_header;
      --v1;
    }

    while (v1);
  }

  v15 = 0;
  while (1)
  {
    if (LODWORD(v18[v15]))
    {
      if (DWORD1(v18[v15]) == 13 && DWORD2(v18[v15]) == 6)
      {
        result = HIDWORD(v18[v15]);
        if (result > 0)
        {
          break;
        }
      }
    }

    if (++v15 == 32)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_100011DA0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        free(*(*a1 + v2));
        ++v3;
        v2 += 16;
      }

      while (v3 < *(a1 + 8));
    }

    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_100011E0C(void *a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = sub_100016754(16 * a2[1]);
  *a1 = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  a1[1] = 0;
  if (!a2[1])
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a2;
  while (1)
  {
    result = malloc_type_malloc(*(v7 + v5 + 8), 0xB4C31503uLL);
    *(*a1 + v5) = result;
    if (!result)
    {
      break;
    }

    ++a1[1];
    memcpy(result, *(*a2 + v5), *(*a2 + v5 + 8));
    v7 = *a2;
    v9 = a2[1];
    *(*a1 + v5 + 8) = *(*a2 + v5 + 8);
    ++v6;
    v5 += 16;
    if (v6 >= v9)
    {
      return 0;
    }
  }

  return result;
}

void sub_100011EE8(uint64_t a1, char *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char *a6, uint64_t a7, _OWORD *a8)
{
  v12 = a4;
  if (a4[1] | *a4 | a4[2] | a4[3] | a4[4] | a4[5] || *(a1 + 625) | *(a1 + 624) | *(a1 + 626) | *(a1 + 627) | *(a1 + 628) | *(a1 + 629))
  {
LABEL_5:
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (((*(*(a1 + 496) + 64))(**(a1 + 496), a1 + 624) & 0x80000000) == 0)
  {
    v32 = *(a1 + 628);
    v33 = *(a1 + 629);
    v30 = *(a1 + 626);
    v31 = *(a1 + 627);
    v29 = *(a1 + 625);
    sub_100016A20(1, "WPA: Use BSSID (%02x:%02x:%02x:%02x:%02x:%02x) as the destination for EAPOL-Key", v16, v17, v18, v19, v20, v21, *(a1 + 624));
    v12 = (a1 + 624);
    goto LABEL_5;
  }

  sub_100016A20(1, "WPA: Failed to read BSSID for EAPOL-Key destination address", v16, v17, v18, v19, v20, v21, v28);
  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (sub_10000C99C(a2, a3, a6, a7, a8))
  {
    sub_100016A20(4, "WPA: Failed to generate EAPOL-Key version %d MIC", v22, v23, v24, v25, v26, v27, a3);
    goto LABEL_10;
  }

LABEL_9:
  sub_100016A94(0, "WPA: TX EAPOL-Key", a6, a7);
  (*(*(a1 + 496) + 72))(**(a1 + 496), v12, a5, a6, a7);
LABEL_10:

  free(a6);
}

void sub_100012098(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 660);
  if (v6 > 127)
  {
    if (v6 != 128 && v6 != 256)
    {
      if (v6 == 1024)
      {
        v7 = 0;
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_8:
    v7 = 3;
    goto LABEL_9;
  }

  if (v6 == 32 || v6 == 64)
  {
    goto LABEL_8;
  }

LABEL_28:
  if (*(a1 + 652) == 8)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

LABEL_9:
  v31 = 0;
  v32 = 0;
  if (((*(*(a1 + 496) + 64))(**(a1 + 496), v30) & 0x80000000) != 0)
  {
    sub_100016A20(3, "Failed to read BSSID for EAPOL-Key request", v8, v9, v10, v11, v12, v13, v28);
  }

  else
  {
    v14 = (*(*(a1 + 496) + 96))(**(a1 + 496), 3, 0, 95, &v32, &v31);
    if (v14)
    {
      v15 = v14;
      if (*(a1 + 648) == 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = -2;
      }

      v17 = v31;
      *v31 = v16;
      if (*(a1 + 168))
      {
        v18 = 2304;
      }

      else
      {
        v18 = 2048;
      }

      v19 = v18 | v7;
      if (a2)
      {
        v19 |= 0x400u;
      }

      if (a3)
      {
        v20 = v19 | 8;
      }

      else
      {
        v20 = v19;
      }

      *(v17 + 1) = HIBYTE(v20);
      *(v31 + 2) = v20;
      *(v31 + 3) = 0;
      *(v31 + 4) = 0;
      *(v31 + 5) = *(a1 + 256);
      sub_100015F04(a1 + 256, 8);
      *(v31 + 93) = 0;
      v29 = *(a1 + 168);
      sub_100016A20(2, "WPA: Sending EAPOL-Key Request (error=%d pairwise=%d ptk_set=%d len=%lu)", v21, v22, v23, v24, v25, v26, a2);
      if ((v20 & 0x100) != 0)
      {
        v27 = (v31 + 77);
      }

      else
      {
        v27 = 0;
      }

      sub_100011EE8(a1, (a1 + 40), v7, v30, 34958, v15, v32, v27);
    }
  }
}

uint64_t sub_100012258(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _OWORD *a5, unsigned __int8 *a6, size_t a7, char *a8)
{
  if (!a6)
  {
    sub_100016A20(3, "WPA: No wpa_ie set - cannot generate msg 2/4", a3, a4, a5, 0, a7, a8, v29);
    return 0xFFFFFFFFLL;
  }

  v29 = 0;
  v30 = 0;
  sub_100016A94(1, "WPA: WPA IE for msg 2/4", a6, a7);
  v16 = (*(*(a1 + 496) + 96))(**(a1 + 496), 3, 0, (a7 + 95), &v30, &v29);
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v16;
  if (*(a1 + 648) == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = -2;
  }

  v19 = v29;
  *v29 = v18;
  *(v19 + 1) = (a4 | 0x108) >> 8;
  *(v29 + 2) = a4 | 8;
  if (*(a1 + 648) == 2)
  {
    *(v29 + 3) = 0;
    *(v29 + 4) = 0;
  }

  else
  {
    *(v29 + 3) = *(a3 + 3);
  }

  *(v29 + 5) = *(a3 + 5);
  v21 = v29;
  *(v29 + 93) = bswap32(a7) >> 16;
  memcpy((v21 + 95), a6, a7);
  v22 = a5[1];
  *(v21 + 13) = *a5;
  *(v21 + 29) = v22;
  sub_100016A20(1, "WPA: Sending EAPOL-Key 2/4", v23, v24, v25, v26, v27, v28, v29);
  sub_100011EE8(a1, a8, a4, a2, 34958, v17, v30, (v29 + 77));
  return 0;
}

uint64_t sub_1000123EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned __int8 *a6, size_t a7, char *a8)
{
  if (a6)
  {
    sub_100016A94(1, "WPA: KDE for msg 4/4", a6, a7);
  }

  v28 = 0;
  v29 = 0;
  v16 = (*(*(a1 + 496) + 96))(**(a1 + 496), 3, 0, (a7 + 95), &v29, &v28);
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = v16;
  if (*(a1 + 648) == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = -2;
  }

  v25 = v28;
  *v28 = v24;
  *(v25 + 1) = (a5 & 0x200 | a4 | 0x108) >> 8;
  *(v28 + 2) = a4 | 8;
  if (*(a1 + 648) == 2)
  {
    *(v28 + 3) = 0;
    *(v28 + 4) = 0;
  }

  else
  {
    *(v28 + 3) = *(a3 + 3);
  }

  *(v28 + 5) = *(a3 + 5);
  v27 = v28;
  *(v28 + 93) = bswap32(a7) >> 16;
  if (a6)
  {
    memcpy((v27 + 95), a6, a7);
  }

  sub_100016A20(1, "WPA: Sending EAPOL-Key 4/4", v17, v18, v19, v20, v21, v22, v28);
  sub_100011EE8(a1, a8, a4, a2, 34958, v23, v29, (v28 + 77));
  return 0;
}

uint64_t sub_100012570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*(result + 440))
    {
      result = sub_100016A20(1, "RSN: Cancelling PMKSA caching attempt", a3, a4, a5, a6, a7, a8, v9);
      *(v8 + 440) = 0;
    }
  }

  return result;
}

uint64_t sub_1000125B4(uint64_t a1, unsigned __int8 *a2, const void *a3, size_t size, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (size > 0x62)
  {
    v13 = malloc_type_malloc(size, 0xC46D87C3uLL);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = v13;
    memcpy(v13, a3, size);
    v15 = bswap32(*(v14 + 1)) >> 16;
    v68 = v14[1];
    sub_100016A20(1, "IEEE 802.1X RX: version=%d type=%d length=%lu", v16, v17, v18, v19, v20, v21, *v14);
    if (v14[1] != 3)
    {
      sub_100016A20(1, "WPA: EAPOL frame (type %u) discarded, not a Key frame", v22, v23, v24, v25, v26, v27, v14[1]);
      goto LABEL_12;
    }

    v28 = v15 >= 0x5F && size - 4 >= v15;
    if (!v28)
    {
      sub_100016A20(1, "WPA: EAPOL frame payload size %lu invalid (frame size %lu)", v22, v23, v24, v25, v26, v27, v15);
LABEL_12:
      v9 = 0;
LABEL_13:
      free(v14);
      return v9;
    }

    v30 = v14[4];
    if (v30 != 2 && v30 != 254)
    {
      sub_100016A20(1, "WPA: EAPOL-Key type (%d) unknown, discarded", v22, v23, v24, v25, v26, v27, v14[4]);
      goto LABEL_12;
    }

    v31 = v14[5];
    v32 = v14[6];
    sub_100016A20(1, "  EAPOL-Key type=%d", v22, v23, v24, v25, v26, v27, v14[4]);
    sub_100016A20(1, "  key_info 0x%x (ver=%d keyidx=%d rsvd=%d %s%s%s%s%s%s%s%s)", v33, v34, v35, v36, v37, v38, v32 | (v31 << 8));
    v69 = __rev16(*(v14 + 97));
    sub_100016A20(1, "  key_length=%u key_data_length=%u", v39, v40, v41, v42, v43, v44, __rev16(*(v14 + 7)));
    sub_100016A94(1, "  replay_counter", v14 + 9, 8);
    sub_100016A94(1, "  key_nonce", v14 + 17, 32);
    sub_100016A94(1, "  key_iv", v14 + 49, 16);
    sub_100016A94(1, "  key_rsc", v14 + 65, 8);
    sub_100016A94(1, "  key_id (reserved)", v14 + 73, 8);
    sub_100016A94(1, "  key_mic", v14 + 81, 16);
    sub_100016A94(0, "WPA: RX EAPOL-Key", v14, size);
    if (size > v15 + 4)
    {
      sub_100016A20(1, "WPA: ignoring %lu bytes after the IEEE 802.1X data", v45, v46, v47, v48, v49, v50, size - (v15 + 4));
    }

    v51 = v14[6] & 7;
    if (v51 >= 4)
    {
      v66 = v14[6] & 7;
      v52 = "WPA: Unsupported EAPOL-Key descriptor version %d.";
LABEL_47:
      v65 = 2;
LABEL_48:
      sub_100016A20(v65, v52, v45, v46, v47, v48, v49, v50, v66);
      goto LABEL_49;
    }

    v53 = _byteswap_ushort(*(v14 + 5));
    v54 = *(a1 + 660);
    if (v54 == 256 || v54 == 128)
    {
      if (v51 != 3)
      {
        v52 = "WPA: AP did not use the negotiated AES-128-CMAC.";
        goto LABEL_47;
      }
    }

    else if (v51 == 2 || *(a1 + 652) != 16)
    {
      if ((v14[6] & 7) != 0 && v54 == 1024)
      {
        v66 = 1024;
        v52 = "WPA: 0x%X is used, but EAPOL-Key descriptor version (%d) is not 0.";
        goto LABEL_47;
      }
    }

    else
    {
      sub_100016A20(2, "WPA: CCMP is used, but EAPOL-Key descriptor version (%d) is not 2.", v45, v46, v47, v48, v49, v50, v51);
      v9 = 0xFFFFFFFFLL;
      if (*(a1 + 656) == 16 || (v53 & 8) != 0)
      {
        goto LABEL_13;
      }

      sub_100016A20(2, "WPA: Backwards compatibility: allow invalid version for non-CCMP group keys", v59, v60, v61, v62, v63, v64, v67);
    }

    if (*(a1 + 252) && ((v55 = bswap64(*(v14 + 9)), v56 = bswap64(*(a1 + 244)), v28 = v55 >= v56, v57 = v55 > v56, v28) ? (v58 = 0) : (v58 = 1), v57 - v58 <= 0))
    {
      v52 = "WPA: EAPOL-Key Replay Counter did not increase - dropping packet";
    }

    else
    {
      if ((v53 & 0x2080) == 0)
      {
        v52 = "WPA: No Ack bit in key_info";
        goto LABEL_47;
      }

      if ((v53 & 0x800) != 0)
      {
        v52 = "WPA: EAPOL-Key with Request bit - dropped";
        goto LABEL_47;
      }

      if ((v53 & 0x100) != 0 && sub_100012B04(a1, (v14 + 4), v51, v14, v15 + 4, v48, v49, v50))
      {
        goto LABEL_49;
      }

      v46 = __rev16(*(v14 + 97));
      if (v15 - 95 < v46)
      {
        sub_100016D3C(*(*(a1 + 496) + 8), 2, "WPA: Invalid EAPOL-Key frame - key_data overflow (%d > %lu)", v46, v47, v48, v49, v50, v46);
LABEL_49:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_13;
      }

      if (*(a1 + 648) == 2 && (v53 & 0x1000) != 0)
      {
        if (sub_100012C74(a1, (v14 + 4), v51))
        {
          goto LABEL_49;
        }

        v46 = __rev16(*(v14 + 97));
      }

      if ((v53 & 8) == 0)
      {
        if ((v53 & 0x2000) == 0)
        {
          if ((v53 & 0x100) != 0)
          {
            sub_1000136A4(a1, a2, (v14 + 4), v46, v51);
          }

          else
          {
            sub_100016A20(3, "WPA: EAPOL-Key (Group) without Mic bit - dropped", v45, v46, v47, v48, v49, v50, v66);
          }
        }

        goto LABEL_66;
      }

      if ((v53 & 0x30) == 0)
      {
        if ((v53 & 0x100) != 0)
        {
          sub_100012E50(a1, (v14 + 4), v51);
        }

        else
        {
          sub_1000132B0(a1, a2, (v14 + 4), v51, v47, v48, v49, v50, v66);
        }

LABEL_66:
        v9 = 1;
        goto LABEL_13;
      }

      v52 = "WPA: Ignored EAPOL-Key (Pairwise) with non-zero key index";
    }

    v65 = 3;
    goto LABEL_48;
  }

  sub_100016A20(1, "WPA: EAPOL frame too short to be a WPA EAPOL-Key (len %lu, expecting at least %lu)", a3, size, a5, a6, a7, a8, size);
  return 0;
}

uint64_t sub_100012B04(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v23 = *(a2 + 77);
  if (*(a1 + 172))
  {
    *(a2 + 85) = 0;
    *(a2 + 77) = 0;
    sub_10000C99C((a1 + 104), a3, a4, a5, (a2 + 77));
    if (v23 == *(a2 + 77) && *(&v23 + 1) == *(a2 + 85))
    {
      *(a1 + 168) = 1;
      *(a1 + 40) = *(a1 + 104);
      *(a1 + 56) = *(a1 + 120);
      *(a1 + 72) = *(a1 + 136);
      *(a1 + 88) = *(a1 + 152);
      goto LABEL_16;
    }

    sub_100016A20(3, "WPA: Invalid EAPOL-Key MIC when using TPTK - ignoring TPTK", v13, v14, v15, v16, v17, v18, v23);
  }

  if (!*(a1 + 168))
  {
    v21 = "WPA: Could not verify EAPOL-Key MIC - dropping packet";
    goto LABEL_14;
  }

  *(a2 + 85) = 0;
  *(a2 + 77) = 0;
  sub_10000C99C((a1 + 40), v10, a4, a5, (a2 + 77));
  if (v23 != *(a2 + 77) || *(&v23 + 1) != *(a2 + 85))
  {
    v21 = "WPA: Invalid EAPOL-Key MIC - dropping packet";
LABEL_14:
    sub_100016A20(3, v21, a3, a4, a5, a6, a7, a8, v23);
    return 0xFFFFFFFFLL;
  }

LABEL_16:
  result = 0;
  *(a1 + 244) = *(a2 + 5);
  *(a1 + 252) = 1;
  return result;
}

uint64_t sub_100012C74(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = __rev16(*(a2 + 93));
  sub_100016A94(1, "RSN: encrypted key data", (a2 + 95), v6);
  if (!a1[42])
  {
    v14 = "WPA: PTK not available, cannot decrypt EAPOL-Key key data.";
    goto LABEL_17;
  }

  if (a3 == 2)
  {
LABEL_15:
    if ((v6 & 7) != 0)
    {
      v26 = v6;
      v14 = "WPA: Unsupported AES-WRAP len %d";
    }

    else
    {
      v6 = (v6 - 8);
      v24 = malloc_type_malloc(v6, 0xF41AFA91uLL);
      if (v24)
      {
        v25 = v24;
        if (!sub_10000D5EC(a1 + 14, v6 >> 3, (a2 + 95), v24))
        {
          memcpy((a2 + 95), v25, v6);
          free(v25);
          *(a2 + 93) = __rev16(v6);
          goto LABEL_25;
        }

        free(v25);
        v14 = "WPA: AES unwrap failed - could not decrypt EAPOL-Key key data";
      }

      else
      {
        v14 = "WPA: No memory for AES-UNWRAP buffer";
      }
    }

LABEL_17:
    v15 = 3;
    goto LABEL_18;
  }

  if (a3 != 1)
  {
    v16 = a1[165];
    HIDWORD(v18) = v16 - 32;
    LODWORD(v18) = v16 - 32;
    v17 = v18 >> 5;
    v19 = v17 > 7;
    v20 = (1 << v17) & 0x8B;
    v22 = !v19 && v20 != 0 || a3 == 3;
    if (!v22 && v16 != 1024)
    {
      v26 = a3;
      v14 = "WPA: Unsupported key_info type %d";
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v13 = *(a1 + 14);
  v27[0] = *(a2 + 45);
  v27[1] = v13;
  if (!sub_100026D64(v27, 0x20uLL, 0x100uLL, (a2 + 95), v6))
  {
LABEL_25:
    sub_100016B64(1, "WPA: decrypted EAPOL-Key key data", (a2 + 95), v6);
    return 0;
  }

  v14 = "WPA: RC4 failed";
  v15 = 4;
LABEL_18:
  sub_100016A20(v15, v14, v7, v8, v9, v10, v11, v12, v26);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100012E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  *__s2 = 0u;
  v87 = 0u;
  *__n = 0u;
  (*(*(a1 + 496) + 16))(**(a1 + 496), 6);
  v79 = *(a1 + 629);
  v71 = *(a1 + 627);
  v75 = *(a1 + 628);
  v65 = *(a1 + 625);
  v67 = *(a1 + 626);
  sub_100016A20(1, "WPA: RX message 3 of 4-Way Handshake from %02x:%02x:%02x:%02x:%02x:%02x (ver=%d)", v6, v7, v8, v9, v10, v11, *(a1 + 624));
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = __rev16(*(a2 + 93));
  sub_100016A94(1, "WPA: IE KeyData", (a2 + 95), v14);
  sub_1000159B8((a2 + 95), v14, __n, v15, v16, v17, v18, v19);
  if (*(&v87 + 1) && (v12 & 0x10) == 0)
  {
    v26 = "WPA: GTK IE in unencrypted key data";
LABEL_10:
    v27 = 3;
LABEL_11:
    sub_100016A20(v27, v26, v20, v21, v22, v23, v24, v25, v63);
    return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
  }

  if (*(&v89 + 1) && (v12 & 0x10) == 0)
  {
    v26 = "WPA: IGTK KDE in unencrypted key data";
    goto LABEL_10;
  }

  if (*(&v89 + 1) && v90 != 40)
  {
    v63 = v90;
    v26 = "WPA: Invalid IGTK KDE length %lu";
    goto LABEL_10;
  }

  if (!*(a1 + 696) && !*(a1 + 704))
  {
    sub_100016A20(1, "WPA: No WPA/RSN IE for this AP known. Trying to get from scan results", v20, v21, v22, v23, v24, v25, v63);
    if (((*(*(a1 + 496) + 80))(**(a1 + 496)) & 0x80000000) != 0)
    {
      v35 = "WPA: Could not find AP from the scan results";
      v36 = 3;
    }

    else
    {
      v35 = "WPA: Found the current AP from updated scan results";
      v36 = 1;
    }

    sub_100016A20(v36, v35, v29, v30, v31, v32, v33, v34, v64);
  }

  v37 = __n[0];
  if (__n[0])
  {
    v38 = *(a1 + 696);
    if (v38)
    {
      v39 = __n[1];
      if (__n[1] != *(a1 + 712) || memcmp(__n[0], v38, __n[1]))
      {
        goto LABEL_36;
      }
    }
  }

  else if (!__s2[0] && (*(a1 + 696) || *(a1 + 704)))
  {
    v49 = __n[1];
    v44 = __s2[1];
    v45 = "IE in 3/4 msg does not match with IE in Beacon/ProbeResp (no IE?)";
    v46 = (a1 + 624);
    v47 = a1;
    v48 = 0;
    v23 = 0;
    goto LABEL_60;
  }

  v21 = __s2[0];
  if (__s2[0])
  {
    v40 = *(a1 + 704);
    if (v40)
    {
      v41 = *(a1 + 660);
      v42 = v41 == 64 || v41 == 32;
      v43 = v42;
      if (sub_10000D348(v43, v40, *(a1 + 720), __s2[0], __s2[1]))
      {
        v37 = __n[0];
        v39 = __n[1];
LABEL_36:
        v23 = __s2[0];
        v44 = __s2[1];
        v45 = "IE in 3/4 msg does not match with IE in Beacon/ProbeResp";
        v46 = (a1 + 624);
        v47 = a1;
        v48 = v37;
        v49 = v39;
LABEL_60:
        sub_100014DF0(v47, v45, v46, v48, v49, v23, v44, v25);
        return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
      }
    }
  }

  if (*(a1 + 648) == 1)
  {
    v23 = __s2[0];
    if (__s2[0])
    {
      if (!*(a1 + 704) && *(a1 + 668))
      {
        v48 = __n[0];
        v49 = __n[1];
        v44 = __s2[1];
        v45 = "Possible downgrade attack detected - RSN was enabled and RSN IE was in msg 3/4, but not in Beacon/ProbeResp";
        v46 = (a1 + 624);
        v47 = a1;
        goto LABEL_60;
      }
    }
  }

  if (*(a1 + 208) != *(a2 + 13) || *(a1 + 216) != *(a2 + 21) || *(a1 + 224) != *(a2 + 29) || *(a1 + 232) != *(a2 + 37))
  {
    v76 = *(a1 + 628);
    v80 = *(a1 + 629);
    v68 = *(a1 + 626);
    v72 = *(a1 + 627);
    v63 = *(a1 + 624);
    v66 = *(a1 + 625);
    v26 = "WPA: ANonce from message 1 of 4-Way Handshake differs from 3 of 4-Way Handshake - drop packet (src=%02x:%02x:%02x:%02x:%02x:%02x)";
    goto LABEL_10;
  }

  v53 = __rev16(*(a2 + 3));
  v54 = *(a1 + 652);
  if (v54 == 8)
  {
    if (v53 != 32)
    {
      v62 = *(a1 + 624);
      v82 = *(a1 + 628);
      v84 = *(a1 + 629);
      v74 = *(a1 + 626);
      v78 = *(a1 + 627);
      v70 = *(a1 + 625);
      v26 = "WPA: Invalid TKIP key length %d (src=%02x:%02x:%02x:%02x:%02x:%02x)";
      goto LABEL_72;
    }
  }

  else if (v54 == 16 && v53 != 16)
  {
    v55 = *(a1 + 624);
    v81 = *(a1 + 628);
    v83 = *(a1 + 629);
    v73 = *(a1 + 626);
    v77 = *(a1 + 627);
    v69 = *(a1 + 625);
    v26 = "WPA: Invalid CCMP key length %d (src=%02x:%02x:%02x:%02x:%02x:%02x)";
LABEL_72:
    v63 = v53;
    goto LABEL_10;
  }

  if (sub_1000123EC(a1, (a1 + 624), a2, a3, v13 | (v12 << 8), 0, 0, (a1 + 40)))
  {
    return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
  }

  *(a1 + 240) = 1;
  if ((v13 & 0x40) != 0)
  {
    if (sub_10001492C(a1, a2, v56, v57, v58, v59, v60, v61))
    {
      return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
    }
  }

  if (((v13 | (v12 << 8)) & 0x200) != 0)
  {
    (*(*(a1 + 496) + 136))(**(a1 + 496), a1 + 624, 1, 1);
  }

  (*(*(a1 + 496) + 16))(**(a1 + 496), 7);
  if (*(&v87 + 1) && (sub_100014ADC(a1, a2, *(&v87 + 1), v88, v13 | (v12 << 8)) & 0x80000000) != 0)
  {
    v26 = "RSN: Failed to configure GTK";
    goto LABEL_74;
  }

  result = sub_100014C28(a1, __n);
  if ((result & 0x80000000) != 0)
  {
    v26 = "RSN: Failed to configure IGTK";
LABEL_74:
    v27 = 2;
    goto LABEL_11;
  }

  return result;
}

__n128 sub_1000132B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!(*(*(a1 + 496) + 56))(**(a1 + 496)))
  {

    sub_100016A20(3, "WPA: No SSID info found (msg 1 of 4).", v13, v14, v15, v16, v17, v18, a9);
    return result;
  }

  (*(*(a1 + 496) + 16))(**(a1 + 496), 6);
  v71 = a2[5];
  v69 = a2[3];
  v70 = a2[4];
  *v67 = a2[1];
  v68 = a2[2];
  v19 = 1;
  sub_100016A20(1, "WPA: RX message 1 of 4-Way Handshake from %02x:%02x:%02x:%02x:%02x:%02x (ver=%d)", v20, v21, v22, v23, v24, v25, *a2);
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  if (*(a1 + 648) != 2 || (v32 = __rev16(*(a3 + 93)), sub_100016A94(1, "RSN: msg 1/4 key data", (a3 + 95), v32), sub_1000159B8((a3 + 95), v32, v72, v33, v34, v35, v36, v37), (v26 = v73) == 0) || (sub_100016A94(1, "RSN: PMKID from Authenticator", v73, 16), (v38 = v73) == 0))
  {
    v40 = 0;
    goto LABEL_8;
  }

  v39 = *(a1 + 440);
  v19 = v39 != 0;
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = 1;
    sub_100016A20(1, "RSN: no matching PMKID found", v26, v27, v28, v29, v30, v31, v65);
    v39 = *(a1 + 440);
    if (!v39)
    {
      v19 = 0;
      goto LABEL_8;
    }
  }

  v49 = *(v39 + 8);
  v48 = *(v39 + 16);
  if (*v38 == v49 && *(v38 + 8) == v48)
  {
    sub_100016A94(1, "RSN: matched PMKID", v38, 16);
    sub_100014220(a1);
    sub_100016B64(1, "RSN: PMK from PMKSA cache", a1, *(a1 + 32));
    goto LABEL_26;
  }

LABEL_8:
  v41 = *(a1 + 660);
  if ((v41 == 1 || v41 == 128 || v41 == 32) && *(a1 + 424))
  {
    sub_100016D3C(*(*(a1 + 496) + 8), 3, "WPA: Failed to get master session key from EAPOL state machines", v27, v28, v29, v30, v31, v65);
    sub_100016D3C(*(*(a1 + 496) + 8), 3, "WPA: Key handshake aborted", v42, v43, v44, v45, v46, v66);
    if (*(a1 + 440))
    {
      sub_100016A20(1, "RSN: Cancelled PMKSA caching attempt", v26, v27, v28, v29, v30, v31, v65);
      *(a1 + 440) = 0;
    }

    else if (v19)
    {
      goto LABEL_48;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (v40)
  {
LABEL_27:
    v51 = *(a1 + 660);
    if (v51 == 1 || v51 == 128 || v51 == 32)
    {
      v77 = 0;
      sub_100016A20(1, "RSN: no PMKSA entry found - trigger full EAP authentication", v26, v27, v28, v29, v30, v31, v65);
      v52 = (*(*(a1 + 496) + 96))(**(a1 + 496), 1, 0, 0, &v77, 0);
      if (v52)
      {
        v53 = v52;
        (*(*(a1 + 496) + 72))(**(a1 + 496), a1 + 624, 34958, v52, v77);
        free(v53);
      }

      goto LABEL_48;
    }
  }

  if (*(a1 + 240))
  {
    if (sub_1000164A4((a1 + 176), 0x20uLL))
    {
      sub_100016D3C(*(*(a1 + 496) + 8), 3, "WPA: Failed to get random data for SNonce", v54, v55, v56, v57, v58, v65);
LABEL_48:
      (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
      return result;
    }

    *(a1 + 240) = 0;
    sub_100016A94(1, "WPA: Renewed SNonce", (a1 + 176), 32);
  }

  v59 = 64;
  if (*(a1 + 652) == 16)
  {
    v59 = 48;
  }

  v60 = *(a1 + 660);
  v63 = v60 == 128 || v60 == 1024 || v60 == 256;
  sub_10000CAC4(a1, *(a1 + 32), "Pairwise key expansion", (a1 + 596), (a1 + 624), (a1 + 176), (a3 + 13), (a1 + 104), v59, v63);
  *(a1 + 152) = vextq_s8(*(a1 + 152), *(a1 + 152), 8uLL);
  *(a1 + 172) = 1;
  if (sub_100012258(a1, (a1 + 624), a3, a4, (a1 + 176), *(a1 + 680), *(a1 + 688), (a1 + 104)))
  {
    goto LABEL_48;
  }

  result = *(a3 + 13);
  v64 = *(a3 + 29);
  *(a1 + 208) = result;
  *(a1 + 224) = v64;
  return result;
}

uint64_t sub_1000136A4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v77 = 0u;
  v10 = (*(*(a1 + 496) + 24))(**(a1 + 496));
  v74 = a2[5];
  v72 = a2[3];
  v73 = a2[4];
  v70 = a2[1];
  v71 = a2[2];
  sub_100016A20(1, "WPA: RX message 1 of Group Key Handshake from %02x:%02x:%02x:%02x:%02x:%02x (ver=%d)", v11, v12, v13, v14, v15, v16, *a2);
  v23 = *(a3 + 1);
  v24 = v23 << 8;
  v25 = *(a3 + 2);
  v26 = __rev16(*(a3 + 93));
  if (*(a1 + 648) != 2)
  {
    v34 = __rev16(*(a3 + 3));
    v79 = v34;
    if (v26 > a4)
    {
      v69 = v26;
      v32 = "WPA: Truncated EAPOL-Key packet: key_data_length=%lu > extra_len=%lu";
LABEL_20:
      v33 = 2;
      goto LABEL_21;
    }

    v37 = v26;
    if (a5 == 2)
    {
      if (v26 <= 7)
      {
        v69 = v26;
        v32 = "WPA: Too short maxkeylen (%lu)";
        goto LABEL_20;
      }

      v37 = v26 - 8;
    }

    if (sub_100014F38(*(a1 + 656), v34, v37, &v77.i32[2], v77.i32, v20, v21, v22))
    {
      goto LABEL_22;
    }

    v77.i32[3] = ((v24 | v25) >> 4) & 3;
    if (a5 == 1)
    {
      v50 = *(a1 + 56);
      v80 = *(a3 + 45);
      v81 = v50;
      if (v26 >= 0x21)
      {
        v69 = v26;
        v32 = "WPA: RC4 key data too long (%lu)";
        goto LABEL_5;
      }

      __memcpy_chk();
      if (sub_100026D64(&v80, 0x20uLL, 0x100uLL, v78, v26))
      {
        v32 = "WPA: RC4 failed";
        v33 = 4;
        goto LABEL_21;
      }
    }

    else
    {
      if (a5 != 2)
      {
        v69 = a5;
        v32 = "WPA: Unsupported key_info type %d";
        goto LABEL_5;
      }

      if ((v26 & 7) != 0)
      {
        v69 = v26;
        v32 = "WPA: Unsupported AES-WRAP len %lu";
        goto LABEL_5;
      }

      if (v37 >= 0x21)
      {
        v69 = v26;
        v32 = "WPA: AES-WRAP key data too long (keydatalen=%lu maxkeylen=%lu)";
        goto LABEL_5;
      }

      if (sub_10000D5EC((a1 + 56), v37 >> 3, (a3 + 95), v78))
      {
        v32 = "WPA: AES unwrap failed - could not decrypt GTK";
        goto LABEL_5;
      }
    }

    if ((v25 & 0x40) != 0)
    {
      v68 = *(a1 + 652);
      if (v68 == 1)
      {
LABEL_59:
        v38 = 0;
        v77.i32[1] = v68;
        goto LABEL_23;
      }

      sub_100016A20(2, "WPA: Tx bit set for GTK, but pairwise keys are used - ignore Tx bit", v17, v18, v19, v20, v21, v22, v69);
    }

    v68 = 0;
    goto LABEL_59;
  }

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  sub_100016A94(1, "RSN: msg 1/2 key data", (a3 + 95), v26);
  sub_1000159B8((a3 + 95), v26, &v80, v27, v28, v29, v30, v31);
  if ((v23 & 0x10) == 0 && *(&v82 + 1))
  {
    v32 = "WPA: GTK IE in unencrypted key data";
LABEL_5:
    v33 = 3;
LABEL_21:
    sub_100016A20(v33, v32, v17, v18, v19, v20, v21, v22, v69);
    goto LABEL_22;
  }

  if (!*(&v82 + 1))
  {
    v32 = "WPA: No GTK IE in Group Key msg 1/2";
    goto LABEL_20;
  }

  v79 = v83 - 2;
  if (sub_100014F38(*(a1 + 656), v83 - 2, (v83 - 2), &v77.i32[2], v77.i32, v20, v21, v22))
  {
LABEL_22:
    v38 = -1;
    goto LABEL_23;
  }

  sub_100016A94(1, "RSN: received GTK in group key handshake", *(&v82 + 1), v83);
  v77.i32[3] = **(&v82 + 1) & 3;
  if ((**(&v82 + 1) & 4) != 0)
  {
    v36 = *(a1 + 652);
    if (v36 == 1)
    {
      goto LABEL_14;
    }

    sub_100016A20(2, "WPA: Tx bit set for GTK, but pairwise keys are used - ignore Tx bit", v35, v18, v19, v20, v21, v22, v69);
  }

  v36 = 0;
LABEL_14:
  v77.i32[1] = v36;
  v17 = v83 - 2;
  if ((v83 - 2) >= 0x21)
  {
    v69 = v83 - 2;
    v32 = "RSN: Too long GTK in GTK IE (len=%lu)";
    goto LABEL_20;
  }

  __memcpy_chk();
  if ((sub_100014C28(a1, &v80) & 0x80000000) != 0)
  {
    sub_100016A20(2, "RSN: Failed to configure IGTK", v62, v63, v64, v65, v66, v67, v69);
  }

  v38 = 0;
LABEL_23:
  (*(*(a1 + 496) + 16))(**(a1 + 496), 7);
  if (v38)
  {
    return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
  }

  if (sub_100015040(a1, &v77, (a3 + 61)))
  {
    return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
  }

  *&v80 = 0;
  v76 = 0;
  v40 = (*(*(a1 + 496) + 96))(**(a1 + 496), 3, 0, 95, &v80, &v76);
  if (!v40)
  {
    return (*(*(a1 + 496) + 32))(**(a1 + 496), 1);
  }

  v47 = v40;
  if (*(a1 + 648) == 2)
  {
    v48 = 2;
  }

  else
  {
    v48 = -2;
  }

  v49 = v76;
  *v76 = v48;
  *(v49 + 1) = 3;
  *(v76 + 2) = v25 & 0x30 | a5;
  if (*(a1 + 648) == 2)
  {
    *(v76 + 3) = 0;
    *(v76 + 4) = 0;
  }

  else
  {
    *(v76 + 3) = *(a3 + 3);
  }

  *(v76 + 5) = *(a3 + 5);
  *(v76 + 93) = 0;
  sub_100016A20(1, "WPA: Sending EAPOL-Key 2/2", v41, v42, v43, v44, v45, v46, v69);
  sub_100011EE8(a1, (a1 + 40), a5, (a1 + 624), 34958, v47, v80, (v76 + 77));
  if (v10 != 8)
  {
    return sub_100015250(a1, (a1 + 624), v24 & 0x200);
  }

  v51 = *(*(a1 + 496) + 8);
  v52 = *(a1 + 624);
  v53 = *(a1 + 625);
  v54 = *(a1 + 626);
  v55 = *(a1 + 627);
  v56 = *(a1 + 628);
  v75 = *(a1 + 629);
  sub_10000D1E4(*(a1 + 656));
  sub_100016D3C(v51, 2, "WPA: Group rekeying completed with %02x:%02x:%02x:%02x:%02x:%02x [GTK=%s]", v57, v58, v59, v60, v61, v52);
  (*(*(a1 + 496) + 88))(**(a1 + 496));
  return (*(*(a1 + 496) + 16))(**(a1 + 496), 8);
}

uint64_t sub_100013C1C(uint64_t a1, char *a2, size_t a3)
{
  v6 = *(a1 + 440);
  if (v6)
  {
    sub_100015F94(__str, 33, (v6 + 8), 16);
  }

  else
  {
    __str[0] = 0;
  }

  v7 = *(a1 + 660);
  v8 = (v7 - 1) > 0x3F || ((1 << (v7 - 1)) & 0x8000000080000003) == 0;
  if ((!v8 || v7 == 256 || v7 == 128) && *(a1 + 648) == 2)
  {
    v9 = "TRUE";
  }

  else
  {
    v9 = "FALSE";
  }

  HIDWORD(v11) = *(a1 + 656) - 2;
  LODWORD(v11) = HIDWORD(v11);
  v10 = v11 >> 1;
  if (v10 > 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_10002BF30[v10];
  }

  v13 = snprintf(a2, a3, "dot11RSNAOptionImplemented=TRUE\ndot11RSNAPreauthenticationImplemented=TRUE\ndot11RSNAEnabled=%s\ndot11RSNAPreauthenticationEnabled=%s\ndot11RSNAConfigVersion=%d\ndot11RSNAConfigPairwiseKeysSupported=5\ndot11RSNAConfigGroupCipherSize=%d\ndot11RSNAConfigPMKLifetime=%d\ndot11RSNAConfigPMKReauthThreshold=%d\ndot11RSNAConfigNumberOfPTKSAReplayCounters=1\ndot11RSNAConfigSATimeout=%d\n", v9, v9, 1, v12, *(a1 + 632), *(a1 + 636), *(a1 + 640));
  if ((v13 & 0x80000000) != 0)
  {
    return 0;
  }

  v14 = v13;
  if (a3 <= v13)
  {
    return 0;
  }

  v28 = v13;
  v29 = a3 - v13;
  v15 = sub_100013E44(a1);
  v16 = HIWORD(v15);
  v17 = BYTE1(v15);
  v18 = v15;
  v19 = sub_100013EE8(a1, *(a1 + 652));
  v20 = HIWORD(v19);
  v21 = BYTE1(v19);
  v22 = v19;
  v23 = sub_100013EE8(a1, *(a1 + 656));
  v24 = snprintf(&a2[v28], v29, "dot11RSNAAuthenticationSuiteSelected=%02x-%02x-%02x-%d\ndot11RSNAPairwiseCipherSelected=%02x-%02x-%02x-%d\ndot11RSNAGroupCipherSelected=%02x-%02x-%02x-%d\ndot11RSNAPMKIDUsed=%s\ndot11RSNAAuthenticationSuiteRequested=%02x-%02x-%02x-%d\ndot11RSNAPairwiseCipherRequested=%02x-%02x-%02x-%d\ndot11RSNAGroupCipherRequested=%02x-%02x-%02x-%d\ndot11RSNAConfigNumberOfGTKSAReplayCounters=0\ndot11RSNA4WayHandshakeFailures=%u\n", 0, v16, v17, v18, 0, v20, v21, v22, 0, HIWORD(v23), BYTE1(v23), v23, __str, 0, v16, v17, v18, 0, v20, v21, v22, 0, HIWORD(v23), BYTE1(v23), v23, *(a1 + 644));
  if (v24 >= a3 || v24 <= -1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  return v26 + v14;
}

uint64_t sub_100013E44(uint64_t a1)
{
  v1 = *(a1 + 660);
  if (v1 > 127)
  {
    if (v1 == 128)
    {
      return 1027077;
    }

    if (v1 != 256)
    {
      if (v1 == 1024)
      {
        return 1027080;
      }

      return 0;
    }

    return 1027078;
  }

  else
  {
    switch(v1)
    {
      case 1:
        if (*(a1 + 648) == 2)
        {
          return 1027073;
        }

        else
        {
          return 5304833;
        }

      case 2:
        if (*(a1 + 648) == 2)
        {
          return 1027074;
        }

        else
        {
          return 5304834;
        }

      case 16:
        return 5304832;
      default:
        return 0;
    }
  }
}

uint64_t sub_100013EE8(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      if (*(a1 + 648) == 2)
      {
        return 1027072;
      }

      else
      {
        return 5304832;
      }
    }

    else if (a2 == 2)
    {
      if (*(a1 + 648) == 2)
      {
        return 1027073;
      }

      else
      {
        return 5304833;
      }
    }
  }

  else if (a2 == 4)
  {
    if (*(a1 + 648) == 2)
    {
      return 1027077;
    }

    else
    {
      return 5304837;
    }
  }

  else
  {
    if (a2 == 8)
    {
      v4 = *(a1 + 648);
      v5 = 1027074;
      v6 = 5304834;
    }

    else
    {
      if (a2 != 16)
      {
        return result;
      }

      v4 = *(a1 + 648);
      v5 = 1027076;
      v6 = 5304836;
    }

    if (v4 == 2)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

double sub_100013FD8(uint64_t a1)
{
  v2 = sub_100016754(0x2D8uLL);
  if (v2)
  {
    v2[56] = v2 + 56;
    v2[57] = v2 + 56;
    *(v2 + 60) = 1;
    v2[62] = a1;
    *&result = 0x460000A8C0;
    v2[79] = 0x460000A8C0;
    *(v2 + 160) = 60;
    v2[54] = -1;
  }

  return result;
}

void sub_100014034(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_10002662C(nullsub_1, a1, 0, a4, a5, a6, a7, a8);
    sub_10002662C(sub_1000140CC, a1, 0, v9, v10, v11, v12, v13);
    free(a1[85]);
    free(a1[87]);
    free(a1[88]);
    free(a1[62]);

    free(a1);
  }
}

void sub_1000140CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "WPA: Request PTK rekeying", a3, a4, a5, a6, a7, a8, v9);

  sub_100012098(a1, 0, 1);
}

double sub_100014118(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100016A20(1, "WPA: Association event - clear replay counter", a3, a4, a5, a6, a7, a8, v18);
    v10 = *a2;
    *(a1 + 628) = *(a2 + 2);
    *(a1 + 624) = v10;
    *(a1 + 244) = 0;
    *(a1 + 252) = 0;
    *(a1 + 240) = 1;
    sub_100016A20(1, "WPA: Clear old PTK", v11, v12, v13, v14, v15, v16, v19);
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0;
  }

  return result;
}

uint64_t sub_1000141CC(uint64_t a1)
{
  result = (*(*(a1 + 496) + 24))(**(a1 + 496));
  if (result == 6)
  {
    ++*(a1 + 644);
  }

  return result;
}

void *sub_100014210(void *__dst, const void *__src, size_t __n)
{
  if (__dst)
  {
    *(__dst + 4) = __n;
    return memcpy(__dst, __src, __n);
  }

  return __dst;
}

double sub_100014220(_OWORD *a1)
{
  if (a1)
  {
    v1 = *(a1 + 55);
    if (v1)
    {
      v2 = *(v1 + 56);
      *(a1 + 4) = v2;
      memcpy(a1, (v1 + 24), v2);
    }

    else
    {
      *(a1 + 4) = 32;
      result = 0.0;
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_100014250(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 512) = a2;
  }

  return result;
}

uint64_t sub_10001425C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 504) = a2;
  }

  return result;
}

char *sub_100014268(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      *(result + 65) = *a2;
      *(result + 33) = *(a2 + 8);
      v5 = *(a2 + 24);
      v4 = *(a2 + 32);
      *(result + 68) = v5;
      if (v4)
      {
        result = memcpy(result + 552, v4, *(a2 + 40));
        v6 = *(a2 + 40);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + 73) = v6;
      *(v3 + 148) = *(a2 + 48);
    }

    else
    {
      *(result + 73) = 0;
      *(result + 148) = 0;
      *(result + 520) = 0u;
      *(result + 536) = 0u;
    }
  }

  return result;
}

uint64_t sub_1000142EC(uint64_t result, int *a2)
{
  if (result)
  {
    v2 = *a2;
    *(result + 600) = *(a2 + 2);
    *(result + 596) = v2;
  }

  return result;
}

uint64_t sub_100014304(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 608) = a2;
    *(result + 616) = a3;
  }

  return result;
}

uint64_t sub_100014314(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 424) = a2;
  }

  return result;
}

uint64_t sub_100014320(_DWORD *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return result;
        }

        if ((a3 - 1) <= 0x63)
        {
          result = 0;
          a1[159] = a3;
          return result;
        }
      }

      else if (a3)
      {
        result = 0;
        a1[158] = a3;
        return result;
      }
    }

    else
    {
      if (a2 != 2)
      {
        result = 0;
        if (a2 == 3)
        {
          a1[162] = a3;
        }

        else
        {
          a1[163] = a3;
        }

        return result;
      }

      if (a3)
      {
        result = 0;
        a1[160] = a3;
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 <= 6)
  {
    result = 0;
    if (a2 == 5)
    {
      a1[164] = a3;
    }

    else
    {
      a1[165] = a3;
    }
  }

  else
  {
    switch(a2)
    {
      case 7:
        result = 0;
        a1[166] = a3;
        break;
      case 8:
        result = 0;
        a1[167] = a3;
        break;
      case 9:
        result = 0;
        a1[168] = a3;
        break;
    }
  }

  return result;
}

unsigned int *sub_100014424(unsigned int *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2 <= 3)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          return v2[160];
        }

        else
        {
          return v2[162];
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          return v2[159];
        }
      }

      else
      {
        return v2[158];
      }
    }

    else if (a2 <= 5)
    {
      if (a2 == 4)
      {
        return v2[163];
      }

      else
      {
        return v2[164];
      }
    }

    else
    {
      switch(a2)
      {
        case 6:
          return v2[165];
        case 7:
          return v2[166];
        case 8:
          return v2[167];
      }
    }
  }

  return result;
}

uint64_t sub_1000144D4(int *a1, char *a2, int64_t a3)
{
  v6 = sub_10000D1E4(a1[163]);
  v7 = sub_10000D1E4(a1[164]);
  v8 = sub_10000D270(a1[165], a1[162]);
  LODWORD(result) = snprintf(a2, a3, "pairwise_cipher=%s\ngroup_cipher=%s\nkey_mgmt=%s\n", v6, v7, v8);
  if (result >= a3 || result <= -1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100014564(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = sub_1000156A0(a1, a2, *a3, a4, a5, a6, a7, a8);
  if ((v11 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v11;
  sub_100016A94(1, "WPA: Set own WPA IE default", a2, v11);
  if (*(a1 + 680))
  {
    return 0;
  }

  v13 = malloc_type_malloc(*a3, 0x248B3146uLL);
  *(a1 + 680) = v13;
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(v13, a2, *a3);
  result = 0;
  *(a1 + 688) = *a3;
  return result;
}

uint64_t sub_100014614(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (a1 + 680);
  free(*(a1 + 680));
  if (a2 && a3)
  {
    sub_100016A94(1, "WPA: set own WPA/RSN IE", a2, a3);
    v13 = malloc_type_malloc(a3, 0x30382C5BuLL);
    *v6 = v13;
    if (v13)
    {
      memcpy(v13, a2, a3);
      result = 0;
      *(a1 + 688) = a3;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    sub_100016A20(1, "WPA: clearing own WPA/RSN IE", v7, v8, v9, v10, v11, v12, v15);
    result = 0;
    *v6 = 0;
    v6[1] = 0;
  }

  return result;
}

uint64_t sub_1000146D0(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  free(*(a1 + 696));
  if (!a2 || !a3)
  {
    sub_100016A20(1, "WPA: clearing AP WPA IE", v6, v7, v8, v9, v10, v11, v14);
    a3 = 0;
    *(a1 + 696) = 0;
    goto LABEL_8;
  }

  sub_100016A94(1, "WPA: set AP WPA IE", a2, a3);
  v12 = malloc_type_malloc(a3, 0x6DC7B314uLL);
  *(a1 + 696) = v12;
  if (v12)
  {
    memcpy(v12, a2, a3);
LABEL_8:
    result = 0;
    *(a1 + 712) = a3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100014788(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  free(*(a1 + 704));
  if (!a2 || !a3)
  {
    sub_100016A20(1, "WPA: clearing AP RSN IE", v6, v7, v8, v9, v10, v11, v14);
    a3 = 0;
    *(a1 + 704) = 0;
    goto LABEL_8;
  }

  sub_100016A94(1, "WPA: set AP RSN IE", a2, a3);
  v12 = malloc_type_malloc(a3, 0x4C3E4CEEuLL);
  *(a1 + 704) = v12;
  if (v12)
  {
    memcpy(v12, a2, a3);
LABEL_8:
    result = 0;
    *(a1 + 720) = a3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100014840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 680))
  {
    if (sub_10001538C(*(a1 + 680), *(a1 + 688), a2, a4, a5, a6, a7, a8))
    {
      return 4294967294;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100016A20(1, "WPA: No WPA/RSN IE available from association info", a3, a4, a5, a6, a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }
}

double sub_10001489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100016A20(1, "WPA: Clear old PMK and PTK", a3, a4, a5, a6, a7, a8, v10);
  *(a1 + 168) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 376) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  return result;
}

uint64_t sub_100014920(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t sub_10001492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0;
  sub_100016A20(1, "WPA: Installing PTK to the driver.", a3, a4, a5, a6, a7, a8, v26);
  v16 = *(a1 + 652);
  switch(v16)
  {
    case 1u:
      sub_100016A20(1, "WPA: Pairwise Cipher Suite: NONE - do not use pairwise keys", v10, v11, v12, v13, v14, v15, v27);
      return 0;
    case 0x10u:
      v17 = 3;
      break;
    case 8u:
      v17 = 2;
      v16 = 32;
      break;
    default:
      sub_100016A20(3, "WPA: Unsupported pairwise cipher %d", v10, v11, v12, v13, v14, v15, *(a1 + 652));
      return 0xFFFFFFFFLL;
  }

  if (*(a1 + 648) == 2)
  {
    v18 = &v34;
  }

  else
  {
    v18 = (a2 + 61);
    sub_100016A94(1, "WPA: RSC", v18, 6);
  }

  if (((*(*(a1 + 496) + 48))(**(a1 + 496), v17, a1 + 624, 0, 1, v18, 6, a1 + 72, v16) & 0x80000000) == 0)
  {
    if (*(a1 + 592))
    {
      sub_10002662C(sub_1000140CC, a1, 0, v20, v21, v22, v23, v24);
      sub_100026404(*(a1 + 592), 0, sub_1000140CC, a1, 0);
    }

    return 0;
  }

  v32 = *(a1 + 628);
  v33 = *(a1 + 629);
  v30 = *(a1 + 626);
  v31 = *(a1 + 627);
  v28 = *(a1 + 624);
  v29 = *(a1 + 625);
  sub_100016A20(3, "WPA: Failed to set PTK to the driver (alg=%d keylen=%d bssid=%02x:%02x:%02x:%02x:%02x:%02x)", v19, v20, v21, v22, v23, v24, v17);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100014ADC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, __int16 a5)
{
  memset(&v30, 0, 48);
  sub_100016B64(1, "RSN: received GTK in pairwise handshake", a3, a4);
  v16 = a4 >= 2;
  v17 = a4 - 2;
  if (!v16 || v17 > 0x20)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *a3;
  v30.i32[3] = *a3 & 3;
  if ((v18 & 4) != 0)
  {
    v19 = *(a1 + 652);
    if (v19 == 1)
    {
      goto LABEL_8;
    }

    sub_100016A20(2, "WPA: Tx bit set for GTK, but pairwise keys are used - ignore Tx bit", v10, v11, v12, v13, v14, v15, v30.i64[0]);
  }

  v19 = 0;
LABEL_8:
  v30.i32[1] = v19;
  __memcpy_chk();
  v31 = v17;
  if (!sub_100014F38(*(a1 + 656), v17, v17, &v30.i32[2], v30.i32, v20, v21, v22) && !sub_100015040(a1, &v30, (a2 + 61)))
  {
    sub_100015250(a1, (a1 + 624), a5 & 0x200);
    return 0;
  }

  sub_100016A20(1, "RSN: Failed to install GTK", v23, v24, v25, v26, v27, v28, v30.i64[0]);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100014C28(uint64_t a1, uint64_t a2)
{
  result = sub_10000D4B8(*(a1 + 664));
  if (result)
  {
    if (*(a2 + 72))
    {
      if (*(a2 + 80) != sub_10000D388(*(a1 + 664)) + 8)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = *(a2 + 72);
      v12 = sub_10000D388(*(a1 + 664));
      v13 = v5[1];
      v14 = *v5 | (v13 << 8);
      if (*(a1 + 376) == v12 && !memcmp((a1 + 344), v5 + 8, v12) || *(a1 + 416) == v12 && !memcmp((a1 + 384), v5 + 8, v12))
      {
        sub_100016A20(1, "WPA: Not reinstalling already in-use IGTK to the driver (keyidx=%d)", v6, v7, v8, v9, v10, v11, v14);
      }

      else
      {
        v16 = v5[2];
        v15 = v5 + 2;
        v31 = v15[4];
        v32 = v15[5];
        v29 = v15[2];
        v30 = v15[3];
        v28 = v15[1];
        sub_100016A20(1, "WPA: IGTK keyid %d pn %02x%02x%02x%02x%02x%02x", v6, v7, v8, v9, v10, v11, v14);
        sub_100016B64(1, "WPA: IGTK", v15 + 6, v12);
        if (v13 >= 0x10)
        {
          sub_100016D3C(*(*(a1 + 496) + 8), 3, "WPA: Invalid IGTK KeyID %d", v17, v18, v19, v20, v21, v14);
          return 0xFFFFFFFFLL;
        }

        v22 = sub_10000D408(*(a1 + 664));
        if (((*(*(a1 + 496) + 48))(**(a1 + 496), v22, "\xFF\xFF\xFF\xFF\xFF\xFF", v14, 0, v15, 6, v15 + 6) & 0x80000000) != 0)
        {
          sub_100016D3C(*(*(a1 + 496) + 8), 3, "WPA: Failed to configure IGTK to the driver", v23, v24, v25, v26, v27, v12);
          return 0xFFFFFFFFLL;
        }

        *(a1 + 376) = v12;
        memcpy((a1 + 344), v15 + 6, v12);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100014DF0(void *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v29 = a3[4];
  v30 = a3[5];
  v27 = a3[2];
  v28 = a3[3];
  v25 = *a3;
  v26 = a3[1];
  sub_100016D3C(*(a1[62] + 8), 3, "WPA: %s (src=%02x:%02x:%02x:%02x:%02x:%02x)", a4, a5, a6, a7, a8, a2);
  v18 = a1[87];
  if (v18)
  {
    sub_100016A94(2, "WPA: WPA IE in Beacon/ProbeResp", v18, a1[89]);
  }

  if (a4)
  {
    if (!a1[87])
    {
      sub_100016A20(2, "WPA: No WPA IE in Beacon/ProbeResp", v18, v13, v14, v15, v16, v17, v24);
    }

    sub_100016A94(2, "WPA: WPA IE in 3/4 msg", a4, a5);
  }

  v19 = a1[88];
  if (v19)
  {
    sub_100016A94(2, "WPA: RSN IE in Beacon/ProbeResp", v19, a1[90]);
  }

  if (a6)
  {
    if (!a1[88])
    {
      sub_100016A20(2, "WPA: No RSN IE in Beacon/ProbeResp", v19, v13, v14, v15, v16, v17, v24);
    }

    sub_100016A94(2, "WPA: RSN IE in 3/4 msg", a6, a7);
  }

  v20 = a1[62];
  v21 = v20[5];
  v22 = *v20;

  return v21(v22, 17);
}

uint64_t sub_100014F38(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v9) = a1 - 2;
  LODWORD(v9) = a1 - 2;
  v8 = v9 >> 1;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (a2 != 32 || a3 < 32)
      {
        goto LABEL_20;
      }

      result = 0;
      *a4 = 6;
      v11 = 2;
    }

    else
    {
      if (v8 != 7)
      {
        goto LABEL_12;
      }

      if (a2 != 16 || a3 < 16)
      {
        goto LABEL_20;
      }

      result = 0;
      *a4 = 6;
      v11 = 3;
    }

LABEL_19:
    *a5 = v11;
    return result;
  }

  if (!v8)
  {
    if (a2 != 5 || a3 < 5)
    {
      goto LABEL_20;
    }

LABEL_15:
    result = 0;
    *a4 = 0;
    v11 = 1;
    goto LABEL_19;
  }

  if (v8 == 1)
  {
    if (a2 != 13 || a3 < 13)
    {
LABEL_20:
      v18 = sub_10000D1E4(a1);
      sub_100016A20(3, "WPA: Unsupported %s Group Cipher key length %d (%d).", v12, v13, v14, v15, v16, v17, v18);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_15;
  }

LABEL_12:
  sub_100016A20(3, "WPA: Unsupported Group Cipher %d", a3, a4, a5, a6, a7, a8, a1);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100015040(uint64_t a1, int8x16_t *a2, unsigned __int8 *a3)
{
  v6 = a2 + 1;
  v7 = *(a1 + 296);
  v8 = a2[3].i32[0];
  if (v7 == v8 && !memcmp((a1 + 264), &a2[1], v7) || *(a1 + 336) == v8 && !memcmp((a1 + 304), v6, v8))
  {
    v36 = a2->u32[1];
    sub_100016A20(1, "WPA: Not reinstalling already in-use GTK to the driver (keyidx=%d tx=%d len=%d)", v9, v10, v11, v12, v13, v14, a2->u32[3]);
    return 0;
  }

  sub_100016B64(1, "WPA: Group Key", v6, v8);
  v35 = a2->u32[1];
  v38 = a2[3].u32[0];
  sub_100016A20(1, "WPA: Installing GTK to the driver (keyidx=%d tx=%d len=%d).", v15, v16, v17, v18, v19, v20, a2->u32[3]);
  sub_100016A94(1, "WPA: RSC", a3, a2->i32[2]);
  v21 = v6;
  if (*(a1 + 656) == 8)
  {
    v22 = vextq_s8(a2[2], a2[2], 8uLL);
    v40[0] = *v6;
    v40[1] = v22;
    v21 = v40;
  }

  v23 = a2->u32[0];
  v24 = a2->u32[3];
  if (*(a1 + 652) != 1)
  {
    if (((*(*(a1 + 496) + 48))(**(a1 + 496), v23, "\xFF\xFF\xFF\xFF\xFF\xFF", v24, a2->u32[1], a3, a2->i32[2], v21, a2[3].i32[0], v35, v38) & 0x80000000) != 0)
    {
      v37 = a2[3].u32[0];
      v39 = a2->u32[3];
      v34 = a2->u32[0];
      v31 = "WPA: Failed to set GTK to the driver (alg=%d keylen=%d keyidx=%d)";
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v34 = a2[3].i32[0];
  if (((*(*(a1 + 496) + 48))(**(a1 + 496), v23, "\xFF\xFF\xFF\xFF\xFF\xFF", v24, 1, a3, a2->i32[2], v21) & 0x80000000) == 0)
  {
LABEL_12:
    v32 = a2[3].i32[0];
    *(a1 + 296) = v32;
    memcpy((a1 + 264), v6, v32);
    return 0;
  }

  v31 = "WPA: Failed to set GTK to the driver (Group only).";
LABEL_15:
  sub_100016A20(3, v31, v25, v26, v27, v28, v29, v30, v34);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100015250(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = *(*(a1 + 496) + 8);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  sub_10000D1E4(*(a1 + 652));
  sub_10000D1E4(*(a1 + 656));
  sub_100016D3C(v5, 2, "WPA: Key negotiation completed with %02x:%02x:%02x:%02x:%02x:%02x [PTK=%s GTK=%s]", v12, v13, v14, v15, v16, v6);
  (*(*(a1 + 496) + 88))(**(a1 + 496));
  result = (*(*(a1 + 496) + 16))(**(a1 + 496), 8);
  if (a3)
  {
    (*(*(a1 + 496) + 136))(**(a1 + 496), a2, 3, 1);
    result = sub_100026404(1u, 0, nullsub_1, a1, 0);
  }

  v24 = *(a1 + 440);
  if (v24)
  {
    if (*(v24 + 104))
    {
      result = sub_100016A20(1, "RSN: Authenticator accepted opportunistic PMKSA entry - marking it valid", v18, v19, v20, v21, v22, v23, v25);
      *(*(a1 + 440) + 104) = 0;
    }
  }

  return result;
}

uint64_t sub_10001538C(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if (!a2 || *a1 != 48)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = xmmword_10002BF50;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    if (a2)
    {
      if (a2 > 7)
      {
        if (*a1 != 221 || a2 - 2 != a1[1] || bswap32(*(a1 + 2)) != 5304833 || *(a1 + 3) != 1)
        {
          sub_100016A20(1, "%s: malformed ie or unknown version", a3, a4, a5, a6, a7, a8, "wpa_parse_wpa_ie_wpa");
          return 0xFFFFFFFFLL;
        }

        if ((a2 - 8) <= 3)
        {
          if (a2 != 8)
          {
            sub_100016A20(1, "%s: ie length mismatch, %u too much", a3, a4, a5, a6, a7, a8, "wpa_parse_wpa_ie_wpa");
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          *(a3 + 8) = sub_100015CA8(a1 + 2);
          if ((v9 - 12) < 2)
          {
            if (v9 == 13)
            {
              sub_100016A20(1, "%s: ie too short (for key mgmt)", v12, v13, v14, v15, v16, v17, "wpa_parse_wpa_ie_wpa");
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            *(a3 + 4) = 0;
            v18 = a1[13];
            v19 = a1[12];
            v20 = v19 | (v18 << 8);
            if (!v20 || v9 - 14 < (4 * v20))
            {
              sub_100016A20(1, "%s: ie count botch (pairwise), count %u left %u", v12, v13, v14, v15, v16, v17, "wpa_parse_wpa_ie_wpa");
              return 0xFFFFFFFFLL;
            }

            v21 = 0;
            v22 = 0;
            v23 = (4 * v19) | (v18 << 10);
            do
            {
              v22 |= sub_100015CA8(&a1[v21 + 14]);
              *(a3 + 4) = v22;
              v21 += 4;
            }

            while (v23 != v21);
            if (v9 - v21 - 10 < 6)
            {
              if (v9 - 15 == v21)
              {
                sub_100016A20(1, "%s: ie too short (for capabilities)", v24, v25, v26, v27, v28, v29, "wpa_parse_wpa_ie_wpa");
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              *(a3 + 12) = 0;
              v30 = a1[v21 + 14] | (a1[v21 + 15] << 8);
              if (v30)
              {
                v31 = v9 - 16 - v21 >= (4 * v30);
              }

              else
              {
                v31 = 0;
              }

              if (!v31)
              {
                v37 = a1[v21 + 14] | (a1[v21 + 15] << 8);
                sub_100016A20(1, "%s: ie count botch (key mgmt), count %u left %u", v24, v25, v26, v27, v28, v29, "wpa_parse_wpa_ie_wpa");
                return 0xFFFFFFFFLL;
              }

              v32 = 0;
              v33 = v9 - 18 - v21;
              v34 = &a1[v21 + 16];
              do
              {
                v35 = bswap32(*v34) - 5304832;
                if (v35 > 2)
                {
                  v36 = 0;
                }

                else
                {
                  v36 = dword_10002BF60[v35];
                }

                v32 |= v36;
                *(a3 + 12) = v32;
                ++v34;
                v33 -= 4;
                --v30;
              }

              while (v30);
              if (v33 + 6 < 6)
              {
                v33 += 2;
              }

              else
              {
                *(a3 + 16) = *v34;
              }

              if (v33 >= 1)
              {
                sub_100016A20(1, "%s: ie has %u trailing bytes - ignored", v24, v25, v26, v27, v28, v29, "wpa_parse_wpa_ie_wpa");
              }
            }
          }
        }

        return 0;
      }

      sub_100016A20(1, "%s: ie len too short %lu", a3, a4, a5, a6, a7, a8, "wpa_parse_wpa_ie_wpa");
    }

    return 0xFFFFFFFFLL;
  }

  return sub_10000CCDC(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000156A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 652);
  v9 = *(a1 + 656);
  v10 = *(a1 + 660);
  if (*(a1 + 648) != 2)
  {
    if (a3 < 0x18)
    {
      return 0xFFFFFFFFLL;
    }

    *a2 = -35;
    *(a2 + 2) = 32657408;
    *(a2 + 6) = 1;
    HIDWORD(v13) = v9 - 2;
    LODWORD(v13) = v9 - 2;
    v12 = v13 >> 1;
    if (v12 < 8 && ((0x8Bu >> v12) & 1) != 0)
    {
      *(a2 + 8) = 20480;
      *(a2 + 10) = -14;
      *(a2 + 11) = 0x404040402040501uLL >> (8 * v12);
      *(a2 + 12) = 1;
      switch(v8)
      {
        case 1:
          v14 = 0;
          break;
        case 0x10:
          v14 = 4;
          break;
        case 8:
          v14 = 2;
          break;
        default:
LABEL_23:
          v26 = v8;
          v19 = "Invalid pairwise cipher (%d).";
          goto LABEL_20;
      }

      *(a2 + 14) = 20480;
      *(a2 + 16) = -14;
      *(a2 + 17) = v14;
      v21 = 1;
      *(a2 + 18) = 1;
      if (v10 != 1)
      {
        if (v10 == 16)
        {
          v21 = 0;
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_40;
          }

          v21 = 2;
        }
      }

      *(a2 + 20) = 20480;
      *(a2 + 22) = -14;
      *(a2 + 23) = v21;
      *(a2 + 1) = 22;
      return 24;
    }

LABEL_19:
    v26 = v9;
    v19 = "Invalid group cipher (%d).";
LABEL_20:
    sub_100016A20(3, v19, a3, a4, a5, a6, a7, a8, v26);
    return 0xFFFFFFFFLL;
  }

  v11 = 40;
  if (!*(a1 + 440))
  {
    v11 = 22;
  }

  if (v11 > a3)
  {
    sub_100016A20(1, "RSN: Too short IE buffer (%lu bytes)", a3, a4, a5, a6, a7, a8, a3);
    return 0xFFFFFFFFLL;
  }

  v15 = *(a1 + 664);
  *a2 = 48;
  *(a2 + 2) = 1;
  HIDWORD(v17) = v9 - 2;
  LODWORD(v17) = v9 - 2;
  v16 = v17 >> 1;
  if (v16 >= 8 || ((0x8Bu >> v16) & 1) == 0)
  {
    goto LABEL_19;
  }

  *(a2 + 4) = 3840;
  *(a2 + 6) = -84;
  *(a2 + 7) = 0x404040402040501uLL >> (8 * v16);
  *(a2 + 8) = 1;
  switch(v8)
  {
    case 1:
      v18 = 0;
      break;
    case 0x10:
      v18 = 4;
      break;
    case 8:
      v18 = 2;
      break;
    default:
      goto LABEL_23;
  }

  *(a2 + 10) = 3840;
  *(a2 + 12) = -84;
  *(a2 + 13) = v18;
  v22 = 1;
  *(a2 + 14) = 1;
  if (v10 <= 127)
  {
    if (v10 == 1)
    {
      goto LABEL_45;
    }

    if (v10 == 2)
    {
      v22 = 2;
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (v10 == 128)
  {
    v22 = 5;
    goto LABEL_45;
  }

  if (v10 == 256)
  {
    v22 = 6;
    goto LABEL_45;
  }

  if (v10 != 1024)
  {
LABEL_40:
    v26 = v10;
    v19 = "Invalid key management type (%d).";
    goto LABEL_20;
  }

  v22 = 8;
LABEL_45:
  *(a2 + 16) = 3840;
  *(a2 + 18) = -84;
  *(a2 + 19) = v22;
  v23 = *(a1 + 672);
  if (v23 == 2)
  {
    v24 = -64;
  }

  else
  {
    v24 = (v23 != 0) << 7;
  }

  *(a2 + 21) = 0;
  *(a2 + 20) = v24;
  if (*(a1 + 440))
  {
    *(a2 + 22) = 1;
    *(a2 + 24) = *(*(a1 + 440) + 8);
    v25 = (a2 + 40);
  }

  else
  {
    v25 = (a2 + 22);
  }

  if (v15 == 32)
  {
    if (!*(a1 + 440))
    {
      *v25++ = 0;
    }

    *v25 = 111939328;
    LODWORD(v25) = v25 + 4;
  }

  result = (v25 - a2);
  *(a2 + 1) = v25 - a2 - 2;
  return result;
}

uint64_t sub_1000159B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (a2 < 2)
  {
    return 0;
  }

  v11 = &a1[a2];
  v12 = a1 + 1;
  v13 = &a1[a2 - 1];
  v14 = a1;
  while (1)
  {
    v15 = *v14;
    if (v15 == 221)
    {
      if (v14 == v13)
      {
        return 0;
      }

      v16 = *v12;
      if (!*v12)
      {
        return 0;
      }
    }

    else
    {
      v16 = *v12;
    }

    if (&v14[v16 + 2] > v11)
    {
      break;
    }

    if (v15 != 221)
    {
      if (v15 == 48)
      {
        *(a3 + 16) = v14;
        v17 = *v12 + 2;
        *(a3 + 24) = v17;
        v18 = "WPA: RSN IE in EAPOL-Key";
      }

      else
      {
        v17 = v16 + 2;
        v18 = "WPA: Unrecognized EAPOL-Key Key Data IE";
      }

      goto LABEL_23;
    }

    if (!v16)
    {
      return 0;
    }

    if (v16 < 6)
    {
      goto LABEL_24;
    }

    v19 = bswap32(*(v14 + 2));
    if (v19 == 5304833 && v14[6] == 1 && !v14[7])
    {
      *a3 = v14;
      v17 = *v12 + 2;
      *(a3 + 8) = v17;
      v18 = "WPA: WPA IE in EAPOL-Key";
      goto LABEL_23;
    }

    if (v16 < 0x14)
    {
      if (v16 == 6)
      {
        goto LABEL_24;
      }

      switch(v19)
      {
        case 1027081:
          goto LABEL_35;
        case 1027075:
          goto LABEL_34;
        case 1027073:
LABEL_30:
          *(a3 + 40) = v14 + 6;
          *(a3 + 48) = *v12 - 4;
          v21 = *v12 + 2;
          v22 = "WPA: GTK in EAPOL-Key";
LABEL_36:
          sub_100016B64(1, v22, v14, v21);
          break;
      }
    }

    else
    {
      if (v19 <= 1027075)
      {
        if (v19 == 1027073)
        {
          goto LABEL_30;
        }

        if (v19 != 1027075)
        {
          goto LABEL_24;
        }

LABEL_34:
        *(a3 + 56) = v14 + 6;
        *(a3 + 64) = *v12 - 4;
        v17 = *v12 + 2;
        v18 = "WPA: MAC Address in EAPOL-Key";
LABEL_23:
        sub_100016A94(1, v18, v14, v17);
        goto LABEL_24;
      }

      if (v19 == 1027081)
      {
LABEL_35:
        *(a3 + 72) = v14 + 6;
        *(a3 + 80) = *v12 - 4;
        v21 = *v12 + 2;
        v22 = "WPA: IGTK in EAPOL-Key";
        goto LABEL_36;
      }

      if (v19 == 1027076)
      {
        *(a3 + 32) = v14 + 6;
        v17 = *v12 + 2;
        v18 = "WPA: PMKID in EAPOL-Key";
        goto LABEL_23;
      }
    }

LABEL_24:
    v20 = &v14[v14[1]];
    v14 = v20 + 2;
    v12 = v20 + 3;
    if (v12 >= v11)
    {
      return 0;
    }
  }

  sub_100016A20(1, "WPA: EAPOL-Key Key Data underflow (ie=%d len=%d pos=%d)", a3, a4, a5, a6, a7, a8, v15);
  sub_100016B64(1, "WPA: Key Data", a1, a2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100015CA8(unsigned int *a1)
{
  v1 = bswap32(*a1) - 5304832;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_10002BF6C[v1];
  }
}

uint64_t sub_100015CD8(char *a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    v3 = *a1;
    v4 = v3 - 48;
    if ((v3 - 48) <= 9)
    {
      goto LABEL_5;
    }

    if ((v3 - 97) <= 5)
    {
      v4 = v3 - 87;
LABEL_5:
      if (v4 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_6;
    }

    if ((v3 - 65) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    LOBYTE(v4) = v3 - 55;
    if (v3 - 55 < 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_6:
    v5 = a1[1];
    v6 = v5 - 48;
    if ((v5 - 48) <= 9)
    {
      goto LABEL_9;
    }

    if ((v5 - 97) <= 5)
    {
      v6 = v5 - 87;
LABEL_9:
      if (v6 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_10;
    }

    if ((v5 - 65) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    LOBYTE(v6) = v5 - 55;
    if (v5 - 55 < 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_10:
    *(a2 + i) = v6 | (16 * v4);
    if (i == 5)
    {
      break;
    }

    if (a1[2] != 58)
    {
      return 0xFFFFFFFFLL;
    }

    a1 += 3;
  }

  return 0;
}

uint64_t sub_100015D88(uint64_t a1, _BYTE *a2)
{
  v2 = 0;
  v3 = 2 - a1;
  while (1)
  {
    v4 = (v3 + a1);
    for (a1 += 2; ; ++a1)
    {
      v5 = *(a1 - 2);
      if (v5 > 0x3A || ((1 << v5) & 0x400600000000000) == 0)
      {
        break;
      }

      v4 = (v4 + 1);
    }

    v7 = v5;
    v8 = v5 - 48;
    if (v8 > 9)
    {
      break;
    }

LABEL_11:
    if ((v8 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_12:
    v9 = *(a1 - 1);
    v10 = v9 - 48;
    if ((v9 - 48) <= 9)
    {
      goto LABEL_15;
    }

    if ((v9 - 97) <= 5)
    {
      v10 = v9 - 87;
LABEL_15:
      if (v10 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_16;
    }

    if ((v9 - 65) > 5)
    {
      return 0xFFFFFFFFLL;
    }

    LOBYTE(v10) = v9 - 55;
    if (v9 - 55 < 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_16:
    *a2++ = v10 | (16 * v8);
    if (++v2 == 6)
    {
      return v4;
    }
  }

  if ((v7 - 97) <= 5)
  {
    v8 = v7 - 87;
    goto LABEL_11;
  }

  if ((v7 - 65) <= 5)
  {
    LOBYTE(v8) = v7 - 55;
    if (((v7 - 55) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100015E64(char *a1, _BYTE *a2, uint64_t a3)
{
  if (a3)
  {
    while (1)
    {
      v3 = *a1;
      v4 = v3 - 48;
      if ((v3 - 48) <= 9)
      {
        goto LABEL_5;
      }

      if ((v3 - 97) <= 5)
      {
        break;
      }

      if ((v3 - 65) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v4) = v3 - 55;
      if (v3 - 55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_6:
      v5 = a1[1];
      v6 = v5 - 48;
      if ((v5 - 48) <= 9)
      {
        goto LABEL_9;
      }

      if ((v5 - 97) <= 5)
      {
        v6 = v5 - 87;
LABEL_9:
        if (v6 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_10;
      }

      if ((v5 - 65) > 5)
      {
        return 0xFFFFFFFFLL;
      }

      LOBYTE(v6) = v5 - 55;
      if (v5 - 55 < 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_10:
      *a2++ = v6 | (16 * v4);
      a1 += 2;
      if (!--a3)
      {
        return 0;
      }
    }

    v4 = v3 - 87;
LABEL_5:
    if (v4 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_100015F04(uint64_t result, int a2)
{
  v2 = a2 - 1;
  do
  {
    if (v2 < 0)
    {
      break;
    }

    v3 = (*(result + (v2-- & 0x7FFFFFFF)))++ + 1;
  }

  while ((v3 & 0x100) != 0);
  return result;
}

uint64_t sub_100015F2C(_DWORD *a1)
{
  v4 = 0;
  v5 = 0;
  result = sub_1000162A8(&v4);
  v3 = bswap32(4295 * v5 - ((v5 >> 5) + (v5 >> 9)));
  *a1 = bswap32(v4 - 2085978496);
  a1[1] = v3;
  return result;
}

uint64_t sub_100015F94(char *__str, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v5 = __str;
  v6 = &__str[a2];
  LODWORD(v7) = __str;
  if (a4)
  {
    v7 = __str;
    do
    {
      v9 = *a3++;
      v10 = snprintf(v7, v6 - v7, "%02x", v9);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      if (v6 - v7 <= v10)
      {
        break;
      }

      v7 += v10;
      --v4;
    }

    while (v4);
  }

  *(v6 - 1) = 0;
  return (v7 - v5);
}

uint64_t sub_100016044(char *__str, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a4;
  v5 = __str;
  v6 = &__str[a2];
  LODWORD(v7) = __str;
  if (a4)
  {
    v7 = __str;
    do
    {
      v9 = *a3++;
      v10 = snprintf(v7, v6 - v7, "%02X", v9);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      if (v6 - v7 <= v10)
      {
        break;
      }

      v7 += v10;
      --v4;
    }

    while (v4);
  }

  *(v6 - 1) = 0;
  return (v7 - v5);
}

char *sub_1000160F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    v2 = 32;
  }

  else
  {
    v2 = a2;
  }

  __memcpy_chk();
  byte_1000403DC[v2] = 0;
  v3 = byte_1000403DC[0];
  if (byte_1000403DC[0])
  {
    v4 = &byte_1000403DD;
    do
    {
      if ((v3 - 127) <= 0xFFFFFFA0)
      {
        *(v4 - 1) = 95;
      }

      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return byte_1000403DC;
}

_BYTE *sub_100016178(_DWORD *a1, _BYTE *a2, uint64_t a3)
{
  v4 = 0;
  if (a1 && a3)
  {
    if (*a1 == 2)
    {
      v6.s_addr = a1[1];
      v7 = inet_ntoa(v6);
      sub_100016768(a2, v7, a3);
    }

    else
    {
      *a2 = 0;
    }

    return a2;
  }

  return v4;
}

uint64_t sub_1000161DC(unint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  result = 1;
  if (a1)
  {
    if (a2 && (*a1 != 2 || *(a1 + 4) == *(a2 + 4)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001621C(const char *a1, in_addr *a2)
{
  if (!inet_aton(a1, a2 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  a2->s_addr = 2;
  return result;
}

uint64_t sub_10001625C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sleep(result);
  }

  if (a2)
  {

    return usleep(a2);
  }

  return result;
}

uint64_t sub_1000162A8(__darwin_time_t *a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  result = gettimeofday(&v4, 0);
  tv_usec = v4.tv_usec;
  *a1 = v4.tv_sec;
  a1[1] = tv_usec;
  return result;
}

uint64_t sub_1000162EC(int a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, void *a7)
{
  result = 0xFFFFFFFFLL;
  if (a6 <= 0x3C && a5 <= 0x3B && a4 <= 0x17 && a1 >= 1970 && (a2 - 13) >= 0xFFFFFFF4 && (a3 - 32) >= 0xFFFFFFE1)
  {
    v18 = v7;
    v19 = v8;
    memset(&v17.tm_wday, 0, 32);
    v17.tm_mon = a2 - 1;
    v17.tm_year = a1 - 1900;
    v17.tm_hour = a4;
    v17.tm_mday = a3;
    v17.tm_sec = a6;
    v17.tm_min = a5;
    v16 = mktime(&v17);
    v12 = localtime(&v16);
    if (v12 && (v13 = mktime(v12), (v14 = gmtime(&v16)) != 0))
    {
      v15 = v13 - mktime(v14);
    }

    else
    {
      v15 = 0;
    }

    result = 0;
    *a7 = v16 + v15;
  }

  return result;
}

FILE *sub_1000163C0(const char *a1)
{
  if (chdir("/") < 0)
  {
    goto LABEL_11;
  }

  v2 = open("/dev/null", 2);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

  v3 = v2;
  if (dup2(v2, 0) < 0 || dup2(v3, 1) < 0 || dup2(v3, 2) < 0)
  {
    close(v3);
LABEL_11:
    perror("daemon");
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    result = fopen(a1, "w");
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = getpid();
    fprintf(v5, "%u\n", v6);
    fclose(v5);
  }

  return 0;
}

const char *sub_100016498(const char *result)
{
  if (result)
  {
    return unlink(result);
  }

  return result;
}

uint64_t sub_1000164A4(void *a1, size_t a2)
{
  v4 = fopen("/dev/urandom", "rb");
  if (v4)
  {
    v5 = v4;
    v6 = fread(a1, 1uLL, a2, v4);
    fclose(v5);
    if (v6 == a2)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    puts("Could not open /dev/urandom.");
    return 0xFFFFFFFFLL;
  }
}

char *sub_10001652C(char *__s1)
{
  if (*__s1 == 47)
  {

    return strdup(__s1);
  }

  else
  {
    v3 = 128;
    while (1)
    {
      v4 = malloc_type_malloc(v3, 0x9E9F39C8uLL);
      if (!v4)
      {
        return 0;
      }

      v5 = v4;
      v6 = getcwd(v4, v3);
      if (v6)
      {
        break;
      }

      v7 = *__error();
      free(v5);
      v8 = 0;
      v3 *= 2;
      if (v3 > 0x7D0 || v7 != 34)
      {
        return v8;
      }
    }

    v9 = v6;
    v5[v3 - 1] = 0;
    v10 = strlen(v6);
    v11 = strlen(__s1);
    v12 = malloc_type_malloc(v10 + v11 + 2, 0x2C26C62CuLL);
    v8 = v12;
    if (v12)
    {
      memcpy(v12, v9, v10);
      v8[v10] = 47;
      memcpy(&v8[v10 + 1], __s1, v11);
      v8[v10 + 1 + v11] = 0;
    }

    free(v5);
    return v8;
  }
}

void *sub_100016690(const char *a1, size_t *a2)
{
  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  fseek(v3, 0, 2);
  *a2 = ftell(v4);
  fseek(v4, 0, 0);
  v5 = malloc_type_malloc(*a2, 0xA48BFCCDuLL);
  v6 = v5;
  if (!v5)
  {
    fclose(v4);
    return v6;
  }

  v7 = fread(v5, 1uLL, *a2, v4);
  v8 = *a2;
  fclose(v4);
  if (v7 != v8)
  {
    free(v6);
    return 0;
  }

  return v6;
}

unsigned __int8 *sub_100016768(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (v4)
    {
      v5 = *v3++;
      *a1++ = v5;
      --v4;
      if (!v5)
      {
        return &v3[~a2];
      }
    }

    *a1 = 0;
  }

    ;
  }

  return &v3[~a2];
}

uint64_t sub_1000167A8(const char *a1, const char *a2, int a3)
{
  v6 = fork();
  if (v6 < 0)
  {
    perror("fork");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
    if (!v6)
    {
      sub_100029778(&v9, a1, a2);
    }

    if (a3)
    {
      waitpid(v6, &v8, 0);
    }

    return 0;
  }
}

uint64_t sub_100016854(char *a1, _BYTE *a2)
{
  if (sub_100015E64(a1, a2, 4) || a1[8] != 45 || sub_100015E64(a1 + 9, a2 + 4, 2) || a1[13] != 45 || sub_100015E64(a1 + 14, a2 + 6, 2) || a1[18] != 45 || sub_100015E64(a1 + 19, a2 + 8, 2) || a1[23] != 45)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_100015E64(a1 + 24, a2 + 10, 6))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_100016910(unsigned __int8 *a1, char *__str, size_t __size)
{
  v4 = snprintf(__str, __size, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  v6 = v4 < 0 || v4 >= __size;
  return (v6 << 31 >> 31);
}

uint64_t sub_1000169C0(uint64_t a1)
{
  v1 = 0;
  while (!*(a1 + v1))
  {
    if (++v1 == 16)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000169E8()
{
  if (dword_100040014)
  {
    v1[0] = 0;
    v1[1] = 0;
    return sub_1000162A8(v1);
  }

  return result;
}

uint64_t sub_100016A20(uint64_t result, char *format, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (dword_100040010 <= result)
  {
    v9 = &a9;
    if (!&a9)
    {
      v9 = "(null)";
    }

    if (result > 4)
    {
      v10 = 6;
    }

    else
    {
      v10 = dword_10002BF84[result];
    }

    return asl_vlog(0, 0, v10, format, v9);
  }

  return result;
}

uint64_t sub_100016A9C(uint64_t result, const char *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  if (dword_100040010 <= result)
  {
    v12[6] = v5;
    v12[7] = v6;
    if (dword_100040014)
    {
      v12[0] = 0;
      v12[1] = 0;
      sub_1000162A8(v12);
    }

    printf("%s - hexdump(len=%lu):", a2, a4);
    if (a3)
    {
      if (a5)
      {
        for (; a4; --a4)
        {
          v11 = *a3++;
          printf(" %02x", v11);
        }
      }

      else
      {
        printf(" [REMOVED]");
      }
    }

    else
    {
      printf(" [NULL]");
    }

    return putchar(10);
  }

  return result;
}

uint64_t sub_100016B78(uint64_t result, const char *a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  if (dword_100040010 <= result)
  {
    v24[12] = v5;
    v24[13] = v6;
    if (dword_100040014)
    {
      v24[0] = 0;
      v24[1] = 0;
      sub_1000162A8(v24);
    }

    if (a5)
    {
      if (a3)
      {
        for (result = printf("%s - hexdump_ascii(len=%lu):\n", a2, a4); a4; a4 -= v11)
        {
          if (a4 >= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = a4;
          }

          printf("    ");
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          v13 = a3;
          v14 = v12;
          do
          {
            v15 = *v13++;
            printf(" %02x", v15);
            --v14;
          }

          while (v14);
          if (a4 <= 0xF)
          {
            v16 = v11 - 16;
            do
            {
              printf("   ");
              v17 = __CFADD__(v16++, 1);
            }

            while (!v17);
          }

          printf("   ");
          v18 = a3;
          do
          {
            v19 = *v18++;
            v20 = v19;
            if (v19 < 0)
            {
              v21 = __maskrune(v20, 0x40000uLL);
            }

            else
            {
              v21 = _DefaultRuneLocale.__runetype[v20] & 0x40000;
            }

            if (v21)
            {
              v22 = v20;
            }

            else
            {
              v22 = 95;
            }

            putchar(v22);
            --v12;
          }

          while (v12);
          if (a4 <= 0xF)
          {
            v23 = v11 - 16;
            do
            {
              putchar(32);
              v17 = __CFADD__(v23++, 1);
            }

            while (!v17);
          }

          result = putchar(10);
          a3 += v11;
        }
      }

      else
      {
        return printf("%s - hexdump_ascii(len=%lu): [NULL]\n");
      }
    }

    else
    {
      return printf("%s - hexdump_ascii(len=%lu): [REMOVED]\n");
    }
  }

  return result;
}

void sub_100016D3C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = malloc_type_malloc(0x800uLL, 0xF3829AAEuLL);
  if (v12)
  {
    v19 = v12;
    v20 = vsnprintf(v12, 0x800uLL, a3, &a9);
    sub_100016A20(a2, "%s", v21, v22, v23, v24, v25, v26, v19);
    if (off_100040400)
    {
      off_100040400(a1, a2, v19, v20);
    }

    free(v19);
  }

  else
  {

    sub_100016A20(4, "wpa_msg: Failed to allocate message buffer", v13, v14, v15, v16, v17, v18, a9);
  }
}

void sub_100016E14(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (off_100040400)
  {
    v12 = malloc_type_malloc(0x800uLL, 0x2B455EF6uLL);
    if (v12)
    {
      v19 = v12;
      v20 = vsnprintf(v12, 0x800uLL, a3, &a9);
      off_100040400(a1, a2, v19, v20);
      free(v19);
    }

    else
    {

      sub_100016A20(4, "wpa_msg_ctrl: Failed to allocate message buffer", v13, v14, v15, v16, v17, v18, a9);
    }
  }
}

void sub_100016EE4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = malloc_type_malloc(0x800uLL, 0x246AAE48uLL);
  if (v11)
  {
    v18 = v11;
    vsnprintf(v11, 0x800uLL, a5, &a9);
    if (a2)
    {
      v29 = a2[5];
      v27 = a2[3];
      v28 = a2[4];
      v25 = a2[1];
      v26 = a2[2];
      sub_100016A20(1, "hostapd_logger: STA %02x:%02x:%02x:%02x:%02x:%02x - %s", v19, v20, v21, v22, v23, v24, *a2);
    }

    else
    {
      sub_100016A20(1, "hostapd_logger: %s", v19, v20, v21, v22, v23, v24, v18);
    }

    free(v18);
  }

  else
  {

    sub_100016A20(4, "hostapd_logger: Failed to allocate message buffer", v12, v13, v14, v15, v16, v17, a9);
  }
}

uint64_t sub_100016FCC(void **a1, size_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = v4[1];
    v6 = v5 + a2;
    if (v5 + a2 <= *v4)
    {
      return 0;
    }

    v7 = v4[2];
    if (v7)
    {
      v8 = malloc_type_realloc(v7, v6, 0x944E1E2FuLL);
      if (v8)
      {
        v9 = v8;
        bzero(&v8[v4[1]], a2);
        v4[2] = v9;
LABEL_14:
        result = 0;
        *v4 = v4[1] + a2;
        return result;
      }
    }

    else
    {
      v12 = malloc_type_realloc(v4, a2 + v5 + 24, 0x1010040A79CA2DEuLL);
      if (v12)
      {
        v4 = v12;
        bzero(v12 + v12[1] + 24, a2);
        *a1 = v4;
        goto LABEL_14;
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = sub_100016754(a2 + 24);
    if (v10)
    {
      *v10 = a2;
    }

    *a1 = v10;
    if (v10)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

void *sub_1000170C4(uint64_t a1)
{
  result = sub_100016754(a1 + 24);
  if (result)
  {
    *result = a1;
  }

  return result;
}

void *sub_1000170F4(uint64_t a1, uint64_t a2)
{
  result = sub_100016754(0x18uLL);
  if (result)
  {
    *result = a2;
    result[1] = a2;
    result[2] = a1;
  }

  return result;
}

unint64_t *sub_10001712C(const void *a1, size_t a2)
{
  v4 = sub_100016754(a2 + 24);
  v11 = v4;
  if (v4)
  {
    *v4 = a2;
    if (a1)
    {
      v12 = sub_10001723C(v4, a2, v5, v6, v7, v8, v9, v10);
      memcpy(v12, a1, a2);
    }
  }

  return v11;
}

unint64_t *sub_10001718C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_100016754(v2 + 24);
  v10 = v3;
  if (v3)
  {
    *v3 = v2;
    v11 = (a1 + 24);
    v14 = a1 + 8;
    v13 = *(a1 + 8);
    v12 = *(v14 + 8);
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v16 = sub_10001723C(v3, v13, v4, v5, v6, v7, v8, v9);
    memcpy(v16, v15, v13);
  }

  return v10;
}

void sub_1000171F8(void **a1)
{
  if (a1)
  {
    free(a1[2]);

    free(a1);
  }
}

char *sub_10001723C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v8 = a1[2];
  v10 = *a1;
  a1[1] = v9 + a2;
  if (v9 + a2 > v10)
  {
    sub_100016A20(4, "wpabuf %p (size=%lu used=%lu) overflow len=%lu", a3, a4, a5, a6, a7, a8, a1);
    abort();
  }

  v11 = a1 + 3;
  if (v8)
  {
    v11 = v8;
  }

  return v11 + v9;
}

unint64_t *sub_100017294(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  if (a1)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 8) + v4;
  v7 = sub_100016754(v6 + 24);
  v5 = v7;
  if (v7)
  {
    *v7 = v6;
    if (a1)
    {
      v14 = *(a1 + 8);
      if (*(a1 + 16))
      {
        v15 = *(a1 + 16);
      }

      else
      {
        v15 = (a1 + 24);
      }

      v16 = sub_10001723C(v7, *(a1 + 8), v8, v9, v10, v11, v12, v13);
      memcpy(v16, v15, v14);
    }

    v17 = *(a2 + 8);
    if (*(a2 + 16))
    {
      v18 = *(a2 + 16);
    }

    else
    {
      v18 = (a2 + 24);
    }

    v19 = sub_10001723C(v5, *(a2 + 8), v8, v9, v10, v11, v12, v13);
    memcpy(v19, v18, v17);
  }

  sub_1000171F8(a1);
  free(*(a2 + 16));
  free(a2);
  return v5;
}

unint64_t *sub_100017370(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    return a1;
  }

  v6 = sub_100016754(a2 + 24);
  v13 = v6;
  if (v6)
  {
    *v6 = a2;
    v14 = sub_10001723C(v6, v5, v7, v8, v9, v10, v11, v12);
    bzero(v14, v5);
    v21 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v22 = *(a1 + 16);
    }

    else
    {
      v22 = (a1 + 24);
    }

    v23 = sub_10001723C(v13, *(a1 + 8), v15, v16, v17, v18, v19, v20);
    memcpy(v23, v22, v21);
  }

  free(*(a1 + 16));
  free(a1);
  return v13;
}

uint64_t sub_100017420(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = a1[2];
  if (!v3)
  {
    v3 = (a1 + 3);
  }

  result = vsnprintf(&v3[a1[1]], *a1 - a1[1], __format, va);
  v11 = a1[1];
  if ((result & 0x80000000) != 0 || *a1 - v11 <= result)
  {
    v12 = *a1;
    v13 = a1[1];
    sub_100016A20(4, "wpabuf %p (size=%lu used=%lu) overflow len=%lu", v5, v6, v7, v8, v9, v10, a1);
    abort();
  }

  a1[1] = v11 + result;
  return result;
}

uint64_t sub_1000174B8(char *__filename)
{
  if (__filename)
  {
    v2 = fopen(__filename, "r");
  }

  else
  {
    v9 = sub_100026C20();
    if (!v9)
    {
LABEL_491:
      v369 = __filename;
      v344 = "Could not open configuration file '%s' for reading.";
      goto LABEL_492;
    }

    v2 = sub_1000269EC(v9);
  }

  v10 = v2;
  if (!v2)
  {
    goto LABEL_491;
  }

  v11 = sub_100000C50();
  v18 = v11;
  if (!v11)
  {
    fclose(v10);
    return v18;
  }

  v19 = off_100040000;
  v11[9] = off_100040000;
  if (!v19)
  {
    sub_100016A20(4, "No driver wrappers registered!", v12, v13, v14, v15, v16, v17, v369);
    sub_1000011A4(v18);
    fclose(v10);
    return 0;
  }

  v11[1] = *v11;
  v20 = 0;
  if (fgets(__s, 256, v10))
  {
    LODWORD(v21) = 0;
    do
    {
      while (1)
      {
        v22 = *(v18 + 8);
        v21 = (v21 + 1);
        v23 = __s[0];
        v24 = &__s[1];
        v25 = __s[0];
        if (__s[0] != 35)
        {
          break;
        }

LABEL_18:
        if (!fgets(__s, 256, v10))
        {
          goto LABEL_493;
        }
      }

      if (__s[0])
      {
        while (v25 != 10)
        {
          v26 = *v24++;
          v25 = v26;
          if (!v26)
          {
            goto LABEL_16;
          }
        }

        *(v24 - 1) = 0;
        v23 = __s[0];
      }

LABEL_16:
      if (!v23)
      {
        if (!__filename)
        {
          break;
        }

        goto LABEL_18;
      }

      if (!(*__s ^ 0x706F7473 | __s[4]))
      {
        v344 = "Stop requested";
LABEL_492:
        sub_100016A20(4, v344, v3, v4, v5, v6, v7, v8, v369);
        return 0;
      }

      v27 = strchr(__s, 61);
      if (!v27)
      {
        sub_100016A20(4, "Line %d: invalid line '%s'", v28, v29, v30, v31, v32, v33, v21);
        goto LABEL_344;
      }

      v34 = v27;
      *v27 = 0;
      v35 = v27 + 1;
      if (*__s == 0x6361667265746E69 && *&__s[8] == 101)
      {
        v118 = *v18;
LABEL_350:
        sub_100016768(v118, v35, 17);
        continue;
      }

      if (*__s == 1684632162 && *&__s[3] == 6645604)
      {
        v118 = (v22 + 17);
        goto LABEL_350;
      }

      if (*__s == 1986622052 && *&__s[3] == 7497078)
      {
        *(v18 + 72) = 0;
        v119 = off_100040000;
        if (off_100040000)
        {
          v120 = &qword_100040008;
          while (strcmp(v35, *v119))
          {
            v121 = *v120++;
            v119 = v121;
            if (!v121)
            {
              goto LABEL_357;
            }
          }

          *(v18 + 72) = v119;
          continue;
        }

LABEL_357:
        sub_100016A20(4, "Line %d: invalid/unknown driver '%s'", v28, v29, v30, v31, v32, v33, v21);
        goto LABEL_344;
      }

      if (*__s == 1969382756 && *&__s[4] == 103)
      {
        sub_100016A20(1, "Line %d: DEPRECATED: 'debug' configuration variable is not used anymore", v28, v29, v30, v31, v32, v33, v21);
        continue;
      }

      if (*__s == 0x735F726567676F6CLL && *&__s[8] == 0x656C5F676F6C7379 && *&__s[16] == 7103862)
      {
        *(v22 + 36) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x735F726567676F6CLL && *&__s[8] == 0x656C5F74756F6474 && *&__s[16] == 7103862)
      {
        *(v22 + 40) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x735F726567676F6CLL && *&__s[6] == 0x676F6C7379735FLL)
      {
        *(v22 + 44) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x735F726567676F6CLL && *&__s[6] == 0x74756F6474735FLL)
      {
        *(v22 + 48) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x6C69665F706D7564 && *&__s[8] == 101)
      {
        *(v22 + 56) = strdup(v27 + 1);
        continue;
      }

      if (!(*__s ^ 0x64697373 | __s[4]))
      {
        v122 = strlen(v27 + 1);
        if (v122 - 33 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          sub_100016A20(4, "Line %d: invalid SSID '%s'", v123, v124, v125, v126, v127, v128, v21);
          goto LABEL_344;
        }

        *(v22 + 192) = v122;
        memcpy((v22 + 152), v35, v122);
        *(v22 + 152 + *(v22 + 192)) = 0;
        *(v22 + 200) = 1;
        continue;
      }

      if (*__s == 0x5F7264646163616DLL && *&__s[8] == 7103329)
      {
        v129 = atoi(v27 + 1);
        *(v22 + 444) = v129;
        if (v129 >= 3)
        {
          sub_100016A20(4, "Line %d: unknown macaddr_acl %d", v130, v131, v132, v133, v134, v135, v21);
        }

        continue;
      }

      if (*__s == 0x6D5F747065636361 && *&__s[8] == 0x656C69665F6361)
      {
        if (sub_100019178((v27 + 1), (v22 + 448), (v22 + 456)))
        {
          sub_100016A20(4, "Line %d: Failed to read accept_mac_file '%s'", v136, v137, v138, v139, v140, v141, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x63616D5F796E6564 && *&__s[6] == 0x656C69665F6361)
      {
        if (sub_100019178((v27 + 1), (v22 + 464), (v22 + 472)))
        {
          sub_100016A20(4, "Line %d: Failed to read deny_mac_file '%s'", v142, v143, v144, v145, v146, v147, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x6174735F736477)
      {
        *(v22 + 476) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x695F78616D5F7061 && *&__s[8] == 0x746976697463616ELL && *&__s[16] == 121)
      {
        *(v22 + 700) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x5F7972746E756F63 && *&__s[5] == 0x65646F635F7972)
      {
        *(v18 + 88) = *v35;
        *(v18 + 90) = 32;
        continue;
      }

      if (*__s == 0x3132303865656569 && *&__s[3] == 0x64313132303865)
      {
        *(v18 + 92) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x3132303865656569 && *&__s[8] == 120)
      {
        *(v22 + 72) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x65765F6C6F706165 && *&__s[6] == 0x6E6F6973726576)
      {
        v148 = atoi(v27 + 1);
        *(v22 + 76) = v148;
        if ((v148 - 3) <= 0xFFFFFFFD)
        {
          sub_100016A20(4, "Line %d: invalid EAPOL version (%d): '%s'.", v149, v150, v151, v152, v153, v154, v21);
          goto LABEL_344;
        }

        sub_100016A20(1, "eapol_version=%d", v149, v150, v151, v152, v153, v154, v148);
        continue;
      }

      if (*__s == 0x7373656D5F706165 && *&__s[8] == 6645601)
      {
        v155 = strdup(v27 + 1);
        *(v22 + 368) = v155;
        if (v155)
        {
          v162 = v155;
          *(v22 + 376) = strlen(v155);
          v163 = strstr(v162, "\\0");
          if (v163)
          {
            *v163 = 0;
            memmove(v163 + 1, v163 + 2, *(v22 + 376) + *(v22 + 368) + ~(v163 + 1));
            --*(v22 + 376);
          }

          continue;
        }

        sub_100016A20(4, "Line %d: Failed to allocate memory for eap_req_id_text", v156, v157, v158, v159, v160, v161, v21);
LABEL_344:
        v117 = v20 < 100;
LABEL_345:
        if (v117)
        {
          ++v20;
        }

        continue;
      }

      if (*__s == 0x5F79656B5F706577 && *&__s[8] == 0x616F72625F6E656CLL && *&__s[14] == 0x7473616364616FLL)
      {
        v164 = atoi(v27 + 1);
        *(v22 + 392) = v164;
        if (v164 >= 0xE)
        {
          sub_100016A20(4, "Line %d: invalid WEP key len %lu (= %lu bits)", v165, v166, v167, v168, v169, v170, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x5F79656B5F706577 && *&__s[8] == 0x63696E755F6E656CLL && *&__s[16] == 7631713)
      {
        v171 = atoi(v27 + 1);
        *(v22 + 400) = v171;
        if (v171 >= 0xE)
        {
          sub_100016A20(4, "Line %d: invalid WEP key len %d (= %d bits)", v172, v173, v174, v175, v176, v177, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (!(*__s ^ 0x656B65725F706577 | *&__s[8] ^ 0x646F697265705F79 | __s[16]))
      {
        v178 = atoi(v27 + 1);
        *(v22 + 404) = v178;
        if (v178 < 0)
        {
          goto LABEL_393;
        }

        continue;
      }

      if (*__s == 0x756165725F706165 && *&__s[8] == 0x6F697265705F6874 && *&__s[16] == 100)
      {
        v185 = atoi(v27 + 1);
        *(v22 + 416) = v185;
        if (v185 < 0)
        {
LABEL_393:
          sub_100016A20(4, "Line %d: invalid period %d", v179, v180, v181, v182, v183, v184, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x656B5F6C6F706165 && *&__s[8] == 0x5F7865646E695F79 && *&__s[16] == 0x756F72616B726F77 && *&__s[19] == 0x646E756F72616BLL)
      {
        *(v22 + 384) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x615F70695F6E776FLL && *&__s[8] == 7496804)
      {
        if (sub_10001621C(v27 + 1, (v22 + 104)))
        {
          sub_100016A20(4, "Line %d: invalid IP address '%s'", v186, v187, v188, v189, v190, v191, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x6E6564695F73616ELL && *&__s[7] == 0x7265696669746ELL)
      {
        *(v22 + 128) = strdup(v27 + 1);
        continue;
      }

      if (*__s == 0x676C615F68747561 && *&__s[8] == 115)
      {
        v192 = atoi(v27 + 1);
        *(v22 + 480) = v192;
        if (!v192)
        {
          sub_100016A20(4, "Line %d: no authentication algorithms allowed", v193, v194, v195, v196, v197, v198, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x5F6D756E5F78616DLL && *&__s[8] == 6386803)
      {
        v199 = atoi(v27 + 1);
        *(v22 + 64) = v199;
        if (v199 >= 0x7D8)
        {
          sub_100016A20(4, "Line %d: Invalid max_num_sta=%d; allowed range 0..%d", v200, v201, v202, v203, v204, v205, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 6385783)
      {
        *(v22 + 484) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x756F72675F617077 && *&__s[8] == 0x79656B65725F70)
      {
        *(v22 + 512) = 3600;
        continue;
      }

      if (!(*__s ^ 0x697274735F617077 | *&__s[8] ^ 0x79656B65725F7463 | __s[16]))
      {
        *(v22 + 516) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x5F6B6D675F617077 && *&__s[6] == 0x79656B65725F6BLL)
      {
        *(v22 + 520) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x5F6B74705F617077 && *&__s[6] == 0x79656B65725F6BLL)
      {
        *(v22 + 524) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x737361705F617077 && *&__s[7] == 0x65736172687073)
      {
        if (strlen(v27 + 1) - 64 <= 0xFFFFFFC7)
        {
          sub_100016A20(4, "Line %d: invalid WPA passphrase length %d (expected 8..63)", v206, v207, v208, v209, v210, v211, v21);
          goto LABEL_344;
        }

        free(*(v22 + 240));
        *(v22 + 240) = strdup(v35);
        continue;
      }

      if (*__s == 0x6B73705F617077)
      {
        free(*(v22 + 232));
        v212 = sub_100016754(0x38uLL);
        *(v22 + 232) = v212;
        if (!v212)
        {
          goto LABEL_344;
        }

        if (sub_100015E64(v35, v212 + 12, 32) || v34[65])
        {
          sub_100016A20(4, "Line %d: Invalid PSK '%s'.", v213, v214, v215, v216, v217, v218, v21);
          goto LABEL_344;
        }

        *(*(v22 + 232) + 8) = 1;
        continue;
      }

      if (*__s == 0x5F6B73705F617077 && *&__s[5] == 0x656C69665F6B73)
      {
        free(*(v22 + 248));
        v219 = strdup(v35);
        *(v22 + 248) = v219;
        if (!v219)
        {
          sub_100016A20(4, "Line %d: allocation failed", v220, v221, v222, v223, v224, v225, v21);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x5F79656B5F617077 && *&__s[5] == 0x746D676D5F7965)
      {
        v226 = sub_1000193CC(v21, v35);
        *(v22 + 488) = v226;
        v117 = v226 == -1 && v20 < 100;
        goto LABEL_345;
      }

      if (*__s == 0x726961705F617077 && *&__s[5] == 0x65736977726961)
      {
        v227 = sub_100019588(v21, v35);
        *(v22 + 504) = v227;
        goto LABEL_421;
      }

      if (*__s == 0x726961705F6E7372 && *&__s[5] == 0x65736977726961)
      {
        v227 = sub_100019588(v21, v35);
        *(v22 + 528) = v227;
LABEL_421:
        if (v227 == -1)
        {
          goto LABEL_344;
        }

        if ((v227 & 7) != 0)
        {
          sub_100016A20(4, "Line %d: unsupported pairwise cipher suite '%s'", v228, v229, v230, v231, v232, v233, v227);
          goto LABEL_344;
        }

        continue;
      }

      if (*__s == 0x746E695F6C727463 && *&__s[7] == 0x65636166726574)
      {
        free(*(v22 + 552));
        *(v22 + 552) = strdup(v35);
        continue;
      }

      if (*__s == 0x746E695F6C727463 && *&__s[8] == 0x675F656361667265 && *&__s[13] == 0x70756F72675F65)
      {
        __endptr = 0;
        v234 = getgrnam(v27 + 1);
        if (v234)
        {
          gr_gid = v234->gr_gid;
          *(v22 + 560) = gr_gid;
          *(v22 + 564) = 1;
          sub_100016A20(1, "ctrl_interface_group=%d (from group name '%s')", v235, v236, v237, v238, v239, v240, gr_gid);
        }

        else
        {
          v242 = strtol(v35, &__endptr, 10);
          *(v22 + 560) = v242;
          if (!*v35 || *__endptr)
          {
            sub_100016A20(1, "Line %d: Invalid group '%s'", v243, v244, v245, v246, v247, v248, v21);
            goto LABEL_344;
          }

          *(v22 + 564) = 1;
          sub_100016A20(1, "ctrl_interface_group=%d", v243, v244, v245, v246, v247, v248, v242);
        }

        continue;
      }

      if (*__s == 0x636F735F74736574 && *&__s[8] == 7628139)
      {
        free(*(v22 + 688));
        *(v22 + 688) = strdup(v35);
        continue;
      }

      if (*__s == 0x5F6561705F657375 && *&__s[8] == 0x64615F70756F7267 && *&__s[11] == 0x726464615F7075)
      {
        *(v22 + 696) = atoi(v27 + 1);
        continue;
      }

      if (*__s == 0x65646F6D5F7768)
      {
        v249 = *v35;
        if (v249 == 103)
        {
          if (v27[2])
          {
            goto LABEL_446;
          }

          v250 = 1;
LABEL_444:
          *(v18 + 40) = v250;
          continue;
        }

        if (v249 != 98)
        {
          if (v249 != 97 || v27[2])
          {
LABEL_446:
            sub_100016A20(4, "Line %d: unknown hw_mode '%s'", v28, v29, v30, v31, v32, v33, v21);
            goto LABEL_344;
          }

          v250 = 2;
          goto LABEL_444;
        }

        if (v27[2])
        {
          goto LABEL_446;
        }

        *(v18 + 40) = 0;
      }

      else
      {
        if (*__s == 0x6C656E6E616863)
        {
          *(v18 + 37) = atoi(v27 + 1);
          continue;
        }

        if (*__s == 0x695F6E6F63616562 && *&__s[3] == 0x746E695F6E6F63)
        {
          v251 = atoi(v27 + 1);
          if ((v251 - 0x10000) <= 0xFFFF000E)
          {
            sub_100016A20(4, "Line %d: invalid beacon_int %d (expected 15..65535)", v252, v253, v254, v255, v256, v257, v21);
            goto LABEL_344;
          }

          *(v18 + 24) = v251;
          continue;
        }

        if (*__s == 0x7265705F6D697464 && *&__s[8] == 6582121)
        {
          v258 = atoi(v27 + 1);
          *(v22 + 68) = v258;
          if ((v258 - 256) <= 0xFFFFFF00)
          {
            sub_100016A20(4, "Line %d: invalid dtim_period %d", v259, v260, v261, v262, v263, v264, v21);
            goto LABEL_344;
          }

          continue;
        }

        if (*__s == 0x657268745F737472 && *&__s[6] == 0x646C6F68736572)
        {
          v265 = atoi(v27 + 1);
          *(v18 + 28) = v265;
          if (v265 >= 0x92C)
          {
            sub_100016A20(4, "Line %d: invalid rts_threshold %d", v266, v267, v268, v269, v270, v271, v21);
            goto LABEL_344;
          }

          continue;
        }

        if (*__s == 0x68745F6D67617266 && *&__s[8] == 0x646C6F68736572)
        {
          v272 = atoi(v27 + 1);
          *(v18 + 32) = v272;
          if ((v272 - 2347) <= 0xFFFFF7D4)
          {
            sub_100016A20(4, "Line %d: invalid fragm_threshold %d", v273, v274, v275, v276, v277, v278, v21);
            goto LABEL_344;
          }

          continue;
        }

        if (*__s == 0x6F72705F646E6573 && *&__s[8] == 0x6F707365725F6562 && *&__s[16] == 6648686)
        {
          v279 = atoi(v27 + 1);
          if (v279 < 2)
          {
            *(v18 + 36) = v279;
          }

          else
          {
            sub_100016A20(4, "Line %d: invalid send_probe_response %d (expected 0 or 1)", v280, v281, v282, v283, v284, v285, v21);
          }

          continue;
        }

        if (*__s == 0x6574726F70707573 && *&__s[8] == 0x73657461725F64)
        {
          v286 = (v18 + 56);
          goto LABEL_460;
        }

        if (*__s == 0x61725F6369736162 && *&__s[8] == 7562612)
        {
          v286 = (v18 + 64);
LABEL_460:
          if (sub_100019744(v286, v35))
          {
            sub_100016A20(4, "Line %d: invalid rate list", v287, v288, v289, v290, v291, v292, v21);
            goto LABEL_344;
          }

          continue;
        }

        if (*__s ^ 0x656C626D61657270 | __s[8])
        {
          if (*__s == 0x625F65726F6E6769 && *&__s[8] == 0x7473616364616F72 && *&__s[14] == 0x646973735F7473)
          {
            *(v22 + 704) = atoi(v27 + 1);
          }

          else if (*__s == 0x616665645F706577 && *&__s[8] == 0x79656B5F746C75)
          {
            v299 = atoi(v27 + 1);
            *(v22 + 256) = v299;
            if (v299 >= 4u)
            {
              sub_100016A20(4, "Invalid wep_default_key index %d", v300, v301, v302, v303, v304, v305, v299);
              goto LABEL_344;
            }
          }

          else if (*__s ^ 0x3079656B5F706577 | __s[8] && *__s ^ 0x3179656B5F706577 | __s[8] && *__s ^ 0x3279656B5F706577 | __s[8] && *__s ^ 0x3379656B5F706577 | __s[8])
          {
            if (*__s == 0x656C6261745F7061 && *&__s[8] == 0x7A69735F78616D5FLL && *&__s[16] == 101)
            {
              *(v18 + 80) = atoi(v27 + 1);
            }

            else if (*__s ^ 0x656C6261745F7061 | *&__s[8] ^ 0x746172697078655FLL | *&__s[16] ^ 0x656D69745F6E6F69 | __s[24])
            {
              if (*__s == 0x65756575715F7874 && __s[8] == 95)
              {
                if (sub_10001994C(v18, __s, v35))
                {
                  sub_100016A20(4, "Line %d: invalid TX queue item", v306, v307, v308, v309, v310, v311, v21);
                  goto LABEL_344;
                }
              }

              else
              {
                v98 = *__s == 0x62616E655F656D77 && *&__s[8] == 6579564;
                if (v98 || (*__s == 0x62616E655F6D6D77 ? (v99 = *&__s[8] == 6579564) : (v99 = 0), v99))
                {
                  *(v22 + 708) = atoi(v27 + 1);
                }

                else if (*__s == 0x64615F6473706175 && *&__s[8] == 0x6D65736974726576 && *&__s[16] == 0x62616E655F746E65 && *&__s[24] == 6579564)
                {
                  *(v22 + 712) = atoi(v27 + 1);
                }

                else
                {
                  v103 = *__s == 1600482679 && *&__s[3] == 1600348511;
                  if (v103 || (*__s == 1601006967 ? (v104 = *&__s[3] == 1600348511) : (v104 = 0), v104))
                  {
                    if (sub_100019B60(v18, __s, v35, v29, v30, v31, v32, v33))
                    {
                      sub_100016A20(4, "Line %d: invalid WMM ac item", v312, v313, v314, v315, v316, v317, v21);
                      goto LABEL_344;
                    }
                  }

                  else if (*__s == 7566178)
                  {
                    if (sub_100019DB4(v18, v35))
                    {
                      sub_100016A20(4, "Line %d: invalid bss item", v318, v319, v320, v321, v322, v323, v21);
                      goto LABEL_344;
                    }
                  }

                  else if (*__s == 1769173858 && *&__s[4] == 100)
                  {
                    if (sub_100015CD8(v27 + 1, v22 + 736))
                    {
                      sub_100016A20(4, "Line %d: invalid bssid item", v324, v325, v326, v327, v328, v329, v21);
                      goto LABEL_344;
                    }
                  }

                  else if (*__s == 0x3132303865656569 && *&__s[3] == 0x77313132303865)
                  {
                    *(v22 + 492) = atoi(v27 + 1);
                  }

                  else if (*__s == 0x61735F636F737361 && *&__s[8] == 0x6D5F79726575715FLL && *&__s[16] == 0x6F656D69745F7861 && *&__s[19] == 0x74756F656D6974)
                  {
                    v330 = atoi(v27 + 1);
                    *(v22 + 496) = v330;
                    if (!v330)
                    {
                      sub_100016A20(4, "Line %d: invalid assoc_sa_query_max_timeout", v331, v332, v333, v334, v335, v336, v21);
                      goto LABEL_344;
                    }
                  }

                  else if (*__s == 0x61735F636F737361 && *&__s[8] == 0x725F79726575715FLL && *&__s[16] == 0x6D69745F79727465 && *&__s[21] == 0x74756F656D6974)
                  {
                    v337 = atoi(v27 + 1);
                    *(v22 + 500) = v337;
                    if (!v337)
                    {
                      sub_100016A20(4, "Line %d: invalid assoc_sa_query_retry_timeout", v338, v339, v340, v341, v342, v343, v21);
                      goto LABEL_344;
                    }
                  }

                  else if (*__s == 0x7473696C5F78616DLL && *&__s[8] == 0x7265746E695F6E65 && *&__s[16] == 7102838)
                  {
                    *(v22 + 742) = atoi(v27 + 1);
                  }

                  else if (*__s == 6515567)
                  {
                    *(v22 + 744) = atoi(v27 + 1);
                  }

                  else if (*__s == 6632040)
                  {
                    *(v22 + 752) = atoi(v27 + 1);
                  }

                  else
                  {
                    if (*__s != 0x617369645F6E7374 || *&__s[8] != 0x616C665F64656C62 || *&__s[11] != 0x7367616C665F64)
                    {
                      sub_100016A20(4, "Line %d: unknown configuration item '%s'", v28, v29, v30, v31, v32, v33, v21);
                      goto LABEL_344;
                    }

                    *(v22 + 753) = atoi(v27 + 1);
                  }
                }
              }
            }

            else
            {
              *(v18 + 84) = atoi(v27 + 1);
            }
          }

          else if (sub_10001984C(v22 + 256, __s[7] - 48, v35))
          {
            sub_100016A20(4, "Line %d: invalid WEP key '%s'", v293, v294, v295, v296, v297, v298, v21);
            goto LABEL_344;
          }
        }

        else if (atoi(v27 + 1))
        {
          *(v18 + 44) = 1;
        }

        else
        {
          *(v18 + 44) = 0;
        }
      }
    }

    while (fgets(__s, 256, v10));
  }

LABEL_493:
  fclose(v10);
  v351 = *(v18 + 16);
  if (v351)
  {
    v352 = *v18 + 328;
    for (i = *(v18 + 16); i; --i)
    {
      if (!*(v352 + 72))
      {
        *(v352 + 80) = 0;
      }

      v354 = *(v352 + 156);
      if (v354)
      {
        v355 = *(v352 + 176);
        if ((v354 & 2) != 0)
        {
LABEL_501:
          v356 = *(v352 + 200);
          if (!v356)
          {
            v356 = *(v352 + 176);
            *(v352 + 200) = v356;
          }

          LOBYTE(v355) = v356 | v355;
        }
      }

      else
      {
        LOBYTE(v355) = 0;
        if ((v354 & 2) != 0)
        {
          goto LABEL_501;
        }
      }

      if ((v355 & 8) != 0)
      {
        v357 = 8;
      }

      else
      {
        v357 = 16;
      }

      *(v352 + 180) = v357;
      v358 = *(v352 - 192);
      v358[2] = *v358;
      v358[5] = v358[3];
      v359 = *(v352 - 256);
      if (v354)
      {
        if (v359)
        {
          *(v352 - 104) = 4;
        }

        else
        {
          *(v352 - 104) = 3;
        }
      }

      else if (v359)
      {
        *(v352 - 104) = 2;
        *(v352 + 8) = *(v352 + 64);
      }

      else if (*v352)
      {
        *(v352 - 104) = 1;
      }

      else
      {
        *(v352 - 104) = 0;
      }

      v352 += 760;
    }
  }

  if (*(v18 + 92) && (!*(v18 + 88) || !*(v18 + 89)))
  {
    v366 = "Cannot enable IEEE 802.11d without setting the country_code";
    goto LABEL_543;
  }

  if (v351)
  {
    v360 = 0;
    while (1)
    {
      v361 = *v18 + 760 * v360;
      if (*(v361 + 72) && !*(v361 + 80) && !**(v361 + 136))
      {
        v366 = "Invalid IEEE 802.1X configuration (no EAP authenticator configured).";
LABEL_543:
        sub_100016A20(4, v366, v345, v346, v347, v348, v349, v350, v369);
        LODWORD(v351) = 1;
        goto LABEL_544;
      }

      if (*(v361 + 484) && (*(v361 + 488) & 0x402) != 0 && !*(v361 + 232) && !*(v361 + 240) && !*(v361 + 248))
      {
        v366 = "WPA-PSK or WPA3-SAE enabled, but PSK or passphrase is not configured.";
        goto LABEL_543;
      }

      v362 = sub_100000DA4((v361 + 736));
      v351 = *(v18 + 16);
      if (v362)
      {
        break;
      }

LABEL_537:
      if (++v360 >= v351)
      {
        LODWORD(v351) = 0;
        goto LABEL_544;
      }
    }

    if (v351)
    {
      v363 = 0;
      v364 = 0;
      while (1)
      {
        v365 = *v18 + v363;
        if (v365 != v361)
        {
          if (!sub_100000D70((v365 + 736), (v361 + 736)))
          {
            v375 = *v18 + v363;
            v373 = *(v361 + 740);
            v374 = *(v361 + 741);
            v371 = *(v361 + 738);
            v372 = *(v361 + 739);
            v366 = "Duplicate BSSID %02x:%02x:%02x:%02x:%02x:%02x on interface '%s' and '%s'.";
            v369 = *(v361 + 736);
            v370 = *(v361 + 737);
            goto LABEL_543;
          }

          v351 = *(v18 + 16);
        }

        ++v364;
        v363 += 760;
        if (v364 >= v351)
        {
          goto LABEL_537;
        }
      }
    }
  }

LABEL_544:
  if (v20 >= 100)
  {
    LODWORD(v351) = 0;
  }

  v367 = (v20 + v351);
  if (v367)
  {
    sub_100016A20(4, "%d errors found in configuration file '%s'", v345, v346, v347, v348, v349, v350, v367);
    sub_1000011A4(v18);
    return 0;
  }

  return v18;
}

uint64_t sub_100019178(uint64_t result, void **a2, int *a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = fopen(result, "r");
  if (!v6)
  {
    sub_100016A20(4, "MAC list file '%s' not found.", v7, v8, v9, v10, v11, v12, v5);
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  if (!fgets(&v41, 128, v6))
  {
LABEL_29:
    fclose(v13);
    qsort(*a2, *a3, 0xCuLL, sub_100019EA8);
    return 0;
  }

  v14 = 0;
  while (1)
  {
    ++v14;
    if (v41 != 35)
    {
      break;
    }

LABEL_28:
    if (!fgets(&v41, 128, v13))
    {
      goto LABEL_29;
    }
  }

  v15 = v42;
  v16 = v41;
  if (v41)
  {
    while (v16 != 10)
    {
      v17 = *v15++;
      v16 = v17;
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    *(v15 - 1) = 0;
    if (!v41)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_9:
    if (!v41)
    {
      goto LABEL_28;
    }
  }

  if (sub_100015CD8(&v41, &v39))
  {
    sub_100016A20(4, "Invalid MAC address '%s' at line %d in '%s'", v18, v19, v20, v21, v22, v23, &v41);
    goto LABEL_33;
  }

  for (i = &v41; ; ++i)
  {
    v25 = *i;
    if (v25 <= 0x20 && ((1 << v25) & 0x100000201) != 0)
    {
      break;
    }
  }

  while (v25 == 9 || v25 == 32)
  {
    v27 = *++i;
    LOBYTE(v25) = v27;
  }

  if (v25)
  {
    v28 = atoi(i);
  }

  else
  {
    v28 = 0;
  }

  v29 = malloc_type_realloc(*a2, 12 * *a3 + 12, 0x10000408E87C208uLL);
  if (v29)
  {
    *a2 = v29;
    v36 = &v29[12 * *a3];
    v37 = v39;
    *(v36 + 2) = v40;
    *v36 = v37;
    *(*a2 + 3 * (*a3)++ + 2) = v28;
    goto LABEL_28;
  }

  sub_100016A20(4, "MAC list reallocation failed", v30, v31, v32, v33, v34, v35, v38);
LABEL_33:
  fclose(v13);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000193CC(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
      v7 = v3;
      while (1)
      {
        for (i = v7; ; ++i)
        {
          ++v7;
          if (v5 != 9 && v5 != 32)
          {
            break;
          }

          v9 = i[1];
          v5 = v9;
        }

        if (!v5)
        {
          break;
        }

        while (v5 > 0x20 || ((1 << v5) & 0x100000201) == 0)
        {
          v10 = *v7++;
          v5 = v10;
        }

        *(v7 - 1) = 0;
        if (!strcmp(i, "WPA-PSK"))
        {
          v17 = 2;
        }

        else if (!strcmp(i, "WPA-EAP"))
        {
          v17 = 1;
        }

        else if (!strcmp(i, "WPA-PSK-SHA256"))
        {
          v17 = 256;
        }

        else if (!strcmp(i, "WPA-EAP-SHA256"))
        {
          v17 = 128;
        }

        else
        {
          if (strcmp(i, "WPA3-SAE"))
          {
            sub_100016A20(4, "Line %d: invalid key_mgmt '%s'", v11, v12, v13, v14, v15, v16, a1);
            free(v4);
            return 0xFFFFFFFFLL;
          }

          v17 = 1024;
        }

        v6 = v6 | v17;
        if (v5)
        {
          v5 = *v7;
          if (*v7)
          {
            continue;
          }
        }

        free(v4);
        return v6;
      }

      free(v4);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      free(v3);
    }

    sub_100016A20(4, "Line %d: no key_mgmt values configured.", v18, v19, v20, v21, v22, v23, a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100019588(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
      v7 = v3;
      while (1)
      {
        for (i = v7; ; ++i)
        {
          ++v7;
          if (v5 != 9 && v5 != 32)
          {
            break;
          }

          v9 = i[1];
          v5 = v9;
        }

        if (!v5)
        {
          break;
        }

        while (v5 > 0x20 || ((1 << v5) & 0x100000201) == 0)
        {
          v10 = *v7++;
          v5 = v10;
        }

        *(v7 - 1) = 0;
        if (!strcmp(i, "CCMP"))
        {
          v17 = 16;
        }

        else if (!strcmp(i, "TKIP"))
        {
          v17 = 8;
        }

        else if (!strcmp(i, "WEP104"))
        {
          v17 = 4;
        }

        else if (!strcmp(i, "WEP40"))
        {
          v17 = 2;
        }

        else
        {
          if (strcmp(i, "NONE"))
          {
            sub_100016A20(4, "Line %d: invalid cipher '%s'.", v11, v12, v13, v14, v15, v16, a1);
            free(v4);
            return 0xFFFFFFFFLL;
          }

          v17 = 1;
        }

        v6 = v6 | v17;
        if (v5)
        {
          v5 = *v7;
          if (*v7)
          {
            continue;
          }
        }

        free(v4);
        return v6;
      }

      free(v4);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      free(v3);
    }

    sub_100016A20(4, "Line %d: no cipher values configured.", v18, v19, v20, v21, v22, v23, a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100019744(void **a1, char *a2)
{
  free(*a1);
  v4 = 0;
  *a1 = 0;
  for (i = a2; *i == 32; ++i)
  {
    ++v4;
LABEL_6:
    ;
  }

  if (*i)
  {
    goto LABEL_6;
  }

  v6 = malloc_type_malloc(4 * v4 + 8, 0x100004052888210uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*a2)
  {
    v8 = 0;
    while (1)
    {
      v9 = strchr(a2, 32);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      *v9 = 0;
      v11 = atoi(a2);
      v12 = v8 + 1;
      v7[v8++] = v11;
      a2 = v10 + 1;
      if (!v10[1])
      {
        goto LABEL_16;
      }
    }

    v14 = atoi(a2);
    v12 = v8 + 1;
    v7[v8] = v14;
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  result = 0;
  v7[v12] = -1;
  *a1 = v7;
  return result;
}

uint64_t sub_10001984C(uint64_t a1, unsigned int a2, char *__s)
{
  v6 = strlen(__s);
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1 + 8;
  if (*(a1 + 8 + 8 * a2))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  if (*__s != 34)
  {
    if ((v6 & 1) == 0)
    {
      v12 = v6 >> 1;
      v13 = malloc_type_malloc(v6 >> 1, 0x5BA14C6uLL);
      *(v7 + 8 * v9) = v13;
      if (v13)
      {
        *(a1 + 8 * v9 + 40) = v12;
        if ((sub_100015E64(__s, v13, v12) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v10 = v6 - 2;
  if (v6 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (__s[v6 - 1] != 34)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = malloc_type_malloc(v6 - 2, 0xBF2B4C56uLL);
  *(v7 + 8 * v9) = v11;
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(v11, __s + 1, v10);
  *(a1 + 8 * v9 + 40) = v10;
LABEL_12:
  result = 0;
  ++*(a1 + 72);
  return result;
}

uint64_t sub_10001994C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = (a2 + 9);
  if (!strncmp((a2 + 9), "data", 4uLL) && *(a2 + 13) - 48 <= 9 && *(a2 + 14) == 95)
  {
    v7 = (*(a2 + 13) - 48);
    v8 = 15;
  }

  else if (!strncmp(v6, "after_beacon_", 0xDuLL))
  {
    v7 = 6;
    v8 = 22;
  }

  else
  {
    v7 = 7;
    if (strncmp(v6, "beacon_", 7uLL))
    {
      sub_100016A20(4, "Unknown tx_queue name '%s'", v9, v10, v11, v12, v13, v14, v6);
      return 0xFFFFFFFFLL;
    }

    v8 = 16;
  }

  v15 = (a2 + v8);
  v16 = (a1 + 20 * v7);
  if (!strcmp(v15, "aifs"))
  {
    v23 = atoi(a3);
    v16[24] = v23;
    if (v23 >= 0x100)
    {
      sub_100016A20(4, "Invalid AIFS value %d", v24, v25, v26, v27, v28, v29, v23);
      return 0xFFFFFFFFLL;
    }
  }

  else if (!strcmp(v15, "cwmin"))
  {
    v30 = atoi(a3);
    v16[25] = v30;
    if (!sub_100019EDC(v30))
    {
      sub_100016A20(4, "Invalid cwMin value %d", v31, v32, v33, v34, v35, v36, v30);
      return 0xFFFFFFFFLL;
    }
  }

  else if (!strcmp(v15, "cwmax"))
  {
    v37 = atoi(a3);
    v16[26] = v37;
    if (!sub_100019EDC(v37))
    {
      sub_100016A20(4, "Invalid cwMax value %d", v38, v39, v40, v41, v42, v43, v37);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (strcmp(v15, "burst"))
    {
      sub_100016A20(4, "Unknown tx_queue field '%s'", v17, v18, v19, v20, v21, v22, v15);
      return 0xFFFFFFFFLL;
    }

    v45 = atoi(a3);
    v46 = strchr(a3, 46);
    if (v46)
    {
      v47 = v46[1] - 48;
      if (v47 >= 0xA)
      {
        LOBYTE(v47) = 0;
      }

      v47 = v47;
    }

    else
    {
      v47 = 0;
    }

    v16[27] = v47 + 10 * v45;
  }

  result = 0;
  v16[28] = 1;
  return result;
}

uint64_t sub_100019B60(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 7);
  if (v9 != 118)
  {
    if (v9 == 98)
    {
      if (*(a2 + 8) == 101 && *(a2 + 9) == 95)
      {
        v10 = 0;
        goto LABEL_15;
      }

      if (*(a2 + 8) == 107 && *(a2 + 9) == 95)
      {
        v10 = 1;
        goto LABEL_15;
      }
    }

LABEL_21:
    sub_100016A20(4, "Unknown WMM name '%s'", a3, a4, a5, a6, a7, a8, a2 + 7);
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 8) == 105 && *(a2 + 9) == 95)
  {
    v10 = 2;
    goto LABEL_15;
  }

  if (*(a2 + 8) != 111 || *(a2 + 9) != 95)
  {
    goto LABEL_21;
  }

  v10 = 3;
LABEL_15:
  v11 = (a2 + 10);
  v12 = (a1 + 20 * v10 + 256);
  if (!strcmp((a2 + 10), "aifs"))
  {
    v20 = atoi(a3);
    v27 = v20;
    if ((v20 - 256) <= 0xFFFFFF00)
    {
      sub_100016A20(4, "Invalid AIFS value %d", v21, v22, v23, v24, v25, v26, v20);
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v12[2] = v27;
  }

  else if (!strcmp(v11, "cwmin"))
  {
    v28 = atoi(a3);
    v35 = v28;
    if (v28 >= 0xD)
    {
      sub_100016A20(4, "Invalid cwMin value %d", v29, v30, v31, v32, v33, v34, v28);
      return 0xFFFFFFFFLL;
    }

    result = 0;
    *v12 = v35;
  }

  else if (!strcmp(v11, "cwmax"))
  {
    v36 = atoi(a3);
    v43 = v36;
    if (v36 >= 0xD)
    {
      sub_100016A20(4, "Invalid cwMax value %d", v37, v38, v39, v40, v41, v42, v36);
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v12[1] = v43;
  }

  else if (!strcmp(v11, "txop_limit"))
  {
    v44 = atoi(a3);
    v51 = v44;
    if (v44 >= 0x10000)
    {
      sub_100016A20(4, "Invalid txop value %d", v45, v46, v47, v48, v49, v50, v44);
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v12[3] = v51;
  }

  else
  {
    if (strcmp(v11, "acm"))
    {
      sub_100016A20(4, "Unknown wmm_ac_ field '%s'", v13, v14, v15, v16, v17, v18, v11);
      return 0xFFFFFFFFLL;
    }

    v52 = atoi(a3);
    v59 = v52;
    if (v52 >= 2)
    {
      sub_100016A20(4, "Invalid acm value %d", v53, v54, v55, v56, v57, v58, v52);
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v12[4] = v59;
  }

  return result;
}

uint64_t sub_100019DB4(uint64_t a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_realloc(*a1, 760 * *(a1 + 16) + 760, 0x10B00401B2F467AuLL);
  if (v4)
  {
    *a1 = v4;
    v11 = &v4[760 * *(a1 + 16)];
    bzero(v11, 0x2F8uLL);
    v12 = sub_100016754(0x50uLL);
    *(v11 + 17) = v12;
    if (v12)
    {
      v13 = *(a1 + 16) + 1;
      *(a1 + 8) = v11;
      *(a1 + 16) = v13;
      sub_100000BCC(v11);
      sub_100016768(v11, a2, 17);
      result = 0;
      *(v11 + 204) = *v11;
      v11[220] = v11[16];
      return result;
    }

    v15 = "Failed to allocate memory for multi-BSS RADIUS data";
  }

  else
  {
    v15 = "Failed to allocate memory for multi-BSS entry";
  }

  sub_100016A20(4, v15, v5, v6, v7, v8, v9, v10, v16);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100019EA8(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

BOOL sub_100019EDC(int a1)
{
  result = 1;
  if (a1 <= 126)
  {
    if (a1 <= 0x3F && ((1 << a1) & 0x800000008000808ALL) != 0)
    {
      return result;
    }

    return a1 == 1023;
  }

  if (a1 != 127 && a1 != 255 && a1 != 511)
  {
    return a1 == 1023;
  }

  return result;
}

uint64_t sub_100019F38(uint64_t a1)
{
  *(a1 + 2664) = -1;
  result = *(*(a1 + 16) + 552);
  if (result)
  {
    if (mkdir(result, 0x1F8u) < 0)
    {
      if (*__error() != 17)
      {
        v42 = "mkdir[ctrl_interface]";
        goto LABEL_25;
      }

      sub_100016A20(1, "Using existing control interface directory.", v3, v4, v5, v6, v7, v8, v44);
    }

    v9 = *(a1 + 16);
    if (*(v9 + 564))
    {
      if (chown(*(v9 + 552), 0, *(v9 + 560)) < 0)
      {
        v42 = "chown[ctrl_interface]";
        goto LABEL_25;
      }

      v9 = *(a1 + 16);
    }

    v10 = strlen(*(v9 + 552));
    if (v10 + strlen(v9) + 1 > 0x67)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = socket(1, 2, 0);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      v50 = 0u;
      memset(v51, 0, sizeof(v51));
      v48 = 0u;
      v49 = 0u;
      v46 = 0;
      v47 = 0u;
      v46.sa_family = 1;
      v13 = sub_10001A22C(a1);
      if (v13)
      {
        v14 = v13;
        sub_100016768(v46.sa_data, v13, 104);
        if ((bind(v12, &v46, 0x6Au) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        v16 = __error();
        v17 = strerror(*v16);
        sub_100016A20(1, "ctrl_iface bind(PF_UNIX) failed: %s", v18, v19, v20, v21, v22, v23, v17);
        if (connect(v12, &v46, 0x6Au) < 0)
        {
          sub_100016A20(1, "ctrl_iface exists, but does not allow connections - assuming it was leftover from forced program termination", v24, v25, v26, v27, v28, v29, v45);
          if (unlink(v14) < 0)
          {
            sub_100029854(v14);
LABEL_31:
            close(v12);
            unlink(v14);
            free(v14);
            return 0xFFFFFFFFLL;
          }

          if (bind(v12, &v46, 0x6Au) < 0)
          {
            v43 = "bind(PF_UNIX)";
LABEL_30:
            perror(v43);
            goto LABEL_31;
          }

          sub_100016A20(1, "Successfully replaced leftover ctrl_iface socket '%s'", v36, v37, v38, v39, v40, v41, v14);
LABEL_12:
          v15 = *(a1 + 16);
          if (*(v15 + 564) && chown(v14, 0, *(v15 + 560)) < 0)
          {
            v43 = "chown[ctrl_interface/ifname]";
          }

          else
          {
            if ((chmod(v14, 0x1F8u) & 0x80000000) == 0)
            {
              free(v14);
              *(a1 + 2664) = v12;
              sub_100025E30(v12, sub_10001A2C8, a1, 0);
              *(a1 + 2576) = a1;
              sub_100016D30(sub_10001A73C);
              return 0;
            }

            v43 = "chmod[ctrl_interface/ifname]";
          }

          goto LABEL_30;
        }

        sub_100016A20(2, "ctrl_iface exists and seems to be in use - cannot override it", v24, v25, v26, v27, v28, v29, v45);
        sub_100016A20(2, "Delete '%s' manually if it is not used anymore", v30, v31, v32, v33, v34, v35, v14);
        free(v14);
      }

      close(v12);
      return 0xFFFFFFFFLL;
    }

    v42 = "socket(PF_UNIX)";
LABEL_25:
    perror(v42);
    return 0xFFFFFFFFLL;
  }

  return result;
}