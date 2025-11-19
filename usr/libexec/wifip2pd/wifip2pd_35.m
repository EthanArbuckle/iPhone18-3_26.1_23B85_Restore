uint64_t sub_1002AB360(unsigned int *a1, uint64_t a2, unint64_t a3, size_t a4)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v6)
    {
      v14 = a2;
      if (a2 <= a2 >> 32)
      {
        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = v15;
        v17 = __DataStorage._offset.getter();
        v11 = __OFSUB__(v14, v17);
        v18 = v14 - v17;
        if (!v11)
        {
          result = __DataStorage._length.getter();
          if (!a1)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v13 = (v18 + v16);
          if (!(v18 + v16))
          {
            goto LABEL_29;
          }

          goto LABEL_19;
        }

LABEL_22:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __src[0] = a2;
    LOWORD(__src[1]) = a3;
    BYTE2(__src[1]) = BYTE2(a3);
    BYTE3(__src[1]) = BYTE3(a3);
    v6 = a3 >> 40;
    BYTE4(__src[1]) = BYTE4(a3);
    BYTE5(__src[1]) = BYTE5(a3);
    if (a1)
    {
LABEL_18:
      v13 = __src;
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v6 == 2)
  {
    v7 = *(a2 + 16);
    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
      __DataStorage._length.getter();
      if (a1)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (!v11)
    {
      __DataStorage._length.getter();
      if (a1)
      {
        v13 = (v12 + v9);
        if (!(v12 + v9))
        {
          goto LABEL_25;
        }

LABEL_19:
        memcpy(a1, v13, a4);
        return *a1;
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

  memset(__src, 0, 14);
  if (a1)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = __DataStorage._length.getter();
  if (!a1)
  {
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
  return result;
}

id WiFiInterfaceRole.queue.getter(unsigned __int8 a1)
{
  if (a1 - 2 >= 2)
  {
    if (a1 == 1)
    {
      if (qword_10058AA30 != -1)
      {
        swift_once();
      }

      v1 = &static OS_dispatch_queue.awdl;
    }

    else
    {
      if (qword_10058AA38 != -1)
      {
        swift_once();
      }

      v1 = &static OS_dispatch_queue.p2p;
    }
  }

  else
  {
    if (qword_10058AA28 != -1)
    {
      swift_once();
    }

    v1 = &static OS_dispatch_queue.nan;
  }

  v2 = *v1;

  return v2;
}

uint64_t WiFiInterfaceRole.bsdNamePrefix.getter(unsigned __int8 a1)
{
  v1 = 28261;
  v2 = 7233902;
  v3 = 29289;
  if (a1 != 3)
  {
    v3 = 7826540;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1818523489;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002AB798(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return if_nametoindex(v3);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return if_nametoindex(v3);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t WiFiInterface.driver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v4, AssociatedTypeWitness);
}

uint64_t WiFiInterface.driver.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(v1 + v4, a1, AssociatedTypeWitness);
  return swift_endAccess();
}

uint64_t (*WiFiInterface.driver.modify())()
{
  v1 = *(*v0 + 96);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t WiFiInterface.interfaceName.getter()
{
  v1 = (v0 + *(*v0 + 104));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WiFiInterface.components.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t WiFiInterface.capabilities.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = *(v1 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v9, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v11;
}

uint64_t WiFiInterface.linkState.getter()
{
  v1 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *(*v0 + 120);
  swift_beginAccess();
  sub_100012400(v0 + v6, v5, &unk_10059B0C0, &unk_1004AD460);
  v7 = v5[*(v2 + 48)];
  sub_100016290(v5, &unk_10059B0C0, &unk_1004AD460);
  return v7;
}

void sub_1002ABE08(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v13 = a1 & 1;
  v4 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v5 = *(v4 + 40);
  if (*(v1 + v5) != v3)
  {
    v6 = v4;
    v7 = v1 + *(v4 + 48);
    if (*v7)
    {
      v8 = *(v7 + 8);
      (*v7)(&v13);
    }

    v9 = v2 + *(v6 + 44);
    v10 = *(v9 + 8);
    (*v9)(&v13);
    *(v2 + v5) = v3;
    v11 = v2 + *(v6 + 56);
    if (*v11)
    {
      v12 = *(v11 + 8);
      (*v11)(&v13);
    }

    sub_1002B2490(0, v3);
  }
}

void sub_1002ABF74(unint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v22 = BYTE2(a1);
  v23 = BYTE3(a1);
  v8 = a1 >> 40;
  v24 = BYTE4(a1);
  v25 = BYTE5(a1);
  v9 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v10 = (v2 + *(v9 + 40));
  LOBYTE(v20) = v7;
  HIBYTE(v20) = v8;
  if (*v10 != a1 || *(v10 + 2) != v20)
  {
    v12 = v9;
    v19 = v5;
    v13 = v2 + *(v9 + 48);
    if (*v13)
    {
      v14 = *(v13 + 8);
      (*v13)(&v21);
    }

    v15 = v2 + *(v12 + 44);
    v16 = *(v15 + 8);
    (*v15)(&v21);
    *v10 = a1;
    v10[1] = v4;
    v10[2] = v19;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v17 = v2 + *(v12 + 56);
    if (*v17)
    {
      v18 = *(v17 + 8);
      (*v17)(&v21);
    }

    sub_1002B2A54(0, a1 & 0xFFFFFFFFFFFFLL);
  }
}

void sub_1002AC1C8(unint64_t a1)
{
  v2 = v1;
  v14 = a1;
  v4 = HIDWORD(a1) & 1;
  v15 = BYTE4(a1) & 1;
  v5 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  v6 = v5;
  v7 = v1 + *(v5 + 40);
  if (*(v7 + 4))
  {
    if ((a1 & 0x100000000) != 0)
    {
      return;
    }
  }

  else if ((a1 & 0x100000000) == 0 && *v7 == a1)
  {
    return;
  }

  v8 = v1 + *(v5 + 48);
  if (*v8)
  {
    v9 = *(v8 + 8);
    (*v8)(&v14);
  }

  v10 = v2 + *(v6 + 44);
  v11 = *(v10 + 8);
  (*v10)(&v14);
  *v7 = a1;
  *(v7 + 4) = v4;
  v12 = v2 + *(v6 + 56);
  if (*v12)
  {
    v13 = *(v12 + 8);
    (*v12)(&v14);
  }

  sub_1002B3094(0, a1 | (v4 << 32));
}

void (*WiFiInterface.linkState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 120);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  *(v4 + 40) = v7;
  v8 = *(v7 + 40);
  *(v4 + 48) = v8;
  LOBYTE(v8) = *(v6 + v8);
  *(v4 + 52) = v8;
  *(v4 + 53) = v8;
  return sub_1002AC43C;
}

void sub_1002AC43C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 52);
  if (a2)
  {
    v4 = *(v2 + 24) + *(v2 + 32);
    sub_1002ABE08(*(*a1 + 52));
  }

  else
  {
    v5 = *(v2 + 53);
    v18[0] = *(*a1 + 52);
    if (v3 != v5)
    {
      v7 = *(v2 + 32);
      v6 = *(v2 + 40);
      v8 = *(v2 + 24);
      v9 = v8 + v7 + *(v6 + 48);
      if (*v9)
      {
        v10 = *(v9 + 8);
        (*v9)(v18);
        v7 = *(v2 + 32);
        v6 = *(v2 + 40);
        v8 = *(v2 + 24);
      }

      v11 = v8 + v7 + *(v6 + 44);
      v12 = *(v11 + 8);
      (*v11)(v18);
      v13 = *(v2 + 40);
      v14 = *(v2 + 24) + *(v2 + 32);
      *(v14 + *(v2 + 48)) = v3;
      v15 = v14 + *(v13 + 56);
      if (*v15)
      {
        v16 = *(v15 + 8);
        (*v15)(v18);
      }

      v17 = *(v2 + 24) + *(v2 + 32);
      sub_1002B2490(0, v3);
    }
  }

  swift_endAccess();

  free(v2);
}

uint64_t WiFiInterface.$linkState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B0C0, &unk_1004AD460);
}

uint64_t WiFiInterface.$linkState.setter(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059B0C0, &unk_1004AD460);
  sub_10001CEA8(a1, v1 + v3, &unk_10059B0C0, &unk_1004AD460);
  return swift_endAccess();
}

void (*WiFiInterface.$linkState.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&unk_10059B0C0, &unk_1004AD460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$linkState.getter(v4);
  return sub_1002AC790;
}

uint64_t WiFiInterface.macAddress.setter(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  sub_1002ABF74(a1 & 0xFFFFFFFFFFFFLL);
  return swift_endAccess();
}

void (*WiFiInterface.macAddress.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = v6 + *(sub_10005DC58(&unk_10059B160, &qword_1004B3050) + 40);
  v8 = *(v7 + 4);
  *(v4 + 40) = *v7;
  *(v4 + 44) = v8;
  return sub_1002AC8F0;
}

void sub_1002AC8F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24) + *(*a1 + 32);
  sub_1002ABF74(*(*a1 + 40) | (*(*a1 + 42) << 16));
  swift_endAccess();

  free(v1);
}

uint64_t WiFiInterface.$macAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059B160, &qword_1004B3050);
}

uint64_t WiFiInterface.$macAddress.setter(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059B160, &qword_1004B3050);
  sub_10001CEA8(a1, v1 + v3, &unk_10059B160, &qword_1004B3050);
  return swift_endAccess();
}

void (*WiFiInterface.$macAddress.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&unk_10059B160, &qword_1004B3050) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$macAddress.getter(v4);
  return sub_1002ACB1C;
}

void sub_1002ACB44(uint64_t *a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (a2)
  {
    sub_100012400(v7, v6, a4, a5);
    a3(v6);
    sub_100016290(v7, a4, a5);
  }

  else
  {
    a3(v7);
  }

  free(v7);

  free(v6);
}

unint64_t WiFiInterface.ipv4Address.getter()
{
  v1 = (sub_10005DC58(&qword_100593CC0, &qword_1004AD470) - 8);
  v2 = *(*v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *(*v0 + 136);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &qword_100593CC0, &qword_1004AD470);
  v6 = &v4[v1[12]];
  v7 = *v6;
  LOBYTE(v1) = v6[4];
  sub_100016290(v4, &qword_100593CC0, &qword_1004AD470);
  return v7 | (v1 << 32);
}

uint64_t WiFiInterface.ipv4Address.setter(unint64_t a1)
{
  v3 = v1 + *(*v1 + 136);
  swift_beginAccess();
  v14 = a1;
  v15 = BYTE4(a1) & 1;
  v4 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  v5 = v4;
  v6 = v3 + *(v4 + 40);
  if (*(v6 + 4))
  {
    if ((a1 & 0x100000000) != 0)
    {
      return swift_endAccess();
    }
  }

  else if ((a1 & 0x100000000) == 0 && *v6 == a1)
  {
    return swift_endAccess();
  }

  v7 = v3 + *(v4 + 48);
  v8 = *(v7 + 8);
  (*v7)(&v14);
  v9 = v3 + *(v5 + 44);
  v10 = *(v9 + 8);
  (*v9)(&v14);
  *v6 = a1;
  *(v6 + 4) = BYTE4(a1) & 1;
  v11 = v3 + *(v5 + 56);
  if (*v11)
  {
    v12 = *(v11 + 8);
    (*v11)(&v14);
  }

  sub_1002B3094(0, a1 | ((HIDWORD(a1) & 1) << 32));
  return swift_endAccess();
}

void (*WiFiInterface.ipv4Address.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 136);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  *(v4 + 40) = v7;
  v8 = *(v7 + 40);
  *(v4 + 56) = v8;
  v9 = (v6 + v8);
  v10 = *v9;
  *(v4 + 60) = *v9;
  LOBYTE(v9) = *(v9 + 4);
  *(v4 + 48) = v10;
  v4 += 48;
  *(v4 + 5) = v9;
  *(v4 + 4) = v9;
  return sub_1002ACF48;
}

void sub_1002ACF48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 52);
  if (a2)
  {
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);
    LOBYTE(v23) = *(*a1 + 52);
    sub_1002AC1C8(v3 | (v4 << 32));
    goto LABEL_15;
  }

  v7 = *(v2 + 53);
  v23 = *(*a1 + 48);
  v24 = v4;
  if (v7)
  {
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(v2 + 60) == v3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 24);
  v12 = v11 + v10 + *(v9 + 48);
  if (*v12)
  {
    v13 = *(v12 + 8);
    (*v12)(&v23);
    v10 = *(v2 + 32);
    v9 = *(v2 + 40);
    v11 = *(v2 + 24);
  }

  v14 = v11 + v10 + *(v9 + 44);
  v15 = *(v14 + 8);
  (*v14)(&v23);
  v16 = *(v2 + 40);
  v17 = *(v2 + 24) + *(v2 + 32);
  v18 = v17 + *(v2 + 56);
  *v18 = v3;
  *(v18 + 4) = v4;
  v19 = v17 + *(v16 + 56);
  if (*v19)
  {
    v20 = *(v19 + 8);
    (*v19)(&v23);
  }

  v22 = *(v2 + 24);
  v21 = *(v2 + 32);
  v25 = v4;
  sub_1002B3094(0, v3 | (v4 << 32));
LABEL_15:
  swift_endAccess();

  free(v2);
}

uint64_t WiFiInterface.$ipv4Address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &qword_100593CC0, &qword_1004AD470);
}

uint64_t WiFiInterface.$ipv4Address.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  sub_100016290(v1 + v3, &qword_100593CC0, &qword_1004AD470);
  sub_10001CEA8(a1, v1 + v3, &qword_100593CC0, &qword_1004AD470);
  return swift_endAccess();
}

void (*WiFiInterface.$ipv4Address.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&qword_100593CC0, &qword_1004AD470) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$ipv4Address.getter(v4);
  return sub_1002AD2D8;
}

uint64_t WiFiInterface.ipv6Addresses.getter()
{
  v1 = (sub_10005DC58(&unk_10059A6C0, &qword_1004AD478) - 8);
  v2 = *(*v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = *(*v0 + 144);
  swift_beginAccess();
  sub_100012400(v0 + v5, v4, &unk_10059A6C0, &qword_1004AD478);
  v6 = *&v4[v1[12]];

  sub_100016290(v4, &unk_10059A6C0, &qword_1004AD478);
  return v6;
}

uint64_t WiFiInterface.ipv6Addresses.setter(uint64_t a1)
{
  v3 = v1 + *(*v1 + 144);
  swift_beginAccess();
  v13 = a1;
  v4 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v5 = v4[10];
  if ((sub_1000C02D8(*(v3 + v5), a1) & 1) == 0)
  {
    v6 = v3 + v4[12];
    v7 = *(v6 + 8);
    (*v6)(&v13);
    v8 = v3 + v4[11];
    v9 = *(v8 + 8);
    (*v8)(&v13);

    *(v3 + v5) = a1;
    v10 = v3 + v4[14];
    if (*v10)
    {
      v11 = *(v10 + 8);
      (*v10)(&v13);
    }

    sub_1002B3660(0, a1);
  }

  return swift_endAccess();
}

void (*WiFiInterface.ipv6Addresses.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(*v1 + 144);
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 24) = *(v6 + *(sub_10005DC58(&unk_10059A6C0, &qword_1004AD478) + 40));

  return sub_1002AD640;
}

void sub_1002AD640(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v6 = *(*a1 + 24);

    sub_1002B7598(v7);

    v8 = v2[3];

    swift_endAccess();
  }

  else
  {
    sub_1002B7598(*(*a1 + 24));
    swift_endAccess();
  }

  free(v2);
}

uint64_t WiFiInterface.$ipv6Addresses.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_10059A6C0, &qword_1004AD478);
}

uint64_t WiFiInterface.$ipv6Addresses.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_100016290(v1 + v3, &unk_10059A6C0, &qword_1004AD478);
  sub_10001CEA8(a1, v1 + v3, &unk_10059A6C0, &qword_1004AD478);
  return swift_endAccess();
}

void (*WiFiInterface.$ipv6Addresses.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&unk_10059A6C0, &qword_1004AD478) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  WiFiInterface.$ipv6Addresses.getter(v4);
  return sub_1002AD8A0;
}

uint64_t WiFiInterface.neighborDiscoveryTable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t WiFiInterface.neighborDiscoveryTable.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t (*WiFiInterface.neighborDiscoveryTable.modify())()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t WiFiInterface.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 160);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WiFiInterface.__allocating_init(driver:components:logger:)(char *a1, uint64_t a2, char *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return WiFiInterface.init(driver:components:logger:)(a1, a2, a3);
}

uint64_t WiFiInterface.init(driver:components:logger:)(char *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v237 = a3;
  v231 = a2;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v214 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  v213 = *(v214 - 8);
  v8 = *(v213 + 64);
  __chkstk_darwin(v214);
  v212 = &v197 - v9;
  v209 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v10 = *(*(v209 - 8) + 64);
  v11 = __chkstk_darwin(v209);
  v222 = (&v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v211 = &v197 - v13;
  v205 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  v14 = *(*(v205 - 8) + 64);
  v15 = __chkstk_darwin(v205);
  v217 = (&v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v208 = &v197 - v17;
  v18 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v206 = (&v197 - v20);
  v21 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v203 = (&v197 - v23);
  v24 = type metadata accessor for Logger();
  v234 = *(v24 - 8);
  v235 = v24;
  v25 = v234[8];
  v26 = __chkstk_darwin(v24);
  v210 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v221 = &v197 - v29;
  v30 = __chkstk_darwin(v28);
  v216 = &v197 - v31;
  v32 = __chkstk_darwin(v30);
  v215 = &v197 - v33;
  v34 = __chkstk_darwin(v32);
  v233 = &v197 - v35;
  __chkstk_darwin(v34);
  v232 = &v197 - v36;
  v236 = v7;
  v238 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = type metadata accessor for Optional();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v197 - v42;
  v44 = *(AssociatedTypeWitness - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v41);
  v207 = &v197 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v204 = &v197 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = (&v197 - v51);
  __chkstk_darwin(v50);
  v54 = &v197 - v53;
  (*(v39 + 16))(v43, a1, v38);
  v55 = (*(v44 + 48))(v43, 1, AssociatedTypeWitness);
  v224 = a1;
  v223 = v38;
  if (v55 == 1)
  {
    v56 = v237;
    v57 = v234;
    v58 = *(v39 + 8);
    v58(v43, v38);
    Logger.init(subsystem:category:)();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Unable to create WiFiInterface because no Driver was provided", v61, 2u);
    }

    v62 = v57[1];
    v63 = v56;
    v64 = v235;
    v62(v63, v235);
    v65 = swift_getAssociatedTypeWitness();
    (*(*(v65 - 8) + 8))(v231, v65);
    v58(v224, v223);
    v62(v232, v64);
    type metadata accessor for WiFiInterface();
    v66 = *(*v4 + 48);
    v67 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v202 = v39;
    (*(v44 + 32))(v54, v43, AssociatedTypeWitness);
    v68 = *(*v4 + 96);
    v69 = v44;
    v70 = *(v44 + 16);
    v201 = v54;
    v232 = v70;
    (v70)(v4 + v68, v54, AssociatedTypeWitness);
    v228 = v44 + 16;
    swift_beginAccess();
    (v70)(v52, v4 + v68, AssociatedTypeWitness);
    v71 = v236;
    v72 = v237;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v73 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v75 = v74;
    v229 = *(v69 + 8);
    v230 = v69 + 8;
    v229(v52, AssociatedTypeWitness);
    v76 = (v4 + *(*v4 + 104));
    *v76 = v73;
    v76[1] = v75;
    v77 = *(*v4 + 160);
    v220 = AssociatedTypeWitness;
    v78 = v235;
    v80 = v234 + 2;
    v79 = v234[2];
    v79(v4 + v77, v72, v235);
    v226 = v79;
    v227 = v80;
    v81 = *(*v4 + 112);
    v82 = swift_getAssociatedTypeWitness();
    v199 = *(v82 - 8);
    v83 = *(v199 + 16);
    v200 = v82;
    v83(v4 + v81, v231);
    v218 = (v4 + *(*v4 + 104));
    v241 = v73;
    v242 = v75;

    v84._countAndFlagsBits = 0x7473206B6E696C20;
    v84._object = 0xEB00000000657461;
    String.append(_:)(v84);
    v198 = v241;
    v197 = v242;
    v79(v233, v72, v78);
    v85 = *(*v4 + 96);
    v86 = v220;
    (v232)(v52, v4 + v85, v220);
    LOBYTE(v75) = (*(AssociatedConformanceWitness + 48))(v86);
    v87 = v229;
    v229(v52, v86);
    v88 = sub_1002AF3BC(v4 + v85, v238, v71);
    v90 = v89;
    v91 = swift_allocObject();
    *(v91 + 16) = v88;
    *(v91 + 24) = v90;
    v92 = v203;
    v93 = v233;
    sub_1002AF50C(v198, v197, v233, v75, 0, sub_10001A9F8, v91, sub_1002B74F8, v203, 0);
    sub_10001CEA8(v92, v4 + *(*v4 + 120), &unk_10059B0C0, &unk_1004AD460);
    v94 = v218[1];
    v241 = *v218;
    v242 = v94;

    v95._countAndFlagsBits = 7234013692659060000;
    v95._object = 0xEC00000073736572;
    String.append(_:)(v95);
    v198 = v241;
    v197 = v242;
    v226(v93, v237, v235);
    v219 = v85;
    v96 = v86;
    (v232)(v52, v4 + v85, v86);
    v97 = (*(AssociatedConformanceWitness + 64))(v86);
    v203 = v52;
    v87(v52, v86);
    v98 = sub_1002AB05C();
    v99 = sub_1002B0D00(v4 + v85, v238, v236);
    v101 = v100;
    v102 = swift_allocObject();
    *(v102 + 16) = v99;
    *(v102 + 24) = v101;
    v103 = v97 & 0xFFFFFFFFFFFFLL | ((HIWORD(v97) & 1) << 48);
    v104 = v206;
    sub_1002AFB24(v198, v197, v233, v103, v98 & 0xFFFFFFFFFFFCLL | 2, sub_1002B7744, v102, sub_1002B749C, v206, 0);
    sub_10001CEA8(v104, v4 + *(*v4 + 128), &unk_10059B160, &qword_1004B3050);
    v105 = v218[1];
    v241 = *v218;
    v242 = v105;

    v106._countAndFlagsBits = 0x6461203476504920;
    v106._object = 0xED00007373657264;
    String.append(_:)(v106);
    v108 = v241;
    v107 = v242;
    v109 = v215;
    v110 = v235;
    v111 = v226;
    v226(v215, v237, v235);
    v112 = v219;
    v113 = v204;
    (v232)(v204, v4 + v219, v96);
    v206 = (*(AssociatedConformanceWitness + 80))(v96);
    v229(v113, v96);
    v114 = sub_1002B0F10(v4 + v112, v238, v236);
    v116 = v115;
    v117 = swift_allocObject();
    *(v117 + 16) = v114;
    *(v117 + 24) = v116;
    v118 = v216;
    v111(v216, v109, v110);
    v119 = v205;
    v120 = v217;
    v121 = v217 + *(v205 + 48);
    *v121 = 0;
    *(v121 + 1) = 0;
    v122 = (v120 + v119[13]);
    *v122 = 0;
    v122[1] = 0;
    v123 = (v120 + v119[14]);
    *v123 = 0;
    v123[1] = 0;
    v204 = v108;
    *v120 = v108;
    v120[1] = v107;
    v124 = v119;
    v125 = v110;
    v126 = v107;
    v127 = v206;
    v111(v120 + v119[9], v118, v125);
    v128 = (v120 + v124[15]);
    *v128 = sub_1002B1130;
    v128[1] = 0;
    v129 = (v120 + v124[11]);
    *v129 = sub_1002B7778;
    v129[1] = v117;
    v130 = v120 + v124[10];
    *v130 = v127;
    v130[4] = BYTE4(v127) & 1;

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v240 = v205;
      *v133 = 136315394;
      v134 = sub_100002320(v204, v126, &v240);

      *(v133 + 4) = v134;
      *(v133 + 12) = 2080;
      if ((v127 & 0x100000000) != 0)
      {
        v135 = 0xE400000000000000;
        v136 = 1701736302;
        v137 = v235;
        v138 = v215;
        v139 = v216;
      }

      else
      {
        v241 = 0;
        v242 = 0xE000000000000000;
        v142 = swift_slowAlloc();
        LODWORD(v239) = v127;
        inet_ntop(2, &v239, v142, 0x10u);
        v143 = String.init(cString:)();
        v145 = v144;

        v146._countAndFlagsBits = v143;
        v146._object = v145;
        String.append(_:)(v146);
        v139 = v216;

        v136 = v241;
        v135 = v242;
        v137 = v235;
        v138 = v215;
      }

      v147 = sub_100002320(v136, v135, &v240);

      *(v133 + 14) = v147;
      _os_log_impl(&_mh_execute_header, v131, v132, "Initialized value for %s to %s", v133, 0x16u);
      swift_arrayDestroy();

      v148 = v234[1];
      v148(v139, v137);
      v140 = v137;
      v216 = v148;
      v148(v138, v137);
      v120 = v217;
    }

    else
    {

      v140 = v235;
      v141 = v234[1];
      v141(v118, v235);
      v216 = v141;
      v141(v109, v140);
    }

    v149 = v208;
    sub_10001CEA8(v120, v208, &qword_100593CC0, &qword_1004AD470);
    sub_10001CEA8(v149, v4 + *(*v4 + 136), &qword_100593CC0, &qword_1004AD470);
    v150 = v218[1];
    v241 = *v218;
    v242 = v150;

    v151._countAndFlagsBits = 0x6461203676504920;
    v151._object = 0xED00007373657264;
    String.append(_:)(v151);
    v152 = v241;
    v218 = v242;
    v153 = v221;
    v154 = v226;
    v226(v221, v237, v140);
    v155 = v219;
    v156 = v207;
    v157 = v220;
    (v232)(v207, v4 + v219, v220);
    v158 = (*(AssociatedConformanceWitness + 96))(v157);
    v229(v156, v157);
    v159 = sub_1002B1488(v4 + v155, v238, v236);
    v161 = v160;
    v162 = swift_allocObject();
    *(v162 + 16) = v159;
    *(v162 + 24) = v161;
    v163 = v210;
    v154(v210, v153, v140);
    v164 = v209;
    v165 = v222;
    v166 = (v222 + *(v209 + 48));
    *v166 = 0;
    v166[1] = 0;
    v167 = (v165 + v164[13]);
    *v167 = 0;
    v167[1] = 0;
    v168 = (v165 + v164[14]);
    *v168 = 0;
    v168[1] = 0;
    AssociatedConformanceWitness = v152;
    *v165 = v152;
    v169 = v158;
    v170 = v218;
    v165[1] = v218;
    v154(v165 + v164[9], v163, v140);
    v171 = (v165 + v164[15]);
    *v171 = sub_1002B7438;
    v171[1] = 0;
    v172 = (v165 + v164[11]);
    *v172 = sub_1002B77B4;
    v172[1] = v162;
    *(v165 + v164[10]) = v169;

    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = v163;
      v176 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *v176 = 136315394;
      v177 = sub_100002320(AssociatedConformanceWitness, v170, &v240);

      *(v176 + 4) = v177;
      *(v176 + 12) = 2080;
      v241 = 0;
      v242 = 0xE000000000000000;
      v239 = v169;
      sub_10005DC58(&qword_100593CC8, &unk_1004AD480);
      _print_unlocked<A, B>(_:_:)();

      v178 = sub_100002320(v241, v242, &v240);

      *(v176 + 14) = v178;
      _os_log_impl(&_mh_execute_header, v173, v174, "Initialized value for %s to %s", v176, 0x16u);
      swift_arrayDestroy();

      v179 = v216;
      (v216)(v175, v140);
    }

    else
    {

      v179 = v216;
      (v216)(v163, v140);
    }

    v180 = v233;
    v181 = v211;
    sub_10001CEA8(v222, v211, &unk_10059A6C0, &qword_1004AD478);
    v179(v221, v140);
    sub_10001CEA8(v181, v4 + *(*v4 + 144), &unk_10059A6C0, &qword_1004AD478);
    v182 = v203;
    v183 = v220;
    (v232)(v203, v4 + v219, v220);
    v184 = v140;
    v185 = v237;
    v226(v180, v237, v184);
    v186 = v212;
    sub_1002B1698(v182, v180, v212);
    (*(v213 + 32))(v4 + *(*v4 + 152), v186, v214);

    v187 = Logger.logObject.getter();
    v188 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v216 = v179;
      v191 = v190;
      v241 = v190;
      *v189 = 136315138;
      v192 = WiFiInterface.description.getter();
      v194 = v193;

      v195 = sub_100002320(v192, v194, &v241);

      *(v189 + 4) = v195;
      _os_log_impl(&_mh_execute_header, v187, v188, "Created %s", v189, 0xCu);
      sub_100002A00(v191);

      (v216)(v185, v235);
    }

    else
    {

      v179(v185, v184);
    }

    (*(v199 + 8))(v231, v200);
    (*(v202 + 8))(v224, v223);
    v229(v201, v183);
  }

  return v4;
}

uint64_t (*sub_1002AF3BC(uint64_t a1, uint64_t a2, uint64_t a3))(char a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_10001A960;
}

uint64_t sub_1002AF50C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, void (*a6)(char *)@<X5>, void (*a7)(char *)@<X6>, uint64_t (*a8)(_BYTE *)@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v44 = a4;
  v16 = a5 & 1;
  v50 = a5 & 1;
  v17 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v18 = (a9 + v17[12]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a9 + v17[13]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a9 + v17[14]);
  *v20 = 0;
  v20[1] = 0;
  *a9 = a1;
  a9[1] = a2;
  v21 = a2;
  v22 = v17[9];
  v46 = type metadata accessor for Logger();
  v47 = *(v46 - 8);
  (*(v47 + 16))(a9 + v22, a3, v46);
  v23 = (a9 + v17[15]);
  v43 = a8;
  *v23 = a8;
  v23[1] = a10;
  v24 = (a9 + v17[11]);
  *v24 = a6;
  v24[1] = a7;
  v25 = v17[10];
  if (v44 == 2)
  {
    *(a9 + v25) = v16;

    a6(&v50);
    v49[0] = v16;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100002320(a1, v21, &v48);

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v37 = v43(v49);
      v39 = v38;

      v40 = sub_100002320(v37, v39, &v48);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "No initial value for %s set default to %s", v35, 0x16u);
      swift_arrayDestroy();

      goto LABEL_8;
    }

LABEL_10:

    return (*(v47 + 8))(a3, v46);
  }

  *(a9 + v25) = a4 & 1;
  v49[0] = a4 & 1;

  v33 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v33, v26))
  {

    goto LABEL_10;
  }

  v27 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  *v27 = 136315394;
  v28 = sub_100002320(a1, v21, &v48);

  *(v27 + 4) = v28;
  *(v27 + 12) = 2080;
  v29 = v43(v49);
  v31 = v30;

  v32 = sub_100002320(v29, v31, &v48);

  *(v27 + 14) = v32;
  _os_log_impl(&_mh_execute_header, v33, v26, "Initialized value for %s to %s", v27, 0x16u);
  swift_arrayDestroy();

LABEL_8:

  return (*(v47 + 8))(a3, v46);
}

uint64_t sub_1002AFB24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(__int16 *)@<X5>, void (*a7)(__int16 *)@<X6>, uint64_t (*a8)(__int16 *)@<X7>, uint64_t *a9@<X8>, uint64_t (*a10)(__int16 *))
{
  v12 = a5;
  v60 = a5;
  v48 = a5 >> 8;
  v61 = BYTE2(a5);
  v46 = a5 >> 24;
  v62 = BYTE3(a5);
  v49 = a5 >> 16;
  v50 = HIDWORD(a5);
  v63 = BYTE4(a5);
  v45 = a5 >> 40;
  v64 = BYTE5(a5);
  v18 = sub_10005DC58(&unk_10059B160, &qword_1004B3050);
  v19 = (a9 + v18[12]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a9 + v18[13]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a9 + v18[14]);
  *v21 = 0;
  v21[1] = 0;
  *a9 = a1;
  a9[1] = a2;
  v51 = a2;
  v22 = v18[9];
  v23 = type metadata accessor for Logger();
  v52 = *(v23 - 8);
  v53 = v23;
  (*(v52 + 16))(a9 + v22, a3);
  v24 = (a9 + v18[15]);
  *v24 = a8;
  v24[1] = a10;
  v25 = (a9 + v18[11]);
  *v25 = a6;
  v25[1] = a7;
  if ((a4 & 0x1000000000000) != 0)
  {
    v35 = a9 + v18[10];
    *v35 = v12;
    v35[1] = v48;
    v35[2] = v49;
    v35[3] = v46;
    v35[4] = v50;
    v35[5] = v45;

    a6(&v60);
    LOBYTE(v55) = v12;
    HIBYTE(v55) = v48;
    v56 = v49;
    v57 = v46;
    v58 = v50;
    v59 = v45;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = sub_100002320(a1, v51, &v54);

      *(v38 + 4) = v39;
      *(v38 + 12) = 2080;
      v40 = a8(&v55);
      v42 = v41;

      v43 = sub_100002320(v40, v42, &v54);

      *(v38 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "No initial value for %s set default to %s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v26 = a9 + v18[10];
    *v26 = a4;
    v26[2] = BYTE2(a4);
    v26[3] = BYTE3(a4);
    v26[4] = BYTE4(a4);
    v26[5] = BYTE5(a4);
    v55 = a4;
    v56 = BYTE2(a4);
    v57 = BYTE3(a4);
    v58 = BYTE4(a4);
    v59 = BYTE5(a4);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_100002320(a1, v51, &v54);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      v31 = a8(&v55);
      v33 = v32;

      v34 = sub_100002320(v31, v33, &v54);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Initialized value for %s to %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return (*(v52 + 8))(a3, v53);
}

uint64_t MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11)
{
  v87 = a6;
  v88 = a8;
  v81 = a7;
  v86 = a5;
  v90 = a4;
  v94 = a3;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v79 - v18;
  v20 = *(a11 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v79[1] = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v79[0] = v79 - v25;
  v26 = __chkstk_darwin(v24);
  v82 = v79 - v27;
  __chkstk_darwin(v26);
  v83 = v79 - v28;
  v29 = type metadata accessor for MutableDriverProperty();
  v30 = (a9 + v29[12]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (a9 + v29[13]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (a9 + v29[14]);
  *v32 = 0;
  v32[1] = 0;
  v80 = a1;
  *a9 = a1;
  a9[1] = a2;
  v93 = a2;
  v33 = v29[9];
  v34 = type metadata accessor for Logger();
  v84 = *(v34 - 8);
  v85 = v34;
  (*(v84 + 16))(a9 + v33, v94);
  v35 = (a9 + v29[15]);
  v36 = v87;
  *v35 = v88;
  v35[1] = a10;
  v92 = a10;
  v37 = (a9 + v29[11]);
  v38 = v81;
  *v37 = v36;
  v37[1] = v38;
  (*(v15 + 16))(v19, v90, v14);
  v89 = v20;
  v39 = *(v20 + 48);
  v91 = a11;
  if (v39(v19, 1, a11) == 1)
  {
    v40 = *(v15 + 8);

    v82 = v40;
    v83 = (v15 + 8);
    (v40)(v19, v14);
    v41 = *(v89 + 16);
    v42 = v86;
    v41(a9 + v29[10], v86, v91);
    v87(v42);
    v62 = v79[0];
    v41(v79[0], v42, v91);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v87 = v14;
      v95[0] = v67;
      *v66 = 136315394;
      v68 = sub_100002320(v80, v93, v95);

      *(v66 + 4) = v68;
      *(v66 + 12) = 2080;
      v69 = v88(v62);
      v70 = v91;
      v71 = v64;
      v72 = v89;
      v74 = v73;

      v75 = *(v72 + 8);
      v75(v62, v70);
      v76 = sub_100002320(v69, v74, v95);

      *(v66 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v63, v71, "No initial value for %s set default to %s", v66, 0x16u);
      swift_arrayDestroy();

      v75(v86, v70);
      (v82)(v90, v87);
      return (*(v84 + 8))(v94, v85);
    }

    else
    {

      v77 = *(v89 + 8);
      v78 = v91;
      v77(v42, v91);
      (v82)(v90, v14);
      (*(v84 + 8))(v94, v85);
      return (v77)(v62, v78);
    }
  }

  else
  {
    v87 = v14;
    v43 = v89;
    v44 = v83;
    v45 = v91;
    (*(v89 + 32))(v83, v19, v91);
    v46 = *(v43 + 16);
    v46(a9 + v29[10], v44, v45);
    v46(v82, v44, v45);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v95[0] = v81;
      *v49 = 136315394;
      v50 = sub_100002320(v80, v93, v95);

      *(v49 + 4) = v50;
      *(v49 + 12) = 2080;
      v51 = v82;
      v52 = v88(v82);
      v53 = v89;
      v55 = v54;

      v56 = *(v53 + 8);
      v57 = v91;
      v56(v51, v91);
      v58 = sub_100002320(v52, v55, v95);

      *(v49 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v47, v48, "Initialized value for %s to %s", v49, 0x16u);
      swift_arrayDestroy();

      v56(v86, v57);
      (*(v15 + 8))(v90, v87);
      (*(v84 + 8))(v94, v85);
      return (v56)(v83, v57);
    }

    else
    {

      v60 = *(v89 + 8);
      v61 = v91;
      v60(v86, v91);
      (*(v15 + 8))(v90, v87);
      (*(v84 + 8))(v94, v85);
      v60(v82, v61);
      return (v60)(v83, v61);
    }
  }
}

uint64_t (*sub_1002B0D00(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1002B994C;
}

uint64_t sub_1002B0E50(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 72);
  v4 = swift_checkMetadataState();
  return v3(a1 & 0xFFFFFFFFFFFFLL, v4, AssociatedConformanceWitness);
}

uint64_t (*sub_1002B0F10(uint64_t a1, uint64_t a2, uint64_t a3))(unint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1002B98A4;
}

uint64_t sub_1002B1060(unint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 88);
  v4 = swift_checkMetadataState();
  return v3(a1 | ((HIDWORD(a1) & 1) << 32), v4, AssociatedConformanceWitness);
}

uint64_t sub_1002B1130(int *a1)
{
  if (a1[1])
  {
    return 1701736302;
  }

  v2 = *a1;
  v9 = 0;
  v10 = 0xE000000000000000;
  v3 = swift_slowAlloc();
  v8 = v2;
  inet_ntop(2, &v8, v3, 0x10u);
  v4 = String.init(cString:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return v9;
}

uint64_t MutableDriverProperty.init(name:logger:initialValue:updater:valueDescriber:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v28 = a3;
  v31 = a1;
  v32 = a2;
  v30 = a9;
  v13 = *(a10 - 8);
  v14 = *(v13 + 64);
  v29 = a11;
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v19 = &v27 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin();
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a3, v20);
  v25 = *(v13 + 16);
  v25(v19, a4, a10);
  (*(v13 + 56))(v19, 0, 1, a10);
  v25(v16, a4, a10);
  MutableDriverProperty.init(name:logger:initialValue:defaultValue:updater:valueDescriber:)(v31, v32, v24, v19, v16, v34, v35, v36, v30, v33, a10);
  (*(v13 + 8))(a4, a10);
  return (*(v21 + 8))(v28, v20);
}

uint64_t (*sub_1002B1488(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, AssociatedTypeWitness);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, AssociatedTypeWitness);
  return sub_1002B980C;
}

uint64_t sub_1002B15D8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 104);
  v4 = swift_checkMetadataState();
  return v3(a1, v4, AssociatedConformanceWitness);
}

uint64_t sub_1002B1698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  v7 = *(v6 + 36);
  type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry();
  swift_getWitnessTable();
  *(a3 + v7) = Dictionary.init()();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v9 = *(v6 + 40);
  v10 = type metadata accessor for Logger();
  v11 = *(*(v10 - 8) + 32);

  return v11(a3 + v9, a2, v10);
}

uint64_t WiFiInterface.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v5 = *(v0 + *(*v0 + 104) + 8);

  v6 = *(*v0 + 112);
  v7 = swift_getAssociatedTypeWitness();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_100016290(v0 + *(*v0 + 120), &unk_10059B0C0, &unk_1004AD460);
  sub_100016290(v0 + *(*v0 + 128), &unk_10059B160, &qword_1004B3050);
  sub_100016290(v0 + *(*v0 + 136), &qword_100593CC0, &qword_1004AD470);
  sub_100016290(v0 + *(*v0 + 144), &unk_10059A6C0, &qword_1004AD478);
  v8 = *(*v0 + 152);
  v9 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 160);
  v11 = type metadata accessor for Logger();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t WiFiInterface.__deallocating_deinit()
{
  WiFiInterface.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_1002B1ACC()
{
  Hasher.init(_seed:)();
  sub_10004F294();
  return Hasher._finalize()();
}

Swift::Int sub_1002B1B14()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1002B1ACC();
}

void sub_1002B1B50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  sub_10004F294();
}

uint64_t WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for Logger();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  __chkstk_darwin();
  v75 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a6 + 16);
  v18 = *(a6 + 24);
  LOWORD(v97) = a1;
  BYTE2(v97) = BYTE2(a1);
  BYTE3(v97) = BYTE3(a1);
  BYTE4(v97) = BYTE4(a1);
  BYTE5(v97) = BYTE5(a1);
  v79 = a2;
  v80 = a3;
  *(&v97 + 1) = a2;
  *&v98 = a3;
  v72 = a6;
  v86 = *(a6 + 36);
  v19 = *(v7 + v86);
  v81 = a4;
  *(&v98 + 1) = a4;
  v99 = a5;
  v94 = v97;
  v95 = v98;
  v96 = a5;

  v78 = v18;
  v20 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry();
  v21 = *(v20 - 8);
  v76 = *(v21 + 16);
  v77 = v21 + 16;
  v76(&v91, &v97, v20);
  WitnessTable = swift_getWitnessTable();
  Dictionary.subscript.getter();
  v100[0] = v94;
  v100[1] = v95;
  v101 = v96;
  v22 = *(v21 + 8);
  v84 = v21 + 8;
  v85 = v20;
  v83 = v22;
  v22(v100, v20);
  if (BYTE8(v91) == 1)
  {
    swift_getAssociatedTypeWitness();
    v71 = v7;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = *(AssociatedConformanceWitness + 136);
    v25 = v71;
    v26 = swift_checkMetadataState();
    v27 = v102;
    v24(a1 & 0xFFFFFFFFFFFFLL, v79, v80, v81, a5, v26, AssociatedConformanceWitness);
    if (v27)
    {
      v28 = &v97;
      v29 = v85;
      return v83(v28, v29);
    }

    v80 = (*(AssociatedConformanceWitness + 40))(v26, AssociatedConformanceWitness);
    v81 = v55;
    v56 = v73;
    v57 = v25;
    v58 = v74;
    v59 = v75;
    (*(v73 + 16))(v75, v25 + *(v72 + 40), v74);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = os_log_type_enabled(v60, v61);
    v102 = 0;
    if (v62)
    {
      v63 = v58;
      v64 = swift_slowAlloc();
      *&v94 = swift_slowAlloc();
      *v64 = 136315394;
      v65 = WiFiAddress.description.getter(a1 & 0xFFFFFFFFFFFFLL);
      v67 = v56;
      v68 = sub_100002320(v65, v66, &v94);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = sub_100002320(v80, v81, &v94);

      *(v64 + 14) = v69;
      v30 = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "Posted peer presence for %s on %s", v64, 0x16u);
      swift_arrayDestroy();

      (*(v67 + 8))(v75, v63);
    }

    else
    {

      (*(v56 + 8))(v59, v58);
      v30 = v57;
    }
  }

  else
  {
    v30 = v7;
  }

  v94 = v97;
  v95 = v98;
  v96 = v99;
  v31 = v86;
  v32 = *(v30 + v86);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v30;
  v35 = isUniquelyReferenced_nonNull_native;
  v36 = v34;
  v37 = *(v34 + v31);
  *&v91 = v37;
  v38 = v85;
  v39 = WitnessTable;
  v40 = sub_1002B7254(&v94, v85, WitnessTable);
  v42 = *(v37 + 16);
  v43 = (v41 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = v40;
  v46 = v41;
  type metadata accessor for _NativeDictionary();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v35, v44))
  {
LABEL_9:
    v49 = v91;
    *(v36 + v86) = v91;
    if ((v46 & 1) == 0)
    {
      v91 = v94;
      v92 = v95;
      v93 = v96;
      *&v87[40] = v94;
      v88 = v95;
      v89 = v96;
      v90 = 0;
      v76(v87, &v91, v38);
      _NativeDictionary._insert(at:key:value:)();
    }

    v50 = *(v49 + 56);
    v51 = *(v50 + 8 * v45);
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (!v52)
    {
      *(v50 + 8 * v45) = v53;
      v91 = v94;
      v92 = v95;
      v93 = v96;
      v28 = &v91;
      v29 = v38;
      return v83(v28, v29);
    }

    goto LABEL_18;
  }

  v47 = sub_1002B7254(&v94, v38, v39);
  if ((v46 & 1) == (v48 & 1))
  {
    v45 = v47;
    goto LABEL_9;
  }

LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WiFiInterface.NeighborDiscoveryTable.clearAllPeerPresence()()
{
  v1 = *(v0 + 36);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry();
  swift_getWitnessTable();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 152);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
}

uint64_t MutableDriverProperty.willTryUpdatingProperty.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];
  sub_10001F89C(*v2);
  return v3;
}

uint64_t MutableDriverProperty.willTryUpdatingProperty.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));
  v7 = v6[1];
  result = sub_100010520(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*MutableDriverProperty.willTryUpdatingProperty.modify(uint64_t a1, uint64_t a2))()
{
  result = NANBitmap.Channel.operatingClass.getter;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t MutableDriverProperty.failedToUpdateProperty.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];
  sub_10001F89C(*v2);
  return v3;
}

uint64_t MutableDriverProperty.failedToUpdateProperty.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  v7 = v6[1];
  result = sub_100010520(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*MutableDriverProperty.failedToUpdateProperty.modify(uint64_t a1, uint64_t a2))()
{
  result = NANBitmap.Channel.operatingClass.getter;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t MutableDriverProperty.didUpdateProperty.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];
  sub_10001F89C(*v2);
  return v3;
}

uint64_t MutableDriverProperty.didUpdateProperty.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  v7 = v6[1];
  result = sub_100010520(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*MutableDriverProperty.didUpdateProperty.modify(uint64_t a1, uint64_t a2))()
{
  result = NANBitmap.Channel.operatingClass.getter;
  v4 = v2 + *(a2 + 56);
  return result;
}

void sub_1002B2490(uint64_t a1, char a2)
{
  v5 = sub_10005DC58(&unk_10059B0C0, &unk_1004AD460);
  v6 = *(*(v5 - 1) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = (&v56 - v11);
  v13 = __chkstk_darwin(v10);
  v15 = &v56 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = (&v56 - v19);
  if (a1)
  {
    v21 = v5[9];
    sub_100012400(v2, &v56 - v19, &unk_10059B0C0, &unk_1004AD460);
    sub_100012400(v2, v18, &unk_10059B0C0, &unk_1004AD460);
    v59 = a2 & 1;
    sub_100012400(v2, v15, &unk_10059B0C0, &unk_1004AD460);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v57;
      *v24 = 136315906;
      v25 = *v20;
      v26 = v20[1];

      sub_100016290(v20, &unk_10059B0C0, &unk_1004AD460);
      v27 = sub_100002320(v25, v26, &v58);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = &v18[v5[15]];
      v29 = *(v28 + 1);
      v30 = (*v28)(&v59);
      v32 = v31;
      sub_100016290(v18, &unk_10059B0C0, &unk_1004AD460);
      v33 = sub_100002320(v30, v32, &v58);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v34 = &v15[v5[15]];
      v35 = *(v34 + 1);
      v36 = (*v34)(&v15[v5[10]]);
      v38 = v37;
      sub_100016290(v15, &unk_10059B0C0, &unk_1004AD460);
      v39 = sub_100002320(v36, v38, &v58);

      *(v24 + 24) = v39;
      *(v24 + 32) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 34) = v40;
      v41 = v56;
      *v56 = v40;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to update %s to %s (from %s) because %@", v24, 0x2Au);
      sub_100016290(v41, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v20, &unk_10059B0C0, &unk_1004AD460);
    sub_100016290(v18, &unk_10059B0C0, &unk_1004AD460);
    v55 = v15;
  }

  else
  {
    v42 = v5[9];
    sub_100012400(v2, v12, &unk_10059B0C0, &unk_1004AD460);
    sub_100012400(v2, v9, &unk_10059B0C0, &unk_1004AD460);
    v59 = a2 & 1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v45 = 136315394;
      v46 = *v12;
      v47 = v12[1];

      sub_100016290(v12, &unk_10059B0C0, &unk_1004AD460);
      v48 = sub_100002320(v46, v47, &v58);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = &v9[v5[15]];
      v50 = *(v49 + 1);
      v51 = (*v49)(&v59);
      v53 = v52;
      sub_100016290(v9, &unk_10059B0C0, &unk_1004AD460);
      v54 = sub_100002320(v51, v53, &v58);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Successfully updated %s to %s", v45, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v12, &unk_10059B0C0, &unk_1004AD460);
    v55 = v9;
  }

  sub_100016290(v55, &unk_10059B0C0, &unk_1004AD460);
}

void sub_1002B2A54(uint64_t a1, unint64_t a2)
{
  v5 = *(*(sub_10005DC58(&unk_10059B160, &qword_1004B3050) - 8) + 64);
  __chkstk_darwin();
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = (&v52 - v8);
  __chkstk_darwin();
  v11 = &v52 - v10;
  __chkstk_darwin();
  v57 = &v52 - v12;
  v13 = __chkstk_darwin();
  v15 = (&v52 - v14);
  v56 = v13;
  if (a1)
  {
    v54 = (a2 >> 40);
    v53 = HIDWORD(a2);
    v55 = *(v13 + 36);
    sub_100012400(v2, &v52 - v14, &unk_10059B160, &qword_1004B3050);
    sub_100012400(v2, v57, &unk_10059B160, &qword_1004B3050);
    v59 = a2;
    v16 = v11;
    v60 = BYTE2(a2);
    v61 = BYTE3(a2);
    v62 = v53;
    v63 = v54;
    sub_100012400(v2, v11, &unk_10059B160, &qword_1004B3050);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v19 = 136315906;
      v20 = *v15;
      v21 = v15[1];

      sub_100016290(v15, &unk_10059B160, &qword_1004B3050);
      v22 = sub_100002320(v20, v21, &v58);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = v56;
      v24 = v57;
      v25 = v57 + *(v56 + 60);
      v26 = *(v25 + 8);
      v27 = (*v25)(&v59);
      v29 = v28;
      sub_100016290(v24, &unk_10059B160, &qword_1004B3050);
      v30 = sub_100002320(v27, v29, &v58);

      *(v19 + 14) = v30;
      *(v19 + 22) = 2080;
      v31 = v16 + *(v23 + 60);
      v32 = *(v31 + 8);
      v33 = (*v31)(v16 + *(v23 + 40));
      v35 = v34;
      sub_100016290(v16, &unk_10059B160, &qword_1004B3050);
      v36 = sub_100002320(v33, v35, &v58);

      *(v19 + 24) = v36;
      *(v19 + 32) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 34) = v37;
      v38 = v54;
      *v54 = v37;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to update %s to %s (from %s) because %@", v19, 0x2Au);
      sub_100016290(v38, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v15, &unk_10059B160, &qword_1004B3050);
    sub_100016290(v57, &unk_10059B160, &qword_1004B3050);
    v51 = v11;
  }

  else
  {
    v57 = a2 >> 40;
    v55 = *(v13 + 36);
    sub_100012400(v2, v9, &unk_10059B160, &qword_1004B3050);
    sub_100012400(v2, v7, &unk_10059B160, &qword_1004B3050);
    v59 = a2;
    v60 = BYTE2(a2);
    v61 = BYTE3(a2);
    v62 = BYTE4(a2);
    v63 = v57;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v41 = 136315394;
      v42 = *v9;
      v43 = v9[1];

      sub_100016290(v9, &unk_10059B160, &qword_1004B3050);
      v44 = sub_100002320(v42, v43, &v58);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = &v7[*(v56 + 60)];
      v46 = *(v45 + 1);
      v47 = (*v45)(&v59);
      v49 = v48;
      sub_100016290(v7, &unk_10059B160, &qword_1004B3050);
      v50 = sub_100002320(v47, v49, &v58);

      *(v41 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully updated %s to %s", v41, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v9, &unk_10059B160, &qword_1004B3050);
    v51 = v7;
  }

  sub_100016290(v51, &unk_10059B160, &qword_1004B3050);
}

void sub_1002B3094(uint64_t a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_100593CC0, &qword_1004AD470);
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin();
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v52 - v9);
  __chkstk_darwin();
  v12 = &v52 - v11;
  __chkstk_darwin();
  v14 = &v52 - v13;
  __chkstk_darwin();
  v16 = (&v52 - v15);
  if (a1)
  {
    v17 = v5[9];
    sub_100012400(v2, &v52 - v15, &qword_100593CC0, &qword_1004AD470);
    sub_100012400(v2, v14, &qword_100593CC0, &qword_1004AD470);
    v55 = a2;
    v56 = BYTE4(a2) & 1;
    sub_100012400(v2, v12, &qword_100593CC0, &qword_1004AD470);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v20 = 136315906;
      v21 = *v16;
      v22 = v16[1];

      sub_100016290(v16, &qword_100593CC0, &qword_1004AD470);
      v23 = sub_100002320(v21, v22, &v54);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = &v14[v5[15]];
      v25 = *(v24 + 1);
      v26 = (*v24)(&v55);
      v28 = v27;
      sub_100016290(v14, &qword_100593CC0, &qword_1004AD470);
      v29 = sub_100002320(v26, v28, &v54);

      *(v20 + 14) = v29;
      *(v20 + 22) = 2080;
      v30 = &v12[v5[15]];
      v31 = *(v30 + 1);
      v32 = (*v30)(&v12[v5[10]]);
      v34 = v33;
      sub_100016290(v12, &qword_100593CC0, &qword_1004AD470);
      v35 = sub_100002320(v32, v34, &v54);

      *(v20 + 24) = v35;
      *(v20 + 32) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 34) = v36;
      v37 = v52;
      *v52 = v36;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to update %s to %s (from %s) because %@", v20, 0x2Au);
      sub_100016290(v37, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v16, &qword_100593CC0, &qword_1004AD470);
    sub_100016290(v14, &qword_100593CC0, &qword_1004AD470);
    v51 = v12;
  }

  else
  {
    v38 = v5[9];
    sub_100012400(v2, v10, &qword_100593CC0, &qword_1004AD470);
    sub_100012400(v2, v8, &qword_100593CC0, &qword_1004AD470);
    v55 = a2;
    v56 = BYTE4(a2) & 1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v41 = 136315394;
      v42 = *v10;
      v43 = v10[1];

      sub_100016290(v10, &qword_100593CC0, &qword_1004AD470);
      v44 = sub_100002320(v42, v43, &v54);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = &v8[v5[15]];
      v46 = *(v45 + 1);
      v47 = (*v45)(&v55);
      v49 = v48;
      sub_100016290(v8, &qword_100593CC0, &qword_1004AD470);
      v50 = sub_100002320(v47, v49, &v54);

      *(v41 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully updated %s to %s", v41, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v10, &qword_100593CC0, &qword_1004AD470);
    v51 = v8;
  }

  sub_100016290(v51, &qword_100593CC0, &qword_1004AD470);
}

void sub_1002B3660(uint64_t a1, uint64_t a2)
{
  v5 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v6 = *(*(v5 - 1) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v56[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v56[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v56[-v17];
  __chkstk_darwin(v16);
  v20 = &v56[-v19];
  if (a1)
  {
    v21 = v5[9];
    sub_100012400(v2, &v56[-v19], &unk_10059A6C0, &qword_1004AD478);
    sub_100012400(v2, v18, &unk_10059A6C0, &qword_1004AD478);
    v61 = a2;
    sub_100012400(v2, v15, &unk_10059A6C0, &qword_1004AD478);
    swift_errorRetain();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v24 = 136315906;
      v57 = v23;
      v25 = *v20;
      v26 = v20[1];

      sub_100016290(v20, &unk_10059A6C0, &qword_1004AD478);
      v27 = sub_100002320(v25, v26, &v60);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = &v18[v5[15]];
      v29 = *(v28 + 1);
      v30 = (*v28)(&v61);
      v32 = v31;

      sub_100016290(v18, &unk_10059A6C0, &qword_1004AD478);
      v33 = sub_100002320(v30, v32, &v60);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v34 = &v15[v5[15]];
      v35 = *(v34 + 1);
      v36 = (*v34)(&v15[v5[10]]);
      v38 = v37;
      sub_100016290(v15, &unk_10059A6C0, &qword_1004AD478);
      v39 = sub_100002320(v36, v38, &v60);

      *(v24 + 24) = v39;
      *(v24 + 32) = 2112;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 34) = v40;
      v41 = v58;
      *v58 = v40;
      _os_log_impl(&_mh_execute_header, v22, v57, "Failed to update %s to %s (from %s) because %@", v24, 0x2Au);
      sub_100016290(v41, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();

      return;
    }

    sub_100016290(v20, &unk_10059A6C0, &qword_1004AD478);
    sub_100016290(v18, &unk_10059A6C0, &qword_1004AD478);
    v55 = v15;
  }

  else
  {
    v42 = v5[9];
    sub_100012400(v2, v12, &unk_10059A6C0, &qword_1004AD478);
    sub_100012400(v2, v9, &unk_10059A6C0, &qword_1004AD478);
    v61 = a2;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v45 = 136315394;
      v46 = *v12;
      v47 = v12[1];

      sub_100016290(v12, &unk_10059A6C0, &qword_1004AD478);
      v48 = sub_100002320(v46, v47, &v60);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = &v9[v5[15]];
      v50 = *(v49 + 1);
      v51 = (*v49)(&v61);
      v53 = v52;

      sub_100016290(v9, &unk_10059A6C0, &qword_1004AD478);
      v54 = sub_100002320(v51, v53, &v60);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Successfully updated %s to %s", v45, 0x16u);
      swift_arrayDestroy();

      return;
    }

    sub_100016290(v12, &unk_10059A6C0, &qword_1004AD478);
    v55 = v9;
  }

  sub_100016290(v55, &unk_10059A6C0, &qword_1004AD478);
}

void sub_1002B3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v5 = *(a3 + 16);
  v84 = *(v5 - 8);
  v6 = *(v84 + 64);
  v7 = __chkstk_darwin(a1);
  v8 = __chkstk_darwin(v7);
  v10 = &v76[-v9];
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v8);
  v16 = &v76[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v76[-v18];
  v20 = __chkstk_darwin(v17);
  v83 = &v76[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v76[-v23];
  v25 = __chkstk_darwin(v22);
  v28 = &v76[-v26];
  if (v25)
  {
    v29 = *(a3 + 36);
    v81 = v12;
    v30 = v12[2];
    v30(&v76[-v26], v3, a3);
    v30(v24, v3, a3);
    v31 = *(v84 + 16);
    v32 = v82;
    v82 = v5;
    v31(v10, v32, v5);
    v30(v83, v3, a3);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85 = v80;
      *v35 = 136315906;
      v78 = v33;
      v77 = v34;
      v36 = *v28;
      v37 = v28[1];
      v38 = v81[1];

      v38(v28, a3);
      v39 = sub_100002320(v36, v37, &v85);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v24 + *(a3 + 60);
      v41 = *(v40 + 1);
      v42 = (*v40)(v10);
      v44 = v43;
      (*(v84 + 8))(v10, v82);
      v38(v24, a3);
      v45 = sub_100002320(v42, v44, &v85);

      *(v35 + 14) = v45;
      *(v35 + 22) = 2080;
      v46 = v83;
      v47 = v83 + *(a3 + 60);
      v48 = *(v47 + 1);
      v49 = (*v47)(v83 + *(a3 + 40));
      v51 = v50;
      v38(v46, a3);
      v52 = sub_100002320(v49, v51, &v85);

      *(v35 + 24) = v52;
      *(v35 + 32) = 2112;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 34) = v53;
      v54 = v78;
      v55 = v79;
      *v79 = v53;
      _os_log_impl(&_mh_execute_header, v54, v77, "Failed to update %s to %s (from %s) because %@", v35, 0x2Au);
      sub_100016290(v55, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      (*(v84 + 8))(v10, v82);
      v74 = v81[1];
      v74(v28, a3);
      v74(v24, a3);
      v74(v83, a3);
    }
  }

  else
  {
    v56 = *(a3 + 36);
    v57 = v27;
    v58 = v12[2];
    v58(v19, v3, a3);
    v58(v16, v3, a3);
    (*(v84 + 16))(v57, v82, v5);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v81 = v57;
      v62 = v61;
      v83 = swift_slowAlloc();
      v85 = v83;
      *v62 = 136315394;
      v82 = v5;
      v63 = *v19;
      v64 = v19[1];
      v65 = v12[1];

      v65(v19, a3);
      v66 = sub_100002320(v63, v64, &v85);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = v16 + *(a3 + 60);
      v68 = *(v67 + 1);
      v69 = v81;
      v70 = (*v67)(v81);
      v72 = v71;
      (*(v84 + 8))(v69, v82);
      v65(v16, a3);
      v73 = sub_100002320(v70, v72, &v85);

      *(v62 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v59, v60, "Successfully updated %s to %s", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v84 + 8))(v57, v5);
      v75 = v12[1];
      v75(v19, a3);
      v75(v16, a3);
    }
  }
}

void (*MutableDriverProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  v12 = *(a2 + 40);
  (*(v9 + 16))();
  return sub_1002B44CC;
}

uint64_t MutableDriverProperty.updated(value:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v15 = *(v11 + 48);
  if (v15(v10, 1, v5) == 1)
  {
    (*(v11 + 16))(v14, v2 + *(a2 + 40), v5);
    if (v15(v10, 1, v5) != 1)
    {
      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v10, v5);
  }

  return (*(v11 + 40))(v2 + *(a2 + 40), v14, v5);
}

Swift::Void __swiftcall MutableDriverProperty.restore()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 - 1);
  v5 = v4[8];
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v29 - v6;
  __chkstk_darwin();
  v9 = (&v29 - v8);
  v11 = v1 + *(v10 + 52);
  v12 = *(v11 + 8);
  (*v11)(v2 + *(v10 + 48));
  v13 = v3[9];
  v14 = v4[2];
  v14(v9, v2, v3);
  v14(v7, v2, v3);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31[0] = v30;
    *v17 = 136315394;
    v18 = *v9;
    v19 = v9[1];
    v20 = v4[1];

    v20(v9, v3);
    v21 = sub_100002320(v18, v19, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = &v7[v3[15]];
    v23 = *(v22 + 1);
    v24 = (*v22)(&v7[v3[10]]);
    v26 = v25;
    v20(v7, v3);
    v27 = sub_100002320(v24, v26, v31);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Successfully restored %s to %s after a reset", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = v4[1];
    v28(v9, v3);
    v28(v7, v3);
  }
}

uint64_t (*MutableDriverProperty.projectedValue.modify(void *a1, uint64_t a2))()
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1002B4D5C;
}

uint64_t MutableDriverProperty.customMirror.getter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = *(a1 + 16);
  v3 = v7;
  v4 = sub_1000297D4(v6);
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  return Mirror.init(reflecting:)();
}

uint64_t MutableDriverProperty<>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t MutableDriverProperty<>.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  return dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
}

uint64_t WiFiPropertyUpdateRegistration.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WiFiPropertyUpdateRegistration.__allocating_init(cancellationHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  UUID.init()();
  v8 = (v7 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v8 = a1;
  v8[1] = a2;
  return v7;
}

uint64_t WiFiPropertyUpdateRegistration.init(cancellationHandler:)(uint64_t a1, uint64_t a2)
{
  UUID.init()();
  v5 = (v2 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v5 = a1;
  v5[1] = a2;
  return v2;
}

uint64_t WiFiPropertyUpdateRegistration.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler;
  v4 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler + 8);

  v4(v1);

  v5 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(v2 + 8);

  return v1;
}

uint64_t WiFiPropertyUpdateRegistration.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler;
  v4 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler + 8);

  v4(v1);

  v5 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(v2 + 8);

  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t WiFiPropertyUpdateRegistration.hash(into:)()
{
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int WiFiPropertyUpdateRegistration.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002B5228@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_1002B52A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002B5344()
{
  v1 = *v0;
  type metadata accessor for UUID();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002B53CC()
{
  Hasher.init(_seed:)();
  (*(**v0 + 104))(v2);
  return Hasher._finalize()();
}

uint64_t sub_1002B542C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_1002B5448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = (v11 + qword_100594008);
  *v12 = a1;
  v12[1] = a2;
  UUID.init()();
  v13 = (v11 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v13 = a3;
  v13[1] = a4;
  return v11;
}

uint64_t sub_1002B5510()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler;
  v4 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  v3 = *(v0 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler + 8);

  v4(v1);

  v5 = OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(v2 + 8);

  v8 = *(v1 + qword_100594008 + 8);

  return v1;
}

uint64_t sub_1002B55C4()
{
  v0 = *sub_1002B5510();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_1002B564C()
{
  v1 = *v0;
  type metadata accessor for UUID();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  v0[2] = Dictionary.init()();
  return v0;
}

uint64_t ObservableWiFiProperty.name.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ObservableWiFiProperty.init(lock:defaultValue:name:logger:valueDescriber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v47 = a6;
  v48 = a5;
  v46 = a1;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(a1);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations();
  swift_allocObject();
  v19 = sub_1002B564C();
  v20 = v46;
  *(a9 + 2) = v19;
  *(a9 + 3) = v20;
  v21 = type metadata accessor for ObservableWiFiProperty();
  v22 = &a9[v21[12]];
  v41 = a3;
  *v22 = a3;
  v22[1] = a4;
  v23 = v21[13];
  v24 = type metadata accessor for Logger();
  v42 = *(v24 - 8);
  v25 = *(v42 + 16);
  v44 = v24;
  v25(&a9[v23], v48);
  *a9 = v47;
  *(a9 + 1) = a7;
  v26 = v21[11];
  v45 = v15;
  v27 = *(v15 + 16);
  v27(&a9[v26], a2, a8);
  v43 = v18;
  v46 = a2;
  v27(v18, a2, a8);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = sub_100002320(v41, a4, &v49);

    *(v30 + 4) = v31;
    *(v30 + 12) = 2080;
    v32 = v43;
    v33 = v47(v43);
    v35 = v34;

    v36 = *(v45 + 8);
    v36(v32, a8);
    v37 = sub_100002320(v33, v35, &v49);

    *(v30 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Initialized value for %s to %s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v42 + 8))(v48, v44);
    return (v36)(v46, a8);
  }

  else
  {

    (*(v42 + 8))(v48, v44);
    v39 = *(v45 + 8);
    v39(v46, a8);
    return (v39)(v43, a8);
  }
}

uint64_t (*sub_1002B5AEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>))()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + qword_100594008);
    v7 = *(result + qword_100594008 + 8);

    result = swift_allocObject();
    *(result + 2) = a1;
    *(result + 3) = a2;
    *(result + 4) = v8;
    *(result + 5) = v7;
    v9 = sub_1002B97E4;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

void (*ObservableWiFiProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  ObservableWiFiProperty.wrappedValue.getter(a2, v10);
  return sub_1002B5C9C;
}

void sub_1002B5CB4(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v10);
    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    a3((*a1)[5], v10);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t _s7CoreP2P21MutableDriverPropertyV14projectedValueACyxGvs_0(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

uint64_t (*ObservableWiFiProperty.projectedValue.modify(void *a1, uint64_t a2))()
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1002B9A80;
}

void sub_1002B5F88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = a2;
  v32 = type metadata accessor for UUID();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  v34 = a5;
  v14 = *(a5 + 16);
  v15 = *(a5 + 24);
  v30 = v15;
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ObservableWiFiProperty.Token();
  v17 = swift_allocObject();
  *(v17 + 2) = v14;
  *(v17 + 3) = v15;
  *(v17 + 4) = a1;
  *(v17 + 5) = a3;
  *(v17 + 6) = a4;
  v33 = v6;
  v19 = *(v6 + 16);
  v18 = *(v6 + 24);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = *(v16 + 48);
  v22 = *(v16 + 52);
  v23 = swift_allocObject();
  v24 = (v23 + qword_100594008);
  *v24 = sub_1002B7840;
  v24[1] = v17;
  v25 = a1;

  UUID.init()();
  v26 = (v23 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_cancellationHandler);
  *v26 = sub_1002B7850;
  v26[1] = v20;
  os_unfair_lock_lock(*(v18 + 16));
  (*(v11 + 16))(v31, v23 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id, v32);

  swift_weakInit();

  v37 = 0;
  swift_beginAccess();
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v27 = v33;
  (*(*(v14 - 8) + 16))(v35, v33 + *(v34 + 44), v14);
  os_unfair_lock_unlock(*(*(v27 + 24) + 16));
  v28 = *v36;
  *v36 = v23;
}

uint64_t sub_1002B63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  v35 = a5;
  v41 = a3;
  v33 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v38);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(v39);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v19 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v22 = *(v16 + 16);
  v22(&v33 - v20, v33, a6);
  v22(v19, a2, a6);
  v23 = *(v16 + 80);
  v24 = (v23 + 48) & ~v23;
  v25 = (v17 + v23 + v24) & ~v23;
  v26 = swift_allocObject();
  *(v26 + 2) = a6;
  *(v26 + 3) = a7;
  v27 = v35;
  *(v26 + 4) = v34;
  *(v26 + 5) = v27;
  v28 = *(v16 + 32);
  v28(&v26[v24], v21, a6);
  v28(&v26[v25], v19, a6);
  aBlock[4] = sub_1002B9700;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005724F8;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_10001AD14(&qword_10058BCC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10005DC58(&unk_100595270, &unk_1004AEC80);
  sub_10005DCA0();
  v30 = v36;
  v31 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v15, v39);
}

void sub_1002B67D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a2 + 16);
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  type metadata accessor for UUID();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for ObservableWiFiProperty.TokenRegistrations.WeakToken();
  sub_10001AD14(&unk_10058BB00, &type metadata accessor for UUID);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v8, v7);
  swift_endAccess();
  os_unfair_lock_unlock(v4);
}

void ObservableWiFiProperty.registerForChangesIfNeeded(on:using:valueUpdateHandler:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*a2)
  {
    ObservableWiFiProperty.wrappedValue.getter(a5, a6);
  }

  else
  {
    ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t ObservableWiFiProperty.customMirror.getter(uint64_t a1)
{
  v2 = *(a1 + 44);
  v7 = *(a1 + 16);
  v3 = v7;
  v4 = sub_1000297D4(v6);
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  return Mirror.init(reflecting:)();
}

uint64_t ObservableWiFiProperty<>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = *(a1 + 16);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t ObservableWiFiProperty<>.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = *(a1 + 16);
  return dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
}

uint64_t WiFiInterfaceRole.description.getter(unsigned __int8 a1)
{
  v1 = 0x7274736172666E49;
  v2 = 5128526;
  v3 = 0x61746144204E414ELL;
  if (a1 != 3)
  {
    v3 = 0x6574614C20776F4CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1279547201;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t WiFiInterfaceRole.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7274736172666E69;
  v2 = 0x67616E614D6E616ELL;
  v3 = 0x617461446E616ELL;
  if (a1 != 3)
  {
    v3 = 0x6E6574614C776F6CLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1818523489;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1002B6BFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002B6CF4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002B6DD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002B6ECC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P17WiFiInterfaceRoleO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002B6EFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657275746375;
  v4 = 0x7274736172666E69;
  v5 = 0xED0000746E656D65;
  v6 = 0x67616E614D6E616ELL;
  v7 = 0xE700000000000000;
  v8 = 0x617461446E616ELL;
  if (v2 != 3)
  {
    v8 = 0x6E6574614C776F6CLL;
    v7 = 0xEA00000000007963;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1818523489;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1002B7060()
{
  v1 = *v0;
  v2 = 0x7274736172666E49;
  v3 = 5128526;
  v4 = 0x61746144204E414ELL;
  if (v1 != 3)
  {
    v4 = 0x6574614C20776F4CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1279547201;
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

uint64_t WiFiInterfaceLinkState.description.getter(char a1)
{
  if (a1)
  {
    return 0x7055206B6E694CLL;
  }

  else
  {
    return 0x776F44206B6E694CLL;
  }
}

uint64_t sub_1002B71EC()
{
  if (*v0)
  {
    result = 0x7055206B6E694CLL;
  }

  else
  {
    result = 0x776F44206B6E694CLL;
  }

  *v0;
  return result;
}

unint64_t sub_1002B7254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1002B72B0(a1, v9, a2, a3);
}

unint64_t sub_1002B72B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1002B7438(uint64_t *a1)
{
  v2 = *a1;
  sub_10005DC58(&qword_100593CC8, &unk_1004AD480);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_1002B749C(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_1002B74F8(unsigned __int8 *a1)
{
  BYTE8(v2) = 0;
  *&v2 = *a1;
  _print_unlocked<A, B>(_:_:)();
  return *(&v2 + 1);
}

unint64_t _s7CoreP2P17WiFiInterfaceRoleO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554EA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_1002B7598(uint64_t a1)
{
  v2 = v1;
  v12 = a1;
  v4 = sub_10005DC58(&unk_10059A6C0, &qword_1004AD478);
  v5 = v4[10];
  if ((sub_1000C02D8(*(v1 + v5), a1) & 1) == 0)
  {
    v6 = v1 + v4[12];
    if (*v6)
    {
      v7 = *(v6 + 8);
      (*v6)(&v12);
    }

    v8 = v2 + v4[11];
    v9 = *(v8 + 8);
    (*v8)(&v12);

    *(v2 + v5) = a1;
    v10 = v2 + v4[14];
    if (*v10)
    {
      v11 = *(v10 + 8);
      (*v10)(&v12);
    }

    sub_1002B3660(0, a1);
  }
}

uint64_t sub_1002B7744(unsigned __int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (*(a1 + 1) << 16));
}

uint64_t sub_1002B7778(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1 | (*(a1 + 4) << 32));
}

uint64_t sub_1002B77B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t type metadata accessor for WiFiPropertyUpdateRegistration()
{
  result = qword_100593EE8;
  if (!qword_100593EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002B7938()
{
  result = qword_100593CE0;
  if (!qword_100593CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593CE0);
  }

  return result;
}

unint64_t sub_1002B7990()
{
  result = qword_100593CE8[0];
  if (!qword_100593CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100593CE8);
  }

  return result;
}

void sub_1002B79E4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v19 = *(AssociatedTypeWitness - 8) + 64;
    v5 = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      v20 = *(v5 - 8) + 64;
      sub_1002B7D00(319, &qword_100593D70, sub_1002B7990);
      if (v8 <= 0x3F)
      {
        v21 = *(v7 - 8) + 64;
        sub_1002B7D00(319, &qword_100593D78, sub_1002AB120);
        if (v10 <= 0x3F)
        {
          v22 = *(v9 - 8) + 64;
          sub_1002B7DE4(319, &qword_100593D80, &qword_100593D88, &qword_1004AD908, sub_1002B7D60);
          if (v12 <= 0x3F)
          {
            v23 = *(v11 - 8) + 64;
            sub_1002B7DE4(319, &qword_100593D98, &qword_100593CC8, &unk_1004AD480, sub_1002B7E54);
            if (v14 <= 0x3F)
            {
              v24 = *(v13 - 8) + 64;
              v15 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
              if (v16 <= 0x3F)
              {
                v25 = *(v15 - 8) + 64;
                v17 = type metadata accessor for Logger();
                if (v18 <= 0x3F)
                {
                  v26 = *(v17 - 8) + 64;
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002B7D00(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for MutableDriverProperty();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1002B7D60()
{
  result = qword_100593D90;
  if (!qword_100593D90)
  {
    sub_10005DD04(&qword_100593D88, &qword_1004AD908);
    sub_10016EF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100593D90);
  }

  return result;
}

void sub_1002B7DE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_10005DD04(a3, a4);
    a5();
    v7 = type metadata accessor for MutableDriverProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1002B7E54()
{
  result = qword_100593DA0[0];
  if (!qword_100593DA0[0])
  {
    sub_10005DD04(&qword_100593CC8, &unk_1004AD480);
    sub_10016EFEC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100593DA0);
  }

  return result;
}

uint64_t sub_1002B7EE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    type metadata accessor for WiFiInterface.NeighborDiscoveryTable.Entry();
    swift_getWitnessTable();
    result = type metadata accessor for Dictionary();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002B7FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v9 + 64);
  v14 = *(v12 + 80);
  if (v10 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v17 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v11 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v10 == v16)
      {
        v25 = *(v9 + 48);

        return v25(a1, v10, AssociatedTypeWitness);
      }

      else
      {
        v26 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) != 0)
        {
          v28 = *(v12 + 48);

          return v28((v26 + v14 + 8) & ~v14);
        }

        else
        {
          v27 = *v26;
          if (v27 >= 0xFFFFFFFF)
          {
            LODWORD(v27) = -1;
          }

          return (v27 + 1);
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = v17;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v16 + (v24 | v22) + 1;
}

void sub_1002B82A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v28 = v10;
  v11 = *(v10 + 84);
  v12 = *(type metadata accessor for Logger() - 8);
  v13 = *(v10 + 64);
  v14 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(v12 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 >= 4)
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v20 = (v19 >> (8 * v17)) + 1;
    if (v17)
    {
      v23 = v19 & ~(-1 << (8 * v17));
      bzero(a1, v17);
      if (v17 != 3)
      {
        if (v17 == 2)
        {
          *a1 = v23;
          if (v18 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v19;
          if (v18 > 1)
          {
LABEL_14:
            if (v18 == 2)
            {
              *&a1[v17] = v20;
            }

            else
            {
              *&a1[v17] = v20;
            }

            return;
          }
        }

LABEL_51:
        if (v18)
        {
          a1[v17] = v20;
        }

        return;
      }

      *a1 = v23;
      a1[2] = BYTE2(v23);
    }

    if (v18 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v11 == v16)
  {
    v24 = *(v28 + 56);

    v24(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v25 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v15 & 0x80000000) != 0)
    {
      v27 = *(v12 + 56);

      v27((v25 + v14 + 8) & ~v14, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v26 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v26 = (a2 - 1);
      }

      *v25 = v26;
    }
  }
}

void sub_1002B85F8(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1002B8BF0();
      if (v5 <= 0x3F)
      {
        sub_1002B8C40();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002B86C8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Logger() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((((((((*(v8 + 64) + ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25((a1 + v10 + 16) & ~v10);
    }

    else
    {
      v26 = *(v8 + 48);

      return v26((((a1 + v10 + 16) & ~v10) + v11 + v12) & ~v12, v9);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_1002B8934(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Logger() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          if (v9 == v16)
          {
            v24 = *(v8 + 56);

            v24((a1 + v12 + 16) & ~v12, a2);
          }

          else
          {
            v25 = *(v10 + 56);

            v25((((a1 + v12 + 16) & ~v12) + v13 + v14) & ~v14, a2, v11);
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((((((((((*(v10 + 64) + ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

unint64_t sub_1002B8BF0()
{
  result = qword_100593EA8;
  if (!qword_100593EA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100593EA8);
  }

  return result;
}

void sub_1002B8C40()
{
  if (!qword_100593EB0)
  {
    sub_10005DD04(&qword_100593EB8, qword_1004AD958);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100593EB0);
    }
  }
}

uint64_t sub_1002B8CAC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002B8D48(uint64_t a1)
{
  result = sub_1002B8BF0();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    result = type metadata accessor for ObservableWiFiProperty.TokenRegistrations();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for Lock();
      if (v7 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v8 <= 0x3F)
        {
          result = type metadata accessor for Logger();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002B8E28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 7;
  v15 = v11 + 16;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v14 + ((v10 + 32) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v15 + ((v14 + v25) & 0xFFFFFFFFFFFFFFF8)) & ~v11;

          return v27(v28);
        }
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_1002B90F0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 7;
  v18 = ((v14 + 16 + ((v13 + 7 + ((v12 + 32) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *(a1 + v18) = v21;
              }

              else
              {
                *(a1 + v18) = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v18) = 0;
  }

  else if (v19)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v25 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v16)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v14 + 16 + ((v17 + v25) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

      v27(v28, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

uint64_t sub_1002B950C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002B9548()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002B9584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1002B95E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1002B9658()
{
  result = qword_100594210;
  if (!qword_100594210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594210);
  }

  return result;
}

unint64_t sub_1002B96AC()
{
  result = qword_100594218;
  if (!qword_100594218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594218);
  }

  return result;
}

uint64_t sub_1002B9700()
{
  v1 = *(*(*(v0 + 16) - 8) + 80);
  v2 = (v1 + 48) & ~v1;
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v1 + v2) & ~v1;
  v4 = *(v0 + 40);
  return (*(v0 + 32))(v0 + v2, v0 + v3);
}

uint64_t sub_1002B97AC(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(a1 + 8);
  return (*a1)(v3, v2);
}

uint64_t sub_1002B97E4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1002B980C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  return sub_1002B15D8(a1);
}

uint64_t sub_1002B98A4(unint64_t a1)
{
  v2 = a1 | ((HIDWORD(a1) & 1) << 32);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  return sub_1002B1060(v2);
}

uint64_t sub_1002B994C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  return sub_1002B0E50(a1 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_1002B99E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_1002B9AE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_100143300(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_10004AF78(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_1000124C8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v34 + 1) = a3;
  *&v34 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = sub_10005DC58(&qword_10058CB98, &unk_100488540);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v34 - v12;
  v14 = sub_10016FD40(5392718, 0xE300000000000000);
  v16 = v15;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004817D0;
  *(v17 + 32) = v3;
  *(v17 + 33) = v4;
  *(v17 + 34) = v5;
  *(v17 + 35) = v6;
  *(v17 + 36) = v7;
  *(v17 + 37) = v8;
  v18 = sub_10002D874(v17);
  v20 = v19;

  *&v40 = v14;
  *(&v40 + 1) = v16;
  v38 = &type metadata for Data;
  v39 = &protocol witness table for Data;
  *&v37 = v18;
  *(&v37 + 1) = v20;
  v21 = sub_100029B34(&v37, &type metadata for Data);
  v22 = *v21;
  v23 = v21[1];
  sub_10000AB0C(v14, v16);
  sub_10000AB0C(v18, v20);
  sub_100178A18(v22, v23);
  sub_1000124C8(v18, v20);
  sub_1000124C8(v14, v16);
  sub_100002A00(&v37);
  v24 = v40;
  v41 = v40;
  v38 = &type metadata for Data;
  v39 = &protocol witness table for Data;
  v25 = v34;
  v37 = v34;
  v26 = sub_100029B34(&v37, &type metadata for Data);
  v27 = *v26;
  v28 = v26[1];
  sub_10000AB0C(v24, *(&v24 + 1));
  sub_10000AB0C(v25, *(&v25 + 1));
  sub_100178A18(v27, v28);
  sub_1000124C8(v24, *(&v24 + 1));
  sub_100002A00(&v37);
  v37 = v41;
  type metadata accessor for SHA256();
  sub_1002BB668(&qword_10059AB90, &type metadata accessor for SHA256);
  sub_1000BA0A4();
  static HMAC.authenticationCode<A>(for:using:)();
  sub_1000124C8(v37, *(&v37 + 1));
  v29 = v35;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v36 + 8))(v13, v29);
  v30 = v37;
  sub_10000AB0C(v25, *(&v25 + 1));
  sub_1002B9AE4(8, v25, *(&v25 + 1), &v37);
  v31 = v37;
  sub_10000AB0C(v30, *(&v30 + 1));
  v32 = sub_100275AC0(v31, *(&v31 + 1), v30, *(&v30 + 1));
  sub_1000124C8(v30, *(&v30 + 1));
  return v32;
}

uint64_t NANIdentityKey.isValidIdentityResolutionAttribute(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(a5 & 0xFFFFFFFFFFFFLL, a1, a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10, a1, a2))
  {
    v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v15, a3, a4);
  }

  else
  {
    v16 = 0;
  }

  sub_1000124C8(v9, v11);
  sub_1000124C8(v13, v15);
  return v16 & 1;
}

int *NANPairedDeviceSharedAssociation.init(identityResolutionKey:baseAuthenticationKeyManagementSuite:cipherSuite:pairingKey:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1002BB570(a1, a6);
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  v12 = (a6 + result[7]);
  *v12 = a4;
  v12[1] = a5;
  *(a6 + result[8]) = 0;
  return result;
}

uint64_t NANIdentityKey.generateIdentityResolutionAttribute(for:)(uint64_t a1)
{
  v7 = 0;
  swift_stdlib_random();
  v2 = sub_10004F3B0(&v7, &v8);
  v4 = v3;
  v5 = NANIdentityKey.generateIdentityResolutionAttribute(for:with:using:)(a1 & 0xFFFFFFFFFFFFLL, v2, v3);
  sub_1000124C8(v2, v4);
  return v5;
}

_BYTE *sub_1002BA1AC@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_10000AD84(result, result + 8);
    *a2 = result;
    a2[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NANIdentityKey.hash(into:)()
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  return sub_1000124C8(v1, v2);
}

uint64_t NANIdentityKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v32 = type metadata accessor for SymmetricKeySize();
  v27 = *(v32 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKey();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for NANIdentityKey(0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    v22 = v13;
    v23 = v10;
    v24 = v7;
    static SymmetricKeySize.bits128.getter();
    v15 = SymmetricKeySize.bitCount.getter();
    (*(v27 + 8))(v6, v32);
    v16 = v31;
    sub_100031694(v30, v31);
    v28 = UnkeyedDecodingContainer.decodeData(with:)(v15 / 8, v16);
    v29 = v17;
    v18 = v23;
    SymmetricKey.init<A>(data:)();
    v19 = v22;
    (*(v25 + 32))(v22, v18, v24);
    sub_100002A00(v30);
    sub_1002BB570(v19, v26);
  }

  return sub_100002A00(a1);
}

uint64_t NANIdentityKey.encode(to:)(void *a1)
{
  v1 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  sub_100031694(v5, v5[3]);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v3, v4);
  return sub_100002A00(v5);
}

Swift::Int NANIdentityKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002BA67C()
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v1, v2);
  return Hasher._finalize()();
}

uint64_t NANPairedDeviceSharedAssociation.pairingKey.getter()
{
  v1 = v0 + *(type metadata accessor for NANPairedDeviceSharedAssociation(0) + 28);
  v2 = *v1;
  sub_10000AB0C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANPairedDeviceSharedAssociation.usageCount.setter(uint64_t a1)
{
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

unint64_t sub_1002BA890()
{
  v1 = *v0;
  v2 = 0x7553726568706963;
  v3 = 0x4B676E6972696170;
  if (v1 != 3)
  {
    v3 = 0x756F436567617375;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (*v0)
  {
    v4 = 0xD000000000000024;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002BA944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002BBB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002BA96C(uint64_t a1)
{
  v2 = sub_1002BB614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BA9A8(uint64_t a1)
{
  v2 = sub_1002BB614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANPairedDeviceSharedAssociation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100594220, &qword_1004ADB80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002BB614();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for NANIdentityKey(0);
  sub_1002BB668(&qword_1005924B8, type metadata accessor for NANIdentityKey);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    LOBYTE(v17) = *(v3 + v11[5]);
    v19 = 1;
    sub_10022FEB0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + v11[6]);
    v19 = 2;
    sub_100279164();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + v11[7]);
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v19 = 3;
    sub_10000AB0C(v17, v13);
    sub_1002BB6B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v17, v18);
    v14 = *(v3 + v11[8]);
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANPairedDeviceSharedAssociation.hash(into:)()
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v5, v6);
  v1 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  Hasher._combine(_:)(*(v0 + v1[5]) + 1);
  Hasher._combine(_:)(*(v0 + v1[6]) + 1);
  v2 = (v0 + v1[7]);
  v3 = *v2;
  v4 = v2[1];
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + v1[8]));
}

Swift::Int NANPairedDeviceSharedAssociation.hashValue.getter()
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v6, v7);
  v1 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  Hasher._combine(_:)(*(v0 + v1[5]) + 1);
  Hasher._combine(_:)(*(v0 + v1[6]) + 1);
  v2 = (v0 + v1[7]);
  v3 = *v2;
  v4 = v2[1];
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + v1[8]));
  return Hasher._finalize()();
}

uint64_t NANPairedDeviceSharedAssociation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = *(*(type metadata accessor for NANIdentityKey(0) - 8) + 64);
  __chkstk_darwin();
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10005DC58(&qword_100594238, &qword_1004ADB88);
  v25 = *(v27 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v13 = a1[4];
  v28 = a1;
  sub_100029B34(a1, v14);
  sub_1002BB614();
  v15 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(v28);
  }

  v16 = v25;
  v17 = v12;
  LOBYTE(v29) = 0;
  sub_1002BB668(&qword_1005924D0, type metadata accessor for NANIdentityKey);
  v19 = v26;
  v18 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1002BB570(v19, v17);
  v30 = 1;
  sub_100232618();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v16;
  *(v17 + v9[5]) = v29;
  v30 = 2;
  sub_100285930();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + v9[6]) = v29;
  v30 = 3;
  sub_1002BB704();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + v9[7]) = v29;
  LOBYTE(v29) = 4;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v15, v18);
  *(v17 + v9[8]) = v21;
  sub_1002BB758(v17, v24, type metadata accessor for NANPairedDeviceSharedAssociation);
  sub_100002A00(v28);
  return sub_1002BB7C0(v17, type metadata accessor for NANPairedDeviceSharedAssociation);
}

void sub_1002BB258(uint64_t a1, int *a2)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v7, v8);
  Hasher._combine(_:)(*(v2 + a2[5]) + 1);
  Hasher._combine(_:)(*(v2 + a2[6]) + 1);
  v4 = (v2 + a2[7]);
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[8]));
}

Swift::Int sub_1002BB328(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v8, v9);
  Hasher._combine(_:)(*(v2 + a2[5]) + 1);
  Hasher._combine(_:)(*(v2 + a2[6]) + 1);
  v4 = (v2 + a2[7]);
  v5 = *v4;
  v6 = v4[1];
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[8]));
  return Hasher._finalize()();
}

BOOL _s7CoreP2P32NANPairedDeviceSharedAssociationV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v4 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9, v8, v9);
  sub_1000124C8(v8, v9);
  sub_1000124C8(v8, v9);
  if (v4 & 1) != 0 && (v5 = type metadata accessor for NANPairedDeviceSharedAssociation(0), *(a1 + v5[5]) == *(a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && (v6 = v5, (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + v5[7]), *(a1 + v5[7] + 8), *(a2 + v5[7]), *(a2 + v5[7] + 8))))
  {
    return *(a1 + v6[8]) == *(a2 + v6[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BB570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANIdentityKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002BB614()
{
  result = qword_100594228;
  if (!qword_100594228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594228);
  }

  return result;
}

uint64_t sub_1002BB668(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002BB6B0()
{
  result = qword_100594230;
  if (!qword_100594230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594230);
  }

  return result;
}

unint64_t sub_1002BB704()
{
  result = qword_100594240;
  if (!qword_100594240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594240);
  }

  return result;
}

uint64_t sub_1002BB758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002BB7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002BB8D8()
{
  result = type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002BB96C()
{
  result = type metadata accessor for NANIdentityKey(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002BBA18()
{
  result = qword_100594388;
  if (!qword_100594388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594388);
  }

  return result;
}

unint64_t sub_1002BBA70()
{
  result = qword_100594390;
  if (!qword_100594390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594390);
  }

  return result;
}

unint64_t sub_1002BBAC8()
{
  result = qword_100594398;
  if (!qword_100594398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100594398);
  }

  return result;
}

uint64_t sub_1002BBB1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001004BE070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001004BE090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7553726568706963 && a2 == 0xEB00000000657469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B676E6972696170 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F436567617375 && a2 == 0xEA0000000000746ELL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t NANState.description.getter(char a1)
{
  if (a1)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t NANState.actionDescription.getter()
{

  String.index(before:)();

  String.subscript.getter();

  v0 = static String._fromSubstring(_:)();

  return v0;
}

CoreP2P::NANState_optional __swiftcall NANState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555DE8, v2);

  if (v3 == 1)
  {
    v4.value = CoreP2P_NANState_enabled;
  }

  else
  {
    v4.value = CoreP2P_NANState_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_1002BBE54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BBED8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002BBF48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BBFC8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100555DE8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002BC028(uint64_t *a1@<X8>)
{
  v2 = 0x64656C6261736964;
  if (*v1)
  {
    v2 = 0x64656C62616E65;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1002BC068()
{
  if (*v0)
  {
    result = 0x64656C62616E65;
  }

  else
  {
    result = 0x64656C6261736964;
  }

  *v0;
  return result;
}

CoreP2P::NANDiscoveryWindowIndex __swiftcall NANDiscoveryWindowIndex.next()()
{
  if (v0 == 15)
  {
    return 0;
  }

  v2 = __OFADD__(v0, 1);
  result.index = v0 + 1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANDiscoveryWindowIndex __swiftcall NANDiscoveryWindowIndex.previous()()
{
  if (!v0)
  {
    return 15;
  }

  v1 = __OFSUB__(v0, 1);
  result.index = v0 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t NANDiscoveryWindowIndex.description.getter(uint64_t a1)
{
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_1002BC19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
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

uint64_t sub_1002BC220(uint64_t a1)
{
  v2 = sub_1002BC3C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002BC25C(uint64_t a1)
{
  v2 = sub_1002BC3C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANDiscoveryWindowIndex.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_1005943A0, &qword_1004ADE78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1002BC3C8()
{
  result = qword_1005943A8;
  if (!qword_1005943A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005943A8);
  }

  return result;
}

uint64_t NANDiscoveryWindowIndex.init(from:)(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_1005943B0, &qword_1004ADE80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v9;
}

unint64_t sub_1002BC574()
{
  result = qword_10059A550;
  if (!qword_10059A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A550);
  }

  return result;
}

unint64_t sub_1002BC5C8()
{
  result = qword_1005943B8;
  if (!qword_1005943B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005943B8);
  }

  return result;
}

uint64_t sub_1002BC628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_1005943B0, &qword_1004ADE80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100002A00(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_1002BC788(void *a1)
{
  v3 = sub_10005DC58(&qword_1005943A0, &qword_1004ADE78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002BC3C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1002BC8F4()
{
  result = qword_1005943C0;
  if (!qword_1005943C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005943C0);
  }

  return result;
}

unint64_t sub_1002BC94C()
{
  result = qword_1005943C8;
  if (!qword_1005943C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005943C8);
  }

  return result;
}

unint64_t sub_1002BC9A4()
{
  result = qword_1005943D0;
  if (!qword_1005943D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005943D0);
  }

  return result;
}

uint64_t sub_1002BCA00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v6 = *(*(sub_10005DC58(&qword_100594A30, &qword_1004B2E00) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for WAPairedDevice();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = sub_10005DC58(&qword_100594A38, &qword_1004AE540);
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = type metadata accessor for WADevicesAgentInterface.Devices();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = *a1;
  v4[18] = *(*a1 + 408);
  v4[19] = (v16 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;

  return _swift_task_switch(sub_1002BCC04, a1, 0);
}

uint64_t sub_1002BCC04()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 24);
  *(v0 + 160) = (*(v0 + 144))(*(v0 + 32), *(v0 + 40), 1);
  *(v0 + 168) = 0;

  return _swift_task_switch(sub_1002BCD04, 0, 0);
}

char *sub_1002BCD04()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v109 = v0;
  if (v4 == enum case for WADevicesAgentInterface.Devices.selected(_:))
  {
    v5 = v0[20];
    v6 = v0[17];
    (*(v0[16] + 96))(v6, v0[15]);
    v7 = *v6;
    if (v5 >> 62)
    {
      goto LABEL_65;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v10 = v5 & 0xC000000000000001;
      v11 = v5 & 0xFFFFFFFFFFFFFF8;
      v12 = v109[20] + 32;
      v0 = (v7 + 56);
      while (1)
      {
        if (v10)
        {
          v23 = v109[20];
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_63;
          }

          v13 = *(v12 + 8 * v9);
        }

        v5 = v13;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        v15 = [v13 deviceID];
        if (v15 >> 16)
        {
          goto LABEL_64;
        }

        if (*(v7 + 16) && (v16 = v15, v17 = *(v7 + 40), v18 = static Hasher._hash(seed:bytes:count:)(), v19 = -1 << *(v7 + 32), v20 = v18 & ~v19, ((*(v0 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
        {
          v21 = ~v19;
          while (*(*(v7 + 48) + 2 * v20) != v16)
          {
            v20 = (v20 + 1) & v21;
            if (((*(v0 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v22 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v9 == i)
          {
            goto LABEL_48;
          }
        }

        else
        {
LABEL_6:

          if (v9 == i)
          {
            goto LABEL_48;
          }
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      if (v0[20] < 0)
      {
        v68 = v0[20];
      }
    }

LABEL_48:
    v55 = v109[20];

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v56 = _CocoaArrayWrapper.endIndex.getter();
      if (v56)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v56 = _swiftEmptyArrayStorage[2];
      if (v56)
      {
LABEL_51:
        sub_100367828(0, v56 & ~(v56 >> 63), 0);
        if ((v56 & 0x8000000000000000) == 0)
        {
          for (j = 0; j != v56; ++j)
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v58 = _swiftEmptyArrayStorage[j + 4];
            }

            v59 = v58;
            v60 = [v58 deviceID];

            v62 = _swiftEmptyArrayStorage[2];
            v61 = _swiftEmptyArrayStorage[3];
            if (v62 >= v61 >> 1)
            {
              sub_100367828((v61 > 1), v62 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v62 + 1;
            _swiftEmptyArrayStorage[v62 + 4] = v60;
          }

          goto LABEL_59;
        }

        __break(1u);
LABEL_71:
        v0 = v109;
        if (v109[20] < 0)
        {
          v69 = v109[20];
        }

        v28 = _CocoaArrayWrapper.endIndex.getter();
        if (!v28)
        {
          goto LABEL_74;
        }

        goto LABEL_24;
      }
    }

LABEL_59:

    v0 = v109;
LABEL_90:
    v99 = v0[17];
    v100 = v0[14];
    v101 = v0[10];
    v102 = v0[11];
    v103 = v0[7];

    v104 = v0[1];

    return v104(_swiftEmptyArrayStorage);
  }

  if (v4 != enum case for WADevicesAgentInterface.Devices.matching(_:))
  {
    v5 = v0[20];
    if (v4 != enum case for WADevicesAgentInterface.Devices.allPairedDevices(_:))
    {
      v64 = enum case for WADevicesAgentInterface.Devices.userSpecifiedDevices(_:);
      v65 = v4;
      v66 = v0[20];

      if (v65 != v64)
      {
        (*(v0[16] + 8))(v0[17], v0[15]);
      }

      goto LABEL_90;
    }

    if (!(v5 >> 62))
    {
      v44 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
LABEL_89:
        v0 = v109;
        v98 = v109[20];

        goto LABEL_90;
      }

LABEL_39:
      result = sub_100367828(0, v44 & ~(v44 >> 63), 0);
      if (v44 < 0)
      {
        __break(1u);
        return result;
      }

      v46 = 0;
      v47 = v5 & 0xC000000000000001;
      v48 = v109[20] + 32;
      do
      {
        if (v47)
        {
          v49 = v109[20];
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v50 = *(v48 + 8 * v46);
        }

        v51 = v50;
        v52 = [v50 deviceID];

        v54 = _swiftEmptyArrayStorage[2];
        v53 = _swiftEmptyArrayStorage[3];
        if (v54 >= v53 >> 1)
        {
          sub_100367828((v53 > 1), v54 + 1, 1);
        }

        ++v46;
        _swiftEmptyArrayStorage[2] = v54 + 1;
        _swiftEmptyArrayStorage[v54 + 4] = v52;
      }

      while (v44 != v46);
      v0 = v109;
      v67 = v109[20];
LABEL_85:

      goto LABEL_90;
    }

LABEL_88:
    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (!v44)
    {
      goto LABEL_89;
    }

    goto LABEL_39;
  }

  v5 = v0[20];
  v24 = v0[17];
  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[13];
  (*(v0[16] + 96))(v24, v0[15]);
  (*(v27 + 32))(v25, v24, v26);
  if (v5 >> 62)
  {
    goto LABEL_71;
  }

  v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_74:
    v70 = v0[20];

    goto LABEL_75;
  }

LABEL_24:
  sub_100367848(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  v29 = 0;
  v106 = v0[9];
  v105 = v0[20] + 32;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v30 = v0[20];
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v31 = *(v105 + 8 * v29);
    }

    v32 = v31;
    [v31 deviceID];
    v33 = [v32 name];
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v107 = v0[11];
    v35 = v0[7];
    v36 = [v32 pairingName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = [v32 vendorName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = [v32 modelName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    WAPairedDevice.PairingInfo.init(pairingName:vendorName:modelName:)();
    v39 = type metadata accessor for WAPairedDevice.PairingInfo();
    (*(*(v39 - 8) + 56))(v35, 0, 1, v39);
    WAPairedDevice.init(id:name:pairingInfo:)();

    v41 = _swiftEmptyArrayStorage[2];
    v40 = _swiftEmptyArrayStorage[3];
    if (v41 >= v40 >> 1)
    {
      sub_100367848(v40 > 1, v41 + 1, 1);
    }

    v42 = v109[11];
    v43 = v109[8];
    ++v29;
    _swiftEmptyArrayStorage[2] = v41 + 1;
    (*(v106 + 32))(_swiftEmptyArrayStorage + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v41, v42, v43);
    v0 = v109;
  }

  while (v28 != v29);
  v63 = v109[20];

LABEL_75:
  v71 = v0[21];
  v72 = v0[14];
  v0[2] = _swiftEmptyArrayStorage;
  sub_10005DC58(&qword_100594A40, &qword_1004AE548);
  sub_10000CB24(&qword_100594A48, &qword_100594A40, &qword_1004AE548);
  v73 = Sequence.filter(_:)();
  if (!v71)
  {
    v83 = v73;

    v84 = *(v83 + 16);
    if (!v84)
    {
      v0 = v109;
      v95 = v109[13];
      v96 = v109[14];
      v97 = v109[12];

      (*(v95 + 8))(v96, v97);
      goto LABEL_90;
    }

    v85 = v109[9];
    sub_100367828(0, v84, 0);
    v86 = *(v85 + 16);
    v85 += 16;
    v108 = v86;
    v87 = v83 + ((*(v85 + 64) + 32) & ~*(v85 + 64));
    v88 = *(v85 + 56);
    v89 = (v85 - 8);
    do
    {
      v90 = v109[10];
      v91 = v109[8];
      v108(v90, v87, v91);
      v92 = WAPairedDevice.id.getter();
      (*v89)(v90, v91);
      v94 = _swiftEmptyArrayStorage[2];
      v93 = _swiftEmptyArrayStorage[3];
      if (v94 >= v93 >> 1)
      {
        sub_100367828((v93 > 1), v94 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v94 + 1;
      _swiftEmptyArrayStorage[v94 + 4] = v92;
      v87 += v88;
      --v84;
    }

    while (v84);
    v0 = v109;
    (*(v109[13] + 8))(v109[14], v109[12]);
    goto LABEL_85;
  }

  v74 = v0[13];
  v75 = v0[14];
  v76 = v0[12];

  (*(v74 + 8))(v75, v76);
  v77 = v0[17];
  v78 = v0[14];
  v79 = v0[10];
  v80 = v0[11];
  v81 = v0[7];

  v82 = v0[1];

  return v82();
}

uint64_t variable initialization expression of WiFiAwareMonitorClient.assertionqueue()
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v7[1] = sub_100061590();
  static DispatchQoS.unspecified.getter();
  v9 = _swiftEmptyArrayStorage;
  sub_10001F93C(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CB24(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of WiFiAwareMonitorClient.subject()
{
  v0 = sub_10005DC58(&unk_1005943F0, &qword_1004B2170);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return CurrentValueSubject.init(_:)();
}

uint64_t variable initialization expression of NANAgentHandler.clients()
{
  type metadata accessor for UUID();
  type metadata accessor for NANAgentHandler.Client();
  sub_10001F93C(&unk_10058BB00, &type metadata accessor for UUID);

  return Dictionary.init()();
}

uint64_t variable initialization expression of NANAgentHandler.activeClientList()
{
  type metadata accessor for NANAgentHandler.ActiveClient();

  return Dictionary.init()();
}

uint64_t sub_1002BDB64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100275A88(a1);

  *a2 = v3;
  return result;
}

void sub_1002BDDB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1002BDE08()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1002CA064();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002BDFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100594B08;
  swift_beginAccess();
  return sub_1002CB130(v1 + v3, a1);
}

uint64_t sub_1002BE020@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B818;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BE098()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1002EB234();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002BE0E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1002EB358();

  result = v2;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1002BE12C(unint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    return 0x69646E6F70736552;
  }

  if (a2 >> 62 == 1)
  {
    return 0x73696C6261747345;
  }

  v3 = 0x74616E696D726554;
  if (a2 == 0x8000000000000000 && a1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 | a2 ^ 0x8000000000000000)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (__PAIR128__(0x8000000000000000, 1) >= __PAIR128__(a2, a1))
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002BE224(void *a1, unint64_t a2)
{
  v4 = *(*(type metadata accessor for Mirror.AncestorRepresentation() - 8) + 64);
  __chkstk_darwin();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = v12 - v8;
  v12[2] = a1;
  v12[3] = a2;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  _s17ResponderInstanceC5StateOMa_0();
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  sub_100167804(v6);
  sub_1002CAEE4(a1, a2);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002BE3CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1002BE12C(*v1, v1[1]);
}

uint64_t sub_1002BE3DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1002BE224(*v1, *(v1 + 8));
}

uint64_t sub_1002BE3EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v7 = qword_100594B30;
  swift_beginAccess();
  (*(v3 + 40))(v1 + v7, v6, v2);
  return swift_endAccess();
}

unint64_t sub_1002BE4F0()
{
  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  return *(v1 + 2) | (*(v1 + 4) << 16);
}

uint64_t sub_1002BE540()
{
  v1 = *(v0 + qword_100594B38 + 8);
  if (!(v1 >> 62))
  {
    return 1;
  }

  if (v1 >> 62 == 2)
  {
    v2 = *(v0 + qword_100594B38);
    if (__PAIR128__(v1, v2) < __PAIR128__(0x8000000000000000, 4))
    {
      return (0xBu >> (v2 & 0xF)) & 1;
    }
  }

  return 0;
}

BOOL sub_1002BE59C()
{
  v1 = v0 + qword_100594B08;
  swift_beginAccess();
  sub_100012400(v1 + 136, v4, &unk_1005974B0, &qword_1004AFCF0);
  v2 = v4[40] != 255;
  sub_100016290(v4, &unk_1005974B0, &qword_1004AFCF0);
  return v2;
}

uint64_t sub_1002BE62C()
{
  if (*(v0 + qword_100594B38 + 8) >> 62 == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BE670(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(sub_10005DC58(&unk_100597330, &unk_100481FA0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v14[-v7];
  v9 = qword_10059B848;
  swift_beginAccess();
  sub_100012400(v2 + v9, v8, &unk_100597330, &unk_100481FA0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  result = sub_100016290(v8, &unk_100597330, &unk_100481FA0);
  if (v12 == 1 || *(v2 + qword_10059B840) != a1)
  {
    type metadata accessor for P2PTimer();
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_1000B1B78(v6, v2 + v9, &unk_100597330, &unk_100481FA0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1002BE864(uint64_t a1)
{
  v2 = *(v1 + qword_10059B840);
  *(v1 + qword_10059B840) = a1;
  return sub_1002BE670(v2);
}

uint64_t sub_1002BE87C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B848;
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_1002BE8E4()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + qword_100594B50);
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = *((swift_isaMask & *v0) + 0x58);
  v22 = type metadata accessor for LowLatencyInternetRequesterPolicy();
  v23 = &off_10057A348;
  *&v21 = v2;
  v24 = 1;
  v5 = v0 + qword_100594B08;
  swift_beginAccess();
  v6 = v2;
  sub_1000B1B78(&v21, (v5 + 136), &unk_1005974B0, &qword_1004AFCF0);
  result = swift_endAccess();
  v8 = qword_100594B48;
  if ((*(v0 + qword_100594B48) & 1) == 0)
  {
    sub_100012400((v5 + 136), &v21, &unk_1005974B0, &qword_1004AFCF0);
    if (v24 == 255)
    {
      return sub_100016290(&v21, &unk_1005974B0, &qword_1004AFCF0);
    }

    else if (v24)
    {
      sub_100029954(&v21, v18);
      *(v0 + v8) = 1;
      v9 = v19;
      v10 = v20;
      sub_100029B34(v18, v19);
      v11 = v5[2];
      v12 = v5[3];
      v13 = *(v5 + 1) << 16;
      if (*(v5 + 16) == 1)
      {
        v14 = 0;
        v15 = 0xF000000000000000;
      }

      else
      {
        v14 = *(v5 + 11);
        v15 = *(v5 + 12);
        sub_10000AB0C(v14, v15);
      }

      WitnessTable = swift_getWitnessTable();
      v17 = sub_10036DB68(ObjectType, WitnessTable);
      (*(v10 + 8))(v11 | (v12 << 8) | v13, v14, v15, v17 & 0xFFFFFFFFFFFFFFLL, v9, v10);
      sub_100017554(v14, v15);
      return sub_100002A00(v18);
    }

    else
    {
      return sub_10020C758(&v21);
    }
  }

  return result;
}

uint64_t sub_1002BEB14(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);
  v8 = swift_getAssociatedTypeWitness();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  __chkstk_darwin();
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Preferences();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = __chkstk_darwin();
  v20 = &v59 - v19;
  if (v2[qword_10059B850] != v3)
  {
    if (v2[qword_10059B850])
    {
      v21 = *&v2[qword_100594B00];
      swift_unownedRetainStrong();
      WiFiInterface.preferences.getter();

      v22 = Preferences.dynamicSDBNoReassoc.getter(v15);
      v64 = *(v16 + 8);
      v64(v20, v15);
      v23 = (v22 & 1);
      v65 = qword_10059B818;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v63 = v13;
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "dynamicSDB disableAutoJoin", v26, 2u);
        v13 = v63;
      }

      swift_unownedRetainStrong();
      v27 = *(v21 + *(*v21 + 800));
      swift_unownedRetainStrong();

      sub_1003EE8DC();

      if (v23)
      {
        v63 = v23;
        v28 = v2;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        v62 = v30;
        if (!os_log_type_enabled(v29, v30))
        {

          v54 = v68;
          v23 = v63;
          goto LABEL_24;
        }

        v31 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v69 = v60;
        *v31 = 67109378;
        v61 = AssociatedTypeWitness;
        v32 = v63;
        *(v31 + 4) = v63;
        *(v31 + 8) = 2080;
        swift_unownedRetainStrong();
        v59 = v29;
        WiFiInterface.preferences.getter();

        v33 = Preferences.autoInternetSharingOnInfraLost.getter(v15);
        v64(v20, v15);
        if (v33)
        {
          v34 = 0x64656C62616E65;
        }

        else
        {
          v34 = 0x64656C6261736964;
        }

        if (v33)
        {
          v35 = 0xE700000000000000;
        }

        else
        {
          v35 = 0xE800000000000000;
        }

        v36 = sub_100002320(v34, v35, &v69);

        *(v31 + 10) = v36;
        v23 = v32;
        v37 = v59;
        _os_log_impl(&_mh_execute_header, v59, v62, "dynamicSDB enabling SET_SDB with flag.no_reassoc=%u. expected to lose Infra shortly. autoInternetSharing is %s", v31, 0x12u);
        sub_100002A00(v60);
      }

      else
      {
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "dynamicSDB enabling SET_SDB with reassoc. expect to keep Infra. To disconnect from Infra and set up IR, set 'wifip2p Preferences dynamicSDBNoReassoc=true' and 'wifip2p Preferences autoInternetSharingOnInfraLost=true' on both publisher and this device", v53, 2u);
        }
      }

      v54 = v68;
LABEL_24:
      swift_unownedRetainStrong();
      v55 = *(v21 + *(*v21 + 800));
      swift_unownedRetainStrong();

      (*(*v55 + 168))(v56);

      v57 = swift_getAssociatedConformanceWitness();
      v58 = *(v57 + 160);
      LOBYTE(v69) = 0;
      v58(1, v23, v54, v57);
      return (*(v67 + 8))(v13, v54);
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "dynamicSDB reenableAutoJoin", v40, 2u);
    }

    v41 = *&v2[qword_100594B00];
    swift_unownedRetainStrong();
    v42 = *(v41 + *(*v41 + 800));
    swift_unownedRetainStrong();

    sub_1003EE874();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "dynamicSDB disabling SET_SDB", v45, 2u);
    }

    swift_unownedRetainStrong();
    v46 = *(v41 + *(*v41 + 800));
    swift_unownedRetainStrong();

    (*(*v46 + 168))(v47);

    v48 = v68;
    v49 = swift_getAssociatedConformanceWitness();
    v50 = *(v49 + 160);
    LOBYTE(v69) = 0;
    v50(0, 0, v48, v49);
    return (*(v67 + 8))(v11, v48);
  }

  return result;
}

uint64_t sub_1002BF508(char a1)
{
  v2 = *(v1 + qword_10059B850);
  *(v1 + qword_10059B850) = a1;
  return sub_1002BEB14(v2);
}

uint64_t sub_1002BF520()
{
  v1 = v0;
  v2 = v0 + qword_100594B08;
  swift_beginAccess();
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + qword_10059B838;
  swift_beginAccess();
  v9 = *(v8 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 64) = 4;

  v10 = *(v1 + qword_100594B00);
  swift_unownedRetainStrong();
  v11 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v12 = sub_1003F06BC();

  *(v1 + qword_100594B70) = v12;
  swift_unownedRetainStrong();
  v13 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  v14 = sub_1003F06D8();

  *(v1 + qword_100594B78) = v14;
  swift_unownedRetainStrong();
  v15 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  (*(*v15 + 200))(v16);

  v23 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v15) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  *(v8 + 105) = v15 & 1;
  swift_unownedRetainStrong();
  v17 = *(v10 + *(*v10 + 800));
  swift_unownedRetainStrong();

  sub_1003EB084();
  v19 = v18;
  v21 = v20;

  if (v19)
  {
  }

  else
  {
    v21 = 0;
  }

  *(v8 + 100) = v21;
  return result;
}

uint64_t sub_1002BF788(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v76) = a2;
  v78 = a1;
  v4 = swift_isaMask & *v2;
  v5 = *(*(v4 + 0x58) + 8);
  v6 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v85 = AssociatedTypeWitness;
  v8 = *(v84 + 64);
  __chkstk_darwin();
  v83 = &v73 - v9;
  v10 = swift_checkMetadataState();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  __chkstk_darwin();
  v79 = &v73 - v12;
  v77 = type metadata accessor for DispatchTime();
  v13 = *(v77 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v73 - v17;
  v19 = *(v3 + qword_100594B58 + 8);
  v75 = (v3 + qword_100594B58);
  if (v19)
  {
    v20 = *(v3 + qword_100594B58);
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v3 + qword_10059B838;
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = v20;
  *(v22 + 1) = v21;

  v22[68] = *(v3 + qword_100594B68);
  swift_endAccess();
  v24 = *(v3 + qword_100594B00);
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v25 = sub_100337438();

  *(v22 + 6) = v25;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v26 = sub_10033746C();

  *(v22 + 5) = v26;
  swift_unownedRetainStrong();
  sub_10040CAE8();

  v27 = sub_100337590();

  *(v22 + 7) = v27;
  if ((v78 + 1) >= 6)
  {
    v28 = 5;
  }

  else
  {
    v28 = 0x50403020501uLL >> (8 * (v78 + 1));
  }

  v22[33] = v28;
  v22[34] = v76;
  type metadata accessor for P2PTimer();
  variable initialization expression of AWDLPeer.lastUpdated();
  v29 = DispatchTime.uptimeNanoseconds.getter();
  v30 = v13;
  v31 = *(v13 + 8);
  v32 = v18;
  v33 = v77;
  v31(v32, v77);
  (*(v30 + 16))(v16, v3 + qword_100594B28, v33);
  v34 = DispatchTime.uptimeNanoseconds.getter();
  result = (v31)(v16, v33);
  if (v29 < v34)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v22 + 11) = (v29 - v34) / 0xF4240;
  swift_unownedRetainStrong();
  v36 = *(v24 + *(*v24 + 800));
  swift_unownedRetainStrong();

  v37 = sub_1003F06BC();

  v38 = *(v3 + qword_100594B70);
  v39 = v37 >= v38;
  v40 = v37 - v38;
  if (!v39)
  {
    goto LABEL_35;
  }

  *(v22 + 33) = v40;
  swift_unownedRetainStrong();
  v41 = *(v24 + *(*v24 + 800));
  swift_unownedRetainStrong();

  v42 = sub_1003F06D8();

  v43 = *(v3 + qword_100594B78);
  v39 = v42 >= v43;
  v44 = v42 - v43;
  if (!v39)
  {
    goto LABEL_36;
  }

  *(v22 + 34) = v44;
  v45 = v3 + qword_100594B08;
  swift_beginAccess();
  if (v45[72])
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v46 = 1;
  }

  v22[65] = v46 & 1;
  if (v45[72] && v45[72] == 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v22[66] = v47 & 1;
  if (v45[72] && v45[72] != 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v22[67] = v48 & 1;
  v49 = *(v3 + qword_100594B10);
  if (v49)
  {
    v50 = OBJC_IVAR____TtC12wifip2pdCore22WiFiAwareMonitorClient_bksstatus;
    swift_beginAccess();
    v51 = *(v49 + v50);
    memcpy(v96, v22, sizeof(v96));
    v22[160] = NANWiFiAwareStatistics.convertToAppStatus(reason:)(v51);
  }

  v52 = v75[1];
  if (!v52)
  {
LABEL_33:
    swift_unownedRetainStrong();
    v66 = v79;
    v67 = v80;
    v68 = v81;
    (*(v80 + 16))(v79, v24 + *(*v24 + 112), v81);

    v69 = v83;
    (*(AssociatedConformanceWitness + 152))(v68, AssociatedConformanceWitness);
    (*(v67 + 8))(v66, v68);
    memcpy(v87, v22, sizeof(v87));
    v70 = v85;
    v71 = swift_getAssociatedConformanceWitness();
    v72 = *(v71 + 32);
    sub_1002CB02C(v87, &v86);
    v72(v87, v70, v71);
    sub_1002CB088(v87);
    return (*(v84 + 8))(v69, v70);
  }

  v53 = *v75;
  swift_unownedRetainStrong();

  sub_10040CAE8();

  v54 = sub_100337438();

  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v54 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v55 = sub_10033746C();

  if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v55 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  swift_unownedRetainStrong();
  sub_10040CAE8();

  v56 = sub_100337594();

  if ((v56 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!(v56 >> 16))
  {
    v78 = *(v22 + 11);
    LODWORD(v77) = v22[64];
    swift_unownedRetainStrong();
    v57 = *(*v24 + 112);
    v75 = v54;
    v76 = v52;
    v58 = v79;
    v59 = v80;
    v60 = *(v80 + 16);
    v74 = v53;
    v61 = v81;
    v60(v79, v24 + v57, v81);

    v62 = v55;
    v63 = v83;
    (*(AssociatedConformanceWitness + 152))(v61, AssociatedConformanceWitness);
    (*(v59 + 8))(v58, v61);
    v88[0] = v74;
    v88[1] = v76;
    v89 = v75;
    v90 = v62;
    v91 = v56;
    v92 = 0u;
    memset(v93, 0, 26);
    v93[26] = v77;
    *v94 = v87[0];
    *&v94[3] = *(v87 + 3);
    v95 = v78;
    v64 = v85;
    v65 = swift_getAssociatedConformanceWitness();
    (*(v65 + 40))(v88, v64, v65);
    sub_1002CB0DC(v88);
    (*(v84 + 8))(v63, v64);
    goto LABEL_33;
  }

LABEL_42:
  __break(1u);
  return result;
}

id sub_1002C01C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(*((swift_isaMask & *v0) + 0x58) + 8);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = *&v1[qword_100594B38 + 8];
  if (v10 < 0 && (v11 = *&v1[qword_100594B38], __PAIR128__(v10 & 0x7FFFFFFFFFFFFFFFLL, v11) >= 2))
  {
    if (v11 ^ 2 | v10 & 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *&v1[qword_100594B00];
    swift_unownedRetainStrong();
    v13 = *(*v12 + 96);
    swift_beginAccess();
    (*(v6 + 16))(v9, v12 + v13, AssociatedTypeWitness);

    v14 = &v1[qword_100594B08];
    swift_beginAccess();
    v15 = *(v14 + 10);
    v16 = *(v14 + 4);
    v17 = *v14;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 240))(v17, v16 | (v15 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  sub_1002C057C(-1, 0x64657361656C6572, 0xE800000000000000, 44);
  v19 = *&v1[qword_100594B10];
  *&v1[qword_100594B10] = 0;

LABEL_5:
  sub_1002C046C(v1);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "dealloc");
}

void sub_1002C046C(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v1;
    *v4 = v1;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Destroyed %@", v3, 0xCu);
    sub_100016290(v4, &qword_10058B780, &qword_100480AC0);
  }
}

uint64_t sub_1002C057C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = swift_isaMask & *v4;
  v11 = v4;

  v12 = Logger.logObject.getter();
  v121 = v10;
  if (a1 == 2)
  {
    v13 = static os_log_type_t.default.getter();
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
  }

  v14 = v13;

  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v123[0] = v17;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v5;
    *(v15 + 12) = 2080;
    v18 = v11;
    *(v15 + 14) = sub_100002320(a2, a3, v123);
    _os_log_impl(&_mh_execute_header, v12, v14, "%@ was terminated because %s", v15, 0x16u);
    sub_100016290(v16, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v17);
  }

  v19 = qword_100594B40;
  v20 = &unk_100594000;
  if (*(v11 + qword_100594B40) == 1)
  {
    v118 = qword_100594B40;
    v120 = a4;
    v119 = sub_1002C7410();
    v21 = v11 + qword_100594B08;
    swift_beginAccess();
    v22 = v21[8];
    v23 = v21[9];
    v24 = v21[10];
    v25 = v21[11];
    v26 = v21[12];
    v115 = v21;
    v27 = v21[13];
    v28 = (v11 + qword_100594B18);
    v29 = *(v11 + qword_100594B18 + 8);
    v113 = v11 + qword_100594B18;
    if (v29 >> 60 == 15)
    {
      v30 = v22 | (v23 << 8) | (v24 << 16) | (v25 << 24) | (v26 << 32) | (v27 << 40);
      v31 = WiFiAddress.ipv6LinkLocalAddress.getter(v30);
      v33 = v32;
      v116 = v34;
      v36 = v35;
    }

    else
    {
      v38 = *v28;
      sub_10000AB0C(*v28, v29);
      v110 = InterfaceIdentifier.ipv6Address.getter(v38, v29);
      v111 = v39;
      v116 = v40;
      v42 = v41;
      sub_100017554(v38, v29);
      v43 = v22 | (v23 << 8) | (v24 << 16) | (v25 << 24);
      v36 = v42;
      v31 = v110;
      v33 = v111;
      v30 = v43 | (v26 << 32) | (v27 << 40);
    }

    v44 = (*(*v119 + 416))(v123);
    v45 = *(v121 + 80);
    v46 = *(*(v121 + 88) + 8);
    v47 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
    WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v30, v31, v33, v116, v36, v47);
    v44(v123, 0);

    v48 = sub_1002C7410();
    v49 = *(v11 + qword_100594B00);
    swift_unownedRetainStrong();
    v50 = *(v49 + *(*v49 + 472));

    a4 = v120;
    if (v50)
    {

      v37 = a1;
      v20 = &unk_100594000;
      if (v48 == v50)
      {
        v121 = v47;
        v119 = v49;
        swift_unownedRetainStrong();
        v51 = v113;
        v52 = v115[10];
        v53 = v115[11];
        v54 = v115[12];
        v55 = v115[13];
        v56 = *(v113 + 1);
        v57 = v115[8] | (v115[9] << 8);
        if (v56 >> 60 == 15)
        {
          v58 = v57 | (v52 << 16) | (v53 << 24) | (v54 << 32) | (v55 << 40);
          v59 = WiFiAddress.ipv6LinkLocalAddress.getter(v58);
          v61 = v60;
          v63 = v62;
          v65 = v64;
        }

        else
        {
LABEL_34:
          v80 = *v51;
          sub_10000AB0C(*v51, v56);
          v81 = InterfaceIdentifier.ipv6Address.getter(v80, v56);
          v112 = v82;
          v114 = v81;
          v117 = v83;
          v85 = v84;
          sub_100017554(v80, v56);
          v86 = v57 | (v52 << 16);
          v65 = v85;
          v87 = v86 | (v53 << 24) | (v54 << 32);
          v61 = v112;
          v59 = v114;
          v58 = v87 | (v55 << 40);
          v63 = v117;
        }

        v88 = *(*v119 + 152);
        swift_beginAccess();
        WiFiInterface.NeighborDiscoveryTable.postPeerAbsence(macAddress:ipv6Address:)(v58, v59, v61, v63, v65, v121);
        swift_endAccess();

        v37 = a1;
        v20 = &unk_100594000;
        a4 = v120;
      }
    }

    else
    {

      v37 = a1;
      v20 = &unk_100594000;
    }

    v19 = v118;
  }

  else
  {
    v37 = a1;
  }

  sub_1002BF788(v37, a4);
  sub_1002CA7EC(3, 0x8000000000000000);
  v53 = &unk_10059B000;
  if (*(v11 + v19) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v67 = Strong;
      v68 = sub_1002EB914();

      if (v68)
      {
        v69 = *(v11 + qword_100594B00);
        swift_unownedRetainStrong();
        sub_10040CAE8();

        v70 = v11 + v20[353];
        swift_beginAccess();
        v71 = *(v70 + 10);
        v72 = *(v70 + 4);
        LOBYTE(v70) = sub_10033787C();

        if ((v70 & 1) == 0)
        {
          v77 = sub_1002BE098();
          v56 = v77;
          if (v77 >> 62)
          {
            goto LABEL_37;
          }

          v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v78)
          {
LABEL_38:

            v37 = a1;
            v20 = &unk_100594000;
            goto LABEL_39;
          }

LABEL_25:
          v57 = 0;
          v54 = v56 & 0xC000000000000001;
          v55 = v56 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v54)
            {
              v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v79 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            else
            {
              if (v57 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_37:
                v78 = _CocoaArrayWrapper.endIndex.getter();
                if (!v78)
                {
                  goto LABEL_38;
                }

                goto LABEL_25;
              }

              v52 = *(v56 + 8 * v57 + 32);
              swift_unknownObjectRetain();
              v79 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                goto LABEL_33;
              }
            }

            *&v123[0] = v52;
            sub_1002C9DA8(v123, v11);
            swift_unknownObjectRelease();
            ++v57;
            if (v79 == v78)
            {
              goto LABEL_38;
            }
          }
        }
      }
    }

    v73 = sub_1002BE0E0();
    if (v73)
    {
      v74 = v73;
      sub_1002CAF78();
      v75 = v11 + v20[353];
      swift_beginAccess();
      v76 = WiFiAwarePublisherDataSessionHandle.init(_:)(*v75 | (v75[8] << 8) | (v75[9] << 16) | (*(v75 + 10) << 24));
      [v74 publishDataTerminatedForHandle:v76 reason:2];

      swift_unknownObjectRelease();
    }
  }

LABEL_39:
  v89 = swift_unknownObjectWeakLoadStrong();
  if (v89)
  {
    v90 = v89;
    v91 = v11 + v20[353];
    swift_beginAccess();
    v92 = *(v91 + 10);
    v93 = *v91 | (v91[8] << 8) | (v91[9] << 16);
    sub_1002EB9C8();
  }

  v94 = *(v11 + qword_10059B828);
  if (v94)
  {
    v95 = *(v11 + qword_10059B828 + 8);
    sub_1002CAF78();
    v96 = v11 + v20[353];
    swift_beginAccess();
    v97 = *v96 | (v96[8] << 8) | (v96[9] << 16) | (*(v96 + 10) << 24);

    v98 = WiFiAwarePublisherDataSessionHandle.init(_:)(v97);
    v94(v98, v37);
    sub_100010520(v94);
  }

  v99 = (v11 + qword_10059B820);
  v100 = *(v11 + qword_10059B820);
  if (v100)
  {
    v101 = v99[1];

    v100(0);
    sub_100010520(v100);
  }

  swift_unknownObjectWeakAssign();
  v102 = *v99;
  v103 = v99[1];
  *v99 = 0;
  v99[1] = 0;
  result = sub_100010520(v102);
  if (v37 != -1)
  {
    v105 = *(v11 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    sub_100339170(v11);
  }

  v106 = qword_100594B48;
  if (*(v11 + qword_100594B48) == 1)
  {
    v107 = v11 + v20[353];
    swift_beginAccess();
    sub_100012400((v107 + 136), v123, &unk_1005974B0, &qword_1004AFCF0);
    if (v124 == 255)
    {
      return sub_100016290(v123, &unk_1005974B0, &qword_1004AFCF0);
    }

    else if (v124)
    {
      sub_100029954(v123, v125);
      v108 = v126;
      v109 = v127;
      sub_100029B34(v125, v126);
      (*(v109 + 16))(*(v107 + 1) | (*(v107 + 1) << 16), v108, v109);
      *(v11 + v106) = 0;
      return sub_100002A00(v125);
    }

    else
    {
      return sub_10020C758(v123);
    }
  }

  return result;
}

uint64_t sub_1002C10F4(uint64_t a1)
{
  v2 = *(a1 + qword_100594B00);
  swift_unownedRelease();
  sub_1002CB18C(a1 + qword_100594B08);
  v3 = *(a1 + qword_100594B10);

  v4 = qword_10059B818;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  sub_100017554(*(a1 + qword_100594B18), *(a1 + qword_100594B18 + 8));
  v6 = *(a1 + qword_100594B20);

  v7 = *(a1 + qword_10059B820 + 8);
  sub_100010520(*(a1 + qword_10059B820));
  v8 = *(a1 + qword_10059B828 + 8);
  sub_100010520(*(a1 + qword_10059B828));
  swift_unknownObjectWeakDestroy();
  v9 = qword_100594B28;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(*(v10 - 8) + 8);
  v11(a1 + v9, v10);
  v11(a1 + qword_100594B30, v10);
  sub_1002CAF2C(*(a1 + qword_100594B38), *(a1 + qword_100594B38 + 8));

  v12 = *(a1 + qword_100594B58 + 8);

  memcpy(v15, (a1 + qword_10059B838), sizeof(v15));
  sub_1002CB088(v15);
  v13 = *(a1 + qword_100594B80);

  return sub_100016290(a1 + qword_10059B848, &unk_100597330, &unk_100481FA0);
}

uint64_t sub_1002C12E0()
{
  v2 = v0;
  v3 = swift_isaMask & *v0;
  v24 = *(v3 + 0x58);
  v4 = *(v24 + 8);
  v23[1] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin();
  v8 = v23 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v15)
  {
    v18 = *(v2 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CBA8();

    if (!v1)
    {
      swift_unownedRetainStrong();
      v19 = *(*v18 + 96);
      swift_beginAccess();
      v20 = v26;
      (*(v26 + 16))(v8, v18 + v19, AssociatedTypeWitness);

      v21 = qword_100594B08;
      swift_beginAccess();
      sub_1002CB130(v2 + v21, v25);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 280))(v25, AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_1002CB18C(v25);
      (*(v20 + 8))(v8, AssociatedTypeWitness);
      return sub_1002BF520();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C161C()
{
  v1 = v0;
  v2 = *(*((swift_isaMask & *v0) + 0x58) + 8);
  v3 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v33 - v7;
  if (*(v0 + qword_100594B38 + 8) >> 62)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + qword_100594B38);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v11 = Strong[qword_10059B898], Strong, v11 != 1))
    {
      v18 = v1;
      v13 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v18;
        *v21 = v1;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v13, v19, "%@ cannot retry response because the associated publisher is no longer active", v20, 0xCu);
        sub_100016290(v21, &qword_10058B780, &qword_100480AC0);
      }

      goto LABEL_10;
    }

    v12 = v1;
    v13 = Logger.logObject.getter();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v1;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, v14, "%@ is being terminated because response retries exceeded", v15, 0xCu);
        sub_100016290(v16, &qword_10058B780, &qword_100480AC0);
      }

LABEL_10:

      sub_1002C1BE0();
      return;
    }

    v34 = v5;
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v23))
    {
      v24 = swift_slowAlloc();
      v35 = v12;
      v25 = v24;
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v35;
      *v26 = v1;
      v27 = v26;
      v28 = v35;
      _os_log_impl(&_mh_execute_header, v13, v23, "%@ is being retried", v25, 0xCu);
      sub_100016290(v27, &qword_10058B780, &qword_100480AC0);

      v12 = v35;
    }

    v29 = *&v12[qword_100594B00];
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v30 = *(*v29 + 96);
    swift_beginAccess();
    (*(v34 + 16))(v8, v29 + v30, AssociatedTypeWitness);

    v31 = qword_100594B08;
    swift_beginAccess();
    sub_1002CB130(&v12[v31], v36);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 280))(v36, AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1002CB18C(v36);
    (*(v34 + 8))(v8, AssociatedTypeWitness);
    sub_1002CA7EC((v9 + 1), 0);
  }
}

void sub_1002C1BE0()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *(v2 + 8);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v16 = *v15;
  *v14 = *v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v18 = *&v1[qword_100594B38 + 8];
    if (v18 < 0 && (v19 = *&v1[qword_100594B38], __PAIR128__(v18 & 0x7FFFFFFFFFFFFFFFLL, v19) >= 2))
    {
      if (v19 ^ 2 | v18 & 0x7FFFFFFFFFFFFFFFLL)
      {
        v45 = v1;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          *(v48 + 4) = v45;
          *v49 = v1;
          v50 = v45;
          _os_log_impl(&_mh_execute_header, v46, v47, "%@ was already in process of termination, ignoring request to terminate", v48, 0xCu);
          sub_100016290(v49, &qword_10058B780, &qword_100480AC0);
        }
      }

      else
      {
        sub_1002C057C(2, 0x7165722072657375, 0xEC00000074736575, 43);
      }
    }

    else
    {
      v20 = v1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v51 = v4;
        v25 = v2;
        v26 = AssociatedTypeWitness;
        v27 = v9;
        v28 = v6;
        v29 = v24;
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v1;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "%@ will attempt to stop", v23, 0xCu);
        sub_100016290(v29, &qword_10058B780, &qword_100480AC0);
        v6 = v28;
        v9 = v27;
        AssociatedTypeWitness = v26;
        v2 = v25;
        v4 = v51;
      }

      sub_1002CA7EC(3, 0x8000000000000000);
      v31 = *&v20[qword_100594B00];
      swift_unownedRetainStrong();
      v32 = sub_10040CAE8();

      v33 = qword_10059B9C8;
      swift_beginAccess();
      v34 = *(v32 + v33);

      v35 = &v20[qword_100594B08];
      swift_beginAccess();
      v36 = *(v35 + 6);
      v54 = *(v35 + 2);
      v55 = v36;
      _s17InitiatorInstanceCMa_0();
      _s17ResponderInstanceCMa_0();
      type metadata accessor for Either();
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v37 = v53;
      if (v53 != 255)
      {
        v38 = v52;
        sub_100428A84(v52, v53 & 1, v4, v2);
        sub_1002CB018(v38, v37);
      }

      swift_unownedRetainStrong();
      sub_10040CBA8();

      swift_unownedRetainStrong();
      v39 = *(*v31 + 96);
      swift_beginAccess();
      (*(v6 + 16))(v9, v31 + v39, AssociatedTypeWitness);

      v40 = *(v35 + 10);
      v41 = v9;
      v42 = *(v35 + 4);
      v43 = *v35;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 240))(v43, v42 | (v40 << 16), AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v6 + 8))(v41, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C22C0(uint64_t *a1)
{
  v723 = a1;
  ObjectType = swift_getObjectType();
  v2 = swift_isaMask & *v1;
  v721 = *(v2 + 0x58);
  v3 = *(v721 + 8);
  v724 = v1;
  v4 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  isa = AssociatedTypeWitness[-1].isa;
  v718 = AssociatedTypeWitness;
  v6 = *(isa + 8);
  __chkstk_darwin();
  v716 = (&v657 - v7);
  v699 = sub_10005DC58(&qword_100594D50, &unk_1004AEBF0);
  v8 = *(*(v699 - 8) + 64);
  __chkstk_darwin();
  v687 = &v657 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v689 = &v657 - v10;
  swift_getAssociatedTypeWitness();
  v695 = v3;
  v722 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Preferences();
  v697 = *(v11 - 8);
  v698 = v11;
  v12 = *(v697 + 64);
  __chkstk_darwin();
  v696 = &v657 - v13;
  v14 = *(*(sub_10005DC58(&qword_1005985E0, &unk_1004B0F80) - 8) + 64);
  __chkstk_darwin();
  v690 = &v657 - v15;
  v713 = type metadata accessor for UUID();
  v719 = *(v713 - 8);
  v16 = *(v719 + 64);
  __chkstk_darwin();
  v678 = &v657 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v688 = &v657 - v18;
  v683 = v19;
  __chkstk_darwin();
  v707 = &v657 - v20;
  v685 = sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  v21 = *(*(v685 - 8) + 64);
  __chkstk_darwin();
  v679 = &v657 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v694 = &v657 - v23;
  __chkstk_darwin();
  v684 = &v657 - v24;
  __chkstk_darwin();
  v693 = (&v657 - v25);
  __chkstk_darwin();
  v692 = &v657 - v26;
  __chkstk_darwin();
  v712 = &v657 - v27;
  __chkstk_darwin();
  v681 = &v657 - v28;
  __chkstk_darwin();
  v682 = &v657 - v29;
  v30 = type metadata accessor for Logger();
  v704 = *(v30 - 8);
  v705 = v30;
  v31 = *(v704 + 64);
  __chkstk_darwin();
  v703 = &v657 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(*(sub_10005DC58(&unk_100596880, &unk_1004B0F70) - 8) + 64);
  __chkstk_darwin();
  v702 = &v657 - v34;
  v714 = type metadata accessor for NANPeer(0);
  v35 = *(*(v714 - 8) + 64);
  __chkstk_darwin();
  v691 = (&v657 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v680 = &v657 - v37;
  __chkstk_darwin();
  v701 = &v657 - v38;
  __chkstk_darwin();
  v711 = &v657 - v39;
  __chkstk_darwin();
  v700 = (&v657 - v40);
  v710 = type metadata accessor for DispatchTime();
  v706 = *(v710 - 1);
  v41 = v706[8];
  __chkstk_darwin();
  v708 = &v657 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v709 = (&v657 - v43);
  v44 = *(*(sub_10005DC58(&unk_100595C00, &qword_10048F790) - 8) + 64);
  __chkstk_darwin();
  v715 = &v657 - v45;
  v46 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v48 = &v657 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v657 - v49;
  __chkstk_darwin();
  v52 = &v657 - v51;
  __chkstk_darwin();
  v54 = &v657 - v53;
  v55 = type metadata accessor for DispatchPredicate();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  __chkstk_darwin();
  v59 = &v657 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v686 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v60 = *v686;
  *v59 = *v686;
  (*(v56 + 104))(v59, enum case for DispatchPredicate.onQueue(_:), v55);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  (*(v56 + 8))(v59, v55);
  if ((v60 & 1) == 0)
  {
    __break(1u);
    goto LABEL_308;
  }

  v62 = v723;
  sub_1002CB538(v723, v54, type metadata accessor for DriverEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v59 = v54;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1002CB538(v54, v50, type metadata accessor for DriverEvent);
    if (*v50 != 1)
    {
      goto LABEL_46;
    }

    v77 = *&v724[qword_100594B38 + 8];
    if (v77 >> 62 == 2 && v77 == 0x8000000000000000 && *&v724[qword_100594B38] == 3)
    {
      sub_1002C057C(2, 0xD00000000000002ALL, 0x80000001004BE5B0, 39);
    }

    else
    {
      v97 = ObjectType;
      WitnessTable = swift_getWitnessTable();
      if (sub_10036DCD0(v97, WitnessTable))
      {
        sub_1002CA7EC(2, 0x8000000000000000);
      }
    }

    return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_46;
  }

  sub_1002CB538(v54, v52, type metadata accessor for DriverEvent);
  memcpy(v738, v52, 0x16AuLL);
  memcpy(v739, v52, 0x16AuLL);
  v64 = sub_100185198(v739);
  if (v64 <= 7)
  {
    if (v64 != 4)
    {
      if (v64 == 5)
      {
        v677 = v54;
        v144 = NANBitmap.Channel.operatingClass.getter(v739);
        v145 = *(v144 + 8);
        v146 = *(v144 + 9);
        v147 = *(v144 + 10);
        v148 = *(v144 + 16);
        v149 = v724;
        v150 = v724;
        sub_100185558(v738, v725);
        v151 = v150;
        sub_100185558(v738, v725);
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          v723 = v151;
          v156 = v155;
          v157 = swift_slowAlloc();
          v722 = v148;
          v158 = v157;
          *&v725[0] = v157;
          *v154 = 138412546;
          *(v154 + 4) = v723;
          *v156 = v149;

          *(v154 + 12) = 2080;
          v159 = WiFiAddress.description.getter(v145 | (v146 << 8) | (v147 << 16));
          v161 = sub_100002320(v159, v160, v725);

          *(v154 + 14) = v161;
          sub_1001854F8(v738);
          sub_1001854F8(v738);
          _os_log_impl(&_mh_execute_header, v152, v153, "%@ received a new datapath request from %s", v154, 0x16u);
          sub_100016290(v156, &qword_10058B780, &qword_100480AC0);
          v151 = v723;

          sub_100002A00(v158);
          v148 = v722;
        }

        else
        {

          sub_1001854F8(v738);
          sub_1001854F8(v738);
        }

        v198 = v715;
        Array<A>.retrieve(attribute:)(41, v148, v715);
        sub_1001854F8(v738);
        v199 = type metadata accessor for NANAttribute(0);
        v200 = (*(*(v199 - 8) + 48))(v198, 1, v199);
        v59 = v677;
        if (v200 == 1)
        {
          sub_100016290(v198, &unk_100595C00, &qword_10048F790);
        }

        else if (swift_getEnumCaseMultiPayload() == 36)
        {
          v201 = v198[1];
          v725[0] = *v198;
          v725[1] = v201;
          v202 = v198[3];
          v725[2] = v198[2];
          v725[3] = v202;
          v203 = *&v725[2];
          v204 = (v151 + qword_100594B18);
          v205 = *(v151 + qword_100594B18);
          v206 = *(v151 + qword_100594B18 + 8);
          *v204 = *(&v201 + 1);
          v204[1] = v203;
          sub_100286C2C(*(&v201 + 1), v203);
          sub_100017554(v205, v206);
          sub_10027A06C(v725);
        }

        else
        {
          sub_1002CB5A0(v198, type metadata accessor for NANAttribute);
        }

        sub_1002CA7EC(0, 0x8000000000000000);
        return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
      }

      v65 = v724;
      if (v64 == 7)
      {
        v66 = *(NANBitmap.Channel.operatingClass.getter(v739) + 1);
        v67 = v65;
        sub_100185558(v738, v725);
        v68 = v67;
        sub_100185558(v738, v725);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = v54;
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v728[0] = v74;
          *v72 = 138412546;
          *(v72 + 4) = v68;
          *v73 = v65;

          *(v72 + 12) = 2080;
          if (v66)
          {
            v75 = 0xE800000000000000;
            if (v66 == 1)
            {
              v76 = 0x747065636361;
            }

            else
            {
              v76 = 0x7463656A6572;
            }

            v244 = v76 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
          }

          else
          {
            v244 = 0x65756E69746E6F63;
            v75 = 0xE900000000000064;
          }

          v246 = sub_100002320(v244, v75, v728);

          *(v72 + 14) = v246;
          sub_1001854F8(v738);
          sub_1001854F8(v738);
          memcpy(v725, v738, 0x16AuLL);
          v247 = *(NANBitmap.Channel.operatingClass.getter(v725) + 16);

          _os_log_impl(&_mh_execute_header, v69, v70, "%@ received datapath confirmation with status %s", v72, 0x16u);
          sub_100016290(v73, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v74);

          v59 = v71;
        }

        else
        {
          sub_1001854F8(v738);

          sub_1001854F8(v738);
          sub_1001854F8(v738);
        }

        return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
      }

      goto LABEL_45;
    }

    v99 = NANBitmap.Channel.operatingClass.getter(v739);
    v100 = *(v99 + 7);
    v101 = *(v99 + 8);
    v102 = &v724[qword_100594B38];
    v103 = *&v724[qword_100594B38];
    v104 = *&v724[qword_100594B38 + 8];
    if (!(v104 >> 62) && v100 == 5)
    {
      if (*(v99 + 8))
      {
        v677 = v59;
        v105 = v724;
        v106 = v724;
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *&v725[0] = v111;
          *v109 = 138412802;
          *(v109 + 4) = v106;
          *v110 = v105;

          *(v109 + 12) = 2080;
          if (v101 == 1)
          {
            v113 = 0x756F2064656D6974;
            v112 = 0xE900000000000074;
          }

          else if (v101 == 2)
          {
            v112 = 0xE700000000000000;
            v113 = 0x646570706F7264;
          }

          else
          {
            v113 = 0xD000000000000010;
            v112 = 0x80000001004BA2F0;
          }

          v361 = sub_100002320(v113, v112, v725);

          *(v109 + 14) = v361;
          *(v109 + 22) = 2048;
          *(v109 + 24) = v103;
          _os_log_impl(&_mh_execute_header, v107, v108, "%@ failed to send datapath response, with status %s, for retry #%ld", v109, 0x20u);
          sub_100016290(v110, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v111);
        }

        else
        {
        }

        v59 = v677;
        sub_1002C161C();
      }

      else
      {
        sub_1002CA7EC(1, 0x8000000000000000);
      }

      return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
    }

    v180 = v724;
    sub_1002CAEE4(v103, v104);
    v181 = Logger.logObject.getter();
    if (v101)
    {
      v182 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v181, v182))
      {
        v718 = v181;
        LODWORD(v723) = v182;
        v677 = v59;
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        ObjectType = swift_slowAlloc();
        *&v725[0] = ObjectType;
        *v183 = 138413058;
        *(v183 + 4) = v180;
        v719 = v184;
        *v184 = v724;
        *(v183 + 12) = 2080;
        v185 = NANManagementFrameType.description.getter(v100);
        v187 = sub_100002320(v185, v186, v725);

        *(v183 + 14) = v187;
        *(v183 + 22) = 2080;
        if (v101 == 1)
        {
          v189 = 0x756F2064656D6974;
          v188 = 0xE900000000000074;
        }

        else if (v101 == 2)
        {
          v188 = 0xE700000000000000;
          v189 = 0x646570706F7264;
        }

        else
        {
          v189 = 0xD000000000000010;
          v188 = 0x80000001004BA2F0;
        }

        v258 = v718;
        v354 = sub_100002320(v189, v188, v725);

        *(v183 + 24) = v354;
        *(v183 + 32) = 2080;
        v355 = *v102;
        v356 = *(v102 + 1);
        sub_1002CAEE4(*v102, v356);

        v357 = sub_1002BE12C(v355, v356);
        v359 = v358;
        sub_1002CAF2C(v355, v356);
        v360 = sub_100002320(v357, v359, v725);

        *(v183 + 34) = v360;
        sub_1002CAF2C(v103, v104);

        _os_log_impl(&_mh_execute_header, v258, v723, "%@ failed to transmit frame %s with status %s in %s", v183, 0x2Au);
        sub_100016290(v719, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();

        goto LABEL_147;
      }
    }

    else
    {
      v230 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v181, v230))
      {
        v231 = swift_slowAlloc();
        v677 = v59;
        v232 = v231;
        v233 = swift_slowAlloc();
        ObjectType = v233;
        v723 = swift_slowAlloc();
        *&v725[0] = v723;
        *v232 = 138412802;
        *(v232 + 4) = v180;
        *v233 = v724;
        *(v232 + 12) = 2080;
        v234 = NANManagementFrameType.description.getter(v100);
        v236 = sub_100002320(v234, v235, v725);
        LODWORD(v724) = v230;
        v237 = v236;

        *(v232 + 14) = v237;
        *(v232 + 22) = 2080;
        v238 = *v102;
        v239 = *(v102 + 1);
        sub_1002CAEE4(*v102, v239);

        v240 = sub_1002BE12C(v238, v239);
        v242 = v241;
        sub_1002CAF2C(v238, v239);
        v243 = sub_100002320(v240, v242, v725);

        *(v232 + 24) = v243;
        sub_1002CAF2C(v103, v104);

        _os_log_impl(&_mh_execute_header, v181, v724, "%@ successfully transmitted frame %s in %s", v232, 0x20u);
        sub_100016290(ObjectType, &qword_10058B780, &qword_100480AC0);

        swift_arrayDestroy();

        v59 = v677;

        return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
      }
    }

    sub_1002CAF2C(v103, v104);
    return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
  }

  if (v64 == 8)
  {
    v114 = NANBitmap.Channel.operatingClass.getter(v739);
    v671 = *v114;
    v115 = v114[1];
    v676 = v114[2];
    v675 = v114[3];
    v674 = v114[4];
    v116 = v114[5];
    v117 = v114[6];
    v663 = v114[7];
    v669 = v114[8];
    v668 = v114[9];
    v667 = v114[10];
    v666 = v114[11];
    v665 = v114[12];
    v664 = v114[13];
    v118 = qword_10059B818;
    v119 = v724;
    v120 = v724;
    isa = v118;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    v123 = os_log_type_enabled(v121, v122);
    v723 = v120;
    v718 = v115;
    v677 = v59;
    v672 = v117;
    v673 = v116;
    if (v123)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v716 = swift_slowAlloc();
      *&v725[0] = v716;
      *v124 = 138412546;
      *(v124 + 4) = v120;
      *v125 = v119;

      *(v124 + 12) = 2080;
      v126 = WiFiAddress.description.getter(v718 | (v676 << 8) | (v675 << 16) | (v674 << 24) | (v116 << 32) | (v117 << 40));
      v128 = sub_100002320(v126, v127, v725);

      *(v124 + 14) = v128;
      v120 = v723;
      _os_log_impl(&_mh_execute_header, v121, v122, "%@ datapath established with %s", v124, 0x16u);
      sub_100016290(v125, &qword_10058B780, &qword_100480AC0);
      v59 = v677;
      v129 = v718;

      sub_100002A00(v716);
    }

    else
    {
      v129 = v115;
    }

    v190 = v120 + qword_100594B08;
    swift_beginAccess();
    if (*(v190 + 74) == 2)
    {
      v175 = Logger.logObject.getter();
      v191 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v175, v191))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v725[0] = v193;
        *v192 = 136315394;
        v194 = WiFiAddress.description.getter(v129 | (v676 << 8) | (v675 << 16) | (v674 << 24) | (v673 << 32) | (v672 << 40));
        v196 = sub_100002320(v194, v195, v725);

        *(v192 + 4) = v196;
        *(v192 + 12) = 256;
        *(v192 + 14) = v671;
        _os_log_impl(&_mh_execute_header, v175, v191, "Established the datapath to %s[%hhu] even though we did not accept it in the datapath response. Force terminating it now", v192, 0xFu);
        sub_100002A00(v193);
      }

      goto LABEL_64;
    }

    v197 = *(v190 + 16);
    v715 = v190;
    if (v197 == 4)
    {
      v716 = 0;
    }

    else
    {
      v228 = *(v190 + 24);
      v227 = *(v190 + 32);
      sub_10000AB0C(v228, v227);
      v229 = NANServiceInfo.genericServiceProtocol.getter(v197, v228, v227);
      sub_1001842D0(v197, v228, v227);
      if (v229)
      {
        v716 = NANGenericServiceProtocol.apiDatapathServiceSpecificInfo.getter(v229);
      }

      else
      {
        v716 = 0;
      }

      v190 = v715;
    }

    v268 = v723;
    v269 = *(v723 + qword_100594B00);
    swift_unownedRetainStrong();
    sub_10040CAE8();

    v670 = sub_100337688(*(v190 + 2) | (*(v190 + 4) << 16));

    type metadata accessor for P2PTimer();
    v270 = v709;
    variable initialization expression of AWDLPeer.lastUpdated();
    v50 = DispatchTime.uptimeNanoseconds.getter();
    v271 = v706;
    v273 = v706 + 1;
    v272 = v706[1];
    v274 = v270;
    v275 = v710;
    v272(v274, v710);
    v276 = v708;
    (v271[2])(v708, v268 + qword_100594B28, v275);
    v277 = DispatchTime.uptimeNanoseconds.getter();
    v659 = v272;
    v660 = v273;
    v278 = (v272)(v276, v275);
    if (v50 < v277)
    {
      goto LABEL_316;
    }

    v279 = v268 + qword_10059B838;
    swift_beginAccess();
    *(v279 + 80) = &v50[-v277] / 0xF4240;
    v280 = (v268 + qword_100594B58);
    v281 = *(v268 + qword_100594B58 + 8);
    v282 = v714;
    if (v281)
    {
      v283 = (v268 + qword_100594B60);
      if ((*(v268 + qword_100594B60 + 4) & 1) == 0)
      {
        v284 = *v283;
        if (*v283 >= 1)
        {
          v285 = *v280;
          v286 = type metadata accessor for WiFiAwareMonitorClient();
          v287 = *(v286 + 48);
          v288 = *(v286 + 52);
          swift_allocObject();

          v289 = v285;
          v282 = v714;
          v290 = v284;
          v291 = v723;
          v292 = sub_10038982C(v289, v281, v290);
          v293 = *(v291 + qword_100594B10);
          *(v291 + qword_100594B10) = v292;
        }
      }
    }

    v658 = v280;
    swift_unownedRetainStrong();
    v294 = v269;
    v295 = (v675 << 16) | (v676 << 8) | (v674 << 24) | (v673 << 32) | (v672 << 40);
    v296 = v718;
    v297 = v700;
    sub_10040CD68(v295 | v718, v700);

    v298 = *(v297 + *(v282 + 72) + 8);
    sub_1002CB5A0(v297, type metadata accessor for NANPeer);
    if ((v298 & 0xFF00000000) == 0x300000000)
    {
      v299 = 0;
    }

    else
    {
      v299 = BYTE6(v298);
    }

    *(v279 + 104) = v299;
    swift_unownedRetainStrong();
    v300 = v711;
    sub_10040CD68(v295 | v296, v711);

    v301 = sub_1002E0E3C();
    sub_1002CB5A0(v300, type metadata accessor for NANPeer);
    *(v279 + 106) = v301;
    swift_unownedRetainStrong();
    v302 = v701;
    sub_10040CD68(v295 | v296, v701);
    v706 = v294;

    v303 = v702;
    sub_100012400(v302 + *(v282 + 76), v702, &unk_100596880, &unk_1004B0F70);
    sub_1002CB5A0(v302, type metadata accessor for NANPeer);
    v304 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
    if ((*(*(v304 - 8) + 48))(v303, 1, v304) == 1)
    {
      sub_100016290(v303, &unk_100596880, &unk_1004B0F70);
      v305 = 0;
    }

    else
    {
      v305 = *(v303 + 4);
      sub_1002CB5A0(v303, type metadata accessor for NANAttribute.CustomDeviceInformation);
    }

    v306 = v724;
    v307 = (v305 >> 4) & 2;
    if ((v305 & 0x10) != 0)
    {
      LOBYTE(v307) = 1;
    }

    *(v279 + 32) = v307;
    v308 = v716;
    v309 = v716;
    v310 = v670;

    sub_1002CA7EC(v308, v310 | 0x4000000000000000);

    v701 = v309;

    v702 = qword_10059B830;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v312 = Strong;
      sub_1002EB8C0();
    }

    type metadata accessor for NANDatapathPerformanceInstance();
    v313 = v715;
    v314 = *v715;
    v315 = v706;
    swift_unownedRetainStrong();
    v316 = v703;
    (*(v704 + 16))(v703, &isa[v306], v705);
    v317 = v316;
    v318 = v313;
    v319 = sub_10038F634(v314, v315, v295 | v296, v317);

    v320 = v723;
    v321 = *(v723 + qword_100594B80);
    *(v723 + qword_100594B80) = v319;

    v322 = *(v320 + qword_100594B40);
    v704 = v295;
    if (v322)
    {
LABEL_256:
      v572 = qword_100594B48;
      v573 = v699;
      v574 = v706;
      if ((*(v320 + qword_100594B48) & 1) == 0)
      {
        sub_100012400(v318 + 136, v725, &unk_1005974B0, &qword_1004AFCF0);
        if (BYTE8(v725[2]) == 255)
        {
          sub_100016290(v725, &unk_1005974B0, &qword_1004AFCF0);
        }

        else
        {
          if (BYTE8(v725[2]))
          {
            sub_100029954(v725, v728);
            *(v320 + v572) = 1;
            v575 = v729;
            v576 = v318;
            v577 = v730;
            sub_100029B34(v728, v729);
            v578 = *(v576 + 2);
            v579 = *(v576 + 3);
            v580 = *(v576 + 4) << 16;
            if (*(v576 + 128) == 1)
            {
              v581 = 0;
              v582 = 0xF000000000000000;
            }

            else
            {
              v581 = *(v576 + 88);
              v582 = *(v576 + 96);
              sub_10000AB0C(v581, v582);
            }

            v632 = ObjectType;
            v633 = swift_getWitnessTable();
            v634 = sub_10036DB68(v632, v633);
            (*(v577 + 8))(v578 | (v579 << 8) | v580, v581, v582, v634 & 0xFFFFFFFFFFFFFFLL, v575, v577);
            sub_100017554(v581, v582);
            sub_100002A00(v728);
LABEL_294:
            v59 = v677;
            v631 = v718;
            v318 = v715;
            v626 = v704;
LABEL_295:
            if ((*(v318 + 183) & 1) == 0)
            {
              v638 = swift_unknownObjectWeakLoadStrong();
              if (v638)
              {
                v639 = v638;
                if (*&v638[qword_10059B8B0])
                {
                  v640 = *&v638[qword_10059B8B0];

                  sub_100319568(v626 | v631, v670);
                }

                else
                {
                }
              }
            }

            return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
          }

          sub_10020C758(v725);
        }
      }

      swift_unownedRetainStrong();
      v583 = v696;
      WiFiInterface.preferences.getter();

      v584 = v698;
      v585 = Preferences.autoInternetSharingOnInfraLost.getter(v698);
      (*(v697 + 8))(v583, v584);
      if (v585)
      {
        swift_unownedRetainStrong();
        v586 = *(v574 + *(*v574 + 800));
        swift_unownedRetainStrong();

        v587 = v689;
        sub_1003EB210(v689);

        ObservableWiFiProperty.wrappedValue.getter(v573, v725);
        sub_100016290(v587, &qword_100594D50, &unk_1004AEBF0);
        if (*(&v725[0] + 1))
        {

          swift_unownedRetainStrong();
          v588 = *(v574 + *(*v574 + 800));
          swift_unownedRetainStrong();

          v589 = v687;
          sub_1003EB210(v687);

          v590 = *v686;
          v591 = swift_allocObject();
          v592 = v723;
          swift_unknownObjectWeakInit();
          v593 = v573;
          v594 = swift_allocObject();
          v595 = v721;
          v594[2] = v722;
          v594[3] = v595;
          v594[4] = v591;
          v596 = qword_100594B20;
          swift_beginAccess();
          v597 = v590;
          ObservableWiFiProperty.registerForChanges(on:using:valueUpdateHandler:)(v597, (v592 + v596), sub_1002CB1E0, v594, v593, v725);
          swift_endAccess();

          sub_100016290(v589, &qword_100594D50, &unk_1004AEBF0);
          v598 = v725[0];
          v599 = WORD6(v725[1]);
          v600 = DWORD2(v725[1]);
          swift_bridgeObjectRetain_n();
          v601 = v592;
          v602 = Logger.logObject.getter();
          v603 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v602, v603))
          {
            LODWORD(v724) = v603;
            v604 = v600 | (v599 << 32);
            v605 = swift_slowAlloc();
            v722 = swift_slowAlloc();
            *&v725[0] = v722;
            *v605 = 136315650;

            if (*(&v598 + 1))
            {
              v606 = v598;
            }

            else
            {
              v606 = 0;
            }

            if (*(&v598 + 1))
            {
              v607 = *(&v598 + 1);
            }

            else
            {
              v607 = 0xE000000000000000;
            }

            if (*(&v598 + 1))
            {
              v608 = v604 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v608 = 0x300000000;
            }

            v609 = sub_100002320(v606, v607, v725);

            *(v605 + 4) = v609;
            swift_bridgeObjectRelease_n();
            *(v605 + 12) = 2080;
            v611 = Optional<A>.description.getter(v608, v610);
            v613 = sub_100002320(v611, v612, v725);

            *(v605 + 14) = v613;
            swift_bridgeObjectRelease_n();
            *(v605 + 22) = 2080;
            v614 = *(v592 + v596);
            if (v614)
            {
              v615 = v719;
              v616 = v688;
              v617 = v602;
              v618 = v713;
              (*(v719 + 16))(v688, v614 + OBJC_IVAR____TtC7CoreP2P30WiFiPropertyUpdateRegistration_id, v713);
              v619 = UUID.uuidString.getter();
              v621 = v620;
              v622 = v618;
              v602 = v617;
              (*(v615 + 8))(v616, v622);
            }

            else
            {
              v621 = 0xE300000000000000;
              v619 = 7104878;
            }

            v637 = sub_100002320(v619, v621, v725);

            *(v605 + 24) = v637;

            _os_log_impl(&_mh_execute_header, v602, v724, "start monitoring infra '%s'[%s] for autoInternetSharingOnInfraLost got token %s. Make sure publisher device to set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'", v605, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          goto LABEL_294;
        }

        v627 = Logger.logObject.getter();
        v628 = static os_log_type_t.default.getter();
        v629 = os_log_type_enabled(v627, v628);
        v626 = v704;
        if (v629)
        {
          v630 = swift_slowAlloc();
          *v630 = 0;
          _os_log_impl(&_mh_execute_header, v627, v628, "start autoInternetSharingRequester immeidately as current WiFiNetwork 'nil'", v630, 2u);
        }

        sub_1002BE8E4();
        v318 = v715;
      }

      else
      {
        v623 = Logger.logObject.getter();
        v624 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v623, v624))
        {
          v625 = swift_slowAlloc();
          *v625 = 0;
          _os_log_impl(&_mh_execute_header, v623, v624, "autoInternetSharingRequesteris is disabled. To enable it, set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'. Make sure publisher device to set 'wifip2p Preferences autoInternetSharingOnInfraLost=true'", v625, 2u);
          v318 = v715;
        }

        v626 = v704;
      }

      v631 = v718;
      goto LABEL_295;
    }

    *(v320 + qword_100594B40) = 1;
    v59 = sub_1002C7410();
    v323 = (v320 + qword_100594B18);
    v324 = *(v320 + qword_100594B18 + 8);
    v657 = v320 + qword_100594B18;
    if (v324 >> 60 == 15)
    {
      v705 = WiFiAddress.ipv6LinkLocalAddress.getter(v295 | v296);
      v326 = v325;
      v327 = v296;
      v329 = v328;
      v331 = v330;
      v332 = v295;
      v333 = v327;
    }

    else
    {
      v334 = *v323;
      sub_10000AB0C(*v323, v324);
      v705 = InterfaceIdentifier.ipv6Address.getter(v334, v324);
      v326 = v335;
      v336 = v296;
      v329 = v337;
      v331 = v338;
      sub_100017554(v334, v324);
      v332 = v295;
      v333 = v336;
    }

    v339 = (*(*v59 + 416))(v725);
    v340 = type metadata accessor for WiFiInterface.NeighborDiscoveryTable();
    v341 = v326;
    v50 = 0;
    WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v332 | v333, v705, v341, v329, v331, v340);
    v342 = v340;
    v339(v725, 0);

    v343 = v723;
    v344 = sub_1002C7410();
    v345 = v706;
    swift_unownedRetainStrong();
    v346 = *(v345 + *(*v345 + 472));

    if (!v346 || (, v344 != v346))
    {
LABEL_153:
      sub_1002C7410();
      LODWORD(v705) = WiFiInterface.interfaceIndex.getter();

      v362 = swift_unknownObjectWeakLoadStrong();
      v363 = v719;
      if (!v362)
      {
        goto LABEL_156;
      }

      v364 = v362;
      v365 = sub_1002EB914();

      if (!v365)
      {
        goto LABEL_156;
      }

      swift_unownedRetainStrong();
      sub_10040CAE8();

      v366 = *(v715 + 8) | (*(v715 + 10) << 16);
      v367 = sub_10033787C();

      if ((v367 & 1) == 0)
      {
        v278 = sub_1002BE098();
        if (v278 >> 62)
        {
          goto LABEL_317;
        }

        v384 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_163:
        if (v384)
        {
          v385 = 0;
          v703 = v278 & 0xC000000000000001;
          v700 = (v278 & 0xFFFFFFFFFFFFFF8);
          v386 = 0x100000000000000;
          if (!v663)
          {
            v386 = 0;
          }

          v695 = v386;
          v662 = v671 | (v718 << 8) | (v676 << 16) | (v675 << 24) | (v674 << 32) | (v673 << 40) | (v672 << 48);
          v661 = v664 << 40;
          v387 = v669 | (v668 << 8);
          v388 = (v667 << 16) | (v666 << 24) | (v665 << 32);
          do
          {
            if (v703)
            {
              v389 = v384;
              v390 = v278;
              v391 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v392 = v385 + 1;
              if (__OFADD__(v385, 1))
              {
LABEL_174:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v385 >= *(v700 + 2))
              {
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                v655 = v278;
                v384 = _CocoaArrayWrapper.endIndex.getter();
                v278 = v655;
                goto LABEL_163;
              }

              v389 = v384;
              v390 = v278;
              v391 = *(v278 + 8 * v385 + 32);
              swift_unknownObjectRetain();
              v392 = v385 + 1;
              if (__OFADD__(v385, 1))
              {
                goto LABEL_174;
              }
            }

            *&v725[0] = v391;
            v59 = v59 & 0xFFFF000000000000 | v387 | v388 | v661;
            sub_1002C753C(v725, v662 | v695, v59, v723, v705, v716);
            swift_unknownObjectRelease();
            ++v385;
            v384 = v389;
            v278 = v390;
          }

          while (v392 != v389);
        }

        v363 = v719;
        v343 = v723;
      }

      else
      {
LABEL_156:
        v368 = sub_1002BE0E0();
        if (v368)
        {
          v369 = v368;
          v370 = v50;
          v371 = *(v657 + 8);
          if (v371 >> 60 == 15)
          {
            v372 = 0;
            v373 = 0;
            v374 = 0;
            v375 = 1;
            v376 = v718;
          }

          else
          {
            v377 = *v657;
            sub_10000AB0C(*v657, *(v657 + 8));
            v372 = InterfaceIdentifier.ipv6Address.getter(v377, v371);
            v373 = v378;
            v374 = v379;
            v375 = v380;
            v376 = v718;
            sub_100017554(v377, v371);
          }

          v381 = WiFiAddress.apiAddress(with:)(v372, v373, v374, v375, v704 | v376);
          sub_10011AF40(v372, v373, v374, v375);
          v382 = objc_allocWithZone(WiFiAwarePublisherDataSessionHandle);
          v383 = [v382 initWithDatapathID:v671 initiatorDataAddress:v381];

          [v369 publishDataConfirmedForHandle:v383 localInterfaceIndex:v705 serviceSpecificInfo:v701];
          swift_unknownObjectRelease();
          v363 = v719;
          v343 = v723;
          v50 = v370;
        }
      }

      v393 = swift_unknownObjectWeakLoadStrong();
      v59 = &unk_100588000;
      if (!v393)
      {
        goto LABEL_179;
      }

      v394 = v393;
      v395 = sub_1002EB914();

      if (!v395)
      {
        goto LABEL_179;
      }

      swift_unownedRetainStrong();
      sub_10040CAE8();

      v396 = *(v715 + 8) | (*(v715 + 10) << 16);
      v397 = sub_10033787C();

      if ((v397 & 1) == 0)
      {
        v278 = sub_1002BE098();
        if (v278 >> 62)
        {
          v656 = v278;
          v407 = _CocoaArrayWrapper.endIndex.getter();
          v278 = v656;
        }

        else
        {
          v407 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v407)
        {
          v408 = 0;
          v703 = v278 & 0xC000000000000001;
          v700 = (v278 & 0xFFFFFFFFFFFFFF8);
          v409 = 0x100000000000000;
          if (!v663)
          {
            v409 = 0;
          }

          v695 = v409;
          v682 = v671 | (v718 << 8) | (v676 << 16) | (v675 << 24) | (v674 << 32) | (v673 << 40) | (v672 << 48);
          v681 = v664 << 40;
          v410 = v669 | (v668 << 8);
          v411 = (v667 << 16) | (v666 << 24) | (v665 << 32);
          do
          {
            if (v703)
            {
              v412 = v407;
              v413 = v278;
              v414 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v415 = v408 + 1;
              if (__OFADD__(v408, 1))
              {
                goto LABEL_197;
              }
            }

            else
            {
              if (v408 >= *(v700 + 2))
              {
                goto LABEL_315;
              }

              v412 = v407;
              v413 = v278;
              v414 = *(v278 + 8 * v408 + 32);
              swift_unknownObjectRetain();
              v415 = v408 + 1;
              if (__OFADD__(v408, 1))
              {
LABEL_197:
                __break(1u);
                break;
              }
            }

            *&v725[0] = v414;
            v59 = v59 & 0xFFFF000000000000 | v410 | v411 | v681;
            sub_1002C7670(v725, v682 | v695, v59, v723, v705, v716);
            swift_unknownObjectRelease();
            ++v408;
            v407 = v412;
            v278 = v413;
          }

          while (v415 != v412);
        }

        v363 = v719;
        v343 = v723;
      }

      else
      {
LABEL_179:
        v398 = sub_1002BE0E0();
        if (v398)
        {
          v399 = v398;
          if ([v398 respondsToSelector:"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:"])
          {
            v400 = *(v657 + 8);
            v401 = v50;
            if (v400 >> 60 == 15)
            {
              v402 = 0;
              v403 = 0;
              v404 = 0;
              v405 = 1;
              v406 = v718;
            }

            else
            {
              v416 = *v657;
              sub_10000AB0C(*v657, *(v657 + 8));
              v402 = InterfaceIdentifier.ipv6Address.getter(v416, v400);
              v403 = v417;
              v404 = v418;
              v405 = v419;
              v420 = v416;
              v406 = v718;
              sub_100017554(v420, v400);
            }

            v421 = v704;
            v422 = WiFiAddress.apiAddress(with:)(v402, v403, v404, v405, v704 | v406);
            sub_10011AF40(v402, v403, v404, v405);
            v423 = objc_allocWithZone(WiFiAwarePublisherDataSessionHandle);
            v424 = [v423 initWithDatapathID:v671 initiatorDataAddress:v422];

            swift_unownedRetainStrong();
            v425 = v421 | v406;
            v426 = v680;
            sub_10040CD68(v425, v680);

            v427 = v682;
            sub_100012400(v426 + *(v714 + 88), v682, &qword_10058F4D0, &qword_100491AB0);
            sub_1002CB5A0(v426, type metadata accessor for NANPeer);
            v428 = v681;
            sub_100012400(v427, v681, &qword_10058F4D0, &qword_100491AB0);
            v429 = v719;
            v430 = v713;
            if ((*(v719 + 48))(v428, 1, v713) == 1)
            {
              v431 = 0;
            }

            else
            {
              v431 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v429 + 8))(v428, v430);
            }

            v343 = v723;
            v50 = v401;
            [v399 publishDataConfirmedForHandle:v424 localInterfaceIndex:v705 serviceSpecificInfo:v701 pairingKeyStoreID:{v431, v657}];
            swift_unknownObjectRelease();

            sub_100016290(v427, &qword_10058F4D0, &qword_100491AB0);
            v363 = v719;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      v682 = v50;
      swift_unownedRetainStrong();
      v432 = sub_1002BE4F0();
      v433 = v691;
      sub_10040CD68(v432, v691);

      v434 = v714;
      v435 = v692;
      sub_100012400(v433 + *(v714 + 88), v692, &qword_10058F4D0, &qword_100491AB0);
      sub_1002CB5A0(v433, type metadata accessor for NANPeer);
      v436 = *(v363 + 48);
      v437 = v713;
      v438 = v436(v435, 1, v713);
      v703 = v363 + 48;
      v700 = v436;
      if (v438 == 1)
      {
        swift_unownedRetainStrong();
        v439 = v711;
        sub_10040CD68(v704 | v718, v711);

        v440 = v439 + *(v434 + 88);
        v441 = v712;
        sub_100012400(v440, v712, &qword_10058F4D0, &qword_100491AB0);
        sub_1002CB5A0(v439, type metadata accessor for NANPeer);
        v442 = v436(v435, 1, v713);
        v443 = v693;
        if (v442 != 1)
        {
          sub_100016290(v435, &qword_10058F4D0, &qword_100491AB0);
        }
      }

      else
      {
        v441 = v712;
        (*(v363 + 32))(v712, v435, v437);
        (*(v363 + 56))(v441, 0, 1, v437);
        v443 = v693;
      }

      sub_100012400(v441, v443, &qword_10058F4D0, &qword_100491AB0);
      v444 = v343;
      v445 = Logger.logObject.getter();
      v446 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v445, v446))
      {
        v447 = swift_slowAlloc();
        v714 = swift_slowAlloc();
        v728[0] = v714;
        *v447 = 136315394;
        v448 = *(v715 + 208);
        v449 = *(v715 + 216);
        v450 = *(v715 + 224);
        v451 = *(v715 + 232);
        v452 = *(v715 + 240);
        v453 = *(v715 + 248);
        *&v725[0] = *(v715 + 200);
        *(&v725[0] + 1) = v448;
        *&v725[1] = v449;
        *(&v725[1] + 1) = v450;
        *&v725[2] = v451;
        *(&v725[2] + 1) = v452;
        *&v725[3] = v453;
        sub_10020D510(*&v725[0], v448);
        sub_10005DC58(&qword_100595C10, &unk_100499060);
        v454 = String.init<A>(describing:)();
        v456 = sub_100002320(v454, v455, v728);

        *(v447 + 4) = v456;

        *(v447 + 12) = 2080;
        sub_100012400(v443, v684, &qword_10058F4D0, &qword_100491AB0);
        v457 = String.init<A>(describing:)();
        v459 = sub_100002320(v457, v458, v728);

        *(v447 + 14) = v459;
        sub_100016290(v443, &qword_10058F4D0, &qword_100491AB0);
        _os_log_impl(&_mh_execute_header, v445, v446, "Pairing Metadata: %s, PairingKeystoreUUID: %s", v447, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100016290(v443, &qword_10058F4D0, &qword_100491AB0);
      }

      v460 = v707;
      v461 = v694;
      v462 = v444;
      v463 = Logger.logObject.getter();
      v464 = static os_log_type_t.default.getter();
      v465 = os_log_type_enabled(v463, v464);
      v711 = v462;
      if (v465)
      {
        v466 = swift_slowAlloc();
        *&v725[0] = swift_slowAlloc();
        *v466 = 136315394;
        v467 = WiFiAddress.description.getter(v704 | v718);
        v469 = sub_100002320(v467, v468, v725);

        *(v466 + 4) = v469;
        *(v466 + 12) = 2080;
        v470 = sub_1002BE4F0();

        v471 = WiFiAddress.description.getter(v470);
        v473 = sub_100002320(v471, v472, v725);

        *(v466 + 14) = v473;

        _os_log_impl(&_mh_execute_header, v463, v464, "Peer: %s [NMI: %s]", v466, 0x16u);
        swift_arrayDestroy();
        v460 = v707;
      }

      else
      {
      }

      v59 = v677;
      v474 = v713;
      v320 = v723;
      sub_10005DC58(&unk_10058F4C0, &unk_100492870);
      v714 = swift_allocBox();
      v476 = v475;
      v477 = type metadata accessor for WiFiAwarePairedDevice();
      v478 = *(v477 - 8);
      v479 = *(v478 + 7);
      v694 = v477;
      v695 = v476;
      v479(v476, 1, 1);
      v480 = v712;
      sub_100012400(v712, v461, &qword_10058F4D0, &qword_100491AB0);
      v481 = v700(v461, 1, v474);
      v482 = v715;
      v693 = v478;
      if (v481 == 1)
      {
        sub_100016290(v461, &qword_10058F4D0, &qword_100491AB0);
        v483 = v718;
LABEL_216:
        v484 = Logger.logObject.getter();
        v485 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v484, v485))
        {
          v486 = swift_slowAlloc();
          *v486 = 0;
          _os_log_impl(&_mh_execute_header, v484, v485, "Unable to determine paired device. Missing Bundle ID or PairingKeyStoreUUID", v486, 2u);
        }

        v318 = v715;
LABEL_237:
        v539 = swift_unknownObjectWeakLoadStrong();
        if (!v539)
        {
          goto LABEL_240;
        }

        v540 = v539;
        v541 = sub_1002EB914();

        if (!v541 || (swift_unownedRetainStrong(), sub_10040CAE8(), , v542 = *(v318 + 10), v543 = *(v318 + 8), v544 = sub_10033787C(), , (v544 & 1) != 0))
        {
LABEL_240:
          v545 = sub_1002BE0E0();
          if (v545)
          {
            v546 = v545;
            if ([v545 respondsToSelector:"publishDataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:pairingKeyStoreID:deviceID:"])
            {
              v547 = *(v657 + 8);
              if (v547 >> 60 == 15)
              {
                v548 = 0;
                v549 = 0;
                v550 = 0;
                v551 = 1;
                v552 = v483;
              }

              else
              {
                v557 = *v657;
                sub_10000AB0C(*v657, *(v657 + 8));
                v548 = InterfaceIdentifier.ipv6Address.getter(v557, v547);
                v549 = v558;
                v550 = v559;
                v551 = v560;
                v561 = v557;
                v480 = v712;
                v552 = v718;
                sub_100017554(v561, v547);
              }

              v562 = WiFiAddress.apiAddress(with:)(v548, v549, v550, v551, v704 | v552);
              sub_10011AF40(v548, v549, v550, v551);
              v563 = objc_allocWithZone(WiFiAwarePublisherDataSessionHandle);
              v564 = [v563 initWithDatapathID:v671 initiatorDataAddress:v562];

              v565 = v695;
              swift_beginAccess();
              v566 = v694;
              v567 = 0;
              if (!v693[6](v565, 1, v694))
              {
                v567 = *(v565 + *(v566 + 5));
              }

              v568 = v679;
              sub_100012400(v480, v679, &qword_10058F4D0, &qword_100491AB0);
              v569 = v713;
              v570 = v700(v568, 1, v713);
              v59 = v677;
              if (v570 == 1)
              {
                v571 = 0;
              }

              else
              {
                v571 = UUID._bridgeToObjectiveC()().super.isa;
                (*(v719 + 8))(v568, v569);
              }

              v320 = v723;
              [v546 publishDataConfirmedForHandle:v564 localInterfaceIndex:v705 serviceSpecificInfo:v701 pairingKeyStoreID:v571 deviceID:{v567, v657}];

              swift_unknownObjectRelease();
              goto LABEL_254;
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

LABEL_255:
          sub_100016290(v480, &qword_10058F4D0, &qword_100491AB0);
          goto LABEL_256;
        }

        v553 = v711;
        v554 = sub_1002BE098();
        __chkstk_darwin();
        *(&v657 - 64) = v671;
        *(&v657 - 63) = v483;
        v555 = v675;
        *(&v657 - 62) = v676;
        *(&v657 - 61) = v555;
        v556 = v673;
        *(&v657 - 60) = v674;
        *(&v657 - 59) = v556;
        *(&v657 - 58) = v672;
        *(&v657 - 57) = v663;
        *(&v657 - 56) = v669;
        *(&v657 - 55) = v668;
        *(&v657 - 54) = v667;
        *(&v657 - 53) = v666;
        *(&v657 - 52) = v665;
        *(&v657 - 51) = v664;
        *(&v657 - 6) = v553;
        *(&v657 - 10) = v705;
        *(&v657 - 4) = v716;
        *(&v657 - 3) = v480;
        *(&v657 - 2) = v695;
        sub_100447F80(sub_1002CB1EC, (&v657 - 10), v554);

LABEL_254:
        v318 = v715;
        goto LABEL_255;
      }

      v487 = *(v719 + 32);
      v487(v460, v461, v474);
      v488 = *(v482 + 208);
      if (v488)
      {
        v489 = (v482 + 200);
      }

      else
      {
        v489 = v658;
        v488 = v658[1];
        if (!v488)
        {
          (*(v719 + 8))(v460, v474);
          v59 = v677;
          v483 = v718;
          v480 = v712;
          goto LABEL_216;
        }
      }

      v692 = *v489;

      v490 = dispatch_semaphore_create(0);
      v491 = type metadata accessor for TaskPriority();
      (*(*(v491 - 8) + 56))(v690, 1, 1, v491);
      v492 = v719 + 16;
      v493 = v688;
      v691 = *(v719 + 16);
      (v691)(v688, v460, v474);
      v685 = v492;
      v494 = (*(v492 + 64) + 88) & ~*(v492 + 64);
      v495 = swift_allocObject();
      *(v495 + 2) = 0;
      *(v495 + 3) = 0;
      v496 = v721;
      *(v495 + 4) = v722;
      *(v495 + 5) = v496;
      v497 = v714;
      *(v495 + 6) = v490;
      *(v495 + 7) = v497;
      v498 = v487;
      v499 = v711;
      v500 = v692;
      *(v495 + 8) = v711;
      *(v495 + 9) = v500;
      *(v495 + 10) = v488;
      v498(&v495[v494], v493, v474);
      v501 = v499;
      v502 = v490;

      v503 = v488;

      sub_1003ACB3C(0, 0, v690, &unk_1004AEC08, v495);

      v504 = v708;
      static DispatchTime.now()();
      v505 = v709;
      + infix(_:_:)();
      v506 = v710;
      v507 = v659;
      v659(v504, v710);
      OS_dispatch_semaphore.wait(timeout:)();
      v507(v505, v506);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v508 = v678;
        v509 = v707;
        v510 = v713;
        (v691)(v678, v707, v713);
        v511 = v503;
        swift_bridgeObjectRetain_n();
        v512 = Logger.logObject.getter();
        v513 = static os_log_type_t.error.getter();
        v514 = os_log_type_enabled(v512, v513);
        v320 = v723;
        if (v514)
        {
          v515 = swift_slowAlloc();
          v710 = swift_slowAlloc();
          *&v725[0] = v710;
          *v515 = 136315394;

          v516 = sub_100002320(v692, v511, v725);

          *(v515 + 4) = v516;
          swift_bridgeObjectRelease_n();
          *(v515 + 12) = 2080;
          sub_10000BAD0();
          v517 = dispatch thunk of CustomStringConvertible.description.getter();
          v519 = sub_100002320(v517, v518, v725);

          *(v515 + 14) = v519;

          v520 = *(v719 + 8);
          v520(v508, v510);
          _os_log_impl(&_mh_execute_header, v512, v513, "Timed out waiting to get paired device for %s [PairingKeyStoreID: %s]", v515, 0x16u);
          swift_arrayDestroy();

          v320 = v723;

          v521 = v707;
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v520 = *(v719 + 8);
          v520(v508, v510);

          v521 = v509;
        }

        v520(v521, v510);
        v59 = v677;
      }

      else
      {
        (*(v719 + 8))(v707, v713);

        v59 = v677;
        v320 = v723;
      }

      v483 = v718;
      v318 = v715;
      v480 = v712;
      goto LABEL_237;
    }

    swift_unownedRetainStrong();
    v347 = *(v657 + 8);
    if (v347 >> 60 == 15)
    {
      v348 = v704;
      v349 = v718;
      v705 = WiFiAddress.ipv6LinkLocalAddress.getter(v704 | v718);
      v703 = v350;
      v352 = v351;
      v59 = v353;
    }

    else
    {
      v641 = *v657;
      sub_10000AB0C(*v657, *(v657 + 8));
      v705 = InterfaceIdentifier.ipv6Address.getter(v641, v347);
      v703 = v642;
      v352 = v643;
      v59 = v644;
      v349 = v718;
      sub_100017554(v641, v347);
      v348 = v704;
    }

    v645 = *(*v706 + 152);
    swift_beginAccess();
    WiFiInterface.NeighborDiscoveryTable.postPeerPresence(macAddress:ipv6Address:)(v348 | v349, v705, v703, v352, v59, v342);
LABEL_308:
    swift_endAccess();

    v343 = v723;
    goto LABEL_153;
  }

  v78 = v724;
  if (v64 == 9)
  {
    v162 = NANBitmap.Channel.operatingClass.getter(v739);
    v723 = *(v162 + 1);
    v163 = *(v162 + 2);
    v164 = *(v162 + 3);
    v715 = *(v162 + 4);
    v714 = *(v162 + 5);
    v713 = *(v162 + 6);
    v711 = *(v162 + 8);
    LODWORD(v710) = *(v162 + 16);
    v165 = *&v78[qword_100594B00];
    swift_unownedRetainStrong();
    v166 = *(*v165 + 96);
    swift_beginAccess();
    v167 = v716;
    v168 = isa;
    v169 = v718;
    (*(isa + 2))(v716, v165 + v166, v718);
    v712 = v165;

    v170 = &v78[qword_100594B08];
    swift_beginAccess();
    v171 = *(v170 + 10);
    v172 = *(v170 + 4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 360))(v172 | (v171 << 16), v169, AssociatedConformanceWitness);
    v719 = v164;
    ObjectType = v163;
    v208 = v207;
    (v168[1].isa)(v167, v169);
    v209 = &v78[qword_10059B838];
    swift_beginAccess();
    *(v209 + 140) = v208;
    v210 = v723;
    v211 = &v78[qword_100594B38];
    v213 = *&v78[qword_100594B38];
    v212 = *&v78[qword_100594B38 + 8];
    if (v212 >> 62)
    {
      if (v212 >> 62 == 1 || __PAIR128__(v212, v213) < __PAIR128__(0x8000000000000000, 2))
      {
        v214 = 0x7165722072656570;
        v215 = 3;
        v216 = 37;
LABEL_78:
        sub_1002C057C(v215, v214, 0xEC00000074736575, v216);
LABEL_79:
        v218 = v719;
        v217 = ObjectType;
        v219 = v721;
        goto LABEL_232;
      }

      if (v212 != 0x8000000000000000 || v213 != 2)
      {
        v214 = 0x7165722072657375;
        v215 = 2;
        v216 = 45;
        goto LABEL_78;
      }

      v677 = v59;
      v249 = v78;
      v250 = Logger.logObject.getter();
      v251 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v250, v251))
      {

        v59 = v677;
        goto LABEL_79;
      }

      LODWORD(isa) = v251;
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v737[0] = v254;
      *v252 = 138412802;
      *(v252 + 4) = v249;
      v710 = v253;
      *v253 = v78;
      *(v252 + 12) = 2080;
      v718 = v250;
      v716 = v254;
      if (v711 <= 1)
      {
        if (v711 == -1)
        {
          v255 = 0x80000001004BA5E0;
          v256 = 0xD000000000000011;
          goto LABEL_313;
        }

        if (v711 == 1)
        {
          v256 = 0x754F2064656D6954;
          v255 = 0xE900000000000074;
          goto LABEL_313;
        }
      }

      else
      {
        switch(v711)
        {
          case 2:
            v256 = 0x7165522072657355;
            v255 = 0xEE00646574736575;
            goto LABEL_313;
          case 3:
            v256 = 0x6961462070696843;
            v255 = 0xEC0000006572756CLL;
            goto LABEL_313;
          case 4:
            v255 = 0x80000001004BA540;
            v256 = 0xD000000000000018;
LABEL_313:
            v646 = sub_100002320(v256, v255, v737);

            *(v252 + 14) = v646;
            *(v252 + 22) = 2080;
            v648 = *v211;
            v647 = *(v211 + 1);
            sub_1002CAEE4(*v211, v647);

            v649 = v721;
            v650 = sub_1002BE12C(v648, v647);
            v652 = v651;
            sub_1002CAF2C(v648, v647);
            v653 = sub_100002320(v650, v652, v737);

            *(v252 + 24) = v653;
            v219 = v649;

            v654 = v718;
            _os_log_impl(&_mh_execute_header, v718, isa, "%@ got early termination (%s) when %s, ignoring", v252, 0x20u);
            sub_100016290(v710, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();

            v59 = v677;
            v210 = v723;
            v218 = v719;
            v217 = ObjectType;
LABEL_232:
            swift_unownedRetainStrong();
            v531 = sub_10040CAE8();

            v532 = qword_10059B9C8;
            swift_beginAccess();
            v533 = *(v531 + v532);

            v731 = v210;
            v732 = v217;
            v733 = v218;
            v534 = v714;
            v535 = v715;
            v734 = v715;
            v735 = v714;
            v536 = v713;
            v736 = v713;
            _s17InitiatorInstanceCMa_0();
            _s17ResponderInstanceCMa_0();
            type metadata accessor for Either();
            sub_1002CAFC4();
            Dictionary.subscript.getter();

            v537 = v727;
            if (v727 != 255)
            {
              v538 = v726;
              sub_100428A58(v726, v727 & 1, v722, v219);
              swift_unownedRetainStrong();
              sub_10040CAE8();

              sub_1003379B8(v723 | (ObjectType << 8) | (v719 << 16) | (v535 << 24) | (v534 << 32) | (v536 << 40));

              sub_1002CB018(v538, v537);
            }

            return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
        }
      }

      v255 = 0xE700000000000000;
      v256 = 0x6E776F6E6B6E55;
      goto LABEL_313;
    }

    v220 = v78;
    v221 = Logger.logObject.getter();
    LODWORD(v718) = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v221, v718))
    {

      v245 = v710;
      v219 = v721;
LABEL_231:
      sub_1002C057C(v711, 0xD00000000000001BLL, 0x80000001004BE5E0, v245);
      v218 = v719;
      v217 = ObjectType;
      goto LABEL_232;
    }

    isa = v221;
    v677 = v59;
    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    v737[0] = v224;
    *v222 = 138413058;
    *(v222 + 4) = v220;
    v709 = v223;
    *v223 = v78;
    *(v222 + 12) = 2080;
    v716 = v224;
    if (v711 <= 1)
    {
      if (v711 == -1)
      {
        v225 = 0x80000001004BA5E0;
        v226 = 0xD000000000000011;
        goto LABEL_230;
      }

      if (v711 == 1)
      {
        v226 = 0x754F2064656D6954;
        v225 = 0xE900000000000074;
        goto LABEL_230;
      }
    }

    else
    {
      switch(v711)
      {
        case 2:
          v226 = 0x7165522072657355;
          v225 = 0xEE00646574736575;
          goto LABEL_230;
        case 3:
          v226 = 0x6961462070696843;
          v225 = 0xEC0000006572756CLL;
          goto LABEL_230;
        case 4:
          v225 = 0x80000001004BA540;
          v226 = 0xD000000000000018;
LABEL_230:
          v522 = sub_100002320(v226, v225, v737);

          *(v222 + 14) = v522;
          *(v222 + 22) = 2080;
          v523 = *v211;
          v524 = *(v211 + 1);
          sub_1002CAEE4(*v211, v524);

          v525 = v721;
          v526 = sub_1002BE12C(v523, v524);
          v528 = v527;
          sub_1002CAF2C(v523, v524);
          v529 = sub_100002320(v526, v528, v737);

          *(v222 + 24) = v529;
          v219 = v525;

          *(v222 + 32) = 2048;
          *(v222 + 34) = v213;
          v530 = isa;
          _os_log_impl(&_mh_execute_header, isa, v718, "%@ got early termination (%s) when %s for retry #%ld", v222, 0x2Au);
          sub_100016290(v709, &qword_10058B780, &qword_100480AC0);

          swift_arrayDestroy();

          v59 = v677;
          v210 = v723;
          v245 = v710;
          goto LABEL_231;
      }
    }

    v225 = 0xE700000000000000;
    v226 = 0x6E776F6E6B6E55;
    goto LABEL_230;
  }

  if (v64 != 10)
  {
LABEL_45:
    sub_1001854F8(v738);
LABEL_46:
    sub_1002CB538(v62, v48, type metadata accessor for DriverEvent);
    v130 = v724;
    v131 = v724;
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v137 = v130;
      v138 = v59;
      v139 = v136;
      v739[0] = v136;
      *v134 = 138412546;
      *(v134 + 4) = v131;
      *v135 = v137;

      *(v134 + 12) = 2080;
      v140 = DriverEvent.description.getter();
      v142 = sub_100002320(v140, v141, v739);

      *(v134 + 14) = v142;
      sub_1002CB5A0(v48, type metadata accessor for DriverEvent);
      _os_log_impl(&_mh_execute_header, v132, v133, "%@ received an unexpected %s", v134, 0x16u);
      sub_100016290(v135, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v139);
      v59 = v138;
    }

    else
    {

      sub_1002CB5A0(v48, type metadata accessor for DriverEvent);
    }

    return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
  }

  v79 = NANBitmap.Channel.operatingClass.getter(v739);
  v80 = swift_unknownObjectWeakLoadStrong();
  if (!v80 || (v81 = v80[qword_10059B898], v80, v81 != 1))
  {
    v174 = v78;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = v59;
      v179 = swift_slowAlloc();
      *v177 = 138412290;
      *(v177 + 4) = v174;
      *v179 = v78;

      _os_log_impl(&_mh_execute_header, v175, v176, "%@ cannot accept host assist request because the associated publisher is no longer active", v177, 0xCu);
      sub_100016290(v179, &qword_10058B780, &qword_100480AC0);
      v59 = v178;
    }

    else
    {
    }

LABEL_64:

    sub_1002C1BE0();
    return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
  }

  v677 = v59;
  v82 = &v78[qword_100594B38];
  v83 = *&v78[qword_100594B38 + 8];
  if (v83 >> 62 && (v83 >> 62 == 1 || __PAIR128__(v83, *v82) >= __PAIR128__(0x8000000000000000, 2)))
  {
    v257 = v78;
    v258 = Logger.logObject.getter();
    v259 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v258, v259))
    {

LABEL_148:
      v59 = v677;
      return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
    }

    v260 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v723 = swift_slowAlloc();
    *&v725[0] = v723;
    *v260 = 138412546;
    *(v260 + 4) = v257;
    *v261 = v78;
    *(v260 + 12) = 2080;
    v262 = *v82;
    v263 = *(v82 + 1);
    sub_1002CAEE4(*v82, v263);

    v264 = sub_1002BE12C(v262, v263);
    v266 = v265;
    sub_1002CAF2C(v262, v263);
    v267 = sub_100002320(v264, v266, v725);

    *(v260 + 14) = v267;

    _os_log_impl(&_mh_execute_header, v258, v259, "%@ ignoring host assist request when %s", v260, 0x16u);
    sub_100016290(v261, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v723);

LABEL_147:

    goto LABEL_148;
  }

  v84 = &v78[qword_100594B08];
  swift_beginAccess();
  if (v84[74] == 1)
  {
    if (((*(v79 + 15) - 1) & 0xF8) != 0)
    {
      v85 = 2;
    }

    else
    {
      v85 = 0x101020102020200uLL >> (8 * (*(v79 + 15) - 1));
    }

    v84[74] = v85;
  }

  v86 = v78;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v723 = swift_slowAlloc();
    v728[0] = v723;
    *v89 = 138412802;
    *(v89 + 4) = v86;
    *v90 = v78;
    *(v89 + 12) = 2080;
    LOBYTE(v737[0]) = *(v79 + 15);
    v91 = String.init<A>(describing:)();
    v93 = sub_100002320(v91, v92, v728);

    *(v89 + 14) = v93;
    *(v89 + 22) = 2080;
    v94 = v84[74];

    if (v94)
    {
      if (v94 == 1)
      {
        v95 = 0xE800000000000000;
        v96 = 0x747065636361;
      }

      else
      {
        v95 = 0xE800000000000000;
        v96 = 0x7463656A6572;
      }

      v635 = v96 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else
    {
      v635 = 0x65756E69746E6F63;
      v95 = 0xE900000000000064;
    }

    v636 = sub_100002320(v635, v95, v728);

    *(v89 + 24) = v636;

    _os_log_impl(&_mh_execute_header, v87, v88, "%@ received host assist request for %s. Responding with %s", v89, 0x20u);
    sub_100016290(v90, &qword_10058B780, &qword_100480AC0);

    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1002C12E0();
  v59 = v677;
  sub_1002CA7EC(0, 0);
  return sub_1002CB5A0(v59, type metadata accessor for DriverEvent);
}