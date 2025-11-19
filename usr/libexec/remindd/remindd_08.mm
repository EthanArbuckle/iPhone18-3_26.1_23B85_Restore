uint64_t destroy for StartMigrationRequest(char *a1, uint64_t a2)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  if (!(*(*(started - 8) + 48))(a1, 1, started))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
LABEL_5:
      v6 = *(a1 + 1);

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    v7 = *(a1 + 1);

    v8 = *(a1 + 3);

    v9 = *(a1 + 5);

    v10 = *(a1 + 7);

    v11 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v12 = type metadata accessor for UnknownStorage();
    (*(*(v12 - 8) + 8))(&a1[v11], v12);
  }

LABEL_7:
  v13 = *(a2 + 24);
  v14 = type metadata accessor for UnknownStorage();
  v15 = *(*(v14 - 8) + 8);

  return v15(&a1[v13], v14);
}

void *initializeWithCopy for StartMigrationRequest(void *a1, void *a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  if ((*(v7 + 48))(a2, 1, started))
  {
    v8 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = a2[3];
      a1[2] = a2[2];
      a1[3] = v11;
      v12 = a2[5];
      a1[4] = a2[4];
      a1[5] = v12;
      v13 = a2[7];
      a1[6] = a2[6];
      a1[7] = v13;
      *(a1 + 16) = *(a2 + 16);
      v14 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v15 = type metadata accessor for UnknownStorage();
      v20 = *(*(v15 - 8) + 16);

      v20(a1 + v14, a2 + v14, v15);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, started);
  }

  v16 = *(a3 + 20);
  v17 = *(a3 + 24);
  *(a1 + v16) = *(a2 + v16);
  v18 = type metadata accessor for UnknownStorage();
  (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
  return a1;
}

uint64_t assignWithCopy for StartMigrationRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, started);
  v10 = v8(a2, 1, started);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v12 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
        v13 = type metadata accessor for UnknownStorage();
        v21 = *(*(v13 - 8) + 16);

        v21(a1 + v12, a2 + v12, v13);
      }

      else
      {
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, started);
      goto LABEL_10;
    }

LABEL_7:
    v14 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_10;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
    v18 = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    if (v18 == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v19 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v20 = type metadata accessor for UnknownStorage();
      v22 = *(*(v20 - 8) + 16);

      v22(a1 + v19, a2 + v19, v20);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_10:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v15 = *(a3 + 24);
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  return a1;
}

_OWORD *initializeWithTake for StartMigrationRequest(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  if ((*(v7 + 48))(a2, 1, started))
  {
    v8 = sub_1000F5104(&qword_1009374E0, &unk_1007A6940);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[3];
      a1[2] = a2[2];
      a1[3] = v10;
      *(a1 + 16) = *(a2 + 16);
      v11 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v12 = type metadata accessor for UnknownStorage();
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    (*(v7 + 56))(a1, 0, 1, started);
  }

  v13 = *(a3 + 20);
  v14 = *(a3 + 24);
  *(a1 + v13) = *(a2 + v13);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t assignWithTake for StartMigrationRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartMigrationRequest.OneOf_Source(0);
  v7 = *(started - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, started);
  v10 = v8(a2, 1, started);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        v17 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v17;
        *(a1 + 64) = *(a2 + 64);
        v18 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
        v19 = type metadata accessor for UnknownStorage();
        (*(*(v19 - 8) + 32))(a1 + v18, a2 + v18, v19);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v15 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
LABEL_7:
    v15 = *(*(sub_1000F5104(&qword_1009374E0, &unk_1007A6940) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v15);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v11;
    v12 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v12;
    *(a1 + 64) = *(a2 + 64);
    v13 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v14 = type metadata accessor for UnknownStorage();
    (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  (*(v7 + 56))(a1, 0, 1, started);
LABEL_14:
  v20 = *(a3 + 20);
  v21 = *(a3 + 24);
  *(a1 + v20) = *(a2 + v20);
  v22 = type metadata accessor for UnknownStorage();
  (*(*(v22 - 8) + 40))(a1 + v21, a2 + v21, v22);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for StartMigrationRequest.OneOf_Source(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    if (EnumCaseMultiPayload == 1)
    {
      v8 = a2[3];
      *(a1 + 16) = a2[2];
      *(a1 + 24) = v8;
      v9 = a2[5];
      *(a1 + 32) = a2[4];
      *(a1 + 40) = v9;
      v10 = a2[7];
      *(a1 + 48) = a2[6];
      *(a1 + 56) = v10;
      *(a1 + 64) = *(a2 + 16);
      v11 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v12 = type metadata accessor for UnknownStorage();
      v15 = *(*(v12 - 8) + 16);

      v15(a1 + v11, a2 + v11, v12);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for StartMigrationRequest.OneOf_Source(char *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
LABEL_4:
    v3 = *(a1 + 1);
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v4 = *(a1 + 1);

  v5 = *(a1 + 3);

  v6 = *(a1 + 5);

  v7 = *(a1 + 7);

  v8 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
  v9 = type metadata accessor for UnknownStorage();
  v10 = *(*(v9 - 8) + 8);

  return v10(&a1[v8], v9);
}

uint64_t initializeWithCopy for StartMigrationRequest.OneOf_Source(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v6;
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
    v8 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v8;
    *(a1 + 64) = *(a2 + 64);
    v9 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v10 = type metadata accessor for UnknownStorage();
    v12 = *(*(v10 - 8) + 16);

    v12(a1 + v9, a2 + v9, v10);
  }

  else
  {
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for StartMigrationRequest.OneOf_Source(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      v5 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
      v6 = type metadata accessor for UnknownStorage();
      v8 = *(*(v6 - 8) + 16);

      v8(a1 + v5, a2 + v5, v6);
    }

    else
    {
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_OWORD *initializeWithTake for StartMigrationRequest.OneOf_Source(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_OWORD *assignWithTake for StartMigrationRequest.OneOf_Source(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100101968(a1, type metadata accessor for StartMigrationRequest.OneOf_Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    *(a1 + 16) = *(a2 + 16);
    v8 = *(type metadata accessor for StartMigrationRequest.Credential(0) + 36);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_10011AA0C()
{
  result = type metadata accessor for StartMigrationRequest.Credential(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for StartMigrationRequest.Credential(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = a2[3];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = v6;
    v7 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v7;
    v8 = a2[7];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v8;
    *(a1 + 64) = *(a2 + 16);
    v9 = *(a3 + 36);
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 16);

    v12(&v3[v9], a2 + v9, v11);
  }

  return v3;
}

uint64_t destroy for StartMigrationRequest.Credential(char *a1, uint64_t a2)
{
  v4 = *(a1 + 1);

  v5 = *(a1 + 3);

  v6 = *(a1 + 5);

  v7 = *(a1 + 7);

  v8 = *(a2 + 36);
  v9 = type metadata accessor for UnknownStorage();
  v10 = *(*(v9 - 8) + 8);

  return v10(&a1[v8], v9);
}

uint64_t initializeWithCopy for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a3 + 36);
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(*(v10 - 8) + 16);

  v11(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t assignWithCopy for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v10 = *(a3 + 36);
  v11 = type metadata accessor for UnknownStorage();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t initializeWithTake for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for UnknownStorage();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithTake for StartMigrationRequest.Credential(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  v8 = *(a2 + 24);
  v9 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;

  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v10;

  v12 = *(a2 + 56);
  v13 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v12;

  *(a1 + 64) = *(a2 + 64);
  v14 = *(a3 + 36);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 40))(a1 + v14, a2 + v14, v15);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
    v12 = *(started - 8);
    v13 = *(v12 + 48);

    if (v13(v10, 1, started))
    {
      v14 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v9 = *v10;
      if (EnumCaseMultiPayload == 1)
      {
        *(v9 + 1) = *(v10 + 1);
        *(v9 + 4) = *(v10 + 4);
        v17 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
        v18 = type metadata accessor for UnknownStorage();
        v29 = *(*(v18 - 8) + 16);

        v29(&v9[v17], &v10[v17], v18);
      }

      else
      {
        v9[8] = v10[8];
        *(v9 + 12) = *(v10 + 12);
        v19 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 16))(&v9[v19], &v10[v19], v20);
      }

      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, started);
    }

    v21 = a3[6];
    v22 = a3[7];
    v23 = &v4[v21];
    v24 = &a2[v21];
    v25 = *(v24 + 1);
    *v23 = *v24;
    *(v23 + 1) = v25;
    v26 = type metadata accessor for UnknownStorage();
    v27 = *(*(v26 - 8) + 16);

    v27(&v4[v22], &a2[v22], v26);
  }

  return v4;
}

uint64_t destroy for StartMigrationResponse(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = a1 + a2[5];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  if (!(*(*(started - 8) + 48))(v5, 1, started))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v5 + 8);

      v8 = type metadata accessor for StartMigrationResponse.Error(0);
      v9 = 24;
    }

    else
    {
      v8 = type metadata accessor for StartMigrationResponse.Details(0);
      v9 = 32;
    }

    v10 = *(v8 + v9);
    v11 = type metadata accessor for UnknownStorage();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  v12 = *(a1 + a2[6] + 8);

  v13 = a2[7];
  v14 = type metadata accessor for UnknownStorage();
  v15 = *(*(v14 - 8) + 8);

  return v15(a1 + v13, v14);
}

char *initializeWithCopy for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v11 = *(started - 8);
  v12 = *(v11 + 48);

  if (v12(v9, 1, started))
  {
    v13 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v8 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      *(v8 + 1) = *(v9 + 1);
      *(v8 + 4) = *(v9 + 4);
      v15 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
      v16 = type metadata accessor for UnknownStorage();
      v27 = *(*(v16 - 8) + 16);

      v27(&v8[v15], &v9[v15], v16);
    }

    else
    {
      v8[8] = v9[8];
      *(v8 + 12) = *(v9 + 12);
      v17 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
      v18 = type metadata accessor for UnknownStorage();
      (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, started);
  }

  v19 = a3[6];
  v20 = a3[7];
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = type metadata accessor for UnknownStorage();
  v25 = *(*(v24 - 8) + 16);

  v25(&a1[v20], &a2[v20], v24);
  return a1;
}

char *assignWithCopy for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v11 = *(started - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, started);
  v14 = v12(v9, 1, started);
  if (v13)
  {
    if (!v14)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v8 = *v9;
      if (EnumCaseMultiPayload == 1)
      {
        *(v8 + 8) = *(v9 + 1);
        *(v8 + 16) = *(v9 + 4);
        v16 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
        v17 = type metadata accessor for UnknownStorage();
        v33 = *(*(v17 - 8) + 16);

        v33(v8 + v16, &v9[v16], v17);
      }

      else
      {
        *(v8 + 8) = v9[8];
        *(v8 + 12) = *(v9 + 3);
        *(v8 + 16) = *(v9 + 4);
        v22 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
        v23 = type metadata accessor for UnknownStorage();
        (*(*(v23 - 8) + 16))(v8 + v22, &v9[v22], v23);
      }

      swift_storeEnumTagMultiPayload();
      (*(v11 + 56))(v8, 0, 1, started);
      goto LABEL_14;
    }

LABEL_7:
    v18 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    goto LABEL_14;
  }

  if (v14)
  {
    sub_100101968(v8, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v8, type metadata accessor for StartMigrationResponse.OneOf_Result);
    v19 = swift_getEnumCaseMultiPayload();
    *v8 = *v9;
    if (v19 == 1)
    {
      *(v8 + 8) = *(v9 + 1);
      *(v8 + 16) = *(v9 + 4);
      v20 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
      v21 = type metadata accessor for UnknownStorage();
      v34 = *(*(v21 - 8) + 16);

      v34(v8 + v20, &v9[v20], v21);
    }

    else
    {
      *(v8 + 8) = v9[8];
      *(v8 + 12) = *(v9 + 3);
      *(v8 + 16) = *(v9 + 4);
      v31 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
      v32 = type metadata accessor for UnknownStorage();
      (*(*(v32 - 8) + 16))(v8 + v31, &v9[v31], v32);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v24 = a3[6];
  v25 = &a1[v24];
  v26 = &a2[v24];
  *v25 = *v26;
  v27 = *(v25 + 1);
  *(v25 + 1) = *(v26 + 1);

  v28 = a3[7];
  v29 = type metadata accessor for UnknownStorage();
  (*(*(v29 - 8) + 24))(&a1[v28], &a2[v28], v29);
  return a1;
}

char *initializeWithTake for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v10 = *(started - 8);
  if ((*(v10 + 48))(v8, 1, started))
  {
    v11 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v7 = *v8;
      *(v7 + 4) = *(v8 + 4);
      v12 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
    }

    else
    {
      *v7 = *v8;
      v7[8] = v8[8];
      *(v7 + 12) = *(v8 + 12);
      v12 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
    }

    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 32))(&v7[v12], &v8[v12], v13);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v7, 0, 1, started);
  }

  v14 = a3[6];
  v15 = a3[7];
  *&a1[v14] = *&a2[v14];
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 32))(&a1[v15], &a2[v15], v16);
  return a1;
}

char *assignWithTake for StartMigrationResponse(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = &a1[v8];
  v10 = &a2[v8];
  started = type metadata accessor for StartMigrationResponse.OneOf_Result(0);
  v12 = *(started - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, started);
  v15 = v13(v10, 1, started);
  if (v14)
  {
    if (!v15)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v9 = *v10;
        *(v9 + 16) = *(v10 + 4);
        v16 = type metadata accessor for StartMigrationResponse.Error(0);
        v17 = 24;
      }

      else
      {
        *v9 = *v10;
        *(v9 + 8) = v10[8];
        *(v9 + 12) = *(v10 + 12);
        v16 = type metadata accessor for StartMigrationResponse.Details(0);
        v17 = 32;
      }

      v21 = *(v16 + v17);
      v22 = type metadata accessor for UnknownStorage();
      (*(*(v22 - 8) + 32))(v9 + v21, &v10[v21], v22);
      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, started);
      goto LABEL_14;
    }

LABEL_7:
    v18 = sub_1000F5104(&qword_1009374E8, &unk_100792DE0);
    memcpy(v9, v10, *(*(v18 - 8) + 64));
    goto LABEL_14;
  }

  if (v15)
  {
    sub_100101968(v9, type metadata accessor for StartMigrationResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v9, type metadata accessor for StartMigrationResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v9 = *v10;
      *(v9 + 16) = *(v10 + 4);
      v19 = *(type metadata accessor for StartMigrationResponse.Error(0) + 24);
    }

    else
    {
      *v9 = *v10;
      *(v9 + 8) = v10[8];
      *(v9 + 12) = *(v10 + 12);
      v19 = *(type metadata accessor for StartMigrationResponse.Details(0) + 32);
    }

    v20 = type metadata accessor for UnknownStorage();
    (*(*(v20 - 8) + 32))(v9 + v19, &v10[v19], v20);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v23 = a3[6];
  v24 = &a1[v23];
  v25 = &a2[v23];
  v27 = *v25;
  v26 = *(v25 + 1);
  v28 = *(v24 + 1);
  *v24 = v27;
  *(v24 + 1) = v26;

  v29 = a3[7];
  v30 = type metadata accessor for UnknownStorage();
  (*(*(v30 - 8) + 40))(&a1[v29], &a2[v29], v30);
  return a1;
}

void sub_10011BFF4()
{
  sub_10011C0E4(319, &unk_100937A18, type metadata accessor for StartMigrationResponse.OneOf_Result);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UnknownStorage();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_10011C0E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for MigrateRequest(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MigrateRequest.OneOf_Source(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
      }

      else
      {
        *(a1 + 2) = *(a2 + 2);
        v12 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v13 = type metadata accessor for UnknownStorage();
        (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      }

      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v14 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v14) = *(a2 + v14);
    v15 = a3[7];
    v16 = a3[8];
    *(a1 + v15) = *(a2 + v15);
    v17 = type metadata accessor for UnknownStorage();
    (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
  }

  return a1;
}

uint64_t destroy for MigrateRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v8 = *(a1 + 8);
    }

    else if (!EnumCaseMultiPayload)
    {
      v6 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v7 = type metadata accessor for UnknownStorage();
      (*(*(v7 - 8) + 8))(a1 + v6, v7);
    }
  }

  v9 = *(a2 + 32);
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1 + v9, v10);
}

void *initializeWithCopy for MigrateRequest(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      v10 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v11 = type metadata accessor for UnknownStorage();
      (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v12 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[7];
  v14 = a3[8];
  *(a1 + v13) = *(a2 + v13);
  v15 = type metadata accessor for UnknownStorage();
  (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  return a1;
}

void *assignWithCopy for MigrateRequest(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
      }

      else
      {
        *(a1 + 2) = *(a2 + 2);
        v14 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v15 = type metadata accessor for UnknownStorage();
        (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_16;
    }

LABEL_8:
    v12 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_16;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
    v13 = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (v13 == 2)
    {
      a1[1] = a2[1];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (v13 == 1)
      {
        a1[1] = a2[1];
      }

      else
      {
        *(a1 + 2) = *(a2 + 2);
        v19 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
      }

      swift_storeEnumTagMultiPayload();
    }
  }

LABEL_16:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v16 = a3[8];
  v17 = type metadata accessor for UnknownStorage();
  (*(*(v17 - 8) + 24))(a1 + v16, a2 + v16, v17);
  return a1;
}

_DWORD *initializeWithTake for MigrateRequest(_DWORD *a1, _DWORD *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_1009374F0, &qword_1007A2380);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      *a1 = *a2;
      a1[2] = a2[2];
      v9 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v10 = type metadata accessor for UnknownStorage();
      (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[7];
  v13 = a3[8];
  *(a1 + v12) = *(a2 + v12);
  v14 = type metadata accessor for UnknownStorage();
  (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
  return a1;
}

char *assignWithTake for MigrateRequest(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for MigrateRequest.OneOf_Source(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
      if (!swift_getEnumCaseMultiPayload())
      {
        *a1 = *a2;
        *(a1 + 2) = *(a2 + 2);
        v19 = *(type metadata accessor for MigrateRequest.User(0) + 24);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 32))(&a1[v19], &a2[v19], v20);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
LABEL_7:
    v11 = *(*(sub_1000F5104(&qword_1009374F0, &qword_1007A2380) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v12 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  a1[v14] = a2[v14];
  v15 = a3[7];
  v16 = a3[8];
  *&a1[v15] = *&a2[v15];
  v17 = type metadata accessor for UnknownStorage();
  (*(*(v17 - 8) + 40))(&a1[v16], &a2[v16], v17);
  return a1;
}

void sub_10011D07C()
{
  sub_10011C0E4(319, &unk_100937C98, type metadata accessor for MigrateRequest.OneOf_Source);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UnknownStorage();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for MigrateRequest.OneOf_Source(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      v8 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v9 = type metadata accessor for UnknownStorage();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for MigrateRequest.OneOf_Source(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2 || result == 1)
  {
    v6 = *(a1 + 8);
  }

  else if (!result)
  {
    v3 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v4 = type metadata accessor for UnknownStorage();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1 + v3, v4);
  }

  return result;
}

void *initializeWithCopy for MigrateRequest.OneOf_Source(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    a1[1] = a2[1];
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
    v5 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v6 = type metadata accessor for UnknownStorage();
    (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for MigrateRequest.OneOf_Source(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      v5 = *(type metadata accessor for MigrateRequest.User(0) + 24);
      v6 = type metadata accessor for UnknownStorage();
      (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_DWORD *initializeWithTake for MigrateRequest.OneOf_Source(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    a1[2] = a2[2];
    v8 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for MigrateRequest.OneOf_Source(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100101968(a1, type metadata accessor for MigrateRequest.OneOf_Source);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v8 = *(type metadata accessor for MigrateRequest.User(0) + 24);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_10011D728()
{
  result = type metadata accessor for MigrateRequest.User(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MigrateRequest.Option(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MigrateRequest.User(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v5 = *(a3 + 24);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for MigrateRequest.User(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithCopy for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t initializeWithTake for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for MigrateRequest.User(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for MigrateResponse(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for MigrateResponse.OneOf_Result(0);
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(v10, 1, v11))
    {
      v14 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v9 = *v10;
      if (EnumCaseMultiPayload == 1)
      {
        *(v9 + 1) = *(v10 + 1);
        *(v9 + 4) = *(v10 + 4);
        v17 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
        v18 = type metadata accessor for UnknownStorage();
        v35 = *(*(v18 - 8) + 16);

        v35(&v9[v17], &v10[v17], v18);
      }

      else
      {
        v9[8] = v10[8];
        *(v9 + 12) = *(v10 + 12);
        v19 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
        v20 = type metadata accessor for UnknownStorage();
        (*(*(v20 - 8) + 16))(&v9[v19], &v10[v19], v20);
      }

      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, v11);
    }

    v21 = a3[6];
    v22 = a3[7];
    v23 = &v4[v21];
    v24 = &a2[v21];
    v25 = *(v24 + 1);
    *v23 = *v24;
    *(v23 + 1) = v25;
    v26 = type metadata accessor for UnknownStorage();
    v27 = *(*(v26 - 8) + 16);

    v27(&v4[v22], &a2[v22], v26);
    v28 = a3[8];
    v29 = &v4[v28];
    v30 = &a2[v28];
    Step = type metadata accessor for MigrateResponse.NextStep(0);
    v32 = *(Step - 8);
    if ((*(v32 + 48))(v30, 1, Step))
    {
      v33 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
      memcpy(v29, v30, *(*(v33 - 8) + 64));
    }

    else
    {
      *v29 = *v30;
      *(v29 + 4) = *(v30 + 4);
      *(v29 + 3) = *(v30 + 3);
      v27(&v29[*(Step + 36)], &v30[*(Step + 36)], v26);
      (*(v32 + 56))(v29, 0, 1, Step);
    }
  }

  return v4;
}

uint64_t destroy for MigrateResponse(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = a1 + a2[5];
  v6 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(v5 + 8);

      v8 = type metadata accessor for MigrateResponse.Error(0);
      v9 = 24;
    }

    else
    {
      v8 = type metadata accessor for MigrateResponse.Details(0);
      v9 = 32;
    }

    v10 = *(v8 + v9);
    v11 = type metadata accessor for UnknownStorage();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  v12 = *(a1 + a2[6] + 8);

  v13 = a2[7];
  v14 = type metadata accessor for UnknownStorage();
  v19 = *(*(v14 - 8) + 8);
  v19(a1 + v13, v14);
  v15 = a1 + a2[8];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  result = (*(*(Step - 8) + 48))(v15, 1, Step);
  if (!result)
  {
    v18 = v15 + *(Step + 36);

    return (v19)(v18, v14);
  }

  return result;
}

char *initializeWithCopy for MigrateResponse(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);

  if (v12(v9, 1, v10))
  {
    v13 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v8 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      *(v8 + 1) = *(v9 + 1);
      *(v8 + 4) = *(v9 + 4);
      v15 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
      v16 = type metadata accessor for UnknownStorage();
      v33 = *(*(v16 - 8) + 16);

      v33(&v8[v15], &v9[v15], v16);
    }

    else
    {
      v8[8] = v9[8];
      *(v8 + 12) = *(v9 + 12);
      v17 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
      v18 = type metadata accessor for UnknownStorage();
      (*(*(v18 - 8) + 16))(&v8[v17], &v9[v17], v18);
    }

    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v19 = a3[6];
  v20 = a3[7];
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = type metadata accessor for UnknownStorage();
  v25 = *(*(v24 - 8) + 16);

  v25(&a1[v20], &a2[v20], v24);
  v26 = a3[8];
  v27 = &a1[v26];
  v28 = &a2[v26];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v30 = *(Step - 8);
  if ((*(v30 + 48))(v28, 1, Step))
  {
    v31 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v27, v28, *(*(v31 - 8) + 64));
  }

  else
  {
    *v27 = *v28;
    *(v27 + 4) = *(v28 + 4);
    *(v27 + 3) = *(v28 + 3);
    v25(&v27[*(Step + 36)], &v28[*(Step + 36)], v24);
    (*(v30 + 56))(v27, 0, 1, Step);
  }

  return a1;
}

char *assignWithCopy for MigrateResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = &a1[v7];
  v9 = &a2[v7];
  v10 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *v8 = *v9;
      if (EnumCaseMultiPayload == 1)
      {
        *(v8 + 8) = *(v9 + 1);
        *(v8 + 16) = *(v9 + 4);
        v16 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
        v17 = type metadata accessor for UnknownStorage();
        v45 = *(*(v17 - 8) + 16);

        v45(v8 + v16, &v9[v16], v17);
      }

      else
      {
        *(v8 + 8) = v9[8];
        *(v8 + 12) = *(v9 + 3);
        *(v8 + 16) = *(v9 + 4);
        v22 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
        v23 = type metadata accessor for UnknownStorage();
        (*(*(v23 - 8) + 16))(v8 + v22, &v9[v22], v23);
      }

      swift_storeEnumTagMultiPayload();
      (*(v11 + 56))(v8, 0, 1, v10);
      goto LABEL_14;
    }

LABEL_7:
    v18 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v8, v9, *(*(v18 - 8) + 64));
    goto LABEL_14;
  }

  if (v14)
  {
    sub_100101968(v8, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v8, type metadata accessor for MigrateResponse.OneOf_Result);
    v19 = swift_getEnumCaseMultiPayload();
    *v8 = *v9;
    if (v19 == 1)
    {
      *(v8 + 8) = *(v9 + 1);
      *(v8 + 16) = *(v9 + 4);
      v20 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
      v21 = type metadata accessor for UnknownStorage();
      v46 = *(*(v21 - 8) + 16);

      v46(v8 + v20, &v9[v20], v21);
    }

    else
    {
      *(v8 + 8) = v9[8];
      *(v8 + 12) = *(v9 + 3);
      *(v8 + 16) = *(v9 + 4);
      v42 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
      v43 = type metadata accessor for UnknownStorage();
      (*(*(v43 - 8) + 16))(v8 + v42, &v9[v42], v43);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v24 = a3[6];
  v25 = &a1[v24];
  v26 = &a2[v24];
  *v25 = *v26;
  v27 = *(v25 + 1);
  *(v25 + 1) = *(v26 + 1);

  v28 = a3[7];
  v29 = type metadata accessor for UnknownStorage();
  v30 = *(v29 - 8);
  v31 = *(v30 + 24);
  v44 = v29;
  v31(&a1[v28], &a2[v28]);
  v32 = a3[8];
  v47 = a1;
  v33 = &a1[v32];
  v34 = &a2[v32];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v36 = *(Step - 8);
  v37 = *(v36 + 48);
  v38 = v37(v33, 1, Step);
  v39 = v37(v34, 1, Step);
  if (!v38)
  {
    if (!v39)
    {
      *v33 = *v34;
      *(v33 + 1) = v34[1];
      *(v33 + 4) = *(v34 + 1);
      *(v33 + 8) = *(v34 + 2);
      *(v33 + 12) = *(v34 + 3);
      (v31)(v33 + *(Step + 36), &v34[*(Step + 36)], v44);
      return v47;
    }

    sub_100101968(v33, type metadata accessor for MigrateResponse.NextStep);
    goto LABEL_19;
  }

  if (v39)
  {
LABEL_19:
    v40 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v33, v34, *(*(v40 - 8) + 64));
    return v47;
  }

  *v33 = *v34;
  *(v33 + 1) = v34[1];
  *(v33 + 4) = *(v34 + 1);
  *(v33 + 8) = *(v34 + 2);
  *(v33 + 12) = *(v34 + 3);
  (*(v30 + 16))(v33 + *(Step + 36), &v34[*(Step + 36)], v44);
  (*(v36 + 56))(v33, 0, 1, Step);
  return v47;
}

char *initializeWithTake for MigrateResponse(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    v11 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v7 = *v8;
      *(v7 + 4) = *(v8 + 4);
      v12 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
    }

    else
    {
      *v7 = *v8;
      v7[8] = v8[8];
      *(v7 + 12) = *(v8 + 12);
      v12 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
    }

    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 32))(&v7[v12], &v8[v12], v13);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v14 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v15 = type metadata accessor for UnknownStorage();
  v16 = *(*(v15 - 8) + 32);
  v16(&a1[v14], &a2[v14], v15);
  v17 = a3[8];
  v18 = &a1[v17];
  v19 = &a2[v17];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v21 = *(Step - 8);
  if ((*(v21 + 48))(v19, 1, Step))
  {
    v22 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    *v18 = *v19;
    *(v18 + 4) = *(v19 + 4);
    *(v18 + 3) = *(v19 + 3);
    v16(&v18[*(Step + 36)], &v19[*(Step + 36)], v15);
    (*(v21 + 56))(v18, 0, 1, Step);
  }

  return a1;
}

char *assignWithTake for MigrateResponse(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for MigrateResponse.OneOf_Result(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (v14)
  {
    if (!v15)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v9 = *v10;
        *(v9 + 16) = *(v10 + 4);
        v16 = type metadata accessor for MigrateResponse.Error(0);
        v17 = 24;
      }

      else
      {
        *v9 = *v10;
        *(v9 + 8) = v10[8];
        *(v9 + 12) = *(v10 + 12);
        v16 = type metadata accessor for MigrateResponse.Details(0);
        v17 = 32;
      }

      v21 = *(v16 + v17);
      v22 = type metadata accessor for UnknownStorage();
      (*(*(v22 - 8) + 32))(v9 + v21, &v10[v21], v22);
      swift_storeEnumTagMultiPayload();
      (*(v12 + 56))(v9, 0, 1, v11);
      goto LABEL_14;
    }

LABEL_7:
    v18 = sub_1000F5104(&qword_100937500, &qword_100792DF0);
    memcpy(v9, v10, *(*(v18 - 8) + 64));
    goto LABEL_14;
  }

  if (v15)
  {
    sub_100101968(v9, type metadata accessor for MigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(v9, type metadata accessor for MigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v9 = *v10;
      *(v9 + 16) = *(v10 + 4);
      v19 = *(type metadata accessor for MigrateResponse.Error(0) + 24);
    }

    else
    {
      *v9 = *v10;
      *(v9 + 8) = v10[8];
      *(v9 + 12) = *(v10 + 12);
      v19 = *(type metadata accessor for MigrateResponse.Details(0) + 32);
    }

    v20 = type metadata accessor for UnknownStorage();
    (*(*(v20 - 8) + 32))(v9 + v19, &v10[v19], v20);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v23 = a3[6];
  v24 = &a1[v23];
  v25 = &a2[v23];
  v27 = *v25;
  v26 = v25[1];
  v28 = *(v24 + 1);
  *v24 = v27;
  *(v24 + 1) = v26;

  v29 = a3[7];
  v30 = type metadata accessor for UnknownStorage();
  v31 = *(v30 - 8);
  v32 = *(v31 + 40);
  v43 = v30;
  v32(&a1[v29], &a2[v29]);
  v33 = a3[8];
  v44 = a1;
  v34 = &a1[v33];
  v35 = &a2[v33];
  Step = type metadata accessor for MigrateResponse.NextStep(0);
  v37 = *(Step - 8);
  v38 = *(v37 + 48);
  v39 = v38(v34, 1, Step);
  v40 = v38(v35, 1, Step);
  if (!v39)
  {
    if (!v40)
    {
      *v34 = *v35;
      *(v34 + 1) = v35[1];
      *(v34 + 4) = *(v35 + 4);
      *(v34 + 12) = *(v35 + 3);
      (v32)(v34 + *(Step + 36), &v35[*(Step + 36)], v43);
      return v44;
    }

    sub_100101968(v34, type metadata accessor for MigrateResponse.NextStep);
    goto LABEL_19;
  }

  if (v40)
  {
LABEL_19:
    v41 = sub_1000F5104(&qword_100937508, &qword_100792DF8);
    memcpy(v34, v35, *(*(v41 - 8) + 64));
    return v44;
  }

  *v34 = *v35;
  *(v34 + 4) = *(v35 + 4);
  *(v34 + 12) = *(v35 + 3);
  (*(v31 + 32))(v34 + *(Step + 36), &v35[*(Step + 36)], v43);
  (*(v37 + 56))(v34, 0, 1, Step);
  return v44;
}

void sub_10011F248()
{
  sub_10011C0E4(319, &qword_100937E80, type metadata accessor for MigrateResponse.OneOf_Result);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UnknownStorage();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10011C0E4(319, &unk_100937E88, type metadata accessor for MigrateResponse.NextStep);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t sub_10011F3BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(*(a3 - 8) + 80);
  if ((v7 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + ((v7 + 16) & ~v7);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 8) = a2[1];
      *(a1 + 16) = *(a2 + 4);
      v11 = *(a5(0) + 24);
      v12 = type metadata accessor for UnknownStorage();
      v13 = *(*(v12 - 8) + 16);

      v13(a1 + v11, a2 + v11, v12);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      v15 = *(a4(0) + 32);
      v16 = type metadata accessor for UnknownStorage();
      (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10011F580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a1 + 8);

    v8 = a4(0);
    v9 = 24;
  }

  else
  {
    v8 = a3(0);
    v9 = 32;
  }

  v10 = *(v8 + v9);
  v11 = type metadata accessor for UnknownStorage();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

uint64_t sub_10011F65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v10 = *(a5(0) + 24);
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 16);

    v12(a1 + v10, a2 + v10, v11);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    v13 = *(a4(0) + 32);
    v14 = type metadata accessor for UnknownStorage();
    (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10011F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a1 != a2)
  {
    sub_100101968(a1, a4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v11 = *(a6(0) + 24);
      v12 = type metadata accessor for UnknownStorage();
      v13 = *(*(v12 - 8) + 16);

      v13(a1 + v11, a2 + v11, v12);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
      v14 = *(a5(0) + 32);
      v15 = type metadata accessor for UnknownStorage();
      (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10011F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v9 = *(a5(0) + 24);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    v9 = *(a4(0) + 32);
  }

  v10 = type metadata accessor for UnknownStorage();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_10011FAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (a1 != a2)
  {
    sub_100101968(a1, a4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a6(0) + 24);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 12) = *(a2 + 12);
      v10 = *(a5(0) + 32);
    }

    v11 = type metadata accessor for UnknownStorage();
    (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10011FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    result = a5(319);
    if (v8 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_10011FD2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    v5 = *(a3 + 32);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t sub_10011FE00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t sub_10011FE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_10011FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_10011FF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_100120008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1001200A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100120164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100120204()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1001202B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 4);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_1001203A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_100120414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1001204B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UnknownStorage();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10012054C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1001205CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t sub_10012066C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012072C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001207D0()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MigrateResponse.NextStep(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 12) = *(a2 + 3);
    v5 = *(a3 + 36);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for MigrateResponse.NextStep(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithCopy for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t initializeWithTake for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for MigrateResponse.NextStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_100120C20()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

char *initializeWithCopy for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithCopy for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *initializeWithTake for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for UnmigrateRequest(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for UnmigrateResponse(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&qword_100937510, &qword_100792E00);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 1)
      {
        a1[1] = a2[1];
        v12 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
        v13 = type metadata accessor for UnknownStorage();
        v14 = *(*(v13 - 8) + 16);

        v14(a1 + v12, a2 + v12, v13);
      }

      else
      {
        v15 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
        v16 = type metadata accessor for UnknownStorage();
        (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
      }

      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v17 = *(a3 + 20);
    v18 = *(a3 + 24);
    v19 = (a1 + v17);
    v20 = (a2 + v17);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = type metadata accessor for UnknownStorage();
    v23 = *(*(v22 - 8) + 16);

    v23(a1 + v18, a2 + v18, v22);
  }

  return a1;
}

uint64_t destroy for UnmigrateResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *(a1 + 8);

      v6 = type metadata accessor for UnmigrateResponse.Error(0);
    }

    else
    {
      v6 = type metadata accessor for UnmigrateResponse.Details(0);
    }

    v7 = *(v6 + 20);
    v8 = type metadata accessor for UnknownStorage();
    (*(*(v8 - 8) + 8))(a1 + v7, v8);
  }

  v9 = *(a1 + *(a2 + 20) + 8);

  v10 = *(a2 + 24);
  v11 = type metadata accessor for UnknownStorage();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

void *initializeWithCopy for UnmigrateResponse(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      a1[1] = a2[1];
      v10 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v11 = type metadata accessor for UnknownStorage();
      v12 = *(*(v11 - 8) + 16);

      v12(a1 + v10, a2 + v10, v11);
    }

    else
    {
      v13 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v14 = type metadata accessor for UnknownStorage();
      (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v15 = *(a3 + 20);
  v16 = *(a3 + 24);
  v17 = (a1 + v15);
  v18 = (a2 + v15);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = type metadata accessor for UnknownStorage();
  v21 = *(*(v20 - 8) + 16);

  v21(a1 + v16, a2 + v16, v20);
  return a1;
}

char *assignWithCopy for UnmigrateResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      *a1 = *a2;
      if (EnumCaseMultiPayload == 1)
      {
        *(a1 + 1) = *(a2 + 1);
        v12 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
        v13 = type metadata accessor for UnknownStorage();
        v14 = *(*(v13 - 8) + 16);

        v14(&a1[v12], &a2[v12], v13);
      }

      else
      {
        v20 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
        v21 = type metadata accessor for UnknownStorage();
        (*(*(v21 - 8) + 16))(&a1[v20], &a2[v20], v21);
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_14;
    }

LABEL_7:
    v15 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v15 - 8) + 64));
    goto LABEL_14;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    v16 = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (v16 == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v17 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v18 = type metadata accessor for UnknownStorage();
      v19 = *(*(v18 - 8) + 16);

      v19(&a1[v17], &a2[v17], v18);
    }

    else
    {
      v29 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v30 = type metadata accessor for UnknownStorage();
      (*(*(v30 - 8) + 16))(&a1[v29], &a2[v29], v30);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v22 = *(a3 + 20);
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  v25 = *(v23 + 1);
  *(v23 + 1) = *(v24 + 1);

  v26 = *(a3 + 24);
  v27 = type metadata accessor for UnknownStorage();
  (*(*(v27 - 8) + 24))(&a1[v26], &a2[v26], v27);
  return a1;
}

_OWORD *initializeWithTake for UnmigrateResponse(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v9 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    }

    else
    {
      *a1 = *a2;
      v9 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    }

    v10 = type metadata accessor for UnknownStorage();
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v11 = *(a3 + 20);
  v12 = *(a3 + 24);
  *(a1 + v11) = *(a2 + v11);
  v13 = type metadata accessor for UnknownStorage();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  return a1;
}

char *assignWithTake for UnmigrateResponse(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UnmigrateResponse.OneOf_Result(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a1 = *a2;
        v11 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      }

      else
      {
        *a1 = *a2;
        v11 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      }

      v12 = type metadata accessor for UnknownStorage();
      (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_14;
    }

LABEL_7:
    v13 = sub_1000F5104(&qword_100937510, &qword_100792E00);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_14;
  }

  if (v10)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    }

    else
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    }

    v15 = type metadata accessor for UnknownStorage();
    (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
    swift_storeEnumTagMultiPayload();
  }

LABEL_14:
  v16 = *(a3 + 20);
  v17 = &a1[v16];
  v18 = &a2[v16];
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = *(v17 + 1);
  *v17 = v20;
  *(v17 + 1) = v19;

  v22 = *(a3 + 24);
  v23 = type metadata accessor for UnknownStorage();
  (*(*(v23 - 8) + 40))(&a1[v22], &a2[v22], v23);
  return a1;
}

void sub_100121F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_10011C0E4(319, a4, a5);
  if (v6 <= 0x3F)
  {
    v9 = *(v5 - 8) + 64;
    v7 = type metadata accessor for UnknownStorage();
    if (v8 <= 0x3F)
    {
      v10 = *(v7 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for UnmigrateResponse.OneOf_Result(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v7 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v8 = type metadata accessor for UnknownStorage();
      v9 = *(*(v8 - 8) + 16);

      v9(&a1[v7], &a2[v7], v8);
    }

    else
    {
      v11 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v12 = type metadata accessor for UnknownStorage();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for UnmigrateResponse.OneOf_Result(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(a1 + 8);

    v3 = type metadata accessor for UnmigrateResponse.Error(0);
  }

  else
  {
    v3 = type metadata accessor for UnmigrateResponse.Details(0);
  }

  v4 = *(v3 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for UnmigrateResponse.OneOf_Result(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + 1) = *(a2 + 1);
    v5 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    v6 = type metadata accessor for UnknownStorage();
    v7 = *(*(v6 - 8) + 16);

    v7(&a1[v5], &a2[v5], v6);
  }

  else
  {
    v8 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    v9 = type metadata accessor for UnknownStorage();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for UnmigrateResponse.OneOf_Result(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v5 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
      v6 = type metadata accessor for UnknownStorage();
      v7 = *(*(v6 - 8) + 16);

      v7(&a1[v5], &a2[v5], v6);
    }

    else
    {
      v8 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
      v9 = type metadata accessor for UnknownStorage();
      (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for UnmigrateResponse.OneOf_Result(char *a1, char *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v4 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
  }

  else
  {
    *a1 = *a2;
    v4 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
  }

  v5 = type metadata accessor for UnknownStorage();
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for UnmigrateResponse.OneOf_Result(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_100101968(a1, type metadata accessor for UnmigrateResponse.OneOf_Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v4 = *(type metadata accessor for UnmigrateResponse.Error(0) + 20);
    }

    else
    {
      *a1 = *a2;
      v4 = *(type metadata accessor for UnmigrateResponse.Details(0) + 20);
    }

    v5 = type metadata accessor for UnknownStorage();
    (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeBufferWithCopyOfBuffer for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t sub_1001227F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

char *initializeWithCopy for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithCopy for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *initializeWithTake for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for UnmigrateResponse.Details(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t sub_100122A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100122ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t initializeBufferWithCopyOfBuffer for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for EmptyRequest(uint64_t a1)
{
  v2 = type metadata accessor for UnknownStorage();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for EmptyRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_100122E18()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BasicResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = *(a2 + 16);
    if (v6 == 255)
    {
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = v6 & 1;
      v10 = a3;
      sub_100117B3C();
      a3 = v10;
      *v4 = v7;
      *(v4 + 8) = v8;
      *(v4 + 16) = v9;
    }

    v12 = *(a3 + 20);
    v13 = type metadata accessor for UnknownStorage();
    (*(*(v13 - 8) + 16))(v4 + v12, a2 + v12, v13);
  }

  return v4;
}

uint64_t destroy for BasicResponse(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 16) != 255)
  {
    v4 = *a1;
    v5 = a1[1];
    sub_100117B5C();
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t initializeWithCopy for BasicResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 == 255)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = v6 & 1;
    sub_100117B3C();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  v10 = *(a3 + 20);
  v11 = type metadata accessor for UnknownStorage();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithCopy for BasicResponse(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (*(a1 + 16) == 255)
  {
    if (v6 == 255)
    {
      v17 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v17;
    }

    else
    {
      v13 = *a2;
      v14 = *(a2 + 1);
      v15 = v6 & 1;
      sub_100117B3C();
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
    }
  }

  else if (v6 == 255)
  {
    sub_10012320C(a1);
    v16 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v16;
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = v6 & 1;
    sub_100117B3C();
    v10 = *a1;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    sub_100117B5C();
  }

  v18 = *(a3 + 20);
  v19 = type metadata accessor for UnknownStorage();
  (*(*(v19 - 8) + 24))(a1 + v18, a2 + v18, v19);
  return a1;
}

uint64_t *sub_10012320C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_100117B5C();
  return a1;
}

uint64_t initializeWithTake for BasicResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for BasicResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) == 255)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  if (v6 == 255)
  {
    sub_10012320C(a1);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v6 & 1;
  sub_100117B5C();
LABEL_6:
  v9 = *(a3 + 20);
  v10 = type metadata accessor for UnknownStorage();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t destroy for BasicResponse.OneOf_Result(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  return sub_100117B5C();
}

uint64_t sub_1001233C8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_100117B3C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t *assignWithCopy for BasicResponse.OneOf_Result(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_100117B3C();
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  *a1 = v3;
  a1[1] = v4;
  *(a1 + 16) = v5;
  sub_100117B5C();
  return a1;
}

__n128 initializeWithTake for BasicResponse.OneOf_Result(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for BasicResponse.OneOf_Result(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_100117B5C();
  return a1;
}

uint64_t getEnumTagSinglePayload for BasicResponse.OneOf_Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicResponse.OneOf_Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

char *sub_1001235A0(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a3 + 20);
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t sub_100123680(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

char *sub_1001236F4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *sub_100123788(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a3 + 20);
  v8 = type metadata accessor for UnknownStorage();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  return a1;
}

char *sub_10012381C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_100123894(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a3 + 20);
  v9 = type metadata accessor for UnknownStorage();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t sub_10012392C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001239EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100123A90()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_100123B20()
{
  result = qword_100938718;
  if (!qword_100938718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938718);
  }

  return result;
}

unint64_t sub_100123B74()
{
  result = qword_100938720;
  if (!qword_100938720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938720);
  }

  return result;
}

id static REMCDSmartListSection.fetchRequest()()
{
  v1 = [v0 cdEntityName];
  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];

  return v2;
}

uint64_t sub_100123D70(void *a1, void *a2)
{
  v38 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnfairLock.Options();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_1000F5104(&qword_1009387D0, &qword_100794E38);
  v11 = type metadata accessor for REMWidgetRefresh.WidgetKind();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100791300;
  (*(v12 + 104))(v15 + v14, enum case for REMWidgetRefresh.WidgetKind.widgetForAnyList(_:), v11);
  type metadata accessor for RDIntentsRelevantShortcutsHandler();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  type metadata accessor for RDRelevantShortcutsProcessor();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001ALL;
  v17[3] = 0x80000001007EBD10;
  v17[7] = 0;
  type metadata accessor for RDTransactionRegistrar();
  v18 = swift_allocObject();
  v18[4] = 0;
  v18[5] = 0;
  v18[2] = 0xD00000000000003FLL;
  v18[3] = 0x80000001007EBD30;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100124350(&qword_100936E60, &type metadata accessor for UnfairLock.Options);

  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB90(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = type metadata accessor for UnfairLock();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v18[6] = UnfairLock.init(options:)();
  v17[8] = v18;
  v37 = v16;
  v17[4] = v16;
  v17[5] = &off_1008F5958;
  v17[6] = a1;
  v22 = a1;

  v23 = sub_10036573C(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10036573C((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v26 = &v23[2 * v25];
  v26[4] = v17;
  v26[5] = &off_1008ED208;
  type metadata accessor for RDTimelineEngine();
  v27 = swift_allocObject();
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 0;
  v28 = v38;
  *(v27 + 16) = v22;
  *(v27 + 24) = v28;
  *(v27 + 32) = v23;
  *(v27 + 40) = 60;
  aBlock[4] = sub_10012434C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E5A00;
  v29 = _Block_copy(aBlock);
  v22;
  v30 = v28;

  v31 = v36;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100124350(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB90(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
  v32 = v39;
  v33 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v42 + 8))(v32, v33);
  (*(v40 + 8))(v31, v41);

  return v27;
}

uint64_t sub_100124350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100124398()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009387D8);
  v1 = sub_100006654(v0, qword_1009387D8);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100124460()
{
  v0 = sub_10038D894(&off_1008DD0C0);
  result = swift_arrayDestroy();
  qword_100974C00 = v0;
  return result;
}

uint64_t sub_1001244AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_100124694()
{
  v1 = [*v0 languageHypothesisThresholdForPrimaryLanguage];

  return v1;
}

id sub_1001246CC()
{
  v1 = [*v0 languageHypothesisThresholdForAdditionalLanguages];

  return v1;
}

uint64_t sub_100124704()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() daemonUserDefaults];
  v6 = [v5 preferredLocalizations];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v7[2])
  {

LABEL_5:
    static Locale.current.getter();
    v8 = Locale.identifier.getter();
    (*(v1 + 8))(v4, v0);
    return v8;
  }

  v8 = v7[4];
  v9 = v7[5];

  return v8;
}

void sub_100124864(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v74 = a5;
  v75 = a1;
  v76 = a4;
  v78 = type metadata accessor for Locale.Components();
  v8 = *(v78 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v78);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a3;
  v12 = Array<A>.removingDuplicates()();
  v13 = *(v12 + 16);
  v14 = _swiftEmptyArrayStorage;
  v77 = v12;
  v72 = v5;
  if (v13)
  {
    v71 = a2;
    v79 = _swiftEmptyArrayStorage;
    sub_1002531D8(0, v13, 0);
    v14 = v79;
    v15 = (v8 + 8);
    v16 = (v12 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      swift_bridgeObjectRetain_n();
      Locale.Components.init(identifier:)();
      v19._rawValue = Locale.Components.rem_language()()._rawValue;

      (*v15)(v11, v78);
      v79 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_1002531D8((v20 > 1), v21 + 1, 1);
        v14 = v79;
      }

      v14[2] = v21 + 1;
      v14[v21 + 4] = v19._rawValue;
      v16 += 2;
      --v13;
    }

    while (v13);
    v12 = v77;
  }

  v22 = [objc_allocWithZone(NLLanguageRecognizer) init];
  type metadata accessor for NLLanguage(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v22 setLanguageConstraints:isa];

  v24 = String._bridgeToObjectiveC()();
  [v22 processString:v24];

  v25 = v14[2];
  v75 = NLLanguageRecognizer.languageHypotheses(withMaximum:)();
  v26 = v76;
  v27 = v76[3];
  v28 = v76[4];
  sub_10000F61C(v76, v27);
  v71 = (*(v28 + 8))(v27, v28);
  v29 = v26[3];
  v30 = v26[4];
  sub_10000F61C(v26, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v32 = v31;
  v33 = *(v12 + 16);
  if (!v33)
  {
    goto LABEL_43;
  }

  v34 = 0;
  v78 = (v14 + 4);
  v35 = v12 + 40;
  v67 = v33 - 1;
  v36 = _swiftEmptyArrayStorage;
  v68 = v22;
  v70 = v31;
  v76 = v33;
  while (2)
  {
    v69 = v36;
    v37 = (v35 + 16 * v34);
    v38 = v34;
    v39 = v74;
    while (1)
    {
      if (v38 >= *(v12 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      v40 = v14[2];
      if (v38 == v40)
      {
LABEL_42:
        v22 = v68;
        v32 = v70;
        goto LABEL_43;
      }

      if (v38 >= v40)
      {
        goto LABEL_45;
      }

      if (*(v39 + 16))
      {
        break;
      }

LABEL_12:
      ++v38;
      v37 += 2;
      if (v33 == v38)
      {
        goto LABEL_42;
      }
    }

    v41 = *(v37 - 1);
    v42 = *v37;
    v43 = *(v78 + 8 * v38);

    v44 = v43;
    v45 = sub_100005F4C(v41, v42);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      v12 = v77;
LABEL_11:

      v33 = v76;
      goto LABEL_12;
    }

    v48 = *(*(v39 + 56) + 8 * v45);
    v49 = v75;
    v50 = *(v75 + 16);
    v51 = v48;
    if (v50)
    {
      v52 = sub_100393C70(v44);
      v12 = v77;
      if (v53)
      {
        v54 = *(*(v49 + 56) + 8 * v52);
        if (*(v73 + 16) < 2uLL)
        {
          v57 = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
        }

        else
        {
          if (v38)
          {
            v55 = v70;
          }

          else
          {
            v55 = v71;
          }

          v57 = v55;
        }

        v58 = v57;
        [v57 doubleValue];
        if (v59 < v54)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_1003658CC(0, v69[2] + 1, 1, v69);
          }

          v22 = v68;
          v62 = v69[2];
          v63 = v69[3];
          v66 = v62 + 1;
          if (v62 >= v63 >> 1)
          {
            v69 = sub_1003658CC((v63 > 1), v66, 1, v69);
          }

          goto LABEL_40;
        }

        v56 = v44;
        v44 = v51;
      }

      else
      {
        v56 = v51;
      }

      v39 = v74;

      goto LABEL_11;
    }

    v60 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_1003658CC(0, v60[2] + 1, 1, v60);
    }

    v22 = v68;
    v62 = v60[2];
    v61 = v60[3];
    v69 = v60;
    v66 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v69 = sub_1003658CC((v61 > 1), v66, 1, v69);
    }

    v58 = v44;
LABEL_40:

    v36 = v69;
    v64 = v67;
    v69[2] = v66;
    v65 = &v36[2 * v62];
    v65[4] = v38;
    v65[5] = v51;
    v34 = v38 + 1;
    v33 = v76;
    v12 = v77;
    v32 = v70;
    if (v64 != v38)
    {
      continue;
    }

    break;
  }

LABEL_43:
}

float sub_100124E18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, float a8)
{
  if (a4 == a6 && a5 == a7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return a8;
  }

  v18 = sub_10025655C(a6, a7, 1, 0);
  if (v8)
  {
    return a8;
  }

  if (*(v18 + 16) > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v19 = v18 + 16 * a1;
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);

      return a8;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_100935A68 != -1)
  {
LABEL_15:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_1009387D8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v24;
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v25 = 136315650;
    *(v25 + 4) = sub_10000668C(a2, a3, &v27);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10000668C(a4, a5, &v27);
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_10000668C(a6, a7, &v27);
    _os_log_impl(&_mh_execute_header, v23, v26, "convert(prediction:from:to:) skip: %s, %s, %s", v25, 0x20u);
    swift_arrayDestroy();
  }

  return a8;
}

uint64_t sub_1001250C0(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = type metadata accessor for String.Encoding();
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_1009387F0, &qword_100794F50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - v9;
  v11 = sub_1000F5104(&qword_1009387F8, &qword_100794F58);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = sub_1000F5104(&qword_100938800, &qword_100794F60);
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  sub_1000F5104(&qword_100938808, &qword_100794F68);
  Regex.init(_regexString:version:)();
  v62 = a1;
  v20 = v63;
  v64 = v19;
  Regex.wholeMatch(in:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000050A4(v10, &qword_1009387F0, &qword_100794F50);
    if (qword_100935A68 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009387D8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v66[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000668C(v62, v20, v66);
      _os_log_impl(&_mh_execute_header, v22, v23, "REMGroceryClassifier.isValidSourceType no result for '%s)'", v24, 0xCu);
      sub_10000607C(v25);
    }

    (*(v65 + 8))(v64, v16);
LABEL_7:
    v26 = 0;
    return v26 & 1;
  }

  v60 = v16;
  v58 = v12;
  (*(v12 + 32))(v15, v10, v11);
  swift_getKeyPath();
  v59 = v11;
  v57 = v15;
  Regex.Match.subscript.getter();

  v28 = static String._fromSubstring(_:)();
  v30 = v29;

  v31 = type metadata accessor for JSONDecoder();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v66[0] = 123;
  v66[1] = 0xE100000000000000;
  v34._countAndFlagsBits = v28;
  v34._object = v30;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 125;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  static String.Encoding.utf8.getter();
  v36 = String.data(using:allowLossyConversion:)();
  v38 = v37;

  (*(v61 + 8))(v6, v3);
  if (v38 >> 60 == 15)
  {
    if (qword_100935A68 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_1009387D8);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v66[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_10000668C(v62, v20, v66);
      _os_log_impl(&_mh_execute_header, v40, v41, "REMGroceryClassifier.isValidSourceType no data for '%s)'", v42, 0xCu);
      sub_10000607C(v43);
    }

    (*(v58 + 8))(v57, v59);
    (*(v65 + 8))(v64, v60);
    goto LABEL_7;
  }

  sub_10038DA10(_swiftEmptyArrayStorage);

  sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  sub_100125B3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v44 = sub_1001A6DC0(v66[0]);
  if (qword_100935A68 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100006654(v45, qword_1009387D8);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v63 = v36;
    v50 = v38;
    v51 = v49;
    v66[0] = v49;
    *v48 = 136315138;
    v52 = Set.description.getter();
    v54 = sub_10000668C(v52, v53, v66);

    *(v48 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "REMGroceryClassifier.isValidSourceType sourceTypeSet: %s", v48, 0xCu);
    sub_10000607C(v51);
    v38 = v50;
    v36 = v63;
  }

  v55 = v60;
  if (qword_100935A70 != -1)
  {
    swift_once();
  }

  v56 = sub_1001244AC(qword_100974C00, v44);
  sub_100031A14(v36, v38);

  (*(v58 + 8))(v57, v59);
  (*(v65 + 8))(v64, v55);
  v26 = v56 ^ 1;
  return v26 & 1;
}

unint64_t sub_100125B3C()
{
  result = qword_100938810;
  if (!qword_100938810)
  {
    sub_1000F514C(&qword_10093E9C0, qword_100794F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938810);
  }

  return result;
}

char *sub_100125BC0()
{
  v1 = type metadata accessor for ExtendedTriple();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for LanguageView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewService();
  v14 = static ViewService.clientService.getter();
  ViewService.languageView.getter();

  if (v0)
  {
    return v13;
  }

  v15 = LanguageView.inferredLanguageTriples()();
  v34 = v2;
  v39 = v15;
  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = 0;
    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v39;
  v35 = 0;
  if (!v17)
  {
LABEL_19:

    (*(v10 + 8))(v13, v9);
    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  v18 = v15;
  v33 = v13;
  v43 = _swiftEmptyArrayStorage;
  result = sub_100253158(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v32 = v9;
    v13 = v43;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      v38 = (v34 + 16);
      v20 = (v34 + 8);
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1001260B0(&qword_100938818);
        sub_1001260B0(&unk_100938820);
        FetchableRecord<>.init(row:)();
        v43 = v13;
        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_100253158((v21 > 1), v22 + 1, 1);
        }

        ++v19;
        v41 = v1;
        v42 = &protocol witness table for ExtendedTriple;
        v23 = sub_1000103CC(&v40);
        (*v38)(v23, v8, v1);
        v13 = v43;
        *(v43 + 2) = v22 + 1;
        sub_100054B6C(&v40, &v13[40 * v22 + 32]);
        (*v20)(v8, v1);
      }

      while (v17 != v19);
    }

    else
    {
      v38 = sub_1001260B0(&qword_100938818);
      v24 = sub_1001260B0(&unk_100938820);
      v36 = (v34 + 16);
      v37 = v24;
      v25 = (v34 + 8);
      v26 = 32;
      do
      {
        v27 = *(v39 + v26);

        FetchableRecord<>.init(row:)();
        v43 = v13;
        v29 = *(v13 + 2);
        v28 = *(v13 + 3);
        if (v29 >= v28 >> 1)
        {
          sub_100253158((v28 > 1), v29 + 1, 1);
        }

        v41 = v1;
        v42 = &protocol witness table for ExtendedTriple;
        v30 = sub_1000103CC(&v40);
        (*v36)(v30, v5, v1);
        v13 = v43;
        *(v43 + 2) = v29 + 1;
        sub_100054B6C(&v40, &v13[40 * v29 + 32]);
        (*v25)(v5, v1);
        v26 += 8;
        --v17;
      }

      while (v17);
    }

    (*(v31 + 8))(v33, v32);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001260B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtendedTriple();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001260F4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938830);
  v1 = sub_100006654(v0, qword_100938830);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAssignment.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDAssignment.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935A78 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100938830);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 description];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

Swift::String __swiftcall REMCDList.recordZoneName()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall REMCDAssignment.recordType()()
{
  v0 = 0x656D6E6769737341;
  v1 = 0xEA0000000000746ELL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDAssignment.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v87 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v94 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v102 = &v87 - v15;
  v16 = String._bridgeToObjectiveC()();
  v106.receiver = v3;
  v106.super_class = REMCDAssignment;
  objc_msgSendSuper2(&v106, "mergeDataFromRecord:accountID:", from.super.isa, v16);

  v17 = [(objc_class *)from.super.isa recordID];
  v18 = [v17 recordName];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  v19 = [v3 ckIdentifierFromRecordName:v18];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v19];

  v20 = 0;
  v95 = (v10 + 48);
  v92 = (v10 + 8);
  v93 = (v10 + 32);
  v100 = "OwningReminderIdentifier";
  v101 = "/Optional\\(\\[(.*)\\]\\)/";
  v99 = "EncryptedOriginatorIdentifier";
  *&v21 = 136315394;
  v91 = v21;
  *&v21 = 136315138;
  v96 = v21;
  v97 = v3;
  v98 = v9;
  do
  {
    v22 = *(&off_1008DD170 + v20 + 32);
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v37 = CKRecord.subscript.getter();
        if (v37)
        {
          v105 = v37;
          sub_1000F5104(&qword_100938860, &unk_1007A4830);
          if (swift_dynamicCast())
          {
            UUID.init(uuidString:)();

            if ((*v95)(v8, 1, v9) != 1)
            {
              v61 = v94;
              (*v93)(v94, v8, v9);
              isa = UUID._bridgeToObjectiveC()().super.isa;
              [v3 setOwningReminderIdentifier:isa];

              (*v92)(v61, v9);
              goto LABEL_7;
            }

            sub_1000050A4(v8, &unk_100939D90, "8\n\r");
          }
        }

        if (qword_100935A78 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100006654(v38, qword_100938830);
        v39 = v3;
        v30 = Logger.logObject.getter();
        v40 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v30, v40))
        {
          goto LABEL_60;
        }

        v41 = from.super.isa;
        v42 = v8;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103 = v44;
        *v43 = v96;
        v45 = [v39 ckIdentifier];
        if (v45)
        {
          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v60 = sub_10000668C(v47, v49, &v103);

        *(v43 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v30, v40, "Cannot convert to a UUID from CKRecord to owningReminderIdentifier {ckIdentifier: %s}", v43, 0xCu);
        sub_10000607C(v44);

        v8 = v42;
        from.super.isa = v41;
        v3 = v97;
        v9 = v98;
      }

      else if (v22 == 4)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (!v31)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v31 = 0;
        }

        v58 = sub_100128B80(v31, &qword_100939EE0, off_1008D41D0);

        if (v58)
        {
          objc_opt_self();
          v59 = swift_dynamicCastObjCClass();
          if (!v59)
          {
          }
        }

        else
        {
          v59 = 0;
        }

        [v3 setReminder:v59];
      }

      else
      {
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v103))
        {
          v57 = 0;
        }

        else
        {
          v57 = v103;
        }

        [v3 setStatus:v57];
      }
    }

    else if (*(&off_1008DD170 + v20 + 32))
    {
      if (v22 == 1)
      {
        v23 = [(objc_class *)from.super.isa encryptedValues];
        v24 = String._bridgeToObjectiveC()();
        v25 = [v23 objectForKeyedSubscript:v24];
        swift_unknownObjectRelease();

        if (v25)
        {
          v105 = v25;
          sub_1000F5104(&qword_100938860, &unk_1007A4830);
          if (swift_dynamicCast())
          {
            v26 = v103;
            v27 = v104;
            v28 = String._bridgeToObjectiveC()();
            [v3 setCkAssigneeIdentifier:v28];

            v29 = sub_100127444(v26, v27);
            if (v29)
            {
              v30 = v29;

              [v3 setAssignee:v30];
LABEL_60:

              goto LABEL_7;
            }

            if (qword_100935A78 != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            sub_100006654(v63, qword_100938830);
            v64 = v3;

            v30 = Logger.logObject.getter();
            v65 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v30, v65))
            {
              goto LABEL_59;
            }

            v89 = v65;
            v90 = v8;
            v66 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v103 = v88;
            *v66 = v91;
            v67 = [v64 ckIdentifier];
            if (v67)
            {
              v68 = v67;
              v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v71 = v70;
            }

            else
            {
              v71 = 0xE300000000000000;
              v69 = 7104878;
            }

            v80 = sub_10000668C(v69, v71, &v103);

            *(v66 + 4) = v80;
            *(v66 + 12) = 2080;
            v81 = sub_10000668C(v26, v27, &v103);

            *(v66 + 14) = v81;
            v82 = v89;
            v83 = v30;
            v84 = "Assignee object (REMCDSharee) does not exist (yet) when merging data from Assignment CKRecord: {ckIdentifier: %s, assigneeID: %s}";
LABEL_65:
            _os_log_impl(&_mh_execute_header, v83, v82, v84, v66, 0x16u);
            swift_arrayDestroy();

            v8 = v90;
            v9 = v98;
          }
        }
      }

      else
      {
        v50 = [(objc_class *)from.super.isa encryptedValues];
        v51 = String._bridgeToObjectiveC()();
        v52 = [v50 objectForKeyedSubscript:v51];
        swift_unknownObjectRelease();

        if (v52)
        {
          v105 = v52;
          sub_1000F5104(&qword_100938860, &unk_1007A4830);
          if (swift_dynamicCast())
          {
            v53 = v103;
            v54 = v104;
            v55 = String._bridgeToObjectiveC()();
            [v3 setCkOriginatorIdentifier:v55];

            v56 = sub_100127444(v53, v54);
            if (v56)
            {
              v30 = v56;

              [v3 setOriginator:v30];
              goto LABEL_60;
            }

            if (qword_100935A78 != -1)
            {
              swift_once();
            }

            v72 = type metadata accessor for Logger();
            sub_100006654(v72, qword_100938830);
            v73 = v3;

            v30 = Logger.logObject.getter();
            v74 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v30, v74))
            {
LABEL_59:

              goto LABEL_60;
            }

            v89 = v74;
            v90 = v8;
            v66 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v103 = v88;
            *v66 = v91;
            v75 = [v73 ckIdentifier];
            if (v75)
            {
              v76 = v75;
              v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v79 = v78;
            }

            else
            {
              v79 = 0xE300000000000000;
              v77 = 7104878;
            }

            v85 = sub_10000668C(v77, v79, &v103);

            *(v66 + 4) = v85;
            *(v66 + 12) = 2080;
            v86 = sub_10000668C(v53, v54, &v103);

            *(v66 + 14) = v86;
            v82 = v89;
            v83 = v30;
            v84 = "Originator object (REMCDSharee) does not exist (yet) when merging data from Assignment CKRecord: {ckIdentifier: %s, originatorID: %s}";
            goto LABEL_65;
          }
        }
      }
    }

    else
    {
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v32 = type metadata accessor for Date();
      v33 = v102;
      CKRecordKeyValueSetting.subscript.getter();
      v34 = *(v32 - 8);
      v35 = 0;
      if ((*(v34 + 48))(v33, 1, v32) != 1)
      {
        v36 = v102;
        v35 = Date._bridgeToObjectiveC()().super.isa;
        (*(v34 + 8))(v36, v32);
      }

      [v3 setAssignedDate:v35];
    }

LABEL_7:
    ++v20;
  }

  while (v20 != 6);
}

uint64_t sub_100127444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 managedObjectContext];
  if (!v6)
  {
    if (qword_100935A78 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v7 = v6;
  sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791300;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100006600();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = NSPredicate.init(format:_:)();
  sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
  v10 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v9 context:v7];
  sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_10:
    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100938830);
    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v7, v16, "Trying to merge CKRecord to an object without MOC", v17, 2u);
    }

    goto LABEL_14;
  }

  v12 = *(v11 + 32);
LABEL_7:
  v13 = v12;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

CKRecord_optional __swiftcall REMCDAssignment.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v72.receiver = v1;
  v72.super_class = REMCDAssignment;
  v21 = objc_msgSendSuper2(&v72, "newlyCreatedRecord");
  if (v21)
  {
    v66 = v17;
    v67 = v10;
    v22 = 0;
    v64 = (v3 + 56);
    v65 = "/Optional\\(\\[(.*)\\]\\)/";
    v58 = (v3 + 8);
    v59 = (v3 + 16);
    v62 = "OwningReminderIdentifier";
    v63 = (v3 + 48);
    v61 = "EncryptedOriginatorIdentifier";
    v68 = v2;
    do
    {
      v24 = *(&off_1008DD198 + v22 + 32);
      if (v24 > 2)
      {
        if (v24 != 3)
        {
          if (v24 == 4)
          {
            v31 = [v1 reminder];
            if (v31)
            {
              v32 = v31;
              v33 = [v31 recordID];
            }

            else
            {
              v33 = 0;
            }

            v55 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v33];

            CKRecord.subscript.setter();
            goto LABEL_5;
          }

          v23 = [v1 status];
          *(&v70 + 1) = &type metadata for Int16;
          v71 = &protocol witness table for Int16;
          LOWORD(v69) = v23;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
        }

        v38 = [v1 owningReminderIdentifier];
        if (v38)
        {
          v39 = v67;
          v40 = v38;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = 0;
        }

        else
        {
          v41 = 1;
          v39 = v67;
        }

        (*v64)(v39, v41, 1, v2);
        sub_100031B58(v39, v12, &unk_100939D90, "8\n\r");
        if ((*v63)(v12, 1, v2))
        {
          sub_1000050A4(v12, &unk_100939D90, "8\n\r");
          v69 = 0u;
          v70 = 0u;
          v71 = 0;
        }

        else
        {
          v51 = v60;
          (*v59)(v60, v12, v2);
          sub_1000050A4(v12, &unk_100939D90, "8\n\r");
          v52 = UUID.uuidString.getter();
          v54 = v53;
          (*v58)(v51, v2);
          *(&v70 + 1) = &type metadata for String;
          v71 = &protocol witness table for String;
          *&v69 = v52;
          *(&v69 + 1) = v54;
        }
      }

      else
      {
        if (*(&off_1008DD198 + v22 + 32))
        {
          if (v24 == 1)
          {
            v25 = [v21 encryptedValues];
            v26 = [v1 ckAssigneeIdentifier];
            if (v26)
            {
              v27 = v26;
              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              *(&v70 + 1) = &type metadata for String;
              v71 = &protocol witness table for String;
              *&v69 = v28;
              *(&v69 + 1) = v30;
              v2 = v68;
            }

            else
            {
              v71 = 0;
              v69 = 0u;
              v70 = 0u;
            }
          }

          else
          {
            v42 = [v21 encryptedValues];
            v43 = [v1 ckOriginatorIdentifier];
            if (v43)
            {
              v44 = v43;
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v47 = v46;

              *(&v70 + 1) = &type metadata for String;
              v71 = &protocol witness table for String;
              *&v69 = v45;
              *(&v69 + 1) = v47;
              v2 = v68;
            }

            else
            {
              v71 = 0;
              v69 = 0u;
              v70 = 0u;
            }
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

        v34 = [v1 assignedDate];
        if (v34)
        {
          v35 = v66;
          v36 = v34;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = 0;
        }

        else
        {
          v37 = 1;
          v35 = v66;
        }

        v48 = type metadata accessor for Date();
        v49 = *(v48 - 8);
        (*(v49 + 56))(v35, v37, 1, v48);
        sub_100031B58(v35, v19, &unk_100938850, qword_100795AE0);
        if ((*(v49 + 48))(v19, 1, v48) == 1)
        {
          sub_1000050A4(v19, &unk_100938850, qword_100795AE0);
          v69 = 0u;
          v70 = 0u;
          v71 = 0;
        }

        else
        {
          *(&v70 + 1) = v48;
          v71 = &protocol witness table for Date;
          v50 = sub_1000103CC(&v69);
          (*(v49 + 32))(v50, v19, v48);
        }
      }

      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_4:
      CKRecordKeyValueSetting.subscript.setter();
LABEL_5:
      ++v22;
    }

    while (v22 != 6);
  }

  v56 = v21;
  result.value.super.isa = v56;
  result.is_nil = v20;
  return result;
}

void __swiftcall REMCDRecurrenceRule.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 reminder];

  v3 = v2;
}

Swift::Void __swiftcall REMCDAssignment.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100938830);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 reminder];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for assignment {assignmentID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 reminder];
  if (v24)
  {
    v46 = v24;
    if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v25 = v4;
      v26 = v46;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = &selRef_persistentStoreForIdentifier_;
        v31 = [v25 remObjectID];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 description];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v30 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v36 = 0xE300000000000000;
          v34 = 7104878;
        }

        v37 = sub_10000668C(v34, v36, &v47);

        *(v29 + 4) = v37;
        *(v29 + 12) = 2082;
        v38 = [v26 v30[106]];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_10000668C(v41, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reminder is marked for deletion but assignment is not {assignmentID: %{public}s, reminderID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

Swift::Void __swiftcall REMCDAssignment.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938830);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

id sub_100128808(void *a1, void (*a2)(void))
{
  v3 = v2;
  a2(0);
  v5 = [v3 managedObjectContext];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094A590);
    v6 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, v15, "Trying to merge CKRecord to an object without MOC", v16, 2u);
    }

    goto LABEL_16;
  }

  v6 = v5;
  if (!a1)
  {
LABEL_16:

    return 0;
  }

  v7 = a1;
  v8 = [v3 accountCKIdentifier];
  if (!v8)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_10094A590);
    v18 = v7;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = [v18 recordID];
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "newOrExistingObject with reference recordID %{public}@ with nil accountCKIdentfiier", v21, 0xCu);
      sub_1000050A4(v22, &unk_100938E70, &unk_100797230);

      return 0;
    }

    goto LABEL_16;
  }

  v9 = v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [v7 recordID];
  v12 = [ObjCClassFromMetadata existingCloudObjectForRecordID:v11 accountID:v9 context:v6];

  if (v12)
  {

    return v12;
  }

  else
  {
    v24 = [v7 recordID];
    v25 = [v3 account];
    v26 = [ObjCClassFromMetadata newPlaceholderObjectForRecordID:v24 account:v25 context:v6];

    return v26;
  }
}

id sub_100128B80(void *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  sub_1000060C8(0, a2, a3);
  v6 = [v4 managedObjectContext];
  if (!v6)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094A590);
    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v7, v16, "Trying to merge CKRecord to an object without MOC", v17, 2u);
    }

    goto LABEL_16;
  }

  v7 = v6;
  if (!a1)
  {
LABEL_16:

    return 0;
  }

  v8 = a1;
  v9 = [v4 accountCKIdentifier];
  if (!v9)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094A590);
    v19 = v8;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = [v19 recordID];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "newOrExistingObject with reference recordID %{public}@ with nil accountCKIdentfiier", v22, 0xCu);
      sub_1000050A4(v23, &unk_100938E70, &unk_100797230);

      return 0;
    }

    goto LABEL_16;
  }

  v10 = v9;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [v8 recordID];
  v13 = [ObjCClassFromMetadata existingCloudObjectForRecordID:v12 accountID:v10 context:v7];

  if (v13)
  {

    return v13;
  }

  else
  {
    v25 = [v8 recordID];
    v26 = [v4 account];
    v27 = [ObjCClassFromMetadata newPlaceholderObjectForRecordID:v25 account:v26 context:v7];

    return v27;
  }
}

char *sub_100128F20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&unk_1009388C0, &unk_1007A1760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t _sSo15REMCDAssignmentC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938830);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo15REMCDAssignmentC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935A78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100938830);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_100129304()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009388D0);
  v1 = sub_100006654(v0, qword_1009388D0);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int PermanentlyHideError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100129410()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100129450()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100129498()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001294DC()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E7473696CLL;
  }
}

uint64_t sub_100129544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012AC28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100129578(uint64_t a1)
{
  v2 = sub_10012A57C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001295B4(uint64_t a1)
{
  v2 = sub_10012A57C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001295F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_1000F5104(&qword_100938900, &qword_100795158);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10012A57C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1000F5104(&qword_100938910, &unk_100795160);
    sub_10012A5D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13;
    v18 = 2;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10012A6A8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001297E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_1000F5104(&qword_100938930, &qword_100795170);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10012A724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100129998()
{
  if (*v0)
  {
    result = 0x7265646E696D6572;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_1001299D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000)
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

uint64_t sub_100129AA8(uint64_t a1)
{
  v2 = sub_10012A724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100129AE4(uint64_t a1)
{
  v2 = sub_10012A724();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t *sub_100129B40(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v53 = a1;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v48 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  if (v17)
  {
    v49 = v4;
    v50 = a4;
    v51 = a2;
    v58 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v17, 0);
    v18 = v58;
    v19 = (a3 + 40);
    do
    {
      v20 = *(v19 - 1);
      v5 = *v19;
      v58 = v18;
      v22 = v18[2];
      v21 = v18[3];
      v23 = v22 + 1;

      if (v22 >= v21 >> 1)
      {
        sub_100026EF4((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v18 = v58;
      }

      v18[2] = v23;
      v24 = &v18[2 * v22];
      v24[4] = v20;
      v24[5] = v5;
      v19 += 2;
      --v17;
    }

    while (v17);
    v52 = v23;
LABEL_9:
    v58 = _swiftEmptyArrayStorage;
    v26 = v52;
    sub_1002531F8(0, v52, 0);
    v27 = v26;
    v28 = 0;
    v29 = v58;
    v57 = v18[2];
    a2 = v18 + 5;
    while (v57 != v28)
    {
      if (v28 >= v18[2])
      {
        goto LABEL_27;
      }

      v30 = *(a2 - 1);
      v5 = *a2;
      v58 = v29;
      v32 = v29[2];
      v31 = v29[3];

      if (v32 >= v31 >> 1)
      {
        sub_1002531F8((v31 > 1), v32 + 1, 1);
        v27 = v52;
        v29 = v58;
      }

      v29[2] = v32 + 1;
      v33 = &v29[3 * v32];
      v33[4] = v28;
      v33[5] = v30;
      v33[6] = v5;
      a2 += 2;
      if (v27 == ++v28)
      {

        v34 = v56;
        a4 = v50;
        a2 = v51;
        v7 = v49;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_20;
  }

  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v51 = a2;
    v52 = v25;
    v49 = v4;
    v50 = a4;
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v29 = _swiftEmptyArrayStorage;

  v34 = v56;
LABEL_16:

  static DispatchTime.now()();
  v35 = type metadata accessor for JSONEncoder();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v58 = v53;
  v59 = a2;
  v60 = v29;
  v61 = a4;
  sub_10012A048();
  v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v7)
  {
    (*(v54 + 8))(v34, v55);

    return a2;
  }

  v18 = v38;
  v5 = v39;

  static String.Encoding.utf8.getter();
  v40 = String.init(data:encoding:)();
  if (!v41)
  {
    sub_10012A09C();
    swift_allocError();
    swift_willThrow();
    sub_10001BBA0(v18, v5);
    (*(v54 + 8))(v34, v55);
    return a2;
  }

  a2 = v40;
  static DispatchTime.secondsElapsed(since:)();
  v6 = v42;
  if (qword_100935A80 != -1)
  {
    goto LABEL_28;
  }

LABEL_20:
  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_1009388D0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v44, v45, "RDAutoCategorizerPromptInputProcessor: json encoded in %f seconds", v46, 0xCu);
  }

  sub_10001BBA0(v18, v5);

  (*(v54 + 8))(v56, v55);
  return a2;
}

unint64_t sub_10012A048()
{
  result = qword_1009388E8;
  if (!qword_1009388E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388E8);
  }

  return result;
}

unint64_t sub_10012A09C()
{
  result = qword_1009388F0;
  if (!qword_1009388F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388F0);
  }

  return result;
}

void *assignWithCopy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a1[2];
  a1[2] = a2[2];

  return a1;
}

__n128 initializeWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for RDAutoCategorizerPromptInputError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t destroy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];
}

void *initializeWithCopy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  v6 = a2[3];
  v7 = a1[3];
  a1[3] = v6;

  return a1;
}

__n128 initializeWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *assignWithTake for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10012A528()
{
  result = qword_1009388F8;
  if (!qword_1009388F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009388F8);
  }

  return result;
}

unint64_t sub_10012A57C()
{
  result = qword_100938908;
  if (!qword_100938908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938908);
  }

  return result;
}

unint64_t sub_10012A5D0()
{
  result = qword_100938918;
  if (!qword_100938918)
  {
    sub_1000F514C(&qword_100938910, &unk_100795160);
    sub_10012A654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938918);
  }

  return result;
}

unint64_t sub_10012A654()
{
  result = qword_100938920;
  if (!qword_100938920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938920);
  }

  return result;
}

unint64_t sub_10012A6A8()
{
  result = qword_100938928;
  if (!qword_100938928)
  {
    sub_1000F514C(&unk_10093B300, &unk_100797780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938928);
  }

  return result;
}

unint64_t sub_10012A724()
{
  result = qword_100938938;
  if (!qword_100938938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationReminderWithIndex.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDAutoCategorizerPromptInputProcessor.RDAutoCategorizationUserPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10012AA1C()
{
  result = qword_100938940;
  if (!qword_100938940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938940);
  }

  return result;
}

unint64_t sub_10012AA74()
{
  result = qword_100938948;
  if (!qword_100938948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938948);
  }

  return result;
}

unint64_t sub_10012AACC()
{
  result = qword_100938950;
  if (!qword_100938950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938950);
  }

  return result;
}

unint64_t sub_10012AB24()
{
  result = qword_100938958;
  if (!qword_100938958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938958);
  }

  return result;
}

unint64_t sub_10012AB7C()
{
  result = qword_100938960;
  if (!qword_100938960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938960);
  }

  return result;
}

unint64_t sub_10012ABD4()
{
  result = qword_100938968;
  if (!qword_100938968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938968);
  }

  return result;
}

uint64_t sub_10012AC28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E7473696CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001007EBE40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001007EBE60 == a2)
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

uint64_t sub_10012AD50()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938970);
  v1 = sub_100006654(v0, qword_100938970);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012AE18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1000F5104(&qword_100936FA8, &qword_100791B70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = _s10PredicatesOMa(0);
  v3[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10012AF44, 0, 0);
}

uint64_t sub_10012AF44()
{
  v1 = v0[4];
  if (![*(v1 + 16) enableGroceryFeedbackSurvey])
  {
    if (qword_100935A88 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100938970);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "RDFeedbackProvider: Survey is not enabled for non-seed builds.";
    goto LABEL_11;
  }

  if ([*(v1 + 16) hasSeenGroceryFeedbackSurvey])
  {
    if (qword_100935A88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006654(v2, qword_100938970);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "RDFeedbackProvider: Has seen the feedback survey.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_12:

    goto LABEL_13;
  }

  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[2];
  v17 = v0[3];
  *v14 = v16;
  swift_storeEnumTagMultiPayload();
  v18 = v16;
  v19 = sub_100043AA8();
  sub_1000513B4(v14);
  sub_10053464C(v17, v19);
  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];
  v23 = REMRemindersListDataView.CountByCompleted.incomplete.getter();

  (*(v21 + 8))(v20, v22);
  if (v23 < 3)
  {
    if (qword_100935A88 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100938970);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "RDFeedbackProvider: Survey requires 3 or more reminders in the list.";
    goto LABEL_11;
  }

  v25 = v0[4];
  v26 = v0[5];
  [*(v1 + 16) setHasSeenGroceryFeedbackSurvey:1];
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v25;

  sub_1001955C4(0, 0, v26, &unk_1007953E0, v28);

LABEL_13:
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10012B35C()
{
  v24 = v0;
  if (qword_100935A88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_100006654(v1, qword_100938970);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000668C(0xD00000000000001FLL, 0x80000001007EBED0, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "RDFeedbackProvider: showFeedback {formIdentifier: %s}", v4, 0xCu);
    sub_10000607C(v5);
  }

  v6 = objc_allocWithZone(type metadata accessor for FBKSForm());
  v7 = FBKSForm.init(identifier:)();
  v0[8] = v7;
  dispatch thunk of FBKSForm.authenticationMethod.setter();
  v8 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  v0[9] = v8;
  dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11._countAndFlagsBits = 0xD000000000000017;
  v26._object = 0x80000001007EBF10;
  v11._object = 0x80000001007EBEF0;
  v26._countAndFlagsBits = 0xD00000000000002ELL;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v26);

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();
  v13 = [v9 mainBundle];
  v27._object = 0x80000001007EBF90;
  v14._countAndFlagsBits = 0xD00000000000004DLL;
  v14._object = 0x80000001007EBF40;
  v27._countAndFlagsBits = 0xD000000000000030;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v27);

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.setter();
  v16 = objc_allocWithZone(type metadata accessor for FBKSDraftLauncher());
  v17 = v7;
  v0[10] = FBKSDraftLauncher.init(feedbackForm:)();
  v18 = *(&async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:) + 1);
  v22 = (&async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:) + async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:));
  v19 = v8;
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_10012B6C0;

  return v22(v8);
}

uint64_t sub_10012B6C0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10012B930;
  }

  else
  {

    v4 = sub_10012B7DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012B7DC()
{
  v13 = v0;
  v1 = v0[7];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000668C(0xD00000000000001FLL, 0x80000001007EBED0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "RDFeedbackProvider: Feedback request succeeded. {formIdentifier: %s}", v8, 0xCu);
    sub_10000607C(v9);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_10012B930()
{
  v22 = v0;
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];

  [*(v6 + 16) setHasSeenGroceryFeedbackSurvey:0];
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[4];
    v15 = Error.localizedDescription.getter();
    v17 = sub_10000668C(v15, v16, &v21);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDFeedbackProvider: Feedback request failed. {error: %s}", v10, 0xCu);
    sub_10000607C(v11);
  }

  else
  {
    v18 = v0[12];
  }

  v19 = v0[1];

  return v19();
}

uint64_t TantorMigrationAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10012BB38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000FCBFC;

  return sub_10012B33C(a1, v4, v5, v6);
}

uint64_t sub_10012BBEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938A28);
  v1 = sub_100006654(v0, qword_100938A28);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10012BCB4(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v276 = a2;
  v249 = a5;
  v251 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel();
  v257 = *(v251 - 8);
  v8 = *(v257 + 64);
  v9 = __chkstk_darwin(v251);
  v248 = v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v263 = v228 - v11;
  v243 = type metadata accessor for UUID();
  v242 = *(v243 - 8);
  v12 = *(v242 + 64);
  __chkstk_darwin(v243);
  v241 = v228 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F5104(&qword_100938A68, &unk_10079DDF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v247 = v228 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v261 = v228 - v18;
  v262 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v260 = *(v262 - 8);
  v19 = *(v260 + 64);
  v20 = __chkstk_darwin(v262);
  v246 = v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v259 = v228 - v22;
  v23 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v238 = v228 - v25;
  v272 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v268 = *(v272 - 8);
  v26 = *(v268 + 64);
  v27 = __chkstk_darwin(v272);
  v267 = (v228 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v278 = v228 - v29;
  v264 = type metadata accessor for REMRemindersListDataView.Diff();
  v269 = *(v264 - 8);
  v30 = *(v269 + 64);
  v31 = __chkstk_darwin(v264);
  v250 = v228 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v258 = v228 - v34;
  v35 = __chkstk_darwin(v33);
  v256 = v228 - v36;
  __chkstk_darwin(v35);
  v279 = v228 - v37;
  v240 = _s10PredicatesOMa(0);
  v38 = *(*(v240 - 8) + 64);
  __chkstk_darwin(v240);
  v239 = (v228 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v254 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v253 = *(v254 - 8);
  v40 = *(v253 + 64);
  __chkstk_darwin(v254);
  v252 = v228 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v245 = v228 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v273 = v228 - v47;
  __chkstk_darwin(v46);
  v277 = v228 - v48;
  v49 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v283 = *(v49 - 8);
  v284 = v49;
  v50 = *(v283 + 64);
  v51 = __chkstk_darwin(v49);
  v244 = v228 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v282 = (v228 - v53);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v290 = *(Subtasks - 8);
  v54 = *(v290 + 64);
  v55 = __chkstk_darwin(Subtasks);
  v280 = v228 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v281 = v228 - v57;
  v288 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v285 = *(v288 - 8);
  v58 = *(v285 + 64);
  v59 = __chkstk_darwin(v288);
  v266 = v228 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v255 = v228 - v62;
  v63 = __chkstk_darwin(v61);
  v271 = v228 - v64;
  v65 = __chkstk_darwin(v63);
  v270 = v228 - v66;
  __chkstk_darwin(v65);
  v292 = v228 - v67;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v291 = *(Configuration - 8);
  v68 = *(v291 + 8);
  v69 = __chkstk_darwin(Configuration);
  v274 = v228 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v265 = v228 - v72;
  v73 = __chkstk_darwin(v71);
  v75 = v228 - v74;
  v76 = __chkstk_darwin(v73);
  v78 = v228 - v77;
  v79 = __chkstk_darwin(v76);
  v81 = v228 - v80;
  v82 = __chkstk_darwin(v79);
  v84 = v228 - v83;
  v85 = __chkstk_darwin(v82);
  v87 = v228 - v86;
  __chkstk_darwin(v85);
  v89 = (v228 - v88);
  v286 = a4;
  v90 = REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.smartList.getter();
  v293 = a1;
  v91 = v295;
  sub_1005BA098(a1, a3, v90);
  v295 = v91;
  if (v91)
  {

    return;
  }

  v93 = v92;
  v234 = v89;
  v235 = v87;
  v236 = v84;
  v232 = v81;
  v229 = v78;
  v230 = v75;
  v231 = a3;

  v237 = v93;
  v94 = [v237 accountID];
  v95 = [v293 persistentStoreOfAccountWithAccountID:v94];

  if (v95)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1007953F0;
    v233 = v96;
    *(v96 + 32) = v95;
  }

  else
  {
    v233 = 0;
  }

  v97 = Configuration;
  v98 = v281;
  v99 = v235;
  v100 = v234;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v101 = v292;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v103 = (v291 + 8);
  v102 = *(v291 + 1);
  v102(v100, v97);
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v104 = v98;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v102(v99, v97);
  v105 = v236;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v106 = v282;
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v102(v105, v97);
  v107 = v237;
  v108 = v295;
  v109 = sub_1005B6BD0(v237, v293, v101, v104, v106);
  if (v108)
  {

    (*(v283 + 8))(v106, v284);
    (*(v290 + 8))(v104, Subtasks);
    (*(v285 + 8))(v292, v288);
    return;
  }

  v236 = v102;
  v291 = v103;
  v281 = v109;
  v110 = (v283 + 8);
  v111 = v106;
  v112 = *(v283 + 8);
  v112(v111, v284);
  v113 = v290 + 8;
  v114 = *(v290 + 8);
  v114(v104, Subtasks);
  v116 = v285 + 8;
  v115 = *(v285 + 8);
  v115(v292, v288);
  v117 = sub_10012DC7C();
  v235 = v110;
  v234 = v112;
  v282 = v114;
  v292 = v115;
  v290 = v113;

  v118 = sub_10027091C(v117);
  v119 = sub_1001BD57C(v118, v281);
  v228[2] = v117;
  v233 = v119;
  v295 = 0;

  v120 = v232;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  LOBYTE(v117) = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v121 = Configuration;
  v122 = v236;
  v236(v120, Configuration);
  v123 = v288;
  v228[1] = v116;
  if ((v117 & 1) == 0)
  {
    goto LABEL_11;
  }

  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v124 = v270;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v122(v120, v121);
  v125 = v271;
  (*(v285 + 104))(v271, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v123);
  v126 = static REMRemindersListDataView.ShowCompleted.== infix(_:_:)();
  v127 = v125;
  v128 = v292;
  (v292)(v127, v123);
  (v128)(v124, v123);
  if (v126)
  {

    v129 = v277;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v130 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
    v131 = v231;
    v132 = v278;
    v133 = v275;
  }

  else
  {
LABEL_11:
    v134 = v229;
    REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
    v135 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
    v122(v134, v121);
    v136 = v230;
    REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
    v122(v136, v121);
    if (v135)
    {
      v137 = [v237 customContext];
      v132 = v278;
      v138 = v273;
      v139 = v280;
      if (v137 && (v140 = v137, v141 = REMSmartListCustomContext.filter.getter(), v140, v141))
      {
        v142 = v252;
        REMCustomSmartListFilterDescriptor.operation.getter();
        v143 = (*(v253 + 88))(v142, v254);
        if (v143 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
        {
          v144 = static Set<>.typesSupportedByCustomSmartList.getter();
          v145 = static Set<>.typesIndescribableByNSPredicate.getter();
          sub_1001A2030(v145, v144);

          v146 = v255;
        }

        else
        {
          if (v143 != enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_60;
          }

          static Set<>.typesSupportedByCustomSmartList.getter();
          v146 = v255;
        }

        v294[3] = &type metadata for ReminderIDsWithMatchingHashtagsProvider;
        v294[4] = sub_10012DEEC();
        v294[0] = v293;
        v187 = v293;
        v188 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();
        v271 = v187;

        sub_10000607C(v294);
        v189 = *(v188 + 16);

        if (v189)
        {
          (*(v285 + 104))(v146, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v123);
          v190 = v284;
          v191 = v146;
          v192 = v244;
          (*(v283 + 104))(v244, enum case for REMRemindersListDataView.SortingStyle.default(_:), v284);
          v193 = v237;
          v139 = v280;
          v194 = v295;
          sub_1005B6BD0(v237, v271, v191, v280, v192);
          if (v194)
          {

            v234(v192, v190);
            (v292)(v191, v123);
            v282(v139, Subtasks);
            return;
          }

          v295 = 0;
          v234(v192, v190);
          (v292)(v191, v123);
          REMRemindersListDataView.CountByCompleted.init(reminders:)();
        }

        else
        {
          v217 = *(sub_1000F5104(&qword_100938A98, &qword_1007A7570) + 64);
          v218 = v239;
          *v239 = v141;
          v219 = v141;
          v220 = v237;
          *(v218 + 8) = [v237 accountID];
          (*(v285 + 104))(v218 + v217, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v123);
          swift_storeEnumTagMultiPayload();
          v141 = sub_100043AA8();
          sub_1000513B4(v218);
          v221 = v295;
          sub_10053464C(v271, v141);
          if (v221)
          {

            v282(v280, Subtasks);
            return;
          }

          v295 = 0;

          v139 = v280;
        }

        v147 = 0;
        v129 = v277;
        v131 = v231;
        v132 = v278;
      }

      else
      {
        v147 = 1;
        v129 = v277;
        v131 = v231;
      }

      v133 = v275;
    }

    else
    {
      v147 = 1;
      v129 = v277;
      v131 = v231;
      v132 = v278;
      v133 = v275;
      v138 = v273;
      v139 = v280;
    }

    v282(v139, Subtasks);
    v148 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v148 - 8) + 56))(v138, v147, 1, v148);
    sub_100031B58(v138, v129, &qword_100938A70, &qword_1007ACC60);
  }

  v149 = [v133 fetchResultTokenToDiffAgainst];
  v150 = v295;
  sub_100534D44(v149, v279);

  v151 = v274;
  if (v150)
  {

    v152 = v237;

    sub_1000050A4(v129, &qword_100938A70, &qword_1007ACC60);
    return;
  }

  v153 = v265;
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v236(v153, Configuration);
  v154 = v268;
  v155 = v267;
  v156 = v272;
  (*(v268 + 16))(v267, v132, v272);
  v157 = (*(v154 + 88))(v155, v156);
  v295 = 0;
  if (v157 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {

    (*(v154 + 96))(v155, v156);
    v158 = *v155;
    v159 = Array<A>.reminders.getter();
    v160 = v293;
    sub_10053DB98(v158, v159, v293, v131, 0);
    v156 = v272;

    goto LABEL_26;
  }

  if (v157 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {

    (*(v154 + 96))(v155, v156);
    v160 = v293;
    sub_10053E698(*v155, v279, v293, v131, 0);
    goto LABEL_26;
  }

  if (v157 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {

    (*(v154 + 96))(v155, v156);
    v181 = v155;
    v182 = *v155;
    v183 = v181 + *(sub_1000F5104(&qword_100938A78, &qword_1007AABE0) + 48);
    v184 = v238;
    sub_100031B58(v183, v238, &qword_10094B8E0, &unk_1007AABD0);
    v185 = Array<A>.reminders.getter();
    v160 = v293;
    sub_10053DB98(v182, v185, v293, v131, 0);
    sub_10053EBE4(v184, v185, v160, v131, 0);
    v132 = v278;

    v186 = v184;
    v156 = v272;
    sub_1000050A4(v186, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_26;
  }

  if (v157 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
LABEL_60:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  v160 = v293;
  v154 = v268;
LABEL_26:
  (*(v154 + 8))(v132, v156);
  REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.configuration.getter();
  v161 = v151;
  v162 = v266;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v236(v161, Configuration);
  v163 = v160;
  v164 = v237;
  v165 = v295;
  sub_1005B74B8(v163, v237, v129, v162, v281);
  v295 = v165;
  if (v165)
  {

    (v292)(v162, v288);
    (*(v269 + 8))(v279, v264);
    sub_1000050A4(v129, &qword_100938A70, &qword_1007ACC60);
  }

  else
  {
    (v292)(v162, v288);
    sub_100010364(v129, v245, &qword_100938A70, &qword_1007ACC60);
    v166 = v259;
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v167 = [v164 objectID];
    v168 = [v164 accountID];

    if (REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.shouldFetchManualOrderingID.getter())
    {
      v169 = [v167 uuid];
      v170 = v241;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v171 = UUID.uuidString.getter();
      v172 = v170;
      v173 = v171;
      v175 = v174;
      (*(v242 + 8))(v172, v243);
      sub_10053F868(2, v173, v175, v168, v293);
      v177 = v261;
      v178 = v247;
      if (!v176)
      {
        v176 = [objc_opt_self() newObjectID];
      }

      v179 = v176;
      REMObjectID.codable.getter();
      REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)();

      v180 = 0;
    }

    else
    {
      v180 = 1;
      v177 = v261;
      v178 = v247;
    }

    v195 = v257;
    v196 = v246;

    v197 = type metadata accessor for REMManualOrdering.ManualOrderingID();
    (*(*(v197 - 8) + 56))(v177, v180, 1, v197);
    (*(v260 + 16))(v196, v166, v262);
    sub_100010364(v177, v178, &qword_100938A68, &unk_10079DDF0);
    v292 = v237;
    REMRemindersListDataView.CustomSmartListSectionsModel.init(sectionsModel:smartList:manualOrderingID:)();
    v198 = v258;
    if (qword_100935A90 != -1)
    {
      swift_once();
    }

    v199 = type metadata accessor for Logger();
    sub_100006654(v199, qword_100938A28);
    v200 = v269;
    v201 = *(v269 + 16);
    v202 = v256;
    v203 = v279;
    v204 = v264;
    v201(v256, v279, v264);
    v291 = v201;
    v201(v198, v203, v204);
    v205 = v281;

    v206 = Logger.logObject.getter();
    v207 = v198;
    v208 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v206, v208))
    {
      v209 = swift_slowAlloc();
      *v209 = 134218496;
      v210 = *(v205 + 2);

      *(v209 + 4) = v210;

      *(v209 + 12) = 2048;
      v211 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
      if ((v211 & 0xC000000000000001) != 0)
      {
        v212 = __CocoaSet.count.getter();
        v202 = v256;
      }

      else
      {
        v212 = *(v211 + 16);
      }

      v222 = v269;

      v223 = *(v222 + 8);
      v290 = (v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v293 = v223;
      v223(v202, v204);
      *(v209 + 14) = v212;
      *(v209 + 22) = 2048;
      v224 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
      if ((v224 & 0xC000000000000001) != 0)
      {
        v225 = __CocoaSet.count.getter();
      }

      else
      {
        v225 = *(v224 + 16);
      }

      v214 = v251;
      v216 = v250;

      v293(v258, v204);
      *(v209 + 24) = v225;
      _os_log_impl(&_mh_execute_header, v206, v208, "reminders %ld updated %ld inserted %ld", v209, 0x20u);

      v195 = v257;
      v215 = v204;
    }

    else
    {
      v213 = *(v200 + 8);
      v290 = (v200 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v213(v207, v204);
      v293 = v213;
      v213(v202, v204);

      swift_bridgeObjectRelease_n();
      v214 = v251;
      v215 = v204;
      v216 = v250;
    }

    v226 = v263;
    (*(v195 + 16))(v248, v263, v214);
    v227 = v279;
    v291(v216, v279, v215);
    sub_10012DEA4(&qword_100938A80, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel);
    sub_10012DEA4(&qword_100938A88, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v195 + 8))(v226, v214);
    sub_1000050A4(v261, &qword_100938A68, &unk_10079DDF0);
    (*(v260 + 8))(v259, v262);
    v293(v227, v215);
    sub_1000050A4(v277, &qword_100938A70, &qword_1007ACC60);
  }
}

uint64_t sub_10012DC24(uint64_t a1)
{
  result = sub_10012DEA4(&qword_100938A60, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10012DC7C()
{
  v0 = REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.smartList.getter();
  v1 = [v0 objectID];

  if (qword_100935D60 != -1)
  {
    swift_once();
  }

  type metadata accessor for REMCDSmartListSection();
  v2 = sub_10024C42C();
  sub_10024C888();
  v3 = sub_10024B964(v1, 1u);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];

  sub_10003450C(v2);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setPropertiesToFetch:isa];

  v7 = Array._bridgeToObjectiveC()().super.isa;
  [v4 setRelationshipKeyPathsForPrefetching:v7];

  sub_10012DF40();
  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v4 setSortDescriptors:v8];

  v9 = NSManagedObjectContext.fetch<A>(_:)();

  return v9;
}

uint64_t sub_10012DEA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10012DEEC()
{
  result = qword_100938A90;
  if (!qword_100938A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938A90);
  }

  return result;
}

unint64_t sub_10012DF40()
{
  result = qword_10093C980;
  if (!qword_10093C980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093C980);
  }

  return result;
}

uint64_t sub_10012DF8C@<X0>(unint64_t *a1@<X8>)
{
  v3 = v2;
  v76 = a1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v69 - v6;
  v82 = type metadata accessor for Date();
  v8 = *(v82 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v82);
  v85 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for UUID();
  v11 = *(v83 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v83);
  v72 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - v16;
  __chkstk_darwin(v15);
  v84 = &v69 - v18;
  v75 = type metadata accessor for REMJSONType();
  v74 = *(v75 - 8);
  v19 = *(v74 + 64);
  __chkstk_darwin(v75);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v1;
  v22 = *(v1 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects);
  if (v22 >> 62)
  {
    v67 = *(v1 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects);
    v68 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v67;
    v23 = v68;
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v21;
  if (v23)
  {
    v24 = v22;
    v86 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v23 < 0)
    {
      __break(1u);
      return result;
    }

    v69 = v2;
    v70 = v17;
    v26 = 0;
    v27 = v24;
    v79 = v24 & 0xC000000000000001;
    v78 = (v8 + 56);
    v71 = v11;
    v28 = (v11 + 32);
    v29 = (v8 + 32);
    v81 = v24;
    v80 = v23;
    do
    {
      if (v79)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v27 + 8 * v26 + 32);
      }

      v43 = v42;
      v44 = [v42 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = [v43 dueDateDelta];
      v46 = [v43 creationDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = [v43 acknowledgedDate];
      if (v47)
      {
        v30 = v47;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = v7;
      v33 = v7;
      v34 = v82;
      (*v78)(v32, v31, 1, v82);
      ++v26;
      v35 = [v43 minimumSupportedAppVersion];

      v36 = type metadata accessor for RDDueDateDeltaAlert();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      v39 = swift_allocObject();
      (*v28)(v39 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_identifier, v84, v83);
      *(v39 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta) = v45;
      v40 = v34;
      v7 = v33;
      (*v29)(v39 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_creationDate, v85, v40);
      sub_10012F7FC(v33, v39 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate);
      *(v39 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion) = v35;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v41 = v86[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 = v81;
    }

    while (v80 != v26);
    v11 = v71;
    v17 = v70;
    v3 = v69;
  }

  type metadata accessor for RDDueDateDeltaAlert();
  sub_10012F744(&qword_100938B00, type metadata accessor for RDDueDateDeltaAlert);
  Array<A>.toJSON()();

  if (!v3)
  {
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v48 = v11;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100792CE0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001007EA710;
    v50 = v73;
    v51 = [*(v73 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_reminderID) uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = UUID.uuidString.getter();
    v54 = v53;
    v55 = *(v48 + 8);
    v56 = v17;
    v57 = v83;
    v55(v56, v83);
    *(inited + 48) = v52;
    *(inited + 56) = v54;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x80000001007EC010;
    v58 = [*(v50 + OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_accountID) uuid];
    v59 = v72;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = UUID.uuidString.getter();
    v62 = v61;
    v55(v59, v57);
    *(inited + 96) = v60;
    *(inited + 104) = v62;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000001007EC030;
    v63 = v77;
    REMJSONType.associatedValueAsAny.getter();
    *(inited + 176) = 0xD000000000000017;
    *(inited + 184) = 0x80000001007E8C60;
    v64 = kREMSupportedVersionFor2023;
    *(inited + 216) = &type metadata for Int;
    *(inited + 192) = v64;
    v65 = sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    v66 = v74;
    (*(v74 + 8))(v63, v75);
    *v76 = v65;
    return (*(v66 + 104))();
  }

  return result;
}

id RDStoreControllerMigrator_UpdateAlternativeDueDatesOfCalDavReminders.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012E8B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10012EDB8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10012E8E4(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_10012F86C();
    swift_allocError();
    swift_willThrow();
    return v1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;
    v5 = [v3 reminderID];
    v6 = [v4 accountID];
    v7 = type metadata accessor for RDDueDateDeltaAlerts();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_reminderID] = v5;
    *&v8[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_accountID] = v6;
    *&v8[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects] = v1;
    v11.receiver = v8;
    v11.super_class = v7;
    v9 = v5;
    v10 = v6;

    v1 = objc_msgSendSuper2(&v11, "init");

    return v1;
  }

  __break(1u);
  return result;
}

id sub_10012EA54(void *a1, void *a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v40 = &v32 - v12;
  *&v4[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_reminderID] = a1;
  *&v4[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_accountID] = a2;
  if (!(a3 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    v30 = a1;
    v31 = a2;

    v29 = _swiftEmptyArrayStorage;
LABEL_14:
    *&v4[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects] = v29;
    v43.receiver = v4;
    v43.super_class = ObjectType;
    return objc_msgSendSuper2(&v43, "init");
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v44 = _swiftEmptyArrayStorage;
  v39 = a1;
  v38 = a2;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v33 = ObjectType;
    v34 = v4;
    v15 = 0;
    v16 = a3;
    v35 = a3 & 0xC000000000000001;
    v36 = v13;
    v37 = a3;
    do
    {
      if (v35)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v16 + 8 * v15 + 32);
      }

      v42 = *(v19 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta);
      v20 = v40;
      sub_10012F78C(v19 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate, v40);
      v41 = *(v19 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion);
      v21 = v39;
      v22 = v38;
      v23.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v25 = type metadata accessor for Date();
      v26 = *(v25 - 8);
      isa = 0;
      if ((*(v26 + 48))(v20, 1, v25) != 1)
      {
        v28 = v40;
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v26 + 8))(v28, v25);
      }

      ++v15;
      v17 = objc_allocWithZone(REMDueDateDeltaAlert);
      [v17 initWithIdentifier:v23.super.isa reminderID:v21 accountID:v22 dueDateDelta:v42 creationDate:v24.super.isa acknowledgedDate:isa minimumSupportedAppVersion:v41];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = v44[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 = v37;
    }

    while (v36 != v15);

    v29 = v44;
    ObjectType = v33;
    v4 = v34;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012EDB8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  __chkstk_darwin(v2);
  v62 = &v58 - v4;
  v5 = sub_1000F5104(&qword_100938AE8, &unk_100795480);
  v66 = *(v5 - 8);
  v67 = v5;
  v6 = *(v66 + 64);
  __chkstk_darwin(v5);
  v65 = (&v58 - v7);
  v71 = sub_1000F5104(&qword_100938AF0, &qword_1007B6620);
  v8 = *(v71 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v71);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v69 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v58 - v19;
  v21 = type metadata accessor for REMJSONType();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v25, a1, v21);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == enum case for REMJSONType.jsonObject(_:))
  {
    v60 = v15;
    (*(v22 + 96))(v25, v21);
    v27 = *v25;
    v28 = enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:);
    v15 = v71;
    v59 = v8[13];
    v59(v13, enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:), v71);
    v61 = v27;
    v29 = v70;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    v30 = v8[1];
    v30(v13, v15);
    if (v29)
    {
    }

    else
    {
      v70 = v20;
      v33 = v68;
      v59(v68, v28, v71);
      v34 = v69;
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v30(v33, v71);
      v35 = type metadata accessor for RDDueDateDeltaAlert();
      v36 = sub_10012F744(&qword_100938B00, type metadata accessor for RDDueDateDeltaAlert);
      v38 = v65;
      v37 = v66;
      *v65 = v35;
      v38[1] = v36;
      v39 = v67;
      (*(v37 + 104))(v38, enum case for Dictionary<>.DeserializableValueType.jsonArray<A, B><A1>(_:), v67);
      sub_1000F5104(&qword_100938B08, &unk_100795490);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      (*(v37 + 8))(v38, v39);
      v40 = v72;
      v41 = v62;
      v42 = v63;
      v43 = v64;
      (*(v63 + 104))(v62, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v64);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v44 = v70;
      (*(v42 + 8))(v41, v43);

      v46 = v72;
      if (rem_isUnsupportedVersionByRuntime())
      {

        v47 = type metadata accessor for REMJSONDeserializationError();
        sub_10012F744(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError);
        swift_allocError();
        *v48 = v46;
        (*(*(v47 - 8) + 104))(v48, enum case for REMJSONDeserializationError.notSupported(_:), v47);
        swift_willThrow();
        v15 = v60 + 1;
        v49 = v60[1];
        v49(v34, v14);
        v49(v44, v14);
      }

      else
      {
        v50 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v52 = [v50 objectIDWithUUID:isa];

        v53 = objc_opt_self();
        v54 = UUID._bridgeToObjectiveC()().super.isa;
        v55 = [v53 objectIDWithUUID:v54];

        v56 = objc_allocWithZone(type metadata accessor for RDDueDateDeltaAlerts());
        v15 = sub_10012EA54(v52, v55, v40);

        v57 = v60[1];
        v57(v34, v14);
        v57(v44, v14);
      }
    }

    return v15;
  }

  if (v26 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v22 + 8))(v25, v21);
    v31 = type metadata accessor for REMJSONDeserializationError();
    sub_10012F744(&qword_100938AF8, &type metadata accessor for REMJSONDeserializationError);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for REMJSONDeserializationError.invalidData(_:), v31);
    swift_willThrow();
    return v15;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10012F744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012F78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012F7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10012F86C()
{
  result = qword_100938B10;
  if (!qword_100938B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938B10);
  }

  return result;
}

unint64_t sub_10012F8D4()
{
  result = qword_100938B18;
  if (!qword_100938B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938B18);
  }

  return result;
}

uint64_t sub_10012F928()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100938B20);
  v1 = sub_100006654(v0, qword_100938B20);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012F9F0(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, double a4)
{
  v5 = v4;
  v76 = a2;
  v77 = a3;
  v74 = a1;
  v7 = *v4;
  v8 = type metadata accessor for UUID();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  __chkstk_darwin(v8);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Date();
  v11 = *(v78 - 8);
  v12 = v11[8];
  __chkstk_darwin(v78);
  v73 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v67 = v17;
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  if (qword_100935A98 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100006654(v21, qword_100938B20);

  v71 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v75 = v7;
  v72 = v16;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v66 = v11;
    v28 = v27;
    v29 = swift_slowAlloc();
    v79[0] = v29;
    *v26 = 136446466;
    v79[2] = v7;
    swift_getMetatypeMetadata();
    v30 = String.init<A>(describing:)();
    v32 = sub_10000668C(v30, v31, v79);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2114;
    v33 = v5[2];
    *(v26 + 14) = v33;
    *v28 = v33;
    v34 = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: Start execution {templateObjectID: %{public}@}", v26, 0x16u);
    sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
    v11 = v66;

    sub_10000607C(v29);
  }

  Date.init()();
  v35 = v5[2];
  v36 = *(v5 + 64);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = v74;
  v39 = sub_10034AE0C(v35, v74, &off_1008DD518, 0);
  sub_100034610(&unk_1008DD538);
  v40 = [v39 publicLinkURLUUID];
  if (v40)
  {
    v71 = v37;
    v41 = v40;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = sub_10013FBFC();
    v42 = v5[7];
    v72 = v5[6];
    v63 = v42;
    v66 = sub_10000F61C(v5 + 3, v72);
    v65 = type metadata accessor for RDPublicTemplate();
    v43 = v11[2];
    v61 = v36;
    v44 = v78;
    v43(v73, v20, v78);
    v45 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v46 = &v67[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = v39;
    v48 = swift_allocObject();
    v67 = v20;
    v49 = v48;
    v50 = v62;
    *(v48 + 16) = v35;
    *(v48 + 24) = v50;
    (v11[4])(v48 + v45, v73, v44);
    *(v49 + v46) = v38;
    *(v49 + v47) = v71;
    v51 = v49 + v60;
    v52 = v77;
    *v51 = v76;
    *(v51 + 8) = v52;
    *(v51 + 16) = v61;
    *(v49 + ((v47 + 39) & 0xFFFFFFFFFFFFFFF8)) = v75;
    v53 = v63;
    v54 = *(v63 + 16);
    v55 = v35;
    v56 = v50;
    v57 = v38;

    v54(v56, v65, sub_100138C5C, v49, v65, &off_1008E60A0, v72, v53, a4);

    (*(v68 + 8))(v70, v69);
    (v11[1])(v67, v78);
  }

  else
  {
    sub_1001302D8(v35, 0, v37, v35, v20, v76, v77, v75);

    (v11[1])(v20, v78);
  }
}

void sub_1001302D8(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v50 = a2;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  swift_beginAccess();
  if (*(a3 + 16))
  {
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100938B20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52 = v26;
      *v25 = 136446210;
      v51[1] = v49;
      swift_getMetatypeMetadata();
      v27 = String.init<A>(describing:)();
      v29 = sub_10000668C(v27, v28, &v52);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s: Attempted to call completion more than once", v25, 0xCu);
      sub_10000607C(v26);
    }
  }

  else
  {
    v46 = a1;
    v47 = a7;
    v48 = a6;
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100938B20);
    (*(v15 + 16))(v21, a5, v14);
    v31 = a4;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51[0] = v45;
      *v34 = 136446722;
      v52 = v49;
      swift_getMetatypeMetadata();
      v35 = String.init<A>(describing:)();
      v37 = sub_10000668C(v35, v36, v51);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2114;
      *(v34 + 14) = v31;
      v38 = v44;
      *v44 = v31;
      *(v34 + 22) = 2048;
      v39 = v31;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v41 = v40;
      v42 = *(v15 + 8);
      v42(v18, v14);
      v42(v21, v14);
      *(v34 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s: Finished execution {templateObjectID: %{public}@, elapsedSeconds: %f}", v34, 0x20u);
      sub_1000050A4(v38, &unk_100938E70, &unk_100797230);

      sub_10000607C(v45);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    v48(v46, v50 & 1);
  }
}

void sub_100130798(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkURLUUID:isa];
}

void sub_1001308D4(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void), uint64_t a9, unsigned __int8 a10, void **a11)
{
  v101 = a8;
  v102 = a7;
  v99 = a6;
  v103 = a11;
  v104 = a5;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = &v91 - v20;
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  if (a2)
  {
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100938B20);
    (*(v16 + 16))(v18, v104, v15);
    v25 = a3;
    v26 = a4;
    sub_100138D40(a1, 1);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    sub_100138D4C(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v97 = v28;
      v30 = v29;
      v31 = swift_slowAlloc();
      v98 = a1;
      v32 = v31;
      v95 = v31;
      v99 = swift_slowAlloc();
      v111[0] = v99;
      *v30 = 136447234;
      aBlock = v103;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v96 = v27;
      v35 = sub_10000668C(v33, v34, v111);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2114;
      *(v30 + 14) = v25;
      *v32 = v25;
      a1 = v98;
      *(v30 + 22) = 2082;
      v36 = v25;
      v37 = [v26 recordName];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_10000668C(v38, v40, v111);

      *(v30 + 24) = v41;
      *(v30 + 32) = 2082;
      swift_getErrorValue();
      v42 = Error.rem_errorDescription.getter();
      v44 = sub_10000668C(v42, v43, v111);

      *(v30 + 34) = v44;
      *(v30 + 42) = 2048;
      v45 = v100;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v47 = v46;
      v48 = *(v16 + 8);
      v48(v45, v15);
      v48(v18, v15);
      v49 = v103;
      *(v30 + 44) = v47;
      v50 = v96;
      _os_log_impl(&_mh_execute_header, v96, v97, "%{public}s: Failed to delete content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, error: %{public}s, elapsedSeconds: %f}", v30, 0x34u);
      sub_1000050A4(v95, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v18, v15);
      v49 = v103;
    }

    sub_1001302D8(a1, 1, v102, v25, v104, v101, a9, v49);
  }

  else
  {
    v98 = a9;
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v97 = a10;
    v51 = type metadata accessor for Logger();
    sub_100006654(v51, qword_100938B20);
    v96 = *(v16 + 16);
    (v96)(v23, v104, v15);
    v52 = a3;
    v53 = a4;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v94 = v15;
      v58 = v57;
      v91 = v57;
      v95 = swift_slowAlloc();
      v111[0] = v95;
      *v56 = 136446978;
      aBlock = v103;
      swift_getMetatypeMetadata();
      v59 = String.init<A>(describing:)();
      v93 = v55;
      v61 = sub_10000668C(v59, v60, v111);
      v92 = v54;
      v62 = v52;
      v63 = v61;

      *(v56 + 4) = v63;
      *(v56 + 12) = 2114;
      *(v56 + 14) = v62;
      *v58 = v62;
      v15 = v94;
      *(v56 + 22) = 2082;
      v64 = v62;
      v65 = [v53 recordName];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69 = sub_10000668C(v66, v68, v111);

      *(v56 + 24) = v69;
      *(v56 + 32) = 2048;
      v70 = v100;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v72 = v71;
      v73 = *(v16 + 8);
      v73(v70, v15);
      v73(v23, v15);
      v52 = v62;
      *(v56 + 34) = v72;
      v74 = v92;
      _os_log_impl(&_mh_execute_header, v92, v93, "%{public}s: Deleted content of template's public link {templateObjectID: %{public}@, recordName: %{public}s, elapsedSeconds: %f}", v56, 0x2Au);
      sub_1000050A4(v91, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v23, v15);
      v70 = v100;
    }

    (v96)(v70, v104, v15);
    v75 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v76 = (v17 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    v79 = v99;
    *(v78 + 16) = v52;
    *(v78 + 24) = v79;
    (*(v16 + 32))(v78 + v75, v70, v15);
    v80 = v101;
    *(v78 + v76) = v102;
    v81 = (v78 + v77);
    v82 = v52;
    v83 = v98;
    *v81 = v80;
    v81[1] = v83;
    *(v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8)) = v103;
    if (v97)
    {
      v84 = swift_allocObject();
      *(v84 + 16) = sub_100138D58;
      *(v84 + 24) = v78;
      v109 = sub_1000529DC;
      v110 = v84;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_10000F160;
      v108 = &unk_1008E5ED0;
      v85 = _Block_copy(&aBlock);
      v86 = v82;
      v87 = v79;

      [v87 performBlockAndWait:v85];

      _Block_release(v85);
      LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

      if ((v85 & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    v109 = sub_100138D58;
    v110 = v78;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_100019200;
    v108 = &unk_1008E5E80;
    v88 = _Block_copy(&aBlock);
    v89 = v82;
    v90 = v79;

    [v90 performBlock:v88];

    _Block_release(v88);
  }
}

void sub_1001312B4(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void *a7)
{
  v78 = a4;
  v79 = a7;
  v77 = a6;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v69 - v17;
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  sub_100138E04(a1, a2);
  v80 = 0;
  if ([a2 save:&v80])
  {
    v21 = qword_100935A98;
    v22 = v80;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100938B20);
    v24 = v12;
    v25 = *(v12 + 16);
    v75 = a3;
    v26 = a3;
    v27 = v11;
    v25(v20, v26, v11);
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v72 = v30;
      v32 = v31;
      v33 = swift_slowAlloc();
      v74 = a5;
      v34 = v79;
      v35 = v33;
      v73 = swift_slowAlloc();
      v80 = v34;
      v81 = v73;
      *v32 = 136446722;
      swift_getMetatypeMetadata();
      v36 = String.init<A>(describing:)();
      v38 = v24;
      v39 = sub_10000668C(v36, v37, &v81);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2114;
      *(v32 + 14) = v28;
      *v35 = v28;
      *(v32 + 22) = 2048;
      v40 = v28;
      v41 = v76;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v41, v27);
      v44(v20, v27);
      *(v32 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v29, v72, "%{public}s: Reset template's public link to nil {templateObjectID: %{public}@, elapsedSeconds: %f}", v32, 0x20u);
      sub_1000050A4(v35, &unk_100938E70, &unk_100797230);
      a5 = v74;

      sub_10000607C(v73);
    }

    else
    {

      (*(v12 + 8))(v20, v27);
    }

    sub_1001302D8(v28, 0, v78, v28, v75, a5, v77, v79);
  }

  else
  {
    v45 = v80;
    v46 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100935A98 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_100938B20);
    v48 = v12;
    v49 = v11;
    (*(v12 + 16))(v15, a3, v11);
    v50 = a1;
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v74 = a5;
      v54 = v53;
      v55 = swift_slowAlloc();
      v75 = a3;
      v56 = v55;
      v71 = v55;
      v73 = swift_slowAlloc();
      v81 = v73;
      *v54 = 136446978;
      v80 = v79;
      swift_getMetatypeMetadata();
      v57 = String.init<A>(describing:)();
      v72 = v52;
      v59 = sub_10000668C(v57, v58, &v81);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2114;
      *(v54 + 14) = v50;
      *v56 = v50;
      *(v54 + 22) = 2082;
      swift_getErrorValue();
      v70 = v51;
      v60 = v50;
      v61 = Error.rem_errorDescription.getter();
      v63 = sub_10000668C(v61, v62, &v81);

      *(v54 + 24) = v63;
      a3 = v75;
      v64 = v76;
      *(v54 + 32) = 2048;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v66 = v65;
      v67 = *(v48 + 8);
      v67(v64, v49);
      v67(v15, v49);
      *(v54 + 34) = v66;
      v68 = v70;
      _os_log_impl(&_mh_execute_header, v70, v72, "%{public}s: Failed to reset template's public link to nil {templateObjectID: %{public}@, error: %{public}s, elapsedSeconds: %f}", v54, 0x2Au);
      sub_1000050A4(v71, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      a5 = v74;
    }

    else
    {

      (*(v12 + 8))(v15, v49);
    }

    swift_errorRetain();
    sub_1001302D8(v46, 1, v78, v50, a3, a5, v77, v79);
  }
}

uint64_t sub_100131990()
{
  sub_10000607C((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_100131A28(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkCreationDate:isa];
}

void sub_100131B98(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkExpirationDate:isa];
}