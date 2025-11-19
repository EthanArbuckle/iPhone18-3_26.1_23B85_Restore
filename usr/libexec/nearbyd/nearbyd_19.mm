wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010CAC4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 18);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 18);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  *v4 = 16;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v4 + 1, a3);
  v6 = *(this + 18);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v9 = *(this + 4);
  *v4 = 24;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v4 + 1, a3);
  if ((*(this + 18) & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = *(this + 16);
  *v4 = 32;
  if (v10 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v10;
    v4 = (v4 + 2);
  }

LABEL_12:
  v11 = *(this + 18);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(this + 5);
    if (!v12)
    {
      v12 = *(qword_1009F9CA0 + 40);
    }

    *v4 = 42;
    v13 = v12[116];
    if (v13 > 0x7F)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v13;
      v14 = (v4 + 2);
    }

    v4 = sub_1000AF484(v12, v14, a3, a4);
    v11 = *(this + 18);
    if ((v11 & 0x20) == 0)
    {
LABEL_14:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(this + 6);
  if (!v15)
  {
    v15 = *(qword_1009F9CA0 + 48);
  }

  *v4 = 50;
  v16 = v15[18];
  if (v16 > 0x7F)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v16;
    v17 = (v4 + 2);
  }

  v4 = sub_1000BCB5C(v15, v17, a3);
  if ((*(this + 18) & 0x40) != 0)
  {
LABEL_28:
    v18 = *(this + 7);
    if (!v18)
    {
      v18 = *(qword_1009F9CA0 + 56);
    }

    *v4 = 58;
    v19 = *(v18 + 40);
    if (v19 > 0x7F)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v19;
      v20 = v4 + 2;
    }

    v4 = sub_1000E30D4(v18, v20, a3);
  }

LABEL_34:
  v23 = *(this + 1);
  v22 = (this + 8);
  v21 = v23;
  if (!v23 || *v21 == v21[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v22, v4, a3);
}

uint64_t sub_10010CD04(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (!*(a1 + 72))
  {
    v4 = 0;
    goto LABEL_34;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 72);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  v3 = *(a1 + 72);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_12:
  v5 = *(a1 + 64);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_16:
  v7 = *(a1 + 40);
  if (!v7)
  {
    v7 = *(qword_1009F9CA0 + 40);
  }

  v8 = sub_1000B07FC(v7, a2);
  v9 = v8;
  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
  }

  else
  {
    v10 = 1;
  }

  v4 = (v4 + v9 + v10 + 1);
  v3 = *(a1 + 72);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_22:
  v11 = *(a1 + 48);
  if (!v11)
  {
    v11 = *(qword_1009F9CA0 + 48);
  }

  v12 = sub_1000BCDA0(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v4 = (v4 + v13 + v14 + 1);
  if ((*(a1 + 72) & 0x40) != 0)
  {
LABEL_28:
    v15 = *(a1 + 56);
    if (!v15)
    {
      v15 = *(qword_1009F9CA0 + 56);
    }

    v16 = sub_1000E31FC(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_34:
  v19 = *(a1 + 8);
  if (v19 && *v19 != v19[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 68) = v4;
  return v4;
}

uint64_t sub_10010CEB4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101F0C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010CF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010CFA0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10010D034()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD40;
}

void sub_10010D0C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10010D0DC(void *a1)
{
  *a1 = off_100993120;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[4] = 0;
  a1[5] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return a1;
}

void sub_10010D144(void *a1)
{
  *a1 = off_100993120;
  v2 = (a1 + 1);
  sub_10010D1A4(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10010D1A4(void *result)
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

  if (qword_1009F9CA8 != result)
  {
    result = result[4];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10010D25C(void *a1)
{
  sub_10010D144(a1);

  operator delete();
}

uint64_t sub_10010D300(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 == 1)
        {
          goto LABEL_17;
        }

LABEL_22:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_22;
        }

        *(a1 + 44) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 17)
        {
          *(this + 1) = v11 + 1;
LABEL_17:
          v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v24;
          v12 = *(a1 + 44) | 2;
          *(a1 + 44) = v12;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 26)
          {
            *(this + 1) = v13 + 1;
            goto LABEL_26;
          }
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_22;
    }

    v12 = *(a1 + 44);
LABEL_26:
    *(a1 + 44) = v12 | 4;
    v14 = *(a1 + 32);
    if (!v14)
    {
      operator new();
    }

    v25 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
    if (!sub_100104318(v14, this, v19, v20) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v21 = *(this + 14);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v23 < 0 == v22)
    {
      *(this + 14) = v23;
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

uint64_t sub_10010D5C4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
    if ((*(v5 + 44) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v7 = *(this + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 44);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(qword_1009F9CA8 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
LABEL_10:
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010D684(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 11);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v14 = *(this + 3);
    *v4 = 17;
    *(v4 + 1) = v14;
    v4 = (v4 + 9);
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v8 = a2 + 1;
  v9 = *(v7 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v7 + 8);
  }

  if (v9 > 0x7F)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
  }

  else
  {
    *(v4 + 1) = v9;
    v10 = v4 + 2;
  }

  v11 = *(v7 + 23);
  if (v11 >= 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *v7;
  }

  if (v11 >= 0)
  {
    v13 = *(v7 + 23);
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  v6 = *(this + 11);
  if ((v6 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v15 = *(this + 4);
  if (!v15)
  {
    v15 = *(qword_1009F9CA8 + 32);
  }

  *v4 = 26;
  v16 = v15[20];
  if (v16 > 0x7F)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v16;
    v17 = (v4 + 2);
  }

  v4 = sub_1001049E0(v15, v17, a3, a4);
LABEL_24:
  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v4, a3);
}

uint64_t sub_10010D7FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v6 = *(a1 + 16);
      v7 = *(v6 + 23);
      v8 = v7;
      v9 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v9;
      }

      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v11 = v12 + 1;
        v3 = *(a1 + 44);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 2;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      v4 = v11 + v7;
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
      v13 = *(a1 + 32);
      if (!v13)
      {
        v13 = *(qword_1009F9CA8 + 32);
      }

      v14 = sub_100104CF8(v13, a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      }

      else
      {
        v16 = 1;
      }

      v5 = (v5 + v15 + v16 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_10010D908(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100102174(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010D9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010D9F4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10010DA88()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD50;
}

void sub_10010DB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010DB30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 76);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 76))
  {
    v5 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 76);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 24);
    *(a1 + 76) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 76);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 32);
    *(a1 + 76) |= 4u;
    v8 = *(a1 + 32);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 76);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

  v9 = *(a2 + 40);
  *(a1 + 76) |= 8u;
  *(a1 + 40) = v9;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v11 = *(a2 + 48);
    *(a1 + 76) |= 0x20u;
    *(a1 + 48) = v11;
    v4 = *(a2 + 76);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(a2 + 44);
  *(a1 + 76) |= 0x10u;
  *(a1 + 44) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v12 = *(a2 + 56);
  *(a1 + 76) |= 0x40u;
  v13 = *(a1 + 56);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  if ((*(a2 + 76) & 0x80) != 0)
  {
LABEL_24:
    v14 = *(a2 + 64);
    *(a1 + 76) |= 0x80u;
    v15 = *(a1 + 64);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10010DD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010DD78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9CB0;
  if (!qword_1009F9CB0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9CB0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010DE0C(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 32);
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

    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if ((*(a1 + 76) & 0x40) != 0)
    {
      v3 = *(a1 + 56);
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

    if ((*(a1 + 76) & 0x80) != 0)
    {
      v4 = *(a1 + 64);
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
  }

  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 17) = 0;
  if (v6)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10010DED0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_59;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_67;
          }

          goto LABEL_50;
        }

        if (v8 != 7)
        {
          if (v8 == 8 && v9 == 2)
          {
            goto LABEL_81;
          }

          goto LABEL_50;
        }

        if (v9 != 2)
        {
          goto LABEL_50;
        }

        v24 = *(a1 + 76);
LABEL_75:
        *(a1 + 76) = v24 | 0x80;
        if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v29 = *(this + 1);
        if (v29 < *(this + 2) && *v29 == 66)
        {
          *(this + 1) = v29 + 1;
LABEL_81:
          *(a1 + 76) |= 0x40u;
          if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v30 = *(a1 + 56);
          if ((*(v30 + 23) & 0x8000000000000000) != 0)
          {
            v31 = *v30;
            v32 = *(*(a1 + 56) + 8);
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v9 == 2)
          {
            v14 = *(a1 + 76);
            goto LABEL_38;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_46;
        }

        goto LABEL_50;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_50;
      }

      *v33 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v33;
      *(a1 + 76) |= 1u;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_30:
        *v33 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v33;
        v14 = *(a1 + 76) | 2;
        *(a1 + 76) = v14;
        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 26)
        {
          *(this + 1) = v15 + 1;
LABEL_38:
          *(a1 + 76) = v14 | 4;
          if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v18 = *(a1 + 32);
          if ((*(v18 + 23) & 0x8000000000000000) != 0)
          {
            v19 = *v18;
            v20 = *(*(a1 + 32) + 8);
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          v21 = *(this + 1);
          v10 = *(this + 2);
          if (v21 < v10 && *v21 == 32)
          {
            v12 = v21 + 1;
            *(this + 1) = v12;
LABEL_46:
            v33[0] = 0;
            if (v12 >= v10 || (v22 = *v12, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33);
              if (!result)
              {
                return result;
              }

              v22 = v33[0];
              v23 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v23 = v12 + 1;
              *(this + 1) = v23;
            }

            *(a1 + 40) = v22;
            *(a1 + 76) |= 8u;
            if (v23 < v10 && *v23 == 40)
            {
              v16 = v23 + 1;
              *(this + 1) = v16;
LABEL_59:
              v33[0] = 0;
              if (v16 >= v10 || (v25 = *v16, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33);
                if (!result)
                {
                  return result;
                }

                v25 = v33[0];
                v26 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v26 = v16 + 1;
                *(this + 1) = v26;
              }

              *(a1 + 44) = v25;
              *(a1 + 76) |= 0x10u;
              if (v26 < v10 && *v26 == 48)
              {
                v11 = v26 + 1;
                *(this + 1) = v11;
LABEL_67:
                if (v11 >= v10 || (v27 = *v11, v27 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
                  if (!result)
                  {
                    return result;
                  }

                  v28 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 48) = v27;
                  v28 = v11 + 1;
                  *(this + 1) = v28;
                }

                v24 = *(a1 + 76) | 0x20;
                *(a1 + 76) = v24;
                if (v28 < v10 && *v28 == 58)
                {
                  *(this + 1) = v28 + 1;
                  goto LABEL_75;
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_30;
    }

LABEL_50:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10010E354(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 32);
  if ((*(v7 + 23) & 0x8000000000000000) != 0)
  {
    v8 = *v7;
    v9 = *(*(v5 + 32) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v10 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 44), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    v11 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 76) & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v12 = *(v5 + 56);
  if ((*(v12 + 23) & 0x8000000000000000) != 0)
  {
    v13 = *v12;
    v14 = *(*(v5 + 56) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v15 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_22:
  v18 = *(v5 + 8);
  v17 = (v5 + 8);
  v16 = v18;
  if (v18 && *v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v17, a2, a3);
  }

  return this;
}

uint64_t sub_10010E4C0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10010DB30(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010E594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010E5AC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10010E640()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD60;
}

void sub_10010E6D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010E6E8(uint64_t a1)
{
  *a1 = off_100993280;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 20) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_10010E748(uint64_t a1, _BYTE *a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (a2[24])
  {
    v4 = a2[16];
    *(a1 + 24) |= 1u;
    *(a1 + 16) = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10010E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10010E7F8(uint64_t a1)
{
  *a1 = off_100993280;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10010E84C(uint64_t a1)
{
  *a1 = off_100993280;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10010E8BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9CB8;
  if (!qword_1009F9CB8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9CB8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010E950(_BYTE *a1)
{
  if (a1[24])
  {
    a1[16] = 0;
  }

  v2 = *(a1 + 1);
  result = (a1 + 8);
  *(result + 4) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10010E970(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v13 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 16) = v10 != 0;
      *(a1 + 24) |= 1u;
      if (v11 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10010EA8C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
  }

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_10010EB00(_BYTE *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (a1[24])
  {
    v3 = a1[16];
    *a2 = 8;
    *(a2 + 1) = v3;
    a2 = (a2 + 2);
  }

  v6 = *(a1 + 1);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6 || *v5 == v5[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }
}

uint64_t sub_10010EB3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (*(v3 + 4))
  {
    v6 = 2 * (*(v3 + 4) & 1u);
  }

  else
  {
    v6 = 0;
  }

  if (v4 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_10010EB90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10010E748(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010EC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010EC7C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10010ED10()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD70;
}

void sub_10010EDA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10010EDB8(void *a1)
{
  *a1 = off_100993330;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_10010EE14(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      if (v5 >= 6)
      {
        sub_10049E0A0();
      }

      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      if (v6 >= 4)
      {
        sub_10049E0CC();
      }

      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10010EEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10010EEFC(uint64_t a1)
{
  *a1 = off_100993330;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10010EF50(uint64_t a1)
{
  *a1 = off_100993330;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010F024(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10010F044(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v6 + 1;
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

      v16 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      if (v9 > 5)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v9);
      }

      else
      {
        a1[7] |= 1u;
        a1[4] = v9;
      }

      v12 = *(this + 1);
      v10 = *(this + 2);
      if (v12 < v10 && *v12 == 16)
      {
        v11 = v12 + 1;
        *(this + 1) = v11;
LABEL_25:
        v15 = 0;
        if (v11 >= v10 || (v13 = *v11, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
          if (!result)
          {
            return result;
          }

          v13 = v15;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v13 > 3)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 2, v13);
        }

        else
        {
          a1[7] |= 2u;
          a1[5] = v13;
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
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_25;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10010F214(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 20), a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010F2A0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, a2 + 1, a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        *(a2 + 1) = v4;
        a2 = (a2 + 2);
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  if ((*(this + 28) & 2) != 0)
  {
    v6 = *(this + 5);
    *a2 = 16;
    if ((v6 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        *(a2 + 1) = v6;
        a2 = (a2 + 2);
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    a2 = v7;
  }

LABEL_15:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_10010F388(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  if (v3)
  {
    if ((*(a1 + 28) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 28) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v6 = *(a1 + 20);
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
      goto LABEL_19;
    }

    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    if ((*(a1 + 28) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_10010F454(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10010EE14(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010F528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010F540(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10010F5D4()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD80;
}

void sub_10010F668(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010F67C(uint64_t a1)
{
  *a1 = off_1009933E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10010F6E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 16);
      *(a1 + 40) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 40);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      if (v6 >= 9)
      {
        sub_10049E0F8();
      }

      *(a1 + 40) |= 2u;
      *(a1 + 20) = v6;
      v4 = *(a2 + 40);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 40) |= 4u;
      *(a1 + 24) = v7;
      v4 = *(a2 + 40);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 32);
      *(a1 + 40) |= 8u;
      *(a1 + 32) = v8;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10010F7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10010F7F4(uint64_t a1)
{
  *a1 = off_1009933E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10010F848(uint64_t a1)
{
  *a1 = off_1009933E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010F91C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10010F940(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_43;
          }

          goto LABEL_20;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_39:
        *v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v23;
        *(a1 + 40) |= 4u;
        v20 = *(this + 1);
        v12 = *(this + 2);
        if (v20 < v12 && *v20 == 32)
        {
          v13 = v20 + 1;
          *(this + 1) = v13;
LABEL_43:
          v23[0] = 0;
          if (v13 >= v12 || (v21 = *v13, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
            if (!result)
            {
              return result;
            }

            v21 = v23[0];
            v22 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            v22 = v13 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 32) = v21 != 0;
          *(a1 + 40) |= 8u;
          if (v22 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
      if (v14 >= v10 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v15;
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      *(a1 + 40) |= 1u;
      if (v16 < v10 && *v16 == 16)
      {
        v11 = v16 + 1;
        *(this + 1) = v11;
LABEL_28:
        v23[0] = 0;
        if (v11 >= v10 || (v18 = *v11, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
          if (!result)
          {
            return result;
          }

          v18 = v23[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v18 > 8)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v18);
        }

        else
        {
          *(a1 + 40) |= 2u;
          *(a1 + 20) = v18;
        }

        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 25)
        {
          *(this + 1) = v19 + 1;
          goto LABEL_39;
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_28;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10010FBCC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 40) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 32), a2, a4);
  }

LABEL_6:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10010FC98(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 40))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  if ((*(this + 40) & 2) != 0)
  {
    v5 = *(this + 5);
    *a2 = 16;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, (a2 + 1), a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        a2[1] = v5;
        a2 += 2;
        goto LABEL_12;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    a2 = v6;
  }

LABEL_12:
  v7 = *(this + 10);
  if ((v7 & 4) != 0)
  {
    v8 = *(this + 3);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
    v7 = *(this + 10);
  }

  if ((v7 & 8) != 0)
  {
    v9 = *(this + 32);
    *a2 = 32;
    a2[1] = v9;
    a2 += 2;
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_10010FDE0(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[10];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_19;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v7 = a1[5];
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = a1[10];
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_16;
  }

  v6 = a1[4];
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = a1[10];
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v9 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v9 = v4;
  }

  v5 = v9 + ((v3 >> 2) & 2);
LABEL_19:
  v10 = *(a1 + 1);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v5;
  }

  a1[9] = v5;
  return v5;
}

uint64_t sub_10010FEBC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10010F6E0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010FF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010FFA8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10011003C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD90;
}

void sub_1001100D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001100E4(uint64_t a1)
{
  *a1 = off_100993490;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_100110150(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_100110828((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001101D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001101F0(uint64_t *a1)
{
  *a1 = off_100993490;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100110254(uint64_t *a1)
{
  sub_1001101F0(a1);

  operator delete();
}

uint64_t sub_1001102F8(uint64_t a1)
{
  result = sub_100077B98(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10011034C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v8 = a1[7];
        v9 = a1[6];
        if (v9 >= v8)
        {
          if (v8 == a1[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v8 + 1);
            v8 = a1[7];
          }

          a1[7] = v8 + 1;
          sub_100149654();
        }

        v10 = *(a1 + 2);
        a1[6] = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v24 = 0;
        v12 = *(this + 1);
        if (v12 >= *(this + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
          {
            return 0;
          }
        }

        else
        {
          v24 = *v12;
          *(this + 1) = v12 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
        if (!sub_10010F044(v11, this, v16, v17) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
        v18 = *(this + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(this + 14) = v20;
        }

        v21 = *(this + 1);
        v22 = *(this + 2);
        if (v21 >= v22 || *v21 != 10)
        {
          if (v21 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(this + 1) = v21 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100110534(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001105D0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 8 * v5);
      *a2 = 10;
      v7 = v6[6];
      if (v7 > 0x7F)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v7;
        v8 = (a2 + 2);
      }

      a2 = sub_10010F2A0(v6, v8, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_10011069C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_10010F388(*(*(a1 + 16) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_10011073C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100110150(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100110810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100110828(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_100149654();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10010EE14(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100110950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100110968(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1001109FC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDDA0;
}

void sub_100110A90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100110AA4(void *a1)
{
  *a1 = off_100993540;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100110B00(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 16);
      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100110BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100110BD0(uint64_t a1)
{
  *a1 = off_100993540;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100110C24(uint64_t a1)
{
  *a1 = off_100993540;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100110CF8(uint64_t a1)
{
  if (*(a1 + 28))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100110D18(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        a1[5] = v11;
        a1[7] |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 5)
      {
        break;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      a1[4] = v12;
      a1[7] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100110E78(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 16), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 20), a3);
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_100110F04(_DWORD *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[7];
  if (v3)
  {
    v4 = a1[4];
    *a2 = 13;
    *(a2 + 1) = v4;
    a2 += 5;
    v3 = a1[7];
  }

  if ((v3 & 2) != 0)
  {
    v5 = a1[5];
    *a2 = 21;
    *(a2 + 1) = v5;
    a2 += 5;
  }

  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  if (!v8 || *v7 == v7[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
  }
}

uint64_t sub_100110F8C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 28);
  v4 = (v3 << 31 >> 31) & 5;
  if ((v3 & 2) != 0)
  {
    v4 += 5;
  }

  if (*(a1 + 28))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 24) = v5;
  return v5;
}

uint64_t sub_100110FF4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100110B00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001110C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001110E0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100111174()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDDB0;
}

void sub_100111208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10011121C(void *a1)
{
  *a1 = off_1009935F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10011127C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        *(a1 + 36) |= 4u;
        v7 = *(a1 + 24);
        if (!v7)
        {
          operator new();
        }

        v8 = *(a2 + 24);
        if (!v8)
        {
          v8 = *(qword_1009F9CE0 + 24);
        }

        sub_100110B00(v7, v8);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 20);
    *(a1 + 36) |= 2u;
    *(a1 + 20) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001113D4(void *a1)
{
  *a1 = off_1009935F0;
  if (qword_1009F9CE0 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10011146C(void *a1)
{
  sub_1001113D4(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100111510(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 2) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 3);
      if (this)
      {
        this = sub_100110CF8(this);
      }
    }
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 7) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100111578(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 == 5)
        {
          goto LABEL_15;
        }

LABEL_20:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8 != 1 || v9 != 5)
        {
          goto LABEL_20;
        }

        v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v25) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v25;
        *(a1 + 36) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 21)
        {
          *(this + 1) = v10 + 1;
LABEL_15:
          v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v24;
          v11 = *(a1 + 36) | 2;
          *(a1 + 36) = v11;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 26)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_24;
          }
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_20;
    }

    v11 = *(a1 + 36);
LABEL_24:
    *(a1 + 36) = v11 | 4;
    v13 = *(a1 + 24);
    if (!v13)
    {
      operator new();
    }

    v26 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
      {
        return 0;
      }
    }

    else
    {
      v26 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26);
    if (!sub_100110D18(v13, this, v18, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
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

uint64_t sub_100111804(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 16), a3);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_1009F9CE0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v7, a2, a4);
LABEL_10:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

uint64_t sub_1001118C4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 9);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(this + 5);
    *a2 = 21;
    *(a2 + 1) = v6;
    a2 += 5;
    if ((*(this + 9) & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v5 = *(this + 4);
  *a2 = 13;
  *(a2 + 1) = v5;
  a2 += 5;
  v4 = *(this + 9);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = *(this + 3);
  if (!v7)
  {
    v7 = *(qword_1009F9CE0 + 24);
  }

  *a2 = 26;
  v8 = v7[6];
  if (v8 > 0x7F)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v8;
    v9 = a2 + 2;
  }

  a2 = sub_100110F04(v7, v9, a3);
LABEL_13:
  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_1001119E8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v4 = (v3 << 31 >> 31) & 5;
    if ((v3 & 2) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v6 = *(a1 + 24);
      if (!v6)
      {
        v6 = *(qword_1009F9CE0 + 24);
      }

      v7 = sub_100110F8C(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v5 + v8 + v9 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_100111AA4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_10011127C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100111B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100111B90(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100111C24()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDDC0;
}

void sub_100111CB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100111CCC(uint64_t a1)
{
  *a1 = off_1009936A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0;
  return a1;
}

uint64_t sub_100111D40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 88);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 16);
    *(a1 + 88) |= 1u;
    *(a1 + 16) = v9;
    v4 = *(a2 + 88);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 20);
  *(a1 + 88) |= 2u;
  *(a1 + 20) = v10;
  v4 = *(a2 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 80);
  *(a1 + 88) |= 4u;
  *(a1 + 80) = v11;
  v4 = *(a2 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 24);
  *(a1 + 88) |= 8u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v14 = *(a2 + 40);
    *(a1 + 88) |= 0x20u;
    *(a1 + 40) = v14;
    v4 = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v13 = *(a2 + 32);
  *(a1 + 88) |= 0x10u;
  *(a1 + 32) = v13;
  v4 = *(a2 + 88);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v15 = *(a2 + 48);
  *(a1 + 88) |= 0x40u;
  *(a1 + 48) = v15;
  v4 = *(a2 + 88);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 88) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 88);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 64);
      *(a1 + 88) |= 0x100u;
      *(a1 + 64) = v6;
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 72);
      *(a1 + 88) |= 0x200u;
      *(a1 + 72) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100111F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100111F1C(uint64_t a1)
{
  *a1 = off_1009936A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100111F70(uint64_t a1)
{
  *a1 = off_1009936A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100112044(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 80) = 0;
    *(a1 + 20) = 0u;
    *(a1 + 36) = 0u;
    *(a1 + 48) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 20) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100112088(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if (v9 == 1)
              {
                goto LABEL_72;
              }
            }

            else if (v8 == 7 && v9 == 1)
            {
              goto LABEL_76;
            }

            goto LABEL_40;
          }

          if (v8 == 8)
          {
            if (v9 == 1)
            {
              goto LABEL_80;
            }

            goto LABEL_40;
          }

          if (v8 == 9)
          {
            if (v9 != 1)
            {
              goto LABEL_40;
            }

LABEL_84:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 64) = *v27;
            *(a1 + 88) |= 0x100u;
            v26 = *(this + 1);
            if (v26 < *(this + 2) && *v26 == 81)
            {
              *(this + 1) = v26 + 1;
              goto LABEL_88;
            }
          }

          else
          {
            if (v8 != 10 || v9 != 1)
            {
              goto LABEL_40;
            }

LABEL_88:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 72) = *v27;
            *(a1 + 88) |= 0x200u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_48;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v27[0] = 0;
        v12 = *(this + 1);
        v10 = *(this + 2);
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27);
          if (!result)
          {
            return result;
          }

          v13 = v27[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 16) = v13 != 0;
        *(a1 + 88) |= 1u;
        if (v14 < v10 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(this + 1) = v11;
LABEL_48:
          if (v11 >= v10 || (v17 = *v11, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v17;
            v18 = v11 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 88) |= 2u;
          if (v18 < v10 && *v18 == 24)
          {
            v15 = v18 + 1;
            *(this + 1) = v15;
LABEL_56:
            if (v15 >= v10 || (v19 = *v15, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 80) = v19;
              v20 = v15 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 88) |= 4u;
            if (v20 < v10 && *v20 == 33)
            {
              *(this + 1) = v20 + 1;
              goto LABEL_64;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_56;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_40;
      }

LABEL_64:
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = *v27;
      *(a1 + 88) |= 8u;
      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 41)
      {
        *(this + 1) = v21 + 1;
LABEL_68:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v27;
        *(a1 + 88) |= 0x10u;
        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 49)
        {
          *(this + 1) = v22 + 1;
LABEL_72:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v27;
          *(a1 + 88) |= 0x20u;
          v23 = *(this + 1);
          if (v23 < *(this + 2) && *v23 == 57)
          {
            *(this + 1) = v23 + 1;
LABEL_76:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v27;
            *(a1 + 88) |= 0x40u;
            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 65)
            {
              *(this + 1) = v24 + 1;
LABEL_80:
              *v27 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v27;
              *(a1 + 88) |= 0x80u;
              v25 = *(this + 1);
              if (v25 < *(this + 2) && *v25 == 73)
              {
                *(this + 1) = v25 + 1;
                goto LABEL_84;
              }
            }
          }
        }
      }
    }

    if (v8 == 5 && v9 == 1)
    {
      goto LABEL_68;
    }

LABEL_40:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100112528(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 80), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
    if ((*(v5 + 88) & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v6 & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
  }

LABEL_12:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10011269C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = *(this + 22);
  if (v4)
  {
    v5 = *(this + 16);
    *a2 = 8;
    a2[1] = v5;
    a2 += 2;
    v4 = *(this + 22);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 5);
    *a2 = 16;
    if (v6 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  if ((*(this + 88) & 4) != 0)
  {
    v7 = *(this + 20);
    *a2 = 24;
    if (v7 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
    }
  }

  v8 = *(this + 22);
  if ((v8 & 8) != 0)
  {
    v14 = *(this + 3);
    *a2 = 33;
    *(a2 + 1) = v14;
    a2 += 9;
    v8 = *(this + 22);
    if ((v8 & 0x10) == 0)
    {
LABEL_13:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(this + 4);
  *a2 = 41;
  *(a2 + 1) = v15;
  a2 += 9;
  v8 = *(this + 22);
  if ((v8 & 0x20) == 0)
  {
LABEL_14:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = *(this + 5);
  *a2 = 49;
  *(a2 + 1) = v16;
  a2 += 9;
  v8 = *(this + 22);
  if ((v8 & 0x40) == 0)
  {
LABEL_15:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = *(this + 6);
  *a2 = 57;
  *(a2 + 1) = v17;
  a2 += 9;
  v8 = *(this + 22);
  if ((v8 & 0x80) == 0)
  {
LABEL_16:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v19 = *(this + 8);
    *a2 = 73;
    *(a2 + 1) = v19;
    a2 += 9;
    if ((*(this + 22) & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  v18 = *(this + 7);
  *a2 = 65;
  *(a2 + 1) = v18;
  a2 += 9;
  v8 = *(this + 22);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v8 & 0x200) != 0)
  {
LABEL_18:
    v9 = *(this + 9);
    *a2 = 81;
    *(a2 + 1) = v9;
    a2 += 9;
  }

LABEL_19:
  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_1001129E8(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[22];
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v5 = a1[5];
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = a1[22];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    if ((v3 & 4) != 0)
    {
      v8 = a1[20];
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[22];
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
    }

    v7 = v4 + 9;
    if ((v3 & 8) == 0)
    {
      v7 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v7 += 9;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v7;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a1 + 1);
  if (v12 && *v12 != v12[1])
  {
    v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v11;
  }

  a1[21] = v11;
  return v11;
}

uint64_t sub_100112AF4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100111D40(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100112BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100112BE0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100112C74()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDDD0;
}

void sub_100112D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100112D1C(uint64_t a1)
{
  *a1 = off_100993750;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  return a1;
}

uint64_t sub_100112D88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = *(a2 + 20);
    *(a1 + 44) |= 2u;
    *(a1 + 20) = v6;
    v4 = *(a2 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v5;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  *(a1 + 44) |= 4u;
  v7 = *(a1 + 24);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9CF0 + 24);
  }

  sub_100111D40(v7, v8);
  if ((*(a2 + 44) & 8) != 0)
  {
LABEL_16:
    *(a1 + 44) |= 8u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_1009F9CF0 + 32);
    }

    sub_100111D40(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100112F48(void *a1)
{
  *a1 = off_100993750;
  v2 = (a1 + 1);
  sub_100112FA8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100112FA8(void *result)
{
  if (qword_1009F9CF0 != result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[4];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10011304C(void *a1)
{
  sub_100112F48(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001130F0(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    *(this + 16) = 0;
    *(this + 5) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 3);
      if (this)
      {
        this = sub_100112044(this);
        v2 = *(v1 + 11);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        this = sub_100112044(this);
      }
    }
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100113170(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 != 2)
          {
            goto LABEL_20;
          }

          v15 = *(a1 + 44);
LABEL_37:
          *(a1 + 44) = v15 | 4;
          v19 = *(a1 + 24);
          if (!v19)
          {
            operator new();
          }

          v40 = 0;
          v20 = *(this + 1);
          if (v20 >= *(this + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
            {
              return 0;
            }
          }

          else
          {
            v40 = *v20;
            *(this + 1) = v20 + 1;
          }

          v21 = *(this + 14);
          v22 = *(this + 15);
          *(this + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40);
          if (!sub_100112088(v19, this, v24, v25) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
          v26 = *(this + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(this + 14) = v28;
          }

          v29 = *(this + 1);
          if (v29 < *(this + 2) && *v29 == 34)
          {
            *(this + 1) = v29 + 1;
            goto LABEL_51;
          }
        }

        else
        {
          if (v8 != 4 || v9 != 2)
          {
            goto LABEL_20;
          }

LABEL_51:
          *(a1 + 44) |= 8u;
          v30 = *(a1 + 32);
          if (!v30)
          {
            operator new();
          }

          v41 = 0;
          v31 = *(this + 1);
          if (v31 >= *(this + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
            {
              return 0;
            }
          }

          else
          {
            v41 = *v31;
            *(this + 1) = v31 + 1;
          }

          v32 = *(this + 14);
          v33 = *(this + 15);
          *(this + 14) = v32 + 1;
          if (v32 >= v33)
          {
            return 0;
          }

          v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
          if (!sub_100112088(v30, this, v35, v36) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
          v37 = *(this + 14);
          v27 = __OFSUB__(v37, 1);
          v38 = v37 - 1;
          if (v38 < 0 == v27)
          {
            *(this + 14) = v38;
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

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v39 = 0;
      v12 = *(this + 1);
      v10 = *(this + 2);
      if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
        if (!result)
        {
          return result;
        }

        v13 = v39;
        v14 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 16) = v13 != 0;
      *(a1 + 44) |= 1u;
      if (v14 < v10 && *v14 == 16)
      {
        v11 = v14 + 1;
        *(this + 1) = v11;
LABEL_29:
        if (v11 >= v10 || (v17 = *v11, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v17;
          v18 = v11 + 1;
          *(this + 1) = v18;
        }

        v15 = *(a1 + 44) | 2;
        *(a1 + 44) = v15;
        if (v18 < v10 && *v18 == 26)
        {
          *(this + 1) = v18 + 1;
          goto LABEL_37;
        }
      }
    }

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100113534(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_8:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(qword_1009F9CF0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v7, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_11:
    v8 = *(v5 + 32);
    if (!v8)
    {
      v8 = *(qword_1009F9CF0 + 32);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v8, a2, a4);
  }

LABEL_14:
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100113620(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 11);
  if (v5)
  {
    v6 = *(this + 16);
    *a2 = 8;
    *(a2 + 1) = v6;
    v3 = (a2 + 2);
    v5 = *(this + 11);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 5);
    *v3 = 16;
    if (v7 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v7;
      v3 = (v3 + 2);
    }
  }

  v8 = *(this + 11);
  if ((v8 & 4) != 0)
  {
    v9 = *(this + 3);
    if (!v9)
    {
      v9 = *(qword_1009F9CF0 + 24);
    }

    *v3 = 26;
    v10 = v9[21];
    if (v10 > 0x7F)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v10;
      v11 = v3 + 2;
    }

    v3 = sub_10011269C(v9, v11, a3);
    v8 = *(this + 11);
  }

  if ((v8 & 8) != 0)
  {
    v12 = *(this + 4);
    if (!v12)
    {
      v12 = *(qword_1009F9CF0 + 32);
    }

    *v3 = 34;
    v13 = v12[21];
    if (v13 > 0x7F)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v13;
      v14 = v3 + 2;
    }

    v3 = sub_10011269C(v12, v14, a3);
  }

  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, v3, a3);
}

uint64_t sub_100113778(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 20);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v6 = 2;
    }

    v4 = (v6 + v4);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    v7 = *(qword_1009F9CF0 + 24);
  }

  v8 = sub_1001129E8(v7, a2);
  v9 = v8;
  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
  }

  else
  {
    v10 = 1;
  }

  v4 = (v4 + v9 + v10 + 1);
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_17:
    v11 = *(a1 + 32);
    if (!v11)
    {
      v11 = *(qword_1009F9CF0 + 32);
    }

    v12 = sub_1001129E8(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_23:
  v15 = *(a1 + 8);
  if (v15 && *v15 != v15[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 40) = v4;
  return v4;
}

uint64_t sub_1001138A0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100112D88(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100113974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10011398C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100113A20()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDDE0;
}

void sub_100113AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100113AC8(uint64_t a1)
{
  *a1 = off_100993800;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_100113B30(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v10;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 20);
  *(a1 + 72) |= 2u;
  *(a1 + 20) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 24);
  *(a1 + 72) |= 4u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 28);
  *(a1 + 72) |= 8u;
  *(a1 + 28) = v13;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v15 = *(a2 + 36);
    *(a1 + 72) |= 0x20u;
    *(a1 + 36) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  v14 = *(a2 + 32);
  *(a1 + 72) |= 0x10u;
  *(a1 + 32) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  v16 = *(a2 + 64);
  *(a1 + 72) |= 0x40u;
  *(a1 + 64) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 72) |= 0x80u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 48);
      *(a1 + 72) |= 0x100u;
      *(a1 + 48) = v6;
      v4 = *(a2 + 72);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 72) |= 0x200u;
      v7 = *(a1 + 56);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 56);
      if (!v8)
      {
        v8 = *(qword_1009F9CF8 + 56);
      }

      sub_100110B00(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100113D6C(void *a1)
{
  *a1 = off_100993800;
  if (qword_1009F9CF8 != a1)
  {
    v2 = a1[7];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100113E04(void *a1)
{
  sub_100113D6C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100113EA8(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 16) = 0;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 6) = 0;
    if ((v2 & 0x200) != 0)
    {
      this = *(this + 7);
      if (this)
      {
        this = sub_100110CF8(this);
      }
    }
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 16) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_100113F28(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 5)
            {
              goto LABEL_66;
            }

            goto LABEL_32;
          }

          if (v9 != 5)
          {
            goto LABEL_66;
          }

          v36 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v36;
          *(a1 + 72) |= 1u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 21)
          {
            *(this + 1) = v11 + 1;
LABEL_32:
            v36 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 20) = v36;
            *(a1 + 72) |= 2u;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 29)
            {
              *(this + 1) = v12 + 1;
LABEL_39:
              v36 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = v36;
              *(a1 + 72) |= 4u;
              v13 = *(this + 1);
              if (v13 < *(this + 2) && *v13 == 37)
              {
                *(this + 1) = v13 + 1;
                goto LABEL_46;
              }
            }
          }
        }

        else
        {
          if (v8 == 3)
          {
            if (v9 != 5)
            {
              goto LABEL_66;
            }

            goto LABEL_39;
          }

          if (v8 == 4)
          {
            if (v9 != 5)
            {
              goto LABEL_66;
            }

LABEL_46:
            v36 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 28) = v36;
            *(a1 + 72) |= 8u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 45)
            {
              *(this + 1) = v16 + 1;
LABEL_50:
              v36 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 32) = v36;
              *(a1 + 72) |= 0x10u;
              v17 = *(this + 1);
              if (v17 < *(this + 2) && *v17 == 53)
              {
                *(this + 1) = v17 + 1;
LABEL_54:
                v36 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 36) = v36;
                *(a1 + 72) |= 0x20u;
                v18 = *(this + 1);
                if (v18 < *(this + 2) && *v18 == 61)
                {
                  *(this + 1) = v18 + 1;
LABEL_58:
                  v36 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v36) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = v36;
                  *(a1 + 72) |= 0x40u;
                  v19 = *(this + 1);
                  v14 = *(this + 2);
                  if (v19 < v14 && *v19 == 64)
                  {
                    v15 = v19 + 1;
                    *(this + 1) = v15;
LABEL_62:
                    if (v15 >= v14 || (v20 = *v15, v20 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
                      if (!result)
                      {
                        return result;
                      }

                      v21 = *(this + 1);
                      v14 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 40) = v20;
                      v21 = v15 + 1;
                      *(this + 1) = v21;
                    }

                    *(a1 + 72) |= 0x80u;
                    if (v21 < v14 && *v21 == 72)
                    {
                      v22 = v21 + 1;
                      *(this + 1) = v22;
                      goto LABEL_75;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v8 == 5 && v9 == 5)
            {
              goto LABEL_50;
            }

LABEL_66:
            if (v9 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 7)
      {
        if (v8 == 6)
        {
          if (v9 == 5)
          {
            goto LABEL_54;
          }
        }

        else if (v8 == 7 && v9 == 5)
        {
          goto LABEL_58;
        }

        goto LABEL_66;
      }

      if (v8 == 8)
      {
        if ((TagFallback & 7) == 0)
        {
          v15 = *(this + 1);
          v14 = *(this + 2);
          goto LABEL_62;
        }

        goto LABEL_66;
      }

      if (v8 != 9)
      {
        if (v8 == 10 && v9 == 2)
        {
          v10 = *(a1 + 72);
          goto LABEL_83;
        }

        goto LABEL_66;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_66;
      }

      v22 = *(this + 1);
      v14 = *(this + 2);
LABEL_75:
      if (v22 >= v14 || (v24 = *v22, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
        if (!result)
        {
          return result;
        }

        v25 = *(this + 1);
        v14 = *(this + 2);
      }

      else
      {
        *(a1 + 48) = v24;
        v25 = v22 + 1;
        *(this + 1) = v25;
      }

      v10 = *(a1 + 72) | 0x100;
      *(a1 + 72) = v10;
    }

    while (v25 >= v14 || *v25 != 82);
    *(this + 1) = v25 + 1;
LABEL_83:
    *(a1 + 72) = v10 | 0x200;
    v26 = *(a1 + 56);
    if (!v26)
    {
      operator new();
    }

    v36 = 0;
    v27 = *(this + 1);
    if (v27 >= *(this + 2) || *v27 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v27;
      *(this + 1) = v27 + 1;
    }

    v28 = *(this + 14);
    v29 = *(this + 15);
    *(this + 14) = v28 + 1;
    if (v28 >= v29)
    {
      return 0;
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
    if (!sub_100110D18(v26, this, v31, v32) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
    v33 = *(this + 14);
    v34 = __OFSUB__(v33, 1);
    v35 = v33 - 1;
    if (v35 < 0 == v34)
    {
      *(this + 14) = v35;
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

uint64_t sub_100114478(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 16), a3);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 20), a3);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 64), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v7 = *(v5 + 56);
  if (!v7)
  {
    v7 = *(qword_1009F9CF8 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v7, a2, a4);
LABEL_24:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

uint64_t sub_1001145FC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(this + 4);
    *a2 = 13;
    *(a2 + 1) = v5;
    a2 += 5;
    v4 = *(this + 18);
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

  v6 = *(this + 5);
  *a2 = 21;
  *(a2 + 1) = v6;
  a2 += 5;
  v4 = *(this + 18);
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
  v7 = *(this + 6);
  *a2 = 29;
  *(a2 + 1) = v7;
  a2 += 5;
  v4 = *(this + 18);
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
  v8 = *(this + 7);
  *a2 = 37;
  *(a2 + 1) = v8;
  a2 += 5;
  v4 = *(this + 18);
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
  v9 = *(this + 8);
  *a2 = 45;
  *(a2 + 1) = v9;
  a2 += 5;
  v4 = *(this + 18);
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
  v10 = *(this + 9);
  *a2 = 53;
  *(a2 + 1) = v10;
  a2 += 5;
  v4 = *(this + 18);
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
  v11 = *(this + 16);
  *a2 = 61;
  *(a2 + 1) = v11;
  a2 += 5;
  v4 = *(this + 18);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = *(this + 6);
    *a2 = 72;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, a2 + 1, a3);
    if ((*(this + 18) & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_19:
  v12 = *(this + 5);
  *a2 = 64;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  v4 = *(this + 18);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x200) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v14 = *(this + 7);
  if (!v14)
  {
    v14 = *(qword_1009F9CF8 + 56);
  }

  *a2 = 82;
  v15 = v14[6];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v15;
    v16 = a2 + 2;
  }

  a2 = sub_100110F04(v14, v16, a3);
LABEL_27:
  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, a2, a3);
}

uint64_t sub_100114878(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 5;
    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
      v3 = *(a1 + 72);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
      v3 = *(a1 + 72);
    }

    if ((v3 & 0x200) != 0)
    {
      v6 = *(a1 + 56);
      if (!v6)
      {
        v6 = *(qword_1009F9CF8 + 56);
      }

      v7 = sub_100110F8C(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v5 + v8 + v9 + 1);
    }
  }

  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 68) = v5;
  return v5;
}

uint64_t sub_1001149AC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100113B30(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100114A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100114A98(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100114B2C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDDF0;
}

void sub_100114BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100114BD4(uint64_t a1)
{
  *a1 = off_1009938B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_100114C58(uint64_t *a1)
{
  *a1 = off_1009938B0;
  v2 = a1 + 3;
  sub_100114CC4(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100114CC4(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v4 = result[11];
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  if (qword_1009F9D00 != result)
  {
    v6 = result[6];
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

    v9 = v1[9];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[10];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[12];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v1[13];
    if (result)
    {
      v12 = *(*result + 8);

      return v12();
    }
  }

  return result;
}

void sub_100114EC0(uint64_t *a1)
{
  sub_100114C58(a1);

  operator delete();
}

uint64_t sub_100114F64(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v8 != 1)
            {
              if (v8 != 2 || v9 != 2)
              {
                goto LABEL_46;
              }

              goto LABEL_50;
            }

            if (v9 != 2)
            {
              goto LABEL_46;
            }

            *(a1 + 120) |= 1u;
            if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v11 = *(this + 1);
            if (v11 < *(this + 2) && *v11 == 18)
            {
              while (1)
              {
                *(this + 1) = v11 + 1;
LABEL_50:
                v12 = *(a1 + 36);
                v13 = *(a1 + 32);
                if (v13 >= v12)
                {
                  if (v12 == *(a1 + 40))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v12 + 1);
                    v12 = *(a1 + 36);
                  }

                  *(a1 + 36) = v12 + 1;
                  sub_1001496B8();
                }

                v14 = *(a1 + 24);
                *(a1 + 32) = v13 + 1;
                v15 = *(v14 + 8 * v13);
                v100 = 0;
                v16 = *(this + 1);
                if (v16 >= *(this + 2) || *v16 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
                  {
                    return 0;
                  }
                }

                else
                {
                  v100 = *v16;
                  *(this + 1) = v16 + 1;
                }

                v17 = *(this + 14);
                v18 = *(this + 15);
                *(this + 14) = v17 + 1;
                if (v17 >= v18)
                {
                  return 0;
                }

                v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
                if (!sub_1001027E4(v15, this, v20, v21) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
                v22 = *(this + 14);
                v23 = __OFSUB__(v22, 1);
                v24 = v22 - 1;
                if (v24 < 0 == v23)
                {
                  *(this + 14) = v24;
                }

                v11 = *(this + 1);
                if (v11 >= *(this + 2))
                {
                  break;
                }

                v25 = *v11;
                if (v25 != 18)
                {
                  if (v25 != 26)
                  {
                    goto LABEL_1;
                  }

                  *(this + 1) = v11 + 1;
                  goto LABEL_68;
                }
              }
            }
          }

          else if (v8 == 3)
          {
            if (v9 != 2)
            {
              goto LABEL_46;
            }

LABEL_68:
            *(a1 + 120) |= 4u;
            v26 = *(a1 + 48);
            if (!v26)
            {
              operator new();
            }

            v100 = 0;
            v27 = *(this + 1);
            if (v27 >= *(this + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v27;
              *(this + 1) = v27 + 1;
            }

            v28 = *(this + 14);
            v29 = *(this + 15);
            *(this + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
            if (!sub_100111578(v26, this, v31, v32) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
            v33 = *(this + 14);
            v23 = __OFSUB__(v33, 1);
            v34 = v33 - 1;
            if (v34 < 0 == v23)
            {
              *(this + 14) = v34;
            }

            v35 = *(this + 1);
            if (v35 < *(this + 2) && *v35 == 34)
            {
              *(this + 1) = v35 + 1;
              goto LABEL_82;
            }
          }

          else
          {
            if (v8 != 4)
            {
              if (v8 != 5 || v9 != 2)
              {
                goto LABEL_46;
              }

              goto LABEL_96;
            }

            if (v9 != 2)
            {
              goto LABEL_46;
            }

LABEL_82:
            *(a1 + 120) |= 8u;
            v36 = *(a1 + 56);
            if (!v36)
            {
              operator new();
            }

            v100 = 0;
            v37 = *(this + 1);
            if (v37 >= *(this + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v37;
              *(this + 1) = v37 + 1;
            }

            v38 = *(this + 14);
            v39 = *(this + 15);
            *(this + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
            if (!sub_100110D18(v36, this, v41, v42) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
            v43 = *(this + 14);
            v23 = __OFSUB__(v43, 1);
            v44 = v43 - 1;
            if (v44 < 0 == v23)
            {
              *(this + 14) = v44;
            }

            v45 = *(this + 1);
            if (v45 < *(this + 2) && *v45 == 42)
            {
              *(this + 1) = v45 + 1;
LABEL_96:
              *(a1 + 120) |= 0x10u;
              v46 = *(a1 + 64);
              if (!v46)
              {
                operator new();
              }

              v100 = 0;
              v47 = *(this + 1);
              if (v47 >= *(this + 2) || *v47 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
                {
                  return 0;
                }
              }

              else
              {
                v100 = *v47;
                *(this + 1) = v47 + 1;
              }

              v48 = *(this + 14);
              v49 = *(this + 15);
              *(this + 14) = v48 + 1;
              if (v48 >= v49)
              {
                return 0;
              }

              v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
              if (!sub_100113F28(v46, this, v51, v52) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
              v53 = *(this + 14);
              v23 = __OFSUB__(v53, 1);
              v54 = v53 - 1;
              if (v54 < 0 == v23)
              {
                *(this + 14) = v54;
              }

              v55 = *(this + 1);
              if (v55 < *(this + 2) && *v55 == 50)
              {
                *(this + 1) = v55 + 1;
LABEL_110:
                *(a1 + 120) |= 0x20u;
                v56 = *(a1 + 72);
                if (!v56)
                {
                  operator new();
                }

                v100 = 0;
                v57 = *(this + 1);
                if (v57 >= *(this + 2) || *v57 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
                  {
                    return 0;
                  }
                }

                else
                {
                  v100 = *v57;
                  *(this + 1) = v57 + 1;
                }

                v58 = *(this + 14);
                v59 = *(this + 15);
                *(this + 14) = v58 + 1;
                if (v58 >= v59)
                {
                  return 0;
                }

                v60 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
                if (!sub_10011034C(v56, this, v61, v62) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v60);
                v63 = *(this + 14);
                v23 = __OFSUB__(v63, 1);
                v64 = v63 - 1;
                if (v64 < 0 == v23)
                {
                  *(this + 14) = v64;
                }

                v65 = *(this + 1);
                if (v65 < *(this + 2) && *v65 == 58)
                {
                  *(this + 1) = v65 + 1;
                  goto LABEL_124;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v8 != 9)
        {
          if (v8 == 10)
          {
            if (v9 == 2)
            {
              goto LABEL_160;
            }
          }

          else if (v8 == 11 && v9 == 5)
          {
            goto LABEL_174;
          }

          goto LABEL_46;
        }

        if (v9 != 2)
        {
          goto LABEL_46;
        }

LABEL_146:
        *(a1 + 120) |= 0x100u;
        v80 = *(a1 + 96);
        if (!v80)
        {
          operator new();
        }

        v100 = 0;
        v81 = *(this + 1);
        if (v81 >= *(this + 2) || *v81 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
          {
            return 0;
          }
        }

        else
        {
          v100 = *v81;
          *(this + 1) = v81 + 1;
        }

        v82 = *(this + 14);
        v83 = *(this + 15);
        *(this + 14) = v82 + 1;
        if (v82 >= v83)
        {
          return 0;
        }

        v84 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
        if (!sub_100112088(v80, this, v85, v86) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v84);
        v87 = *(this + 14);
        v23 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v23)
        {
          *(this + 14) = v88;
        }

        v89 = *(this + 1);
        if (v89 < *(this + 2) && *v89 == 82)
        {
          *(this + 1) = v89 + 1;
LABEL_160:
          *(a1 + 120) |= 0x200u;
          v90 = *(a1 + 104);
          if (!v90)
          {
            operator new();
          }

          v100 = 0;
          v91 = *(this + 1);
          if (v91 >= *(this + 2) || *v91 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
            {
              return 0;
            }
          }

          else
          {
            v100 = *v91;
            *(this + 1) = v91 + 1;
          }

          v92 = *(this + 14);
          v93 = *(this + 15);
          *(this + 14) = v92 + 1;
          if (v92 >= v93)
          {
            return 0;
          }

          v94 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
          if (!sub_100113170(v90, this, v95, v96) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v94);
          v97 = *(this + 14);
          v23 = __OFSUB__(v97, 1);
          v98 = v97 - 1;
          if (v98 < 0 == v23)
          {
            *(this + 14) = v98;
          }

          v99 = *(this + 1);
          if (v99 < *(this + 2) && *v99 == 93)
          {
            *(this + 1) = v99 + 1;
LABEL_174:
            v100 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v100) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 112) = v100;
            *(a1 + 120) |= 0x400u;
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

      if (v8 == 6)
      {
        if (v9 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_110;
      }

      if (v8 != 7)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_46;
      }

LABEL_124:
      *(a1 + 120) |= 0x40u;
      v66 = *(a1 + 80);
      if (!v66)
      {
        operator new();
      }

      v100 = 0;
      v67 = *(this + 1);
      if (v67 >= *(this + 2) || *v67 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
        {
          return 0;
        }
      }

      else
      {
        v100 = *v67;
        *(this + 1) = v67 + 1;
      }

      v68 = *(this + 14);
      v69 = *(this + 15);
      *(this + 14) = v68 + 1;
      if (v68 >= v69)
      {
        return 0;
      }

      v70 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
      if (!sub_10010F940(v66, this, v71, v72) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v70);
      v73 = *(this + 14);
      v23 = __OFSUB__(v73, 1);
      v74 = v73 - 1;
      if (v74 < 0 == v23)
      {
        *(this + 14) = v74;
      }

      v75 = *(this + 1);
      if (v75 < *(this + 2) && *v75 == 66)
      {
        *(this + 1) = v75 + 1;
LABEL_138:
        *(a1 + 120) |= 0x80u;
        if (*(a1 + 88) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v76 = *(a1 + 88);
        if ((*(v76 + 23) & 0x8000000000000000) != 0)
        {
          v77 = *v76;
          v78 = *(*(a1 + 88) + 8);
        }

        wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
        v79 = *(this + 1);
        if (v79 < *(this + 2) && *v79 == 74)
        {
          *(this + 1) = v79 + 1;
          goto LABEL_146;
        }
      }
    }

    if (v8 == 8 && v9 == 2)
    {
      goto LABEL_138;
    }

LABEL_46:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100115A88(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 120))
  {
    v6 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 120);
  if ((v8 & 4) != 0)
  {
    v12 = *(v5 + 48);
    if (!v12)
    {
      v12 = *(qword_1009F9D00 + 48);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
    v8 = *(v5 + 120);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_1009F9D00 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
  v8 = *(v5 + 120);
  if ((v8 & 0x10) == 0)
  {
LABEL_9:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_28:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_1009F9D00 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v14, a2, a4);
  v8 = *(v5 + 120);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_31:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(qword_1009F9D00 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v15, a2, a4);
  v8 = *(v5 + 120);
  if ((v8 & 0x40) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_34:
  v16 = *(v5 + 80);
  if (!v16)
  {
    v16 = *(qword_1009F9D00 + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v16, a2, a4);
  v8 = *(v5 + 120);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_37:
  v17 = *(v5 + 88);
  if ((*(v17 + 23) & 0x8000000000000000) != 0)
  {
    v18 = *v17;
    v19 = *(*(v5 + 88) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v20 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v8 = *(v5 + 120);
  if ((v8 & 0x100) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    v22 = *(v5 + 104);
    if (!v22)
    {
      v22 = *(qword_1009F9D00 + 104);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v22, a2, a4);
    if ((*(v5 + 120) & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_40:
  v21 = *(v5 + 96);
  if (!v21)
  {
    v21 = *(qword_1009F9D00 + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v21, a2, a4);
  v8 = *(v5 + 120);
  if ((v8 & 0x200) != 0)
  {
    goto LABEL_43;
  }

LABEL_14:
  if ((v8 & 0x400) != 0)
  {
LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, *(v5 + 112), a3);
  }

LABEL_16:
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100115CC0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 120))
  {
    v6 = *(this + 2);
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v6 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v4 + 1) = v8;
      v9 = v4 + 2;
    }

    v10 = *(v6 + 23);
    if (v10 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
  }

  if (*(this + 8) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(this + 3) + 8 * v13);
      *v4 = 18;
      v15 = v14[13];
      if (v15 > 0x7F)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v15;
        v16 = (v4 + 2);
      }

      v4 = sub_100102D7C(v14, v16, a3);
      ++v13;
    }

    while (v13 < *(this + 8));
  }

  v17 = *(this + 30);
  if ((v17 & 4) != 0)
  {
    v23 = *(this + 6);
    if (!v23)
    {
      v23 = *(qword_1009F9D00 + 48);
    }

    *v4 = 26;
    v24 = v23[8];
    if (v24 > 0x7F)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v24;
      v25 = v4 + 2;
    }

    v4 = sub_1001118C4(v23, v25, a3);
    v17 = *(this + 30);
    if ((v17 & 8) == 0)
    {
LABEL_22:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_48;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_22;
  }

  v26 = *(this + 7);
  if (!v26)
  {
    v26 = *(qword_1009F9D00 + 56);
  }

  *v4 = 34;
  v27 = v26[6];
  if (v27 > 0x7F)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v27;
    v28 = v4 + 2;
  }

  v4 = sub_100110F04(v26, v28, a3);
  v17 = *(this + 30);
  if ((v17 & 0x10) == 0)
  {
LABEL_23:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_48:
  v29 = *(this + 8);
  if (!v29)
  {
    v29 = *(qword_1009F9D00 + 64);
  }

  *v4 = 42;
  v30 = v29[17];
  if (v30 > 0x7F)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v30;
    v31 = v4 + 2;
  }

  v4 = sub_1001145FC(v29, v31, a3);
  v17 = *(this + 30);
  if ((v17 & 0x20) == 0)
  {
LABEL_24:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_54:
  v32 = *(this + 9);
  if (!v32)
  {
    v32 = *(qword_1009F9D00 + 72);
  }

  *v4 = 50;
  v33 = v32[10];
  if (v33 > 0x7F)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v33;
    v34 = (v4 + 2);
  }

  v4 = sub_1001105D0(v32, v34, a3);
  v17 = *(this + 30);
  if ((v17 & 0x40) == 0)
  {
LABEL_25:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_60:
  v35 = *(this + 10);
  if (!v35)
  {
    v35 = *(qword_1009F9D00 + 80);
  }

  *v4 = 58;
  v36 = v35[9];
  if (v36 > 0x7F)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v36;
    v37 = v4 + 2;
  }

  v4 = sub_10010FC98(v35, v37, a3);
  v17 = *(this + 30);
  if ((v17 & 0x80) == 0)
  {
LABEL_26:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_66:
  v38 = *(this + 11);
  if ((*(v38 + 23) & 0x8000000000000000) != 0)
  {
    v39 = *v38;
    v40 = *(*(this + 11) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v43 = *(this + 11);
  *v4 = 66;
  v44 = *(v43 + 23);
  if ((v44 & 0x8000000000000000) != 0)
  {
    v44 = *(v43 + 8);
  }

  if (v44 > 0x7F)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v4 + 1, v41);
  }

  else
  {
    *(v4 + 1) = v44;
    v45 = v4 + 2;
  }

  v46 = *(v43 + 23);
  if (v46 >= 0)
  {
    v47 = v43;
  }

  else
  {
    v47 = *v43;
  }

  if (v46 >= 0)
  {
    v48 = *(v43 + 23);
  }

  else
  {
    v48 = *(v43 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v47, v48, v45, v42);
  v17 = *(this + 30);
  if ((v17 & 0x100) == 0)
  {
LABEL_27:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_28;
    }

LABEL_86:
    v52 = *(this + 13);
    if (!v52)
    {
      v52 = *(qword_1009F9D00 + 104);
    }

    *v4 = 82;
    v53 = v52[10];
    if (v53 > 0x7F)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v53, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v53;
      v54 = (v4 + 2);
    }

    v4 = sub_100113620(v52, v54, a3);
    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_80:
  v49 = *(this + 12);
  if (!v49)
  {
    v49 = *(qword_1009F9D00 + 96);
  }

  *v4 = 74;
  v50 = v49[21];
  if (v50 > 0x7F)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v50, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v50;
    v51 = v4 + 2;
  }

  v4 = sub_10011269C(v49, v51, a3);
  v17 = *(this + 30);
  if ((v17 & 0x200) != 0)
  {
    goto LABEL_86;
  }

LABEL_28:
  if ((v17 & 0x400) != 0)
  {
LABEL_29:
    v18 = *(this + 28);
    *v4 = 93;
    *(v4 + 1) = v18;
    v4 = (v4 + 5);
  }

LABEL_30:
  v21 = *(this + 1);
  v20 = (this + 8);
  v19 = v21;
  if (!v21 || *v19 == v19[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, v4, a3);
}

uint64_t sub_10011611C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 120);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_60;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(a1 + 120);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = v10 + v6;
  if ((v3 & 4) != 0)
  {
LABEL_15:
    v12 = *(a1 + 48);
    if (!v12)
    {
      v12 = *(qword_1009F9D00 + 48);
    }

    v13 = sub_1001119E8(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(a1 + 120);
  }

LABEL_21:
  if ((v3 & 8) != 0)
  {
    v16 = *(a1 + 56);
    if (!v16)
    {
      v16 = *(qword_1009F9D00 + 56);
    }

    v17 = sub_100110F8C(v16, a2);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    }

    else
    {
      v19 = 1;
    }

    v4 += v18 + v19 + 1;
    v3 = *(a1 + 120);
    if ((v3 & 0x10) == 0)
    {
LABEL_23:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 64);
  if (!v20)
  {
    v20 = *(qword_1009F9D00 + 64);
  }

  v21 = sub_100114878(v20, a2);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
  }

  else
  {
    v23 = 1;
  }

  v4 += v22 + v23 + 1;
  v3 = *(a1 + 120);
  if ((v3 & 0x20) == 0)
  {
LABEL_24:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_39:
  v24 = *(a1 + 72);
  if (!v24)
  {
    v24 = *(qword_1009F9D00 + 72);
  }

  v25 = sub_10011069C(v24, a2);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
  }

  else
  {
    v27 = 1;
  }

  v4 += v26 + v27 + 1;
  v3 = *(a1 + 120);
  if ((v3 & 0x40) == 0)
  {
LABEL_25:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

LABEL_45:
  v28 = *(a1 + 80);
  if (!v28)
  {
    v28 = *(qword_1009F9D00 + 80);
  }

  v29 = sub_10010FDE0(v28, a2);
  v30 = v29;
  if (v29 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
  }

  else
  {
    v31 = 1;
  }

  v4 += v30 + v31 + 1;
  v3 = *(a1 + 120);
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v32 = *(a1 + 88);
    v33 = *(v32 + 23);
    v34 = v33;
    v35 = *(v32 + 8);
    if ((v33 & 0x80u) == 0)
    {
      v36 = *(v32 + 23);
    }

    else
    {
      v36 = v35;
    }

    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
      v33 = *(v32 + 23);
      v35 = *(v32 + 8);
      v3 = *(a1 + 120);
      v34 = *(v32 + 23);
    }

    else
    {
      v37 = 1;
    }

    if (v34 < 0)
    {
      v33 = v35;
    }

    v4 += v37 + v33 + 1;
  }

LABEL_60:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v38 = *(a1 + 96);
      if (!v38)
      {
        v38 = *(qword_1009F9D00 + 96);
      }

      v39 = sub_1001129E8(v38, a2);
      v40 = v39;
      if (v39 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2);
      }

      else
      {
        v41 = 1;
      }

      v4 += v40 + v41 + 1;
      v3 = *(a1 + 120);
    }

    if ((v3 & 0x200) != 0)
    {
      v42 = *(a1 + 104);
      if (!v42)
      {
        v42 = *(qword_1009F9D00 + 104);
      }

      v43 = sub_100113778(v42, a2);
      v44 = v43;
      if (v43 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
      }

      else
      {
        v45 = 1;
      }

      v4 += v44 + v45 + 1;
      v3 = *(a1 + 120);
    }

    if ((v3 & 0x400) != 0)
    {
      v4 += 5;
    }
  }

  v46 = *(a1 + 32);
  v47 = (v46 + v4);
  if (v46 >= 1)
  {
    v48 = 0;
    do
    {
      v49 = sub_100102F9C(*(*(a1 + 24) + 8 * v48), a2);
      v50 = v49;
      if (v49 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2);
      }

      else
      {
        v51 = 1;
      }

      v47 = (v50 + v47 + v51);
      ++v48;
    }

    while (v48 < *(a1 + 32));
  }

  v52 = *(a1 + 8);
  if (v52 && *v52 != v52[1])
  {
    v47 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v47;
  }

  *(a1 + 116) = v47;
  return v47;
}

uint64_t sub_1001164AC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100100A24(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100116580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100116598(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        sub_1001496B8();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1001024B4(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1001166C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001166D8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10011676C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE00;
}

void sub_100116800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100116814(void *a1)
{
  *a1 = off_100993960;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return a1;
}

void sub_100116878(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100993960;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001168DC(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100116878(a1);

  operator delete();
}

uint64_t sub_100116980(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100116AA4(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 28))
  {
    v5 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100116B18(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 2);
    *a2 = 10;
    v6 = *(v5 + 23);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = *(v5 + 8);
    }

    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = a2 + 2;
    }

    v8 = *(v5 + 23);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *v5;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
  }

  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, a2, a3);
}

uint64_t sub_100116BD8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    v3 = (v9 + v5);
  }

  else
  {
    v3 = 0;
  }

  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_100116C7C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101238(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100116D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100116D68(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100116DFC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDE10;
}

void sub_100116E90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100116EA4(uint64_t a1)
{
  *a1 = off_100993A10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 44) = 0u;
  return a1;
}

void sub_100116F10(uint64_t *a1)
{
  *a1 = off_100993A10;
  sub_100077C08(a1 + 5);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100116F74(uint64_t *a1)
{
  sub_100116F10(a1);

  operator delete();
}

uint64_t sub_100117018(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
LABEL_1:
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v8 != 1)
      {
        if (v8 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_28;
      }

      if (v9 != 1)
      {
        goto LABEL_21;
      }

      *v36 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v36) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v36;
      *(a1 + 72) |= 1u;
      v15 = *(this + 1);
      v12 = *(this + 2);
      if (v15 < v12 && *v15 == 16)
      {
        v13 = v15 + 1;
        *(this + 1) = v13;
LABEL_28:
        if (v13 >= v12 || (v16 = *v13, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v16;
          v17 = v13 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 72) |= 2u;
        if (v17 < v12 && *v17 == 24)
        {
          v14 = v17 + 1;
          *(this + 1) = v14;
LABEL_36:
          *v36 = 0;
          if (v14 >= v12 || (v19 = *v14, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v36);
            if (!result)
            {
              return result;
            }

            v19 = *v36;
            v20 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            v20 = v14 + 1;
            *(this + 1) = v20;
          }

          *(a1 + 32) = v19;
          *(a1 + 72) |= 4u;
          if (v20 < v12 && *v20 == 34)
          {
            while (1)
            {
              *(this + 1) = v20 + 1;
LABEL_44:
              v21 = *(a1 + 52);
              v22 = *(a1 + 48);
              if (v22 >= v21)
              {
                if (v21 == *(a1 + 56))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v21 + 1);
                  v21 = *(a1 + 52);
                }

                *(a1 + 52) = v21 + 1;
                sub_1001496B8();
              }

              v23 = *(a1 + 40);
              *(a1 + 48) = v22 + 1;
              v24 = *(v23 + 8 * v22);
              v36[0] = 0;
              v25 = *(this + 1);
              if (v25 >= *(this + 2) || *v25 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36))
                {
                  return 0;
                }
              }

              else
              {
                v36[0] = *v25;
                *(this + 1) = v25 + 1;
              }

              v26 = *(this + 14);
              v27 = *(this + 15);
              *(this + 14) = v26 + 1;
              if (v26 >= v27)
              {
                return 0;
              }

              v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36[0]);
              if (!sub_1001027E4(v24, this, v29, v30) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
              v31 = *(this + 14);
              v32 = __OFSUB__(v31, 1);
              v33 = v31 - 1;
              if (v33 < 0 == v32)
              {
                *(this + 14) = v33;
              }

              v20 = *(this + 1);
              v10 = *(this + 2);
              if (v20 >= v10)
              {
                break;
              }

              v34 = *v20;
              if (v34 != 34)
              {
                if (v34 == 40)
                {
                  v11 = v20 + 1;
                  *(this + 1) = v11;
LABEL_62:
                  v36[0] = 0;
                  if (v11 >= v10 || (v35 = *v11, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v36);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v36[0];
                  }

                  else
                  {
                    *(this + 1) = v11 + 1;
                  }

                  if (v35 > 4)
                  {
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 5, v35);
                  }

                  else
                  {
                    *(a1 + 72) |= 0x10u;
                    *(a1 + 64) = v35;
                  }

                  if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
                  {
                    *(this + 8) = 0;
                    result = 1;
                    *(this + 36) = 1;
                    return result;
                  }
                }

                goto LABEL_1;
              }
            }
          }
        }
      }
    }

    if (v8 == 3)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v14 = *(this + 1);
      v12 = *(this + 2);
      goto LABEL_36;
    }

    if (v8 == 4)
    {
      if (v9 != 2)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_62;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1001173DC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  if ((*(v5 + 72) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(3, *(v5 + 32), a2, a4);
  }

LABEL_5:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if ((*(v5 + 72) & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 64), a2, a4);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001174E4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if (v5)
  {
    v13 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v13;
    v3 = (a2 + 9);
    v5 = *(this + 18);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v3 = 16;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v3 + 1, a3);
  if ((*(this + 18) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 4);
    *v3 = 24;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v3 + 1, a3);
  }

LABEL_5:
  if (*(this + 12) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 5) + 8 * v7);
      *v3 = 34;
      v9 = v8[13];
      if (v9 > 0x7F)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v9;
        v10 = (v3 + 2);
      }

      v3 = sub_100102D7C(v8, v10, a3);
      ++v7;
    }

    while (v7 < *(this + 12));
  }

  if ((*(this + 72) & 0x10) != 0)
  {
    v11 = *(this + 16);
    *v3 = 40;
    v12 = v3 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    }

    else
    {
      if (v11 <= 0x7F)
      {
        *(v3 + 1) = v11;
        v3 = (v3 + 2);
        goto LABEL_21;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v3 = v15;
  }

LABEL_21:
  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, v3, a3);
}

uint64_t sub_100117690(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (!*(a1 + 72))
  {
    v4 = 0;
    goto LABEL_15;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 72);
    if ((v3 & 4) == 0)
    {
LABEL_4:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_4;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  if ((*(a1 + 72) & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v5 = *(a1 + 64);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_15:
  v7 = *(a1 + 48);
  v8 = (v7 + v4);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = sub_100102F9C(*(*(a1 + 40) + 8 * v9), a2);
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(a1 + 48));
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v8;
  }

  *(a1 + 68) = v8;
  return v8;
}

uint64_t sub_1001177BC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101D2C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100117890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}