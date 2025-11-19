uint64_t sub_10012CE6C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 140);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9DE0 + 16);
      }

      v7 = sub_10012B48C(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 140);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v10 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v10 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v11 = v10 + 9;
    }

    else
    {
      v11 = v10;
    }

    if ((v3 & 0x400) != 0)
    {
      v12 = *(a1 + 96);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(a1 + 140);
      }

      else
      {
        v13 = 2;
      }

      v11 += v13;
    }

    if ((v3 & 0x800) != 0)
    {
      v14 = *(a1 + 100);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 140);
      }

      else
      {
        v15 = 2;
      }

      v11 += v15;
    }

    v16 = v11 + 9;
    if ((v3 & 0x1000) == 0)
    {
      v16 = v11;
    }

    if ((v3 & 0x2000) != 0)
    {
      v5 = v16 + 9;
    }

    else
    {
      v5 = v16;
    }

    if ((v3 & 0x4000) != 0)
    {
      v17 = *(a1 + 120);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 11;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
        v3 = *(a1 + 140);
      }

      else
      {
        v18 = 2;
      }

      v5 = (v18 + v5);
    }

    if ((v3 & 0x8000) != 0)
    {
      v19 = *(a1 + 124);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 12;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 2;
        v3 = *(a1 + 140);
      }

      else
      {
        v20 = 3;
      }

      v5 = (v20 + v5);
    }
  }

  if ((v3 & 0x10000) != 0)
  {
    v21 = *(a1 + 128);
    v22 = *(v21 + 23);
    v23 = v22;
    v24 = *(v21 + 8);
    if ((v22 & 0x80u) == 0)
    {
      v25 = *(v21 + 23);
    }

    else
    {
      v25 = v24;
    }

    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      v22 = *(v21 + 23);
      v24 = *(v21 + 8);
      v23 = *(v21 + 23);
    }

    else
    {
      v26 = 1;
    }

    if (v23 < 0)
    {
      v22 = v24;
    }

    v5 = (v5 + v26 + v22 + 2);
  }

  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 136) = v5;
  return v5;
}

uint64_t sub_10012D0CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012B794(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D1B8(uint64_t result, uint64_t a2)
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

uint64_t sub_10012D24C()
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

  return qword_1009EDFC0;
}

void sub_10012D2E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D2F4(uint64_t a1)
{
  *a1 = off_100994CA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_10012D360(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      v5 = *(a2 + 16);
      *(a1 + 60) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 60);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 60) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 60);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    v7 = *(a2 + 32);
    *(a1 + 60) |= 4u;
    *(a1 + 32) = v7;
    v4 = *(a2 + 60);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

LABEL_14:
      v9 = *(a2 + 48);
      *(a1 + 60) |= 0x10u;
      v10 = *(a1 + 48);
      if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v10, v9);
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

LABEL_13:
    v8 = *(a2 + 40);
    *(a1 + 60) |= 8u;
    *(a1 + 40) = v8;
    if ((*(a2 + 60) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10012D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10012D4DC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100994CA0;
  v2 = (a1 + 8);
  sub_10012D53C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_10012D53C(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_10012D5B4(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10012D4DC(a1);

  operator delete();
}

uint64_t sub_10012D5F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DE8;
  if (!qword_1009F9DE8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DE8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012D688(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (v1)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(a1 + 48);
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10012D6E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 == 3)
        {
          if (v9 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v8 == 4)
        {
          if (v9 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v16;
          v10 = *(a1 + 60) | 8;
          *(a1 + 60) = v10;
          v14 = *(this + 1);
          if (v14 < *(this + 2) && *v14 == 42)
          {
            *(this + 1) = v14 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_21;
          }

          v10 = *(a1 + 60);
LABEL_40:
          *(a1 + 60) = v10 | 0x10;
          if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_21;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v16;
      *(a1 + 60) |= 1u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v16;
        *(a1 + 60) |= 2u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 25)
        {
          *(this + 1) = v12 + 1;
LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v16;
          *(a1 + 60) |= 4u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 33)
          {
            *(this + 1) = v13 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_28;
    }

LABEL_21:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10012D998(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 60);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v5 & 0x10) != 0)
  {
LABEL_6:
    v6 = *(v4 + 48);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_7:
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_10012DA80(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 15);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
    v5 = *(this + 15);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v7;
  a2 += 9;
  v5 = *(this + 15);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = *(this + 5);
    *a2 = 33;
    *(a2 + 1) = v9;
    a2 += 9;
    if ((*(this + 15) & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

LABEL_9:
  v8 = *(this + 4);
  *a2 = 25;
  *(a2 + 1) = v8;
  a2 += 9;
  v5 = *(this + 15);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v10 = *(this + 6);
  *a2 = 42;
  v11 = *(v10 + 23);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = *(v10 + 8);
  }

  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v11;
    v12 = a2 + 2;
  }

  v13 = *(v10 + 23);
  if (v13 >= 0)
  {
    v14 = v10;
  }

  else
  {
    v14 = *v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v10 + 23);
  }

  else
  {
    v15 = *(v10 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v14, v15, v12, a4);
LABEL_23:
  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, a2, a3);
}

uint64_t sub_10012DCA4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  if (*(a1 + 60))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(a1 + 48);
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
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 1;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      v5 = (v5 + v11 + v7 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 56) = v5;
  return v5;
}

uint64_t sub_10012DD88(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012D360(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012DE74(uint64_t result, uint64_t a2)
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

uint64_t sub_10012DF08()
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

  return qword_1009EDFD0;
}

void sub_10012DF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012DFB0(uint64_t a1)
{
  *a1 = off_100994D50;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 42) = 0u;
  return a1;
}

uint64_t sub_10012E018(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 64))
  {
    v5 = *(a2 + 16);
    if (v5 >= 8)
    {
      sub_10049E200();
    }

    *(a1 + 64) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 20);
    *(a1 + 64) |= 2u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a2 + 24);
  *(a1 + 64) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 32);
  *(a1 + 64) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 40);
  *(a1 + 64) |= 0x10u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v13 = *(a2 + 56);
    *(a1 + 64) |= 0x40u;
    *(a1 + 56) = v13;
    if ((*(a2 + 64) & 0x80) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_14;
  }

LABEL_20:
  v12 = *(a2 + 48);
  *(a1 + 64) |= 0x20u;
  *(a1 + 48) = v12;
  v4 = *(a2 + 64);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  if ((v4 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 57);
    *(a1 + 64) |= 0x80u;
    *(a1 + 57) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10012E1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10012E1B8(uint64_t a1)
{
  *a1 = off_100994D50;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10012E20C(uint64_t a1)
{
  *a1 = off_100994D50;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012E2E0(uint64_t a1)
{
  if (*(a1 + 64))
  {
    *(a1 + 42) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 14) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10012E308(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 8 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_78;
          }
        }

        else if (v8 == 5)
        {
          if (v9 == 1)
          {
            goto LABEL_62;
          }
        }

        else if (v8 == 6 && v9 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v9 == 1)
          {
            goto LABEL_54;
          }
        }

        else if (v8 == 4 && v9 == 1)
        {
          goto LABEL_58;
        }

        goto LABEL_34;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v29[0] = 0;
      v14 = *(this + 1);
      if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
        if (!result)
        {
          return result;
        }

        v15 = v29[0];
      }

      else
      {
        *(this + 1) = v14 + 1;
      }

      if (v15 > 7)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v15);
      }

      else
      {
        *(a1 + 64) |= 1u;
        *(a1 + 16) = v15;
      }

      v18 = *(this + 1);
      v10 = *(this + 2);
      if (v18 < v10 && *v18 == 16)
      {
        v11 = v18 + 1;
        *(this + 1) = v11;
LABEL_46:
        v29[0] = 0;
        if (v11 >= v10 || (v19 = *v11, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
          if (!result)
          {
            return result;
          }

          v19 = v29[0];
          v20 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v20 = v11 + 1;
          *(this + 1) = v20;
        }

        *(a1 + 20) = v19;
        *(a1 + 64) |= 2u;
        if (v20 < v10 && *v20 == 25)
        {
          *(this + 1) = v20 + 1;
LABEL_54:
          *v29 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v29;
          *(a1 + 64) |= 4u;
          v21 = *(this + 1);
          if (v21 < *(this + 2) && *v21 == 33)
          {
            *(this + 1) = v21 + 1;
LABEL_58:
            *v29 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v29;
            *(a1 + 64) |= 8u;
            v22 = *(this + 1);
            if (v22 < *(this + 2) && *v22 == 41)
            {
              *(this + 1) = v22 + 1;
LABEL_62:
              *v29 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 40) = *v29;
              *(a1 + 64) |= 0x10u;
              v23 = *(this + 1);
              if (v23 < *(this + 2) && *v23 == 49)
              {
                *(this + 1) = v23 + 1;
LABEL_66:
                *v29 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 48) = *v29;
                *(a1 + 64) |= 0x20u;
                v24 = *(this + 1);
                v12 = *(this + 2);
                if (v24 < v12 && *v24 == 56)
                {
                  v16 = v24 + 1;
                  *(this + 1) = v16;
LABEL_70:
                  v29[0] = 0;
                  if (v16 >= v12 || (v25 = *v16, (v25 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
                    if (!result)
                    {
                      return result;
                    }

                    v25 = v29[0];
                    v26 = *(this + 1);
                    v12 = *(this + 2);
                  }

                  else
                  {
                    v26 = v16 + 1;
                    *(this + 1) = v26;
                  }

                  *(a1 + 56) = v25 != 0;
                  *(a1 + 64) |= 0x40u;
                  if (v26 < v12 && *v26 == 64)
                  {
                    v13 = v26 + 1;
                    *(this + 1) = v13;
LABEL_78:
                    v29[0] = 0;
                    if (v13 >= v12 || (v27 = *v13, (v27 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
                      if (!result)
                      {
                        return result;
                      }

                      v27 = v29[0];
                      v28 = *(this + 1);
                      v12 = *(this + 2);
                    }

                    else
                    {
                      v28 = v13 + 1;
                      *(this + 1) = v28;
                    }

                    *(a1 + 57) = v27 != 0;
                    *(a1 + 64) |= 0x80u;
                    if (v28 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_46;
    }

LABEL_34:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10012E744(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 56), a2, a4);
    if ((*(v5 + 64) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 57), a2, a4);
  }

LABEL_10:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_10012E880(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 64))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, (a2 + 1), a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        a2[1] = v4;
        a2 += 2;
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_15;
  }

  v6 = *(this + 5);
  *a2 = 16;
  if ((v6 & 0x80000000) != 0)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, (a2 + 1), a3);
  }

  else
  {
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      goto LABEL_15;
    }

    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
  }

  a2 = v7;
LABEL_15:
  v8 = *(this + 16);
  if ((v8 & 4) != 0)
  {
    v14 = *(this + 3);
    *a2 = 25;
    *(a2 + 1) = v14;
    a2 += 9;
    v8 = *(this + 16);
    if ((v8 & 8) == 0)
    {
LABEL_17:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_17;
  }

  v15 = *(this + 4);
  *a2 = 33;
  *(a2 + 1) = v15;
  a2 += 9;
  v8 = *(this + 16);
  if ((v8 & 0x10) == 0)
  {
LABEL_18:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(this + 5);
  *a2 = 41;
  *(a2 + 1) = v16;
  a2 += 9;
  v8 = *(this + 16);
  if ((v8 & 0x20) == 0)
  {
LABEL_19:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_20;
    }

LABEL_32:
    v18 = *(this + 56);
    *a2 = 56;
    a2[1] = v18;
    a2 += 2;
    if ((*(this + 16) & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_31:
  v17 = *(this + 6);
  *a2 = 49;
  *(a2 + 1) = v17;
  a2 += 9;
  v8 = *(this + 16);
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_20:
  if ((v8 & 0x80) != 0)
  {
LABEL_21:
    v9 = *(this + 57);
    *a2 = 64;
    a2[1] = v9;
    a2 += 2;
  }

LABEL_22:
  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_10012EB08(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_28;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v7 = a1[5];
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = a1[16];
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    goto LABEL_19;
  }

  v6 = a1[4];
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = a1[16];
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v9 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v9 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v9 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v9 += 9;
  }

  v5 = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v9;
LABEL_28:
  v10 = *(a1 + 1);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v5;
  }

  a1[15] = v5;
  return v5;
}

uint64_t sub_10012EC24(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012E018(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012ECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012ED10(uint64_t result, uint64_t a2)
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

uint64_t sub_10012EDA4()
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

  return qword_1009EDFE0;
}

void sub_10012EE38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012EE4C(uint64_t a1)
{
  *a1 = off_100994E00;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_10012EEC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_10012F7E8((a1 + 16), a2 + 16);
  if ((*(a2 + 52) & 2) != 0)
  {
    v4 = *(a2 + 40);
    *(a1 + 52) |= 2u;
    v5 = *(a1 + 40);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10012EFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10012EFC0(uint64_t a1)
{
  *a1 = off_100994E00;
  v2 = (a1 + 16);
  sub_100124964(a1);
  sub_100077C08(v2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10012F030(uint64_t a1)
{
  sub_10012EFC0(a1);

  operator delete();
}

uint64_t sub_10012F070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DF8;
  if (!qword_1009F9DF8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DF8;
  }

  return result;
}

uint64_t sub_10012F104(uint64_t a1)
{
  if ((*(a1 + 52) & 2) != 0)
  {
    v2 = *(a1 + 40);
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

  result = sub_100077B98(a1 + 16);
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  *(v4 + 11) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_10012F194(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      v8 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_30;
      }

LABEL_33:
      *(a1 + 52) |= 2u;
      if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if (TagFallback >> 3 == 1 && v8 == 2)
    {
      while (1)
      {
        v9 = *(a1 + 28);
        v10 = *(a1 + 24);
        if (v10 >= v9)
        {
          if (v9 == *(a1 + 32))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v9 + 1);
            v9 = *(a1 + 28);
          }

          *(a1 + 28) = v9 + 1;
          sub_1001497E4();
        }

        v11 = *(a1 + 16);
        *(a1 + 24) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v25 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v13;
          *(this + 1) = v13 + 1;
        }

        v14 = *(this + 14);
        v15 = *(this + 15);
        *(this + 14) = v14 + 1;
        if (v14 >= v15)
        {
          return 0;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
        if (!sub_10012E308(v12, this, v17, v18) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
        v19 = *(this + 14);
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v21 < 0 == v20)
        {
          *(this + 14) = v21;
        }

        v22 = *(this + 1);
        if (v22 >= *(this + 2))
        {
          goto LABEL_1;
        }

        v23 = *v22;
        if (v23 != 10)
        {
          if (v23 != 18)
          {
            goto LABEL_1;
          }

          *(this + 1) = v22 + 1;
          goto LABEL_33;
        }

        *(this + 1) = v22 + 1;
      }
    }

LABEL_30:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10012F418(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  if ((*(v5 + 52) & 2) != 0)
  {
    v7 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012F4CC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v8 = v7[15];
      if (v8 > 0x7F)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = a2 + 2;
      }

      a2 = sub_10012E880(v7, v9, a3);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  if ((*(this + 52) & 2) != 0)
  {
    v10 = *(this + 5);
    *a2 = 18;
    v11 = *(v10 + 23);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v10 + 8);
    }

    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v11;
      v12 = a2 + 2;
    }

    v13 = *(v10 + 23);
    if (v13 >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = *v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v10 + 23);
    }

    else
    {
      v15 = *(v10 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v14, v15, v12, a4);
  }

  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, a2, a3);
}

uint64_t sub_10012F5FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if ((*(a1 + 52) & 2) != 0)
  {
    v4 = *(a1 + 40);
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

    v3 = v9 + v5;
  }

  else
  {
    v3 = 0;
  }

  v11 = *(a1 + 24);
  v12 = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_10012EB08(*(*(a1 + 16) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(a1 + 24));
  }

  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 48) = v12;
  return v12;
}

uint64_t sub_10012F6FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012EEC0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012F7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012F7E8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1001497E4();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10012E018(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10012F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012F928(uint64_t result, uint64_t a2)
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

uint64_t sub_10012F9BC()
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

  return qword_1009EDFF0;
}

void sub_10012FA50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012FA64(uint64_t a1)
{
  *a1 = off_100994EB0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *&v2 = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = v2;
  return a1;
}

uint64_t sub_10012FAD4(uint64_t a1, uint64_t a2)
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
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 36) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9E00 + 24);
      }

      sub_1000E34FC(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10012FC40(void *a1)
{
  *a1 = off_100994EB0;
  v2 = (a1 + 1);
  sub_10012FCA0(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10012FCA0(void *result)
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

  if (qword_1009F9E00 != result)
  {
    result = result[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10012FD58(void *a1)
{
  sub_10012FC40(a1);

  operator delete();
}

uint64_t sub_10012FD98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E00;
  if (!qword_1009F9E00)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E00;
  }

  return result;
}

uint64_t sub_10012FE2C(uint64_t this)
{
  v1 = this;
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      v2 = *(this + 16);
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

    if ((*(this + 36) & 2) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = sub_1000E3A34(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 7) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_10012FECC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v8 != 2)
        {
          goto LABEL_16;
        }

        *(a1 + 36) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 18)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_19;
        }
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_16:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    *(a1 + 36) |= 2u;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v21 = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v12;
      *(this + 1) = v12 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v21);
    if (!sub_1000E3B60(v11, this, v16, v17) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_100130134(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9E00 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  }

  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001301D0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 9);
  if (v6)
  {
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
    v6 = *(this + 9);
  }

  if ((v6 & 2) != 0)
  {
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(qword_1009F9E00 + 24);
    }

    *v4 = 18;
    v15 = v14[18];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v16 = (v4 + 2);
    }

    v4 = sub_1000E4368(v14, v16, a3);
  }

  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v4, a3);
}

uint64_t sub_1001302E8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
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
    v3 = *(a1 + 36);
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

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    if (!v12)
    {
      v12 = *(qword_1009F9E00 + 24);
    }

    v13 = sub_1000E4630(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    }

    else
    {
      v15 = 1;
    }

    v4 = (v4 + v14 + v15 + 1);
  }

LABEL_21:
  v16 = *(a1 + 8);
  if (v16 && *v16 != v16[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_1001303EC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012FAD4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001304C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001304D8(uint64_t result, uint64_t a2)
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

uint64_t sub_10013056C()
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

  return qword_1009EE000;
}

void sub_100130600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100130614(void *a1)
{
  *a1 = off_100994F60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10013067C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      v7 = *(a1 + 24);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100130778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100130790(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100994F60;
  v2 = (a1 + 8);
  sub_1000880E8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001307F4(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100130790(a1);

  operator delete();
}

uint64_t sub_100130834(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E08;
  if (!qword_1009F9E08)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E08;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001308C8(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(a1 + 24);
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100130920(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        goto LABEL_14;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v12;
      v9 = *(a1 + 36) | 1;
      *(a1 + 36) = v9;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 18)
      {
        *(this + 1) = v10 + 1;
LABEL_18:
        *(a1 + 36) = v9 | 2;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

    if (v8 == 2)
    {
      v9 = *(a1 + 36);
      goto LABEL_18;
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

uint64_t sub_100130AB8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_100130B44(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    *a2 = 18;
    v8 = *(v7 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v7 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v8;
      v9 = a2 + 2;
    }

    v10 = *(v7 + 23);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *v7;
    }

    if (v10 >= 0)
    {
      v12 = *(v7 + 23);
    }

    else
    {
      v12 = *(v7 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_100130C58(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 24);
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
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
        v6 = *(v5 + 23);
        v8 = *(v5 + 8);
        v7 = *(v5 + 23);
      }

      else
      {
        v10 = 1;
      }

      if (v7 < 0)
      {
        v6 = v8;
      }

      v4 = (v4 + v10 + v6 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_100130D18(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013067C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100130DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100130E04(uint64_t result, uint64_t a2)
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

uint64_t sub_100130E98()
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

  return qword_1009EE010;
}

void sub_100130F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100130F40(uint64_t a1)
{
  *a1 = off_100995010;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *&v2 = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = v2;
  return a1;
}

uint64_t sub_100130FC8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 116);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = *(a2 + 16);
    *(a1 + 116) |= 1u;
    v7 = *(a1 + 16);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    v4 = *(a2 + 116);
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

  v8 = *(a2 + 24);
  *(a1 + 116) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 116);
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
  v9 = *(a2 + 32);
  *(a1 + 116) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 116);
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
  v10 = *(a2 + 40);
  *(a1 + 116) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v12 = *(a2 + 56);
    *(a1 + 116) |= 0x20u;
    *(a1 + 56) = v12;
    v4 = *(a2 + 116);
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
  v11 = *(a2 + 48);
  *(a1 + 116) |= 0x10u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 116);
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
  v13 = *(a2 + 64);
  *(a1 + 116) |= 0x40u;
  *(a1 + 64) = v13;
  v4 = *(a2 + 116);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 68);
    *(a1 + 116) |= 0x80u;
    *(a1 + 68) = v5;
    v4 = *(a2 + 116);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 72);
    *(a1 + 116) |= 0x100u;
    *(a1 + 72) = v14;
    v4 = *(a2 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 96);
  *(a1 + 116) |= 0x200u;
  *(a1 + 96) = v15;
  v4 = *(a2 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(a2 + 80);
  *(a1 + 116) |= 0x400u;
  *(a1 + 80) = v16;
  v4 = *(a2 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

LABEL_35:
    v18 = *(a2 + 104);
    *(a1 + 116) |= 0x1000u;
    *(a1 + 104) = v18;
    if ((*(a2 + 116) & 0x2000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_36;
  }

LABEL_34:
  v17 = *(a2 + 88);
  *(a1 + 116) |= 0x800u;
  *(a1 + 88) = v17;
  v4 = *(a2 + 116);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  if ((v4 & 0x2000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_36:
  v19 = *(a2 + 100);
  if (v19 >= 6)
  {
    sub_10049E22C();
  }

  *(a1 + 116) |= 0x2000u;
  *(a1 + 100) = v19;
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100131264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10013127C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100995010;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001312E0(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10013127C(a1);

  operator delete();
}

uint64_t sub_100131320(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E10;
  if (!qword_1009F9E10)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E10;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001313B4(uint64_t a1)
{
  v1 = *(a1 + 116);
  if (v1)
  {
    if (v1)
    {
      v2 = *(a1 + 16);
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

    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    v1 = *(a1 + 116);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 27) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100131438(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_42;
        }

        *(a1 + 116) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (result)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 < v10 && *v11 == 16)
          {
            v12 = v11 + 1;
            *(this + 1) = v12;
            goto LABEL_30;
          }

          continue;
        }

        return result;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_30:
        if (v12 >= v10 || (v17 = *v12, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v18 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v17;
          v18 = v12 + 1;
          *(this + 1) = v18;
        }

        *(a1 + 116) |= 2u;
        if (v18 < v10 && *v18 == 25)
        {
          *(this + 1) = v18 + 1;
          goto LABEL_50;
        }

        continue;
      case 3u:
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_50:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v37;
        *(a1 + 116) |= 4u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 33)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_54:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v37;
        *(a1 + 116) |= 8u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 41)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_58:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v37;
        *(a1 + 116) |= 0x10u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 49)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_62:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v37;
        *(a1 + 116) |= 0x20u;
        v25 = *(this + 1);
        v15 = *(this + 2);
        if (v25 >= v15 || *v25 != 56)
        {
          continue;
        }

        v21 = v25 + 1;
        *(this + 1) = v21;
LABEL_66:
        if (v21 >= v15 || (v26 = *v21, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 64) = v26;
          v27 = v21 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 116) |= 0x40u;
        if (v27 >= v15 || *v27 != 64)
        {
          continue;
        }

        v16 = v27 + 1;
        *(this + 1) = v16;
LABEL_74:
        if (v16 >= v15 || (v28 = *v16, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 68));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v15 = *(this + 2);
        }

        else
        {
          *(a1 + 68) = v28;
          v29 = v16 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 116) |= 0x80u;
        if (v29 >= v15 || *v29 != 73)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_82:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v37;
        *(a1 + 116) |= 0x100u;
        v30 = *(this + 1);
        v13 = *(this + 2);
        if (v30 >= v13 || *v30 != 80)
        {
          continue;
        }

        v14 = v30 + 1;
        *(this + 1) = v14;
LABEL_86:
        if (v14 >= v13 || (v31 = *v14, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 96));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 96) = v31;
          v32 = v14 + 1;
          *(this + 1) = v32;
        }

        *(a1 + 116) |= 0x200u;
        if (v32 >= v13 || *v32 != 89)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_94:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v37;
        *(a1 + 116) |= 0x400u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 97)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_98:
        *v37 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v37;
        *(a1 + 116) |= 0x800u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 105)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_102:
        *v37 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37))
        {
          *(a1 + 104) = *v37;
          *(a1 + 116) |= 0x1000u;
          v35 = *(this + 1);
          v19 = *(this + 2);
          if (v35 < v19 && *v35 == 112)
          {
            v20 = v35 + 1;
            *(this + 1) = v20;
LABEL_106:
            v37[0] = 0;
            if (v20 >= v19 || (v36 = *v20, (v36 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v37);
              if (!result)
              {
                return result;
              }

              v36 = v37[0];
            }

            else
            {
              *(this + 1) = v20 + 1;
            }

            if (v36 > 5)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 14, v36);
            }

            else
            {
              *(a1 + 116) |= 0x2000u;
              *(a1 + 100) = v36;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 4u:
        if (v8 == 1)
        {
          goto LABEL_54;
        }

        goto LABEL_42;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_58;
        }

        goto LABEL_42;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_42;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v21 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_66;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_74;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_82;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_86;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_94;
        }

        goto LABEL_42;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_42;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_42;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
        goto LABEL_106;
      default:
LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_100131A60(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    v10 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 68), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 96), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
    if ((*(v5 + 116) & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v6 & 0x2000) != 0)
  {
LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 100), a2, a4);
  }

LABEL_16:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100131C44(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 29);
  if (v6)
  {
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
    v6 = *(this + 29);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 16;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v4 + 1, a3);
  v6 = *(this + 29);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(this + 4);
  *v4 = 25;
  *(v4 + 1) = v15;
  v4 = (v4 + 9);
  v6 = *(this + 29);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v16;
  v4 = (v4 + 9);
  v6 = *(this + 29);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v17 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v17;
  v4 = (v4 + 9);
  v6 = *(this + 29);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_25:
  v18 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v18;
  v4 = (v4 + 9);
  if ((*(this + 29) & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v19 = *(this + 16);
  *v4 = 56;
  if (v19 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v19;
    v4 = (v4 + 2);
  }

LABEL_29:
  if ((*(this + 116) & 0x80) != 0)
  {
    v20 = *(this + 17);
    *v4 = 64;
    if (v20 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v20;
      v4 = (v4 + 2);
    }
  }

  v21 = *(this + 29);
  if ((v21 & 0x100) != 0)
  {
    v22 = *(this + 9);
    *v4 = 73;
    *(v4 + 1) = v22;
    v4 = (v4 + 9);
    v21 = *(this + 29);
  }

  if ((v21 & 0x200) != 0)
  {
    v23 = *(this + 24);
    *v4 = 80;
    if (v23 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v23;
      v4 = (v4 + 2);
    }
  }

  v24 = *(this + 29);
  if ((v24 & 0x400) != 0)
  {
    v25 = *(this + 10);
    *v4 = 89;
    *(v4 + 1) = v25;
    v4 = (v4 + 9);
    v24 = *(this + 29);
    if ((v24 & 0x800) == 0)
    {
LABEL_41:
      if ((v24 & 0x1000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }
  }

  else if ((v24 & 0x800) == 0)
  {
    goto LABEL_41;
  }

  v26 = *(this + 11);
  *v4 = 97;
  *(v4 + 1) = v26;
  v4 = (v4 + 9);
  v24 = *(this + 29);
  if ((v24 & 0x1000) == 0)
  {
LABEL_42:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

LABEL_47:
    v28 = *(this + 25);
    *v4 = 112;
    v29 = v4 + 1;
    if ((v28 & 0x80000000) != 0)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v28, v29, a3);
    }

    else
    {
      if (v28 <= 0x7F)
      {
        *(v4 + 1) = v28;
        v4 = (v4 + 2);
        goto LABEL_53;
      }

      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v29, a3);
    }

    v4 = v30;
    goto LABEL_53;
  }

LABEL_46:
  v27 = *(this + 13);
  *v4 = 105;
  *(v4 + 1) = v27;
  v4 = (v4 + 9);
  if ((*(this + 29) & 0x2000) != 0)
  {
    goto LABEL_47;
  }

LABEL_53:
  v33 = *(this + 1);
  v32 = (this + 8);
  v31 = v33;
  if (!v33 || *v31 == v31[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v32, v4, a3);
}

uint64_t sub_1001320D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 116);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_35;
  }

  if (v3)
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
      v3 = *(a1 + 116);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  v3 = *(a1 + 116);
LABEL_16:
  v13 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v13 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v13 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v13 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v13 + 9;
  }

  else
  {
    v5 = v13;
  }

  if ((v3 & 0x40) != 0)
  {
    v14 = *(a1 + 64);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v15 = 2;
    }

    v5 = (v15 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v16 = *(a1 + 68);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v17 = 2;
    }

    v5 = (v17 + v5);
  }

LABEL_35:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      LODWORD(v5) = v5 + 9;
    }

    if ((v3 & 0x200) != 0)
    {
      v18 = *(a1 + 96);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
        v3 = *(a1 + 116);
      }

      else
      {
        v19 = 2;
      }

      LODWORD(v5) = v19 + v5;
    }

    v20 = v5 + 9;
    if ((v3 & 0x400) == 0)
    {
      v20 = v5;
    }

    if ((v3 & 0x800) != 0)
    {
      v20 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v5 = v20 + 9;
    }

    else
    {
      v5 = v20;
    }

    if ((v3 & 0x2000) != 0)
    {
      v21 = *(a1 + 100);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 11;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      }

      else
      {
        v22 = 2;
      }

      v5 = (v22 + v5);
    }
  }

  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 112) = v5;
  return v5;
}

uint64_t sub_1001322B4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100130FC8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100132388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001323A0(uint64_t result, uint64_t a2)
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

uint64_t sub_100132434()
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

  return qword_1009EE020;
}

void sub_1001324C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1001324DC(void *a1)
{
  *a1 = off_1009950C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100132538(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 28))
  {
    v5 = *(a2 + 16);
    if (v5 >= 3)
    {
      sub_10049E258();
    }

    *(a1 + 28) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 28);
  }

  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 20);
    *(a1 + 28) |= 2u;
    *(a1 + 20) = v8;
    v4 = *(a2 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

LABEL_15:
      v10 = *(a2 + 22);
      *(a1 + 28) |= 8u;
      *(a1 + 22) = v10;
      if ((*(a2 + 28) & 0x10) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a2 + 21);
  *(a1 + 28) |= 4u;
  *(a1 + 21) = v9;
  v4 = *(a2 + 28);
  if ((v4 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((v4 & 0x10) != 0)
  {
LABEL_11:
    v6 = *(a2 + 23);
    *(a1 + 28) |= 0x10u;
    *(a1 + 23) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100132660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100132678(uint64_t a1)
{
  *a1 = off_1009950C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001326CC(uint64_t a1)
{
  *a1 = off_1009950C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001327A0(uint64_t a1)
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

uint64_t sub_1001327C0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_35;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v26 = 0;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v15 = v26;
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (v15 > 2)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v15);
        }

        else
        {
          *(a1 + 28) |= 1u;
          *(a1 + 16) = v15;
        }

        v16 = *(this + 1);
        v9 = *(this + 2);
        if (v16 < v9 && *v16 == 16)
        {
          v11 = v16 + 1;
          *(this + 1) = v11;
LABEL_35:
          v26 = 0;
          if (v11 >= v9 || (v17 = *v11, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
            if (!result)
            {
              return result;
            }

            v17 = v26;
            v18 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v18 = v11 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 20) = v17 != 0;
          *(a1 + 28) |= 2u;
          if (v18 < v9 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(this + 1) = v12;
LABEL_43:
            v26 = 0;
            if (v12 >= v9 || (v19 = *v12, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
              if (!result)
              {
                return result;
              }

              v19 = v26;
              v20 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              v20 = v12 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 21) = v19 != 0;
            *(a1 + 28) |= 4u;
            if (v20 < v9 && *v20 == 32)
            {
              v13 = v20 + 1;
              *(this + 1) = v13;
              goto LABEL_51;
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

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_43;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
LABEL_51:
      v26 = 0;
      if (v13 >= v9 || (v21 = *v13, (v21 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
        if (!result)
        {
          return result;
        }

        v21 = v26;
        v22 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v22 = v13 + 1;
        *(this + 1) = v22;
      }

      *(a1 + 22) = v21 != 0;
      *(a1 + 28) |= 8u;
      if (v22 < v9 && *v22 == 40)
      {
        v10 = v22 + 1;
        *(this + 1) = v10;
LABEL_59:
        v26 = 0;
        if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
          if (!result)
          {
            return result;
          }

          v23 = v26;
          v24 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v24 = v10 + 1;
          *(this + 1) = v24;
        }

        *(a1 + 23) = v23 != 0;
        *(a1 + 28) |= 0x10u;
        if (v24 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_59;
    }

LABEL_21:
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

uint64_t sub_100132B04(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 22), a2, a4);
    if ((*(v5 + 28) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 21), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 23), a2, a4);
  }

LABEL_7:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100132BEC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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
  v6 = *(this + 7);
  if ((v6 & 2) != 0)
  {
    v12 = *(this + 20);
    *a2 = 16;
    *(a2 + 1) = v12;
    a2 = (a2 + 2);
    v6 = *(this + 7);
    if ((v6 & 4) == 0)
    {
LABEL_10:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

LABEL_21:
      v14 = *(this + 22);
      *a2 = 32;
      *(a2 + 1) = v14;
      a2 = (a2 + 2);
      if ((*(this + 7) & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(this + 21);
  *a2 = 24;
  *(a2 + 1) = v13;
  a2 = (a2 + 2);
  v6 = *(this + 7);
  if ((v6 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((v6 & 0x10) != 0)
  {
LABEL_12:
    v7 = *(this + 23);
    *a2 = 40;
    *(a2 + 1) = v7;
    a2 = (a2 + 2);
  }

LABEL_13:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_100132D0C(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[7];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[4];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[7];
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

    v5 = (v3 & 2) + v4 + ((v3 >> 1) & 2) + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 1);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v5;
  }

  a1[6] = v5;
  return v5;
}

uint64_t sub_100132DCC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100132538(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100132EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100132EB8(uint64_t result, uint64_t a2)
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

uint64_t sub_100132F4C()
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

  return qword_1009EE030;
}

void sub_100132FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100132FF4(uint64_t a1)
{
  *a1 = off_100995170;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return a1;
}

uint64_t sub_100133074(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 104);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 104) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 104);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 104) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9E20 + 24);
      }

      sub_100132538(v7, v8);
      v4 = *(a2 + 104);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 104) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9E20 + 32);
      }

      sub_100130FC8(v9, v10);
      v4 = *(a2 + 104);
    }

    if ((v4 & 8) != 0)
    {
      v20 = *(a2 + 40);
      *(a1 + 104) |= 8u;
      *(a1 + 40) = v20;
      v4 = *(a2 + 104);
      if ((v4 & 0x10) == 0)
      {
LABEL_22:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_49;
      }
    }

    else if ((v4 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    v21 = *(a2 + 48);
    *(a1 + 104) |= 0x10u;
    *(a1 + 48) = v21;
    v4 = *(a2 + 104);
    if ((v4 & 0x20) == 0)
    {
LABEL_23:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_49:
    v22 = *(a2 + 72);
    if (v22 >= 6)
    {
      sub_10049E284();
    }

    *(a1 + 104) |= 0x20u;
    *(a1 + 72) = v22;
    v4 = *(a2 + 104);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v11 = *(a2 + 56);
    *(a1 + 104) |= 0x40u;
    *(a1 + 56) = v11;
    v4 = *(a2 + 104);
LABEL_25:
    if ((v4 & 0x80) != 0)
    {
      *(a1 + 104) |= 0x80u;
      v12 = *(a1 + 64);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 64);
      if (!v13)
      {
        v13 = *(qword_1009F9E20 + 64);
      }

      sub_100063178(v12, v13);
      v4 = *(a2 + 104);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 104) |= 0x100u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 80);
      if (!v15)
      {
        v15 = *(qword_1009F9E20 + 80);
      }

      sub_100063178(v14, v15);
      v4 = *(a2 + 104);
    }

    if ((v4 & 0x200) != 0)
    {
      v16 = *(a2 + 88);
      *(a1 + 104) |= 0x200u;
      *(a1 + 88) = v16;
      v4 = *(a2 + 104);
    }

    if ((v4 & 0x400) != 0)
    {
      v17 = *(a2 + 76);
      if (v17 >= 9)
      {
        sub_10049E2B0();
      }

      *(a1 + 104) |= 0x400u;
      *(a1 + 76) = v17;
      v4 = *(a2 + 104);
    }

    if ((v4 & 0x800) != 0)
    {
      v18 = *(a2 + 96);
      if (v18 >= 4)
      {
        sub_10049E2DC();
      }

      *(a1 + 104) |= 0x800u;
      *(a1 + 96) = v18;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100133410(void *a1)
{
  *a1 = off_100995170;
  v2 = (a1 + 1);
  sub_100133470(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100133470(void *result)
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

  if (qword_1009F9E20 != result)
  {
    v4 = result[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[10];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_1001335AC(void *a1)
{
  sub_100133410(a1);

  operator delete();
}

uint64_t sub_1001335EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E20;
  if (!qword_1009F9E20)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E20;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100133680(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 26);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 2);
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

    if ((*(this + 104) & 2) != 0)
    {
      this = *(this + 3);
      if (this)
      {
        if (*(this + 28))
        {
          *(this + 2) = 0;
        }

        v4 = *(this + 1);
        this = (this + 8);
        *(this + 5) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v2 = *(v1 + 26);
    if ((v2 & 4) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        this = sub_1001313B4(this);
        v2 = *(v1 + 26);
      }
    }

    *(v1 + 18) = 0;
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
    *(v1 + 5) = 0;
    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 8);
      if (this)
      {
        this = sub_10006339C(this);
        v2 = *(v1 + 26);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 10);
      if (this)
      {
        this = sub_10006339C(this);
      }
    }

    *(v1 + 11) = 0;
    *(v1 + 19) = 0;
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 1);
  v5 = (v1 + 8);
  *(v5 + 24) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_100133798(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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
          if (TagFallback >> 3 <= 6)
          {
            break;
          }

          if (TagFallback >> 3 > 9)
          {
            if (v8 == 10)
            {
              if (v9 == 1)
              {
                goto LABEL_131;
              }
            }

            else if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v20 = *(this + 1);
                v19 = *(this + 2);
                goto LABEL_135;
              }
            }

            else if (v8 == 12 && (TagFallback & 7) == 0)
            {
              v13 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_146;
            }

            goto LABEL_53;
          }

          if (v8 == 7)
          {
            if (v9 == 1)
            {
              goto LABEL_99;
            }

            goto LABEL_53;
          }

          if (v8 != 8)
          {
            if (v8 == 9 && v9 == 2)
            {
              goto LABEL_117;
            }

            goto LABEL_53;
          }

          if (v9 != 2)
          {
            goto LABEL_53;
          }

          v18 = *(a1 + 104);
LABEL_103:
          *(a1 + 104) = v18 | 0x80;
          v45 = *(a1 + 64);
          if (!v45)
          {
            operator new();
          }

          v69[0] = 0;
          v46 = *(this + 1);
          if (v46 >= *(this + 2) || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
            {
              return 0;
            }
          }

          else
          {
            v69[0] = *v46;
            *(this + 1) = v46 + 1;
          }

          v47 = *(this + 14);
          v48 = *(this + 15);
          *(this + 14) = v47 + 1;
          if (v47 >= v48)
          {
            return 0;
          }

          v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
          if (!sub_1000633B4(v45, this, v50, v51) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v49);
          v52 = *(this + 14);
          v27 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v27)
          {
            *(this + 14) = v53;
          }

          v54 = *(this + 1);
          if (v54 < *(this + 2) && *v54 == 74)
          {
            *(this + 1) = v54 + 1;
LABEL_117:
            *(a1 + 104) |= 0x100u;
            v55 = *(a1 + 80);
            if (!v55)
            {
              operator new();
            }

            v69[0] = 0;
            v56 = *(this + 1);
            if (v56 >= *(this + 2) || *v56 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
              {
                return 0;
              }
            }

            else
            {
              v69[0] = *v56;
              *(this + 1) = v56 + 1;
            }

            v57 = *(this + 14);
            v58 = *(this + 15);
            *(this + 14) = v57 + 1;
            if (v57 >= v58)
            {
              return 0;
            }

            v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
            if (!sub_1000633B4(v55, this, v60, v61) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
            v62 = *(this + 14);
            v27 = __OFSUB__(v62, 1);
            v63 = v62 - 1;
            if (v63 < 0 == v27)
            {
              *(this + 14) = v63;
            }

            v64 = *(this + 1);
            if (v64 < *(this + 2) && *v64 == 81)
            {
              *(this + 1) = v64 + 1;
LABEL_131:
              *v69 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 88) = *v69;
              *(a1 + 104) |= 0x200u;
              v65 = *(this + 1);
              v19 = *(this + 2);
              if (v65 < v19 && *v65 == 88)
              {
                v20 = v65 + 1;
                *(this + 1) = v20;
LABEL_135:
                v69[0] = 0;
                if (v20 >= v19 || (v66 = *v20, (v66 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
                  if (!result)
                  {
                    return result;
                  }

                  v66 = v69[0];
                }

                else
                {
                  *(this + 1) = v20 + 1;
                }

                if (v66 > 8)
                {
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 11, v66);
                }

                else
                {
                  *(a1 + 104) |= 0x400u;
                  *(a1 + 76) = v66;
                }

                v67 = *(this + 1);
                v12 = *(this + 2);
                if (v67 < v12 && *v67 == 96)
                {
                  v13 = v67 + 1;
                  *(this + 1) = v13;
LABEL_146:
                  v69[0] = 0;
                  if (v13 >= v12 || (v68 = *v13, (v68 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
                    if (!result)
                    {
                      return result;
                    }

                    v68 = v69[0];
                  }

                  else
                  {
                    *(this + 1) = v13 + 1;
                  }

                  if (v68 > 3)
                  {
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 12, v68);
                  }

                  else
                  {
                    *(a1 + 104) |= 0x800u;
                    *(a1 + 96) = v68;
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

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if (v9 == 1)
            {
              goto LABEL_80;
            }
          }

          else if (v8 == 5)
          {
            if (v9 == 1)
            {
              goto LABEL_84;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_88;
          }

          goto LABEL_53;
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_53;
        }

        *(a1 + 104) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 18)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_43;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_53;
      }

LABEL_43:
      *(a1 + 104) |= 2u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        operator new();
      }

      v69[0] = 0;
      v17 = *(this + 1);
      if (v17 >= *(this + 2) || *v17 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
        {
          return 0;
        }
      }

      else
      {
        v69[0] = *v17;
        *(this + 1) = v17 + 1;
      }

      v21 = *(this + 14);
      v22 = *(this + 15);
      *(this + 14) = v21 + 1;
      if (v21 >= v22)
      {
        return 0;
      }

      v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
      if (!sub_1001327C0(v16, this, v24, v25) || *(this + 36) != 1)
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
      if (v29 < *(this + 2) && *v29 == 26)
      {
        *(this + 1) = v29 + 1;
LABEL_66:
        *(a1 + 104) |= 4u;
        v30 = *(a1 + 32);
        if (!v30)
        {
          operator new();
        }

        v69[0] = 0;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69))
          {
            return 0;
          }
        }

        else
        {
          v69[0] = *v31;
          *(this + 1) = v31 + 1;
        }

        v32 = *(this + 14);
        v33 = *(this + 15);
        *(this + 14) = v32 + 1;
        if (v32 >= v33)
        {
          return 0;
        }

        v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v69[0]);
        if (!sub_100131438(v30, this, v35, v36) || *(this + 36) != 1)
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

        v39 = *(this + 1);
        if (v39 < *(this + 2) && *v39 == 33)
        {
          *(this + 1) = v39 + 1;
LABEL_80:
          *v69 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v69;
          *(a1 + 104) |= 8u;
          v40 = *(this + 1);
          if (v40 < *(this + 2) && *v40 == 41)
          {
            *(this + 1) = v40 + 1;
LABEL_84:
            *v69 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v69;
            *(a1 + 104) |= 0x10u;
            v41 = *(this + 1);
            v10 = *(this + 2);
            if (v41 < v10 && *v41 == 48)
            {
              v11 = v41 + 1;
              *(this + 1) = v11;
LABEL_88:
              v69[0] = 0;
              if (v11 >= v10 || (v42 = *v11, (v42 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v69);
                if (!result)
                {
                  return result;
                }

                v42 = v69[0];
              }

              else
              {
                *(this + 1) = v11 + 1;
              }

              if (v42 > 5)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 6, v42);
              }

              else
              {
                *(a1 + 104) |= 0x20u;
                *(a1 + 72) = v42;
              }

              v43 = *(this + 1);
              if (v43 < *(this + 2) && *v43 == 57)
              {
                *(this + 1) = v43 + 1;
LABEL_99:
                *v69 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v69) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = *v69;
                v18 = *(a1 + 104) | 0x40;
                *(a1 + 104) = v18;
                v44 = *(this + 1);
                if (v44 < *(this + 2) && *v44 == 66)
                {
                  *(this + 1) = v44 + 1;
                  goto LABEL_103;
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && v9 == 2)
    {
      goto LABEL_66;
    }

LABEL_53:
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

uint64_t sub_10013406C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 104);
  if (v6)
  {
    v10 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 104);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    v11 = *(qword_1009F9E20 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_24:
  v12 = *(v5 + 32);
  if (!v12)
  {
    v12 = *(qword_1009F9E20 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 72), a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v13 = *(v5 + 64);
  if (!v13)
  {
    v13 = *(qword_1009F9E20 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v13, a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(qword_1009F9E20 + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v14, a2, a4);
  v6 = *(v5 + 104);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 76), a2, a4);
    if ((*(v5 + 104) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 88), a3);
  v6 = *(v5 + 104);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_38;
  }

LABEL_12:
  if ((v6 & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 96), a2, a4);
  }

LABEL_14:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100134258(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 26);
  if (v6)
  {
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
    v6 = *(this + 26);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  if (!v14)
  {
    v14 = *(qword_1009F9E20 + 24);
  }

  *v4 = 18;
  v15 = v14[6];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = (v4 + 2);
  }

  v4 = sub_100132BEC(v14, v16, a3);
  v6 = *(this + 26);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_26:
  v17 = *(this + 4);
  if (!v17)
  {
    v17 = *(qword_1009F9E20 + 32);
  }

  *v4 = 26;
  v18 = v17[28];
  if (v18 > 0x7F)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v18;
    v19 = (v4 + 2);
  }

  v4 = sub_100131C44(v17, v19, a3, a4);
  v6 = *(this + 26);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v20 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v20;
  v4 = (v4 + 9);
  v6 = *(this + 26);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_33:
  v21 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v21;
  v4 = (v4 + 9);
  if ((*(this + 26) & 0x20) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v22 = *(this + 18);
  *v4 = 48;
  v23 = v4 + 1;
  if ((v22 & 0x80000000) != 0)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v22, v23, a3);
  }

  else
  {
    if (v22 <= 0x7F)
    {
      *(v4 + 1) = v22;
      v4 = (v4 + 2);
      goto LABEL_40;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v23, a3);
  }

  v4 = v24;
LABEL_40:
  v25 = *(this + 26);
  if ((v25 & 0x40) != 0)
  {
    v26 = *(this + 7);
    *v4 = 57;
    *(v4 + 1) = v26;
    v4 = (v4 + 9);
    v25 = *(this + 26);
    if ((v25 & 0x80) == 0)
    {
LABEL_42:
      if ((v25 & 0x100) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_53;
    }
  }

  else if ((v25 & 0x80) == 0)
  {
    goto LABEL_42;
  }

  v27 = *(this + 8);
  if (!v27)
  {
    v27 = *(qword_1009F9E20 + 64);
  }

  *v4 = 66;
  v28 = *(v27 + 32);
  if (v28 > 0x7F)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v28;
    v29 = v4 + 2;
  }

  v4 = sub_1000637BC(v27, v29, a3);
  v25 = *(this + 26);
  if ((v25 & 0x100) == 0)
  {
LABEL_43:
    if ((v25 & 0x200) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_59;
  }

LABEL_53:
  v30 = *(this + 10);
  if (!v30)
  {
    v30 = *(qword_1009F9E20 + 80);
  }

  *v4 = 74;
  v31 = *(v30 + 32);
  if (v31 > 0x7F)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v31;
    v32 = v4 + 2;
  }

  v4 = sub_1000637BC(v30, v32, a3);
  v25 = *(this + 26);
  if ((v25 & 0x200) == 0)
  {
LABEL_44:
    if ((v25 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = *(this + 11);
  *v4 = 81;
  *(v4 + 1) = v33;
  v4 = (v4 + 9);
  if ((*(this + 26) & 0x400) == 0)
  {
    goto LABEL_66;
  }

LABEL_60:
  v34 = *(this + 19);
  *v4 = 88;
  v35 = v4 + 1;
  if ((v34 & 0x80000000) != 0)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v34, v35, a3);
  }

  else
  {
    if (v34 <= 0x7F)
    {
      *(v4 + 1) = v34;
      v4 = (v4 + 2);
      goto LABEL_66;
    }

    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v35, a3);
  }

  v4 = v36;
LABEL_66:
  if ((*(this + 105) & 8) != 0)
  {
    v37 = *(this + 24);
    *v4 = 96;
    v38 = v4 + 1;
    if ((v37 & 0x80000000) != 0)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v37, v38, a3);
    }

    else
    {
      if (v37 <= 0x7F)
      {
        *(v4 + 1) = v37;
        v4 = (v4 + 2);
        goto LABEL_73;
      }

      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v38, a3);
    }

    v4 = v39;
  }

LABEL_73:
  v42 = *(this + 1);
  v41 = (this + 8);
  v40 = v42;
  if (!v42 || *v40 == v40[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v41, v4, a3);
}

uint64_t sub_1001346A8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_50;
  }

  if (v3)
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
      v3 = *(a1 + 104);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_1009F9E20 + 24);
    }

    v14 = sub_100132D0C(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 += v15 + v16 + 1;
    v3 = *(a1 + 104);
  }

LABEL_21:
  if ((v3 & 4) != 0)
  {
    v17 = *(a1 + 32);
    if (!v17)
    {
      v17 = *(qword_1009F9E20 + 32);
    }

    v18 = sub_1001320D0(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
    v3 = *(a1 + 104);
  }

  v21 = v4 + 9;
  if ((v3 & 8) == 0)
  {
    v21 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    LODWORD(v5) = v21 + 9;
  }

  else
  {
    LODWORD(v5) = v21;
  }

  if ((v3 & 0x20) != 0)
  {
    v22 = *(a1 + 72);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(a1 + 104);
    }

    else
    {
      v23 = 2;
    }

    LODWORD(v5) = v23 + v5;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = (v5 + 9);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x80) != 0)
  {
    v24 = *(a1 + 64);
    if (!v24)
    {
      v24 = *(qword_1009F9E20 + 64);
    }

    v25 = sub_10006382C(v24, a2);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
    }

    else
    {
      v27 = 1;
    }

    v5 = (v5 + v26 + v27 + 1);
    v3 = *(a1 + 104);
  }

LABEL_50:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v28 = *(a1 + 80);
      if (!v28)
      {
        v28 = *(qword_1009F9E20 + 80);
      }

      v29 = sub_10006382C(v28, a2);
      v30 = v29;
      if (v29 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
      }

      else
      {
        v31 = 1;
      }

      LODWORD(v5) = v5 + v30 + v31 + 1;
      v3 = *(a1 + 104);
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x400) != 0)
    {
      v32 = *(a1 + 76);
      if ((v32 & 0x80000000) != 0)
      {
        v33 = 11;
      }

      else if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
        v3 = *(a1 + 104);
      }

      else
      {
        v33 = 2;
      }

      v5 = (v33 + v5);
    }

    if ((v3 & 0x800) != 0)
    {
      v34 = *(a1 + 96);
      if ((v34 & 0x80000000) != 0)
      {
        v35 = 11;
      }

      else if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
      }

      else
      {
        v35 = 2;
      }

      v5 = (v35 + v5);
    }
  }

  v36 = *(a1 + 8);
  if (v36 && *v36 != v36[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 100) = v5;
  return v5;
}

uint64_t sub_10013495C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100133074(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100134A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100134A48(uint64_t result, uint64_t a2)
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

uint64_t sub_100134ADC()
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

  return qword_1009EE040;
}

void sub_100134B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100134B84(uint64_t a1)
{
  *a1 = off_100995220;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  return a1;
}

uint64_t sub_100134BF4(uint64_t a1, uint64_t a2)
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
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      if (v7 >= 9)
      {
        sub_10049E308();
      }

      *(a1 + 36) |= 2u;
      *(a1 + 24) = v7;
      v4 = *(a2 + 36);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 28);
      *(a1 + 36) |= 4u;
      *(a1 + 28) = v8;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100134D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100134D30(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100995220;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100134D94(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100134D30(a1);

  operator delete();
}

uint64_t sub_100134DD4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E28;
  if (!qword_1009F9E28)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E28;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100134E68(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100134EC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
LABEL_18:
        v20 = 0;
        if (v13 >= v11 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v14 = v20;
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v14 > 8)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v14);
        }

        else
        {
          *(a1 + 36) |= 2u;
          *(a1 + 24) = v14;
        }

        v17 = *(this + 1);
        v15 = *(this + 2);
        if (v17 < v15 && *v17 == 24)
        {
          v16 = v17 + 1;
          *(this + 1) = v16;
LABEL_34:
          v21 = 0;
          if (v16 >= v15 || (v18 = *v16, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
            if (!result)
            {
              return result;
            }

            v18 = v21;
            v19 = *(this + 1);
            v15 = *(this + 2);
          }

          else
          {
            v19 = v16 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 28) = v18 != 0;
          *(a1 + 36) |= 4u;
          if (v19 == v15 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_22;
        }

        *(a1 + 36) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 < v11 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_18;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v16 = *(this + 1);
      v15 = *(this + 2);
      goto LABEL_34;
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
}

uint64_t sub_100135114(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = *(this + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 28), a2, a4);
  }

LABEL_5:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001351C4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 9);
  if (v6)
  {
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
    v6 = *(this + 9);
  }

  if ((v6 & 2) != 0)
  {
    v14 = *(this + 6);
    *v4 = 16;
    v15 = v4 + 1;
    if ((v14 & 0x80000000) != 0)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v15, a3);
    }

    else
    {
      if (v14 <= 0x7F)
      {
        *(v4 + 1) = v14;
        v4 = (v4 + 2);
        goto LABEL_21;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
    }

    v4 = v16;
  }

LABEL_21:
  if ((*(this + 36) & 4) != 0)
  {
    v17 = *(this + 28);
    *v4 = 24;
    *(v4 + 1) = v17;
    v4 = (v4 + 2);
  }

  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v4, a3);
}

uint64_t sub_1001352E4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    if (v3)
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
        v3 = *(a1 + 36);
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
      if ((v3 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
LABEL_21:
        v5 = ((v3 >> 1) & 2) + v4;
        goto LABEL_22;
      }
    }

    v13 = *(a1 + 24);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:
  v15 = *(a1 + 8);
  if (v15 && *v15 != v15[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1001353E0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100134BF4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001354B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001354CC(uint64_t result, uint64_t a2)
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

uint64_t sub_100135560()
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

  return qword_1009EE050;
}

void sub_1001355F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100135608(void *a1)
{
  *a1 = off_1009952D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return a1;
}

uint64_t sub_10013566C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    v4 = *(a2 + 16);
    *(a1 + 28) |= 1u;
    v5 = *(a1 + 16);
    if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v5, v4);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100135748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100135760(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1009952D0;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001357C4(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100135760(a1);

  operator delete();
}

uint64_t sub_100135804(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E30;
  if (!qword_1009F9E30)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E30;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100135898(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v1 = *(a1 + 16);
    if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v1 + 23) < 0)
      {
        **v1 = 0;
        *(v1 + 8) = 0;
      }

      else
      {
        *v1 = 0;
        *(v1 + 23) = 0;
      }
    }
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001358E8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_100135A0C(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100135A80(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
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

uint64_t sub_100135B40(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100135BE4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10013566C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100135CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100135CD0(uint64_t result, uint64_t a2)
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

uint64_t sub_100135D64()
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

  return qword_1009EE060;
}

void sub_100135DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100135E0C(void *a1)
{
  *a1 = off_100995380;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[5] = 0;
  a1[6] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100135E78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 52))
  {
    v7 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    v8 = *(a1 + 16);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v10 = *(a2 + 32);
      *(a1 + 52) |= 4u;
      *(a1 + 32) = v10;
      if ((*(a2 + 52) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 8u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100135FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100135FD4(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100995380;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100136038(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100135FD4(a1);

  operator delete();
}

uint64_t sub_100136078(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E38;
  if (!qword_1009F9E38)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E38;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10013610C(uint64_t a1)
{
  if (*(a1 + 52))
  {
    if (*(a1 + 52))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100136168(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 == 3)
        {
          if (v9 == 1)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        if (v8 != 4 || v9 != 1)
        {
          goto LABEL_27;
        }

LABEL_34:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v14;
        *(a1 + 52) |= 8u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_27;
      }

      *(a1 + 52) |= 1u;
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
LABEL_22:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v14;
        *(a1 + 52) |= 2u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 25)
        {
          *(this + 1) = v12 + 1;
LABEL_30:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 4u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 33)
          {
            *(this + 1) = v13 + 1;
            goto LABEL_34;
          }
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_22;
    }

LABEL_27:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1001363C0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    v9 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
      if ((*(v4 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v5 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  }

LABEL_6:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

_BYTE *sub_10013648C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 13);
  if (v5)
  {
    v11 = *(this + 2);
    *a2 = 10;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, a3);
    }

    else
    {
      a2[1] = v12;
      v13 = a2 + 2;
    }

    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, a4);
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_25:
      v18 = *(this + 4);
      *a2 = 25;
      *(a2 + 1) = v18;
      a2 += 9;
      if ((*(this + 13) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v17 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v17;
  a2 += 9;
  v5 = *(this + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v5 & 8) != 0)
  {
LABEL_5:
    v6 = *(this + 5);
    *a2 = 33;
    *(a2 + 1) = v6;
    a2 += 9;
  }

LABEL_6:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_100136658(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (v3)
  {
    if (*(a1 + 52))
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
        v3 = *(a1 + 52);
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
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 48) = v5;
  return v5;
}

uint64_t sub_100136730(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100135E78(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100136804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013681C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001368B0()
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

  return qword_1009EE070;
}

void sub_100136944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100136958(void *a1)
{
  *a1 = off_100995430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[4] = 0;
  a1[5] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return a1;
}

uint64_t sub_1001369C0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 44))
  {
    v7 = *(a2 + 16);
    *(a1 + 44) |= 1u;
    v8 = *(a1 + 16);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v10 = *(a2 + 32);
      *(a1 + 44) |= 4u;
      *(a1 + 32) = v10;
      if ((*(a2 + 44) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 44) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 36);
    *(a1 + 44) |= 8u;
    *(a1 + 36) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100136B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100136B1C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100995430;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100136B80(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100136B1C(a1);

  operator delete();
}

uint64_t sub_100136BC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9E40;
  if (!qword_1009F9E40)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9E40;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100136C54(uint64_t a1)
{
  if (*(a1 + 44))
  {
    if (*(a1 + 44))
    {
      v1 = *(a1 + 16);
      if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100136CAC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v15 = *(this + 1);
        v10 = *(this + 2);
LABEL_31:
        if (v15 >= v10 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v16;
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 44) |= 4u;
        if (v17 < v10 && *v17 == 32)
        {
          v11 = v17 + 1;
          *(this + 1) = v11;
LABEL_39:
          if (v11 >= v10 || (v18 = *v11, v18 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 36) = v18;
            v19 = v11 + 1;
            *(this + 1) = v19;
          }

          *(a1 + 44) |= 8u;
          if (v19 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

      if (v9 != 2)
      {
        goto LABEL_27;
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

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_22:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v20;
        *(a1 + 44) |= 2u;
        v14 = *(this + 1);
        v10 = *(this + 2);
        if (v14 < v10 && *v14 == 24)
        {
          v15 = v14 + 1;
          *(this + 1) = v15;
          goto LABEL_31;
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_22;
    }

LABEL_27:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100136F2C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v10 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100136FF8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 11);
  if (v6)
  {
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
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v14;
  v4 = (v4 + 9);
  if ((*(this + 11) & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v15 = *(this + 8);
  *v4 = 24;
  if (v15 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v4 = (v4 + 2);
  }

LABEL_21:
  if ((*(this + 44) & 8) != 0)
  {
    v16 = *(this + 9);
    *v4 = 32;
    if (v16 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v16;
      v4 = (v4 + 2);
    }
  }

  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v4, a3);
}

uint64_t sub_100137184(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 44);
      }

      else
      {
        v14 = 2;
      }

      v5 = (v14 + v5);
    }

    if ((v3 & 8) != 0)
    {
      v15 = *(a1 + 36);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      }

      else
      {
        v16 = 2;
      }

      v5 = (v16 + v5);
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

uint64_t sub_100137290(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001369C0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100137364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013737C(uint64_t result, uint64_t a2)
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

uint64_t sub_100137410()
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

  return qword_1009EE080;
}

void sub_1001374A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}