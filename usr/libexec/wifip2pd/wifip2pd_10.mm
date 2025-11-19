void (*NANGenericServiceProtocol.textInfo.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  *v4 = NANGenericServiceProtocol.textInfo.getter(*v1);
  v4[1] = v7;
  return sub_1000CB204;
}

uint64_t sub_1000CB218(uint64_t a1, char a2)
{
  v4 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v8 = sub_10007CD10(a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1000D2A28(*(a1 + 56) + *(v4 + 72) * v8, v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
  sub_1000C8D6C(&v11);
  sub_1000D2AF8(v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v11;
}

uint64_t sub_1000CB330(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v7 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v15 - v10);
  if (a2 >> 60 == 15)
  {
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    *v11 = a1;
    v11[1] = a2;
    v13 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v9, a4);
  return sub_100016290(v11, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.blob.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  *v4 = NANGenericServiceProtocol.blob.getter(*v1);
  v4[1] = v7;
  return sub_1000CB5C4;
}

void sub_1000CB5D0(uint64_t **a1, char a2, uint64_t a3, char a4)
{
  v5 = *a1;
  if (a2)
  {
    v7 = *v5;
    v6 = v5[1];
    v8 = v5[3];
    if (v6 >> 60 == 15)
    {
      v9 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    }

    else
    {
      *v8 = v7;
      v8[1] = v6;
      v13 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      swift_storeEnumTagMultiPayload();
      (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    }

    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    sub_100012400(v16, v15, &qword_10058BB48, &unk_100483040);
    sub_10005D67C(v7, v6);
    sub_100072F88(v15, a4);
    sub_100016290(v16, &qword_10058BB48, &unk_100483040);
    sub_100017554(*v5, v5[1]);
  }

  else
  {
    v10 = v5[1];
    v11 = v5[5];
    if (v10 >> 60 == 15)
    {
      v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    }

    else
    {
      *v11 = *v5;
      v11[1] = v10;
      v17 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    }

    v15 = v5[4];
    v14 = v5[5];
    v18 = v5[2];
    v16 = v5[3];
    sub_100012400(v14, v15, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v15, a4);
    sub_100016290(v14, &qword_10058BB48, &unk_100483040);
  }

  free(v14);
  free(v15);
  free(v16);

  free(v5);
}

void (*NANGenericServiceProtocol.uuid.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  *v4 = NANGenericServiceProtocol.uuid.getter(*v1);
  v4[1] = v7;
  return sub_1000CB954;
}

uint64_t sub_1000CB960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&qword_10058CFD0, &unk_1004841C0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v23 - v9;
  if (*(a1 + 16) && (v11 = sub_10007CD10(7), (v12 & 1) != 0))
  {
    sub_1000D2A28(*(a1 + 56) + *(v4 + 72) * v11, v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
    sub_1000C8EB4(v10);
    sub_1000D2AF8(v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v13 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    if ((*(*(v13 - 1) + 48))(v10, 1, v13) != 1)
    {
      return sub_1000D2A90(v10, a2, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    }
  }

  else
  {
    v13 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    (*(*(v13 - 1) + 56))(v10, 1, 1, v13);
  }

  *a2 = 0;
  *(a2 + 2) = 1;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v14 = v13[6];
  v15 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = v13[7];
  v23 = xmmword_100483C50;
  *(a2 + v16) = xmmword_100483C50;
  *(a2 + v13[8]) = xmmword_100483C50;
  *(a2 + v13[9]) = xmmword_100483C50;
  v17 = v13[10];
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  *(a2 + v13[11]) = _swiftEmptyArrayStorage;
  v19 = v13[12];
  v20 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
  *(a2 + v13[13]) = 0;
  v21 = (a2 + v13[14]);
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
  *(a2 + v13[15]) = v23;
  result = (*(*(v13 - 1) + 48))(v10, 1, v13);
  if (result != 1)
  {
    return sub_100016290(v10, &qword_10058CFD0, &unk_1004841C0);
  }

  return result;
}

uint64_t sub_1000CBCEC(char a1)
{
  v3 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v1, v10);
  *v10 = a1;
  sub_1000D2A28(v10, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v11 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_100012400(v7, v5, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v5, 7);
  sub_100016290(v7, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v10, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

uint64_t sub_1000CBEA8(int a1, char a2)
{
  v5 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v7);
  v8 = *v7;
  sub_1000D2AF8(v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if ((v8 & a1) != 0)
  {
    v9 = ~a1;
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v8;
  if ((v8 & a1) == a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  v12 = v11 | v8;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  return sub_1000CBCEC(v13);
}

uint64_t NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.getter(uint64_t a1)
{
  v2 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v4);
  LODWORD(a1) = *v4;
  sub_1000D2AF8(v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return (a1 >> 2) & 1;
}

void (*NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = *v6;
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *(a1 + 16) = (v7 & 4) != 0;
  return sub_1000CC0E0;
}

void sub_1000CC0E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1000CBEA8(4, *(a1 + 16));

  free(v1);
}

uint64_t NANGenericServiceProtocol.datapathSubscribeID.getter(uint64_t a1)
{
  v2 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v4);
  LODWORD(a1) = v4[1];
  v5 = v4[2];
  sub_1000D2AF8(v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return a1 | (v5 << 8);
}

uint64_t NANGenericServiceProtocol.datapathSubscribeID.setter(__int16 a1)
{
  v3 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v1, v10);
  v10[1] = a1;
  v10[2] = HIBYTE(a1) & 1;
  sub_1000D2A28(v10, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v11 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_100012400(v7, v5, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v5, 7);
  sub_100016290(v7, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v10, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.datapathSubscribeID.modify(void *a1))(uint64_t **a1)
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
  *v3 = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[2] = v6;
  v7 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v4[3] = v8;
  v9 = *v1;
  v4[4] = *v1;
  v10 = v8;
  sub_1000CB960(v9, v8);
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  sub_1000D2AF8(v10, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *(v4 + 40) = v11;
  *(v4 + 41) = v12;
  return sub_1000CC4DC;
}

void sub_1000CC4DC(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 41);
  sub_1000CB960((*a1)[4], v2);
  v2[1] = v6;
  v2[2] = v7;
  sub_1000D2A28(v2, v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v8 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_100012400(v4, v3, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v3, 7);
  sub_100016290(v4, &qword_10058BB48, &unk_100483040);
  sub_1000D2AF8(v2, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  free(v2);
  free(v4);
  free(v3);

  free(v1);
}

uint64_t NANGenericServiceProtocol.publicKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v5 = *(*v4 + 64);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v7);
  sub_100012400(&v7[v4[8]], a2, &unk_100595C40, &qword_100499070);
  return sub_1000D2AF8(v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

uint64_t NANGenericServiceProtocol.publicKey.setter(uint64_t a1)
{
  v3 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v9 = *(*v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v1, v11);
  sub_1000D1274(a1, &v11[v8[8]]);
  sub_1000D2A28(v11, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  sub_100012400(v7, v5, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v5, 7);
  sub_100016290(a1, &unk_100595C40, &qword_100499070);
  sub_100016290(v7, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v11, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.publicKey.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[2] = v6;
  v7 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v4[3] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v9 = v8;
  v4[4] = v8;
  v10 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[5] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[5] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v4[6] = v11;
  v13 = *v1;
  v4[7] = *v1;
  sub_1000CB960(v13, v9);
  sub_100012400(v9 + *(v7 + 24), v12, &unk_100595C40, &qword_100499070);
  sub_1000D2AF8(v9, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return sub_1000CCAA8;
}

void sub_1000CCAA8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    sub_100012400((*a1)[6], v6, &unk_100595C40, &qword_100499070);
    sub_1000CB960(v4, v5);
    sub_1000D1274(v6, v5 + *(v8 + 24));
    sub_1000D2A28(v5, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v11 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    sub_100012400(v7, v10, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v10, 7);
    sub_100016290(v6, &unk_100595C40, &qword_100499070);
    sub_100016290(v7, &qword_10058BB48, &unk_100483040);
    sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_100016290(v3, &unk_100595C40, &qword_100499070);
  }

  else
  {
    sub_1000CB960((*a1)[7], (*a1)[4]);
    sub_1000D1274(v3, v5 + *(v8 + 24));
    sub_1000D2A28(v5, v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_100012400(v7, v10, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v10, 7);
    sub_100016290(v3, &unk_100595C40, &qword_100499070);
    sub_100016290(v7, &qword_10058BB48, &unk_100483040);
    sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  free(v3);
  free(v6);
  free(v5);
  free(v7);
  free(v10);

  free(v2);
}

uint64_t NANGenericServiceProtocol.publisherAuthenticationToken.getter(uint64_t a1)
{
  v2 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v3 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v5);
  v6 = &v5[v2[9]];
  v7 = *v6;
  sub_10005D67C(*v6, *(v6 + 1));
  sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v7;
}

uint64_t NANGenericServiceProtocol.publisherAuthenticationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v11 = *(*v10 + 64);
  __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v13);
  v14 = &v13[v10[9]];
  sub_100017554(*v14, *(v14 + 1));
  *v14 = a1;
  *(v14 + 1) = a2;
  sub_1000D2A28(v13, v9, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v15 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_100012400(v9, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 7);
  sub_100016290(v9, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v13, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.publisherAuthenticationToken.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  a1[3] = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = (v6 + *(v3 + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_10005D67C(*v7, v9);
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *a1 = v8;
  a1[1] = v9;
  return sub_1000CD0D0;
}

uint64_t NANGenericServiceProtocol.encryptedSignature.getter(uint64_t a1)
{
  v2 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v3 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v5);
  v6 = &v5[v2[10]];
  v7 = *v6;
  sub_10005D67C(*v6, *(v6 + 1));
  sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v7;
}

uint64_t NANGenericServiceProtocol.encryptedSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v11 = *(*v10 + 64);
  __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v13);
  v14 = &v13[v10[10]];
  sub_100017554(*v14, *(v14 + 1));
  *v14 = a1;
  *(v14 + 1) = a2;
  sub_1000D2A28(v13, v9, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v15 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_100012400(v9, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 7);
  sub_100016290(v9, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v13, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.encryptedSignature.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  a1[3] = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = (v6 + *(v3 + 32));
  v8 = *v7;
  v9 = v7[1];
  sub_10005D67C(*v7, v9);
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *a1 = v8;
  a1[1] = v9;
  return sub_1000CD458;
}

uint64_t NANGenericServiceProtocol.encryptedExtraServiceSpecificInfo.getter(uint64_t a1)
{
  v2 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v3 = *(*v2 + 64);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a1, v5);
  v6 = &v5[v2[11]];
  v7 = *v6;
  sub_10005D67C(*v6, *(v6 + 1));
  sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  return v7;
}

uint64_t NANGenericServiceProtocol.encryptedExtraServiceSpecificInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v11 = *(*v10 + 64);
  __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(*v2, v13);
  v14 = &v13[v10[11]];
  sub_100017554(*v14, *(v14 + 1));
  *v14 = a1;
  *(v14 + 1) = a2;
  sub_1000D2A28(v13, v9, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v15 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  sub_100012400(v9, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 7);
  sub_100016290(v9, &qword_10058BB48, &unk_100483040);
  return sub_1000D2AF8(v13, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

void (*NANGenericServiceProtocol.encryptedExtraServiceSpecificInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  a1[3] = v4;
  v5 = *v1;
  v6 = v4;
  sub_1000CB960(v5, v4);
  v7 = (v6 + *(v3 + 36));
  v8 = *v7;
  v9 = v7[1];
  sub_10005D67C(*v7, v9);
  sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  *a1 = v8;
  a1[1] = v9;
  return sub_1000CD7E0;
}

void sub_1000CD7F8(uint64_t *a1, char a2, void (*a3)(uint64_t, unint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (a2)
  {
    sub_10005D67C(*a1, v5);
    a3(v4, v5);
    sub_100017554(v4, v5);
  }

  else
  {
    a3(*a1, v5);
  }

  free(v6);
}

unint64_t NANGenericServiceProtocol.vendorSpecificData.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v7 = &v15 - v6;
  __chkstk_darwin();
  v9 = &v15 - v8;
  if (*(a1 + 16))
  {
    v10 = sub_10007CD10(7);
    if (v11)
    {
      sub_1000D2A28(*(a1 + 56) + *(v2 + 72) * v10, v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_1000D2A90(v7, v9, type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_1000D2A90(v9, v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v12 = *(v5 + 1);
        v13 = *(v5 + 2);
        return *v5 | (*(v5 + 2) << 16);
      }

      sub_1000D2AF8(v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }
  }

  return 0;
}

uint64_t NANGenericServiceProtocol.description.getter(uint64_t a1)
{
  v47 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
  v2 = *(*(v47 - 8) + 64);
  __chkstk_darwin();
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v39 - v4;
  __chkstk_darwin();
  v44 = &v39 - v5;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_1000C0464(0, v6, 0);
    v49 = v50;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v13 = *(a1 + 36);
    v39 = a1 + 72;
    v40 = v6;
    v41 = v13;
    v42 = a1 + 64;
    v43 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v48 = v12;
      v16 = v47;
      v17 = *(v47 + 48);
      v18 = *(a1 + 56);
      v19 = *(*(a1 + 48) + v11);
      v20 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      v21 = v44;
      sub_1000D2A28(v18 + *(*(v20 - 8) + 72) * v11, &v44[v17], type metadata accessor for NANGenericServiceProtocol.Attribute);
      v22 = v45;
      *v45 = v19;
      sub_1000D2A90(&v21[v17], v22 + *(v16 + 48), type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_100012400(v22, v46, &qword_10058CE40, &unk_100483C90);
      v23 = *(v16 + 48);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      result = sub_100016290(v22, &qword_10058CE40, &unk_100483C90);
      v27 = v49;
      v50 = v49;
      v29 = v49[2];
      v28 = v49[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_1000C0464((v28 > 1), v29 + 1, 1);
        v27 = v50;
      }

      v27[2] = v29 + 1;
      v30 = &v27[2 * v29];
      v30[4] = v24;
      v30[5] = v26;
      a1 = v43;
      v14 = 1 << *(v43 + 32);
      if (v11 >= v14)
      {
        goto LABEL_25;
      }

      v8 = v42;
      v31 = *(v42 + 8 * v15);
      if ((v31 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      v49 = v27;
      LODWORD(v13) = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v11 & 0x3F));
      if (v32)
      {
        v14 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v15 << 6;
        v34 = v15 + 1;
        v35 = (v39 + 8 * v15);
        while (v34 < (v14 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_10002BEB8(v11, v41, 0);
            v14 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_10002BEB8(v11, v41, 0);
      }

LABEL_4:
      v12 = v48 + 1;
      v11 = v14;
      if (v48 + 1 == v40)
      {
        v7 = v49;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v50 = v7;
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
    v38 = BidirectionalCollection<>.joined(separator:)();

    return v38;
  }

  return result;
}

uint64_t NANGenericServiceProtocol.customMirror.getter()
{
  sub_10005DC58(&qword_10058CE48, &qword_100483CA0);

  return Mirror.init(reflecting:)();
}

unint64_t _s7CoreP2P25NANMulticastLinkConditionV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 56) + 24 * v12);
    v14 = *v13;
    v23 = *(v13 + 4);
    v15 = v13[20];
    result = sub_10007CCC8(*(*(v3 + 48) + v12));
    if (v16)
    {
      v17 = (*(a2 + 56) + 24 * result);
      v18 = *v17;
      v19 = v17[20];
      v20 = ~vaddvq_s32(vandq_s8(vceqq_s32(*(v17 + 4), v23), xmmword_100483C60)) & 0xF;
      v21 = v18 == v14 && v20 == 0;
      if (v21 && v19 == v15)
      {
        continue;
      }
    }

    return 0;
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

unint64_t sub_1000CE004(unint64_t result, uint64_t a2)
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
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 56) + 32 * v13;
    v15 = *v14;
    v16 = *(v14 + 4);
    v17 = *(v14 + 8);
    v18 = *(v14 + 16);
    v19 = *(v14 + 24);
    result = sub_10007CCC8(*(*(v3 + 48) + v13));
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = *(a2 + 56) + 32 * result;
    v22 = *v21 == v15 && *(v21 + 4) == v16;
    if (!v22 || *(v21 + 8) != v17)
    {
      return 0;
    }

    if (*(v21 + 24))
    {
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v21 + 16) == v18)
      {
        v9 = v19;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
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

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v45 - v7;
  v8 = *(*(sub_10005DC58(&qword_10058CFC8, &qword_1004841B8) - 8) + 64);
  __chkstk_darwin();
  result = __chkstk_darwin();
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v47 = a2;
  v48 = &v45 - v10;
  v49 = v11;
  v50 = v6;
  v12 = 0;
  v46 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (1)
  {
    v20 = v49;
    if (!v18)
    {
      break;
    }

    v21 = (v18 - 1) & v18;
    v22 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v28 = *(*(v46 + 48) + v22);
    v29 = v51;
    sub_1000D2A28(*(v46 + 56) + *(v52 + 72) * v22, v51, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v30 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
    v31 = *(v30 + 48);
    *v20 = v28;
    sub_1000D2A90(v29, &v20[v31], type metadata accessor for NANGenericServiceProtocol.Attribute);
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
    v25 = v50;
    v18 = v21;
LABEL_17:
    v32 = v20;
    v33 = v48;
    sub_10001CEA8(v32, v48, &qword_10058CFC8, &qword_1004841B8);
    v34 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v38 = *v33;
    sub_1000D2A90(&v33[v37], v25, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v39 = v47;
    v40 = sub_10007CD10(v38);
    if ((v41 & 1) == 0)
    {
      sub_1000D2AF8(v25, type metadata accessor for NANGenericServiceProtocol.Attribute);
      return 0;
    }

    v42 = v51;
    sub_1000D2A28(*(v39 + 56) + *(v52 + 72) * v40, v51, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v43 = sub_1000D0734(v42, v25);
    sub_1000D2AF8(v42, type metadata accessor for NANGenericServiceProtocol.Attribute);
    result = sub_1000D2AF8(v25, type metadata accessor for NANGenericServiceProtocol.Attribute);
    if ((v43 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v12 + 1)
  {
    v23 = v12 + 1;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 - 1;
  v25 = v50;
  while (1)
  {
    v26 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v26 >= v19)
    {
      v44 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
      v18 = 0;
      v12 = v24;
      goto LABEL_17;
    }

    v27 = *(v14 + 8 * v26);
    ++v12;
    if (v27)
    {
      v21 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v12 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CE5B8(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v51 - v7;
  __chkstk_darwin();
  v55 = &v51 - v9;
  v10 = *(*(sub_10005DC58(&qword_10058CF68, qword_10049BC90) - 8) + 64);
  __chkstk_darwin();
  v58 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin();
  v57 = (&v51 - v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v4;
  v54 = v8;
  v14 = 0;
  v52 = a1;
  v15 = *(a1 + 64);
  v51 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v59 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v25 = *(v52 + 48) - v20 + 8 * v20;
    v26 = *(v25 + 4);
    v27 = *(v25 + 6);
    v28 = *(v52 + 56) + *(v4 + 72) * v20;
    v29 = *v25;
    v30 = v55;
    sub_1000D2A28(v28, v55, type metadata accessor for NANInternetSharingStatistics.Requester);
    v31 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    v32 = *(v31 + 48);
    v33 = v58;
    *v58 = v29;
    v34 = v33;
    *(v33 + 2) = v26;
    *(v33 + 6) = v27;
    sub_1000D2A90(v30, v33 + v32, type metadata accessor for NANInternetSharingStatistics.Requester);
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
LABEL_17:
    v35 = v57;
    sub_10001CEA8(v34, v57, &qword_10058CF68, qword_10049BC90);
    v36 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v40 = *(v35 + 2);
    v41 = *(v35 + 3);
    v42 = *v35;
    v43 = v54;
    sub_1000D2A90(v35 + v39, v54, type metadata accessor for NANInternetSharingStatistics.Requester);
    v44 = v42 | (v40 << 16);
    v45 = v43;
    v46 = sub_10007CD94(v44 | (v41 << 24));
    if ((v47 & 1) == 0)
    {
      goto LABEL_25;
    }

    v4 = v53;
    sub_1000D2A28(*(a2 + 56) + *(v53 + 72) * v46, v60, type metadata accessor for NANInternetSharingStatistics.Requester);
    if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
    {
      sub_1000D2AF8(v60, type metadata accessor for NANInternetSharingStatistics.Requester);
LABEL_25:
      sub_1000D2AF8(v45, type metadata accessor for NANInternetSharingStatistics.Requester);
      return 0;
    }

    v48 = v56;
    v49 = *(v60 + *(v56 + 20));
    sub_1000D2AF8(v60, type metadata accessor for NANInternetSharingStatistics.Requester);
    LODWORD(v48) = *(v45 + *(v48 + 20));
    result = sub_1000D2AF8(v45, type metadata accessor for NANInternetSharingStatistics.Requester);
    v18 = v59;
    if (v49 != v48)
    {
      return v38;
    }
  }

  if (v19 <= v14 + 1)
  {
    v21 = v14 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v50 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
      v34 = v58;
      (*(*(v50 - 8) + 56))(v58, 1, 1, v50);
      v59 = 0;
      v14 = v22;
      goto LABEL_17;
    }

    v24 = *(v51 + 8 * v23);
    ++v14;
    if (v24)
    {
      v59 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v14 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Int NANGenericServiceProtocol.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

uint64_t sub_1000CEB18()
{
  v1 = *v0;
  sub_10005DC58(&qword_10058CE48, &qword_100483CA0);

  return Mirror.init(reflecting:)();
}

Swift::Int sub_1000CEB74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000CEBC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

BOOL sub_1000CEC50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000CEC80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000CECAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000CED44@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100286BEC();

  *a1 = v2;
  return result;
}

uint64_t NANGenericServiceProtocol.packetData(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryEncoder();
  v5 = swift_allocObject();
  *(v5 + 1) = xmmword_100480A90;
  v5[4] = v4;
  v10[3] = &type metadata for BinaryEncoder.UnkeyedContainer;
  v10[4] = sub_1000D12E4();
  v10[0] = v5;

  sub_1000C7CD8(a2, a1, v10);
  swift_beginAccess();
  v6 = v5[2];
  v7 = v5[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10000AB0C(v5[2], v5[3]);
LABEL_10:

  sub_100002A00(v10);
  return v6;
}

uint64_t sub_1000CEEE0(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v93 = a3;
  v5 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWEndpoint.Port();
  v90 = *(v7 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin();
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_10005DC58(&qword_10058CE40, &unk_100483C90) - 8) + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v16 = &v88 - v15;
  result = __chkstk_darwin();
  v21 = &v88 - v18;
  if ((a2 & 1) != 0 && *a1 < 7u)
  {
LABEL_10:
    v92 = v19;
    v89 = v20;
    sub_1000D2A28(&a1[*(v20 + 48)], v13, type metadata accessor for NANGenericServiceProtocol.Attribute);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v33 = a1;
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        v47 = sub_10016FD40(*v13, *(v13 + 1));
        v46 = v48;
        v34 = v94;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v49 = *v13;
          sub_10005DC58(&qword_10058B3C0, &qword_100481920);
          v50 = swift_allocObject();
          v51 = a1;
          *(v50 + 16) = xmmword_100480F40;
          if (v49)
          {
            v52 = 17;
          }

          else
          {
            v52 = 6;
          }

          *(v50 + 32) = v52;
          v44 = sub_10002D874(v50);
          v46 = v53;
          v33 = v51;
        }

        else
        {
          v43 = v90;
          (*(v90 + 32))(v10, v13, v7);
          LOWORD(v99) = NWEndpoint.Port.rawValue.getter();
          v44 = sub_1002AAFAC(&v99, 2);
          v46 = v45;
          (*(v43 + 8))(v10, v7);
        }

        v47 = v44;
        v34 = v94;
      }
    }

    else
    {
      v34 = v94;
      if (EnumCaseMultiPayload <= 6)
      {
        v47 = *v13;
        v46 = *(v13 + 1);
      }

      else
      {
        v35 = a1;
        if (EnumCaseMultiPayload == 7)
        {
          v36 = v91;
          sub_1000D2A90(v13, v91, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          v37 = sub_10002D874(&off_100552F80);
          v39 = v38;
          v40 = sub_100033AA8(_swiftEmptyArrayStorage);
          v41 = type metadata accessor for BinaryEncoder();
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_100480A90;
          *(v42 + 32) = v40;
          v101 = v41;
          v102 = sub_1000D2C6C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
          v99 = v42;

          NANAttribute.CustomDeviceInformation.CustomAttributes.encode(to:)(&v99);
          if (v34)
          {

            sub_1000124C8(v37, v39);
            sub_1000D2AF8(v36, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
            return sub_100002A00(&v99);
          }

          sub_100002A00(&v99);
          swift_beginAccess();
          v65 = *(v42 + 16);
          v66 = *(v42 + 24);
          sub_10000AB0C(v65, v66);

          v97 = v37;
          v98 = v39;
          v101 = &type metadata for Data;
          v102 = &protocol witness table for Data;
          v99 = v65;
          v100 = v66;
          v67 = sub_100029B34(&v99, &type metadata for Data);
          v68 = *v67;
          v69 = v67[1];
          sub_10000AB0C(v65, v66);
          sub_10000AB0C(v37, v39);
          sub_100178A18(v68, v69);
          sub_1000124C8(v65, v66);
          sub_1000124C8(v37, v39);
          sub_1000D2AF8(v36, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          sub_100002A00(&v99);
          v47 = v97;
          v46 = v98;
        }

        else
        {
          v54 = *v13;
          v55 = v13[2];
          v56 = *(v13 + 1);
          v57 = *(v13 + 2);
          sub_10005DC58(&qword_10058B3C0, &qword_100481920);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_100480F30;
          *(v58 + 32) = v54;
          *(v58 + 34) = v55;
          v59 = sub_10002D874(v58);
          v61 = v60;

          v95 = v59;
          v96 = v61;
          v101 = &type metadata for Data;
          v102 = &protocol witness table for Data;
          v99 = v56;
          v100 = v57;
          v62 = sub_100029B34(&v99, &type metadata for Data);
          v63 = *v62;
          v64 = v62[1];
          sub_10000AB0C(v59, v61);
          sub_100178A18(v63, v64);
          sub_1000124C8(v59, v61);
          sub_100002A00(&v99);
          v47 = v95;
          v46 = v96;
        }

        v33 = v35;
      }
    }

    v70 = v46 >> 62;
    if ((v46 >> 62) > 1)
    {
      if (v70 != 2)
      {
        goto LABEL_37;
      }

      v73 = *(v47 + 16);
      v72 = *(v47 + 24);
      v74 = __OFSUB__(v72, v73);
      v71 = v72 - v73;
      if (v74)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }
    }

    else
    {
      if (!v70)
      {
        goto LABEL_37;
      }

      LODWORD(v71) = HIDWORD(v47) - v47;
      if (__OFSUB__(HIDWORD(v47), v47))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v71 = v71;
    }

    if (v71 >= 0x10000)
    {
      v75 = v46;
      return sub_1000124C8(v47, v75);
    }

LABEL_37:
    v94 = v47;
    v76 = v92;
    sub_100012400(v33, v92, &qword_10058CE40, &unk_100483C90);
    v77 = *(v89 + 48);
    v78 = 0xDD06050403020100 >> (8 * *v76);
    v79 = *(v93 + 32);
    sub_100031694(v93, *(v93 + 24));
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v34)
    {
      sub_1000124C8(v94, v46);
      return sub_1000D2AF8(&v76[v77], type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    sub_1000D2AF8(&v76[v77], type metadata accessor for NANGenericServiceProtocol.Attribute);
    if (v70 > 1)
    {
      v80 = v46;
      if (v70 != 2)
      {
        goto LABEL_51;
      }

      v81 = v93;
      v82 = v94;
      v84 = *(v94 + 16);
      v83 = *(v94 + 24);
      v85 = v83 - v84;
      if (!__OFSUB__(v83, v84))
      {
LABEL_48:
        if ((v85 & 0x8000000000000000) == 0)
        {
          if (!(v85 >> 16))
          {
LABEL_52:
            v86 = *(v81 + 32);
            sub_100031694(v81, *(v81 + 24));
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            v99 = v82;
            v100 = v80;
            v87 = *(v81 + 32);
            sub_100031694(v81, *(v81 + 24));
            sub_1000B8088();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            v47 = v82;
            v75 = v80;
            return sub_1000124C8(v47, v75);
          }

          __break(1u);
LABEL_51:
          v81 = v93;
          v82 = v94;
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_55;
      }

      __break(1u);
    }

    else
    {
      v80 = v46;
      if (!v70)
      {
        goto LABEL_51;
      }
    }

    v82 = v94;
    if (__OFSUB__(HIDWORD(v94), v94))
    {
      goto LABEL_57;
    }

    v85 = HIDWORD(v94) - v94;
    v81 = v93;
    goto LABEL_48;
  }

  if ((a2 & 2) != 0 && *a1 >= 7u)
  {
    v92 = v19;
    v22 = v20;
    sub_100012400(a1, &v88 - v18, &qword_10058CE40, &unk_100483C90);
    v23 = v22;
    v24 = &v21[*(v22 + 48)];
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v25 = v24[2];
      v26 = *(v24 + 1);
      v27 = *(v24 + 2);
      v28 = *v24;
      sub_1000124C8(v26, v27);
      v29 = sub_1000319F0(0xF21700u, v28 | (v25 << 16));
      v19 = v92;
      v20 = v23;
      if (v29)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000D2AF8(v24, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    sub_100012400(a1, v16, &qword_10058CE40, &unk_100483C90);
    v30 = *(v23 + 48);
    v31 = swift_getEnumCaseMultiPayload();
    result = sub_1000D2AF8(&v16[v30], type metadata accessor for NANGenericServiceProtocol.Attribute);
    v20 = v23;
    v19 = v92;
    if (v31 == 7)
    {
      goto LABEL_10;
    }
  }

  return result;
}

void *NANGenericServiceProtocol.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000D201C(a1, a2);
  sub_1000124C8(a1, a2);
  return v4;
}

void *sub_1000CF874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000D1D34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1000CF8A0(__int128 *a1, uint64_t a2)
{
  v78 = a1;
  v83 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v83 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v69 = *(v76 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin();
  v84 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v62 - v9;
  v10 = *(*(sub_10005DC58(&qword_10058CF68, qword_10049BC90) - 8) + 64);
  __chkstk_darwin();
  v79 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v77 = &v62 - v12;
  v13 = *(a2 + 64);
  v80 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v66 = (v14 + 63) >> 6;
  v73 = (v3 + 88);
  v74 = (v3 + 16);
  v72 = enum case for DispatchTimeInterval.seconds(_:);
  v67 = enum case for DispatchTimeInterval.milliseconds(_:);
  v65 = enum case for DispatchTimeInterval.microseconds(_:);
  v64 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v63 = enum case for DispatchTimeInterval.never(_:);
  v62 = (v3 + 8);
  v71 = (v3 + 96);
  v70 = a2;

  v17 = 0;
  v18 = 0;
  v75 = v6;
  while (1)
  {
    v85 = v17;
    if (!v16)
    {
      break;
    }

    v27 = v18;
LABEL_21:
    v30 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v31 = v30 | (v27 << 6);
    v32 = *(v70 + 48) - v31 + 8 * v31;
    v33 = *(v32 + 4);
    v34 = *(v32 + 6);
    v35 = *v32;
    v36 = v68;
    sub_1000D2A28(*(v70 + 56) + *(v69 + 72) * v31, v68, type metadata accessor for NANInternetSharingStatistics.Requester);
    v37 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    v38 = *(v37 + 48);
    v39 = v79;
    *v79 = v35;
    *(v39 + 2) = v33;
    v40 = v39;
    *(v39 + 6) = v34;
    sub_1000D2A90(v36, v39 + v38, type metadata accessor for NANInternetSharingStatistics.Requester);
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
LABEL_22:
    v41 = v40;
    v42 = v77;
    sub_10001CEA8(v41, v77, &qword_10058CF68, qword_10049BC90);
    v43 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {

      Hasher._combine(_:)(v85);
      return;
    }

    v44 = *(v43 + 48);
    v45 = *v42;
    v46 = v42[1];
    v47 = v42[2];
    v48 = v42[3];
    v49 = v42[4];
    v50 = v42[6];
    v81 = v42[5];
    v82 = v50;
    v51 = &v42[v44];
    v52 = v84;
    sub_1000D2A90(v51, v84, type metadata accessor for NANInternetSharingStatistics.Requester);
    v53 = v78[3];
    v88 = v78[2];
    v89 = v53;
    v90 = *(v78 + 8);
    v54 = v78[1];
    v86 = *v78;
    v87 = v54;
    Hasher._combine(_:)(v45);
    v55 = v83;
    Hasher._combine(_:)(v46);
    Hasher._combine(_:)(v47);
    Hasher._combine(_:)(v48);
    v56 = v49;
    v57 = v75;
    Hasher._combine(_:)(v56);
    Hasher._combine(_:)(v81);
    Hasher._combine(_:)(v82);
    (*v74)(v57, v52, v55);
    v58 = (*v73)(v57, v55);
    if (v58 == v72)
    {
      (*v71)(v57, v83);
      v19 = *v57;
      v20 = 1000000000;
LABEL_5:
      v21 = v19 * v20;
      v22 = (v19 * v20) >> 64 != (v19 * v20) >> 63;
      v23 = v19 <= 0;
      v24 = 0x7FFFFFFFFFFFFFFFLL;
      if (v23)
      {
        v24 = 0x8000000000000000;
      }

      if (v22)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      goto LABEL_10;
    }

    if (v58 == v67)
    {
      (*v71)(v57, v83);
      v19 = *v57;
      v20 = 1000000;
      goto LABEL_5;
    }

    if (v58 == v65)
    {
      (*v71)(v57, v83);
      v59 = 0x7FFFFFFFFFFFFFFFLL;
      if (*v57 <= 0)
      {
        v59 = 0x8000000000000000;
      }

      if ((*v57 * 1000) >> 64 == (1000 * *v57) >> 63)
      {
        v25 = 1000 * *v57;
      }

      else
      {
        v25 = v59;
      }
    }

    else if (v58 == v64)
    {
      (*v71)(v57, v83);
      v25 = *v57;
    }

    else
    {
      if (v58 != v63)
      {
        (*v62)(v57, v83);
      }

      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_10:
    Hasher._combine(_:)(v25);
    v26 = v84;
    Hasher._combine(_:)(*(v84 + *(v76 + 20)));
    sub_1000D2AF8(v26, type metadata accessor for NANInternetSharingStatistics.Requester);
    v17 = Hasher._finalize()() ^ v85;
  }

  if (v66 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v66;
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v66)
    {
      v60 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
      v61 = v79;
      (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
      v16 = 0;
      v18 = v29;
      v40 = v61;
      goto LABEL_22;
    }

    v16 = *(v80 + 8 * v27);
    ++v18;
    if (v16)
    {
      v18 = v27;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 = Hasher._finalize()() ^ v21)
  {
    v21 = v3;
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    v13 = *(a2 + 56) + 24 * v12;
    v14 = *(v13 + 4);
    v15 = *(v13 + 8);
    v16 = *(v13 + 12);
    v17 = *v13;
    v19 = *(v13 + 16);
    v20 = *(v13 + 20);
    v24 = a1[2];
    v25 = a1[3];
    v26 = *(a1 + 8);
    v22 = *a1;
    v23 = a1[1];
    Hasher._combine(_:)(*(*(a2 + 48) + v12));
    Hasher._combine(_:)(v17);
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v19);
    Hasher._combine(_:)(v20);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      Hasher._combine(_:)(v3);
      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v21 = v3;
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v34 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&qword_10058CFC8, &qword_1004841B8) - 8) + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v33 - v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v35 = a2;

  v15 = 0;
  v38 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v16 << 6);
      v22 = *(*(v35 + 48) + v21);
      sub_1000D2A28(*(v35 + 56) + *(v34 + 72) * v21, v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v23 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      v24 = *(v23 + 48);
      v25 = v37;
      *v37 = v22;
      v19 = v25;
      sub_1000D2A90(v5, &v25[v24], type metadata accessor for NANGenericServiceProtocol.Attribute);
      (*(*(v23 - 8) + 56))(v19, 0, 1, v23);
      v18 = v16;
LABEL_13:
      sub_10001CEA8(v19, v9, &qword_10058CFC8, &qword_1004841B8);
      v26 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
      if ((*(*(v26 - 8) + 48))(v9, 1, v26) == 1)
      {
        break;
      }

      v27 = *(v26 + 48);
      v28 = *v9;
      sub_1000D2A90(&v9[v27], v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v29 = *(v36 + 48);
      v39[2] = *(v36 + 32);
      v39[3] = v29;
      v40 = *(v36 + 64);
      v30 = *(v36 + 16);
      v39[0] = *v36;
      v39[1] = v30;
      Hasher._combine(_:)(0xDD06050403020100 >> (8 * v28));
      sub_1000C9388(v39);
      sub_1000D2AF8(v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v31 = Hasher._finalize()();
      v15 = v18;
      v38 ^= v31;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v38);
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    v19 = v37;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v32 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
        (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1000D05AC(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v20 = v3;
LABEL_15:
    v12 = __clz(__rbit64(v8)) | (v4 << 6);
    v13 = *(a2 + 56) + 32 * v12;
    v14 = *v13;
    v15 = *(v13 + 4);
    v16 = *(v13 + 8);
    v19 = *(v13 + 16);
    v17 = *(v13 + 24);
    v23 = a1[2];
    v24 = a1[3];
    v25 = *(a1 + 8);
    v21 = *a1;
    v22 = a1[1];
    Hasher._combine(_:)(*(*(a2 + 48) + v12));
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(v16);
    if (v17 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v19;
      }

      else
      {
        v10 = 0;
      }

      Hasher._combine(_:)(v10);
    }

    v8 &= v8 - 1;
    v3 = Hasher._finalize()() ^ v20;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      Hasher._combine(_:)(v3);
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v20 = v3;
      v4 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1000D0734(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v91 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWEndpoint.Port();
  v97 = *(v5 - 8);
  *&v98 = v5;
  v6 = *(v97 + 64);
  __chkstk_darwin();
  v96 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v94 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v90 - v10;
  __chkstk_darwin();
  v93 = (&v90 - v11);
  __chkstk_darwin();
  v92 = (&v90 - v12);
  __chkstk_darwin();
  v14 = (&v90 - v13);
  __chkstk_darwin();
  v16 = (&v90 - v15);
  __chkstk_darwin();
  v18 = (&v90 - v17);
  __chkstk_darwin();
  v20 = &v90 - v19;
  __chkstk_darwin();
  v22 = &v90 - v21;
  v23 = *(*(sub_10005DC58(&qword_10058CF58, &unk_100484180) - 8) + 64);
  v24 = __chkstk_darwin();
  v26 = &v90 - v25;
  v27 = &v90 + *(v24 + 56) - v25;
  sub_1000D2A28(v99, &v90 - v25, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v28 = a2;
  v29 = v27;
  sub_1000D2A28(v28, v27, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v35 = v22;
    v37 = v96;
    v36 = v97;
    v38 = v98;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v39 = v35;
        sub_1000D2A28(v26, v35, type metadata accessor for NANGenericServiceProtocol.Attribute);
        if (!swift_getEnumCaseMultiPayload())
        {
          (*(v36 + 32))(v37, v29, v38);
          sub_1000D2C6C(&qword_10058CF60, &type metadata accessor for NWEndpoint.Port);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v86 = *(v36 + 8);
          v86(v37, v38);
          v34 = v101 == v100;
          v86(v39, v38);
          sub_1000D2AF8(v26, type metadata accessor for NANGenericServiceProtocol.Attribute);
          return v34 & 1;
        }

        (*(v36 + 8))(v39, v38);
        goto LABEL_51;
      }

      sub_1000D2A28(v26, v20, type metadata accessor for NANGenericServiceProtocol.Attribute);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (*v20)
        {
          v55 = 7365749;
        }

        else
        {
          v55 = 7365492;
        }

        if (*v29)
        {
          v56 = 7365749;
        }

        else
        {
          v56 = 7365492;
        }

        if (v55 == v56)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_bridgeObjectRelease_n();
          if ((v88 & 1) == 0)
          {
            sub_1000D2AF8(v26, type metadata accessor for NANGenericServiceProtocol.Attribute);
            goto LABEL_52;
          }
        }

        v87 = v26;
        goto LABEL_61;
      }

LABEL_51:
      sub_100016290(v26, &qword_10058CF58, &unk_100484180);
      goto LABEL_52;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1000D2A28(v26, v18, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v40 = v18[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v41 = v26;
        v42 = *v18;
        v43 = *v29;
        v44 = *(v29 + 1);
        v45 = String.lowercased()();
        v46 = String.lowercased()();
        if (v45._countAndFlagsBits == v46._countAndFlagsBits && v45._object == v46._object)
        {
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v48 & 1) == 0)
          {
            sub_1000D2AF8(v41, type metadata accessor for NANGenericServiceProtocol.Attribute);
            goto LABEL_52;
          }
        }

        v87 = v41;
LABEL_61:
        sub_1000D2AF8(v87, type metadata accessor for NANGenericServiceProtocol.Attribute);
        v34 = 1;
        return v34 & 1;
      }
    }

    else
    {
      sub_1000D2A28(v26, v16, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v58 = *v16;
      v57 = v16[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v59 = v26;
        if (v58 == *v29 && v57 == *(v29 + 1))
        {
          v89 = *(v29 + 1);
        }

        else
        {
          v61 = *(v29 + 1);
          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v62 & 1) == 0)
          {
            sub_1000D2AF8(v59, type metadata accessor for NANGenericServiceProtocol.Attribute);
            goto LABEL_52;
          }
        }

        v87 = v59;
        goto LABEL_61;
      }
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1000D2A28(v26, v14, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v49 = *v14;
      v50 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v82 = v92;
      sub_1000D2A28(v26, v92, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v49 = *v82;
      v50 = v82[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_47;
      }
    }

    v52 = v26;
    v53 = *v27;
    v54 = *(v27 + 1);
    goto LABEL_46;
  }

  v31 = v27;
  if (EnumCaseMultiPayload == 6)
  {
    v51 = v93;
    sub_1000D2A28(v26, v93, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v49 = *v51;
    v50 = v51[1];
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v52 = v26;
      v53 = *v27;
      v54 = *(v27 + 1);
LABEL_46:
      v34 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v49, v50, v53, v54);
      sub_1000124C8(v53, v54);
      sub_1000124C8(v49, v50);
      sub_1000D2AF8(v52, type metadata accessor for NANGenericServiceProtocol.Attribute);
      return v34 & 1;
    }

LABEL_47:
    v83 = v49;
    v84 = v50;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v63 = v94;
    sub_1000D2A28(v26, v94, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v65 = *(v63 + 8);
    v64 = *(v63 + 16);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v99 = v26;
      v66 = *(v63 + 2);
      v67 = *v63;
      v68 = v27;
      v69 = *v27;
      v70 = v27[2];
      v71 = *(v31 + 1);
      v72 = *(v68 + 2);
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v73 = swift_allocObject();
      v98 = xmmword_100480F30;
      *(v73 + 16) = xmmword_100480F30;
      *(v73 + 32) = v67;
      *(v73 + 34) = v66;
      v74 = sub_10002D874(v73);
      v76 = v75;

      v77 = swift_allocObject();
      *(v77 + 16) = v98;
      *(v77 + 32) = v69;
      *(v77 + 34) = v70;
      v78 = sub_10002D874(v77);
      v80 = v79;

      v81 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v74, v76, v78, v80);
      sub_1000124C8(v78, v80);
      sub_1000124C8(v74, v76);
      if (v81)
      {
        v34 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v65, v64, v71, v72);
        sub_1000124C8(v71, v72);
        sub_1000124C8(v65, v64);
        sub_1000D2AF8(v99, type metadata accessor for NANGenericServiceProtocol.Attribute);
        return v34 & 1;
      }

      sub_1000124C8(v71, v72);
      sub_1000124C8(v65, v64);
      sub_1000D2AF8(v99, type metadata accessor for NANGenericServiceProtocol.Attribute);
LABEL_52:
      v34 = 0;
      return v34 & 1;
    }

    v83 = v65;
    v84 = v64;
LABEL_50:
    sub_1000124C8(v83, v84);
    goto LABEL_51;
  }

  v32 = v95;
  sub_1000D2A28(v26, v95, type metadata accessor for NANGenericServiceProtocol.Attribute);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1000D2AF8(v32, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    goto LABEL_51;
  }

  v33 = v91;
  sub_1000D2A90(v27, v91, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v34 = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV0D10AttributesV23__derived_struct_equalsySbAG_AGtFZ_0(v32, v33);
  sub_1000D2AF8(v33, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  sub_1000D2AF8(v32, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  sub_1000D2AF8(v26, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v34 & 1;
}

uint64_t type metadata accessor for NANGenericServiceProtocol.Attribute()
{
  result = qword_10058CEF0;
  if (!qword_10058CEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D1274(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C40, &qword_100499070);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D12E4()
{
  result = qword_10058CE50;
  if (!qword_10058CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE50);
  }

  return result;
}

uint64_t sub_1000D1338(uint64_t result)
{
  if (result == 221)
  {
    v1 = 7;
  }

  else
  {
    v1 = 8;
  }

  if (result >= 7u)
  {
    return v1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000D1358(uint64_t a1, char a2, void *a3)
{
  v6 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10005DC58(&qword_10058BB50, &unk_100480E80) - 8) + 64);
  result = __chkstk_darwin();
  v14 = &v45 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v47 = a1;
    v48 = v6;
    v16 = *(result + 48);
    v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v50 = *(v12 + 72);
    v46 = v17;
    sub_100012400(a1 + v17, &v45 - v13, &qword_10058BB50, &unk_100480E80);
    v18 = *v14;
    v49 = v16;
    sub_1000D2A90(&v14[v16], v9, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v19 = *a3;
    v21 = sub_10007CD10(v18);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_23;
    }

    LOBYTE(v6) = v20;
    if (v19[3] >= v24)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_10018DDCC(v24, a2 & 1);
    v25 = *a3;
    v26 = sub_10007CD10(v18);
    if ((v6 & 1) == (v27 & 1))
    {
      v21 = v26;
LABEL_7:
      v28 = v48;
      while (1)
      {
        v48 = v15;
        v29 = *a3;
        if (v6)
        {
          v15 = *(v28 + 72);
          result = sub_1000D2C08(v9, v29[7] + v15 * v21);
        }

        else
        {
          v29[(v21 >> 6) + 8] |= 1 << v21;
          *(v29[6] + v21) = v18;
          v15 = *(v28 + 72);
          result = sub_1000D2A90(v9, v29[7] + v15 * v21, type metadata accessor for NANGenericServiceProtocol.Attribute);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_24;
          }

          v29[2] = v32;
        }

        v33 = v48 - 1;
        if (v48 == 1)
        {
          return result;
        }

        v6 = v47 + v50 + v46;
        while (1)
        {
          sub_100012400(v6, v14, &qword_10058BB50, &unk_100480E80);
          v18 = *v14;
          sub_1000D2A90(&v14[v49], v9, type metadata accessor for NANGenericServiceProtocol.Attribute);
          v34 = *a3;
          v35 = sub_10007CD10(v18);
          v37 = v34[2];
          v38 = (v36 & 1) == 0;
          v31 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v31)
          {
            break;
          }

          v21 = v36;
          if (v34[3] < v39)
          {
            sub_10018DDCC(v39, 1);
            v40 = *a3;
            v35 = sub_10007CD10(v18);
            if ((v21 & 1) != (v41 & 1))
            {
              goto LABEL_26;
            }
          }

          v42 = *a3;
          if (v21)
          {
            result = sub_1000D2C08(v9, v42[7] + v15 * v35);
          }

          else
          {
            v42[(v35 >> 6) + 8] |= 1 << v35;
            *(v42[6] + v35) = v18;
            result = sub_1000D2A90(v9, v42[7] + v15 * v35, type metadata accessor for NANGenericServiceProtocol.Attribute);
            v43 = v42[2];
            v31 = __OFADD__(v43, 1);
            v44 = v43 + 1;
            if (v31)
            {
              goto LABEL_24;
            }

            v42[2] = v44;
          }

          v6 += v50;
          if (!--v33)
          {
            return result;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v28 = v48;
        sub_100195C70();
      }
    }

LABEL_26:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_1000D1760(uint64_t a1)
{
  v2 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v39 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = v36 - v6;
  v7 = *(*(sub_10005DC58(&qword_10058CF98, &unk_1004841A8) - 8) + 64);
  __chkstk_darwin();
  v9 = v36 - v8;
  v10 = sub_10005DC58(&qword_10058BB50, &unk_100480E80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v45 = v36 - v13;
  v14 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = v36 - v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(v17 + 80);
    v36[1] = a1;
    v37 = v11;
    v21 = a1 + ((v20 + 32) & ~v20);
    v22 = *(v17 + 72);
    v42 = (v3 + 48);
    v43 = v22;
    v40 = (v11 + 48);
    v41 = (v11 + 56);
    v23 = _swiftEmptyArrayStorage;
    v38 = v2;
    v24 = v2;
    while (1)
    {
      v25 = v44;
      sub_100012400(v21, v44, &qword_10058BB48, &unk_100483040);
      sub_10001CEA8(v25, v16, &qword_10058BB48, &unk_100483040);
      v26 = 1;
      if ((*v42)(v16, 1, v24) != 1)
      {
        break;
      }

LABEL_22:
      (*v41)(v9, v26, 1, v10);
      if ((*v40)(v9, 1, v10) == 1)
      {
        sub_100016290(v9, &qword_10058CF98, &unk_1004841A8);
      }

      else
      {
        sub_10001CEA8(v9, v45, &qword_10058BB50, &unk_100480E80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100116088(0, v23[2] + 1, 1, v23);
        }

        v33 = v23[2];
        v32 = v23[3];
        if (v33 >= v32 >> 1)
        {
          v23 = sub_100116088(v32 > 1, v33 + 1, 1, v23);
        }

        v23[2] = v33 + 1;
        sub_10001CEA8(v45, v23 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, &qword_10058BB50, &unk_100480E80);
        v24 = v38;
      }

      v21 += v43;
      if (!--v19)
      {

        if (v23[2])
        {
          goto LABEL_30;
        }

LABEL_32:
        v34 = &_swiftEmptyDictionarySingleton;
        goto LABEL_33;
      }
    }

    v27 = v24;
    v28 = v46;
    sub_1000D2A90(v16, v46, type metadata accessor for NANGenericServiceProtocol.Attribute);
    sub_1000D2A28(v28, v39, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v24 = v27;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if ((EnumCaseMultiPayload - 7) >= 2)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v30 = 5;
        }

        else
        {
          v30 = 6;
        }
      }

      else
      {
        v30 = 7;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v30 = 1;
        goto LABEL_21;
      }

      v30 = 0;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v30 = 2;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }

    sub_1000D2AF8(v39, type metadata accessor for NANGenericServiceProtocol.Attribute);
LABEL_21:
    v31 = *(v10 + 48);
    *v9 = v30;
    sub_1000D2A90(v46, &v9[v31], type metadata accessor for NANGenericServiceProtocol.Attribute);
    v26 = 0;
    goto LABEL_22;
  }

  v23 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_32;
  }

LABEL_30:
  sub_10005DC58(&qword_10058BB58, &unk_100492320);
  v34 = static _DictionaryStorage.allocate(capacity:)();
LABEL_33:
  v47 = v34;
  sub_1000D1358(v23, 1, &v47);

  return v47;
}

void *sub_1000D1D34(uint64_t *a1)
{
  v3 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = a1[4];
  v8 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_10005DC58(&qword_10058CF78, &qword_100484198);
    sub_100031694(v23, v23[3]);
    sub_1000D2B58();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v10 = v24;
    v11 = *(v24 + 16);
    if (v11)
    {
      v21 = a1;
      v22 = _swiftEmptyArrayStorage;
      sub_1000C0564(0, v11, 0);
      v12 = v22;
      v20 = v10;
      v13 = (v10 + 48);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v16 = *(v13 - 16);
        sub_10000AB0C(v14, *v13);
        sub_1000C7EA8(v16, v14, v15, v6);
        v17 = type metadata accessor for NANGenericServiceProtocol.Attribute();
        (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
        v22 = v12;
        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000C0564(v18 > 1, v19 + 1, 1);
          v12 = v22;
        }

        v13 += 3;
        v12[2] = v19 + 1;
        sub_10001CEA8(v6, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, &qword_10058BB48, &unk_100483040);
        --v11;
      }

      while (v11);

      a1 = v21;
    }

    else
    {

      v12 = _swiftEmptyArrayStorage;
    }

    v8 = sub_1000D1760(v12);
    sub_100002A00(v23);
    sub_100002A00(a1);
  }

  return v8;
}

void *sub_1000D201C(uint64_t a1, unint64_t a2)
{
  v4 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v35 - v6;
  v8 = sub_100033AA8(_swiftEmptyArrayStorage);
  v9 = type metadata accessor for BinaryDecoder();
  v10 = swift_allocObject();
  v11 = 0;
  v10[5] = &_swiftEmptyDictionarySingleton;
  v10[2] = a1;
  v10[3] = a2;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v11 = *(a1 + 16);
    }
  }

  else if (v12)
  {
    v11 = a1;
  }

  v10[4] = v11;
  swift_beginAccess();
  v10[5] = v8;
  v14 = v10[2];
  v13 = v10[3];
  sub_10000AB0C(a1, a2);
  v15 = v13 >> 62;
  v40 = v14 >> 32;
  v41 = v14;
  v39 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v10[4];
    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      if (v16 >= *(v41 + 24))
      {
        goto LABEL_22;
      }
    }

    else if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    v42[3] = v9;
    v42[4] = sub_1000D2C6C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    v42[0] = v10;

    sub_100264884(v42, v43);
    v38 = LOBYTE(v43[0]);
    v36 = v43[2];
    v37 = v43[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v39;
    }

    else
    {
      v18 = sub_100116AF4(0, v39[2] + 1, 1, v39);
    }

    v20 = v18[2];
    v19 = v18[3];
    v21 = (v20 + 1);
    if (v20 >= v19 >> 1)
    {
      v39 = (v20 + 1);
      v35 = v20;
      v18 = sub_100116AF4((v19 > 1), v20 + 1, 1, v18);
      v21 = v39;
      v20 = v35;
    }

    v18[2] = v21;
    v39 = v18;
    v22 = &v18[3 * v20];
    *(v22 + 32) = v38;
    v23 = v36;
    v22[5] = v37;
    v22[6] = v23;
  }

  v17 = BYTE6(v13);
  if (v15)
  {
    v17 = v40;
  }

  if (v16 < v17)
  {
    goto LABEL_16;
  }

LABEL_22:

  v24 = v39[2];
  if (v24)
  {
    v42[0] = _swiftEmptyArrayStorage;
    v25 = v39;
    sub_1000C0564(0, v24, 0);
    v26 = v42[0];
    v27 = v25 + 6;
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v30 = *(v27 - 16);
      sub_10000AB0C(v28, *v27);
      sub_1000C7EA8(v30, v28, v29, v7);
      v31 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
      v42[0] = v26;
      v33 = v26[2];
      v32 = v26[3];
      if (v33 >= v32 >> 1)
      {
        sub_1000C0564(v32 > 1, v33 + 1, 1);
        v26 = v42[0];
      }

      v27 += 3;
      v26[2] = v33 + 1;
      sub_10001CEA8(v7, v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, &qword_10058BB48, &unk_100483040);
      --v24;
    }

    while (v24);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  return sub_1000D1760(v26);
}

unint64_t sub_1000D24D0()
{
  result = qword_10058CE58;
  if (!qword_10058CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE58);
  }

  return result;
}

unint64_t sub_1000D2528()
{
  result = qword_10058CE60;
  if (!qword_10058CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE60);
  }

  return result;
}

unint64_t sub_1000D2580()
{
  result = qword_10058CE68;
  if (!qword_10058CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE68);
  }

  return result;
}

unint64_t sub_1000D25D8()
{
  result = qword_10058CE70;
  if (!qword_10058CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE70);
  }

  return result;
}

unint64_t sub_1000D2630()
{
  result = qword_10058CE78;
  if (!qword_10058CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANCipherSuite(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NANCipherSuite(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000D281C()
{
  type metadata accessor for NWEndpoint.Port();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(319);
    if (v1 <= 0x3F)
    {
      sub_1000D28D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000D28D0()
{
  if (!qword_10058CF00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10058CF00);
    }
  }
}

unint64_t sub_1000D2980()
{
  result = qword_10058CF38;
  if (!qword_10058CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CF38);
  }

  return result;
}

unint64_t sub_1000D29D4()
{
  result = qword_10058CF40;
  if (!qword_10058CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CF40);
  }

  return result;
}

uint64_t sub_1000D2A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000D2B58()
{
  result = qword_10058CF80;
  if (!qword_10058CF80)
  {
    sub_10005DD04(&qword_10058CF78, &qword_100484198);
    sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CF80);
  }

  return result;
}

uint64_t sub_1000D2C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D2C6C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000D2CB8(char *result, uint64_t a2, uint64_t a3)
{
  v13 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C05A4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = a2;
    if (a2 <= v13)
    {
      v6 = v13;
    }

    v11 = v6 - v13 + 1;
    while (v5 < v4)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      v8 = *(a3 + 32);
      sub_100031694(a3, *(a3 + 24));
      sub_1000E5328();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v3)
      {

        return _swiftEmptyArrayStorage;
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_1000C05A4((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v15;
      if (a2 < v13)
      {
        goto LABEL_20;
      }

      if (v11 == ++v5)
      {
        goto LABEL_21;
      }

      if (v7 == v4)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

char *sub_1000D2E40(char *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = v3;
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C0584(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a2;
    if (a2 <= v18)
    {
      v7 = v18;
    }

    v15 = v4;
    v16 = v7 - v18 + 1;
    while (v6 < v4)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

      v9 = *(a3 + 32);
      sub_100031694(a3, *(a3 + 24));
      sub_1000E537C();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v5)
      {

        return _swiftEmptyArrayStorage;
      }

      v10 = v23;
      v11 = v24;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1000C0584((v12 > 1), v13 + 1, 1);
        v11 = v24;
        v10 = v23;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = _swiftEmptyArrayStorage + 10 * v13;
      v14[32] = v20;
      *(v14 + 17) = v21;
      v14[36] = v22;
      *(v14 + 19) = v10;
      v14[40] = v11;
      if (a2 < v18)
      {
        goto LABEL_20;
      }

      if (v16 == ++v6)
      {
        goto LABEL_21;
      }

      v4 = v15;
      v5 = 0;
      if (v8 == v15)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

CoreP2P::NANBitmap::Band_optional __swiftcall NANBitmap.Band.Iterator.next()()
{
  v1 = *(v0 + 1);
  if (v1 <= 7)
  {
    if ((v1 - 9) >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v4 = *v0;
      v3 = *(v0 + 1);
      if (v1 < 0)
      {
        goto LABEL_10;
      }

LABEL_6:
      if (v3 > 7)
      {
LABEL_11:
        LOBYTE(v2) = 0;
      }

      else
      {
        v5 = 1 << v3;
        while ((v5 & ~v4) != 0)
        {
          *(v0 + 1) = ++v3;
          if ((v3 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_10:
          v5 = 0;
          if (v3 <= 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_11;
          }
        }

        v2 = 1 << v3;
        if (v3 > 7)
        {
          LOBYTE(v2) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v3 = *(v0 + 1);
    }

    *(v0 + 1) = v3 + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return (v2 | ((v1 > 7) << 8));
}

CoreP2P::NANBitmap::Band_optional sub_1000D3138@<W0>(Swift::UInt8 *a1@<X8>)
{
  result = NANBitmap.Band.Iterator.next()();
  *a1 = result.value.rawValue;
  a1[1] = result.is_nil;
  return result;
}

CoreP2P::NANBitmap::Band::Iterator __swiftcall NANBitmap.Band.makeIterator()()
{
  v0 = 0;
  result.currentIndex = v0;
  return result;
}

uint64_t NANBitmap.Band.bands.getter(uint64_t result)
{
  v1 = 0;
  v2 = result;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v1 >= 8)
    {
      v4 = 0;
LABEL_7:
      v5 = v1;
      goto LABEL_8;
    }

    v4 = 1 << v1;
    if (((1 << v1) & v2) != 0)
    {
      goto LABEL_7;
    }

    v5 = v1 + 1;
    if (v1 == 7)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 2;
    if (v1 > 5)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 3;
    if (v1 == 5)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 4;
    if (v1 > 3)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 5;
    if (v1 == 3)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 6;
    if (v1 > 1)
    {
      goto LABEL_35;
    }

    v4 = 1 << v5;
    if (((1 << v5) & v2) != 0)
    {
      goto LABEL_8;
    }

    v5 = v1 + 7;
    if (v1)
    {
LABEL_35:
      v4 = 0;
    }

    else
    {
      if ((v2 & 0x80u) == 0)
      {
        v5 = 8;
      }

      v4 = v2 & 0x80;
    }

LABEL_8:
    v1 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    switch(v4)
    {
      case 4:
        v6 = 0;
        goto LABEL_15;
      case 128:
        v6 = 2;
        goto LABEL_15;
      case 16:
        v6 = 1;
LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100116C3C(0, *(v3 + 2) + 1, 1, v3);
          v3 = result;
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          result = sub_100116C3C((v7 > 1), v8 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 2) = v8 + 1;
        v3[v8 + 32] = v6;
        break;
    }

    if (v1 >= 8)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D3410@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_100286BE8();

  *a1 = v2;
  return result;
}

uint64_t NANBitmap.Channel.auxiliaryChannelBitmap.setter(uint64_t result)
{
  *(v1 + 6) = result;
  *(v1 + 8) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_1000D3518()
{
  v1 = 0x6E6974617265706FLL;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x426C656E6E616863;
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

uint64_t sub_1000D35B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E245C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D35D8(uint64_t a1)
{
  v2 = sub_1000DD454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D3614(uint64_t a1)
{
  v2 = sub_1000DD454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANBitmap.Channel.__derived_struct_equals(_:_:)(unint64_t a1, char a2, unint64_t a3, char a4)
{
  result = 0;
  if (a1 == a3 && ((a1 >> 16) & 0xFFFFFF) == ((a3 >> 16) & 0xFFFFFF))
  {
    if (a2)
    {
      if (a4)
      {
        return 1;
      }
    }

    else if (!((a3 ^ a1) >> 48) && (a4 & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t NANBitmap.Channel.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_10058CFD8, &qword_100484288);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000DD454();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void NANBitmap.Channel.hash(into:)(int a1, unint64_t a2, char a3)
{
  v4 = HIWORD(a2);
  v5 = a2 >> 16;
  v6 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }
}

Swift::Int NANBitmap.Channel.hashValue.getter(unint64_t a1, char a2)
{
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIWORD(a1));
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D39A0()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_1000D3A4C()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 8);
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_1000D3ACC()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D3B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E1140(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = WORD1(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 6) = HIWORD(result);
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1000D3BF4(void *a1)
{
  v2 = v1[8];
  v3 = *v1 | (*(v1 + 1) << 16) | (v1[4] << 32) | (*(v1 + 3) << 48);
  return NANBitmap.Channel.encode(to:)(a1);
}

uint64_t sub_1000D3C34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || a1[4] != a2[4])
  {
    return 0;
  }

  v5 = a2[8];
  if (a1[8])
  {
    if (a2[8])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t NANBitmap.Time.Control.bitDuration.getter(__int16 a1)
{
  v1 = sub_10002F09C(0, 3uLL, a1);
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v1);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000D3CF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1000D3F78(a1, a2, a3, a4);
  if (!v4 && result > 3)
  {
    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t NANBitmap.Time.Control.period.getter(__int16 a1)
{
  v1 = sub_10002F09C(3uLL, 3uLL, a1);
  result = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v1);
  if (result == 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000D3E1C(unint64_t result, unint64_t a2, __int16 a3)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v6 < 0x40)
      {
        v3 |= 1 << v6;
      }

      if (v7 == a2)
      {
        goto LABEL_13;
      }

      ++v6;
      if (v7 >= a2)
      {
        __break(1u);
LABEL_13:
        if (result - 65 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (result == 64)
        {
          return 0;
        }

LABEL_21:
        v8 = (a3 & (v3 << result)) >> result;
        while (v8 > 0xFF)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          if (result == -64)
          {
            return 0;
          }

LABEL_31:
          v3 = (a3 & (v3 >> -result));
          v8 = v3 << -result;
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }
        }

        return v8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (result - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  v8 = 0;
  v3 = 0;
  if ((result & 0x8000000000000000) != 0)
  {
    if (result != -64)
    {
      goto LABEL_31;
    }
  }

  else if (result != 64)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t sub_1000D3F78@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (a4 == -64)
    {
      return 0;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  a4 = result;
  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 < 0x40)
      {
        result |= 1 << v5;
      }

      if (v6 == a2)
      {
        break;
      }

      ++v5;
      if (v6 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a4 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (a4 != 64)
      {
        return (a3 & (result << a4)) >> a4;
      }

      return 0;
    }

    goto LABEL_27;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  result = 0;
  if (a4 < 0)
  {
    if (a4 == -64)
    {
      return result;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if (a4 != 64)
  {
    return (a3 & (result << a4)) >> a4;
  }

  return result;
}

uint64_t sub_1000D40C8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    if (a4 == -64)
    {
      return 0;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if ((result + a2) > 8)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  a4 = result;
  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v5 < 0x40)
      {
        result |= 1 << v5;
      }

      if (v6 == a2)
      {
        break;
      }

      ++v5;
      if (v6 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a4 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (a4 != 64)
      {
        return (a3 & (result << a4)) >> a4;
      }

      return 0;
    }

    goto LABEL_27;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  result = 0;
  if (a4 < 0)
  {
    if (a4 == -64)
    {
      return result;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if (a4 != 64)
  {
    return (a3 & (result << a4)) >> a4;
  }

  return result;
}

unint64_t sub_1000D4218(unint64_t result, unint64_t a2, unsigned int a3)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 32)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v6 < 0x40)
      {
        v3 |= 1 << v6;
      }

      if (v7 == a2)
      {
        goto LABEL_13;
      }

      ++v6;
      if (v7 >= a2)
      {
        __break(1u);
LABEL_13:
        if (result - 65 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (result == 64)
        {
          return 0;
        }

LABEL_21:
        v9 = v3 << result;
        v3 = a3;
        v8 = (v9 & a3) >> result;
        while (v8 > 0xFF)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          if (result == -64)
          {
            return 0;
          }

LABEL_31:
          v3 = (v3 >> -result) & a3;
          v8 = v3 << -result;
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }
        }

        return v8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (result - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  v8 = 0;
  v3 = 0;
  if ((result & 0x8000000000000000) != 0)
  {
    if (result != -64)
    {
      goto LABEL_31;
    }
  }

  else if (result != 64)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t NANBitmap.Time.Control.startOffset.getter@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = sub_10002F214(6, 9uLL, a1, a2);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v2 >> 60))
  {
    return 16 * v2;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

CoreP2P::NANBitmap::Time::Control __swiftcall NANBitmap.Time.Control.init(bitDuration:period:startOffset:)(CoreP2P::NANIntervalDuration bitDuration, CoreP2P::NANTimeUnit::SchedulePeriod period, CoreP2P::NANTimeUnit startOffset)
{
  if ((startOffset.rawValue & 0xFFFFFFFFFFFFE00FLL) != 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result.rawValue = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v5 = sub_100286BB0(bitDuration, 0, 3uLL);
    v6 = sub_100286BB0(period, 3, 3uLL);
    v7 = sub_1002388F4(startOffset.rawValue >> 4, 6, 9uLL);
    if ((v6 & ~v5) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | v5;
    if ((v7 & ~v9) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    return (v10 | v9);
  }

  return result;
}

CoreP2P::NANBitmap::Time::Control __swiftcall NANBitmap.Time.Control.offset(by:)(CoreP2P::NANTimeUnit by)
{
  v2 = v1;
  v4 = sub_10002F09C(0, 3uLL, v1);
  v5 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v4);
  if (v5 == 4)
  {
    v5 = 0;
  }

  v6 = sub_10002F09C(3uLL, 3uLL, v2);
  v7 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v6);
  v8 = v7;
  if (v7 == 8)
  {
    v7 = 0;
  }

  v9 = sub_10002F214(6, 9uLL, v2, v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 >> 60)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = by.rawValue + 16 * v9;
  if (__CFADD__(by.rawValue, 16 * v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v10 & 0xF) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 >> 13)
  {
LABEL_21:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result.rawValue = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v11 = sub_100286BB0(v5, 0, 3uLL);
  v12 = sub_100286BB0(v7, 3, 3uLL);
  v13 = sub_1002388F4(v10 >> 4, 6, 9uLL);
  if ((v12 & ~v11) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 | v11;
  if ((v13 & ~v15) != 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  return (v16 | v15);
}

_WORD *NANBitmap.Time.Control.availability.unsafeMutableAddressor()
{
  if (qword_10058A7D0 != -1)
  {
    swift_once();
  }

  return &static NANBitmap.Time.Control.availability;
}

unint64_t sub_1000D4768(uint64_t a1, unsigned __int8 a2, _WORD *a3)
{
  v5 = sub_100286BB0(0, 0, 3uLL);
  v6 = sub_100286BB0(a2, 3, 3uLL);
  result = sub_1002388F4(0, 6, 9uLL);
  if ((v6 & ~v5) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v5;
  if ((result & ~v9) != 0)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10 | v9;
  return result;
}

__int16 *NANBitmap.Time.Control.perDiscoveryWindow.unsafeMutableAddressor()
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  return &static NANBitmap.Time.Control.perDiscoveryWindow;
}

uint64_t sub_1000D48DC(void *a1, unsigned __int16 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_1000D49D4@<X0>(_WORD *a1@<X8>)
{
  v2 = sub_100286BE4();

  *a1 = v2;
  return result;
}

uint64_t NANBitmap.Time.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v12, v13);
  sub_1000E1584();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    sub_10000AB0C(a3, a4);
    v10 = sub_1000D4BE0(a3, a4);
    v11 = v8;
    sub_100031694(v12, v13);
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_10000CADC(&qword_10058CFF0, &qword_10058CC70, &unk_100484290);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v10, v11);
  }

  return sub_100002A00(v12);
}

uint64_t sub_1000D4BE0(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 255)
      {
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result < 255)
      {
        return result;
      }

LABEL_11:
      v8 = result;
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      swift_willThrow();
      return sub_1000124C8(v8, a2);
    }

    goto LABEL_13;
  }

  if (BYTE6(a2) == 255)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1000D4CB4(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    LODWORD(v3) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v3 = v3;
      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 != 2)
  {
    return result;
  }

  v5 = *(result + 16);
  v4 = *(result + 24);
  v6 = __OFSUB__(v4, v5);
  v3 = v4 - v5;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v3 >= 0xFFFF)
  {
    v8 = result;
    sub_10000B02C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
    return sub_1000124C8(v8, a2);
  }

  return result;
}

uint64_t NANBitmap.Time.description.getter(unsigned __int16 a1, uint64_t a2, unint64_t a3)
{
  v6 = *(*(type metadata accessor for Data.Iterator() - 8) + 64);
  __chkstk_darwin();
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AB0C(a2, a3);
  v8 = sub_10002D9E4(a1, a2, a3);
  v10 = v8;
  v12 = v11;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  if (v8 == v11)
  {
    return 0;
  }

  v14 = v8 >> 7;
  v27 = HIBYTE(v9);
  v25 = v9 >> 40;
  *&v26 = HIWORD(v9);
  v23 = xmmword_100480F40;
  v24 = HIDWORD(v9);
  v15 = v9 >> 24;
  v16 = v9 >> 16;
  v17 = v9 >> 8;
  while (1)
  {
    v28[0] = v9;
    v28[1] = v17;
    v28[2] = v16;
    v28[3] = v15;
    v28[4] = v24;
    v28[5] = v25;
    v28[6] = v26;
    v28[7] = v27;
    v18 = v10 + 128;
    if (v10 >= 0xFFFFFFFFFFFFFF80)
    {
      break;
    }

    v19 = v28[v14];
    v20 = v9;
    sub_10005DC58(&qword_100599FF0, &qword_100486D20);
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 56) = &type metadata for UInt8;
    *(v21 + 64) = &protocol witness table for UInt8;
    *(v21 + 32) = v19;
    v22._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v22);

    v9 = v20;
    v10 += 128;
    ++v14;
    if (v18 == v12)
    {
      return v29[0];
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TimeBitmap.init(bitmap:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10002D9E4(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t static NANBitmap.Time.__derived_struct_equals(_:_:)(__int16 a1, uint64_t a2, unint64_t a3, __int16 a4, uint64_t a5, unint64_t a6)
{
  if (a1 == a4)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t NANBitmap.Time.hash(into:)(int a1, Swift::UInt16 a2)
{
  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int NANBitmap.Time.hashValue.getter(Swift::UInt16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000D5384()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D53E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);

  return Data.hash(into:)();
}

Swift::Int sub_1000D543C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D549C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E1404(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D54F8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t IEEE80211Frame.header.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

double sub_1000D5534()
{
  result = 0.0;
  static TimeBitmap.zero = xmmword_1004841D0;
  qword_10059B370 = 0;
  return result;
}

uint64_t static TimeBitmap.zero.getter()
{
  if (qword_10058A7E0 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.zero;
}

double sub_1000D55B8()
{
  result = 0.0;
  static TimeBitmap.all = xmmword_1004841D0;
  qword_10059B390 = -1;
  return result;
}

__int128 *TimeBitmap.all.unsafeMutableAddressor()
{
  if (qword_10058A7E8 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.all;
}

uint64_t static TimeBitmap.all.getter()
{
  if (qword_10058A7E8 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.all;
}

int8x8_t TimeBitmap.SlotsView.formUnion(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = vorr_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

int8x8_t TimeBitmap.SlotsView.formIntersection(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = vand_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

int8x8_t TimeBitmap.SlotsView.formSymmetricDifference(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = veor_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

int8x8_t TimeBitmap.SlotsView.subtract(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = vdupq_n_s64(a3);
  v5 = vshlq_u64(v4, xmmword_1004841F0);
  v6 = vmovn_s64(vshlq_u64(v4, xmmword_1004841E0));
  v6.i8[1] = v6.i8[4];
  *v4.i8 = vmovn_s64(vshlq_u64(v4, xmmword_100484200));
  v7 = vzip1_s16(a3, v6);
  v8 = vmovn_s64(v5);
  v8.i8[1] = v8.i8[4];
  v8.i8[2] = v4.i8[0];
  v8.i8[3] = v4.i8[4];
  result = vbic_s8(v3[2], vzip1_s32(v7, v8));
  v3[2] = result;
  return result;
}

Swift::Void __swiftcall TimeBitmap.invert()()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 != v2)
  {
    v3 = v0 + 2;
    for (i = v1 >> 7; ; ++i)
    {
      v5 = v1 + 128;
      if (v1 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v6 = *v3;
      *(v3 + i) = ~*(&v6 + i);
      v1 += 128;
      if (v5 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t TimeBitmap.inverted()(unint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  if (result != a2)
  {
    v3 = result >> 7;
    for (i = result; ; i += 128)
    {
      v5 = i + 128;
      if (i >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      v6 = v7;
      *(&v7 + v3) = ~*(&v6 + v3);
      ++v3;
      if (v5 == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t *(*TimeBitmap.subscript.modify(uint64_t a1, unint64_t a2))(unint64_t *result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *(v2 + 16);
  *(a1 + 16) = (*(&v4 + (a2 >> 7)) >> ((a2 >> 4) & 7)) & 1;
  return sub_1000D5B18;
}

unint64_t *sub_1000D5B18(unint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = *result >> 7;
  v4 = *(v1 + 16);
  *(v1 + 16 + v3) = *(&v4 + v3) | (1 << ((v2 >> 4) & 7));
  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.index(after:)(CoreP2P::NANTimeUnit after)
{
  v1 = __CFADD__(after.rawValue, 16);
  result.rawValue = after.rawValue + 16;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.index(before:)(CoreP2P::NANTimeUnit before)
{
  v1 = before.rawValue >= 0x10;
  result.rawValue = before.rawValue - 16;
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.index(_:offsetBy:)(CoreP2P::NANTimeUnit _, Swift::Int offsetBy)
{
  if (offsetBy < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (offsetBy >> 60)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = __CFADD__(_.rawValue, 16 * offsetBy);
  _.rawValue += 16 * offsetBy;
  if (v2)
  {
LABEL_7:
    __break(1u);
  }

  return _;
}

Swift::Int __swiftcall TimeBitmap.distance(from:to:)(Swift::Int from, CoreP2P::NANTimeUnit to)
{
  if (to.rawValue >= from)
  {
    return (to.rawValue - from) >> 4;
  }

  __break(1u);
  return from;
}

unint64_t TimeBitmap.description.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0xE000000000000000;
  if (result == a2)
  {
    return 0;
  }

  v5 = result;
  for (i = result >> 7; ; ++i)
  {
    v11 = a3;
    v7 = v5 + 128;
    if (v5 >= 0xFFFFFFFFFFFFFF80)
    {
      break;
    }

    v8 = *(&v11 + i);
    sub_10005DC58(&qword_100599FF0, &qword_100486D20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100480F40;
    *(v9 + 56) = &type metadata for UInt8;
    *(v9 + 64) = &protocol witness table for UInt8;
    *(v9 + 32) = v8;
    v10._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v10);

    v5 += 128;
    if (v7 == a2)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TimeBitmap.Slot.setBit(_:)(Swift::UInt8 a1)
{
  if (a1 > 7u)
  {
    __break(1u);
  }

  else
  {
    *v1 |= 1 << a1;
  }
}

Swift::Void __swiftcall TimeBitmap.Slot.clearBit(_:)(Swift::UInt8 a1)
{
  if (a1 > 7u)
  {
    __break(1u);
  }

  else
  {
    *v1 &= (-1 << a1) - 1;
  }
}

Swift::Int InfraScanCompleteEvent.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t (*TimeBitmap.SlotsView.subscript.modify(uint64_t a1, unint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = *(v2 + 16);
  *(a1 + 16) = *(&v4 + (a2 >> 7));
  return sub_1000D5DE4;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.SlotsView.index(after:)(CoreP2P::NANTimeUnit after)
{
  v1 = __CFADD__(after.rawValue, 128);
  result.rawValue = after.rawValue + 128;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.SlotsView.index(_:offsetBy:)(CoreP2P::NANTimeUnit _, Swift::Int offsetBy)
{
  if (offsetBy < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (offsetBy >> 57)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = __CFADD__(_.rawValue, offsetBy << 7);
  _.rawValue += offsetBy << 7;
  if (v2)
  {
LABEL_7:
    __break(1u);
  }

  return _;
}

CoreP2P::NANTimeUnit __swiftcall TimeBitmap.SlotsView.index(before:)(CoreP2P::NANTimeUnit before)
{
  v1 = before.rawValue >= 0x80;
  result.rawValue = before.rawValue - 128;
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall TimeBitmap.SlotsView.distance(from:to:)(Swift::Int from, CoreP2P::NANTimeUnit to)
{
  if (to.rawValue >= from)
  {
    return (to.rawValue - from) >> 7;
  }

  __break(1u);
  return from;
}

void *sub_1000D5EA4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result < 0x80uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 128;
  }

  return result;
}

void *sub_1000D5EBC(void *result)
{
  if (*result < 0x80uLL)
  {
    __break(1u);
  }

  else
  {
    *result -= 128;
  }

  return result;
}

uint64_t (*sub_1000D5ED4(_BYTE *a1, unint64_t *a2))()
{
  v3 = *a2;
  v5 = *(v2 + 16);
  *a1 = *(&v5 + (v3 >> 7));
  return NANBitmap.Channel.operatingClass.getter;
}

unint64_t *sub_1000D5F18@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = v2[1];
  if (v5 < *v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *result;
  if (*result < v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result[1];
  if (v5 >= v7)
  {
    *(a2 + 8) = v7;
    *(a2 + 16) = v3;
    *(a2 + 24) = v4;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 sub_1000D5F60@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  result = *(v1 + 1);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = result.n128_u64[0];
  return result;
}

void *sub_1000D5FD0@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 >> 57)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__CFADD__(*result, a2 << 7))
  {
    *a3 = *result + (a2 << 7);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_1000D5FFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *a3 - *result;
  if (*a3 < *result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0)
  {
    if (v5 < 0x80)
    {
      if (!a2)
      {
        goto LABEL_9;
      }

LABEL_7:
      v6 = 0;
      v7 = 1;
LABEL_11:
      *a4 = v6;
      *(a4 + 8) = v7;
      return result;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 > v5 >> 7)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = __CFADD__(v4, a2 << 7);
  v6 = v4 + (a2 << 7);
  if (!v8)
  {
    v7 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1000D6060(void *result, void *a2)
{
  if (*a2 >= *result)
  {
    return ((*a2 - *result) >> 7);
  }

  __break(1u);
  return result;
}

void *sub_1000D607C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= 0xFFFFFFFFFFFFFF80)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 128;
  }

  return result;
}

void *sub_1000D6094(void *result)
{
  if (*result >= 0xFFFFFFFFFFFFFF80)
  {
    __break(1u);
  }

  else
  {
    *result += 128;
  }

  return result;
}

__n128 sub_1000D60AC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  result = *(v1 + 1);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

unint64_t sub_1000D60C4()
{
  v1 = v0[1];
  if (v1 >= *v0)
  {
    return (v1 - *v0) >> 7;
  }

  __break(1u);
  return result;
}

void sub_1000D60DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 - *v0;
  if (v2 < *v0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  if (v3 >= 0x80)
  {
    v4 = v0[2];
    v5 = (v3 >> 7);
    v6 = sub_1000DD4A8(v3 >> 7, 0, &qword_10058D350, &qword_100486958);
    if (sub_1002066EC(v7, (v6 + 4), v5, v1, v2, v4) != v5)
    {
      goto LABEL_6;
    }
  }
}

unint64_t *sub_1000D618C(unint64_t *result, unint64_t a2, unint64_t a3)
{
  v3 = a2 - result;
  if (a2 < result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v3 < 0x10)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = v3 >> 4;
  v8 = sub_1000DD4A8(v3 >> 4, 0, &qword_10058D348, &qword_100486950);
  result = sub_1000DD900(v9, (v8 + 4), v7, v6, a2, a3);
  if (result != v7)
  {
    goto LABEL_8;
  }

  return v8;
}

void sub_1000D6250(int a1, int a2, int a3, unint64_t a4)
{
  v4 = a4 >> 8;
  v5 = a4 >> 16;
  v6 = a4 >> 24;
  v7 = HIDWORD(a4);
  v8 = a4 >> 40;
  v9 = HIWORD(a4);
  v10 = HIBYTE(a4);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
}

Swift::Int _s7CoreP2P10TimeBitmapV9SlotsViewV9hashValueSivg_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a3 >> 8;
  v5 = a3 >> 16;
  v6 = a3 >> 24;
  v7 = HIDWORD(a3);
  v8 = a3 >> 40;
  v9 = HIWORD(a3);
  v10 = HIBYTE(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  return Hasher._finalize()();
}

Swift::Int sub_1000D63BC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[23];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

void sub_1000D6494()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[23];
  Hasher._combine(_:)(v0[16]);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int sub_1000D6534()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[23];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

void *sub_1000D6614@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result < 0x10uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 16;
  }

  return result;
}

void *sub_1000D662C(void *result)
{
  if (*result < 0x10uLL)
  {
    __break(1u);
  }

  else
  {
    *result -= 16;
  }

  return result;
}

void *sub_1000D66A4@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 >> 60)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__CFADD__(*result, 16 * a2))
  {
    *a3 = *result + 16 * a2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_1000D66D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *a3 - *result;
  if (*a3 < *result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0)
  {
    if (v5 < 0x10)
    {
      if (!a2)
      {
        goto LABEL_9;
      }

LABEL_7:
      v6 = 0;
      v7 = 1;
LABEL_11:
      *a4 = v6;
      *(a4 + 8) = v7;
      return result;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 > v5 >> 4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = __CFADD__(v4, 16 * a2);
  v6 = v4 + 16 * a2;
  if (!v8)
  {
    v7 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_1000D6734(void *result, void *a2)
{
  if (*a2 >= *result)
  {
    return ((*a2 - *result) >> 4);
  }

  __break(1u);
  return result;
}

void *sub_1000D6750(void *result, void *a2)
{
  if (*result < *a2 || *result >= a2[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D676C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D6788(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D67A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= 0xFFFFFFFFFFFFFFF0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 16;
  }

  return result;
}

void *sub_1000D67BC(void *result)
{
  if (*result >= 0xFFFFFFFFFFFFFFF0)
  {
    __break(1u);
  }

  else
  {
    *result += 16;
  }

  return result;
}

unint64_t sub_1000D67D4()
{
  v1 = v0[1];
  if (v1 >= *v0)
  {
    return (v1 - *v0) >> 4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000D6804(char a1)
{
  v1 = 2 * (a1 & 1);
  if ((a1 & 2) != 0)
  {
    v1 |= 0xCu;
  }

  if ((a1 & 4) != 0)
  {
    v1 |= 0x28u;
  }

  if ((a1 & 8) != 0)
  {
    v1 |= 0x8Cu;
  }

  if ((a1 & 0x10) != 0)
  {
    v1 |= 0x210u;
  }

  if ((a1 & 0x20) != 0)
  {
    v1 |= 0x814u;
  }

  if ((a1 & 0x40) != 0)
  {
    v1 |= 0x2018u;
  }

  if (a1 >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = v1 | 0x801C;
  }

  v4 = v2;
  return sub_10004F3B0(&v4, &v5);
}

unint64_t sub_1000D68D4(char a1)
{
  v1 = 2 * (a1 & 1);
  if ((a1 & 2) != 0)
  {
    v1 |= 0x30u;
  }

  if ((a1 & 4) != 0)
  {
    v1 |= 0x220u;
  }

  if ((a1 & 8) != 0)
  {
    v1 |= 0x2030u;
  }

  if ((a1 & 0x10) != 0)
  {
    v1 |= 0x20040u;
  }

  if ((a1 & 0x20) != 0)
  {
    v1 |= 0x200050u;
  }

  if ((a1 & 0x40) != 0)
  {
    v1 |= 0x2000060u;
  }

  if (a1 >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = v1 | 0x20000070;
  }

  v4 = v2;
  return sub_10004F3B0(&v4, &v5);
}

uint64_t TimeBitmap.nanBitmap.getter(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = a1 >> 7;
  v7 = a1;
  while (a2 != v7)
  {
    v31 = a3;
    if (*(&v31 + v6))
    {
      goto LABEL_8;
    }

    ++v6;
    v8 = __CFADD__(v7, 128);
    v7 += 128;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v7 = a2;
LABEL_8:
  v9 = a2;
  while (a1 != v9)
  {
    v8 = v9 >= 0x80;
    v9 -= 128;
    if (!v8)
    {
      __break(1u);
      goto LABEL_38;
    }

    v31 = a3;
    if (*(&v31 + (v9 >> 7)))
    {
      v10 = v9 + 128;
      goto LABEL_15;
    }
  }

  v10 = a1;
LABEL_15:
  v11 = v7 - a1;
  if (v7 < a1)
  {
    goto LABEL_40;
  }

  if ((v11 & 0xFFFFFFFFFFFFE00FLL) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = sub_100286BB0(0, 0, 3uLL);
  v13 = sub_100286BB0(4u, 3, 3uLL);
  v14 = sub_1002388F4(v11 >> 4, 6, 9uLL);
  v15 = v14;
  v16 = v10 - v7;
  if (v10 > v7)
  {
    if (a2 < a1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v7 < a1)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v10 > a2)
    {
LABEL_44:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v17 = _swiftEmptyArrayStorage;
    if (v16 >= 0x80)
    {
      v27 = v14;
      v28 = v13;
      v29 = v12;
      v18 = v16 >> 7;
      v31 = _swiftEmptyArrayStorage;
      sub_10002D838(0, v16 >> 7, 0);
      v17 = v31;
      v19 = v7 >> 7;
      while (v7 < v10)
      {
        v30[0] = a3;
        v20 = *(v30 + v19);
        v31 = v17;
        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          sub_10002D838((v21 > 1), v22 + 1, 1);
          v17 = v31;
        }

        v17[2] = v22 + 1;
        *(v17 + v22 + 32) = v20;
        if (v7 >= 0xFFFFFFFFFFFFFF80)
        {
          goto LABEL_39;
        }

        ++v19;
        v7 += 128;
        if (!--v18)
        {
          v13 = v28;
          v12 = v29;
          v15 = v27;
          goto LABEL_30;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_30:
    sub_10002D874(v17);
  }

  if ((v13 & ~v12) != 0)
  {
    v23 = v13;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 | v12;
  if ((v15 & ~v24) != 0)
  {
    v25 = v15;
  }

  else
  {
    v25 = 0;
  }

  return v25 | v24;
}

uint64_t TimeBitmap.init(period:repeating:)(unsigned __int8 a1, uint64_t a2)
{
  v5 = sub_100286BB0(0, 0, 3uLL);
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v6 = v5;
    v7 = sub_100286BB0(a1, 3, 3uLL);
    v8 = sub_1002388F4(0, 6, 9uLL);
    v9 = *(a2 + 16);
    if (v9)
    {
      sub_10002D838(0, v9, 0);
      v10 = _swiftEmptyArrayStorage[2];
      v11 = 32;
      do
      {
        v12 = *(a2 + v11);
        v13 = _swiftEmptyArrayStorage[3];
        if (v10 >= v13 >> 1)
        {
          sub_10002D838((v13 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        *(&_swiftEmptyArrayStorage[4] + v10) = v12;
        ++v11;
        ++v10;
        --v9;
      }

      while (v9);
    }

    if ((v7 & ~v6) != 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | v6;
    if ((v8 & ~v15) != 0)
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | v15;
    v18 = sub_10002D874(_swiftEmptyArrayStorage);
    v20 = v19;

    return sub_10002D9E4(v17, v18, v20);
  }

  return result;
}

uint64_t sub_1000D6E78()
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  v0 = static NANBitmap.Time.Control.perDiscoveryWindow;
  sub_10002D838(0, 4, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10002D838((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 15;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10002D838((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 0;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10002D838((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10002D838((v7 > 1), v2 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 4;
  *(&_swiftEmptyArrayStorage[4] + v6) = 0;
  v8 = sub_10002D874(_swiftEmptyArrayStorage);
  v10 = v9;

  result = sub_10002D9E4(v0, v8, v10);
  static TimeBitmap.primaryDiscoveryWindow = result;
  unk_10059B3A0 = v12;
  LOWORD(qword_10059B3A8) = v13;
  BYTE2(qword_10059B3A8) = v14;
  BYTE3(qword_10059B3A8) = v15;
  BYTE4(qword_10059B3A8) = v16;
  BYTE5(qword_10059B3A8) = v17;
  BYTE6(qword_10059B3A8) = v18;
  HIBYTE(qword_10059B3A8) = v19;
  return result;
}

uint64_t *TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor()
{
  if (qword_10058A7F0 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.primaryDiscoveryWindow;
}

uint64_t static TimeBitmap.primaryDiscoveryWindow.getter()
{
  if (qword_10058A7F0 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.primaryDiscoveryWindow;
}

uint64_t sub_1000D7148()
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  v0 = static NANBitmap.Time.Control.perDiscoveryWindow;
  sub_10002D838(0, 4, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10002D838((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_10002D838((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 15;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_10002D838((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_10002D838((v7 > 1), v2 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 4;
  *(&_swiftEmptyArrayStorage[4] + v6) = 0;
  v8 = sub_10002D874(_swiftEmptyArrayStorage);
  v10 = v9;

  result = sub_10002D9E4(v0, v8, v10);
  static TimeBitmap.secondaryDiscoveryWindow = result;
  *algn_10059B3B8 = v12;
  LOWORD(qword_10059B3C0) = v13;
  BYTE2(qword_10059B3C0) = v14;
  BYTE3(qword_10059B3C0) = v15;
  BYTE4(qword_10059B3C0) = v16;
  BYTE5(qword_10059B3C0) = v17;
  BYTE6(qword_10059B3C0) = v18;
  HIBYTE(qword_10059B3C0) = v19;
  return result;
}

uint64_t *TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor()
{
  if (qword_10058A7F8 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.secondaryDiscoveryWindow;
}

uint64_t static TimeBitmap.secondaryDiscoveryWindow.getter()
{
  if (qword_10058A7F8 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.secondaryDiscoveryWindow;
}

double sub_1000D7418()
{
  static TimeBitmap.twoGHzOutOfBoundFrameBitmap = xmmword_1004841D0;
  *&result = 0xFF000000FFLL;
  qword_10059B3E0 = 0xFF000000FFLL;
  return result;
}

__int128 *TimeBitmap.twoGHzOutOfBoundFrameBitmap.unsafeMutableAddressor()
{
  if (qword_10058A800 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.twoGHzOutOfBoundFrameBitmap;
}

uint64_t static TimeBitmap.twoGHzOutOfBoundFrameBitmap.getter()
{
  if (qword_10058A800 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.twoGHzOutOfBoundFrameBitmap;
}

double sub_1000D74E0()
{
  static TimeBitmap.fiveGHzOutOfBoundFrameBitmap = xmmword_1004841D0;
  *&result = 0xFF000000FF00;
  qword_10059B400 = 0xFF000000FF00;
  return result;
}

__int128 *TimeBitmap.fiveGHzOutOfBoundFrameBitmap.unsafeMutableAddressor()
{
  if (qword_10058A808 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.fiveGHzOutOfBoundFrameBitmap;
}

uint64_t static TimeBitmap.fiveGHzOutOfBoundFrameBitmap.getter()
{
  if (qword_10058A808 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.fiveGHzOutOfBoundFrameBitmap;
}

double sub_1000D75A8()
{
  static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap = xmmword_1004841D0;
  *&result = 0xFFFFFFFFLL;
  qword_10059B420 = 0xFFFFFFFFLL;
  return result;
}

__int128 *TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor()
{
  if (qword_10058A810 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap;
}

uint64_t static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap.getter()
{
  if (qword_10058A810 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.multicastTxStatusOutOfBandActionFrameBitMap;
}

double sub_1000D7670()
{
  result = 0.0;
  static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap = xmmword_1004841D0;
  qword_10059B440 = 0xFFFFFFFF0000;
  return result;
}

__int128 *TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap.unsafeMutableAddressor()
{
  if (qword_10058A818 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap;
}

uint64_t static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap.getter()
{
  if (qword_10058A818 != -1)
  {
    swift_once();
  }

  return static TimeBitmap.multicastRxStatusOutOfBandActionFrameBitMap;
}

unint64_t sub_1000D7768@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P20NANAvailabilityEntryV15UsagePreferenceO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t NANAvailabilityEntry.Control.usagePreference.getter@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1000D3F78(3, 2uLL, a1, a2);
  if (result > 3)
  {
    sub_10000B02C();
    swift_allocError();
    *v3 = xmmword_10047CE70;
    *(v3 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

double NANAvailabilityEntry.Control.utilization.getter@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = sub_1000D3F78(5, 2uLL, a1, a2);
  result = 0.0;
  if (v2 <= 4)
  {
    return v2 * 0.2;
  }

  return result;
}

Swift::Int sub_1000D79A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D79F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000D7A34@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1000E0CB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

CoreP2P::WiFiInterfaceLinkState_optional __swiftcall WiFiInterfaceLinkState.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = CoreP2P_WiFiInterfaceLinkState_linkUp;
  }

  else
  {
    v1.value = CoreP2P_WiFiInterfaceLinkState_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t NANAvailabilityEntry.BandChannelEntries.Control.entriesType.getter(char a1)
{
  v1 = sub_100038D34(0, 1uLL, a1);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  sub_10000B02C();
  swift_allocError();
  *v3 = xmmword_10047CE70;
  *(v3 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t NANAvailabilityEntry.BandChannelEntries.Control.entriesType.setter(char a1)
{
  v3 = *v1;
  result = sub_100038D34(0, 1uLL, *v1);
  if (result == 1)
  {
    if (a1)
    {
      return result;
    }
  }

  else
  {
    if (result)
    {
      sub_10000B02C();
      swift_allocError();
      *v7 = xmmword_10047CE70;
      *(v7 + 16) = 2;
      swift_willThrow();
      goto LABEL_11;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  v5 = sub_1000D40C8(4, 4uLL, v3, result);
  if (v5 > 15)
  {
    __break(1u);

    __break(1u);
LABEL_11:
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = sub_100286B98(a1 & 1, 0, 1uLL);
  result = sub_100286B80(v5, 4, 4uLL);
  *v1 = v6 | v3 & 2 | result;
  return result;
}

CoreP2P::NANAvailabilityEntry::BandChannelEntries::Control_optional __swiftcall NANAvailabilityEntry.BandChannelEntries.Control.init(entriesType:nonContiguousBandwidth:numberOfEntries:)(CoreP2P::NANAvailabilityEntry::BandChannelEntries::Control::EntriesType entriesType, Swift::Bool nonContiguousBandwidth, Swift::Int numberOfEntries)
{
  if (numberOfEntries > 15)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v5 = sub_100286B98(entriesType & 1, 0, 1uLL);
    v6 = sub_100286B80(numberOfEntries, 4, 4uLL);
    v8 = 0;
    if (nonContiguousBandwidth)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v7 = v5 | v10 | v6;
  }

  return (v7 | (v8 << 8));
}

unint64_t (*NANAvailabilityEntry.BandChannelEntries.Control.entriesType.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *v1;
  *(a1 + 17) = *v1;
  v4 = sub_100038D34(0, 1uLL, v3);
  *(a1 + 8) = 0;
  if (v4 > 1u)
  {
    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v4;
    return sub_1000D7EF0;
  }

  return result;
}

unint64_t sub_1000D7EF0(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 16);
  result = sub_100038D34(0, 1uLL, v5);
  if (a2)
  {
    if (!v4)
    {
      if (result == 1)
      {
        if (v6)
        {
          return result;
        }

LABEL_12:
        v8 = sub_1000D40C8(4, 4uLL, v5, result);
        if (v8 <= 15)
        {
          goto LABEL_17;
        }

        __break(1u);
        goto LABEL_20;
      }

      if (!result)
      {
        if ((v6 & 1) == 0)
        {
          return result;
        }

        goto LABEL_12;
      }

LABEL_21:
      sub_10000B02C();
      swift_allocError();
      *v10 = xmmword_10047CE70;
      *(v10 + 16) = 2;
      swift_willThrow();
    }

LABEL_22:
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v4)
  {
    goto LABEL_22;
  }

  if (result == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    if (result)
    {
      goto LABEL_21;
    }

    if (!v6)
    {
      return result;
    }
  }

  v8 = sub_1000D40C8(4, 4uLL, v5, result);
  if (v8 > 15)
  {
LABEL_20:
    __break(1u);

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  v9 = sub_100286B98(v6, 0, 1uLL);
  result = sub_100286B80(v8, 4, 4uLL);
  **a1 = v9 | v5 & 2 | result;
  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.Control.numberOfEntries.setter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = sub_1000D40C8(4, 4uLL, *v2, a2);
  if (result != a1)
  {
    v6 = sub_100038D34(0, 1uLL, v4);
    if (v6 == 1)
    {
      if (a1 <= 15)
      {
        v7 = 1;
LABEL_8:
        v8 = sub_100286B98(v7, 0, 1uLL);
        result = sub_100286B80(a1, 4, 4uLL);
        *v2 = v8 | v4 & 2 | result;
        return result;
      }

      __break(1u);
    }

    else
    {
      if (v6)
      {
        sub_10000B02C();
        swift_allocError();
        *v9 = xmmword_10047CE70;
        *(v9 + 16) = 2;
        swift_willThrow();
        goto LABEL_13;
      }

      if (a1 <= 15)
      {
        v7 = 0;
        goto LABEL_8;
      }
    }

    __break(1u);

    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*NANAvailabilityEntry.BandChannelEntries.Control.numberOfEntries.modify@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 8) = v2;
  v4 = *v2;
  *(a1 + 24) = *v2;
  v5 = sub_1000D40C8(4, 4uLL, v4, a2);
  *(a1 + 16) = 0;
  *a1 = v5;
  return sub_1000D82E4;
}

uint64_t sub_1000D82E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  result = sub_1000D40C8(4, 4uLL, v6, a3);
  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      if (result == v7)
      {
        return result;
      }

      v11 = sub_100038D34(0, 1uLL, v6);
      if (v11 == 1)
      {
        if (v7 <= 15)
        {
          v10 = 1;
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (!v11)
      {
        if (v7 <= 15)
        {
          v10 = 0;
          goto LABEL_18;
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_10000B02C();
      swift_allocError();
      *v13 = xmmword_10047CE70;
      *(v13 + 16) = 2;
      swift_willThrow();
      goto LABEL_26;
    }

LABEL_24:
    swift_unexpectedError();
    __break(1u);
LABEL_26:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v5)
  {
    goto LABEL_24;
  }

  if (result == v7)
  {
    return result;
  }

  v9 = sub_100038D34(0, 1uLL, v6);
  if (v9 != 1)
  {
    if (!v9)
    {
      if (v7 <= 15)
      {
        v10 = 0;
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v7 > 15)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);

    __break(1u);
    goto LABEL_24;
  }

  v10 = 1;
LABEL_18:
  v12 = sub_100286B98(v10, 0, 1uLL);
  result = sub_100286B80(v7, 4, 4uLL);
  **(a1 + 8) = result | v12 | v6 & 2;
  return result;
}

uint64_t sub_1000D860C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = sub_100038D34(0, 1uLL, *v0);
  if ((v2 & 1) == 0)
  {
    v9 = v4;
    if (v4 == 1)
    {
      v10 = sub_1000D40C8(4, 4uLL, v3, v4);
      if (v10 > 15)
      {
        goto LABEL_27;
      }

      v11 = sub_100286B98(0, 0, 1uLL);
      v12 = sub_100286B80(v10, 4, 4uLL);
      v9 = v11 | v3 & 2u;
      v3 = v9 | v12;
      *v0 = v9 | v12;
    }

    else if (v4)
    {
      goto LABEL_32;
    }

    v13 = *(v1 + 16);
    result = sub_1000D40C8(4, 4uLL, v3, v9);
    if (result == v13)
    {
      return result;
    }

    v17 = sub_100038D34(0, 1uLL, v3);
    if (v17 == 1)
    {
      if (v13 <= 0xF)
      {
        v16 = 1;
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    if (!v17)
    {
      if (v13 <= 0xF)
      {
        v16 = 0;
        goto LABEL_24;
      }

      goto LABEL_31;
    }

LABEL_32:
    sub_10000B02C();
    swift_allocError();
    *v19 = xmmword_10047CE70;
    *(v19 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v5 = v4;
  if (!v4)
  {
    v6 = sub_1000D40C8(4, 4uLL, v3, v4);
    if (v6 <= 15)
    {
      v7 = sub_100286B98(1u, 0, 1uLL);
      v8 = sub_100286B80(v6, 4, 4uLL);
      v5 = v7 | v3 & 2u;
      v3 = v5 | v8;
      *v0 = v5 | v8;
      goto LABEL_9;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v4 != 1)
  {
    goto LABEL_32;
  }

LABEL_9:
  v13 = *(v1 + 16);
  result = sub_1000D40C8(4, 4uLL, v3, v5);
  if (result == v13)
  {
    return result;
  }

  v15 = sub_100038D34(0, 1uLL, v3);
  if (v15 != 1)
  {
    if (!v15)
    {
      if (v13 <= 0xF)
      {
        v16 = 0;
        goto LABEL_24;
      }

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (v13 > 0xF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);

    __break(1u);

    __break(1u);

    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_32;
  }

  v16 = 1;
LABEL_24:
  v18 = sub_100286B98(v16, 0, 1uLL);
  result = sub_100286B80(v13, 4, 4uLL);
  *v0 = v18 | v3 & 2 | result;
  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.entries.setter(uint64_t a1, char a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2 & 1;

  return sub_1000D860C();
}

uint64_t *sub_1000D8A28(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_1000D860C();
  }

  return result;
}

Swift::Void __swiftcall NANAvailabilityEntry.BandChannelEntries.add(channel:)(CoreP2P::NANBitmap::Channel channel)
{
  if (*(v1 + 16) == 1)
  {
    is_nil = channel.auxiliaryChannelBitmap.is_nil;
    v3 = *(v1 + 8);
    value = channel.auxiliaryChannelBitmap.value;
    primaryChannelBitmap = channel.primaryChannelBitmap;
    v6 = *&channel.operatingClass >> 16;
    operatingClass = channel.operatingClass;
    sub_10005DC58(&qword_100598800, &qword_1004842A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100480F40;
    *(inited + 32) = operatingClass;
    *(inited + 34) = v6;
    *(inited + 36) = primaryChannelBitmap;
    *(inited + 38) = value;
    *(inited + 40) = is_nil;

    sub_1002352B4(inited);

    *(v1 + 8) = v3;
    *(v1 + 16) = 1;
    sub_1000D860C();
  }
}

void NANAvailabilityEntry.BandChannelEntries.hash(into:)(uint64_t a1, Swift::UInt8 a2, uint64_t a3, char a4)
{
  Hasher._combine(_:)(a2);
  if (a4)
  {

    sub_1000DF50C(a1, a3);
  }

  else
  {
    v7 = *(a3 + 16);
    Hasher._combine(_:)(v7);
    if (v7)
    {
      v8 = (a3 + 32);
      do
      {
        v9 = *v8++;
        Hasher._combine(_:)(v9);
        --v7;
      }

      while (v7);
    }
  }
}

Swift::Int NANAvailabilityEntry.BandChannelEntries.hashValue.getter(Swift::UInt8 a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a3)
  {
    sub_1000DF50C(v10, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    Hasher._combine(_:)(v6);
    if (v6)
    {
      v7 = (a2 + 32);
      do
      {
        v8 = *v7++;
        Hasher._combine(_:)(v8);
        --v6;
      }

      while (v6);
    }
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000D8C8C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  NANAvailabilityEntry.BandChannelEntries.hash(into:)(v5, v3, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_1000D8CE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E1F60(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t NANAvailabilityEntry.BandChannelEntries.encode(to:)(void *a1, char a2, uint64_t a3, char a4)
{
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  LOBYTE(v12) = a2;
  sub_100031694(v10, v11);
  sub_1000E2618();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    v12 = a3;
    sub_100031694(v10, v11);
    if (a4)
    {
      sub_10005DC58(&qword_10058D000, &qword_1004842A8);
      sub_1000E266C();
    }

    else
    {
      sub_10005DC58(&qword_10058D018, &qword_1004842B0);
      sub_1000E2744();
    }

    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v10);
}

uint64_t NANAvailabilityEntry.timeBitmap.getter()
{
  v1 = v0[1];
  sub_10005D4F4(v1, v0[2], v0[3]);
  return v1;
}

uint64_t NANAvailabilityEntry.timeBitmap.setter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10002F75C(*(v3 + 1), *(v3 + 2), *(v3 + 3));
  *(v3 + 1) = a1;
  *(v3 + 2) = a2;
  *(v3 + 3) = a3;
  v8 = *v3;
  if (a3 >> 60 == 15)
  {
    if ((*v3 & 0x1000) == 0)
    {
      return result;
    }

    v9 = v8 & 0xEFFF;
  }

  else
  {
    if ((*v3 & 0x1000) != 0)
    {
      return result;
    }

    v9 = v8 | 0x1000;
  }

  *v3 = v9;
  return result;
}

__int16 **sub_1000D8FB4(__int16 **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = **result;
    if (*(*result + 3) >> 60 == 15)
    {
      if ((**result & 0x1000) != 0)
      {
        *v2 = v3 & 0xEFFF;
      }
    }

    else if ((**result & 0x1000) == 0)
    {
      *v2 = v3 | 0x1000;
    }
  }

  return result;
}

uint64_t NANAvailabilityEntry.bandChannelEntries.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  return v3;
}

uint64_t NANAvailabilityEntry.bandChannelEntries.setter(char a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);

  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3 & 1;
  return result;
}

uint64_t NANAvailabilityEntry.init(control:timeBitmap:bandChannelEntries:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_10005D4F4(a2, a3, a4);
  sub_10002F75C(0, 0, 0xF000000000000000);
  if (a4 >> 60 == 15)
  {
    v16 = a1 & 0xEFFF;
  }

  else
  {
    sub_10002F75C(a2, a3, a4);
    v16 = a1 | 0x1000;
  }

  sub_10005D4F4(a2, a3, a4);

  sub_10002F75C(a2, a3, a4);

  *a8 = v16;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

uint64_t static NANAvailabilityEntry.potentialEntry(on:with:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100286B98(1u, 0, 1uLL);
  v9 = sub_100286B80(1, 4, 4uLL);
  sub_10005DC58(&qword_100598800, &qword_1004842A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480F40;
  *(v10 + 32) = a1;
  *(v10 + 34) = WORD1(a1);
  *(v10 + 36) = BYTE4(a1);
  *(v10 + 38) = HIWORD(a1);
  *(v10 + 40) = a2 & 1;
  sub_10002F75C(0, 0, 0xF000000000000000);
  sub_10005D4F4(0, 0, 0xF000000000000000);

  sub_10002F75C(0, 0, 0xF000000000000000);

  *a4 = (8 * a3) | 2;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xF000000000000000;
  *(a4 + 32) = v9 | v8;
  *(a4 + 40) = v10;
  *(a4 + 48) = 1;
  return result;
}

uint64_t static NANAvailabilityEntry.committedEntry(on:for:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int16 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_100286B98(1u, 0, 1uLL);
  v13 = a3;
  v14 = sub_100286B80(1, 4, 4uLL) | v12;
  sub_10005DC58(&qword_100598800, &qword_1004842A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100480F40;
  *(v15 + 32) = a1;
  *(v15 + 34) = WORD1(a1);
  *(v15 + 36) = BYTE4(a1);
  *(v15 + 38) = HIWORD(a1);
  *(v15 + 40) = a2 & 1;
  sub_10000AB0C(a4, a5);
  sub_10002F75C(0, 0, 0xF000000000000000);
  sub_10005D4F4(v13, a4, a5);

  sub_10002F75C(v13, a4, a5);

  *a6 = 4097;
  *(a6 + 8) = v13;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 32) = v14;
  *(a6 + 40) = v15;
  *(a6 + 48) = 1;
  return result;
}

void NANAvailabilityEntry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  if (*(v2 + 24) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
    Data.hash(into:)();
  }

  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  Hasher._combine(_:)(*(v2 + 32));
  if (v7)
  {

    sub_1000DF50C(a1, v6);
  }

  else
  {
    v8 = *(v6 + 16);
    Hasher._combine(_:)(v8);
    if (v8)
    {
      v9 = (v6 + 32);
      do
      {
        v10 = *v9++;
        Hasher._combine(_:)(v10);
        --v8;
      }

      while (v8);
    }
  }
}

Swift::Int NANAvailabilityEntry.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANAvailabilityEntry.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D9570()
{
  Hasher.init(_seed:)();
  NANAvailabilityEntry.hash(into:)(v1);
  return Hasher._finalize()();
}

double NANAvailabilityEntry.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E1DFC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t NANAvailabilityEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = sub_100033AA8(_swiftEmptyArrayStorage);
  v6 = type metadata accessor for BinaryEncoder();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100480A90;
  *(v7 + 32) = v5;
  v22 = *v3;
  v26 = v6;
  v8 = sub_1000E281C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v27 = v8;
  v25[0] = v7;
  sub_1000E2864();

  dispatch thunk of Encodable.encode(to:)();
  if (v2)
  {

    sub_100002A00(v25);
    return sub_100002A00(v28);
  }

  sub_100002A00(v25);
  v23 = *(v3 + 4);
  v24 = *(v3 + 3);
  v26 = v6;
  v27 = v8;
  v25[0] = v7;

  sub_10005DC58(&qword_10058D038, &unk_1004842B8);
  sub_1000E28B8();
  Optional<A>.encode(to:)();
  sub_100002A00(v25);
  v9 = *(v3 + 5);
  v10 = *(v3 + 48);
  v11 = *(v3 + 32);
  v26 = v6;
  v27 = v8;
  v25[0] = v7;

  NANAvailabilityEntry.BandChannelEntries.encode(to:)(v25, v11, v9, v10);
  sub_100002A00(v25);
  result = swift_beginAccess();
  v13 = *(v7 + 16);
  v14 = *(v7 + 24) >> 62;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
LABEL_16:
      sub_100031694(v28, v29);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v20 = *(v7 + 16);
      v21 = *(v7 + 24);
      sub_100031694(v28, v29);
      sub_10000AB0C(v20, v21);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v20, v21);

      return sub_100002A00(v28);
    }

    v16 = v13 + 16;
    v13 = *(v13 + 16);
    v15 = *(v16 + 8);
    v17 = v15 - v13;
    if (!__OFSUB__(v15, v13))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v14)
  {
    goto LABEL_16;
  }

  v18 = __OFSUB__(HIDWORD(v13), v13);
  v19 = HIDWORD(v13) - v13;
  if (v18)
  {
    goto LABEL_19;
  }

  v17 = v19;
LABEL_14:
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v17 >> 16))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

BOOL sub_1000D9914(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7CoreP2P20NANAvailabilityEntryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

void sub_1000D9C38(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a4;
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 40);
  v16 = *a1 & 7;
  if (v16 != 2)
  {
    v17 = v16 != 1 || *(a1 + 48) == 0;
    if (!v17 && *(v15 + 16) == 1)
    {
      v18 = *(a1 + 8);
      v58 = *(a1 + 16);
      v59 = v18;
      v19 = *(a1 + 24);
      v20 = *(v15 + 40);
      v21 = NANBitmap.Channel.channel.getter(*(v15 + 32) | (*(v15 + 34) << 16) | (*(v15 + 36) << 32) | (*(v15 + 38) << 48), v11);
      if ((v21 & 0xFF00000000) != 0x300000000 && v19 >> 60 != 15)
      {
        v23 = v21;
        v61 = 60;
        v62 = 0xE100000000000000;
        v25 = v58;
        v24 = v59;
        sub_10005D4F4(v59, v58, v19);
        v27._countAndFlagsBits = Channel.description.getter(v23 & 0xFFFFFFFFFFFFLL, v26);
        String.append(_:)(v27);

        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        String.append(_:)(v28);
        v29._countAndFlagsBits = NANBitmap.Time.description.getter(v24, v25, v19);
        String.append(_:)(v29);

        v30._countAndFlagsBits = 62;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        sub_10002F75C(v24, v25, v19);
LABEL_25:
        v48 = v61;
        v50 = v62;
        goto LABEL_26;
      }
    }

LABEL_23:
    LOBYTE(v61) = a2;
    WORD1(v61) = HIWORD(a2);
    v63 = &type metadata for NANAttribute.Availability;
    v62 = a3;

    Mirror.init(reflecting:)();
    v48 = Mirror.description.getter();
    v50 = v49;
    (*(v9 + 8))(v13, v8);
LABEL_26:
    v56 = v60;
    *v60 = v48;
    v56[1] = v50;
    return;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_23;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  v31._countAndFlagsBits = 60;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v33 = sub_1000D3CF8(3, 2uLL, v14, v32);
  if (!v4)
  {
    LOBYTE(v64) = v33;
    _print_unlocked<A, B>(_:_:)();
    v34._countAndFlagsBits = 8250;
    v34._object = 0xE200000000000000;
    String.append(_:)(v34);
    v35 = *(v15 + 16);
    v36 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v64 = _swiftEmptyArrayStorage;
      sub_1000C0464(0, v35, 0);
      v36 = v64;
      v38 = (v15 + 40);
      do
      {
        v39 = *v38;
        v15 = v15 & 0xFF000000FF00 | *(v38 - 8) | (*(v38 - 3) << 16) | (*(v38 - 4) << 32) | (*(v38 - 1) << 48);
        v40 = NANBitmap.Channel.channel.getter(v15, v37);
        if ((v40 & 0xFF00000000) == 0x300000000)
        {
          v42 = 0xE100000000000000;
          v43 = 48;
        }

        else
        {
          v43 = Channel.description.getter(v40 & 0xFFFFFFFFFFFFLL, v41);
        }

        v64 = v36;
        v45 = v36[2];
        v44 = v36[3];
        if (v45 >= v44 >> 1)
        {
          v59 = v43;
          v47 = v42;
          sub_1000C0464((v44 > 1), v45 + 1, 1);
          v43 = v59;
          v42 = v47;
          v36 = v64;
        }

        v36[2] = v45 + 1;
        v46 = &v36[2 * v45];
        v46[4] = v43;
        v46[5] = v42;
        v38 += 10;
        --v35;
      }

      while (v35);
    }

    v64 = v36;
    sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
    sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
    v51 = BidirectionalCollection<>.joined(separator:)();
    v53 = v52;

    v54._countAndFlagsBits = v51;
    v54._object = v53;
    String.append(_:)(v54);

    v55._countAndFlagsBits = 62;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    goto LABEL_25;
  }

  swift_unexpectedError();
  __break(1u);
}

uint64_t static Array<A>.potentialAvailability(using:supportsSimultaneousDualBand:for:)(char a1, char *a2, uint64_t a3)
{
  v6 = a1;
  v7 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v8 = *(a3 + 16);
  if (v8)
  {
    v3 = a3;
    v7 = sub_1000DD660(v8, 0);
    v4 = sub_1000DDC6C(&v30, (v7 + 32), v8, v3);
    v6 = v31;
    v9 = v32;

    sub_1000E290C();
    if (v4 != v8)
    {
      __break(1u);
      goto LABEL_28;
    }

    v6 = a1;
  }

  v30 = v7;
  v7 = 0;
  sub_1000DDEB8(&v30);
  v11 = *(v30 + 2);
  if (v11)
  {
    v12 = v30 + 38;
    do
    {
      v16 = *(v12 - 2);
      v17 = *v12;
      v18 = sub_100019B9C(*(v12 - 6) | (v16 << 32) | (*(v12 - 1) << 40));
      if ((v19 & 0x100) == 0)
      {
        v20 = v18 & 0xFFFF00FFFFFF00FFLL;
        if ((a2 & 1) != 0 && v16)
        {
          v4 = v20 | v4 & 0xFF000000FF00;
          v13 = v19 & 1;
          v14 = &v33;
          v15 = v4;
        }

        else
        {
          v3 = v20 | v3 & 0xFF000000FF00;
          v13 = v19 & 1;
          v14 = &v34;
          v15 = v3;
        }

        sub_1000DA388(v15, v13, v17, v14);
      }

      v12 += 8;
      --v11;
    }

    while (v11);

    v8 = v34;
    if (v34[2])
    {
LABEL_14:
      v9 = sub_100286BB0(0, 0, 4uLL) | 0x20;
      a2 = sub_100116F70(0, 1, 1, _swiftEmptyArrayStorage);
      v4 = *(a2 + 2);
      v10 = *(a2 + 3);
      v3 = v4 + 1;
      if (v4 < v10 >> 1)
      {
LABEL_15:
        *(a2 + 2) = v3;
        v21 = &a2[16 * v4];
        v21[32] = v6;
        *(v21 + 17) = v9;
        *(v21 + 5) = v8;
        goto LABEL_18;
      }

LABEL_28:
      a2 = sub_100116F70((v10 > 1), v3, 1, a2);
      goto LABEL_15;
    }
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_14;
    }
  }

  a2 = _swiftEmptyArrayStorage;
LABEL_18:
  v22 = v33;
  if (!v33[2])
  {

    return a2;
  }

  v23 = sub_100286BB0(1u, 0, 4uLL);
  if (!v7)
  {
    v24 = v23 | 0x20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a2 = sub_100116F70(0, *(a2 + 2) + 1, 1, a2);
    }

    v26 = *(a2 + 2);
    v25 = *(a2 + 3);
    if (v26 >= v25 >> 1)
    {
      a2 = sub_100116F70((v25 > 1), v26 + 1, 1, a2);
    }

    *(a2 + 2) = v26 + 1;
    v27 = &a2[16 * v26];
    v27[32] = v6;
    *(v27 + 17) = v24;
    *(v27 + 5) = v22;
    return a2;
  }

  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000DA388(uint64_t a1, char a2, unint64_t a3, uint64_t *a4)
{
  v7 = 0;
  v8 = *a4;
  v9 = *(*a4 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    v34 = *(*a4 + 16);
LABEL_3:
    v30 = v11;
    v12 = 56 * v10 + 80;
    v13 = v10;
    while (1)
    {
      if (v13 >= v9)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_36;
      }

      if (v13 >= *(v8 + 16))
      {
        goto LABEL_37;
      }

      result = sub_1000D3F78(3, 2uLL, *(v8 + v12 - 48), v8 + v12);
      if (result > 1)
      {
        if (result == 2)
        {
          if (a3 == 2)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (result != 3)
          {
LABEL_41:
            sub_10000B02C();
            swift_allocError();
            *v29 = xmmword_10047CE70;
            *(v29 + 16) = 2;
            swift_willThrow();
            goto LABEL_42;
          }

          if (a3 == 3)
          {
LABEL_19:
            if (v13 >= *(v8 + 16))
            {
              goto LABEL_38;
            }

            v4 = a3;
            v15 = v8;
            v16 = v8 + v12;
            v5 = *(v8 + v12 - 40);
            v17 = *(v8 + v12 - 32);
            v18 = *(v16 - 24);
            v19 = *(v16 - 8);
            result = sub_1000D40C8(4, 4uLL, *(v16 - 16), v16);
            if (result < 16)
            {
              v8 = v15;
              result = swift_isUniquelyReferenced_nonNull_native();
              a3 = v4;
              if ((result & 1) == 0)
              {
                result = sub_1000C2B64(v15);
                v8 = result;
              }

              if (v13 >= *(v8 + 16))
              {
                __break(1u);

                __break(1u);
LABEL_42:
                swift_unexpectedError();
                __break(1u);
                sub_10005D4F4(v5, v8, a3);

                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

              if (*(v8 + v12) == 1)
              {
                v5 = v8;
                v20 = (v8 + v12);
                v21 = *(v20 - 1);
                sub_10005DC58(&qword_100598800, &qword_1004842A0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_100480F40;
                *(inited + 32) = a1;
                *(inited + 34) = WORD1(a1);
                *(inited + 36) = BYTE4(a1);
                *(inited + 38) = HIWORD(a1);
                *(inited + 40) = a2 & 1;

                v23 = inited;
                a3 = v4;
                sub_1002352B4(v23);
                v24 = *(v20 - 1);
                *(v20 - 1) = v21;
                *v20 = 1;

                result = sub_1000D860C();
              }

              v11 = 0;
              v9 = v34;
              *a4 = v8;
              if (v10 == v34)
              {
                return result;
              }

              goto LABEL_3;
            }

            a3 = v4;
            v8 = v15;
            v9 = v34;
          }
        }
      }

      else if (result)
      {
        if (result != 1)
        {
          goto LABEL_41;
        }

        if (a3 == 1)
        {
          goto LABEL_19;
        }
      }

      else if (!a3)
      {
        goto LABEL_19;
      }

      ++v13;
      v12 += 56;
      if (v10 == v9)
      {
        if ((v30 & 1) == 0)
        {
          return result;
        }

        break;
      }
    }
  }

  LOBYTE(v9) = sub_100286B98(1u, 0, 1uLL);
  LOBYTE(v4) = sub_100286B80(1, 4, 4uLL);
  LOWORD(v13) = 2;
  sub_10005DC58(&qword_100598800, &qword_1004842A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100480F40;
  *(v7 + 32) = a1;
  *(v7 + 34) = WORD1(a1);
  *(v7 + 36) = BYTE4(a1);
  *(v7 + 38) = HIWORD(a1);
  *(v7 + 40) = a2 & 1;
  sub_10002F75C(0, 0, 0xF000000000000000);
  sub_10005D4F4(0, 0, 0xF000000000000000);

  sub_10002F75C(0, 0, 0xF000000000000000);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_39:
    result = sub_100116E4C(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v25 = v13 & 0xF807 | (8 * a3);
  v27 = *(v8 + 16);
  v26 = *(v8 + 24);
  if (v27 >= v26 >> 1)
  {
    result = sub_100116E4C((v26 > 1), v27 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v27 + 1;
  v28 = v8 + 56 * v27;
  *(v28 + 32) = v25;
  *(v28 + 40) = 0;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0xF000000000000000;
  *(v28 + 64) = v4 | v9;
  *(v28 + 72) = v7;
  *(v28 + 80) = 1;
  *a4 = v8;
  return result;
}

unint64_t static Array<A>.committedAvailability(using:supportsSimultaneousDualBand:for:)(char a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = sub_1000DD6E4(*(a3 + 16), 0);
    v3 = sub_1000DDD7C(v49, v8 + 32, v6, a3);
    v4 = v49[0];
    v5 = v49[1];

    sub_1000E290C();
    if (v3 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v49[0] = v8;
  sub_1000DE014(v49);
  v9 = v49[0];
  v44 = *(v49[0] + 2);
  if (v44)
  {
    v10 = 0;
    v11 = v49[0] + 63;
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    v43 = v49[0];
    while (1)
    {
      v12 = *(v9 + 2);
      if (v10 >= v12)
      {
        __break(1u);
LABEL_36:
        v8 = sub_100116F70((v12 > 1), v6, 1, v8);
LABEL_26:
        *(v8 + 16) = v6;
        v31 = (v8 + 16 * v9);
        *(v31 + 32) = a1;
        *(v31 + 17) = v3;
        v31[5] = v5;
        if (*(v4 + 2))
        {
          goto LABEL_27;
        }

LABEL_33:

        return v8;
      }

      v13 = *(v11 - 27);
      v46 = *(v11 - 23);
      v48 = v10;
      v45 = *(v11 - 15);
      v14 = *(v11 - 7);
      v15 = *(v11 - 6);
      v6 = *(v11 - 5);
      v5 = *(v11 - 4);
      v4 = *(v11 - 3);
      v8 = *(v11 - 2);
      v16 = *(v11 - 1);
      v3 = *v11;
      v17 = sub_100019B9C((v13 << 32) | (*(v11 - 26) << 40) | *(v11 - 31));
      if ((v18 & 0x100) == 0)
      {
        break;
      }

      v9 = v43;
LABEL_8:
      v10 = v48 + 1;
      v11 += 32;
      if (v44 == v48 + 1)
      {
        goto LABEL_24;
      }
    }

    v41 = v17;
    v42 = v18;
    v19 = TimeBitmap.nanBitmap.getter(v46, v45, (v14 | (v15 << 8) | (v6 << 16) | (v5 << 24) | (v4 << 32) | (v8 << 40) | (v16 << 48) | (v3 << 56)));
    v47 = v20;
    v22 = v21;
    v23 = sub_100286B98(1u, 0, 1uLL);
    if ((a2 & 1) != 0 && v13)
    {
      v8 = v23;
      v24 = sub_100286B80(1, 4, 4uLL);
      v5 = v41;
      v25 = v19;
      sub_10005DC58(&qword_100598800, &qword_1004842A0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100480F40;
      *(v3 + 32) = v41;
      *(v3 + 34) = WORD1(v41);
      *(v3 + 36) = BYTE4(v41);
      *(v3 + 38) = HIWORD(v41);
      *(v3 + 40) = v42 & 1;
      sub_10002F75C(0, 0, 0xF000000000000000);
      sub_10005D4F4(v25, v47, v22);

      sub_10002F75C(v25, v47, v22);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100116E4C(0, *(v40 + 2) + 1, 1, v40);
      }

      v9 = v43;
      v26 = v40;
      v4 = *(v40 + 2);
      v27 = *(v40 + 3);
      v6 = (v4 + 1);
      if (v4 >= v27 >> 1)
      {
        v28 = sub_100116E4C((v27 > 1), (v4 + 1), 1, v40);
        v40 = v28;
LABEL_21:
        *(v28 + 2) = v6;
        v30 = &v28[56 * v4];
        *(v30 + 16) = 4097;
        *(v30 + 5) = v25;
        *(v30 + 6) = v47;
        *(v30 + 7) = v22;
        v30[64] = v24 | v8;
        *(v30 + 9) = v3;
        v30[80] = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v8 = v23;
      v24 = sub_100286B80(1, 4, 4uLL);
      v5 = v41;
      v25 = v19;
      sub_10005DC58(&qword_100598800, &qword_1004842A0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100480F40;
      *(v3 + 32) = v41;
      *(v3 + 34) = WORD1(v41);
      *(v3 + 36) = BYTE4(v41);
      *(v3 + 38) = HIWORD(v41);
      *(v3 + 40) = v42 & 1;
      sub_10002F75C(0, 0, 0xF000000000000000);
      sub_10005D4F4(v25, v47, v22);

      sub_10002F75C(v25, v47, v22);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100116E4C(0, *(v39 + 2) + 1, 1, v39);
      }

      v9 = v43;
      v26 = v39;
      v4 = *(v39 + 2);
      v29 = *(v39 + 3);
      v6 = (v4 + 1);
      if (v4 >= v29 >> 1)
      {
        v28 = sub_100116E4C((v29 > 1), (v4 + 1), 1, v39);
        v39 = v28;
        goto LABEL_21;
      }
    }

    v28 = v26;
    goto LABEL_21;
  }

  v39 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
LABEL_24:

  v5 = v39;
  if (*(v39 + 2))
  {
    v4 = v40;
    LOWORD(v3) = sub_100286BB0(0, 0, 4uLL) | 0x10;
    v8 = sub_100116F70(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v8 + 16);
    v12 = *(v8 + 24);
    v6 = (v9 + 1);
    if (v9 >= v12 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  v8 = _swiftEmptyArrayStorage;
  v4 = v40;
  if (!*(v40 + 2))
  {
    goto LABEL_33;
  }

LABEL_27:
  v32 = sub_100286BB0(1u, 0, 4uLL) | 0x10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100116F70(0, *(v8 + 16) + 1, 1, v8);
  }

  v34 = *(v8 + 16);
  v33 = *(v8 + 24);
  if (v34 >= v33 >> 1)
  {
    v8 = sub_100116F70((v33 > 1), v34 + 1, 1, v8);
  }

  *(v8 + 16) = v34 + 1;
  v35 = (v8 + 16 * v34);
  *(v35 + 32) = a1;
  *(v35 + 17) = v32;
  v35[5] = v4;
  return v8;
}

uint64_t NANScheduleEntry.timeBitmap.setter(__int16 a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000124C8(*(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t sub_1000DAF04()
{
  if (*v0)
  {
    result = 0x6D746942656D6974;
  }

  else
  {
    result = 0x444970616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1000DAF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970616DLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D746942656D6974 && a2 == 0xEA00000000007061)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000DB020(uint64_t a1)
{
  v2 = sub_1000E2914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB05C(uint64_t a1)
{
  v2 = sub_1000E2914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANScheduleEntry.encode(to:)(void *a1, char a2, int a3, uint64_t a4, unint64_t a5)
{
  v16 = a5;
  v20 = a3;
  v9 = sub_10005DC58(&qword_10058D048, &qword_1004842C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E2914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = a2;
  v21 = 0;
  sub_1000E2968();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v17 = v20;
    v18 = a4;
    v19 = v16;
    v21 = 1;
    sub_10000AB0C(a4, v16);
    sub_1000E28B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v18, v19);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t NANScheduleEntry.hash(into:)(int a1, Swift::UInt8 a2, Swift::UInt16 a3)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);

  return Data.hash(into:)();
}

Swift::Int NANScheduleEntry.hashValue.getter(Swift::UInt8 a1, Swift::UInt16 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DB3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *v0;
  v4 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DB428()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int sub_1000DB490()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *v0;
  v4 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DB508@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E0AD0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t NANMapIDs.init(rawValue:)(unsigned int a1)
{
  v1 = a1 & 1;
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a1 >> 1) & 0xF;
  }

  return v2 & 0xFFFF00FF | (v1 << 8);
}

void *NANMapIDs.init(decoder:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100029B34(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v5 & 1;
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = (v5 >> 1) & 0xF;
    }

    sub_100002A00(v9);
    sub_100002A00(a1);
    return (v8 & 0xFFFF00FF | (v7 << 8));
  }

  return v4;
}

uint64_t NANMapIDs.encode(to:)(void *a1)
{
  v1 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v3);
}

uint64_t NANMapIDs.rawValue.getter(int a1)
{
  if ((a1 & 0x100) != 0)
  {
    return 1;
  }

  else
  {
    return (2 * a1);
  }
}

unsigned __int8 *sub_1000DB764@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = (v2 >> 1) & 0xF;
  v4 = v2 & 1;
  if (v4)
  {
    LOWORD(v3) = 0;
  }

  *a2 = v3 | (v4 << 8);
  *(a2 + 2) = 0;
  return result;
}

void sub_1000DB784(char *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * *v1;
  }

  *a1 = v2;
}

Swift::Int sub_1000DB7A0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000DB7F4()
{
  if (v0[1])
  {
    v1 = 1;
  }

  else
  {
    v1 = 2 * *v0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000DB830()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000DB8E0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v6);
}

uint64_t sub_1000DB988(_BYTE *a1, _BYTE *a2)
{
  if (a1[1])
  {
    v2 = a2[1];
  }

  else
  {
    v2 = (((*a1 ^ *a2) & 0x7F) == 0) & ~a2[1];
  }

  return v2 & 1;
}

uint64_t NANMapID.init(decoder:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100029B34(v6, v6[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 0xF;
    sub_100002A00(v6);
  }

  sub_100002A00(a1);
  return v4;
}

uint64_t NANMapID.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7972616D697270;
  }

  if (a1 == 1)
  {
    return 0x7261646E6F636573;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000DBBC8()
{
  if (*v0 == 1)
  {
    return 0x7261646E6F636573;
  }

  if (!*v0)
  {
    return 0x7972616D697270;
  }

  v2 = *v0;
  return dispatch thunk of CustomStringConvertible.description.getter();
}

unint64_t sub_1000DBC84()
{
  v1 = 0x4E6C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1000DBCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E4C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DBD18(uint64_t a1)
{
  v2 = sub_1000E29BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DBD54(uint64_t a1)
{
  v2 = sub_1000E29BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NonNANOperatingChannelInformation.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_10058D060, &qword_1004842D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E29BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void NonNANOperatingChannelInformation.hash(into:)(int a1, unsigned int a2)
{
  v2 = a2 >> 8;
  v3 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int NonNANOperatingChannelInformation.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000DC018()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000DC088()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000DC0D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000DC140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E0F70(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

unint64_t sub_1000DC1E0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000022;
  }

  *v0;
  return result;
}

uint64_t sub_1000DC21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000022 && 0x80000001004B90D0 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004B9100 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000DC2FC(uint64_t a1)
{
  v2 = sub_1000E2A10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DC338(uint64_t a1)
{
  v2 = sub_1000E2A10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NonNANBeaconInformation.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_10058D070, &qword_1004842D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E2A10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

void NonNANBeaconInformation.hash(into:)(int a1, unsigned int a2)
{
  v2 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int NonNANBeaconInformation.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000DC5AC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000DC60C()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000DC64C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000DC6A8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1000E0DC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t IEEE80211InformationElement.HighThroughputCapability.mcs.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DeprecatedNANAvailability.encode(to:)(void *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100286B98(a2, 0, 4uLL);
  if (!v4)
  {
    sub_100286B98(BYTE1(a2), 4, 2uLL);
    sub_100286B80(HIWORD(a2) & 1, 6, 1uLL);
    sub_100031694(v10, v11);
    sub_1000E2A64();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v10, v11);
    sub_10000AB0C(a3, a4);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(a3, a4);
  }

  return sub_100002A00(v10);
}

uint64_t static DeprecatedNANAvailability.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if (a1 != a4 || ((a1 ^ a4) & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }
}

uint64_t DeprecatedNANAvailability.hash(into:)(int a1, unsigned int a2)
{
  v2 = BYTE2(a2);
  v3 = a2 >> 8;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2 & 1);

  return Data.hash(into:)();
}

Swift::Int DeprecatedNANAvailability.hashValue.getter(unsigned int a1)
{
  v2 = a1 >> 8;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DCB14()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *v0;
  v5 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DCBA0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 1);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1);

  return Data.hash(into:)();
}

Swift::Int sub_1000DCC14()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *v0;
  v5 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DCC9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E1840(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000DCCDC(void *a1)
{
  if (*(v1 + 2))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return DeprecatedNANAvailability.encode(to:)(a1, *v1 | v2, *(v1 + 1), *(v1 + 2));
}

uint64_t sub_1000DCD10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }
}

uint64_t sub_1000DCD7C()
{
  v1 = 0x6C6F72746E6F63;
  v2 = 0x4E6C656E6E616863;
  if (*v0 != 2)
  {
    v2 = 0x6962616C69617661;
  }

  if (*v0)
  {
    v1 = 0x6E6974617265706FLL;
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