uint64_t *ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  *(a2 + 8) = *a1;
  v5 = *(a1 + 4);
  if (v5 < 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 12) = v6;
  *(a2 + 44) = v4 | 7;
  v7 = *(a2 + 16);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, (a1 + 8));
  v8 = *(a1 + 40) - *(a1 + 32);
  result = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 24), v8);
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = v8 & 0x7FFFFFFF;
    do
    {
      v12 = *(*(a1 + 32) + v10);
      v13 = *(a2 + 32);
      if (v13 == *(a2 + 36))
      {
        result = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 24), v13 + 1);
        v13 = *(a2 + 32);
      }

      v14 = *(a2 + 24);
      *(a2 + 32) = v13 + 1;
      *(v14 + 4 * v13) = v12;
      ++v10;
    }

    while (v11 != v10);
  }

  return result;
}

{
  *(a2 + 24) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  result = ProtobufUtil::toProtobuf(a1, v4);
  v6 = *(a1 + 56);
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 24) |= 2u;
  *(a2 + 16) = v7;
  return result;
}

{
  v4 = *(a2 + 48);
  v5 = *(a1 + 4);
  *(a2 + 8) = *a1;
  *(a2 + 12) = v5;
  v6 = *(a1 + 7);
  *(a2 + 16) = *(a1 + 6);
  *(a2 + 20) = v6;
  v7 = *(a1 + 8);
  *(a2 + 48) = v4 | 0x1F;
  *(a2 + 40) = v7;
  result = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 24), 15);
  v9 = 0;
  v10 = a1 + 9;
  do
  {
    v11 = *(v10 + v9);
    v12 = *(a2 + 32);
    if (v12 == *(a2 + 36))
    {
      result = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 24), v12 + 1);
      v12 = *(a2 + 32);
    }

    v13 = *(a2 + 24);
    *(a2 + 32) = v12 + 1;
    *(v13 + 4 * v12) = v11;
    ++v9;
  }

  while (v9 != 15);
  return result;
}

_WORD *ProtobufUtil::toProtobuf(_WORD *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2 | 3;
  return result;
}

uint64_t *ProtobufUtil::toProtobuf(ProtobufUtil *this, const gnss::Emergency::Supl::Init *a2, proto::gnss::Emergency::Init *a3)
{
  v5 = ProtobufUtil::toProtobuf(*this);
  v6 = *(a2 + 12);
  *(a2 + 10) = v5;
  *(a2 + 12) = v6 | 3;
  v7 = *(a2 + 1);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 32);
  *(v7 + 8) = *(this + 4);
  v9 = *(this + 6);
  *(v7 + 12) = *(this + 5);
  *(v7 + 16) = v9;
  v10 = *(this + 4);
  *(v7 + 32) = v8 | 0x1F;
  v11 = *(this + 10);
  *(v7 + 20) = v10;
  *(v7 + 24) = v11;
  *(a2 + 12) |= 4u;
  v12 = *(a2 + 2);
  if (!v12)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(this + 16, v12);
  *(a2 + 12) |= 8u;
  v13 = *(a2 + 3);
  if (!v13)
  {
    operator new();
  }

  v14 = *(v13 + 16) | 3;
  *(v13 + 8) = *(this + 36);
  *(v13 + 16) = v14;
  *(a2 + 12) |= 0x10u;
  v15 = *(a2 + 4);
  if (!v15)
  {
    operator new();
  }

  return ProtobufUtil::toProtobuf(this + 80, v15);
}

unsigned __int16 *ProtobufUtil::toProtobuf(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(a2 + 20);
  *(a2 + 8) = *result;
  v3 = *(result + 2);
  *(a2 + 20) = v2 | 3;
  *(a2 + 12) = v3;
  return result;
}

double ProtobufUtil::toProtobuf(int *a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  v6 = *a1;
  v5 = a1[1];
  *(a2 + 8) = v6;
  *(a2 + 12) = ProtobufUtil::toProtobuf(v5);
  *(a2 + 16) = ProtobufUtil::toProtobuf(a1[2]);
  *(a2 + 20) = ProtobufUtil::toProtobuf(a1[3]);
  *(a2 + 24) = *(a1 + 1);
  *(a2 + 40) = *(a1 + 2);
  *(a2 + 56) = *(a1 + 3);
  *(a2 + 72) = *(a1 + 8);
  *(a2 + 96) = *(a1 + 72);
  *(a2 + 97) = *(a1 + 73);
  *(a2 + 104) = v4 | 0x7FFF;
  v7 = *(a2 + 80);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 60);
  *(v7 + 8) = *(a1 + 5);
  *(v7 + 24) = *(a1 + 6);
  *(v7 + 40) = *(a1 + 14);
  v9 = *(a1 + 120);
  *(v7 + 60) = v8 | 0x7F;
  v10 = *(a1 + 121);
  *(v7 + 48) = v9;
  *(v7 + 52) = v10;
  *(a2 + 104) |= 0x8000u;
  v11 = *(a2 + 88);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 28);
  v13 = *(a1 + 66);
  *(v11 + 8) = a1[32];
  *(v11 + 12) = v13;
  result = *(a1 + 17);
  *(v11 + 28) = v12 | 7;
  *(v11 + 16) = result;
  return result;
}

double ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 60);
  *(a2 + 8) = *a1;
  *(a2 + 24) = *(a1 + 16);
  result = *(a1 + 32);
  *(a2 + 40) = result;
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  *(a2 + 60) = v2 | 0x7F;
  *(a2 + 48) = v4;
  *(a2 + 52) = v5;
  return result;
}

{
  v2 = *(a2 + 28);
  v3 = *(a1 + 4);
  *(a2 + 8) = *a1;
  *(a2 + 12) = v3;
  result = *(a1 + 8);
  *(a2 + 28) = v2 | 7;
  *(a2 + 16) = result;
  return result;
}

int *ProtobufUtil::toProtobuf(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = a2[5];
  a2[5] = v3 | 1;
  v4 = result[1];
  a2[5] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  return result;
}

{
  v2 = *result;
  v3 = *(result + 4);
  a2[5] |= 3u;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

{
  v2 = *result;
  v3 = *(result + 4);
  a2[5] |= 3u;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

{
  v2 = *result;
  v3 = a2[5];
  a2[5] = v3 | 1;
  v4 = result[1];
  a2[5] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  return result;
}

{
  v2 = *result;
  v3 = a2[5];
  a2[5] = v3 | 1;
  v4 = result[1];
  a2[5] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  return result;
}

{
  v2 = *result;
  v3 = *(result + 2);
  a2[5] |= 3u;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

_DWORD *ProtobufUtil::toProtobuf(int *a1, uint64_t a2)
{
  *(a2 + 36) |= 1u;
  result = *(a2 + 8);
  if (!result)
  {
    operator new();
  }

  v4 = *a1;
  v5 = result[5];
  result[5] = v5 | 1;
  v6 = a1[1];
  result[5] = v5 | 3;
  result[2] = v4;
  result[3] = v6;
  v7 = *(a2 + 36);
  v8 = *(a1 + 5);
  *(a2 + 16) = *(a1 + 4);
  *(a2 + 20) = v8;
  v9 = *(a1 + 6);
  v10 = a1[4];
  v11 = v10 + 1;
  v12 = v10 + 2;
  if (v11 >= 4)
  {
    v12 = 0;
  }

  *(a2 + 36) = v7 | 0x1E;
  *(a2 + 24) = v9;
  *(a2 + 28) = v12;
  return result;
}

{
  *(a2 + 28) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1, v4);
  *(a2 + 28) |= 2u;
  result = *(a2 + 16);
  if (!result)
  {
    operator new();
  }

  v6 = a1[5];
  v7 = result[5];
  result[5] = v7 | 1;
  v8 = a1[6];
  result[5] = v7 | 3;
  result[2] = v6;
  result[3] = v8;
  return result;
}

{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *(a1 + 2);
  *(a2 + 32) = v4 | 3;
  *(a2 + 8) = v3;
  *(a2 + 12) = v5;
  *(a2 + 24) = a1[2];
  *(a2 + 32) = v4 | 0xF;
  result = *(a2 + 16);
  if (!result)
  {
    operator new();
  }

  v7 = *(a1 + 6);
  v8 = result[6];
  v9 = *(a1 + 7);
  result[6] = v8 | 3;
  result[2] = v7;
  result[3] = v9;
  v10 = a1[4];
  result[6] = v8 | 7;
  result[4] = v10;
  return result;
}

{
  *(a2 + 24) |= 1u;
  result = *(a2 + 8);
  if (!result)
  {
    operator new();
  }

  v4 = *a1;
  v5 = result[5];
  result[5] = v5 | 1;
  v6 = a1[1];
  result[5] = v5 | 3;
  result[2] = v4;
  result[3] = v6;
  v7 = *(a1 + 8);
  *(a2 + 24) |= 2u;
  *(a2 + 16) = v7;
  return result;
}

{
  *(a2 + 24) |= 1u;
  result = *(a2 + 8);
  if (!result)
  {
    operator new();
  }

  v4 = *a1;
  v5 = result[5];
  result[5] = v5 | 1;
  v6 = a1[1];
  result[5] = v5 | 3;
  result[2] = v4;
  result[3] = v6;
  v7 = *(a1 + 4);
  *(a2 + 24) |= 2u;
  *(a2 + 16) = v7;
  return result;
}

{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5 | 3;
  v6 = *(a2 + 8);
  if (!v6)
  {
    operator new();
  }

  return ProtobufUtil::toProtobuf((a1 + 1), v6);
}

{
  *(a2 + 28) |= 1u;
  result = *(a2 + 8);
  if (!result)
  {
    operator new();
  }

  v4 = *a1;
  v5 = result[5];
  result[5] = v5 | 1;
  v6 = a1[1];
  result[5] = v5 | 3;
  result[2] = v4;
  result[3] = v6;
  v7 = *(a1 + 4);
  v8 = *(a2 + 28);
  *(a2 + 28) = v8 | 2;
  v9 = a1[3];
  *(a2 + 28) = v8 | 6;
  *(a2 + 16) = v7;
  *(a2 + 20) = v9;
  return result;
}

{
  v3 = *a1;
  v4 = *(a2 + 64);
  *(a2 + 64) = v4 | 1;
  v5 = a1[1];
  *(a2 + 8) = v3;
  *(a2 + 12) = v5;
  v6 = *(a1 + 9);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 20) = v6;
  v7 = a1[3];
  v8 = (v7 + 1) >= 3;
  v9 = v7 + 2;
  if (v8)
  {
    v9 = 0;
  }

  *(a2 + 24) = *(a1 + 10);
  *(a2 + 28) = v9;
  *(a2 + 56) = *(a1 + 16);
  *(a2 + 64) = v4 | 0xFF;
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  v11 = v10[6];
  v12 = *(a1 + 10);
  v10[2] = *(a1 + 9);
  v10[3] = v12;
  v13 = *(a1 + 22);
  v10[6] = v11 | 7;
  v10[4] = v13;
  v14 = *(a2 + 64);
  *(a2 + 57) = *(a1 + 24);
  *(a2 + 64) = v14 | 0x300;
  v15 = *(a2 + 40);
  if (!v15)
  {
    operator new();
  }

  v16 = a1[7];
  v17 = *(a1 + 16);
  v15[5] |= 3u;
  v15[2] = v16;
  v15[3] = v17;
  v18 = *(a2 + 64);
  *(a2 + 58) = *(a1 + 36);
  *(a2 + 64) = v18 | 0xC00;
  result = *(a2 + 48);
  if (!result)
  {
    operator new();
  }

  v20 = *(a1 + 19);
  v21 = *(a1 + 40);
  result[5] |= 3u;
  result[2] = v20;
  result[3] = v21;
  return result;
}

unsigned __int16 *ProtobufUtil::toProtobuf(unsigned __int16 *result, _DWORD *a2)
{
  v2 = *result;
  v3 = a2[6];
  v4 = result[1];
  a2[6] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  v5 = *(result + 1);
  a2[6] = v3 | 7;
  a2[4] = v5;
  return result;
}

{
  v2 = *result;
  v3 = result[1];
  a2[5] |= 3u;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

{
  v2 = a2[7];
  v3 = result[1];
  a2[2] = *result;
  a2[3] = v3;
  v4 = *(result + 4);
  v5 = *(result + 5);
  a2[7] = v2 | 0xF;
  a2[4] = v4;
  a2[5] = v5;
  return result;
}

{
  v2 = a2[6];
  v3 = result[1];
  a2[2] = *result;
  a2[3] = v3;
  v4 = *(result + 4);
  a2[6] = v2 | 7;
  a2[4] = v4;
  return result;
}

{
  v2 = *result;
  v3 = a2[8];
  a2[8] = v3 | 3;
  v4 = *(result + 2);
  a2[2] = v2;
  a2[3] = v4;
  v5 = *(result + 1);
  a2[8] = v3 | 7;
  v6 = *(result + 2);
  a2[4] = v5;
  a2[5] = v6;
  v7 = *(result + 12);
  a2[8] = v3 | 0x1F;
  a2[6] = v7;
  return result;
}

{
  v2 = *result;
  v3 = a2[6];
  a2[6] = v3 | 1;
  v4 = *(result + 1);
  a2[2] = v2;
  a2[3] = v4;
  v5 = result[4];
  a2[6] = v3 | 7;
  a2[4] = v5;
  return result;
}

{
  v2 = a2[6];
  v3 = result[1];
  a2[2] = *result;
  a2[3] = v3;
  v4 = *(result + 4);
  a2[6] = v2 | 7;
  a2[4] = v4;
  return result;
}

{
  v2 = *result;
  v3 = *(result + 2);
  a2[5] |= 3u;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(int *a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v5 + 1;
  v7 = v5 + 2;
  if (v6 >= 5)
  {
    v7 = 0;
  }

  v8 = a2[6];
  a2[2] = v7;
  result = ProtobufUtil::toProtobuf(v4);
  a2[6] = v8 | 3;
  v10 = a1[2];
  a2[6] = v8 | 7;
  a2[3] = result;
  a2[4] = v10;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(unsigned __int16 *a1, _DWORD *a2)
{
  v4 = *(a1 + 1);
  v5 = v4 + 1;
  v6 = a2[20];
  v7 = v4 + 2;
  if (v5 >= 4)
  {
    v7 = 0;
  }

  a2[2] = *a1;
  a2[3] = v7;
  v8 = a1[4];
  a2[20] = v6 | 0xF;
  v9 = *(a1 + 10);
  a2[4] = v8;
  a2[5] = v9;
  v10 = *(a1 + 16);
  a2[6] = *(a1 + 3);
  a2[7] = v10;
  v11 = *(a1 + 17);
  a2[20] = v6 | 0xFF;
  v12 = *(a1 + 18);
  a2[8] = v11;
  a2[9] = v12;
  v13 = *(a1 + 5);
  a2[20] = v6 | 0x1FF;
  v14 = *(a1 + 6);
  a2[10] = v13;
  a2[11] = v14;
  v15 = *(a1 + 30);
  a2[12] = a1[14];
  a2[13] = v15;
  v16 = *(a1 + 32);
  a2[14] = *(a1 + 31);
  a2[15] = v16;
  result = ProtobufUtil::toProtobuf(*(a1 + 9));
  a2[20] = v6 | 0x7FFF;
  v18 = *(a1 + 10);
  a2[20] = v6 | 0xFFFF;
  a2[16] = result;
  a2[17] = v18;
  return result;
}

_DWORD *ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  *(a2 + 36) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1, v4);
  *(a2 + 36) |= 2u;
  v5 = *(a2 + 16);
  if (!v5)
  {
    operator new();
  }

  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v5[5] |= 3u;
  v5[2] = v6;
  v5[3] = v7;
  *(a2 + 36) |= 4u;
  result = *(a2 + 24);
  if (!result)
  {
    operator new();
  }

  v9 = *(a1 + 36);
  v10 = *(a1 + 40);
  result[5] |= 3u;
  result[2] = v9;
  result[3] = v10;
  return result;
}

{
  v3 = *(a2 + 40);
  v4 = *(a1 + 4);
  *(a2 + 8) = *a1;
  *(a2 + 12) = v4;
  *(a2 + 40) = v3 | 0xF;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = (v5 + 1) >= 3;
  v8 = v5 + 2;
  if (v7)
  {
    v8 = 0;
  }

  *(a2 + 16) = *(a1 + 6);
  *(a2 + 20) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v3 | 0x3F;
  result = *(a2 + 24);
  if (!result)
  {
    operator new();
  }

  v10 = result[6];
  v11 = *(a1 + 20);
  result[2] = *(a1 + 16);
  result[3] = v11;
  v12 = *(a1 + 22);
  result[6] = v10 | 7;
  result[4] = v12;
  return result;
}

{
  v2 = *(a2 + 36);
  *(a2 + 8) = *a1;
  v3 = *(a1 + 10);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 20) = v3;
  *(a2 + 36) = v2 | 0xF;
  v4 = *(a2 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = (a1 + 12);

  return ProtobufUtil::toProtobuf(v5, v4);
}

{
  *(a2 + 36) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1, v4);
  *(a2 + 36) |= 2u;
  v5 = *(a2 + 16);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 32), v5);
  *(a2 + 36) |= 4u;
  v6 = *(a2 + 24);
  if (!v6)
  {
    operator new();
  }

  return ProtobufUtil::toProtobuf((a1 + 56), v6);
}

{
  *(a2 + 72) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1, v4);
  *(a2 + 72) |= 2u;
  v6 = *(a2 + 16);
  if (!v6)
  {
    operator new();
  }

  v7 = ProtobufUtil::toProtobuf((a1 + 12), v6, v5).u64[0];
  *(a2 + 72) |= 4u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  v9 = ProtobufUtil::toProtobuf((a1 + 24), v8, v7).u64[0];
  *(a2 + 72) |= 8u;
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 40), v10, v9);
  *(a2 + 72) |= 0x10u;
  v11 = *(a2 + 40);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a1 + 56);
  v13 = v11[5];
  v11[5] = v13 | 1;
  v14 = *(a1 + 60);
  v11[5] = v13 | 3;
  v11[2] = v12;
  v11[3] = v14;
  *(a2 + 72) |= 0x20u;
  v15 = *(a2 + 48);
  if (!v15)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 64), v15);
  *(a2 + 72) |= 0x40u;
  v17 = *(a2 + 56);
  if (!v17)
  {
    operator new();
  }

  result = ProtobufUtil::toProtobuf((a1 + 76), v17, v16);
  v19 = *(a1 + 200);
  *(a2 + 72) |= 0x80u;
  *(a2 + 64) = v19;
  return result;
}

{
  v4 = *(a2 + 76);
  v5 = *(a1 + 4);
  *(a2 + 8) = *a1;
  *(a2 + 12) = v5;
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  *(a2 + 76) = v4 | 0xF;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  v8 = 16;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), 16);
  v9 = (a1 + 8);
  do
  {
    v10 = *(a2 + 36);
    v11 = *(a2 + 32);
    if (v11 >= v10)
    {
      if (v10 == *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v10 + 1);
        v10 = *(a2 + 36);
      }

      *(a2 + 36) = v10 + 1;
      operator new();
    }

    v12 = *(a2 + 24);
    *(a2 + 32) = v11 + 1;
    ProtobufUtil::toProtobuf(v9, *(v12 + 8 * v11));
    v9 += 12;
    --v8;
  }

  while (v8);
  *(a2 + 76) |= 0x20u;
  v13 = *(a2 + 48);
  if (!v13)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 392), v13);
  v14 = *(a1 + 440);
  v15 = *(a2 + 76);
  *(a2 + 76) = v15 | 0x40;
  v16 = *(a1 + 444);
  *(a2 + 56) = v14;
  *(a2 + 60) = v16;
  *(a2 + 76) = v15 | 0x1C0;
  result = *(a2 + 64);
  if (!result)
  {
    operator new();
  }

  v18 = result[6];
  v19 = *(a1 + 452);
  result[2] = *(a1 + 448);
  result[3] = v19;
  v20 = *(a1 + 454);
  result[6] = v18 | 7;
  result[4] = v20;
  return result;
}

{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 52);
  v6 = *(a1 + 4);
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 52) = v5 | 7;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 8), v7);
  *(a2 + 52) |= 8u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1 + 20, v8);
  *(a2 + 52) |= 0x10u;
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  result = ProtobufUtil::toProtobuf((a1 + 476), v9);
  v11 = *(a1 + 520);
  if (v11 < 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 52);
  *(a2 + 40) = v12;
  v14 = *(a1 + 524);
  *(a2 + 52) = v13 | 0x60;
  *(a2 + 44) = v14;
  return result;
}

_DWORD *ProtobufUtil::toProtobuf(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100145F6C[v2];
  }

  v4 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = (a1 + 1);

  return ProtobufUtil::toProtobuf(v6, v5);
}

{
  v2 = *a1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100145F6C[v2];
  }

  v4 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = (a1 + 2);

  return ProtobufUtil::toProtobuf(v6, v5);
}

{
  v2 = *a1;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100145F6C[v2];
  }

  v4 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  v6 = (a1 + 1);

  return ProtobufUtil::toProtobuf(v6, v5);
}

uint64_t ProtobufUtil::toProtobuf(uint64_t result, _DWORD *a2)
{
  v2 = a2[6];
  v3 = *(result + 4);
  a2[2] = *result;
  a2[3] = v3;
  v4 = *(result + 6);
  a2[6] = v2 | 7;
  a2[4] = v4;
  return result;
}

{
  v2 = a2[9];
  a2[9] = v2 | 1;
  v3 = *(result + 4);
  if (*result < 5u)
  {
    v4 = *result + 1;
  }

  else
  {
    v4 = 0;
  }

  a2[2] = v4;
  a2[3] = v3;
  v5 = *(result + 10);
  a2[4] = *(result + 8);
  a2[5] = v5;
  v6 = *(result + 12);
  v7 = v6 + 1;
  v8 = v6 + 2;
  if (v7 >= 3)
  {
    v8 = 0;
  }

  v9 = *(result + 16);
  a2[9] = v2 | 0x3F;
  a2[6] = v8;
  a2[7] = v9;
  return result;
}

_DWORD *ProtobufUtil::toProtobuf(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  v3 = *(a1 + 1);
  *(a2 + 8) = *a1;
  *(a2 + 12) = v3;
  *(a2 + 28) = v2 | 7;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = (a1 + 4);

  return ProtobufUtil::toProtobuf(v5, v4);
}

_DWORD *ProtobufUtil::toProtobuf(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 60);
  *(a2 + 60) = v4 | 1;
  v5 = *(a1 + 1);
  *(a2 + 8) = v3;
  *(a2 + 12) = v5;
  v6 = a1[4];
  *(a2 + 60) = v4 | 7;
  v7 = *(a1 + 3);
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 60) = v4 | 0x1F;
  result = *(a2 + 24);
  if (!result)
  {
    operator new();
  }

  v9 = a1[8];
  v10 = result[6];
  result[6] = v10 | 3;
  v11 = a1[9];
  result[2] = v9;
  result[3] = v11;
  v12 = *(a1 + 5);
  result[6] = v10 | 7;
  result[4] = v12;
  v13 = *(a1 + 6);
  v14 = *(a2 + 60);
  v15 = a1[14];
  *(a2 + 60) = v14 | 0x60;
  *(a2 + 32) = v13;
  *(a2 + 36) = v15;
  v16 = *(a1 + 36);
  *(a2 + 40) = *(a1 + 8);
  *(a2 + 44) = v16;
  v17 = *(a1 + 37);
  *(a2 + 60) = v14 | 0x3E0;
  v18 = *(a1 + 10);
  *(a2 + 60) = v14 | 0x7E0;
  *(a2 + 48) = v17;
  *(a2 + 52) = v18;
  return result;
}

{
  *(a2 + 28) |= 1u;
  v3 = *(a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = *a1;
  v5 = v3[6];
  v3[6] = v5 | 1;
  v6 = *(a1 + 1);
  v3[2] = v4;
  v3[3] = v6;
  v7 = a1[4];
  v3[6] = v5 | 7;
  v3[4] = v7;
  *(a2 + 28) |= 2u;
  v8 = *(a2 + 16);
  if (!v8)
  {
    operator new();
  }

  return ProtobufUtil::toProtobuf(a1 + 3, v8);
}

uint32x4_t ProtobufUtil::toProtobuf(int *a1, uint32x4_t *a2, uint8x8_t a3)
{
  a2[2].i32[1] |= 1u;
  v4 = a2->i64[1];
  if (!v4)
  {
    operator new();
  }

  v5 = *a1;
  v6 = v4[5];
  v4[5] = v6 | 1;
  v7 = a1[1];
  v4[5] = v6 | 3;
  v4[2] = v5;
  v4[3] = v7;
  a2[2].i32[1] |= 0x1Eu;
  a3.i32[0] = a1[2];
  result = vmovl_u16(*&vmovl_u8(a3));
  a2[1] = result;
  return result;
}

uint32x4_t ProtobufUtil::toProtobuf(int *a1, uint64_t a2, uint8x8_t a3)
{
  *(a2 + 44) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  v5 = *a1;
  v6 = v4[5];
  v4[5] = v6 | 1;
  v7 = a1[1];
  v4[5] = v6 | 3;
  v4[2] = v5;
  v4[3] = v7;
  v8 = *(a2 + 44);
  *(a2 + 16) = *(a1 + 4);
  a3.i32[0] = *(a1 + 10);
  result = vmovl_u16(*&vmovl_u8(a3));
  *(a2 + 20) = result;
  v10 = *(a1 + 14);
  *(a2 + 44) = v8 | 0x7E;
  *(a2 + 36) = v10;
  return result;
}

{
  *(a2 + 40) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  v5 = *a1;
  v6 = v4[5];
  v4[5] = v6 | 1;
  v7 = a1[1];
  v4[5] = v6 | 3;
  v4[2] = v5;
  v4[3] = v7;
  v8 = *(a2 + 40);
  *(a2 + 16) = *(a1 + 4);
  *(a2 + 40) = v8 | 0x3E;
  a3.i32[0] = *(a1 + 10);
  result = vmovl_u16(*&vmovl_u8(a3));
  *(a2 + 20) = result;
  return result;
}

_DWORD *ProtobufUtil::toProtobuf(ProtobufUtil *this, const Polygon *a2, proto::gnss::Emergency::Polygon *a3)
{
  v5 = (this + 8);
  v4 = *this;
  *&a2[2].polyPoints[0].h |= 1u;
  *&a2[2].polyBBox.left = v4;
  v6 = 15;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&a2->polyBBox.right, 15);
  do
  {
    v7 = *&a2[1].polyBBox.bottom;
    v8 = *&a2[1].polyBBox.top;
    if (v8 >= v7)
    {
      if (v7 == *a2[1].polyPoints)
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&a2->polyBBox.right, v7 + 1);
        v7 = *&a2[1].polyBBox.bottom;
      }

      *&a2[1].polyBBox.bottom = v7 + 1;
      operator new();
    }

    v9 = *&a2->polyBBox.right;
    *&a2[1].polyBBox.top = v8 + 1;
    result = *(v9 + 8 * v8);
    v11 = *(v5 - 1);
    v12 = result[5];
    result[5] = v12 | 1;
    v13 = *v5;
    v5 += 2;
    result[5] = v12 | 3;
    result[2] = v11;
    result[3] = v13;
    --v6;
  }

  while (v6);
  return result;
}

uint32x4_t ProtobufUtil::toProtobuf(unsigned __int16 *a1, uint32x4_t *a2, uint8x8_t a3)
{
  v3 = a2[2].i32[1];
  v4 = a1[1];
  a2->i32[2] = *a1;
  a2->i32[3] = v4;
  a2[2].i32[1] = v3 | 0x3F;
  a3.i32[0] = *(a1 + 1);
  result = vmovl_u16(*&vmovl_u8(a3));
  a2[1] = result;
  return result;
}

uint32x4_t ProtobufUtil::toProtobuf(unsigned __int16 *a1, uint64_t a2, uint8x8_t a3)
{
  *(a2 + 44) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  v5 = *a1;
  v6 = a1[1];
  v4[5] |= 3u;
  v4[2] = v5;
  v4[3] = v6;
  *(a2 + 44) |= 2u;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = v7[7];
  v9 = a1[3];
  v7[2] = a1[2];
  v7[3] = v9;
  v10 = *(a1 + 8);
  v7[7] = v8 | 0xF;
  v11 = *(a1 + 9);
  v7[4] = v10;
  v7[5] = v11;
  *(a2 + 44) |= 4u;
  v12 = *(a2 + 24);
  if (!v12)
  {
    operator new();
  }

  v13 = v12[6];
  v14 = a1[6];
  v12[2] = a1[5];
  v12[3] = v14;
  v15 = *(a1 + 14);
  v12[6] = v13 | 7;
  v12[4] = v15;
  *(a2 + 44) |= 8u;
  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  v17 = v16[2].i32[1];
  v18 = a1[9];
  v16->i32[2] = a1[8];
  v16->i32[3] = v18;
  v16[2].i32[1] = v17 | 0x3F;
  a3.i32[0] = *(a1 + 5);
  result = vmovl_u16(*&vmovl_u8(a3));
  v16[1] = result;
  return result;
}

double ProtobufUtil::toProtobuf(_DWORD *a1, uint64_t a2, uint8x8_t a3)
{
  v3 = *a1;
  if (*a1 == 255)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 2)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (v3 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v3 <= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(a2 + 24);
  *(a2 + 16) = v9;
  *(a2 + 24) = v10 | 3;
  v11 = *(a2 + 8);
  if (!v11)
  {
    operator new();
  }

  v12 = (a1 + 1);

  *&result = ProtobufUtil::toProtobuf(v12, v11, a3).u64[0];
  return result;
}

void ProtobufUtil::toProtobuf(_DWORD *a1, uint64_t a2)
{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 64);
  *(a2 + 64) = v5 | 1;
  v6 = a1[1];
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 64) = v5 | 7;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1 + 2, v7);
  *(a2 + 64) |= 8u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 5), v8);
  *(a2 + 64) |= 0x10u;
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 11), v9);
  *(a2 + 64) |= 0x20u;
  v10 = *(a2 + 40);
  if (!v10)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1 + 16, v10);
  *(a2 + 64) |= 0x40u;
  v12 = *(a2 + 48);
  if (!v12)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1 + 68, v12, v11);
  v13 = a1[75];
  *(a2 + 64) |= 0x80u;
  *(a2 + 56) = v13;
}

__int16 *ProtobufUtil::toProtobuf(__int16 *result, _DWORD *a2)
{
  v2 = a2[12];
  v3 = *(result + 2);
  a2[2] = *result;
  a2[3] = v3;
  v4 = *(result + 4);
  a2[4] = *(result + 3);
  a2[5] = v4;
  a2[12] = v2 | 0x1F;
  v5 = *(result + 2);
  v6 = *(result + 3);
  if (v5 < 5)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = 0;
  }

  a2[6] = v7;
  a2[7] = v6;
  v8 = *(result + 16);
  a2[12] = v2 | 0xFF;
  v9 = *(result + 17);
  a2[8] = v8;
  a2[9] = v9;
  v10 = *(result + 5);
  a2[12] = v2 | 0x1FF;
  a2[10] = v10;
  return result;
}

{
  v2 = a2[12];
  v3 = result[1];
  a2[2] = *result;
  a2[3] = v3;
  v4 = *(result + 6);
  a2[4] = result[2];
  a2[5] = v4;
  v5 = *(result + 8);
  a2[6] = *(result + 7);
  a2[7] = v5;
  a2[12] = v2 | 0x7F;
  v6 = *(result + 3);
  v7 = *(result + 4);
  if (v6 < 5)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = 0;
  }

  a2[8] = v8;
  a2[9] = v7;
  v9 = *(result + 20);
  a2[12] = v2 | 0x1FF;
  a2[10] = v9;
  return result;
}

__int16 *ProtobufUtil::toProtobuf(unsigned __int8 *a1, _DWORD *a2)
{
  v4 = a2[12];
  v5 = a1[1];
  a2[2] = *a1;
  a2[3] = v5;
  v6 = a1[2];
  a2[12] = v4 | 7;
  a2[10] = v6;
  v7 = 32;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), 32);
  v8 = (a1 + 4);
  do
  {
    v9 = a2[7];
    v10 = a2[6];
    if (v10 >= v9)
    {
      if (v9 == a2[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v9 + 1);
        v9 = a2[7];
      }

      a2[7] = v9 + 1;
      operator new();
    }

    v11 = *(a2 + 2);
    a2[6] = v10 + 1;
    result = ProtobufUtil::toProtobuf(v8, *(v11 + 8 * v10));
    v8 += 12;
    --v7;
  }

  while (v7);
  return result;
}

__int16 *ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5 | 3;
  v6 = *(a2 + 8);
  if (!v6)
  {
    operator new();
  }

  return ProtobufUtil::toProtobuf((a1 + 4), v6);
}

{
  v4 = *(a2 + 52);
  *(a2 + 52) = v4 | 1;
  v5 = *(a1 + 4);
  if (*a1 < 5u)
  {
    v6 = *a1 + 1;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 8) = v6;
  *(a2 + 12) = v5;
  v7 = *(a1 + 10);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 20) = v7;
  *(a2 + 32) = *(a1 + 11);
  *(a2 + 52) = v4 | 0x3F;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 16), v8);
  v9 = *(a2 + 52);
  *(a2 + 36) = *(a1 + 128);
  *(a2 + 52) = v9 | 0xC0;
  v10 = *(a2 + 40);
  if (!v10)
  {
    operator new();
  }

  return ProtobufUtil::toProtobuf(a1 + 132, v10);
}

{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 52);
  v6 = *(a1 + 4);
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 52) = v5 | 7;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 8), v7);
  *(a2 + 52) |= 8u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1 + 20, v8);
  *(a2 + 52) |= 0x10u;
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  result = ProtobufUtil::toProtobuf(a1 + 480, v9);
  v11 = *(a2 + 52);
  *(a2 + 40) = *(a1 + 1392);
  v12 = *(a1 + 1396);
  *(a2 + 52) = v11 | 0x60;
  *(a2 + 44) = v12;
  return result;
}

uint64_t *ProtobufUtil::toProtobuf(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = a1[1];
  *(a2 + 8) = *a1;
  *(a2 + 12) = v5;
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  *(a2 + 64) = v4 | 0xF;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 24), 15);
  for (i = 0; i != 15; ++i)
  {
    v9 = *(a1 + i + 6);
    v10 = *(a2 + 32);
    if (v10 == *(a2 + 36))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 24), v10 + 1);
      v10 = *(a2 + 32);
    }

    v11 = *(a2 + 24);
    *(a2 + 32) = v10 + 1;
    *(v11 + 4 * v10) = v9;
  }

  result = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 40), 15);
  for (j = 0; j != 15; ++j)
  {
    v14 = *(a1 + j + 21);
    v15 = *(a2 + 48);
    if (v15 == *(a2 + 52))
    {
      result = wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 40), v15 + 1);
      v15 = *(a2 + 48);
    }

    v16 = *(a2 + 40);
    *(a2 + 48) = v15 + 1;
    *(v16 + 4 * v15) = v14;
  }

  v17 = *(a1 + 36);
  *(a2 + 64) |= 0x40u;
  *(a2 + 56) = v17;
  return result;
}

unsigned __int8 *ProtobufUtil::toProtobuf(unsigned __int8 *result, _DWORD *a2)
{
  v2 = *result;
  v3 = a2[5];
  a2[5] = v3 | 1;
  v4 = *(result + 1);
  a2[5] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  return result;
}

{
  v2 = *result;
  v3 = *(result + 1);
  a2[5] |= 3u;
  a2[2] = v2;
  a2[3] = v3;
  return result;
}

{
  v2 = a2[10];
  v3 = result[1];
  a2[2] = *result;
  a2[3] = v3;
  v4 = result[2];
  a2[10] = v2 | 0xF;
  v5 = *(result + 2);
  a2[4] = v4;
  a2[5] = v5;
  v6 = result[12];
  a2[6] = *(result + 2);
  a2[7] = v6;
  v7 = result[13];
  a2[10] = v2 | 0x7F;
  a2[8] = v7;
  return result;
}

_DWORD *ProtobufUtil::toProtobuf(unsigned __int8 *a1, _DWORD *a2)
{
  v4 = a2[13];
  v5 = a1[2];
  a2[2] = *a1;
  a2[3] = v5;
  v6 = a1[3];
  v7 = a1[4];
  a2[13] = v4 | 0xF;
  a2[4] = v6;
  a2[5] = v7;
  v8 = 15;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6), 15);
  v9 = (a1 + 8);
  do
  {
    v10 = a2[9];
    v11 = a2[8];
    if (v11 >= v10)
    {
      if (v10 == a2[10])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6), v10 + 1);
        v10 = a2[9];
      }

      a2[9] = v10 + 1;
      operator new();
    }

    v12 = *(a2 + 3);
    a2[8] = v11 + 1;
    result = *(v12 + 8 * v11);
    v14 = *(v9 - 2);
    v15 = *v9;
    v9 += 2;
    result[5] |= 3u;
    result[2] = v14;
    result[3] = v15;
    --v8;
  }

  while (v8);
  return result;
}

uint32x4_t ProtobufUtil::toProtobuf(__int32 *a1, uint64_t a2, uint8x8_t a3)
{
  *(a2 + 28) |= 0xFu;
  a3.i32[0] = *a1;
  result = vmovl_u16(*&vmovl_u8(a3));
  *(a2 + 8) = result;
  return result;
}

uint32x4_t ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 72);
  v6 = *(a1 + 4);
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  v7 = *(a1 + 6);
  *(a2 + 72) = v5 | 7;
  *(a2 + 64) = v7;
  v8 = 15;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), 15);
  v9 = (a1 + 12);
  do
  {
    v10 = *(a2 + 28);
    v11 = *(a2 + 24);
    if (v11 >= v10)
    {
      if (v10 == *(a2 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), v10 + 1);
        v10 = *(a2 + 28);
      }

      *(a2 + 28) = v10 + 1;
      operator new();
    }

    v12 = *(a2 + 16);
    *(a2 + 24) = v11 + 1;
    v13 = *(v12 + 8 * v11);
    v14 = *(v9 - 4);
    v15 = v13[5];
    v13[5] = v15 | 1;
    v16 = *v9;
    v9 += 2;
    v13[5] = v15 | 3;
    v13[2] = v14;
    v13[3] = v16;
    --v8;
  }

  while (v8);
  *(a2 + 72) |= 0x10u;
  v17 = *(a2 + 40);
  if (!v17)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf(a1 + 128, v17);
  *(a2 + 72) |= 0x20u;
  v18 = *(a2 + 48);
  if (!v18)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 152), v18);
  *(a2 + 72) |= 0x40u;
  v20 = *(a2 + 56);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 28) |= 0xFu;
  v19.i32[0] = *(a1 + 218);
  result = vmovl_u16(*&vmovl_u8(v19));
  *(v20 + 8) = result;
  return result;
}

void ProtobufUtil::toProtobuf(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *(a2 + 72) |= 3u;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 16), 8);
  for (i = 0; i != 32; i += 4)
  {
    v7 = ProtobufUtil::toProtobuf(*&a1[i + 4]);
    v8 = *(a2 + 24);
    if (v8 == *(a2 + 28))
    {
      wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 16), v8 + 1);
      v8 = *(a2 + 24);
    }

    v9 = *(a2 + 16);
    *(a2 + 24) = v8 + 1;
    *(v9 + 4 * v8) = v7;
  }

  v10 = *(a2 + 72);
  v11 = a1[40];
  *(a2 + 32) = *(a1 + 9);
  *(a2 + 36) = v11;
  v12 = a1[41];
  *(a2 + 72) = v10 | 0x38;
  *(a2 + 64) = v12;
  v13 = 8;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 40), 8);
  v14 = (a1 + 44);
  do
  {
    v15 = *(a2 + 52);
    v16 = *(a2 + 48);
    if (v16 >= v15)
    {
      if (v15 == *(a2 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 40), v15 + 1);
        v15 = *(a2 + 52);
      }

      *(a2 + 52) = v15 + 1;
      operator new();
    }

    v17 = *(a2 + 40);
    *(a2 + 48) = v16 + 1;
    ProtobufUtil::toProtobuf(v14, *(v17 + 8 * v16));
    v14 += 224;
    --v13;
  }

  while (v13);
}

void ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v4 = ProtobufUtil::toProtobuf(*a1);
  v5 = *(a2 + 44);
  v6 = *(a1 + 4);
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 44) = v5 | 7;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 8), v7);
  *(a2 + 44) |= 8u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 20), v8);
  *(a2 + 44) |= 0x10u;
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  ProtobufUtil::toProtobuf((a1 + 60), v9);
}

_DWORD *ProtobufUtil::toProtobuf(unsigned __int8 *a1, int *a2)
{
  v4 = (a1 + 4);
  v3 = *a1;
  a2[10] |= 1u;
  a2[8] = v3;
  v5 = 16;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 16);
  do
  {
    v6 = a2[5];
    v7 = a2[4];
    if (v7 >= v6)
    {
      if (v6 == a2[6])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
        v6 = a2[5];
      }

      a2[5] = v6 + 1;
      operator new();
    }

    v8 = *(a2 + 1);
    a2[4] = v7 + 1;
    result = ProtobufUtil::toProtobuf(v4, *(v8 + 8 * v7));
    v4 += 22;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t ProtobufUtil::toProtobuf(uint64_t a1, _DWORD *a2)
{
  v4 = a2[17];
  v5 = *(a1 + 4);
  a2[2] = *a1;
  a2[3] = v5;
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  a2[17] = v4 | 0xF;
  a2[4] = v6;
  a2[5] = v7;
  v8 = 16;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6), 16);
  v9 = (a1 + 10);
  do
  {
    v10 = a2[9];
    v11 = a2[8];
    if (v11 >= v10)
    {
      if (v10 == a2[10])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6), v10 + 1);
        v10 = a2[9];
      }

      a2[9] = v10 + 1;
      operator new();
    }

    v12 = *(a2 + 3);
    a2[8] = v11 + 1;
    v13 = *(v12 + 8 * v11);
    v14 = *(v9 - 1);
    v15 = v13[8];
    v13[8] = v15 | 3;
    v16 = *v9;
    v13[2] = v14;
    v13[3] = v16;
    v17 = *(v9 + 2);
    v13[8] = v15 | 7;
    v18 = *(v9 + 6);
    v13[4] = v17;
    v13[5] = v18;
    v19 = v9[10];
    v13[8] = v15 | 0x1F;
    v13[6] = v19;
    v9 += 16;
    --v8;
  }

  while (v8);
  v20 = a2[17];
  v21 = *(a1 + 268);
  v22 = v21 + 1;
  v23 = v21 + 2;
  if (v22 >= 5)
  {
    v23 = 0;
  }

  a2[12] = *(a1 + 264);
  a2[13] = v23;
  result = ProtobufUtil::toProtobuf(*(a1 + 272));
  a2[17] = v20 | 0xE0;
  v25 = *(a1 + 276);
  a2[17] = v20 | 0x1E0;
  a2[14] = result;
  a2[15] = v25;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(unsigned __int8 *a1, uint64_t a2, uint8x8_t a3)
{
  v5 = *(a2 + 68);
  v6 = a1[1];
  *(a2 + 8) = *a1;
  *(a2 + 12) = v6;
  v7 = *(a1 + 1);
  *(a2 + 68) = v5 | 7;
  v8 = *(a1 + 1);
  *(a2 + 68) = v5 | 0xF;
  *(a2 + 16) = v7;
  *(a2 + 20) = v8;
  *(a2 + 24) = *(a1 + 2);
  a3.i32[0] = *(a1 + 3);
  v9 = a1[17];
  *(a2 + 44) = a1[16];
  *(a2 + 48) = v9;
  v11 = *(a1 + 5);
  v10 = *(a1 + 6);
  v12 = v11 + 1;
  *(a2 + 28) = vmovl_u16(*&vmovl_u8(a3));
  v13 = v11 + 2;
  if (v12 >= 5)
  {
    v13 = 0;
  }

  *(a2 + 52) = v13;
  result = ProtobufUtil::toProtobuf(v10);
  *(a2 + 68) = v5 | 0x1FFF;
  v15 = *(a1 + 7);
  *(a2 + 68) = v5 | 0x3FFF;
  *(a2 + 56) = result;
  *(a2 + 60) = v15;
  return result;
}

__n128 ProtobufUtil::toProtobuf(__int128 *a1, uint64_t a2)
{
  v2 = *(a2 + 148);
  v3 = *(a2 + 152);
  v4 = *a1;
  *(a2 + 148) = v2 | 1;
  DWORD1(v4) = *(a1 + 1);
  *(a2 + 148) = v2 | 3;
  DWORD2(v4) = *(a1 + 2);
  *(a2 + 148) = v2 | 7;
  HIDWORD(v4) = *(a1 + 3);
  *(a2 + 148) = v2 | 0xF;
  *(a2 + 8) = v4;
  v5 = a1[1];
  *(a2 + 148) = v2 | 0x1F;
  DWORD1(v5) = *(a1 + 5);
  *(a2 + 148) = v2 | 0x3F;
  DWORD2(v5) = *(a1 + 6);
  *(a2 + 148) = v2 | 0x7F;
  HIDWORD(v5) = *(a1 + 7);
  *(a2 + 24) = v5;
  *&v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  *&v7 = vmovl_u16(*&v5).u64[0];
  *(&v7 + 1) = vmovl_s16(*&v5).i64[1];
  *(a2 + 40) = v7;
  v8 = vmovl_s16(v6);
  v8.i32[3] = vmovl_u16(*&v6).i32[3];
  *(a2 + 56) = v8;
  v9 = vmovl_s16(a1[3]);
  *(a2 + 72) = v9;
  v9.i32[0] = *(a1 + 14);
  v10 = vmovl_u16(*&vmovl_u8(*v9.i8));
  v10.i32[3] = vshrq_n_s32(vshlq_n_s32(v10, 0x18uLL), 0x18uLL).i32[3];
  *(a2 + 88) = v10;
  v11 = *(a1 + 60);
  v12 = *(a1 + 61);
  *(a2 + 148) = v2 | 0x3FFFFFF;
  *(a2 + 104) = v11;
  *(a2 + 108) = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 68);
  *(a2 + 148) = v2 | 0xFFFFFFF;
  *(a2 + 112) = v13;
  *(a2 + 116) = v14;
  v15 = *(a1 + 18);
  v16 = *(a1 + 76);
  *(a2 + 148) = v2 | 0x3FFFFFFF;
  *(a2 + 120) = v15;
  *(a2 + 124) = v16;
  result = a1[5];
  *(a2 + 148) = v2 | 0x7FFFFFFF;
  result.n128_u32[1] = *(a1 + 21);
  *(a2 + 148) = -1;
  result.n128_u32[2] = *(a1 + 22);
  *(a2 + 152) = v3 | 1;
  result.n128_u32[3] = *(a1 + 23);
  *(a2 + 152) = v3 | 3;
  *(a2 + 128) = result;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(ProtobufUtil *this, const gnss::Emergency::Cplane::GpsNavigationModel *a2, proto::gnss::Emergency::GpsNavigationModel *a3)
{
  v6 = (this + 4);
  v5 = *this;
  *(a2 + 13) |= 1u;
  *(a2 + 8) = v5;
  v7 = 16;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), 16);
  do
  {
    v8 = *(a2 + 5);
    v9 = *(a2 + 4);
    if (v9 >= v8)
    {
      if (v8 == *(a2 + 6))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v8 + 1);
        v8 = *(a2 + 5);
      }

      *(a2 + 5) = v8 + 1;
      operator new();
    }

    v10 = *(a2 + 1);
    *(a2 + 4) = v9 + 1;
    ProtobufUtil::toProtobuf(v6, *(v10 + 8 * v9));
    v6 += 6;
    --v7;
  }

  while (v7);
  v11 = *(this + 385);
  v12 = v11 + 1;
  v13 = v11 + 2;
  if (v12 >= 5)
  {
    v13 = 0;
  }

  v14 = *(a2 + 13);
  *(a2 + 9) = v13;
  result = ProtobufUtil::toProtobuf(*(this + 386));
  *(a2 + 13) = v14 | 0xC;
  v16 = *(this + 387);
  *(a2 + 13) = v14 | 0x1C;
  *(a2 + 10) = result;
  *(a2 + 11) = v16;
  return result;
}

char *ProtobufUtil::toProtobuf(char *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 16) |= 1u;
  *(a2 + 8) = v2;
  return result;
}

{
  v2 = *result;
  v3 = *(a2 + 20);
  *(a2 + 20) = v3 | 1;
  *(a2 + 12) = v2;
  *(a2 + 8) = *(result + 1);
  *(a2 + 13) = *(result + 4);
  *(a2 + 20) = v3 | 0xF;
  return result;
}

unsigned int *ProtobufUtil::toProtobuf(unsigned int *result, uint64_t a2)
{
  v2 = *result;
  if (v2 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100145F6C[v2];
  }

  *(a2 + 16) |= 1u;
  *(a2 + 8) = v3;
  return result;
}

uint64_t ProtobufUtil::fromProtobuf(int a1)
{
  result = (a1 - 1);
  if (result >= 0x11)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::PositionMethod", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 7)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::PositionReqType", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::PositionSession", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 6)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::PositionProtocol", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  if ((a1 - 1) < 0x10)
  {
    return dword_100145F80[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::SessionErrorCode", v4, 8u);
    return 0;
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::TriggerType", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 0x20)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::Status", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 0x17)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::EndCause", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  if ((a1 - 1) < 5)
  {
    return -a1;
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::ConnectionStatus", v4, 8u);
  }

  return 0xFFFFFFFFLL;
}

{
  result = (a1 - 1);
  if (result >= 6)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::CellType", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::FreqMode", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 4)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::SLPAddressType", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  if ((a1 - 1) < 8)
  {
    return dword_100145FC0[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::ErrorCodes", v4, 8u);
  }

  return 4294967294;
}

{
  if ((a1 - 1) < 4)
  {
    return (a1 - 2);
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::ClsModemState", v4, 8u);
  }

  return 0xFFFFFFFFLL;
}

{
  if ((a1 - 1) < 5)
  {
    return (a1 - 2);
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::SessionProtocol", v4, 8u);
  }

  return 0xFFFFFFFFLL;
}

{
  if ((a1 - 1) < 6)
  {
    return (a1 - 2);
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::PosProtocol", v4, 8u);
  }

  return 0xFFFFFFFFLL;
}

{
  if ((a1 - 1) < 4)
  {
    return (a1 - 2);
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::MethodType", v4, 8u);
  }

  return 0xFFFFFFFFLL;
}

{
  result = (a1 - 1);
  if (result >= 4)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::Environment", v4, 8u);
    }

    return 3;
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::AdditionalInfo", v4, 8u);
    }

    return 2;
  }

  return result;
}

{
  if ((a1 - 1) < 3)
  {
    return (a1 - 2);
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::FixType", v4, 8u);
  }

  return 0xFFFFFFFFLL;
}

{
  if ((a1 - 1) < 5)
  {
    return dword_100145FE0[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::ClsNetworkType", v4, 8u);
    return 0;
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 5)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::GnssTimeId", v4, 8u);
    }

    return 4;
  }

  return result;
}

{
  if ((a1 - 1) < 8)
  {
    return dword_100145FF4[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::ShapeType", v4, 8u);
  }

  return 255;
}

{
  if ((a1 - 1) < 5)
  {
    return dword_100146014[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::VelocityType", v4, 8u);
  }

  return 255;
}

{
  result = (a1 - 1);
  if (result >= 5)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::MultipathIndicator", v4, 8u);
    }

    return 4;
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 6)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::GanssId", v4, 8u);
    }

    return 5;
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 6)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::LcsGanssId", v4, 8u);
    }

    return 5;
  }

  return result;
}

{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::UtranSfnGpsUncertainty", v4, 8u);
    }

    return 2;
  }

  return result;
}

{
  if ((a1 - 1) < 6)
  {
    return dword_100146028[a1 - 1];
  }

  v3 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::GpsDopplerUncMpsExt", v4, 8u);
  }

  return 255;
}

{
  result = (a1 - 1);
  if (result >= 5)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::Emergency::WlanMeasurementResult", v4, 8u);
      return 0;
    }
  }

  return result;
}

{
  if (a1 != 1)
  {
    if (a1)
    {
      v2 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v4 = 67109120;
        v5 = a1;
        goto LABEL_8;
      }
    }

    else
    {
      v2 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        v4 = 67109120;
        v5 = 0;
LABEL_8:
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::PowerLoggingStatus", &v4, 8u);
      }
    }
  }

  return 0;
}

{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 4:
        return 2;
      case 3:
        return 1;
      case 2:
        return 0;
    }

LABEL_8:
    v3 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      v6 = 67109120;
      v7 = a1;
      v4 = v3;
LABEL_16:
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gpsd::LtlInfoType", &v6, 8u);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_8;
  }

  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v6 = 67109120;
    v7 = 0;
    v4 = v5;
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

{
  result = (a1 - 1);
  if (result >= 3)
  {
    v3 = GpsdLogObjectGeneral;
    result = os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = a1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::PositionAssistType", v4, 8u);
      return 0;
    }
  }

  return result;
}

double ProtobufUtil::fromProtobuf(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *a2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 8);
      *(a2 + 8) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 1) = *(a1 + 17);
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = *(a1 + 48);
  if (v3)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = *(a1 + 24);
  *(a2 + 16) = result;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  result = *(a1 + 32);
  *(a2 + 24) = result;
  if ((v3 & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  ProtobufUtil::fromProtobuf(*(a1 + 40));
  *(a2 + 32) = 0;
  return result;
}

std::string *ProtobufUtil::fromProtobuf(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = HIDWORD(result[1].__r_.__value_.__r.__words[0]);
  if (v4)
  {
    *a2 = result->__r_.__value_.__r.__words[2];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = std::string::operator=((a2 + 8), result->__r_.__value_.__l.__size_);
  v4 = HIDWORD(v3[1].__r_.__value_.__r.__words[0]);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a2 + 32) = v3->__r_.__value_.__s.__data_[20];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 33) = v3->__r_.__value_.__s.__data_[21];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(a2 + 34) = v3->__r_.__value_.__s.__data_[22];
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(a2 + 35) = *(&v3->__r_.__value_.__s + 23);
  return result;
}

{
  v3 = result;
  v4 = HIDWORD(result[2].__r_.__value_.__r.__words[0]);
  if (v4)
  {
    *a2 = result[1].__r_.__value_.__r.__words[1];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = std::string::operator=((a2 + 8), result->__r_.__value_.__l.__size_);
  v4 = HIDWORD(v3[2].__r_.__value_.__r.__words[0]);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 32) = v3[1].__r_.__value_.__s.__data_[12];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = std::string::operator=((a2 + 40), v3->__r_.__value_.__r.__words[2]);
  v4 = HIDWORD(v3[2].__r_.__value_.__r.__words[0]);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 64) = v3[1].__r_.__value_.__s.__data_[13];
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 65) = v3[1].__r_.__value_.__s.__data_[14];
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 66) = v3[1].__r_.__value_.__s.__data_[15];
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_17:
  data = v3[1].__r_.__value_.__l.__data_;
  if (!data)
  {
    data = *(proto::gnss::Emergency::SuplContext::default_instance_ + 24);
  }

  v6 = *(data + 6);
  if (v6)
  {
    *(a2 + 72) = data[16];
    if ((v6 & 2) == 0)
    {
LABEL_21:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_21;
  }

  *(a2 + 73) = data[17];
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_22:
  *(a2 + 80) = *(data + 1);
  return result;
}

{
  v3 = result;
  v4 = result[1].__r_.__value_.__r.__words[2];
  if (v4)
  {
    *a2 = result[1].__r_.__value_.__s.__data_[8];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = std::string::operator=((a2 + 8), result->__r_.__value_.__l.__size_);
  v4 = v3[1].__r_.__value_.__r.__words[2];
  if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = v3->__r_.__value_.__r.__words[2];
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 16);
  }

  if (*(v5 + 16))
  {
    *(a2 + 32) = *(v5 + 8);
  }

LABEL_11:
  if ((v4 & 8) != 0)
  {
    data = v3[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      data = *(proto::gnss::Emergency::EmergConfig::default_instance_ + 24);
    }

    return ProtobufUtil::fromProtobuf(data, a2 + 40);
  }

  return result;
}

uint64_t ProtobufUtil::fromProtobuf(uint64_t result, uint64_t a2)
{
  v2 = *(result + 52);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = *(result + 12);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 4) = *(result + 16);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 8) = *(result + 20);
  v2 = *(result + 52);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 12) = *(result + 24);
  v2 = *(result + 52);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 16) = *(result + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 18) = *(result + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 19) = *(result + 36);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

LABEL_21:
    *(a2 + 24) = *(result + 44);
    return result;
  }

LABEL_20:
  *(a2 + 20) = *(result + 40);
  if ((*(result + 52) & 0x200) != 0)
  {
    goto LABEL_21;
  }

  return result;
}

{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = *(result + 12);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 4) = *(result + 16);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 12) = *(result + 24);
    return result;
  }

LABEL_10:
  *(a2 + 8) = *(result + 20);
  if ((*(result + 32) & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    *a2 = *(result + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = *(result + 12);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a2 + 4) = *(result + 16);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 8) = *(result + 20);
  v4 = *(result + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 12) = *(result + 24);
  v4 = *(result + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 16) = *(result + 28);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  result = ProtobufUtil::fromProtobuf(*(result + 32));
  *(a2 + 24) = result;
  if ((*(v3 + 44) & 0x80) == 0)
  {
    return result;
  }

LABEL_9:
  *(a2 + 28) = *(v3 + 36);
  return result;
}

{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 1) = *(result + 12);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 2) = *(result + 16);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 6) = *(result + 24);
    return result;
  }

LABEL_10:
  *(a2 + 4) = *(result + 20);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

{
  if (*(result + 36))
  {
    v3 = *(result + 8);
    if (!v3)
    {
      v3 = *(proto::gnss::Emergency::ClsUtranCellTime::default_instance_ + 8);
    }

    v4 = v3[5];
    if (v4)
    {
      *a2 = v3[2];
      v4 = v3[5];
    }

    if ((v4 & 2) != 0)
    {
      *(a2 + 4) = v3[3];
    }
  }

  v5 = *(result + 36);
  if ((v5 & 2) != 0)
  {
    *(a2 + 8) = *(result + 16);
    if ((v5 & 4) == 0)
    {
LABEL_10:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_10;
  }

  *(a2 + 10) = *(result + 20);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_16:
  *(a2 + 12) = *(result + 24);
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  result = ProtobufUtil::fromProtobuf(*(result + 28));
  *(a2 + 16) = result;
  return result;
}

{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8);
    }

    result = ProtobufUtil::fromProtobuf(v5, a2);
    v4 = *(v3 + 28);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);
    if (!v6)
    {
      v6 = *(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 16);
    }

    v7 = v6[5];
    if (v7)
    {
      *(a2 + 20) = v6[2];
      v7 = v6[5];
    }

    if ((v7 & 2) != 0)
    {
      *(a2 + 24) = v6[3];
    }
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8);
    }

    result = ProtobufUtil::fromProtobuf(v5, a2);
    v4 = *(v3 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);
    if (!v6)
    {
      v6 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 16);
    }

    v7 = v6[5];
    if (v7)
    {
      *(a2 + 28) = v6[2];
      v7 = v6[5];
    }

    if ((v7 & 2) != 0)
    {
      *(a2 + 32) = v6[3];
    }
  }

  if ((*(v3 + 36) & 4) != 0)
  {
    v8 = *(v3 + 24);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 24);
    }

    v9 = v8[5];
    if (v9)
    {
      *(a2 + 36) = v8[2];
      v9 = v8[5];
    }

    if ((v9 & 2) != 0)
    {
      *(a2 + 40) = v8[3];
    }
  }

  return result;
}

{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    v2 = *(result + 32);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 12);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(a2 + 8) = *(result + 24);
  if ((*(result + 32) & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v3 = *(result + 16);
  if (!v3)
  {
    v3 = *(proto::gnss::Emergency::CellInfo::default_instance_ + 16);
  }

  v4 = v3[6];
  if (v4)
  {
    *(a2 + 12) = v3[2];
    if ((v4 & 2) == 0)
    {
LABEL_13:
      if ((v4 & 4) != 0)
      {
        goto LABEL_17;
      }

      return result;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_13;
  }

  *(a2 + 14) = v3[3];
  if ((v4 & 4) != 0)
  {
LABEL_17:
    *(a2 + 16) = v3[4];
  }

  return result;
}

{
  v2 = *(result + 36);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(a2 + 10) = *(result + 20);
      if ((v2 & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v2 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v3 = *(result + 24);
  if (!v3)
  {
    v3 = *(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 24);
  }

  return ProtobufUtil::fromProtobuf(v3, a2 + 12);
}

{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a2 + 2) = *(result + 12);
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v3 = *(result + 16);
  if (!v3)
  {
    v3 = *(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 16);
  }

  return ProtobufUtil::fromProtobuf(v3, a2 + 4);
}

{
  v2 = *(result + 60);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 12);
  v2 = *(result + 60);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(a2 + 12) = *(result + 20);
    v2 = *(result + 60);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

LABEL_9:
  *(a2 + 8) = *(result + 16);
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v3 = *(result + 24);
  if (!v3)
  {
    v3 = *(proto::gnss::Emergency::ClsEutranCell::default_instance_ + 24);
  }

  v4 = v3[6];
  if (v4)
  {
    *(a2 + 16) = v3[2];
    if ((v4 & 2) == 0)
    {
LABEL_15:
      if ((v4 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(a2 + 18) = v3[3];
  if ((v4 & 4) != 0)
  {
LABEL_16:
    *(a2 + 20) = v3[4];
    v2 = *(result + 60);
  }

LABEL_17:
  if ((v2 & 0x20) != 0)
  {
    *(a2 + 24) = *(result + 32);
    v2 = *(result + 60);
    if ((v2 & 0x40) == 0)
    {
LABEL_19:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_19;
  }

  *(a2 + 28) = *(result + 36);
  if ((v2 & 0x80) == 0)
  {
LABEL_20:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a2 + 32) = *(result + 40);
  v2 = *(result + 60);
  if ((v2 & 0x100) == 0)
  {
LABEL_21:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a2 + 36) = *(result + 44);
  if ((v2 & 0x200) == 0)
  {
LABEL_22:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_29:
    *(a2 + 40) = *(result + 52);
    return result;
  }

LABEL_28:
  *(a2 + 37) = *(result + 48);
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_29;
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8);
    }

    result = ProtobufUtil::fromProtobuf(v5, a2);
    v4 = *(v3 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 16);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 16);
  }

  result = ProtobufUtil::fromProtobuf(v6, a2 + 32);
  if ((*(v3 + 36) & 4) != 0)
  {
LABEL_11:
    v7 = *(v3 + 24);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 24);
    }

    return ProtobufUtil::fromProtobuf(v7, a2 + 56);
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(*(result + 8));
    *a2 = result;
    v4 = v3[9];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = v3[3];
  v4 = v3[9];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a2 + 8) = v3[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 10) = v3[5];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  result = ProtobufUtil::fromProtobuf(v3[6]);
  *(a2 + 12) = result;
  if ((v3[9] & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(a2 + 16) = v3[7];
  return result;
}

{
  if (*(result + 24))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::PointUncertainCircle::default_instance_ + 8);
    }

    v3 = v2[5];
    if (v3)
    {
      *a2 = v2[2];
      v3 = v2[5];
    }

    if ((v3 & 2) != 0)
    {
      *(a2 + 4) = v2[3];
    }
  }

  if ((*(result + 24) & 2) != 0)
  {
    *(a2 + 8) = *(result + 16);
  }

  return result;
}

{
  if (*(result + 36))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::PointUncertainEllipse::default_instance_ + 8);
    }

    v3 = v2[5];
    if (v3)
    {
      *a2 = v2[2];
      v3 = v2[5];
    }

    if ((v3 & 2) != 0)
    {
      *(a2 + 4) = v2[3];
    }
  }

  v4 = *(result + 36);
  if ((v4 & 2) != 0)
  {
    *(a2 + 8) = *(result + 16);
    if ((v4 & 4) == 0)
    {
LABEL_10:
      if ((v4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

  *(a2 + 9) = *(result + 20);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      return result;
    }

LABEL_16:
    *(a2 + 11) = *(result + 28);
    return result;
  }

LABEL_15:
  *(a2 + 10) = *(result + 24);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

{
  if (*(result + 44))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ + 8);
    }

    v3 = v2[5];
    if (v3)
    {
      *a2 = v2[2];
      v3 = v2[5];
    }

    if ((v3 & 2) != 0)
    {
      *(a2 + 4) = v2[3];
    }
  }

  v4 = *(result + 44);
  if ((v4 & 2) != 0)
  {
    *(a2 + 8) = *(result + 16);
    if ((v4 & 4) == 0)
    {
LABEL_10:
      if ((v4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

  *(a2 + 10) = *(result + 20);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 11) = *(result + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 12) = *(result + 28);
  if ((v4 & 0x20) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      return result;
    }

LABEL_20:
    *(a2 + 14) = *(result + 36);
    return result;
  }

LABEL_19:
  *(a2 + 13) = *(result + 32);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

{
  if (*(result + 40))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::EllipsoidArc::default_instance_ + 8);
    }

    v3 = v2[5];
    if (v3)
    {
      *a2 = v2[2];
      v3 = v2[5];
    }

    if ((v3 & 2) != 0)
    {
      *(a2 + 4) = v2[3];
    }
  }

  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    *(a2 + 8) = *(result + 16);
    if ((v4 & 4) == 0)
    {
LABEL_10:
      if ((v4 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

  *(a2 + 10) = *(result + 20);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 11) = *(result + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

LABEL_18:
    *(a2 + 13) = *(result + 32);
    return result;
  }

LABEL_17:
  *(a2 + 12) = *(result + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

{
  if (*(result + 24))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::PointAltitude::default_instance_ + 8);
    }

    v3 = v2[5];
    if (v3)
    {
      *a2 = v2[2];
      v3 = v2[5];
    }

    if ((v3 & 2) != 0)
    {
      *(a2 + 4) = v2[3];
    }
  }

  if ((*(result + 24) & 2) != 0)
  {
    *(a2 + 8) = *(result + 16);
  }

  return result;
}

{
  if (*(result + 28))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8);
    }

    v3 = v2[5];
    if (v3)
    {
      *a2 = v2[2];
      v3 = v2[5];
    }

    if ((v3 & 2) != 0)
    {
      *(a2 + 4) = v2[3];
    }
  }

  v4 = *(result + 28);
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      return result;
    }

LABEL_12:
    *(a2 + 12) = *(result + 20);
    return result;
  }

  *(a2 + 8) = *(result + 16);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

{
  if (*(result + 28))
  {
    v2 = *(result + 8);
    if (!v2)
    {
      v2 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 8);
    }

    v3 = v2[6];
    if (v3)
    {
      *a2 = v2[2];
      if ((v3 & 2) == 0)
      {
LABEL_6:
        if ((v3 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a2 + 4) = v2[3];
    if ((v2[6] & 4) != 0)
    {
LABEL_7:
      *(a2 + 8) = v2[4];
    }
  }

LABEL_8:
  if ((*(result + 28) & 2) != 0)
  {
    v4 = *(result + 16);
    if (!v4)
    {
      v4 = *(proto::gnss::Emergency::CellTimeData::default_instance_ + 16);
    }

    return ProtobufUtil::fromProtobuf(v4, a2 + 12);
  }

  return result;
}

{
  v2 = *(result + 28);
  if (v2)
  {
    v3 = *(result + 8);
    if (!v3)
    {
      v3 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 8);
    }

    v4 = *(v3 + 24);
    if (v4)
    {
      *a2 = *(v3 + 16);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a2 + 1) = *(v3 + 17);
    if ((v4 & 4) != 0)
    {
LABEL_7:
      *(a2 + 8) = *(v3 + 8);
    }
  }

LABEL_8:
  if ((v2 & 2) != 0)
  {
    v5 = *(result + 16);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::CplaneContext::default_instance_ + 16);
    }

    return ProtobufUtil::fromProtobuf(v5, (a2 + 16));
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 68);
  if (v4)
  {
    *a2 = *(result + 8);
    v4 = *(result + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 12);
  if ((v4 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v5 = *(result + 16);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 16);
  }

  result = ProtobufUtil::fromProtobuf(v5, (a2 + 8));
LABEL_10:
  v6 = *(v3 + 32);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a2 + 40;
    if (v6 >= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v6;
    }

    do
    {
      if (v7 >= *(v3 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      result = ProtobufUtil::fromProtobuf(*(*(v3 + 24) + 8 * v7++), v8);
      v8 += 20;
    }

    while (v9 != v7);
  }

  v10 = *(v3 + 68);
  if ((v10 & 0x10) != 0)
  {
    *(a2 + 360) = *(v3 + 48);
    if ((v10 & 0x20) == 0)
    {
LABEL_19:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  result = ProtobufUtil::fromProtobuf(*(v3 + 52));
  *(a2 + 364) = result;
  v10 = *(v3 + 68);
  if ((v10 & 0x40) == 0)
  {
LABEL_20:
    if ((v10 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_25:
  result = ProtobufUtil::fromProtobuf(*(v3 + 56));
  *(a2 + 368) = result;
  if ((*(v3 + 68) & 0x80) == 0)
  {
    return result;
  }

LABEL_21:
  *(a2 + 372) = *(v3 + 60);
  return result;
}

{
  v2 = *(result + 20);
  if (v2)
  {
    *a2 = *(result + 12);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 8);
  v2 = *(result + 20);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    *(a2 + 9) = *(result + 14);
    return result;
  }

LABEL_8:
  *(a2 + 8) = *(result + 13);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = *(result + 56);
  if (v2)
  {
    *a2 = *(result + 8);
    v2 = *(result + 56);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 12);
  v2 = *(result + 56);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 8) = *(result + 16);
  v2 = *(result + 56);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 12) = *(result + 20);
  v2 = *(result + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 16) = *(result + 24);
  v2 = *(result + 56);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 20) = *(result + 28);
  v2 = *(result + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 24) = *(result + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 26) = *(result + 36);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 28) = *(result + 40);
  v2 = *(result + 56);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_23:
    *(a2 + 36) = *(result + 48);
    return result;
  }

LABEL_22:
  *(a2 + 32) = *(result + 44);
  if ((*(result + 56) & 0x400) != 0)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t ProtobufUtil::fromProtobuf(uint64_t this, const proto::gnss::Emergency::LocationId *a2, gnss::Emergency::Supl::LocationId *a3)
{
  v4 = this;
  if (*(this + 88))
  {
    this = ProtobufUtil::fromProtobuf(*(this + 80));
    *a2 = this;
  }

  v5 = *(v4 + 16);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 2);
  v9 = v5 - v8;
  if (v5 <= v8)
  {
    if (v5 < v8)
    {
      v7 = v6 + 28 * v5;
      *(a2 + 2) = v7;
    }
  }

  else
  {
    v10 = *(a2 + 3);
    if (0x6DB6DB6DB6DB6DB7 * ((v10 - v7) >> 2) < v9)
    {
      if ((v5 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v11 = 0x6DB6DB6DB6DB6DB7 * ((v10 - v6) >> 2);
      if (2 * v11 > v5)
      {
        v5 = 2 * v11;
      }

      if (v11 >= 0x492492492492492)
      {
        v12 = 0x924924924924924;
      }

      else
      {
        v12 = v5;
      }

      if (v12 <= 0x924924924924924)
      {
        operator new();
      }

      goto LABEL_73;
    }

    v13 = v7 + 28 * v9;
    do
    {
      *v7 = 0xFFFFFFFF0000;
      *(v7 + 8) = -1;
      *(v7 + 16) = 1667497983;
      *(v7 + 20) = -COERCE_DOUBLE(0x8000000080000000);
      v7 += 28;
    }

    while (v7 != v13);
    *(a2 + 2) = v13;
    v7 = v13;
  }

  v14 = *(v4 + 16);
  v15 = -1227133513 * ((v7 - *(a2 + 1)) >> 2);
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    for (i = 0; i != v16; ++i)
    {
      if (i >= *(v4 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v47);
      }

      this = ProtobufUtil::fromProtobuf(*(*(v4 + 8) + 8 * i), *(a2 + 1) + v17);
      v17 += 28;
    }
  }

  v19 = *(v4 + 40);
  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = (v21 - v20) >> 4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      v21 = (v20 + 16 * v19);
      *(a2 + 5) = v21;
    }
  }

  else
  {
    v23 = v19 - v22;
    v24 = *(a2 + 6);
    if (v23 > (v24 - v21) >> 4)
    {
      if ((v19 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v25 = v24 - v20;
      if (v25 >> 3 > v19)
      {
        v19 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v19;
      }

      if (!(v26 >> 60))
      {
        operator new();
      }

      goto LABEL_73;
    }

    v27 = &v21[2 * v23];
    do
    {
      *v21 = 0xFFFFFFFF0000;
      v21[1] = -1;
      v21 += 2;
    }

    while (v21 != v27);
    *(a2 + 5) = v27;
    v21 = v27;
  }

  v28 = *(v4 + 40);
  v29 = (v21 - *(a2 + 4)) >> 4;
  if (v28 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  if (v30 >= 1)
  {
    v31 = 0;
    for (j = 0; j != v30; ++j)
    {
      if (j >= *(v4 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v47);
      }

      this = ProtobufUtil::fromProtobuf(*(*(v4 + 32) + 8 * j), *(a2 + 4) + v31);
      v31 += 16;
    }
  }

  v33 = *(v4 + 64);
  v34 = *(a2 + 7);
  v35 = *(a2 + 8);
  v36 = (v35 - v34) >> 5;
  if (v33 <= v36)
  {
    if (v33 < v36)
    {
      v35 = v34 + 32 * v33;
      *(a2 + 8) = v35;
    }
  }

  else
  {
    v37 = v33 - v36;
    v38 = *(a2 + 9);
    if (v37 > (v38 - v35) >> 5)
    {
      if ((v33 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v39 = v38 - v34;
      if (v39 >> 4 > v33)
      {
        v33 = v39 >> 4;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFE0)
      {
        v40 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v33;
      }

      if (!(v40 >> 59))
      {
        operator new();
      }

LABEL_73:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v41 = v35 + 32 * v37;
    do
    {
      *v35 = 0uLL;
      *(v35 + 16) = 0;
      *(v35 + 2) = -1;
      *(v35 + 8) = -1;
      *(v35 + 16) = -1;
      *(v35 + 20) = 0x7FFFFFFFLL;
      *(v35 + 28) = -1;
      v35 += 32;
    }

    while (v35 != v41);
    *(a2 + 8) = v41;
    v35 = v41;
  }

  v42 = *(v4 + 64);
  v43 = (v35 - *(a2 + 7)) >> 5;
  if (v42 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  if (v44 >= 1)
  {
    v45 = 0;
    for (k = 0; k != v44; ++k)
    {
      if (k >= *(v4 + 64))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v47);
      }

      this = ProtobufUtil::fromProtobuf(*(*(v4 + 56) + 8 * k), *(a2 + 7) + v45);
      v45 += 32;
    }
  }

  return this;
}

void sub_1000731E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void ProtobufUtil::fromProtobuf(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 44);
  if (v4)
  {
    *a2 = *(a1 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = ProtobufUtil::fromProtobuf(*(a1 + 12));
  if ((*(a1 + 44) & 4) != 0)
  {
LABEL_4:
    std::string::operator=((a2 + 8), *(a1 + 16));
  }

LABEL_5:
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a1 + 32);
  if (v7 <= (v6 - v5))
  {
    if (v7 < (v6 - v5))
    {
      LODWORD(v6) = v5 + v7;
      *(a2 + 40) = v5 + v7;
    }
  }

  else
  {
    std::vector<unsigned char>::__append((a2 + 32), v7 - (v6 - v5));
    v7 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
  }

  v8 = v6 - v5;
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (i >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      *(*(a2 + 32) + i) = *(*(a1 + 24) + 4 * i);
    }
  }
}

{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ + 8);
    }

    ProtobufUtil::fromProtobuf(v5, a2);
    v4 = *(a1 + 24);
  }

  if ((v4 & 2) != 0)
  {
    *(a2 + 56) = ProtobufUtil::fromProtobuf(*(a1 + 16));
  }
}

{
  v4 = *(a1 + 64);
  if (v4)
  {
    *a2 = *(a1 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = *(a1 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_25:
  *(a2 + 4) = *(a1 + 16);
  if ((v4 & 8) != 0)
  {
LABEL_5:
    *(a2 + 5) = *(a1 + 20);
  }

LABEL_6:
  v5 = *(a1 + 32);
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 0xF)
    {
      v7 = 15;
    }

    else
    {
      v7 = v5;
    }

    do
    {
      if (v6 >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      *(a2 + 6 + v6) = *(*(a1 + 24) + 4 * v6);
      ++v6;
    }

    while (v7 != v6);
  }

  v8 = *(a1 + 48);
  if (v8 >= 1)
  {
    v9 = 0;
    if (v8 >= 0xF)
    {
      v10 = 15;
    }

    else
    {
      v10 = v8;
    }

    do
    {
      if (v9 >= *(a1 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      *(a2 + 21 + v9) = *(*(a1 + 40) + 4 * v9);
      ++v9;
    }

    while (v10 != v9);
  }

  if ((*(a1 + 64) & 0x40) != 0)
  {
    *(a2 + 36) = *(a1 + 56);
  }
}

{
  v3 = *(a1 + 48);
  if (v3)
  {
    *a2 = *(a1 + 8);
    v3 = *(a1 + 48);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 6) = *(a1 + 16);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  *(a2 + 7) = *(a1 + 20);
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    *(a2 + 8) = *(a1 + 40);
  }

LABEL_7:
  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    v5 = 0;
    if (v4 >= 0xF)
    {
      v6 = 15;
    }

    else
    {
      v6 = v4;
    }

    v7 = a2 + 9;
    do
    {
      if (v5 >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
      }

      *(v7 + v5) = *(*(a1 + 24) + 4 * v5);
      ++v5;
    }

    while (v6 != v5);
  }
}

{
  v3 = *(a1 + 52);
  if (v3)
  {
    *a2 = *(a1 + 8);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = *(a1 + 12);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  *(a2 + 3) = *(a1 + 16);
  if ((v3 & 8) != 0)
  {
LABEL_5:
    *(a2 + 4) = *(a1 + 20);
  }

LABEL_6:
  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    v5 = 0;
    if (v4 >= 0xF)
    {
      v6 = 15;
    }

    else
    {
      v6 = v4;
    }

    v7 = (a2 + 8);
    do
    {
      if (v5 >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v8 = *(*(a1 + 24) + 8 * v5);
      v9 = v8[5];
      if (v9)
      {
        *(v7 - 2) = v8[2];
      }

      if ((v9 & 2) != 0)
      {
        *v7 = v8[3];
      }

      ++v5;
      v7 += 2;
    }

    while (v6 != v5);
  }
}

{
  v4 = *(a1 + 72);
  if (v4)
  {
    *a2 = ProtobufUtil::fromProtobuf(*(a1 + 8));
    v4 = *(a1 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    *(a2 + 6) = *(a1 + 64);
  }

LABEL_5:
  v5 = *(a1 + 24);
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 0xF)
    {
      v7 = 15;
    }

    else
    {
      v7 = v5;
    }

    v8 = (a2 + 12);
    do
    {
      if (v6 >= *(a1 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v9 = *(*(a1 + 16) + 8 * v6);
      v10 = v9[5];
      if (v10)
      {
        *(v8 - 4) = v9[2];
      }

      if ((v10 & 2) != 0)
      {
        *v8 = v9[3];
      }

      ++v6;
      v8 += 2;
    }

    while (v7 != v6);
    v4 = *(a1 + 72);
  }

  if ((v4 & 0x10) != 0)
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      v11 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 40);
    }

    ProtobufUtil::fromProtobuf(v11, a2 + 128);
    v4 = *(a1 + 72);
    if ((v4 & 0x20) == 0)
    {
LABEL_20:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
    v12 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 48);
  }

  ProtobufUtil::fromProtobuf(v12, a2 + 152);
  if ((*(a1 + 72) & 0x40) != 0)
  {
LABEL_31:
    v13 = *(a1 + 56);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 56);
    }

    ProtobufUtil::fromProtobuf(v13, (a2 + 218));
  }
}

{
  v4 = *(a1 + 72);
  if (v4)
  {
    *a2 = *(a1 + 8);
  }

  if ((v4 & 2) != 0)
  {
    *(a2 + 1) = *(a1 + 12);
  }

  v5 = *(a1 + 24);
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = v5;
    }

    do
    {
      if (v6 >= *(a1 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      *(a2 + 4 + 4 * v6) = ProtobufUtil::fromProtobuf(*(*(a1 + 16) + 4 * v6));
      ++v6;
    }

    while (v7 != v6);
    v4 = *(a1 + 72);
  }

  if ((v4 & 8) != 0)
  {
    *(a2 + 36) = *(a1 + 32);
    v4 = *(a1 + 72);
    if ((v4 & 0x10) == 0)
    {
LABEL_15:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  *(a2 + 40) = *(a1 + 36);
  if ((v4 & 0x20) != 0)
  {
LABEL_16:
    *(a2 + 41) = *(a1 + 64);
  }

LABEL_17:
  v8 = *(a1 + 48);
  if (v8 >= 1)
  {
    v9 = 0;
    if (v8 >= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v8;
    }

    v11 = a2 + 44;
    do
    {
      if (v9 >= *(a1 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      ProtobufUtil::fromProtobuf(*(*(a1 + 40) + 8 * v9++), v11);
      v11 += 224;
    }

    while (v10 != v9);
  }
}

{
  v4 = *(a1 + 44);
  if (v4)
  {
    *a2 = ProtobufUtil::fromProtobuf(*(a1 + 8));
    v4 = *(a1 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_9:
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 16);
  }

  ProtobufUtil::fromProtobuf(v5, (a2 + 8));
  v4 = *(a1 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_12:
  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 24);
  }

  ProtobufUtil::fromProtobuf(v6, a2 + 20);
  if ((*(a1 + 44) & 0x10) != 0)
  {
LABEL_15:
    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 32);
    }

    ProtobufUtil::fromProtobuf(v7, a2 + 60);
  }
}

{
  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    if (v4 >= 8)
    {
      v6 = 8;
    }

    else
    {
      v6 = v4;
    }

    do
    {
      if (v5 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
      }

      *(a2 + 2 * v5) = *(*(a1 + 8) + 4 * v5);
      ++v5;
    }

    while (v6 != v5);
  }

  v7 = *(a1 + 36);
  if ((v7 & 2) != 0)
  {
    *(a2 + 16) = *(a1 + 24);
  }

  if ((v7 & 4) != 0)
  {
    *(a2 + 17) = *(a1 + 28);
  }
}

{
  v4 = *(a1 + 56);
  if (v4)
  {
    *a2 = *(a1 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  v4 = *(a1 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a2 + 8) = ProtobufUtil::fromProtobuf(*(a1 + 48));
  v4 = *(a1 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  ProtobufUtil::fromProtobuf(v5, a2 + 12);
  v4 = *(a1 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_15:
  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  ProtobufUtil::fromProtobuf(v6, (a2 + 52));
  v4 = *(a1 + 56);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_18:
  v7 = *(a1 + 32);
  if (!v7)
  {
    v7 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  ProtobufUtil::fromProtobuf(v7, a2 + 872);
  if ((*(a1 + 56) & 0x40) != 0)
  {
LABEL_21:
    v8 = *(a1 + 40);
    if (!v8)
    {
      v8 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    v9 = v8[5];
    if (v9)
    {
      *(a2 + 890) = v8[2];
    }

    if ((v9 & 2) != 0)
    {
      *(a2 + 892) = v8[3];
    }
  }
}

{
  if (*(a1 + 40))
  {
    *a2 = ProtobufUtil::fromProtobuf(*(a1 + 32));
  }

  std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::resize((a2 + 8), *(a1 + 16));
  v4 = *(a1 + 16);
  v5 = -1431655765 * ((*(a2 + 16) - *(a2 + 8)) >> 2);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if (i >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
      }

      ProtobufUtil::fromProtobuf(*(*(a1 + 8) + 8 * i), (*(a2 + 8) + v7));
      v7 += 12;
    }
  }
}

void sub_1000733A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t ProtobufUtil::fromProtobuf(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = *(result + 9);
    return result;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result;
  if (*(result + 40))
  {
    *a2 = *(result + 32);
  }

  v3 = *(result + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    if (v3 >= 0x10)
    {
      v5 = 16;
    }

    else
    {
      v5 = v3;
    }

    v6 = (a2 + 4);
    do
    {
      if (v4 >= *(v2 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
      }

      result = ProtobufUtil::fromProtobuf(*(*(v2 + 8) + 8 * v4++), v6);
      v6 += 44;
    }

    while (v5 != v4);
  }

  return result;
}

{
  if (*(result + 16))
  {
    *a2 = *(result + 8);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

void ProtobufUtil::fromProtobuf(ProtobufUtil *this, const proto::gnss::Emergency::Init *a2, gnss::Emergency::Supl::Init *a3)
{
  v5 = *(this + 12);
  if (v5)
  {
    *a2 = ProtobufUtil::fromProtobuf(*(this + 10));
    v5 = *(this + 12);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::Init::default_instance_ + 8);
  }

  ProtobufUtil::fromProtobuf(v6, a2 + 4);
  v5 = *(this + 12);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(this + 2);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::Init::default_instance_ + 16);
  }

  ProtobufUtil::fromProtobuf(v7, a2 + 16);
  v5 = *(this + 12);
  if ((v5 & 8) != 0)
  {
LABEL_13:
    v8 = *(this + 3);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::Init::default_instance_ + 24);
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      *(a2 + 72) = *(v8 + 8);
    }

    if ((v9 & 2) != 0)
    {
      *(a2 + 73) = *(v8 + 9);
    }
  }

LABEL_19:
  if ((v5 & 0x10) != 0)
  {
    v10 = *(this + 4);
    if (!v10)
    {
      v10 = *(proto::gnss::Emergency::Init::default_instance_ + 32);
    }

    ProtobufUtil::fromProtobuf(v10, a2 + 80);
  }
}

_DWORD *ProtobufUtil::fromProtobuf(_DWORD *result, _DWORD *a2)
{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v3 = result;
  v4 = result[6];
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(result[4]);
    *a2 = result;
    v4 = v3[6];
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::VelocityEstimate::default_instance_ + 8);
    }

    return ProtobufUtil::fromProtobuf(v5, (a2 + 1));
  }

  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

_DWORD *ProtobufUtil::fromProtobuf(_DWORD *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      *(a2 + 4) = result[4];
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = result;
  v4 = result[20];
  if (v4)
  {
    *a2 = result[2];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = ProtobufUtil::fromProtobuf(result[3]);
  *(a2 + 4) = result;
  v4 = v3[20];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 8) = v3[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 10) = v3[5];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a2 + 12) = v3[6];
  v4 = v3[20];
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a2 + 16) = v3[7];
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a2 + 17) = v3[8];
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a2 + 18) = v3[9];
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a2 + 20) = v3[10];
  v4 = v3[20];
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a2 + 24) = v3[11];
  v4 = v3[20];
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a2 + 28) = v3[12];
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a2 + 30) = v3[13];
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a2 + 31) = v3[14];
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a2 + 32) = v3[15];
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_33:
  result = ProtobufUtil::fromProtobuf(v3[16]);
  *(a2 + 36) = result;
  if ((v3[20] & 0x8000) == 0)
  {
    return result;
  }

LABEL_17:
  *(a2 + 40) = v3[17];
  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 4) = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 4) = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result[6];
  if (v2)
  {
    *a2 = result[2];
    v2 = result[6];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      *(a2 + 6) = result[4];
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = result;
  v4 = result[10];
  if (v4)
  {
    *a2 = result[2];
    v4 = result[10];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a2 + 6) = result[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = ProtobufUtil::fromProtobuf(result[5]);
  *(a2 + 8) = result;
  v4 = v3[10];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 12) = v3[8];
  if ((v3[10] & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  v5 = *(v3 + 3);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::LocationInfo::default_instance_ + 24);
  }

  v6 = v5[6];
  if (v6)
  {
    *(a2 + 16) = v5[2];
    v6 = v5[6];
    if ((v6 & 2) == 0)
    {
LABEL_17:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_17;
  }

  *(a2 + 20) = v5[3];
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_18:
  *(a2 + 22) = v5[4];
  return result;
}

{
  v2 = result[7];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    *(a2 + 5) = result[5];
    return result;
  }

LABEL_8:
  *(a2 + 4) = result[4];
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = result[6];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      *(a2 + 4) = result[4];
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v2 = result[9];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a2 + 4) = result[4];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a2 + 5) = result[5];
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_13:
    *(a2 + 7) = result[7];
    return result;
  }

LABEL_12:
  *(a2 + 6) = result[6];
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

{
  v3 = result;
  v4 = result[11];
  if (v4)
  {
    v5 = *(result + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 8);
    }

    v6 = v5[5];
    if (v6)
    {
      *a2 = v5[2];
    }

    if ((v6 & 2) != 0)
    {
      *(a2 + 2) = v5[3];
    }
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(result + 2);
    if (!v7)
    {
      v7 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 16);
    }

    result = ProtobufUtil::fromProtobuf(v7, a2 + 4);
    v4 = v3[11];
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(v3 + 3);
    if (!v8)
    {
      v8 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 24);
    }

    v9 = v8[6];
    if (v9)
    {
      *(a2 + 10) = v8[2];
      if ((v9 & 2) == 0)
      {
LABEL_17:
        if ((v9 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_17;
    }

    *(a2 + 12) = v8[3];
    if ((v9 & 4) != 0)
    {
LABEL_18:
      *(a2 + 14) = v8[4];
    }
  }

LABEL_19:
  if ((v4 & 8) != 0)
  {
    v10 = *(v3 + 4);
    if (!v10)
    {
      v10 = *(proto::gnss::Emergency::VelocityInfo::default_instance_ + 32);
    }

    return ProtobufUtil::fromProtobuf(v10, a2 + 16);
  }

  return result;
}

{
  v3 = result;
  v4 = result[12];
  if (v4)
  {
    *a2 = result[2];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 3) = result[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 4) = result[5];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = ProtobufUtil::fromProtobuf(result[6]);
  *(a2 + 8) = result;
  v4 = v3[12];
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 12) = v3[7];
  v4 = v3[12];
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 16) = v3[8];
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(a2 + 17) = v3[9];
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_10:
  *(a2 + 20) = v3[10];
  return result;
}

{
  v3 = result;
  v4 = result[6];
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(result[4]);
    *a2 = result;
    v4 = v3[6];
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 1);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ + 8);
    }

    return ProtobufUtil::fromProtobuf(v5, (a2 + 4));
  }

  return result;
}

{
  v3 = result;
  v4 = result[13];
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(result[2]);
    *a2 = result;
    v4 = v3[13];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = v3[3];
  v4 = v3[13];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 8) = v3[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a2 + 10) = v3[5];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 11) = v3[8];
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    *(a2 + 128) = v3[9];
    if ((v4 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_15:
  v5 = *(v3 + 3);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 24);
  }

  result = ProtobufUtil::fromProtobuf(v5, (a2 + 16));
  v4 = v3[13];
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 5);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::GanssMeasurements::default_instance_ + 40);
  }

  return ProtobufUtil::fromProtobuf(v6, a2 + 132);
}

{
  v3 = result;
  v4 = result[12];
  if (v4)
  {
    *a2 = result[2];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 4) = result[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 6) = result[5];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 7) = result[6];
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 8) = result[7];
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = ProtobufUtil::fromProtobuf(result[8]);
  *(a2 + 12) = result;
  v4 = v3[12];
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(a2 + 16) = v3[9];
  if ((v3[12] & 0x100) == 0)
  {
    return result;
  }

LABEL_10:
  *(a2 + 20) = v3[10];
  return result;
}

{
  v3 = result;
  v4 = result[19];
  if (v4)
  {
    *a2 = result[2];
    v4 = result[19];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  *(a2 + 6) = result[4];
  if ((v4 & 8) != 0)
  {
LABEL_5:
    *(a2 + 7) = result[5];
  }

LABEL_6:
  v5 = result[8];
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v5;
    }

    v8 = a2 + 8;
    do
    {
      if (v6 >= v3[8])
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      result = ProtobufUtil::fromProtobuf(*(*(v3 + 3) + 8 * v6++), v8);
      v8 += 24;
    }

    while (v7 != v6);
    v4 = v3[19];
  }

  if ((v4 & 0x20) != 0)
  {
    v9 = *(v3 + 6);
    if (!v9)
    {
      v9 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 48);
    }

    result = ProtobufUtil::fromProtobuf(v9, (a2 + 392));
    v4 = v3[19];
    if ((v4 & 0x40) == 0)
    {
LABEL_17:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  *(a2 + 440) = v3[14];
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a2 + 444) = v3[15];
  if ((v3[19] & 0x100) == 0)
  {
    return result;
  }

LABEL_29:
  v10 = *(v3 + 8);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::GpsMeasurements::default_instance_ + 64);
  }

  v11 = v10[6];
  if (v11)
  {
    *(a2 + 448) = v10[2];
    v11 = v10[6];
    if ((v11 & 2) == 0)
    {
LABEL_33:
      if ((v11 & 4) == 0)
      {
        return result;
      }

      goto LABEL_34;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_33;
  }

  *(a2 + 452) = v10[3];
  if ((v11 & 4) == 0)
  {
    return result;
  }

LABEL_34:
  *(a2 + 454) = v10[4];
  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 4) = result[3];
    return result;
  }

  *a2 = result[2];
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 2) = result[3];
    return result;
  }

  *a2 = result[2];
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result[10];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 1) = result[3];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a2 + 2) = result[4];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 4) = result[5];
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a2 + 8) = result[6];
  v2 = result[10];
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_15:
    *(a2 + 13) = result[8];
    return result;
  }

LABEL_14:
  *(a2 + 12) = result[7];
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_15;
  }

  return result;
}

{
  v2 = result[6];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      *(a2 + 8) = result[4];
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  if ((result[6] & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v2 = result[8];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 4) = result[4];
  v2 = result[8];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 12) = result[6];
    return result;
  }

LABEL_10:
  *(a2 + 8) = result[5];
  if ((result[8] & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

{
  v3 = result;
  v4 = result[17];
  if (v4)
  {
    *a2 = result[2];
    v4 = result[17];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *(a2 + 6) = result[4];
  if ((v4 & 8) != 0)
  {
LABEL_5:
    *(a2 + 7) = result[5];
  }

LABEL_6:
  v5 = result[8];
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v5;
    }

    v8 = a2 + 8;
    do
    {
      if (v6 >= v3[8])
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
      }

      result = ProtobufUtil::fromProtobuf(*(*(v3 + 3) + 8 * v6++), v8);
      v8 += 16;
    }

    while (v7 != v6);
    v4 = v3[17];
  }

  if ((v4 & 0x20) != 0)
  {
    *(a2 + 264) = v3[12];
    if ((v4 & 0x40) == 0)
    {
LABEL_17:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  result = ProtobufUtil::fromProtobuf(v3[13]);
  *(a2 + 268) = result;
  v4 = v3[17];
  if ((v4 & 0x80) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_27:
  result = ProtobufUtil::fromProtobuf(v3[14]);
  *(a2 + 272) = result;
  if ((v3[17] & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  *(a2 + 276) = v3[15];
  return result;
}

{
  v2 = result[37];
  if (v2)
  {
    *a2 = result[2];
    v2 = result[37];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = result[3];
  v2 = result[37];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a2 + 8) = result[4];
  v2 = result[37];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a2 + 12) = result[5];
  v2 = result[37];
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a2 + 16) = result[6];
  v2 = result[37];
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a2 + 20) = result[7];
  v2 = result[37];
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a2 + 24) = result[8];
  v2 = result[37];
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a2 + 28) = result[9];
  v2 = result[37];
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a2 + 32) = result[10];
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a2 + 34) = result[11];
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a2 + 36) = result[12];
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a2 + 38) = result[13];
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a2 + 40) = result[14];
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a2 + 42) = result[15];
  if ((v2 & 0x4000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a2 + 44) = result[16];
  if ((v2 & 0x8000) == 0)
  {
LABEL_17:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a2 + 46) = result[17];
  if ((v2 & 0x10000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a2 + 48) = result[18];
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a2 + 50) = result[19];
  if ((v2 & 0x40000) == 0)
  {
LABEL_20:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a2 + 52) = result[20];
  if ((v2 & 0x80000) == 0)
  {
LABEL_21:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a2 + 54) = result[21];
  if ((v2 & 0x100000) == 0)
  {
LABEL_22:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a2 + 56) = result[22];
  if ((v2 & 0x200000) == 0)
  {
LABEL_23:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a2 + 57) = result[23];
  if ((v2 & 0x400000) == 0)
  {
LABEL_24:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a2 + 58) = result[24];
  if ((v2 & 0x800000) == 0)
  {
LABEL_25:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a2 + 59) = result[25];
  if ((v2 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a2 + 60) = result[26];
  if ((v2 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a2 + 61) = result[27];
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a2 + 64) = result[28];
  v2 = result[37];
  if ((v2 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a2 + 68) = result[29];
  if ((v2 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a2 + 72) = result[30];
  v2 = result[37];
  if ((v2 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_66:
    *(a2 + 80) = result[32];
    if ((result[37] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_65:
  *(a2 + 76) = result[31];
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_32:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_67:
  *(a2 + 84) = result[33];
LABEL_33:
  v3 = result[38];
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      return result;
    }

LABEL_69:
    *(a2 + 92) = result[35];
    return result;
  }

  *(a2 + 88) = result[34];
  if ((result[38] & 2) != 0)
  {
    goto LABEL_69;
  }

  return result;
}

{
  v3 = result[16];
  if (v3)
  {
    *a2 = result[2];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 2) = result[3];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 4) = result[4];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 5) = result[5];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 6) = result[6];
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 7) = result[7];
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 8) = result[8];
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a2 + 10) = result[9];
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a2 + 12) = result[10];
  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a2 + 13) = result[11];
  if ((v3 & 0x400) == 0)
  {
LABEL_12:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a2 + 14) = result[12];
  if ((v3 & 0x800) == 0)
  {
LABEL_13:
    if ((v3 & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(a2 + 15) = result[13];
  if ((v3 & 0x1000) == 0)
  {
    return result;
  }

LABEL_14:
  result = ProtobufUtil::fromProtobuf(result[14]);
  *(a2 + 16) = result;
  return result;
}

uint64_t ProtobufUtil::fromProtobuf(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(*(result + 8));
    *a2 = result;
    v4 = v3[6];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = ProtobufUtil::fromProtobuf(v3[3]);
  a2[1] = result;
  if ((v3[6] & 4) == 0)
  {
    return result;
  }

LABEL_4:
  a2[2] = v3[4];
  return result;
}

{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(*(result + 16));
    *a2 = result;
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8);
    }

    return ProtobufUtil::fromProtobuf(v5, (a2 + 1));
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(*(result + 16));
    *a2 = result;
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ + 8);
    }

    return ProtobufUtil::fromProtobuf(v5, (a2 + 2));
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = ProtobufUtil::fromProtobuf(*(result + 16));
    *a2 = result;
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8);
    }

    return ProtobufUtil::fromProtobuf(v5, (a2 + 1));
  }

  return result;
}

{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = ProtobufUtil::fromProtobuf(*(v3 + 12));
    a2[1] = result;
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = gnss::Convert::fromProtobuf(*(result + 8));
  *a2 = result;
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 16);
  if (!v5)
  {
    v5 = *(proto::gnss::Emergency::CellFTAssistance::default_instance_ + 16);
  }

  return ProtobufUtil::fromProtobuf(v5, (a2 + 2));
}

void ProtobufUtil::fromProtobuf(ProtobufUtil *this, const proto::gnss::Emergency::Polygon *a2, Polygon *a3)
{
  if (*(this + 40))
  {
    *a2 = *(this + 8);
  }

  v4 = *(this + 4);
  if (v4 >= 1)
  {
    v5 = 0;
    if (v4 >= 0xF)
    {
      v6 = 15;
    }

    else
    {
      v6 = v4;
    }

    v7 = (a2 + 8);
    do
    {
      if (v5 >= *(this + 4))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v8 = *(*(this + 1) + 8 * v5);
      v9 = v8[5];
      if (v9)
      {
        *(v7 - 1) = v8[2];
        v9 = v8[5];
      }

      if ((v9 & 2) != 0)
      {
        *v7 = v8[3];
      }

      ++v5;
      v7 += 2;
    }

    while (v6 != v5);
  }
}

void sub_1000743F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void ProtobufUtil::fromProtobuf(uint64_t a1, uint64_t a2, Polygon *a3)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 8);
    }

    ProtobufUtil::fromProtobuf(v6, a2);
    v5 = *(a1 + 72);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 16);
  }

  ProtobufUtil::fromProtobuf(v7, a2 + 12);
  v5 = *(a1 + 72);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v8 = *(a1 + 24);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 24);
  }

  ProtobufUtil::fromProtobuf(v8, a2 + 24);
  v5 = *(a1 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(a1 + 32);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 32);
  }

  ProtobufUtil::fromProtobuf(v9, a2 + 40);
  if ((*(a1 + 72) & 0x10) != 0)
  {
LABEL_19:
    v10 = *(a1 + 40);
    if (!v10)
    {
      v10 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 40);
    }

    v11 = v10[5];
    if (v11)
    {
      *(a2 + 56) = v10[2];
      v11 = v10[5];
    }

    if ((v11 & 2) != 0)
    {
      *(a2 + 60) = v10[3];
    }
  }

LABEL_25:
  v12 = *(a1 + 72);
  if ((v12 & 0x20) != 0)
  {
    v13 = *(a1 + 48);
    if (!v13)
    {
      v13 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 48);
    }

    ProtobufUtil::fromProtobuf(v13, a2 + 64);
    v12 = *(a1 + 72);
    if ((v12 & 0x40) == 0)
    {
LABEL_27:
      if ((v12 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_28;
    }
  }

  else if ((v12 & 0x40) == 0)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + 56);
  if (!v14)
  {
    v14 = *(proto::gnss::Emergency::ShapeInfo::default_instance_ + 56);
  }

  ProtobufUtil::fromProtobuf(v14, (a2 + 76), a3);
  if ((*(a1 + 72) & 0x80) != 0)
  {
LABEL_28:
    *(a2 + 200) = *(a1 + 64);
  }
}

void ProtobufUtil::fromProtobuf(uint64_t a1, _DWORD *a2, Polygon *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    *a2 = ProtobufUtil::fromProtobuf(*(a1 + 16));
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(proto::gnss::Emergency::LocEstimate::default_instance_ + 8);
    }

    ProtobufUtil::fromProtobuf(v6, (a2 + 1), a3);
  }
}

{
  v5 = *(a1 + 64);
  if (v5)
  {
    *a2 = ProtobufUtil::fromProtobuf(*(a1 + 8));
    v5 = *(a1 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(a1 + 12);
  v5 = *(a1 + 64);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 16);
  }

  ProtobufUtil::fromProtobuf(v6, a2 + 2);
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_16:
  v7 = *(a1 + 24);
  if (!v7)
  {
    v7 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 24);
  }

  ProtobufUtil::fromProtobuf(v7, (a2 + 5));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_19:
  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 32);
  }

  ProtobufUtil::fromProtobuf(v8, (a2 + 11));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_22:
  v9 = *(a1 + 40);
  if (!v9)
  {
    v9 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 40);
  }

  ProtobufUtil::fromProtobuf(v9, a2 + 16, a3);
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_25:
  v10 = *(a1 + 48);
  if (!v10)
  {
    v10 = *(proto::gnss::Emergency::PositionReport::default_instance_ + 48);
  }

  ProtobufUtil::fromProtobuf(v10, a2 + 68);
  if ((*(a1 + 64) & 0x80) != 0)
  {
LABEL_9:
    a2[75] = *(a1 + 56);
  }
}

_DWORD *ProtobufUtil::fromProtobuf(_DWORD *result, _WORD *a2)
{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

_DWORD *ProtobufUtil::fromProtobuf(_DWORD *result, _BYTE *a2)
{
  v2 = result;
  v3 = result[12];
  if (v3)
  {
    *a2 = result[2];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = result[3];
  if ((v3 & 4) != 0)
  {
LABEL_4:
    a2[2] = result[10];
  }

LABEL_5:
  v4 = result[6];
  if (v4 >= 1)
  {
    v5 = 0;
    if (v4 >= 0x20)
    {
      v6 = 32;
    }

    else
    {
      v6 = v4;
    }

    v7 = (a2 + 4);
    do
    {
      if (v5 >= v2[6])
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
      }

      result = ProtobufUtil::fromProtobuf(*(*(v2 + 2) + 8 * v5++), v7);
      v7 += 24;
    }

    while (v6 != v5);
  }

  return result;
}

{
  v2 = result[7];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = result[3];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = result[5];
    return result;
  }

LABEL_8:
  a2[2] = result[4];
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_100074BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100074FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100075178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000752D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100075438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100075640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007580C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000759E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100075E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *ProtobufUtil::fromProtobuf(int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[17];
  if (v4)
  {
    *a2 = result[2];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 1) = result[3];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 2) = result[4];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 4) = result[5];
  v4 = result[17];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 8) = result[6];
  v4 = result[17];
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 12) = result[7];
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a2 + 13) = result[8];
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a2 + 14) = result[9];
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a2 + 15) = result[10];
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a2 + 16) = result[11];
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a2 + 17) = result[12];
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = ProtobufUtil::fromProtobuf(result[13]);
  *(a2 + 20) = result;
  v4 = v3[17];
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  result = ProtobufUtil::fromProtobuf(v3[14]);
  *(a2 + 24) = result;
  if ((v3[17] & 0x2000) == 0)
  {
    return result;
  }

LABEL_15:
  *(a2 + 28) = v3[15];
  return result;
}

_DWORD *ProtobufUtil::fromProtobuf(_DWORD *this, const proto::gnss::Emergency::GpsNavigationModel *a2, gnss::Emergency::Cplane::GpsNavigationModel *a3)
{
  v4 = this;
  v5 = this[13];
  if (v5)
  {
    *a2 = this[8];
  }

  v6 = this[4];
  if (v6 >= 1)
  {
    v7 = 0;
    if (v6 >= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v6;
    }

    v9 = a2 + 4;
    do
    {
      if (v7 >= *(v4 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      this = ProtobufUtil::fromProtobuf(*(*(v4 + 8) + 8 * v7++), v9);
      v9 += 96;
    }

    while (v8 != v7);
    v5 = *(v4 + 52);
  }

  if ((v5 & 4) != 0)
  {
    this = ProtobufUtil::fromProtobuf(*(v4 + 36));
    *(a2 + 385) = this;
    v5 = *(v4 + 52);
    if ((v5 & 8) == 0)
    {
LABEL_14:
      if ((v5 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_14;
  }

  this = ProtobufUtil::fromProtobuf(*(v4 + 40));
  *(a2 + 386) = this;
  if ((*(v4 + 52) & 0x10) == 0)
  {
    return this;
  }

LABEL_15:
  *(a2 + 387) = *(v4 + 44);
  return this;
}

void sub_1000762D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000766F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *ProtobufUtil::toProtobuf(std::string *__str, uint64_t a2)
{
  *(a2 + 32) |= 1u;
  v4 = *(a2 + 8);
  if (v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v4, __str);
  v5 = *(a2 + 32);
  *(a2 + 24) = __str[1].__r_.__value_.__l.__data_;
  *(a2 + 32) = v5 | 6;
  v6 = *(a2 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v6, (__str + 32));
}

uint64_t ProtobufUtil::toProtobuf(uint64_t *a1, uint64_t a2)
{
  v4 = -1227133513 * ((a1[1] - *a1) >> 3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v4);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    do
    {
      v7 = *a1;
      v8 = *(a2 + 20);
      v9 = *(a2 + 16);
      if (v9 >= v8)
      {
        if (v8 == *(a2 + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v8 + 1);
          v8 = *(a2 + 20);
        }

        *(a2 + 20) = v8 + 1;
        operator new();
      }

      v10 = *(a2 + 8);
      *(a2 + 16) = v9 + 1;
      ProtobufUtil::toProtobuf((v7 + v5), *(v10 + 8 * v9));
      v5 += 56;
      --v6;
    }

    while (v6);
  }

  *(a2 + 44) |= 2u;
  result = *(a2 + 32);
  if (!result)
  {
    operator new();
  }

  v12 = *(result + 20);
  v13 = *(a1 + 24);
  *(result + 20) = v12 | 1;
  *(result + 12) = v13;
  *(result + 8) = *(a1 + 7);
  *(result + 13) = *(a1 + 16);
  *(result + 20) = v12 | 0xF;
  return result;
}

std::string *ProtobufUtil::fromProtobuf(std::string *result, std::string *this)
{
  v3 = result;
  v4 = result[1].__r_.__value_.__r.__words[1];
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    LODWORD(this[1].__r_.__value_.__l.__data_) = v3[1].__r_.__value_.__l.__data_;
    if ((v3[1].__r_.__value_.__r.__words[1] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = std::string::operator=(this, result->__r_.__value_.__l.__size_);
  v4 = v3[1].__r_.__value_.__r.__words[1];
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = v3->__r_.__value_.__r.__words[2];

  return std::string::operator=((this + 32), v5);
}