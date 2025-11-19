void sub_1003BA8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1003BA8F4(void *result)
{
  if (qword_102636048 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[32];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[33];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[34];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    result = v1[35];
    if (result)
    {
      v36 = *(*result + 8);

      return v36();
    }
  }

  return result;
}

void sub_1003BAF40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448CF0;
  sub_1003BA8F4(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003BAF94(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448CF0;
  sub_1003BA8F4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003BB094(uint64_t result)
{
  v1 = result;
  v2 = (result + 292);
  v3 = *(result + 292);
  if (v3)
  {
    if (v3)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_1003A936C(result);
        v3 = *v2;
      }
    }

    if ((v3 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_1003AA970(result);
        v3 = *v2;
      }
    }

    if ((v3 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_1003AB2BC(result);
        v3 = *v2;
      }
    }

    if ((v3 & 8) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 5;
        }

        *(v4 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 7;
        }

        *(v5 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_1003AD20C(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_1003AEA5C(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_1003B04CC(result);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      result = *(v1 + 72);
      if (result)
      {
        result = sub_1003A9E00(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_1003ABEF8(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 31;
        }

        *(v6 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 16))
        {
          *(v7 + 8) = 32;
        }

        *(v7 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 16))
        {
          *(v8 + 8) = 33;
        }

        *(v8 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v9 = *(v1 + 112);
      if (v9)
      {
        if (*(v9 + 16))
        {
          *(v9 + 8) = 34;
        }

        *(v9 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v10 = *(v1 + 120);
      if (v10)
      {
        if (*(v10 + 16))
        {
          *(v10 + 8) = 35;
        }

        *(v10 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      result = *(v1 + 128);
      if (result)
      {
        result = sub_1003B2690(result);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_1003B2EC8(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_1003B36BC(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_1003B3EB0(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      result = *(v1 + 160);
      if (result)
      {
        result = sub_1003B46D0(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_1003B4F7C(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_1003B5930(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_1003B63D0(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      result = *(v1 + 192);
      if (result)
      {
        result = sub_1003B6C94(result);
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      result = *(v1 + 200);
      if (result)
      {
        result = sub_1003B73DC(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = *(v1 + 208);
      if (result)
      {
        result = sub_1003B7DEC(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = *(v1 + 216);
      if (result)
      {
        result = sub_1003B86C0(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      result = *(v1 + 224);
      if (result)
      {
        result = sub_1003BB47C(result);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v11 = *(v1 + 232);
      if (v11)
      {
        if (*(v11 + 20))
        {
          *(v11 + 8) = 0x100000031;
        }

        *(v11 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v12 = *(v1 + 240);
      if (v12)
      {
        if (*(v12 + 20))
        {
          *(v12 + 8) = 50;
          *(v12 + 12) = 0;
        }

        *(v12 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v13 = *(v1 + 248);
      if (v13)
      {
        if (*(v13 + 24))
        {
          *(v13 + 8) = 51;
          *(v13 + 16) = 0;
        }

        *(v13 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      v14 = *(v1 + 256);
      if (v14)
      {
        if (*(v14 + 20))
        {
          *(v14 + 8) = 52;
          *(v14 + 12) = 0;
        }

        *(v14 + 20) = 0;
      }
    }
  }

  LOBYTE(v15) = *(v1 + 296);
  if (v15)
  {
    if (*(v1 + 296))
    {
      v16 = *(v1 + 264);
      if (v16)
      {
        if (*(v16 + 16))
        {
          *(v16 + 8) = 53;
        }

        *(v16 + 16) = 0;
        v15 = *(v1 + 296);
      }
    }

    if ((v15 & 2) != 0)
    {
      v17 = *(v1 + 272);
      if (v17)
      {
        if (*(v17 + 16))
        {
          *(v17 + 8) = 54;
        }

        *(v17 + 16) = 0;
        v15 = *(v1 + 296);
      }
    }

    if ((v15 & 4) != 0)
    {
      result = *(v1 + 280);
      if (result)
      {
        result = sub_1003B9118(result);
      }
    }
  }

  *v2 = 0;
  return result;
}

uint64_t sub_1003BB47C(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    *(result + 24) = 48;
    *(result + 8) = 0;
    *(result + 28) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(result + 16);
      if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(result + 80) & 0x10) != 0)
    {
      v3 = *(result + 32);
      if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(result + 80) & 0x20) != 0)
    {
      v4 = *(result + 40);
      if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(result + 80) & 0x40) != 0)
    {
      v5 = *(result + 48);
      if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(result + 29) = 0;
    v1 = *(result + 80);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(result + 56) = 0;
    *(result + 72) = 0;
    if ((v1 & 0x800) != 0)
    {
      v6 = *(result + 64);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }
  }

  *(result + 80) = 0;
  return result;
}

uint64_t sub_1003BB5C4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0x100000031;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_1003BB5E0(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 50;
    *(result + 12) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_1003BB5FC(uint64_t result)
{
  if (*(result + 24))
  {
    *(result + 8) = 51;
    *(result + 16) = 0;
  }

  *(result + 24) = 0;
  return result;
}

uint64_t sub_1003BB618(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 52;
    *(result + 12) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_1003BB634(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 53;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003BB64C(uint64_t result)
{
  if (*(result + 16))
  {
    *(result + 8) = 54;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1003BB664(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    v5 = *(this + 1);
    if (v5 < *(this + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_80;
        }

        *(a1 + 292) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v324 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v9;
          *(this + 1) = v9 + 1;
        }

        v10 = *(this + 14);
        v11 = *(this + 15);
        *(this + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003A9424(v8, this, v13) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
        v14 = *(this + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(this + 14) = v16;
        }

        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 != 18)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
        goto LABEL_92;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_80;
        }

LABEL_92:
        *(a1 + 292) |= 2u;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v324 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003AAA14(v18, this, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v24 = *(this + 14);
        v15 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v15)
        {
          *(this + 14) = v25;
        }

        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 34)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_106:
        *(a1 + 292) |= 4u;
        v27 = *(a1 + 24);
        if (!v27)
        {
          operator new();
        }

        v324 = 0;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v28;
          *(this + 1) = v28 + 1;
        }

        v29 = *(this + 14);
        v30 = *(this + 15);
        *(this + 14) = v29 + 1;
        if (v29 >= v30)
        {
          return 0;
        }

        v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003AB30C(v27, this, v32) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v31);
        v33 = *(this + 14);
        v15 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (v34 < 0 == v15)
        {
          *(this + 14) = v34;
        }

        v35 = *(this + 1);
        if (v35 >= *(this + 2) || *v35 != 42)
        {
          continue;
        }

        *(this + 1) = v35 + 1;
LABEL_120:
        *(a1 + 292) |= 8u;
        v36 = *(a1 + 32);
        if (!v36)
        {
          operator new();
        }

        v324 = 0;
        v37 = *(this + 1);
        if (v37 >= *(this + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v37;
          *(this + 1) = v37 + 1;
        }

        v38 = *(this + 14);
        v39 = *(this + 15);
        *(this + 14) = v38 + 1;
        if (v38 >= v39)
        {
          return 0;
        }

        v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003AB8A0(v36, this, v41) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
        v42 = *(this + 14);
        v15 = __OFSUB__(v42, 1);
        v43 = v42 - 1;
        if (v43 < 0 == v15)
        {
          *(this + 14) = v43;
        }

        v44 = *(this + 1);
        if (v44 >= *(this + 2) || *v44 != 58)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
LABEL_134:
        *(a1 + 292) |= 0x10u;
        v45 = *(a1 + 40);
        if (!v45)
        {
          operator new();
        }

        v324 = 0;
        v46 = *(this + 1);
        if (v46 >= *(this + 2) || *v46 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v46;
          *(this + 1) = v46 + 1;
        }

        v47 = *(this + 14);
        v48 = *(this + 15);
        *(this + 14) = v47 + 1;
        if (v47 >= v48)
        {
          return 0;
        }

        v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003AC728(v45, this, v50) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v49);
        v51 = *(this + 14);
        v15 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v52 < 0 == v15)
        {
          *(this + 14) = v52;
        }

        v53 = *(this + 1);
        if (v53 >= *(this + 2) || *v53 != 74)
        {
          continue;
        }

        *(this + 1) = v53 + 1;
LABEL_148:
        *(a1 + 292) |= 0x20u;
        v54 = *(a1 + 48);
        if (!v54)
        {
          operator new();
        }

        v324 = 0;
        v55 = *(this + 1);
        if (v55 >= *(this + 2) || *v55 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v55;
          *(this + 1) = v55 + 1;
        }

        v56 = *(this + 14);
        v57 = *(this + 15);
        *(this + 14) = v56 + 1;
        if (v56 >= v57)
        {
          return 0;
        }

        v58 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003AD4CC(v54, this, v59) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v58);
        v60 = *(this + 14);
        v15 = __OFSUB__(v60, 1);
        v61 = v60 - 1;
        if (v61 < 0 == v15)
        {
          *(this + 14) = v61;
        }

        v62 = *(this + 1);
        if (v62 >= *(this + 2) || *v62 != 82)
        {
          continue;
        }

        *(this + 1) = v62 + 1;
LABEL_162:
        *(a1 + 292) |= 0x40u;
        v63 = *(a1 + 56);
        if (!v63)
        {
          operator new();
        }

        v324 = 0;
        v64 = *(this + 1);
        if (v64 >= *(this + 2) || *v64 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v64;
          *(this + 1) = v64 + 1;
        }

        v65 = *(this + 14);
        v66 = *(this + 15);
        *(this + 14) = v65 + 1;
        if (v65 >= v66)
        {
          return 0;
        }

        v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003AEC2C(v63, this, v68) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
        v69 = *(this + 14);
        v15 = __OFSUB__(v69, 1);
        v70 = v69 - 1;
        if (v70 < 0 == v15)
        {
          *(this + 14) = v70;
        }

        v71 = *(this + 1);
        if (v71 >= *(this + 2) || *v71 != 90)
        {
          continue;
        }

        *(this + 1) = v71 + 1;
LABEL_176:
        *(a1 + 292) |= 0x80u;
        v72 = *(a1 + 64);
        if (!v72)
        {
          operator new();
        }

        v324 = 0;
        v73 = *(this + 1);
        if (v73 >= *(this + 2) || *v73 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v73;
          *(this + 1) = v73 + 1;
        }

        v74 = *(this + 14);
        v75 = *(this + 15);
        *(this + 14) = v74 + 1;
        if (v74 >= v75)
        {
          return 0;
        }

        v76 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B0598(v72, this, v77) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v76);
        v78 = *(this + 14);
        v15 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v15)
        {
          *(this + 14) = v79;
        }

        v80 = *(this + 1);
        if (v80 >= *(this + 2) || *v80 != 98)
        {
          continue;
        }

        *(this + 1) = v80 + 1;
LABEL_190:
        *(a1 + 292) |= 0x100u;
        v81 = *(a1 + 72);
        if (!v81)
        {
          operator new();
        }

        v324 = 0;
        v82 = *(this + 1);
        if (v82 >= *(this + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v82;
          *(this + 1) = v82 + 1;
        }

        v83 = *(this + 14);
        v84 = *(this + 15);
        *(this + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        v85 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003A9EBC(v81, this, v86) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v85);
        v87 = *(this + 14);
        v15 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v15)
        {
          *(this + 14) = v88;
        }

        v89 = *(this + 1);
        if (v89 >= *(this + 2) || *v89 != 106)
        {
          continue;
        }

        *(this + 1) = v89 + 1;
LABEL_204:
        *(a1 + 292) |= 0x200u;
        v90 = *(a1 + 80);
        if (!v90)
        {
          operator new();
        }

        v324 = 0;
        v91 = *(this + 1);
        if (v91 >= *(this + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v91;
          *(this + 1) = v91 + 1;
        }

        v92 = *(this + 14);
        v93 = *(this + 15);
        *(this + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        v94 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003ABFB0(v90, this, v95) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v94);
        v96 = *(this + 14);
        v15 = __OFSUB__(v96, 1);
        v97 = v96 - 1;
        if (v97 < 0 == v15)
        {
          *(this + 14) = v97;
        }

        v98 = *(this + 1);
        if (v98 >= *(this + 2) || *v98 != 114)
        {
          continue;
        }

        *(this + 1) = v98 + 1;
LABEL_218:
        *(a1 + 292) |= 0x400u;
        v99 = *(a1 + 88);
        if (!v99)
        {
          operator new();
        }

        v324 = 0;
        v100 = *(this + 1);
        if (v100 >= *(this + 2) || *v100 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v100;
          *(this + 1) = v100 + 1;
        }

        v101 = *(this + 14);
        v102 = *(this + 15);
        *(this + 14) = v101 + 1;
        if (v101 >= v102)
        {
          return 0;
        }

        v103 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B10F8(v99, this, v104) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v103);
        v105 = *(this + 14);
        v15 = __OFSUB__(v105, 1);
        v106 = v105 - 1;
        if (v106 < 0 == v15)
        {
          *(this + 14) = v106;
        }

        v107 = *(this + 1);
        if (v107 >= *(this + 2) || *v107 != 122)
        {
          continue;
        }

        *(this + 1) = v107 + 1;
LABEL_232:
        *(a1 + 292) |= 0x800u;
        v108 = *(a1 + 96);
        if (!v108)
        {
          operator new();
        }

        v324 = 0;
        v109 = *(this + 1);
        if (v109 >= *(this + 2) || *v109 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v109;
          *(this + 1) = v109 + 1;
        }

        v110 = *(this + 14);
        v111 = *(this + 15);
        *(this + 14) = v110 + 1;
        if (v110 >= v111)
        {
          return 0;
        }

        v112 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B1524(v108, this, v113) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v112);
        v114 = *(this + 14);
        v15 = __OFSUB__(v114, 1);
        v115 = v114 - 1;
        if (v115 < 0 == v15)
        {
          *(this + 14) = v115;
        }

        v116 = *(this + 1);
        if (*(this + 4) - v116 <= 1 || *v116 != 130 || v116[1] != 1)
        {
          continue;
        }

        *(this + 1) = v116 + 2;
LABEL_247:
        *(a1 + 292) |= 0x1000u;
        v117 = *(a1 + 104);
        if (!v117)
        {
          operator new();
        }

        v324 = 0;
        v118 = *(this + 1);
        if (v118 >= *(this + 2) || *v118 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v118;
          *(this + 1) = v118 + 1;
        }

        v119 = *(this + 14);
        v120 = *(this + 15);
        *(this + 14) = v119 + 1;
        if (v119 >= v120)
        {
          return 0;
        }

        v121 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B1950(v117, this, v122) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v121);
        v123 = *(this + 14);
        v15 = __OFSUB__(v123, 1);
        v124 = v123 - 1;
        if (v124 < 0 == v15)
        {
          *(this + 14) = v124;
        }

        v125 = *(this + 1);
        if (*(this + 4) - v125 <= 1 || *v125 != 138 || v125[1] != 1)
        {
          continue;
        }

        *(this + 1) = v125 + 2;
LABEL_262:
        *(a1 + 292) |= 0x2000u;
        v126 = *(a1 + 112);
        if (!v126)
        {
          operator new();
        }

        v324 = 0;
        v127 = *(this + 1);
        if (v127 >= *(this + 2) || *v127 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v127;
          *(this + 1) = v127 + 1;
        }

        v128 = *(this + 14);
        v129 = *(this + 15);
        *(this + 14) = v128 + 1;
        if (v128 >= v129)
        {
          return 0;
        }

        v130 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B1D7C(v126, this, v131) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v130);
        v132 = *(this + 14);
        v15 = __OFSUB__(v132, 1);
        v133 = v132 - 1;
        if (v133 < 0 == v15)
        {
          *(this + 14) = v133;
        }

        v134 = *(this + 1);
        if (*(this + 4) - v134 <= 1 || *v134 != 146 || v134[1] != 1)
        {
          continue;
        }

        *(this + 1) = v134 + 2;
LABEL_277:
        *(a1 + 292) |= 0x4000u;
        v135 = *(a1 + 120);
        if (!v135)
        {
          operator new();
        }

        v324 = 0;
        v136 = *(this + 1);
        if (v136 >= *(this + 2) || *v136 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v136;
          *(this + 1) = v136 + 1;
        }

        v137 = *(this + 14);
        v138 = *(this + 15);
        *(this + 14) = v137 + 1;
        if (v137 >= v138)
        {
          return 0;
        }

        v139 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B21A8(v135, this, v140) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v139);
        v141 = *(this + 14);
        v15 = __OFSUB__(v141, 1);
        v142 = v141 - 1;
        if (v142 < 0 == v15)
        {
          *(this + 14) = v142;
        }

        v143 = *(this + 1);
        if (*(this + 4) - v143 <= 1 || *v143 != 154 || v143[1] != 1)
        {
          continue;
        }

        *(this + 1) = v143 + 2;
LABEL_292:
        *(a1 + 292) |= 0x8000u;
        v144 = *(a1 + 128);
        if (!v144)
        {
          operator new();
        }

        v324 = 0;
        v145 = *(this + 1);
        if (v145 >= *(this + 2) || *v145 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v145;
          *(this + 1) = v145 + 1;
        }

        v146 = *(this + 14);
        v147 = *(this + 15);
        *(this + 14) = v146 + 1;
        if (v146 >= v147)
        {
          return 0;
        }

        v148 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B26E4(v144, this, v149) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v148);
        v150 = *(this + 14);
        v15 = __OFSUB__(v150, 1);
        v151 = v150 - 1;
        if (v151 < 0 == v15)
        {
          *(this + 14) = v151;
        }

        v152 = *(this + 1);
        if (*(this + 4) - v152 <= 1 || *v152 != 162 || v152[1] != 1)
        {
          continue;
        }

        *(this + 1) = v152 + 2;
LABEL_307:
        *(a1 + 292) |= 0x10000u;
        v153 = *(a1 + 136);
        if (!v153)
        {
          operator new();
        }

        v324 = 0;
        v154 = *(this + 1);
        if (v154 >= *(this + 2) || *v154 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v154;
          *(this + 1) = v154 + 1;
        }

        v155 = *(this + 14);
        v156 = *(this + 15);
        *(this + 14) = v155 + 1;
        if (v155 >= v156)
        {
          return 0;
        }

        v157 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B2F4C(v153, this, v158) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v157);
        v159 = *(this + 14);
        v15 = __OFSUB__(v159, 1);
        v160 = v159 - 1;
        if (v160 < 0 == v15)
        {
          *(this + 14) = v160;
        }

        v161 = *(this + 1);
        if (*(this + 4) - v161 <= 1 || *v161 != 170 || v161[1] != 1)
        {
          continue;
        }

        *(this + 1) = v161 + 2;
LABEL_322:
        *(a1 + 292) |= 0x20000u;
        v162 = *(a1 + 144);
        if (!v162)
        {
          operator new();
        }

        v324 = 0;
        v163 = *(this + 1);
        if (v163 >= *(this + 2) || *v163 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v163;
          *(this + 1) = v163 + 1;
        }

        v164 = *(this + 14);
        v165 = *(this + 15);
        *(this + 14) = v164 + 1;
        if (v164 >= v165)
        {
          return 0;
        }

        v166 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B3740(v162, this, v167) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v166);
        v168 = *(this + 14);
        v15 = __OFSUB__(v168, 1);
        v169 = v168 - 1;
        if (v169 < 0 == v15)
        {
          *(this + 14) = v169;
        }

        v170 = *(this + 1);
        if (*(this + 4) - v170 <= 1 || *v170 != 178 || v170[1] != 1)
        {
          continue;
        }

        *(this + 1) = v170 + 2;
LABEL_337:
        *(a1 + 292) |= 0x40000u;
        v171 = *(a1 + 152);
        if (!v171)
        {
          operator new();
        }

        v324 = 0;
        v172 = *(this + 1);
        if (v172 >= *(this + 2) || *v172 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v172;
          *(this + 1) = v172 + 1;
        }

        v173 = *(this + 14);
        v174 = *(this + 15);
        *(this + 14) = v173 + 1;
        if (v173 >= v174)
        {
          return 0;
        }

        v175 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B3F34(v171, this, v176) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v175);
        v177 = *(this + 14);
        v15 = __OFSUB__(v177, 1);
        v178 = v177 - 1;
        if (v178 < 0 == v15)
        {
          *(this + 14) = v178;
        }

        v179 = *(this + 1);
        if (*(this + 4) - v179 <= 1 || *v179 != 186 || v179[1] != 1)
        {
          continue;
        }

        *(this + 1) = v179 + 2;
LABEL_352:
        *(a1 + 292) |= 0x80000u;
        v180 = *(a1 + 160);
        if (!v180)
        {
          operator new();
        }

        v324 = 0;
        v181 = *(this + 1);
        if (v181 >= *(this + 2) || *v181 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v181;
          *(this + 1) = v181 + 1;
        }

        v182 = *(this + 14);
        v183 = *(this + 15);
        *(this + 14) = v182 + 1;
        if (v182 >= v183)
        {
          return 0;
        }

        v184 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B4758(v180, this, v185) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v184);
        v186 = *(this + 14);
        v15 = __OFSUB__(v186, 1);
        v187 = v186 - 1;
        if (v187 < 0 == v15)
        {
          *(this + 14) = v187;
        }

        v188 = *(this + 1);
        if (*(this + 4) - v188 <= 1 || *v188 != 194 || v188[1] != 1)
        {
          continue;
        }

        *(this + 1) = v188 + 2;
LABEL_367:
        *(a1 + 292) |= 0x100000u;
        v189 = *(a1 + 168);
        if (!v189)
        {
          operator new();
        }

        v324 = 0;
        v190 = *(this + 1);
        if (v190 >= *(this + 2) || *v190 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v190;
          *(this + 1) = v190 + 1;
        }

        v191 = *(this + 14);
        v192 = *(this + 15);
        *(this + 14) = v191 + 1;
        if (v191 >= v192)
        {
          return 0;
        }

        v193 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B5000(v189, this, v194) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v193);
        v195 = *(this + 14);
        v15 = __OFSUB__(v195, 1);
        v196 = v195 - 1;
        if (v196 < 0 == v15)
        {
          *(this + 14) = v196;
        }

        v197 = *(this + 1);
        if (*(this + 4) - v197 <= 1 || *v197 != 202 || v197[1] != 1)
        {
          continue;
        }

        *(this + 1) = v197 + 2;
LABEL_382:
        *(a1 + 292) |= 0x200000u;
        v198 = *(a1 + 176);
        if (!v198)
        {
          operator new();
        }

        v324 = 0;
        v199 = *(this + 1);
        if (v199 >= *(this + 2) || *v199 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v199;
          *(this + 1) = v199 + 1;
        }

        v200 = *(this + 14);
        v201 = *(this + 15);
        *(this + 14) = v200 + 1;
        if (v200 >= v201)
        {
          return 0;
        }

        v202 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B5A1C(v198, this, v203) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v202);
        v204 = *(this + 14);
        v15 = __OFSUB__(v204, 1);
        v205 = v204 - 1;
        if (v205 < 0 == v15)
        {
          *(this + 14) = v205;
        }

        v206 = *(this + 1);
        if (*(this + 4) - v206 <= 1 || *v206 != 210 || v206[1] != 1)
        {
          continue;
        }

        *(this + 1) = v206 + 2;
LABEL_397:
        *(a1 + 292) |= 0x400000u;
        v207 = *(a1 + 184);
        if (!v207)
        {
          operator new();
        }

        v324 = 0;
        v208 = *(this + 1);
        if (v208 >= *(this + 2) || *v208 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v208;
          *(this + 1) = v208 + 1;
        }

        v209 = *(this + 14);
        v210 = *(this + 15);
        *(this + 14) = v209 + 1;
        if (v209 >= v210)
        {
          return 0;
        }

        v211 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B6488(v207, this, v212) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v211);
        v213 = *(this + 14);
        v15 = __OFSUB__(v213, 1);
        v214 = v213 - 1;
        if (v214 < 0 == v15)
        {
          *(this + 14) = v214;
        }

        v215 = *(this + 1);
        if (*(this + 4) - v215 <= 1 || *v215 != 218 || v215[1] != 1)
        {
          continue;
        }

        *(this + 1) = v215 + 2;
LABEL_412:
        *(a1 + 292) |= 0x800000u;
        v216 = *(a1 + 192);
        if (!v216)
        {
          operator new();
        }

        v324 = 0;
        v217 = *(this + 1);
        if (v217 >= *(this + 2) || *v217 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v217;
          *(this + 1) = v217 + 1;
        }

        v218 = *(this + 14);
        v219 = *(this + 15);
        *(this + 14) = v218 + 1;
        if (v218 >= v219)
        {
          return 0;
        }

        v220 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B6CE4(v216, this, v221) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v220);
        v222 = *(this + 14);
        v15 = __OFSUB__(v222, 1);
        v223 = v222 - 1;
        if (v223 < 0 == v15)
        {
          *(this + 14) = v223;
        }

        v224 = *(this + 1);
        if (*(this + 4) - v224 <= 1 || *v224 != 226 || v224[1] != 1)
        {
          continue;
        }

        *(this + 1) = v224 + 2;
LABEL_427:
        *(a1 + 292) |= 0x1000000u;
        v225 = *(a1 + 200);
        if (!v225)
        {
          operator new();
        }

        v324 = 0;
        v226 = *(this + 1);
        if (v226 >= *(this + 2) || *v226 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v226;
          *(this + 1) = v226 + 1;
        }

        v227 = *(this + 14);
        v228 = *(this + 15);
        *(this + 14) = v227 + 1;
        if (v227 >= v228)
        {
          return 0;
        }

        v229 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B7468(v225, this, v230) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v229);
        v231 = *(this + 14);
        v15 = __OFSUB__(v231, 1);
        v232 = v231 - 1;
        if (v232 < 0 == v15)
        {
          *(this + 14) = v232;
        }

        v233 = *(this + 1);
        if (*(this + 4) - v233 <= 1 || *v233 != 234 || v233[1] != 1)
        {
          continue;
        }

        *(this + 1) = v233 + 2;
LABEL_442:
        *(a1 + 292) |= 0x2000000u;
        v234 = *(a1 + 208);
        if (!v234)
        {
          operator new();
        }

        v324 = 0;
        v235 = *(this + 1);
        if (v235 >= *(this + 2) || *v235 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v235;
          *(this + 1) = v235 + 1;
        }

        v236 = *(this + 14);
        v237 = *(this + 15);
        *(this + 14) = v236 + 1;
        if (v236 >= v237)
        {
          return 0;
        }

        v238 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B7E3C(v234, this, v239) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v238);
        v240 = *(this + 14);
        v15 = __OFSUB__(v240, 1);
        v241 = v240 - 1;
        if (v241 < 0 == v15)
        {
          *(this + 14) = v241;
        }

        v242 = *(this + 1);
        if (*(this + 4) - v242 <= 1 || *v242 != 242 || v242[1] != 1)
        {
          continue;
        }

        *(this + 1) = v242 + 2;
LABEL_457:
        *(a1 + 292) |= 0x4000000u;
        v243 = *(a1 + 216);
        if (!v243)
        {
          operator new();
        }

        v324 = 0;
        v244 = *(this + 1);
        if (v244 >= *(this + 2) || *v244 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v244;
          *(this + 1) = v244 + 1;
        }

        v245 = *(this + 14);
        v246 = *(this + 15);
        *(this + 14) = v245 + 1;
        if (v245 >= v246)
        {
          return 0;
        }

        v247 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B8784(v243, this, v248) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v247);
        v249 = *(this + 14);
        v15 = __OFSUB__(v249, 1);
        v250 = v249 - 1;
        if (v250 < 0 == v15)
        {
          *(this + 14) = v250;
        }

        v251 = *(this + 1);
        if (*(this + 4) - v251 <= 1 || *v251 != 250 || v251[1] != 1)
        {
          continue;
        }

        *(this + 1) = v251 + 2;
LABEL_472:
        *(a1 + 292) |= 0x8000000u;
        v252 = *(a1 + 224);
        if (!v252)
        {
          operator new();
        }

        v324 = 0;
        v253 = *(this + 1);
        if (v253 >= *(this + 2) || *v253 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v253;
          *(this + 1) = v253 + 1;
        }

        v254 = *(this + 14);
        v255 = *(this + 15);
        *(this + 14) = v254 + 1;
        if (v254 >= v255)
        {
          return 0;
        }

        v256 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C22FC(v252, this, v257) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v256);
        v258 = *(this + 14);
        v15 = __OFSUB__(v258, 1);
        v259 = v258 - 1;
        if (v259 < 0 == v15)
        {
          *(this + 14) = v259;
        }

        v260 = *(this + 1);
        if (*(this + 4) - v260 <= 1 || *v260 != 130 || v260[1] != 2)
        {
          continue;
        }

        *(this + 1) = v260 + 2;
LABEL_487:
        *(a1 + 292) |= 0x10000000u;
        v261 = *(a1 + 232);
        if (!v261)
        {
          operator new();
        }

        v324 = 0;
        v262 = *(this + 1);
        if (v262 >= *(this + 2) || *v262 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v262;
          *(this + 1) = v262 + 1;
        }

        v263 = *(this + 14);
        v264 = *(this + 15);
        *(this + 14) = v263 + 1;
        if (v263 >= v264)
        {
          return 0;
        }

        v265 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C2FC8(v261, this, v266) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v265);
        v267 = *(this + 14);
        v15 = __OFSUB__(v267, 1);
        v268 = v267 - 1;
        if (v268 < 0 == v15)
        {
          *(this + 14) = v268;
        }

        v269 = *(this + 1);
        if (*(this + 4) - v269 <= 1 || *v269 != 138 || v269[1] != 2)
        {
          continue;
        }

        *(this + 1) = v269 + 2;
LABEL_502:
        *(a1 + 292) |= 0x20000000u;
        v270 = *(a1 + 240);
        if (!v270)
        {
          operator new();
        }

        v324 = 0;
        v271 = *(this + 1);
        if (v271 >= *(this + 2) || *v271 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v271;
          *(this + 1) = v271 + 1;
        }

        v272 = *(this + 14);
        v273 = *(this + 15);
        *(this + 14) = v272 + 1;
        if (v272 >= v273)
        {
          return 0;
        }

        v274 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C3444(v270, this, v275) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v274);
        v276 = *(this + 14);
        v15 = __OFSUB__(v276, 1);
        v277 = v276 - 1;
        if (v277 < 0 == v15)
        {
          *(this + 14) = v277;
        }

        v278 = *(this + 1);
        if (*(this + 4) - v278 <= 1 || *v278 != 146 || v278[1] != 2)
        {
          continue;
        }

        *(this + 1) = v278 + 2;
LABEL_517:
        *(a1 + 292) |= 0x40000000u;
        v279 = *(a1 + 248);
        if (!v279)
        {
          operator new();
        }

        v324 = 0;
        v280 = *(this + 1);
        if (v280 >= *(this + 2) || *v280 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v280;
          *(this + 1) = v280 + 1;
        }

        v281 = *(this + 14);
        v282 = *(this + 15);
        *(this + 14) = v281 + 1;
        if (v281 >= v282)
        {
          return 0;
        }

        v283 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C3878(v279, this, v284) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v283);
        v285 = *(this + 14);
        v15 = __OFSUB__(v285, 1);
        v286 = v285 - 1;
        if (v286 < 0 == v15)
        {
          *(this + 14) = v286;
        }

        v287 = *(this + 1);
        if (*(this + 4) - v287 <= 1 || *v287 != 154 || v287[1] != 2)
        {
          continue;
        }

        *(this + 1) = v287 + 2;
LABEL_532:
        *(a1 + 292) |= 0x80000000;
        v288 = *(a1 + 256);
        if (!v288)
        {
          operator new();
        }

        v324 = 0;
        v289 = *(this + 1);
        if (v289 >= *(this + 2) || *v289 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v289;
          *(this + 1) = v289 + 1;
        }

        v290 = *(this + 14);
        v291 = *(this + 15);
        *(this + 14) = v290 + 1;
        if (v290 >= v291)
        {
          return 0;
        }

        v292 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C4004(v288, this, v293) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v292);
        v294 = *(this + 14);
        v15 = __OFSUB__(v294, 1);
        v295 = v294 - 1;
        if (v295 < 0 == v15)
        {
          *(this + 14) = v295;
        }

        v296 = *(this + 1);
        if (*(this + 4) - v296 <= 1 || *v296 != 162 || v296[1] != 2)
        {
          continue;
        }

        *(this + 1) = v296 + 2;
LABEL_547:
        *(a1 + 296) |= 1u;
        v297 = *(a1 + 264);
        if (!v297)
        {
          operator new();
        }

        v324 = 0;
        v298 = *(this + 1);
        if (v298 >= *(this + 2) || *v298 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v298;
          *(this + 1) = v298 + 1;
        }

        v299 = *(this + 14);
        v300 = *(this + 15);
        *(this + 14) = v299 + 1;
        if (v299 >= v300)
        {
          return 0;
        }

        v301 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C443C(v297, this, v302) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v301);
        v303 = *(this + 14);
        v15 = __OFSUB__(v303, 1);
        v304 = v303 - 1;
        if (v304 < 0 == v15)
        {
          *(this + 14) = v304;
        }

        v305 = *(this + 1);
        if (*(this + 4) - v305 <= 1 || *v305 != 170 || v305[1] != 2)
        {
          continue;
        }

        *(this + 1) = v305 + 2;
LABEL_562:
        *(a1 + 296) |= 2u;
        v306 = *(a1 + 272);
        if (!v306)
        {
          operator new();
        }

        v324 = 0;
        v307 = *(this + 1);
        if (v307 >= *(this + 2) || *v307 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v307;
          *(this + 1) = v307 + 1;
        }

        v308 = *(this + 14);
        v309 = *(this + 15);
        *(this + 14) = v308 + 1;
        if (v308 >= v309)
        {
          return 0;
        }

        v310 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003C4780(v306, this, v311) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v310);
        v312 = *(this + 14);
        v15 = __OFSUB__(v312, 1);
        v313 = v312 - 1;
        if (v313 < 0 == v15)
        {
          *(this + 14) = v313;
        }

        v314 = *(this + 1);
        if (*(this + 4) - v314 <= 1 || *v314 != 178 || v314[1] != 2)
        {
          continue;
        }

        *(this + 1) = v314 + 2;
LABEL_577:
        *(a1 + 296) |= 4u;
        v315 = *(a1 + 280);
        if (!v315)
        {
          operator new();
        }

        v324 = 0;
        v316 = *(this + 1);
        if (v316 >= *(this + 2) || *v316 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v324))
          {
            return 0;
          }
        }

        else
        {
          v324 = *v316;
          *(this + 1) = v316 + 1;
        }

        v317 = *(this + 14);
        v318 = *(this + 15);
        *(this + 14) = v317 + 1;
        if (v317 >= v318)
        {
          return 0;
        }

        v319 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v324);
        if (!sub_1003B9168(v315, this, v320) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v319);
        v321 = *(this + 14);
        v15 = __OFSUB__(v321, 1);
        v322 = v321 - 1;
        if (v322 < 0 == v15)
        {
          *(this + 14) = v322;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        break;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_106;
        }

        goto LABEL_80;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_120;
        }

        goto LABEL_80;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_134;
        }

        goto LABEL_80;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_148;
        }

        goto LABEL_80;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_162;
        }

        goto LABEL_80;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_176;
        }

        goto LABEL_80;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_190;
        }

        goto LABEL_80;
      case 0xDu:
        if (v7 == 2)
        {
          goto LABEL_204;
        }

        goto LABEL_80;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_218;
        }

        goto LABEL_80;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_232;
        }

        goto LABEL_80;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_247;
        }

        goto LABEL_80;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_262;
        }

        goto LABEL_80;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_277;
        }

        goto LABEL_80;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_292;
        }

        goto LABEL_80;
      case 0x14u:
        if (v7 == 2)
        {
          goto LABEL_307;
        }

        goto LABEL_80;
      case 0x15u:
        if (v7 == 2)
        {
          goto LABEL_322;
        }

        goto LABEL_80;
      case 0x16u:
        if (v7 == 2)
        {
          goto LABEL_337;
        }

        goto LABEL_80;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_352;
        }

        goto LABEL_80;
      case 0x18u:
        if (v7 == 2)
        {
          goto LABEL_367;
        }

        goto LABEL_80;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_80;
      case 0x1Au:
        if (v7 == 2)
        {
          goto LABEL_397;
        }

        goto LABEL_80;
      case 0x1Bu:
        if (v7 == 2)
        {
          goto LABEL_412;
        }

        goto LABEL_80;
      case 0x1Cu:
        if (v7 == 2)
        {
          goto LABEL_427;
        }

        goto LABEL_80;
      case 0x1Du:
        if (v7 == 2)
        {
          goto LABEL_442;
        }

        goto LABEL_80;
      case 0x1Eu:
        if (v7 == 2)
        {
          goto LABEL_457;
        }

        goto LABEL_80;
      case 0x1Fu:
        if (v7 == 2)
        {
          goto LABEL_472;
        }

        goto LABEL_80;
      case 0x20u:
        if (v7 == 2)
        {
          goto LABEL_487;
        }

        goto LABEL_80;
      case 0x21u:
        if (v7 == 2)
        {
          goto LABEL_502;
        }

        goto LABEL_80;
      case 0x22u:
        if (v7 == 2)
        {
          goto LABEL_517;
        }

        goto LABEL_80;
      case 0x23u:
        if (v7 == 2)
        {
          goto LABEL_532;
        }

        goto LABEL_80;
      case 0x24u:
        if (v7 != 2)
        {
          goto LABEL_80;
        }

        goto LABEL_547;
      case 0x25u:
        if (v7 == 2)
        {
          goto LABEL_562;
        }

        goto LABEL_80;
      case 0x26u:
        if (v7 == 2)
        {
          goto LABEL_577;
        }

        goto LABEL_80;
      default:
LABEL_80:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1003BE18C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 292);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636048 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 292);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636048 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636048 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636048 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102636048 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102636048 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102636048 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_102636048 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(qword_102636048 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_61:
  v16 = *(v5 + 80);
  if (!v16)
  {
    v16 = *(qword_102636048 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_64:
  v17 = *(v5 + 88);
  if (!v17)
  {
    v17 = *(qword_102636048 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

LABEL_67:
  v18 = *(v5 + 96);
  if (!v18)
  {
    v18 = *(qword_102636048 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_70:
  v19 = *(v5 + 104);
  if (!v19)
  {
    v19 = *(qword_102636048 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 112);
  if (!v20)
  {
    v20 = *(qword_102636048 + 112);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 120);
  if (!v21)
  {
    v21 = *(qword_102636048 + 120);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 128);
  if (!v22)
  {
    v22 = *(qword_102636048 + 128);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 136);
  if (!v23)
  {
    v23 = *(qword_102636048 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 144);
  if (!v24)
  {
    v24 = *(qword_102636048 + 144);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 152);
  if (!v25)
  {
    v25 = *(qword_102636048 + 152);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 160);
  if (!v26)
  {
    v26 = *(qword_102636048 + 160);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v27 = *(v5 + 168);
  if (!v27)
  {
    v27 = *(qword_102636048 + 168);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v28 = *(v5 + 176);
  if (!v28)
  {
    v28 = *(qword_102636048 + 176);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v29 = *(v5 + 184);
  if (!v29)
  {
    v29 = *(qword_102636048 + 184);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_103:
  v30 = *(v5 + 192);
  if (!v30)
  {
    v30 = *(qword_102636048 + 192);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_106:
  v31 = *(v5 + 200);
  if (!v31)
  {
    v31 = *(qword_102636048 + 200);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_109:
  v32 = *(v5 + 208);
  if (!v32)
  {
    v32 = *(qword_102636048 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1D, v32, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_115;
  }

LABEL_112:
  v33 = *(v5 + 216);
  if (!v33)
  {
    v33 = *(qword_102636048 + 216);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v33, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_118;
  }

LABEL_115:
  v34 = *(v5 + 224);
  if (!v34)
  {
    v34 = *(qword_102636048 + 224);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v34, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_118:
  v35 = *(v5 + 232);
  if (!v35)
  {
    v35 = *(qword_102636048 + 232);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v35, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_124;
  }

LABEL_121:
  v36 = *(v5 + 240);
  if (!v36)
  {
    v36 = *(qword_102636048 + 240);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x21, v36, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_127;
  }

LABEL_124:
  v37 = *(v5 + 248);
  if (!v37)
  {
    v37 = *(qword_102636048 + 248);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, v37, a2, a4);
  if ((*(v5 + 292) & 0x80000000) != 0)
  {
LABEL_127:
    v38 = *(v5 + 256);
    if (!v38)
    {
      v38 = *(qword_102636048 + 256);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v38, a2, a4);
  }

LABEL_130:
  v39 = *(v5 + 296);
  if (v39)
  {
    v40 = *(v5 + 264);
    if (!v40)
    {
      v40 = *(qword_102636048 + 264);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x24, v40, a2, a4);
    v39 = *(v5 + 296);
    if ((v39 & 2) == 0)
    {
LABEL_132:
      if ((v39 & 4) == 0)
      {
        return result;
      }

      goto LABEL_140;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_132;
  }

  v41 = *(v5 + 272);
  if (!v41)
  {
    v41 = *(qword_102636048 + 272);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x25, v41, a2, a4);
  if ((*(v5 + 296) & 4) != 0)
  {
LABEL_140:
    v42 = *(v5 + 280);
    if (!v42)
    {
      v42 = *(qword_102636048 + 280);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x26, v42, a2, a4);
  }

  return result;
}

uint64_t sub_1003BE7C8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 292);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636048 + 8);
  }

  v6 = sub_1003A985C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636048 + 16);
    }

    v10 = sub_1003AAE78(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 292);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102636048 + 24);
    }

    v14 = sub_1003AB574(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 292);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_102636048 + 32);
  }

  v18 = sub_1003ABA1C(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_102636048 + 40);
  }

  v22 = sub_1003AC8A4(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = *(qword_102636048 + 48);
  }

  v26 = sub_1003ADE54(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(a1 + 56);
  if (!v29)
  {
    v29 = *(qword_102636048 + 56);
  }

  v30 = sub_1003AF3DC(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 64);
    if (!v33)
    {
      v33 = *(qword_102636048 + 64);
    }

    v34 = sub_1003B0C40(v33, a2);
    v35 = v34;
    if (v34 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
    }

    else
    {
      v36 = 1;
    }

    v4 = (v4 + v35 + v36 + 1);
    v3 = *(a1 + 292);
  }

LABEL_61:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x100) != 0)
  {
    v37 = *(a1 + 72);
    if (!v37)
    {
      v37 = *(qword_102636048 + 72);
    }

    v38 = sub_1003AA2F4(v37, a2);
    v39 = v38;
    if (v38 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
    }

    else
    {
      v40 = 1;
    }

    v4 = (v4 + v39 + v40 + 1);
    v3 = *(a1 + 292);
    if ((v3 & 0x200) == 0)
    {
LABEL_64:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v41 = *(a1 + 80);
  if (!v41)
  {
    v41 = *(qword_102636048 + 80);
  }

  v42 = sub_1003AC344(v41, a2);
  v43 = v42;
  if (v42 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
  }

  else
  {
    v44 = 1;
  }

  v4 = (v4 + v43 + v44 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x400) == 0)
  {
LABEL_65:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v45 = *(a1 + 88);
  if (!v45)
  {
    v45 = *(qword_102636048 + 88);
  }

  v46 = sub_1003B1274(v45, a2);
  v47 = v46;
  if (v46 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
  }

  else
  {
    v48 = 1;
  }

  v4 = (v4 + v47 + v48 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x800) == 0)
  {
LABEL_66:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v49 = *(a1 + 96);
  if (!v49)
  {
    v49 = *(qword_102636048 + 96);
  }

  v50 = sub_1003B16A0(v49, a2);
  v51 = v50;
  if (v50 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
  }

  else
  {
    v52 = 1;
  }

  v4 = (v4 + v51 + v52 + 1);
  v3 = *(a1 + 292);
  if ((v3 & 0x1000) == 0)
  {
LABEL_67:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v53 = *(a1 + 104);
  if (!v53)
  {
    v53 = *(qword_102636048 + 104);
  }

  v54 = sub_1003B1ACC(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
  }

  else
  {
    v56 = 1;
  }

  v4 = (v4 + v55 + v56 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x2000) == 0)
  {
LABEL_68:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v57 = *(a1 + 112);
  if (!v57)
  {
    v57 = *(qword_102636048 + 112);
  }

  v58 = sub_1003B1EF8(v57, a2);
  v59 = v58;
  if (v58 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
  }

  else
  {
    v60 = 1;
  }

  v4 = (v4 + v59 + v60 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x4000) == 0)
  {
LABEL_69:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v61 = *(a1 + 120);
  if (!v61)
  {
    v61 = *(qword_102636048 + 120);
  }

  v62 = sub_1003B2324(v61, a2);
  v63 = v62;
  if (v62 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2);
  }

  else
  {
    v64 = 1;
  }

  v4 = (v4 + v63 + v64 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x8000) != 0)
  {
LABEL_113:
    v65 = *(a1 + 128);
    if (!v65)
    {
      v65 = *(qword_102636048 + 128);
    }

    v66 = sub_1003B29E0(v65, a2);
    v67 = v66;
    if (v66 >= 0x80)
    {
      v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66, a2);
    }

    else
    {
      v68 = 1;
    }

    v4 = (v4 + v67 + v68 + 2);
    v3 = *(a1 + 292);
  }

LABEL_119:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v3 & 0x10000) != 0)
  {
    v69 = *(a1 + 136);
    if (!v69)
    {
      v69 = *(qword_102636048 + 136);
    }

    v70 = sub_1003B3248(v69, a2);
    v71 = v70;
    if (v70 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2);
    }

    else
    {
      v72 = 1;
    }

    v4 = (v4 + v71 + v72 + 2);
    v3 = *(a1 + 292);
    if ((v3 & 0x20000) == 0)
    {
LABEL_122:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v73 = *(a1 + 144);
  if (!v73)
  {
    v73 = *(qword_102636048 + 144);
  }

  v74 = sub_1003B3A3C(v73, a2);
  v75 = v74;
  if (v74 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74, a2);
  }

  else
  {
    v76 = 1;
  }

  v4 = (v4 + v75 + v76 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x40000) == 0)
  {
LABEL_123:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v77 = *(a1 + 152);
  if (!v77)
  {
    v77 = *(qword_102636048 + 152);
  }

  v78 = sub_1003B4230(v77, a2);
  v79 = v78;
  if (v78 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78, a2);
  }

  else
  {
    v80 = 1;
  }

  v4 = (v4 + v79 + v80 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x80000) == 0)
  {
LABEL_124:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v81 = *(a1 + 160);
  if (!v81)
  {
    v81 = *(qword_102636048 + 160);
  }

  v82 = sub_1003B4AF8(v81, a2);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82, a2);
  }

  else
  {
    v84 = 1;
  }

  v4 = (v4 + v83 + v84 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x100000) == 0)
  {
LABEL_125:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v85 = *(a1 + 168);
  if (!v85)
  {
    v85 = *(qword_102636048 + 168);
  }

  v86 = sub_1003B52FC(v85, a2);
  v87 = v86;
  if (v86 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86, a2);
  }

  else
  {
    v88 = 1;
  }

  v4 = (v4 + v87 + v88 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x200000) == 0)
  {
LABEL_126:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v89 = *(a1 + 176);
  if (!v89)
  {
    v89 = *(qword_102636048 + 176);
  }

  v90 = sub_1003B5E44(v89, a2);
  v91 = v90;
  if (v90 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90, a2);
  }

  else
  {
    v92 = 1;
  }

  v4 = (v4 + v91 + v92 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x400000) == 0)
  {
LABEL_127:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v93 = *(a1 + 184);
  if (!v93)
  {
    v93 = *(qword_102636048 + 184);
  }

  v94 = sub_1003B681C(v93, a2);
  v95 = v94;
  if (v94 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94, a2);
  }

  else
  {
    v96 = 1;
  }

  v4 = (v4 + v95 + v96 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x800000) != 0)
  {
LABEL_171:
    v97 = *(a1 + 192);
    if (!v97)
    {
      v97 = *(qword_102636048 + 192);
    }

    v98 = sub_1003B6F4C(v97, a2);
    v99 = v98;
    if (v98 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98, a2);
    }

    else
    {
      v100 = 1;
    }

    v4 = (v4 + v99 + v100 + 2);
    v3 = *(a1 + 292);
  }

LABEL_177:
  if (!HIBYTE(v3))
  {
    goto LABEL_235;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v101 = *(a1 + 200);
    if (!v101)
    {
      v101 = *(qword_102636048 + 200);
    }

    v102 = sub_1003B7934(v101, a2);
    v103 = v102;
    if (v102 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102, a2);
    }

    else
    {
      v104 = 1;
    }

    v4 = (v4 + v103 + v104 + 2);
    v3 = *(a1 + 292);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_180:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_199;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  v105 = *(a1 + 208);
  if (!v105)
  {
    v105 = *(qword_102636048 + 208);
  }

  v106 = sub_1003B80A4(v105, a2);
  v107 = v106;
  if (v106 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106, a2);
  }

  else
  {
    v108 = 1;
  }

  v4 = (v4 + v107 + v108 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_181:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_199:
  v109 = *(a1 + 216);
  if (!v109)
  {
    v109 = *(qword_102636048 + 216);
  }

  v110 = sub_1003B8C58(v109, a2);
  v111 = v110;
  if (v110 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110, a2);
  }

  else
  {
    v112 = 1;
  }

  v4 = (v4 + v111 + v112 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_211;
  }

LABEL_205:
  v113 = *(a1 + 224);
  if (!v113)
  {
    v113 = *(qword_102636048 + 224);
  }

  v114 = sub_1003C2B48(v113, a2);
  v115 = v114;
  if (v114 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114, a2);
  }

  else
  {
    v116 = 1;
  }

  v4 = (v4 + v115 + v116 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_183:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_217;
  }

LABEL_211:
  v117 = *(a1 + 232);
  if (!v117)
  {
    v117 = *(qword_102636048 + 232);
  }

  v118 = sub_1003C322C(v117, a2);
  v119 = v118;
  if (v118 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118, a2);
  }

  else
  {
    v120 = 1;
  }

  v4 = (v4 + v119 + v120 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_184:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_223;
  }

LABEL_217:
  v121 = *(a1 + 240);
  if (!v121)
  {
    v121 = *(qword_102636048 + 240);
  }

  v122 = sub_1003C369C(v121, a2);
  v123 = v122;
  if (v122 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122, a2);
  }

  else
  {
    v124 = 1;
  }

  v4 = (v4 + v123 + v124 + 2);
  v3 = *(a1 + 292);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_185:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  v125 = *(a1 + 248);
  if (!v125)
  {
    v125 = *(qword_102636048 + 248);
  }

  v126 = sub_1003C3DF0(v125, a2);
  v127 = v126;
  if (v126 >= 0x80)
  {
    v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126, a2);
  }

  else
  {
    v128 = 1;
  }

  v4 = (v4 + v127 + v128 + 2);
  if ((*(a1 + 292) & 0x80000000) != 0)
  {
LABEL_229:
    v129 = *(a1 + 256);
    if (!v129)
    {
      v129 = *(qword_102636048 + 256);
    }

    v130 = sub_1003C425C(v129, a2);
    v131 = v130;
    if (v130 >= 0x80)
    {
      v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130, a2);
    }

    else
    {
      v132 = 1;
    }

    v4 = (v4 + v131 + v132 + 2);
  }

LABEL_235:
  LOBYTE(v133) = *(a1 + 296);
  if (!v133)
  {
    goto LABEL_258;
  }

  if (*(a1 + 296))
  {
    v134 = *(a1 + 264);
    if (!v134)
    {
      v134 = *(qword_102636048 + 264);
    }

    v135 = sub_1003C45B8(v134, a2);
    v136 = v135;
    if (v135 >= 0x80)
    {
      v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135, a2);
    }

    else
    {
      v137 = 1;
    }

    v4 = (v4 + v136 + v137 + 2);
    v133 = *(a1 + 296);
    if ((v133 & 2) == 0)
    {
LABEL_238:
      if ((v133 & 4) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_252;
    }
  }

  else if ((*(a1 + 296) & 2) == 0)
  {
    goto LABEL_238;
  }

  v138 = *(a1 + 272);
  if (!v138)
  {
    v138 = *(qword_102636048 + 272);
  }

  v139 = sub_1003C48FC(v138, a2);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139, a2);
  }

  else
  {
    v141 = 1;
  }

  v4 = (v4 + v140 + v141 + 2);
  if ((*(a1 + 296) & 4) != 0)
  {
LABEL_252:
    v142 = *(a1 + 280);
    if (!v142)
    {
      v142 = *(qword_102636048 + 280);
    }

    v143 = sub_1003B93D0(v142, a2);
    v145 = v143;
    if (v143 >= 0x80)
    {
      v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143, v144);
    }

    else
    {
      v146 = 1;
    }

    v4 = (v4 + v145 + v146 + 2);
  }

LABEL_258:
  *(a1 + 288) = v4;
  return v4;
}

void sub_1003BF288(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003B95F0(a1, lpsrc);
}

void sub_1003BF310(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 80);
  if (!v4)
  {
    goto LABEL_19;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      sub_10187258C();
    }

    *(a1 + 80) |= 1u;
    *(a1 + 24) = v5;
    v4 = *(a2 + 80);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 8);
    *(a1 + 80) |= 2u;
    *(a1 + 8) = v6;
    v4 = *(a2 + 80);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 28);
    *(a1 + 80) |= 4u;
    *(a1 + 28) = v7;
    v4 = *(a2 + 80);
  }

  if ((v4 & 8) != 0)
  {
    v14 = *(a2 + 16);
    *(a1 + 80) |= 8u;
    v15 = *(a1 + 16);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 80);
    if ((v4 & 0x10) == 0)
    {
LABEL_15:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_40:
      v18 = *(a2 + 40);
      *(a1 + 80) |= 0x20u;
      v19 = *(a1 + 40);
      if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v19, v18);
      v4 = *(a2 + 80);
      if ((v4 & 0x40) == 0)
      {
LABEL_17:
        if ((v4 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_43;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v16 = *(a2 + 32);
  *(a1 + 80) |= 0x10u;
  v17 = *(a1 + 32);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v4 = *(a2 + 80);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_43:
  v20 = *(a2 + 48);
  *(a1 + 80) |= 0x40u;
  v21 = *(a1 + 48);
  if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v4 = *(a2 + 80);
  if ((v4 & 0x80) != 0)
  {
LABEL_18:
    v8 = *(a2 + 29);
    *(a1 + 80) |= 0x80u;
    *(a1 + 29) = v8;
    v4 = *(a2 + 80);
  }

LABEL_19:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v9 = *(a2 + 56);
      if (v9 >= 2)
      {
        sub_1018725B8();
      }

      *(a1 + 80) |= 0x100u;
      *(a1 + 56) = v9;
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x200) != 0)
    {
      v10 = *(a2 + 60);
      if (v10 >= 6)
      {
        sub_1018725E4();
      }

      *(a1 + 80) |= 0x200u;
      *(a1 + 60) = v10;
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x400) != 0)
    {
      v11 = *(a2 + 72);
      if (v11 >= 6)
      {
        sub_101872610();
      }

      *(a1 + 80) |= 0x400u;
      *(a1 + 72) = v11;
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x800) != 0)
    {
      v12 = *(a2 + 64);
      *(a1 + 80) |= 0x800u;
      v13 = *(a1 + 64);
      if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
    }
  }
}

void sub_1003BF660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003BF678(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_10187263C();
      }

      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      if ((v6 - 1) >= 2 && v6 != 255)
      {
        sub_101872668();
      }

      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_1003BF768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003BF780(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_101872694();
      }

      *(a1 + 20) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 20) |= 2u;
      *(a1 + 12) = v6;
    }
  }
}

void sub_1003BF858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003BF870(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 24))
  {
    v5 = *(a2 + 8);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      sub_1018726C0();
    }

    *(a1 + 24) |= 1u;
    *(a1 + 8) = v5;
    v4 = *(a2 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 12);
    *(a1 + 24) |= 2u;
    *(a1 + 12) = v7;
    v4 = *(a2 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 13);
  *(a1 + 24) |= 4u;
  *(a1 + 13) = v8;
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    v10 = *(a2 + 15);
    *(a1 + 24) |= 0x10u;
    *(a1 + 15) = v10;
    v4 = *(a2 + 24);
    if ((v4 & 0x20) == 0)
    {
LABEL_14:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a2 + 14);
  *(a1 + 24) |= 8u;
  *(a1 + 14) = v9;
  v4 = *(a2 + 24);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v11 = *(a2 + 16);
  *(a1 + 24) |= 0x20u;
  *(a1 + 16) = v11;
  if ((*(a2 + 24) & 0x40) != 0)
  {
LABEL_15:
    v6 = *(a2 + 17);
    *(a1 + 24) |= 0x40u;
    *(a1 + 17) = v6;
  }
}

void sub_1003BF9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003BFA04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        sub_1018726EC();
      }

      *(a1 + 20) |= 1u;
      *(a1 + 8) = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(a1 + 20) |= 2u;
      *(a1 + 12) = v6;
    }
  }
}

void sub_1003BFADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003BFAF4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      sub_101872718();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003BFBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003BFBC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 8);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      sub_101872744();
    }

    *(a1 + 16) |= 1u;
    *(a1 + 8) = v4;
  }
}

void sub_1003BFC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BFCAC(uint64_t a1, uint64_t a2)
{
  *a1 = off_102448D68;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  *(a1 + 128) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  sub_1003BFD5C(a1, a2);
  return a1;
}

void sub_1003BFD28(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_1003BFD5C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = *(a2 + 112);
  if (v4)
  {
    sub_1003945DC(a1 + 104, *(a1 + 112) + v4);
    memcpy((*(a1 + 104) + 4 * *(a1 + 112)), *(a2 + 104), 4 * *(a2 + 112));
    *(a1 + 112) += *(a2 + 112);
  }

  v5 = *(a2 + 128);
  if (!v5)
  {
    goto LABEL_50;
  }

  if (v5)
  {
    v6 = *(a2 + 72);
    if (v6 - 31 >= 0x19 && (v6 > 0xE || ((1 << v6) & 0x76B6) == 0))
    {
      sub_101872770();
    }

    *(a1 + 128) |= 1u;
    *(a1 + 72) = v6;
    v5 = *(a2 + 128);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 8);
    *(a1 + 128) |= 2u;
    *(a1 + 8) = v7;
    v5 = *(a2 + 128);
    if ((v5 & 4) == 0)
    {
LABEL_13:
      if ((v5 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_13;
  }

  *(a1 + 128) |= 4u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636050 + 16);
  }

  sub_1003A8F54(v8, v9);
  v5 = *(a2 + 128);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(a1 + 128) |= 8u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = *(qword_102636050 + 24);
  }

  sub_1003AA55C(v10, v11);
  v5 = *(a2 + 128);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_35:
    *(a1 + 128) |= 0x20u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 40);
    if (!v15)
    {
      v15 = *(qword_102636050 + 40);
    }

    sub_1003AB6EC(v14, v15);
    v5 = *(a2 + 128);
    if ((v5 & 0x40) == 0)
    {
LABEL_17:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_30:
  *(a1 + 128) |= 0x10u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    v13 = *(qword_102636050 + 32);
  }

  sub_1003AB074(v12, v13);
  v5 = *(a2 + 128);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_40:
  *(a1 + 128) |= 0x40u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 48);
  if (!v17)
  {
    v17 = *(qword_102636050 + 48);
  }

  sub_1003AC574(v16, v17);
  v5 = *(a2 + 128);
  if ((v5 & 0x80) != 0)
  {
LABEL_45:
    *(a1 + 128) |= 0x80u;
    v18 = *(a1 + 56);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 56);
    if (!v19)
    {
      v19 = *(qword_102636050 + 56);
    }

    sub_1003AC9A0(v18, v19);
    v5 = *(a2 + 128);
  }

LABEL_50:
  if ((v5 & 0xFF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    *(a1 + 128) |= 0x100u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 64);
    if (!v21)
    {
      v21 = *(qword_102636050 + 64);
    }

    sub_1003AE3DC(v20, v21);
    v5 = *(a2 + 128);
    if ((v5 & 0x200) == 0)
    {
LABEL_53:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_69;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  *(a1 + 128) |= 0x200u;
  v22 = *(a1 + 80);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 80);
  if (!v23)
  {
    v23 = *(qword_102636050 + 80);
  }

  sub_1003AFF54(v22, v23);
  v5 = *(a2 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_54:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_74;
  }

LABEL_69:
  *(a1 + 128) |= 0x400u;
  v24 = *(a1 + 88);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 88);
  if (!v25)
  {
    v25 = *(qword_102636050 + 88);
  }

  sub_1003A9AC4(v24, v25);
  v5 = *(a2 + 128);
  if ((v5 & 0x800) == 0)
  {
LABEL_55:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_75;
  }

LABEL_74:
  v26 = *(a2 + 76);
  *(a1 + 128) |= 0x800u;
  *(a1 + 76) = v26;
  v5 = *(a2 + 128);
  if ((v5 & 0x1000) == 0)
  {
LABEL_56:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

LABEL_80:
    v29 = *(a2 + 77);
    *(a1 + 128) |= 0x2000u;
    *(a1 + 77) = v29;
    if ((*(a2 + 128) & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_81;
  }

LABEL_75:
  *(a1 + 128) |= 0x1000u;
  v27 = *(a1 + 96);
  if (!v27)
  {
    operator new();
  }

  v28 = *(a2 + 96);
  if (!v28)
  {
    v28 = *(qword_102636050 + 96);
  }

  sub_1003ABB18(v27, v28);
  v5 = *(a2 + 128);
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_80;
  }

LABEL_57:
  if ((v5 & 0x4000) == 0)
  {
    return;
  }

LABEL_81:
  v30 = *(a2 + 120);
  if (v30 >= 4 && v30 != 15)
  {
    sub_10187279C();
  }

  *(a1 + 128) |= 0x4000u;
  *(a1 + 120) = v30;
}

void sub_1003C047C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003C0498(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448D68;
  sub_1003C0508(a1);
  if (*(a1 + 13))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_1003C0508(void *result)
{
  if (qword_102636050 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[7];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[8];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[10];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[11];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v1[12];
    if (result)
    {
      v11 = *(*result + 8);

      return v11();
    }
  }

  return result;
}

void sub_1003C070C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003C0498(a1);

  operator delete();
}

uint64_t sub_1003C07BC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 128);
  if (v2)
  {
    *(result + 72) = 1;
    *(result + 8) = 0;
    if ((v2 & 4) != 0)
    {
      result = *(result + 16);
      if (result)
      {
        result = sub_1003A936C(result);
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_1003AA970(result);
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_1003AB2BC(result);
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 5;
        }

        *(v3 + 16) = 0;
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 7;
        }

        *(v4 + 16) = 0;
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_1003AD20C(result);
        v2 = *(v1 + 128);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_1003AEA5C(result);
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_1003B04CC(result);
        v2 = *(v1 + 128);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      result = *(v1 + 88);
      if (result)
      {
        result = sub_1003A9E00(result);
        v2 = *(v1 + 128);
      }
    }

    *(v1 + 76) = 0;
    if ((v2 & 0x1000) != 0)
    {
      result = *(v1 + 96);
      if (result)
      {
        result = sub_1003ABEF8(result);
      }
    }

    *(v1 + 77) = 0;
    *(v1 + 120) = 0;
  }

  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  return result;
}

uint64_t sub_1003C08F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v124[0] = 0;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v9 = v124[0];
        }

        else
        {
          *(this + 1) = v8 + 1;
        }

        if (v9 - 31 < 0x19 || (v9 <= 0xE ? (v20 = ((1 << v9) & 0x76B6) == 0) : (v20 = 1), !v20))
        {
          if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
          {
            sub_101872770();
          }

          *(a1 + 128) |= 1u;
          *(a1 + 72) = v9;
        }

        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 17)
        {
          *(this + 1) = v21 + 1;
          goto LABEL_60;
        }

        continue;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_42;
        }

LABEL_60:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = *v124;
        v13 = *(a1 + 128) | 2;
        *(a1 + 128) = v13;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 26)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_64:
        *(a1 + 128) = v13 | 4;
        v23 = *(a1 + 16);
        if (!v23)
        {
          operator new();
        }

        v124[0] = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v24;
          *(this + 1) = v24 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003A9424(v23, this, v28) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
        v29 = *(this + 14);
        v30 = __OFSUB__(v29, 1);
        v31 = v29 - 1;
        if (v31 < 0 == v30)
        {
          *(this + 14) = v31;
        }

        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 34)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_78:
        *(a1 + 128) |= 8u;
        v33 = *(a1 + 24);
        if (!v33)
        {
          operator new();
        }

        v124[0] = 0;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v34;
          *(this + 1) = v34 + 1;
        }

        v35 = *(this + 14);
        v36 = *(this + 15);
        *(this + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003AAA14(v33, this, v38) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
        v39 = *(this + 14);
        v30 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v40 < 0 == v30)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 50)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_92:
        *(a1 + 128) |= 0x10u;
        v42 = *(a1 + 32);
        if (!v42)
        {
          operator new();
        }

        v124[0] = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v43;
          *(this + 1) = v43 + 1;
        }

        v44 = *(this + 14);
        v45 = *(this + 15);
        *(this + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003AB30C(v42, this, v47) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
        v48 = *(this + 14);
        v30 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v30)
        {
          *(this + 14) = v49;
        }

        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 != 58)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
LABEL_106:
        *(a1 + 128) |= 0x20u;
        v51 = *(a1 + 40);
        if (!v51)
        {
          operator new();
        }

        v124[0] = 0;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v52;
          *(this + 1) = v52 + 1;
        }

        v53 = *(this + 14);
        v54 = *(this + 15);
        *(this + 14) = v53 + 1;
        if (v53 >= v54)
        {
          return 0;
        }

        v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003AB8A0(v51, this, v56) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v55);
        v57 = *(this + 14);
        v30 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v30)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 74)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_120:
        *(a1 + 128) |= 0x40u;
        v60 = *(a1 + 48);
        if (!v60)
        {
          operator new();
        }

        v124[0] = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003AC728(v60, this, v65) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
        v66 = *(this + 14);
        v30 = __OFSUB__(v66, 1);
        v67 = v66 - 1;
        if (v67 < 0 == v30)
        {
          *(this + 14) = v67;
        }

        v68 = *(this + 1);
        if (v68 >= *(this + 2) || *v68 != 90)
        {
          continue;
        }

        *(this + 1) = v68 + 1;
LABEL_134:
        *(a1 + 128) |= 0x80u;
        v69 = *(a1 + 56);
        if (!v69)
        {
          operator new();
        }

        v124[0] = 0;
        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v70;
          *(this + 1) = v70 + 1;
        }

        v71 = *(this + 14);
        v72 = *(this + 15);
        *(this + 14) = v71 + 1;
        if (v71 >= v72)
        {
          return 0;
        }

        v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003AD4CC(v69, this, v74) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v73);
        v75 = *(this + 14);
        v30 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v30)
        {
          *(this + 14) = v76;
        }

        v77 = *(this + 1);
        if (v77 >= *(this + 2) || *v77 != 98)
        {
          continue;
        }

        *(this + 1) = v77 + 1;
LABEL_148:
        *(a1 + 128) |= 0x100u;
        v78 = *(a1 + 64);
        if (!v78)
        {
          operator new();
        }

        v124[0] = 0;
        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v79;
          *(this + 1) = v79 + 1;
        }

        v80 = *(this + 14);
        v81 = *(this + 15);
        *(this + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003AEC2C(v78, this, v83) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v82);
        v84 = *(this + 14);
        v30 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v30)
        {
          *(this + 14) = v85;
        }

        v86 = *(this + 1);
        if (v86 >= *(this + 2) || *v86 != 114)
        {
          continue;
        }

        *(this + 1) = v86 + 1;
LABEL_162:
        *(a1 + 128) |= 0x200u;
        v87 = *(a1 + 80);
        if (!v87)
        {
          operator new();
        }

        v124[0] = 0;
        v88 = *(this + 1);
        if (v88 >= *(this + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v88;
          *(this + 1) = v88 + 1;
        }

        v89 = *(this + 14);
        v90 = *(this + 15);
        *(this + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        v91 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003B0598(v87, this, v92) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v91);
        v93 = *(this + 14);
        v30 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v30)
        {
          *(this + 14) = v94;
        }

        v95 = *(this + 1);
        if (v95 >= *(this + 2) || *v95 != 122)
        {
          continue;
        }

        *(this + 1) = v95 + 1;
LABEL_176:
        *(a1 + 128) |= 0x400u;
        v96 = *(a1 + 88);
        if (!v96)
        {
          operator new();
        }

        v124[0] = 0;
        v97 = *(this + 1);
        if (v97 >= *(this + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v97;
          *(this + 1) = v97 + 1;
        }

        v98 = *(this + 14);
        v99 = *(this + 15);
        *(this + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        v100 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003A9EBC(v96, this, v101) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v100);
        v102 = *(this + 14);
        v30 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v30)
        {
          *(this + 14) = v103;
        }

        v104 = *(this + 1);
        v14 = *(this + 2);
        if (v14 - v104 <= 1 || *v104 != 128 || v104[1] != 1)
        {
          continue;
        }

        v15 = (v104 + 2);
        *(this + 1) = v15;
LABEL_191:
        v124[0] = 0;
        if (v15 >= v14 || (v105 = *v15, (v105 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v105 = v124[0];
          v106 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          v106 = (v15 + 1);
          *(this + 1) = v106;
        }

        *(a1 + 76) = v105 != 0;
        v12 = *(a1 + 128) | 0x800;
        *(a1 + 128) = v12;
        if (v14 - v106 < 2 || *v106 != 138 || v106[1] != 1)
        {
          continue;
        }

        *(this + 1) = v106 + 2;
LABEL_200:
        *(a1 + 128) = v12 | 0x1000;
        v107 = *(a1 + 96);
        if (!v107)
        {
          operator new();
        }

        v124[0] = 0;
        v108 = *(this + 1);
        if (v108 >= *(this + 2) || *v108 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v108;
          *(this + 1) = v108 + 1;
        }

        v109 = *(this + 14);
        v110 = *(this + 15);
        *(this + 14) = v109 + 1;
        if (v109 >= v110)
        {
          return 0;
        }

        v111 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_1003ABFB0(v107, this, v112) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v111);
        v113 = *(this + 14);
        v30 = __OFSUB__(v113, 1);
        v114 = v113 - 1;
        if (v114 < 0 == v30)
        {
          *(this + 14) = v114;
        }

        v115 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v115 > 1 && *v115 == 144 && v115[1] == 1)
        {
          v11 = (v115 + 2);
          *(this + 1) = v11;
LABEL_215:
          v124[0] = 0;
          if (v11 >= v10 || (v116 = *v11, (v116 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
            if (!result)
            {
              return result;
            }

            v116 = v124[0];
            v117 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v117 = (v11 + 1);
            *(this + 1) = v117;
          }

          *(a1 + 77) = v116 != 0;
          *(a1 + 128) |= 0x2000u;
          if (v10 - v117 >= 2 && *v117 == 152 && v117[1] == 1)
          {
            v16 = (v117 + 2);
            *(this + 1) = v16;
LABEL_224:
            v124[0] = 0;
            if (v16 >= v10 || (v118 = *v16, (v118 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
              if (!result)
              {
                return result;
              }

              v118 = v124[0];
            }

            else
            {
              *(this + 1) = v16 + 1;
            }

            if (v118 < 4 || v118 == 15)
            {
              *(a1 + 128) |= 0x4000u;
              *(a1 + 120) = v118;
            }

            v120 = *(this + 1);
            v18 = *(this + 2);
            if (v18 - v120 >= 2 && *v120 == 160 && v120[1] == 1)
            {
              goto LABEL_238;
            }
          }
        }

        continue;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v13 = *(a1 + 128);
        goto LABEL_64;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_78;
        }

        goto LABEL_42;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_92;
        }

        goto LABEL_42;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_106;
        }

        goto LABEL_42;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_120;
        }

        goto LABEL_42;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_134;
        }

        goto LABEL_42;
      case 0xCu:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_148;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_162;
        }

        goto LABEL_42;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_176;
        }

        goto LABEL_42;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_191;
      case 0x11u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v12 = *(a1 + 128);
        goto LABEL_200;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_215;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_224;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          v19 = *(this + 1);
          v18 = *(this + 2);
          while (1)
          {
            v124[0] = 0;
            if (v19 >= v18 || (v121 = *v19, (v121 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
              if (!result)
              {
                return result;
              }

              v121 = v124[0];
            }

            else
            {
              *(this + 1) = v19 + 1;
            }

            if (v121 <= 7)
            {
              v122 = *(a1 + 112);
              if (v122 == *(a1 + 116))
              {
                sub_1003945DC(a1 + 104, v122 + 1);
                v122 = *(a1 + 112);
              }

              v123 = *(a1 + 104);
              *(a1 + 112) = v122 + 1;
              *(v123 + 4 * v122) = v121;
            }

LABEL_248:
            v120 = *(this + 1);
            v18 = *(this + 2);
            if (v18 - v120 < 2 || *v120 != 160 || v120[1] != 1)
            {
              break;
            }

LABEL_238:
            v19 = (v120 + 2);
            *(this + 1) = v19;
          }

          if (v120 == v18 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          continue;
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
          if (!result)
          {
            return result;
          }

          goto LABEL_248;
        }

LABEL_42:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_42;
    }
  }
}

uint64_t sub_1003C192C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 128);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 72), a2, a4);
    v6 = *(v5 + 128);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 128);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636050 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636050 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636050 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102636050 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_35:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102636050 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_38:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102636050 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v13, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_41:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_102636050 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v14, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_44:
  v15 = *(v5 + 80);
  if (!v15)
  {
    v15 = *(qword_102636050 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v15, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_47:
  v16 = *(v5 + 88);
  if (!v16)
  {
    v16 = *(qword_102636050 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v16, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 76), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_51:
  v17 = *(v5 + 96);
  if (!v17)
  {
    v17 = *(qword_102636050 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v17, a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x12, *(v5 + 77), a2, a4);
  if ((*(v5 + 128) & 0x4000) != 0)
  {
LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 120), a2, a4);
  }

LABEL_17:
  if (*(v5 + 112) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(*(v5 + 104) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 112));
  }

  return result;
}

uint64_t sub_1003C1BD0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_56;
  }

  if (v3)
  {
    v6 = *(a1 + 72);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 128);
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_102636050 + 16);
    }

    v8 = sub_1003A985C(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v5 += v9 + v10 + 1;
    v3 = *(a1 + 128);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v11 = *(qword_102636050 + 24);
  }

  v12 = sub_1003AAE78(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v5 += v13 + v14 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v15 = *(a1 + 32);
  if (!v15)
  {
    v15 = *(qword_102636050 + 32);
  }

  v16 = sub_1003AB574(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v5 += v17 + v18 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_38:
  v19 = *(a1 + 40);
  if (!v19)
  {
    v19 = *(qword_102636050 + 40);
  }

  v20 = sub_1003ABA1C(v19, a2);
  v21 = v20;
  if (v20 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
  }

  else
  {
    v22 = 1;
  }

  v5 += v21 + v22 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v23 = *(a1 + 48);
  if (!v23)
  {
    v23 = *(qword_102636050 + 48);
  }

  v24 = sub_1003AC8A4(v23, a2);
  v25 = v24;
  if (v24 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
  }

  else
  {
    v26 = 1;
  }

  v5 += v25 + v26 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x80) != 0)
  {
LABEL_50:
    v27 = *(a1 + 56);
    if (!v27)
    {
      v27 = *(qword_102636050 + 56);
    }

    v28 = sub_1003ADE54(v27, a2);
    v29 = v28;
    if (v28 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
    }

    else
    {
      v30 = 1;
    }

    v5 += v29 + v30 + 1;
    v3 = *(a1 + 128);
  }

LABEL_56:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_97;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_59;
    }

LABEL_67:
    v35 = *(a1 + 80);
    if (!v35)
    {
      v35 = *(qword_102636050 + 80);
    }

    v36 = sub_1003B0C40(v35, a2);
    v37 = v36;
    if (v36 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
    }

    else
    {
      v38 = 1;
    }

    v5 += v37 + v38 + 1;
    v3 = *(a1 + 128);
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  v31 = *(a1 + 64);
  if (!v31)
  {
    v31 = *(qword_102636050 + 64);
  }

  v32 = sub_1003AF3DC(v31, a2);
  v33 = v32;
  if (v32 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
  }

  else
  {
    v34 = 1;
  }

  v5 += v33 + v34 + 1;
  v3 = *(a1 + 128);
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_67;
  }

LABEL_59:
  if ((v3 & 0x400) != 0)
  {
LABEL_73:
    v39 = *(a1 + 88);
    if (!v39)
    {
      v39 = *(qword_102636050 + 88);
    }

    v40 = sub_1003AA2F4(v39, a2);
    v41 = v40;
    if (v40 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
    }

    else
    {
      v42 = 1;
    }

    v5 += v41 + v42 + 1;
    v3 = *(a1 + 128);
  }

LABEL_79:
  if ((v3 & 0x800) != 0)
  {
    v5 += 3;
  }

  if ((v3 & 0x1000) != 0)
  {
    v43 = *(a1 + 96);
    if (!v43)
    {
      v43 = *(qword_102636050 + 96);
    }

    v44 = sub_1003AC344(v43, a2);
    v45 = v44;
    if (v44 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2);
    }

    else
    {
      v46 = 1;
    }

    v5 += v45 + v46 + 2;
    v3 = *(a1 + 128);
  }

  if ((v3 & 0x2000) != 0)
  {
    v5 += 3;
  }

  if ((v3 & 0x4000) != 0)
  {
    v47 = *(a1 + 120);
    if ((v47 & 0x80000000) != 0)
    {
      v48 = 12;
    }

    else if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47, a2) + 2;
    }

    else
    {
      v48 = 3;
    }

    v5 += v48;
  }

LABEL_97:
  v49 = *(a1 + 112);
  if (v49 < 1)
  {
    v51 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    do
    {
      v52 = *(*(a1 + 104) + 4 * v50);
      if ((v52 & 0x80000000) != 0)
      {
        v53 = 10;
      }

      else if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
        v49 = *(a1 + 112);
      }

      else
      {
        v53 = 1;
      }

      v51 += v53;
      ++v50;
    }

    while (v50 < v49);
  }

  result = (v51 + v5 + 2 * v49);
  *(a1 + 124) = result;
  return result;
}

void sub_1003C1FF8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BFD5C(a1, lpsrc);
}

void *sub_1003C2098(void *result)
{
  v1 = result[2];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = result[4];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[5];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = result[6];
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = result[8];
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  return result;
}

void sub_1003C21D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448DE0;
  sub_1003C2098(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003C2224(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448DE0;
  sub_1003C2098(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C22FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 6)
          {
            if (TagFallback >> 3 > 9)
            {
              if (v7 == 10)
              {
                if ((TagFallback & 7) == 0)
                {
                  v17 = *(this + 1);
                  v16 = *(this + 2);
                  goto LABEL_116;
                }
              }

              else if (v7 == 11)
              {
                if ((TagFallback & 7) == 0)
                {
                  v20 = *(this + 1);
                  v19 = *(this + 2);
                  goto LABEL_126;
                }
              }

              else if (v7 == 12 && v8 == 2)
              {
                goto LABEL_136;
              }
            }

            else if (v7 == 7)
            {
              if (v8 == 2)
              {
                goto LABEL_92;
              }
            }

            else if (v7 == 8)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(this + 1);
                v11 = *(this + 2);
                goto LABEL_98;
              }
            }

            else if (v7 == 9 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_106;
            }

            goto LABEL_46;
          }

          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if (v8 == 2)
              {
                goto LABEL_80;
              }
            }

            else if (v7 == 6 && v8 == 2)
            {
              goto LABEL_86;
            }

            goto LABEL_46;
          }

          if (v8 != 2)
          {
            goto LABEL_46;
          }

          v15 = *(a1 + 80);
LABEL_74:
          *(a1 + 80) = v15 | 8;
          if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 42)
          {
            *(this + 1) = v26 + 1;
LABEL_80:
            *(a1 + 80) |= 0x10u;
            if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 50)
            {
              *(this + 1) = v27 + 1;
LABEL_86:
              *(a1 + 80) |= 0x20u;
              if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v28 = *(this + 1);
              if (v28 < *(this + 2) && *v28 == 58)
              {
                *(this + 1) = v28 + 1;
LABEL_92:
                *(a1 + 80) |= 0x40u;
                if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  operator new();
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                if (!result)
                {
                  return result;
                }

                v29 = *(this + 1);
                v11 = *(this + 2);
                if (v29 < v11 && *v29 == 64)
                {
                  v18 = v29 + 1;
                  *(this + 1) = v18;
LABEL_98:
                  v38[0] = 0;
                  if (v18 >= v11 || (v30 = *v18, (v30 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
                    if (!result)
                    {
                      return result;
                    }

                    v30 = v38[0];
                    v31 = *(this + 1);
                    v11 = *(this + 2);
                  }

                  else
                  {
                    v31 = v18 + 1;
                    *(this + 1) = v31;
                  }

                  *(a1 + 29) = v30 != 0;
                  *(a1 + 80) |= 0x80u;
                  if (v31 < v11 && *v31 == 72)
                  {
                    v12 = v31 + 1;
                    *(this + 1) = v12;
LABEL_106:
                    v38[0] = 0;
                    if (v12 >= v11 || (v32 = *v12, (v32 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
                      if (!result)
                      {
                        return result;
                      }

                      v32 = v38[0];
                    }

                    else
                    {
                      *(this + 1) = v12 + 1;
                    }

                    if (v32 <= 1)
                    {
                      *(a1 + 80) |= 0x100u;
                      *(a1 + 56) = v32;
                    }

                    v33 = *(this + 1);
                    v16 = *(this + 2);
                    if (v33 < v16 && *v33 == 80)
                    {
                      v17 = v33 + 1;
                      *(this + 1) = v17;
LABEL_116:
                      v38[0] = 0;
                      if (v17 >= v16 || (v34 = *v17, (v34 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
                        if (!result)
                        {
                          return result;
                        }

                        v34 = v38[0];
                      }

                      else
                      {
                        *(this + 1) = v17 + 1;
                      }

                      if (v34 <= 5)
                      {
                        *(a1 + 80) |= 0x200u;
                        *(a1 + 60) = v34;
                      }

                      v35 = *(this + 1);
                      v19 = *(this + 2);
                      if (v35 < v19 && *v35 == 88)
                      {
                        v20 = v35 + 1;
                        *(this + 1) = v20;
LABEL_126:
                        v38[0] = 0;
                        if (v20 >= v19 || (v36 = *v20, (v36 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
                          if (!result)
                          {
                            return result;
                          }

                          v36 = v38[0];
                        }

                        else
                        {
                          *(this + 1) = v20 + 1;
                        }

                        if (v36 <= 5)
                        {
                          *(a1 + 80) |= 0x400u;
                          *(a1 + 72) = v36;
                        }

                        v37 = *(this + 1);
                        if (v37 < *(this + 2) && *v37 == 98)
                        {
                          *(this + 1) = v37 + 1;
LABEL_136:
                          *(a1 + 80) |= 0x800u;
                          if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                          {
                            operator new();
                          }

                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                          if (!result)
                          {
                            return result;
                          }

                          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                          {
                            *(this + 8) = 0;
                            result = 1;
                            *(this + 36) = 1;
                            return result;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v38[0] = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
          if (!result)
          {
            return result;
          }

          v14 = v38[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v14 - 31 < 0x19 || v14 <= 0xE && ((1 << v14) & 0x76B6) != 0)
        {
          if (v14 - 31 >= 0x19 && (v14 > 0xE || ((1 << v14) & 0x76B6) == 0))
          {
            sub_10187258C();
          }

          *(a1 + 80) |= 1u;
          *(a1 + 24) = v14;
        }

        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 17)
        {
          *(this + 1) = v22 + 1;
          goto LABEL_62;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_46;
      }

LABEL_62:
      *v38 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v38;
      *(a1 + 80) |= 2u;
      v23 = *(this + 1);
      v9 = *(this + 2);
      if (v23 < v9 && *v23 == 24)
      {
        v10 = v23 + 1;
        *(this + 1) = v10;
LABEL_66:
        v38[0] = 0;
        if (v10 >= v9 || (v24 = *v10, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
          if (!result)
          {
            return result;
          }

          v24 = v38[0];
          v25 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v25 = v10 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 28) = v24 != 0;
        v15 = *(a1 + 80) | 4;
        *(a1 + 80) = v15;
        if (v25 < v9 && *v25 == 34)
        {
          *(this + 1) = v25 + 1;
          goto LABEL_74;
        }
      }
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_66;
    }

LABEL_46:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_1003C29C0(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 80);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 80);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 29), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 72), a2, a4);
    if ((*(v5 + 80) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t sub_1003C2B48(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v6 = *(a1 + 24);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 80);
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  v7 = v4 + ((v3 >> 1) & 2);
  if ((v3 & 8) != 0)
  {
    v8 = *(a1 + 16);
    v9 = *(v8 + 23);
    v10 = v9;
    v11 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v9 = *(v8 + 23);
      v11 = *(v8 + 8);
      v3 = *(a1 + 80);
      v10 = *(v8 + 23);
    }

    else
    {
      v13 = 1;
    }

    if (v10 < 0)
    {
      v9 = v11;
    }

    v7 += v13 + v9 + 1;
    if ((v3 & 0x10) == 0)
    {
LABEL_14:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_15;
      }

LABEL_35:
      v20 = *(a1 + 40);
      v21 = *(v20 + 23);
      v22 = v21;
      v23 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v24 = *(v20 + 23);
      }

      else
      {
        v24 = v23;
      }

      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
        v21 = *(v20 + 23);
        v23 = *(v20 + 8);
        v3 = *(a1 + 80);
        v22 = *(v20 + 23);
      }

      else
      {
        v25 = 1;
      }

      if (v22 < 0)
      {
        v21 = v23;
      }

      v7 += v25 + v21 + 1;
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_44;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v3 = *(a1 + 80);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v7 += v19 + v15 + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_15:
  if ((v3 & 0x40) != 0)
  {
LABEL_44:
    v26 = *(a1 + 48);
    v27 = *(v26 + 23);
    v28 = v27;
    v29 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v29;
    }

    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
      v27 = *(v26 + 23);
      v29 = *(v26 + 8);
      v3 = *(a1 + 80);
      v28 = *(v26 + 23);
    }

    else
    {
      v31 = 1;
    }

    if (v28 < 0)
    {
      v27 = v29;
    }

    v7 += v31 + v27 + 1;
  }

LABEL_53:
  v5 = ((v3 >> 6) & 2) + v7;
LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_87;
  }

  if ((v3 & 0x100) != 0)
  {
    v32 = *(a1 + 56);
    if ((v32 & 0x80000000) != 0)
    {
      v33 = 11;
    }

    else if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
      v3 = *(a1 + 80);
    }

    else
    {
      v33 = 2;
    }

    v5 = (v33 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v34 = *(a1 + 60);
  if ((v34 & 0x80000000) != 0)
  {
    v35 = 11;
  }

  else if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v35 = 2;
  }

  v5 = (v35 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_78;
  }

LABEL_72:
  v36 = *(a1 + 72);
  if ((v36 & 0x80000000) != 0)
  {
    v37 = 11;
  }

  else if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v37 = 2;
  }

  v5 = (v37 + v5);
  if ((v3 & 0x800) != 0)
  {
LABEL_78:
    v38 = *(a1 + 64);
    v39 = *(v38 + 23);
    v40 = v39;
    v41 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v42 = *(v38 + 23);
    }

    else
    {
      v42 = v41;
    }

    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
      v39 = *(v38 + 23);
      v41 = *(v38 + 8);
      v40 = *(v38 + 23);
    }

    else
    {
      v43 = 1;
    }

    if (v40 < 0)
    {
      v39 = v41;
    }

    v5 = (v5 + v43 + v39 + 1);
  }

LABEL_87:
  *(a1 + 76) = v5;
  return v5;
}

void sub_1003C2E60(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BF310(a1, lpsrc);
}

void sub_1003C2F20(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C2FC8(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || v8 <= 0xE && ((1 << v8) & 0x76B6) != 0)
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          sub_10187263C();
        }

        a1[5] |= 1u;
        a1[2] = v8;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(this + 1) = v10;
LABEL_29:
        v14 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v12 - 1 < 2 || v12 == 255)
        {
          a1[5] |= 2u;
          a1[3] = v12;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_29;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003C31C0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1003C322C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 12);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 16) = v4;
  return v4;
}

void sub_1003C32D8(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BF678(a1, lpsrc);
}

void sub_1003C3398(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448ED0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C3444(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || v8 <= 0xE && ((1 << v8) & 0x76B6) != 0)
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          sub_101872694();
        }

        *(a1 + 20) |= 1u;
        *(a1 + 8) = v8;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(this + 1) = v10;
LABEL_29:
        v16 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v13 = v10 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 12) = v12 != 0;
        *(a1 + 20) |= 2u;
        if (v13 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_29;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003C3630(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1003C369C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 20);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_1003C3710(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BF780(a1, lpsrc);
}

void sub_1003C37D0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448F48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C3878(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v31 = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
            if (!result)
            {
              return result;
            }

            v13 = v31;
          }

          else
          {
            *(this + 1) = v12 + 1;
          }

          if (v13 - 31 < 0x19 || v13 <= 0xE && ((1 << v13) & 0x76B6) != 0)
          {
            if (v13 - 31 >= 0x19 && (v13 > 0xE || ((1 << v13) & 0x76B6) == 0))
            {
              sub_1018726C0();
            }

            *(a1 + 24) |= 1u;
            *(a1 + 8) = v13;
          }

          v17 = *(this + 1);
          v8 = *(this + 2);
          if (v17 < v8 && *v17 == 16)
          {
            v16 = v17 + 1;
            *(this + 1) = v16;
            goto LABEL_46;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v10 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_54;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(this + 1);
          v8 = *(this + 2);
LABEL_46:
          v31 = 0;
          if (v16 >= v8 || (v18 = *v16, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
            if (!result)
            {
              return result;
            }

            v18 = v31;
            v19 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v19 = v16 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 12) = v18 != 0;
          *(a1 + 24) |= 2u;
          if (v19 < v8 && *v19 == 24)
          {
            v10 = v19 + 1;
            *(this + 1) = v10;
LABEL_54:
            v31 = 0;
            if (v10 >= v8 || (v20 = *v10, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
              if (!result)
              {
                return result;
              }

              v20 = v31;
              v21 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v21 = v10 + 1;
              *(this + 1) = v21;
            }

            *(a1 + 13) = v20 != 0;
            *(a1 + 24) |= 4u;
            if (v21 < v8 && *v21 == 32)
            {
              v14 = v21 + 1;
              *(this + 1) = v14;
              goto LABEL_62;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_78;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_86;
        }

        goto LABEL_30;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(this + 1);
      v8 = *(this + 2);
LABEL_62:
      v31 = 0;
      if (v14 >= v8 || (v22 = *v14, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
        if (!result)
        {
          return result;
        }

        v22 = v31;
        v23 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v23 = v14 + 1;
        *(this + 1) = v23;
      }

      *(a1 + 14) = v22 != 0;
      *(a1 + 24) |= 8u;
      if (v23 < v8 && *v23 == 40)
      {
        v9 = v23 + 1;
        *(this + 1) = v9;
LABEL_70:
        v31 = 0;
        if (v9 >= v8 || (v24 = *v9, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
          if (!result)
          {
            return result;
          }

          v24 = v31;
          v25 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v25 = v9 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 15) = v24 != 0;
        *(a1 + 24) |= 0x10u;
        if (v25 < v8 && *v25 == 48)
        {
          v15 = v25 + 1;
          *(this + 1) = v15;
LABEL_78:
          v31 = 0;
          if (v15 >= v8 || (v26 = *v15, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
            if (!result)
            {
              return result;
            }

            v26 = v31;
            v27 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v27 = v15 + 1;
            *(this + 1) = v27;
          }

          *(a1 + 16) = v26 != 0;
          *(a1 + 24) |= 0x20u;
          if (v27 < v8 && *v27 == 56)
          {
            v11 = v27 + 1;
            *(this + 1) = v11;
LABEL_86:
            v31 = 0;
            if (v11 >= v8 || (v28 = *v11, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
              if (!result)
              {
                return result;
              }

              v28 = v31;
              v29 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v29 = v11 + 1;
              *(this + 1) = v29;
            }

            *(a1 + 17) = v28 != 0;
            *(a1 + 24) |= 0x40u;
            if (v29 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_70;
    }

LABEL_30:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003C3CF4(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 14), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 16), a2, a4);
    if ((*(v5 + 24) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 15), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v7, a2, a4);
}

uint64_t sub_1003C3DF0(unsigned int *a1, unsigned int a2)
{
  v3 = a1[6];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[6];
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    result = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_101C655A0), v7)) + (v3 & 2) + ((v3 >> 5) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  a1[5] = result;
  return result;
}

void sub_1003C3E98(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BF870(a1, lpsrc);
}

void sub_1003C3F58(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102448FC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C4004(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || v8 <= 0xE && ((1 << v8) & 0x76B6) != 0)
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          sub_1018726EC();
        }

        *(a1 + 20) |= 1u;
        *(a1 + 8) = v8;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      if (v11 < v9 && *v11 == 16)
      {
        v10 = v11 + 1;
        *(this + 1) = v10;
LABEL_29:
        v16 = 0;
        if (v10 >= v9 || (v12 = *v10, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
          v13 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v13 = v10 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 12) = v12 != 0;
        *(a1 + 20) |= 2u;
        if (v13 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_29;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1003C41F0(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1003C425C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 20);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_1003C42D0(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_1003BFA04(a1, lpsrc);
}

void sub_1003C4390(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102449038;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1003C443C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v12 = 0;
      v7 = *(this + 1);
      if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }

        v8 = v12;
      }

      else
      {
        *(this + 1) = v7 + 1;
      }

      if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v9 = ((1 << v8) & 0x76B6) == 0) : (v9 = 1), !v9))
      {
        if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
        {
          sub_101872718();
        }

        *(a1 + 16) |= 1u;
        *(a1 + 8) = v8;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}