void sub_1000A6530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6548(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        sub_100077844(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = v12;
      v11 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_1000A665C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(*(v5 + 16) + 4 * v6++), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A66F8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 4 * v5);
      *a2 = 8;
      if (v6 > 0x7F)
      {
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v6;
        a2 = (a2 + 2);
      }

      ++v5;
    }

    while (v5 < *(this + 6));
  }

  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1000A67B4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 4 * v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
        v3 = *(a1 + 24);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v8 = (v3 + v5);
  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v8;
  }

  *(a1 + 32) = v8;
  return v8;
}

uint64_t sub_1000A6854(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B558(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A6928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6940(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A69D4()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED690;
}

void sub_1000A6A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6A7C(uint64_t a1)
{
  *a1 = off_10098EB48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 24) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_1000A6AE8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 24);
      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 16);
      *(a1 + 32) |= 2u;
      v7 = *(a1 + 16);
      if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A6BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A6BFC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098EB48;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A6C60(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000A6BFC(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A6D04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(a1 + 24) = 0;
    if ((v1 & 2) != 0)
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A6D5C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_13;
        }

        v13 = *(a1 + 32);
LABEL_22:
        *(a1 + 32) = v13 | 2;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      v13 = *(a1 + 32) | 1;
      *(a1 + 32) = v13;
      if (v12 < v9 && *v12 == 18)
      {
        *(this + 1) = v12 + 1;
        goto LABEL_22;
      }
    }

LABEL_13:
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

uint64_t sub_1000A6F00(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A6F8C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 32))
  {
    v5 = *(this + 6);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 32) & 2) != 0)
  {
    v6 = *(this + 2);
    *a2 = 18;
    v7 = *(v6 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v7 = *(v6 + 8);
    }

    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = a2 + 2;
    }

    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v10, v11, v8, a4);
  }

  v14 = *(this + 1);
  v13 = (this + 8);
  v12 = v14;
  if (!v14 || *v12 == v12[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, a2, a3);
}

uint64_t sub_1000A7084(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 32) & 2) == 0)
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
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

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

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_1000A716C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000A6AE8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A7240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7258(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A72EC()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED6A0;
}

void sub_1000A7380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7394(uint64_t a1)
{
  *a1 = off_10098EBF8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void sub_1000A7404(uint64_t *a1)
{
  *a1 = off_10098EBF8;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A7468(uint64_t *a1)
{
  sub_1000A7404(a1);

  operator delete();
}

uint64_t sub_1000A750C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v27 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
        if (!result)
        {
          return result;
        }

        v10 = v27;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (sub_100094788(v10))
      {
        a1[12] |= 1u;
        a1[10] = v10;
      }

      else
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v10);
      }

      v12 = *(this + 1);
      if (v12 < *(this + 2) && *v12 == 18)
      {
        do
        {
          *(this + 1) = v12 + 1;
LABEL_24:
          v13 = a1[7];
          v14 = a1[6];
          if (v14 >= v13)
          {
            if (v13 == a1[8])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v13 + 1);
              v13 = a1[7];
            }

            a1[7] = v13 + 1;
            sub_1000CCE64();
          }

          v15 = *(a1 + 2);
          a1[6] = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v28 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v17;
            *(this + 1) = v17 + 1;
          }

          v18 = *(this + 14);
          v19 = *(this + 15);
          *(this + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
          if (!sub_1000A6D5C(v16, this, v21, v22) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
          v23 = *(this + 14);
          v24 = __OFSUB__(v23, 1);
          v25 = v23 - 1;
          if (v25 < 0 == v24)
          {
            *(this + 14) = v25;
          }

          v12 = *(this + 1);
          v26 = *(this + 2);
        }

        while (v12 < v26 && *v12 == 18);
        if (v12 == v26 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t sub_1000A7798(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A784C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 48))
  {
    v6 = *(this + 10);
    *a2 = 8;
    v7 = a2 + 1;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v7, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        *(v4 + 1) = v6;
        v4 = (v4 + 2);
        goto LABEL_8;
      }

      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    v4 = v8;
  }

LABEL_8:
  if (*(this + 6) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 2) + 8 * v9);
      *v4 = 18;
      v11 = v10[7];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v11;
        v12 = (v4 + 2);
      }

      v4 = sub_1000A6F8C(v10, v12, a3, a4);
      ++v9;
    }

    while (v9 < *(this + 6));
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v4, a3);
}

uint64_t sub_1000A7958(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 40);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 24);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1000A7084(*(*(a1 + 16) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 = (v9 + v6 + v10);
      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 44) = v6;
  return v6;
}

uint64_t sub_1000A7A34(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B630(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A7B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7B20(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000CCE64();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000A6AE8(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000A7C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7C60(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A7CF4()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED6B0;
}

void sub_1000A7D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7D9C(uint64_t a1)
{
  *a1 = off_10098ECA8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

void sub_1000A7E08(uint64_t *a1)
{
  *a1 = off_10098ECA8;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A7E6C(uint64_t *a1)
{
  sub_1000A7E08(a1);

  operator delete();
}

uint64_t sub_1000A7F10(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          sub_1000CCE64();
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
        if (!sub_1000A6D5C(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_1000A80F8(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A8194(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v8 = v7[7];
      if (v8 > 0x7F)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = (a2 + 2);
      }

      a2 = sub_1000A6F8C(v7, v9, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
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

uint64_t sub_1000A8260(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1000A7084(*(*(a1 + 16) + 8 * v4), a2);
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

uint64_t sub_1000A8300(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B704(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A83D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A83EC(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A8480()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED6C0;
}

void sub_1000A8514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8528(uint64_t a1)
{
  *a1 = off_10098ED58;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_1000A8588(uint64_t a1)
{
  *a1 = off_10098ED58;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A85DC(uint64_t a1)
{
  *a1 = off_10098ED58;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000A86B0(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_36;
        }

        goto LABEL_16;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v20 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
        if (!result)
        {
          return result;
        }

        v10 = v20;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (sub_100094788(v10))
      {
        a1[8] |= 1u;
        a1[4] = v10;
      }

      else
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v10);
      }

      v14 = *(this + 1);
      v11 = *(this + 2);
      if (v14 < v11 && *v14 == 16)
      {
        v12 = v14 + 1;
        *(this + 1) = v12;
LABEL_28:
        if (v12 >= v11 || (v15 = *v12, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 5);
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          a1[5] = v15;
          v16 = v12 + 1;
          *(this + 1) = v16;
        }

        a1[8] |= 2u;
        if (v16 < v11 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(this + 1) = v13;
LABEL_36:
          if (v13 >= v11 || (v17 = *v13, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 6);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            a1[6] = v17;
            v18 = v13 + 1;
            *(this + 1) = v18;
          }

          a1[8] |= 4u;
          if (v18 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v12 = *(this + 1);
      v11 = *(this + 2);
      goto LABEL_28;
    }

LABEL_16:
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

uint64_t sub_1000A88D8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A8988(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 32))
  {
    v5 = *(this + 4);
    *a2 = 8;
    v6 = a2 + 1;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, v6, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(v3 + 1) = v5;
        v3 = (v3 + 2);
        goto LABEL_8;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    v3 = v7;
  }

LABEL_8:
  if ((*(this + 32) & 2) != 0)
  {
    v8 = *(this + 5);
    *v3 = 16;
    if (v8 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 32) & 4) != 0)
  {
    v9 = *(this + 6);
    *v3 = 24;
    if (v9 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v3 = (v3 + 2);
    }
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, v3, a3);
}

uint64_t sub_1000A8A90(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(a1 + 32))
  {
    v5 = *(a1 + 16);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 32);
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 32) & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v6 = *(a1 + 20);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_17:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 24);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
  }

LABEL_22:
  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_1000A8B78(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B7A4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A8C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8C64(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A8CF8()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED6D0;
}

void sub_1000A8D8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8DA0(uint64_t a1)
{
  *a1 = off_10098EE08;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000A8E04(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    sub_1000778F4((a1 + 32), *(a1 + 40) + v4);
    memcpy((*(a1 + 32) + 8 * *(a1 + 40)), *(a2 + 32), 8 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (!v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((*(a2 + 60) & 1) == 0)
  {
    if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v9 = *(a2 + 24);
    *(a1 + 60) |= 2u;
    *(a1 + 24) = v9;
    if ((*(a2 + 60) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

  v8 = *(a2 + 16);
  *(a1 + 60) |= 1u;
  *(a1 + 16) = v8;
  v5 = *(a2 + 60);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v5 & 8) != 0)
  {
LABEL_9:
    v6 = *(a2 + 48);
    *(a1 + 60) |= 8u;
    *(a1 + 48) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000A8F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A8F40(void *a1)
{
  *a1 = off_10098EE08;
  if (a1[4])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A8FB8(void *a1)
{
  sub_1000A8F40(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A905C(uint64_t a1)
{
  if (*(a1 + 60))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  *(result + 13) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A9084(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_26;
          }

          v24[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v24[0];
          *(a1 + 60) |= 1u;
          v10 = *(this + 1);
          if (v10 < *(this + 2) && *v10 == 17)
          {
            *(this + 1) = v10 + 1;
LABEL_20:
            v24[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v24[0];
            *(a1 + 60) |= 2u;
            v11 = *(this + 1);
            if (v11 < *(this + 2) && *v11 == 25)
            {
LABEL_31:
              *(this + 1) = v11 + 1;
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (v8 == 2 && v9 == 1)
          {
            goto LABEL_20;
          }

LABEL_26:
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

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 1)
      {
        if (v9 == 2)
        {
          result = sub_100063F88(this, a1 + 32);
          if (!result)
          {
            return result;
          }

          goto LABEL_48;
        }

        goto LABEL_26;
      }

LABEL_32:
      v24[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
      {
        return 0;
      }

      v13 = v24[0];
      v14 = *(a1 + 40);
      if (v14 == *(a1 + 44))
      {
        sub_1000778F4((a1 + 32), v14 + 1);
        v14 = *(a1 + 40);
      }

      v15 = *(a1 + 32);
      v16 = v14 + 1;
      *(a1 + 40) = v14 + 1;
      *(v15 + 8 * v14) = v13;
      v17 = *(this + 1);
      v18 = *(this + 4) - v17;
      if (v18 >= 1)
      {
        v19 = v18 / 9u;
        v20 = v19 >= *(a1 + 44) - v16 ? *(a1 + 44) - v16 : v19;
        if (v20 >= 1)
        {
          v21 = 0;
          while (*v17 == 25)
          {
            v22 = *(v17 + 1);
            if (v16 >= *(a1 + 44))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
              v16 = *(a1 + 40);
              v15 = *(a1 + 32);
            }

            *(a1 + 40) = v16 + 1;
            *(v15 + 8 * v16) = v22;
            ++v21;
            v17 += 9;
            ++v16;
            if (v20 == v21)
            {
              v21 = v20;
              goto LABEL_47;
            }
          }

          if (!v21)
          {
            goto LABEL_48;
          }

LABEL_47:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v21);
        }
      }

LABEL_48:
      v11 = *(this + 1);
      if (v11 < *(this + 2))
      {
        v23 = *v11;
        if (v23 == 25)
        {
          goto LABEL_31;
        }

        if (v23 == 33)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v8 != 4 || v9 != 1)
    {
      goto LABEL_26;
    }

LABEL_52:
    v24[0] = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
    {
      return 0;
    }

    *(a1 + 48) = v24[0];
    *(a1 + 60) |= 8u;
    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

void sub_1000A93EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A9404(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 60);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 60);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  }

  if (*(v4 + 40) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(*(v4 + 32) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 40));
  }

  if ((*(v4 + 60) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 48), a3);
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

uint64_t sub_1000A94E8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 60);
  if (v3)
  {
    v4 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v4;
    a2 += 9;
    v3 = *(a1 + 60);
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v5;
    a2 += 9;
  }

  if (*(a1 + 40) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 8 * v6);
      *a2 = 25;
      *(a2 + 1) = v7;
      a2 += 9;
      ++v6;
    }

    while (v6 < *(a1 + 40));
  }

  if ((*(a1 + 60) & 8) != 0)
  {
    v8 = *(a1 + 48);
    *a2 = 33;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v11 = *(a1 + 8);
  v9 = (a1 + 8);
  v10 = v11;
  if (!v11 || *v10 == v10[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
  }
}

uint64_t sub_1000A9674(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 8) != 0)
  {
    v4 += 9;
  }

  if (!*(a1 + 60))
  {
    v4 = 0;
  }

  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  v8 = (9 * *(v5 + 8) + v4);
  if (v7 && *v6 != v6[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v8;
  }

  *(a1 + 56) = v8;
  return v8;
}

uint64_t sub_1000A96F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000A8E04(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A97C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A97E0(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A9874()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED6F0;
}

void sub_1000A9908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A991C(uint64_t a1)
{
  *a1 = off_10098EEB8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 44) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_1000A9980(void *a1)
{
  *a1 = off_10098EEB8;
  if (qword_1009F9A08 != a1)
  {
    v2 = a1[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A9A18(void *a1)
{
  sub_1000A9980(a1);

  operator delete();
}

uint64_t sub_1000A9ABC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(this + 1);
          v11 = *(this + 2);
          if (v13 >= v11 || (v14 = *v13, v14 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
            if (!result)
            {
              return result;
            }

            v15 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 48) = v14;
            v15 = v13 + 1;
            *(this + 1) = v15;
          }

          *(a1 + 56) |= 1u;
          if (v15 < v11 && *v15 == 16)
          {
            v12 = v15 + 1;
            *(this + 1) = v12;
LABEL_32:
            if (v12 >= v11 || (v17 = *v12, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 16) = v17;
              v18 = v12 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 56) |= 2u;
            if (v18 < v11 && *v18 == 25)
            {
              *(this + 1) = v18 + 1;
LABEL_40:
              *v31 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = *v31;
              *(a1 + 56) |= 4u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 33)
              {
                *(this + 1) = v19 + 1;
                goto LABEL_44;
              }
            }
          }
        }

        if (v8 == 3)
        {
          if (v9 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

        if (v8 == 4)
        {
          break;
        }

        if (v8 == 5 && v9 == 2)
        {
          v10 = *(a1 + 56);
          goto LABEL_48;
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

      if (v9 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v31 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v31) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v31;
      v10 = *(a1 + 56) | 8;
      *(a1 + 56) = v10;
      v20 = *(this + 1);
    }

    while (v20 >= *(this + 2) || *v20 != 42);
    *(this + 1) = v20 + 1;
LABEL_48:
    *(a1 + 56) = v10 | 0x10;
    v21 = *(a1 + 40);
    if (!v21)
    {
      operator new();
    }

    v31[0] = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v31))
      {
        return 0;
      }
    }

    else
    {
      v31[0] = *v22;
      *(this + 1) = v22 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31[0]);
    if (!sub_1000A9084(v21, this, v26, v27) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v28 = *(this + 14);
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (v30 < 0 == v29)
    {
      *(this + 14) = v30;
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

uint64_t sub_1000A9E30(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 48), a2, a4);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 56) & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v7 = *(v5 + 40);
  if (!v7)
  {
    v7 = *(qword_1009F9A08 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v7, a2, a4);
LABEL_14:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

_BYTE *sub_1000A9F28(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 56))
  {
    v4 = *(this + 12);
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

  v5 = *(this + 14);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 2);
    *a2 = 16;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, (a2 + 1), a3);
    v5 = *(this + 14);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = *(this + 4);
      *a2 = 33;
      *(a2 + 1) = v8;
      a2 += 9;
      if ((*(this + 14) & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(this + 3);
  *a2 = 25;
  *(a2 + 1) = v7;
  a2 += 9;
  v5 = *(this + 14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v9 = *(this + 5);
  if (!v9)
  {
    v9 = *(qword_1009F9A08 + 40);
  }

  *a2 = 42;
  v10 = *(v9 + 56);
  if (v10 > 0x7F)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
  }

  else
  {
    a2[1] = v10;
    v11 = (a2 + 2);
  }

  a2 = sub_1000A94E8(v9, v11, a3);
LABEL_19:
  v14 = *(this + 1);
  v13 = (this + 8);
  v12 = v14;
  if (!v14 || *v12 == v12[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, a2, a3);
}

uint64_t sub_1000AA0E4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 56);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_23;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 56) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = *(a1 + 48);
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 56);
  if ((v3 & 2) != 0)
  {
LABEL_10:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 56);
  }

LABEL_11:
  v7 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v7 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v5 = v7 + 9;
  }

  else
  {
    v5 = v7;
  }

  if ((v3 & 0x10) != 0)
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      v8 = *(qword_1009F9A08 + 40);
    }

    v9 = sub_1000A9674(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v5 = (v5 + v10 + v11 + 1);
  }

LABEL_23:
  v12 = *(a1 + 8);
  if (v12 && *v12 != v12[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 52) = v5;
  return v5;
}

uint64_t sub_1000AA1EC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B8A8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000AA2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA2D8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AA36C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED6E0;
}

void sub_1000AA400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA414(uint64_t a1)
{
  *a1 = off_10098EF68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000AA478(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 76);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 76))
  {
    v7 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 76);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 76) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 76) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 76);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a2 + 32);
  *(a1 + 76) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a2 + 40);
  *(a1 + 76) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v12 = *(a2 + 56);
    *(a1 + 76) |= 0x20u;
    *(a1 + 56) = v12;
    if ((*(a2 + 76) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

LABEL_17:
  v11 = *(a2 + 48);
  *(a1 + 76) |= 0x10u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 76);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 64);
    *(a1 + 76) |= 0x40u;
    *(a1 + 64) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000AA5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AA5F0(uint64_t a1)
{
  *a1 = off_10098EF68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000AA644(uint64_t a1)
{
  *a1 = off_10098EF68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AA718(uint64_t a1)
{
  if (*(a1 + 76))
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000AA744(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 1)
            {
              goto LABEL_31;
            }

            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v17;
            *(a1 + 76) |= 1u;
            v10 = *(this + 1);
            if (v10 < *(this + 2) && *v10 == 17)
            {
              *(this + 1) = v10 + 1;
              goto LABEL_34;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || v9 != 1)
              {
                goto LABEL_31;
              }

              goto LABEL_38;
            }

            if (v9 != 1)
            {
              goto LABEL_31;
            }

LABEL_34:
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v17;
            *(a1 + 76) |= 2u;
            v11 = *(this + 1);
            if (v11 < *(this + 2) && *v11 == 25)
            {
              *(this + 1) = v11 + 1;
LABEL_38:
              v17 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 32) = v17;
              *(a1 + 76) |= 4u;
              v12 = *(this + 1);
              if (v12 < *(this + 2) && *v12 == 33)
              {
                *(this + 1) = v12 + 1;
                goto LABEL_42;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v8 == 6)
        {
          if (v9 == 1)
          {
            goto LABEL_50;
          }

          goto LABEL_31;
        }

        if (v8 != 7 || v9 != 1)
        {
          goto LABEL_31;
        }

LABEL_54:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = v17;
        *(a1 + 76) |= 0x40u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_31;
      }

LABEL_42:
      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 40) = v17;
      *(a1 + 76) |= 8u;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 41)
      {
        *(this + 1) = v13 + 1;
LABEL_46:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v17;
        *(a1 + 76) |= 0x10u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 49)
        {
          *(this + 1) = v14 + 1;
LABEL_50:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 56) = v17;
          *(a1 + 76) |= 0x20u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 57)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_54;
          }
        }
      }
    }

    if (v8 == 5 && v9 == 1)
    {
      goto LABEL_46;
    }

LABEL_31:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000AAA80(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 76);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 76);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 76);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 76);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
    if ((*(v4 + 76) & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v5 = *(v4 + 76);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v5 & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v4 + 64), a3);
  }

LABEL_9:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_1000AABA0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 76);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 76);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v11;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v12;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    v14 = *(a1 + 56);
    *a2 = 49;
    *(a2 + 1) = v14;
    a2 += 9;
    if ((*(a1 + 76) & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v13 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v13;
  a2 += 9;
  v3 = *(a1 + 76);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    v4 = *(a1 + 64);
    *a2 = 57;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_9:
  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7 || *v6 == v6[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
  }
}

uint64_t sub_1000AAE28(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (*(a1 + 76))
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

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 72) = v5;
  return v5;
}

uint64_t sub_1000AAED4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000AA478(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000AAFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AAFC0(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AB054()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED700;
}

void sub_1000AB0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AB0FC(uint64_t a1)
{
  *a1 = off_10098F018;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000AB160(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 16);
      if (v5 >= 5)
      {
        sub_10049DDA4();
      }

      a1[13] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      if (v6 >= 5)
      {
        sub_10049DDD0();
      }

      a1[13] |= 2u;
      a1[5] = v6;
      v4 = *(a2 + 52);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 24);
      if (v7 >= 5)
      {
        sub_10049DDFC();
      }

      a1[13] |= 4u;
      a1[6] = v7;
      v4 = *(a2 + 52);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 28);
      if (v8 >= 6)
      {
        sub_10049DE28();
      }

      a1[13] |= 8u;
      a1[7] = v8;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x10) != 0)
    {
      v9 = *(a2 + 32);
      if (v9 >= 6)
      {
        sub_10049DE54();
      }

      a1[13] |= 0x10u;
      a1[8] = v9;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x20) != 0)
    {
      v10 = *(a2 + 36);
      if (v10 >= 6)
      {
        sub_10049DE80();
      }

      a1[13] |= 0x20u;
      a1[9] = v10;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x40) != 0)
    {
      v11 = *(a2 + 40);
      if (v11 >= 2)
      {
        sub_10049DEAC();
      }

      a1[13] |= 0x40u;
      a1[10] = v11;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x80) != 0)
    {
      v12 = *(a2 + 44);
      if (v12 >= 2)
      {
        sub_10049DED8();
      }

      a1[13] |= 0x80u;
      a1[11] = v12;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1000AB320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AB338(uint64_t a1)
{
  *a1 = off_10098F018;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000AB38C(uint64_t a1)
{
  *a1 = off_10098F018;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AB460(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000AB484(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v24 = *(this + 1);
              v23 = *(this + 2);
              goto LABEL_101;
            }
          }

          else if (v8 == 8 && (TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v15 = *(this + 2);
            goto LABEL_112;
          }
        }

        else if (v8 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(this + 1);
            v19 = *(this + 2);
            goto LABEL_79;
          }
        }

        else if (v8 == 6 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_90;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v22 = *(this + 1);
            v21 = *(this + 2);
            goto LABEL_57;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_68;
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

      v40 = 0;
      v17 = *(this + 1);
      if (v17 >= *(this + 2) || (v18 = *v17, (v18 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
        if (!result)
        {
          return result;
        }

        v18 = v40;
      }

      else
      {
        *(this + 1) = v17 + 1;
      }

      if (v18 > 4)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v18);
      }

      else
      {
        a1[13] |= 1u;
        a1[4] = v18;
      }

      v25 = *(this + 1);
      v9 = *(this + 2);
      if (v25 < v9 && *v25 == 16)
      {
        v10 = v25 + 1;
        *(this + 1) = v10;
LABEL_46:
        v40 = 0;
        if (v10 >= v9 || (v26 = *v10, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v26 = v40;
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v26 > 4)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 2, v26);
        }

        else
        {
          a1[13] |= 2u;
          a1[5] = v26;
        }

        v27 = *(this + 1);
        v21 = *(this + 2);
        if (v27 < v21 && *v27 == 24)
        {
          v22 = v27 + 1;
          *(this + 1) = v22;
LABEL_57:
          v40 = 0;
          if (v22 >= v21 || (v28 = *v22, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
            if (!result)
            {
              return result;
            }

            v28 = v40;
          }

          else
          {
            *(this + 1) = v22 + 1;
          }

          if (v28 > 4)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 3, v28);
          }

          else
          {
            a1[13] |= 4u;
            a1[6] = v28;
          }

          v29 = *(this + 1);
          v13 = *(this + 2);
          if (v29 < v13 && *v29 == 32)
          {
            v14 = v29 + 1;
            *(this + 1) = v14;
LABEL_68:
            v40 = 0;
            if (v14 >= v13 || (v30 = *v14, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
              if (!result)
              {
                return result;
              }

              v30 = v40;
            }

            else
            {
              *(this + 1) = v14 + 1;
            }

            if (v30 > 5)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 4, v30);
            }

            else
            {
              a1[13] |= 8u;
              a1[7] = v30;
            }

            v31 = *(this + 1);
            v19 = *(this + 2);
            if (v31 < v19 && *v31 == 40)
            {
              v20 = v31 + 1;
              *(this + 1) = v20;
LABEL_79:
              v40 = 0;
              if (v20 >= v19 || (v32 = *v20, (v32 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                if (!result)
                {
                  return result;
                }

                v32 = v40;
              }

              else
              {
                *(this + 1) = v20 + 1;
              }

              if (v32 > 5)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 5, v32);
              }

              else
              {
                a1[13] |= 0x10u;
                a1[8] = v32;
              }

              v33 = *(this + 1);
              v11 = *(this + 2);
              if (v33 < v11 && *v33 == 48)
              {
                v12 = v33 + 1;
                *(this + 1) = v12;
LABEL_90:
                v40 = 0;
                if (v12 >= v11 || (v34 = *v12, (v34 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = v40;
                }

                else
                {
                  *(this + 1) = v12 + 1;
                }

                if (v34 > 5)
                {
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 6, v34);
                }

                else
                {
                  a1[13] |= 0x20u;
                  a1[9] = v34;
                }

                v35 = *(this + 1);
                v23 = *(this + 2);
                if (v35 < v23 && *v35 == 56)
                {
                  v24 = v35 + 1;
                  *(this + 1) = v24;
LABEL_101:
                  v40 = 0;
                  if (v24 >= v23 || (v36 = *v24, (v36 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                    if (!result)
                    {
                      return result;
                    }

                    v36 = v40;
                  }

                  else
                  {
                    *(this + 1) = v24 + 1;
                  }

                  if (v36 > 1)
                  {
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 7, v36);
                  }

                  else
                  {
                    a1[13] |= 0x40u;
                    a1[10] = v36;
                  }

                  v37 = *(this + 1);
                  v15 = *(this + 2);
                  if (v37 < v15 && *v37 == 64)
                  {
                    v16 = v37 + 1;
                    *(this + 1) = v16;
LABEL_112:
                    v40 = 0;
                    if (v16 >= v15 || (v38 = *v16, (v38 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
                      if (!result)
                      {
                        return result;
                      }

                      v38 = v40;
                    }

                    else
                    {
                      *(this + 1) = v16 + 1;
                    }

                    if (v38 > 1)
                    {
                      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 8, v38);
                    }

                    else
                    {
                      a1[13] |= 0x80u;
                      a1[11] = v38;
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

    if (v8 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_46;
    }

LABEL_34:
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

uint64_t sub_1000AB9E4(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 44), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000ABB20(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
  {
    v5 = *(this + 4);
    *a2 = 8;
    v6 = a2 + 1;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, v6, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(v3 + 1) = v5;
        v3 = (v3 + 2);
        goto LABEL_8;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    v3 = v7;
  }

LABEL_8:
  if ((*(this + 52) & 2) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(this + 5);
  *v3 = 16;
  v9 = v3 + 1;
  if ((v8 & 0x80000000) != 0)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
  }

  else
  {
    if (v8 <= 0x7F)
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
      goto LABEL_15;
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
  }

  v3 = v10;
LABEL_15:
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_22;
  }

  v11 = *(this + 6);
  *v3 = 24;
  v12 = v3 + 1;
  if ((v11 & 0x80000000) != 0)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
  }

  else
  {
    if (v11 <= 0x7F)
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
      goto LABEL_22;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
  }

  v3 = v13;
LABEL_22:
  if ((*(this + 52) & 8) == 0)
  {
    goto LABEL_29;
  }

  v14 = *(this + 7);
  *v3 = 32;
  v15 = v3 + 1;
  if ((v14 & 0x80000000) != 0)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v15, a3);
  }

  else
  {
    if (v14 <= 0x7F)
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
      goto LABEL_29;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
  }

  v3 = v16;
LABEL_29:
  if ((*(this + 52) & 0x10) == 0)
  {
    goto LABEL_36;
  }

  v17 = *(this + 8);
  *v3 = 40;
  v18 = v3 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v18, a3);
  }

  else
  {
    if (v17 <= 0x7F)
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
      goto LABEL_36;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v18, a3);
  }

  v3 = v19;
LABEL_36:
  if ((*(this + 52) & 0x20) == 0)
  {
    goto LABEL_43;
  }

  v20 = *(this + 9);
  *v3 = 48;
  v21 = v3 + 1;
  if ((v20 & 0x80000000) != 0)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
  }

  else
  {
    if (v20 <= 0x7F)
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
      goto LABEL_43;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
  }

  v3 = v22;
LABEL_43:
  if ((*(this + 52) & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v23 = *(this + 10);
  *v3 = 56;
  v24 = v3 + 1;
  if ((v23 & 0x80000000) != 0)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
  }

  else
  {
    if (v23 <= 0x7F)
    {
      *(v3 + 1) = v23;
      v3 = (v3 + 2);
      goto LABEL_50;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
  }

  v3 = v25;
LABEL_50:
  if ((*(this + 52) & 0x80) != 0)
  {
    v26 = *(this + 11);
    *v3 = 64;
    v27 = v3 + 1;
    if ((v26 & 0x80000000) != 0)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v26, v27, a3);
    }

    else
    {
      if (v26 <= 0x7F)
      {
        *(v3 + 1) = v26;
        v3 = (v3 + 2);
        goto LABEL_57;
      }

      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v27, a3);
    }

    v3 = v28;
  }

LABEL_57:
  v31 = *(this + 1);
  v30 = (this + 8);
  v29 = v31;
  if (!v31 || *v29 == v29[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, v3, a3);
}

uint64_t sub_1000ABD80(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (v3)
  {
    if (*(a1 + 52))
    {
      v5 = *(a1 + 16);
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
        v3 = *(a1 + 52);
        if ((v3 & 2) == 0)
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
      if ((*(a1 + 52) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 20);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
LABEL_19:
    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 24);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 52);
      }

      else
      {
        v9 = 2;
      }

      v4 = (v9 + v4);
      if ((v3 & 8) == 0)
      {
LABEL_21:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }
    }

    else if ((v3 & 8) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 28);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
    if ((v3 & 0x10) == 0)
    {
LABEL_22:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }

LABEL_38:
    v12 = *(a1 + 32);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
    if ((v3 & 0x20) == 0)
    {
LABEL_23:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_50;
    }

LABEL_44:
    v14 = *(a1 + 36);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
    if ((v3 & 0x40) == 0)
    {
LABEL_24:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_62;
      }

LABEL_56:
      v18 = *(a1 + 44);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 11;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      }

      else
      {
        v19 = 2;
      }

      v4 = (v19 + v4);
      goto LABEL_62;
    }

LABEL_50:
    v16 = *(a1 + 40);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 52);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_56;
  }

  v4 = 0;
LABEL_62:
  v20 = *(a1 + 8);
  if (v20 && *v20 != v20[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1000ABF9C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000AB160(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000AC070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC088(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AC11C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED710;
}

void sub_1000AC1B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC1C4(uint64_t a1)
{
  *a1 = off_10098F0C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 464) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 295) = 0;
  *(a1 + 308) = 0;
  *(a1 + 300) = 0;
  *(a1 + 316) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 416) = 1;
  *(a1 + 468) = 0;
  *(a1 + 476) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 436) = 0u;
  return a1;
}

void sub_1000AC2C8(uint64_t *a1)
{
  *a1 = off_10098F0C8;
  sub_1000AC34C(a1);
  if (a1[40])
  {
    operator delete[]();
  }

  sub_100077C08(a1 + 24);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000AC34C(void *result)
{
  v1 = result;
  v2 = result[5];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_1009F9A28 != result)
  {
    v4 = result[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[39];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_1000AC430(uint64_t *a1)
{
  sub_1000AC2C8(a1);

  operator delete();
}

uint64_t sub_1000AC4D4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v266 = (a1 + 300);
  v272 = (a1 + 376);
  v273 = (a1 + 336);
  v267 = (a1 + 380);
  v268 = (a1 + 292);
  v6 = (a1 + 404);
  v7 = (a1 + 408);
  v8 = (a1 + 412);
  v9 = (a1 + 420);
  v10 = (a1 + 424);
  v11 = (a1 + 428);
  v12 = (a1 + 448);
  v13 = (a1 + 452);
  v269 = (a1 + 400);
  v270 = (a1 + 456);
  v271 = (a1 + 460);
  while (2)
  {
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || (TagFallback = *v14, (TagFallback & 0x80000000) != 0))
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
      *(this + 1) = v14 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v16 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v16 != 2)
        {
          goto LABEL_159;
        }

        v258 = v13;
        v262 = v12;
        v17 = v11;
        v18 = v10;
        v19 = v9;
        v20 = v8;
        v21 = v7;
        v22 = v6;
        *(a1 + 468) |= 1u;
        v23 = *(a1 + 16);
        if (!v23)
        {
          operator new();
        }

        v274[0] = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274))
          {
            return 0;
          }
        }

        else
        {
          v274[0] = *v24;
          *(this + 1) = v24 + 1;
        }

        v90 = *(this + 14);
        v91 = *(this + 15);
        *(this + 14) = v90 + 1;
        if (v90 >= v91)
        {
          return 0;
        }

        v92 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v274[0]);
        if (!sub_10009FF9C(v23, this, v93, v94) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v92);
        v95 = *(this + 14);
        v96 = __OFSUB__(v95, 1);
        v97 = v95 - 1;
        if (v97 < 0 == v96)
        {
          *(this + 14) = v97;
        }

        v98 = *(this + 1);
        v59 = *(this + 2);
        v6 = v22;
        v7 = v21;
        v8 = v20;
        v9 = v19;
        v10 = v18;
        v11 = v17;
        v13 = v258;
        v12 = v262;
        if (v98 >= v59 || *v98 != 16)
        {
          continue;
        }

        v60 = v98 + 1;
        *(this + 1) = v60;
        goto LABEL_171;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v60 = *(this + 1);
        v59 = *(this + 2);
LABEL_171:
        v274[0] = 0;
        if (v60 >= v59 || (v99 = *v60, (v99 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
          if (!result)
          {
            return result;
          }

          v99 = v274[0];
        }

        else
        {
          *(this + 1) = v60 + 1;
        }

        if (v99 > 0x1B || ((1 << v99) & 0xDDB54EF) == 0)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v99);
        }

        else
        {
          if (v99 > 0x1B || ((1 << v99) & 0xDDB54EF) == 0)
          {
            sub_10049DA08();
          }

          *(a1 + 468) |= 2u;
          *(a1 + 32) = v99;
        }

        v101 = *(this + 1);
        v47 = *(this + 2);
        if (v101 >= v47 || *v101 != 24)
        {
          continue;
        }

        v53 = v101 + 1;
        *(this + 1) = v53;
LABEL_186:
        if (v53 >= v47 || (v102 = *v53, v102 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v103 = *(this + 1);
          v47 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v102;
          v103 = v53 + 1;
          *(this + 1) = v103;
        }

        *(a1 + 468) |= 4u;
        if (v103 >= v47 || *v103 != 32)
        {
          continue;
        }

        v56 = v103 + 1;
        *(this + 1) = v56;
LABEL_194:
        if (v56 >= v47 || (v104 = *v56, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v105 = *(this + 1);
          v47 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v104;
          v105 = v56 + 1;
          *(this + 1) = v105;
        }

        *(a1 + 468) |= 8u;
        if (v105 >= v47 || *v105 != 40)
        {
          continue;
        }

        v48 = v105 + 1;
        *(this + 1) = v48;
LABEL_202:
        if (v48 >= v47 || (v106 = *v48, v106 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v107 = *(this + 1);
          v47 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v106;
          v107 = v48 + 1;
          *(this + 1) = v107;
        }

        v63 = *(a1 + 468) | 0x10;
        *(a1 + 468) = v63;
        if (v107 >= v47 || *v107 != 50)
        {
          continue;
        }

        *(this + 1) = v107 + 1;
LABEL_210:
        *(a1 + 468) = v63 | 0x20;
        if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v108 = *(this + 1);
        v57 = *(this + 2);
        if (v108 >= v57 || *v108 != 56)
        {
          continue;
        }

        v67 = v108 + 1;
        *(this + 1) = v67;
LABEL_216:
        if (v67 >= v57 || (v109 = *v67, v109 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v110 = *(this + 1);
          v57 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v109;
          v110 = v67 + 1;
          *(this + 1) = v110;
        }

        *(a1 + 468) |= 0x40u;
        if (v110 >= v57 || *v110 != 64)
        {
          continue;
        }

        v58 = v110 + 1;
        *(this + 1) = v58;
LABEL_224:
        if (v58 >= v57 || (v111 = *v58, v111 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v112 = *(this + 1);
          v57 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v111;
          v112 = v58 + 1;
          *(this + 1) = v112;
        }

        *(a1 + 468) |= 0x80u;
        if (v112 >= v57 || *v112 != 72)
        {
          continue;
        }

        v68 = v112 + 1;
        *(this + 1) = v68;
LABEL_232:
        if (v68 >= v57 || (v113 = *v68, v113 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
          if (!result)
          {
            return result;
          }

          v114 = *(this + 1);
          v57 = *(this + 2);
        }

        else
        {
          *(a1 + 60) = v113;
          v114 = v68 + 1;
          *(this + 1) = v114;
        }

        *(a1 + 468) |= 0x100u;
        if (v114 >= v57 || *v114 != 81)
        {
          continue;
        }

        *(this + 1) = v114 + 1;
LABEL_240:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v274;
        *(a1 + 468) |= 0x200u;
        v115 = *(this + 1);
        if (v115 >= *(this + 2) || *v115 != 89)
        {
          continue;
        }

        *(this + 1) = v115 + 1;
LABEL_244:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v274;
        *(a1 + 468) |= 0x400u;
        v116 = *(this + 1);
        v38 = *(this + 2);
        if (v116 >= v38 || *v116 != 96)
        {
          continue;
        }

        v45 = v116 + 1;
        *(this + 1) = v45;
LABEL_248:
        if (v45 >= v38 || (v117 = *v45, v117 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
          if (!result)
          {
            return result;
          }

          v118 = *(this + 1);
          v38 = *(this + 2);
        }

        else
        {
          *(a1 + 80) = v117;
          v118 = v45 + 1;
          *(this + 1) = v118;
        }

        *(a1 + 468) |= 0x800u;
        if (v118 >= v38 || *v118 != 104)
        {
          continue;
        }

        v52 = v118 + 1;
        *(this + 1) = v52;
LABEL_256:
        if (v52 >= v38 || (v119 = *v52, v119 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 84));
          if (!result)
          {
            return result;
          }

          v120 = *(this + 1);
          v38 = *(this + 2);
        }

        else
        {
          *(a1 + 84) = v119;
          v120 = v52 + 1;
          *(this + 1) = v120;
        }

        *(a1 + 468) |= 0x1000u;
        if (v120 >= v38 || *v120 != 112)
        {
          continue;
        }

        v66 = v120 + 1;
        *(this + 1) = v66;
LABEL_264:
        if (v66 >= v38 || (v121 = *v66, v121 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v122 = *(this + 1);
          v38 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v121;
          v122 = v66 + 1;
          *(this + 1) = v122;
        }

        *(a1 + 468) |= 0x2000u;
        if (v122 >= v38 || *v122 != 120)
        {
          continue;
        }

        v39 = v122 + 1;
        *(this + 1) = v39;
LABEL_272:
        if (v39 >= v38 || (v123 = *v39, v123 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 92));
          if (!result)
          {
            return result;
          }

          v124 = *(this + 1);
          v38 = *(this + 2);
        }

        else
        {
          *(a1 + 92) = v123;
          v124 = (v39 + 1);
          *(this + 1) = v124;
        }

        *(a1 + 468) |= 0x4000u;
        if (v38 - v124 < 2 || *v124 != 128 || v124[1] != 1)
        {
          continue;
        }

        v54 = (v124 + 2);
        *(this + 1) = v54;
LABEL_281:
        if (v54 >= v38 || (v125 = *v54, v125 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 136));
          if (!result)
          {
            return result;
          }

          v126 = *(this + 1);
          v38 = *(this + 2);
        }

        else
        {
          *(a1 + 136) = v125;
          v126 = (v54 + 1);
          *(this + 1) = v126;
        }

        *(a1 + 468) |= 0x8000u;
        if (v38 - v126 < 2 || *v126 != 137 || v126[1] != 1)
        {
          continue;
        }

        *(this + 1) = v126 + 2;
LABEL_290:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v274;
        *(a1 + 468) |= 0x10000u;
        v127 = *(this + 1);
        if (*(this + 4) - v127 < 2 || *v127 != 145 || v127[1] != 1)
        {
          continue;
        }

        *(this + 1) = v127 + 2;
LABEL_295:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v274;
        *(a1 + 468) |= 0x20000u;
        v128 = *(this + 1);
        if (*(this + 4) - v128 < 2 || *v128 != 153 || v128[1] != 1)
        {
          continue;
        }

        *(this + 1) = v128 + 2;
LABEL_300:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v274;
        *(a1 + 468) |= 0x40000u;
        v129 = *(this + 1);
        if (*(this + 4) - v129 < 2 || *v129 != 161 || v129[1] != 1)
        {
          continue;
        }

        *(this + 1) = v129 + 2;
LABEL_305:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 120) = *v274;
        *(a1 + 468) |= 0x80000u;
        v130 = *(this + 1);
        if (*(this + 4) - v130 < 2 || *v130 != 169 || v130[1] != 1)
        {
          continue;
        }

        *(this + 1) = v130 + 2;
LABEL_310:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v274;
        *(a1 + 468) |= 0x100000u;
        v131 = *(this + 1);
        if (*(this + 4) - v131 < 2 || *v131 != 177 || v131[1] != 1)
        {
          continue;
        }

        *(this + 1) = v131 + 2;
LABEL_315:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 144) = *v274;
        *(a1 + 468) |= 0x200000u;
        v132 = *(this + 1);
        if (*(this + 4) - v132 < 2 || *v132 != 185 || v132[1] != 1)
        {
          continue;
        }

        *(this + 1) = v132 + 2;
LABEL_320:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 152) = *v274;
        *(a1 + 468) |= 0x400000u;
        v133 = *(this + 1);
        if (*(this + 4) - v133 < 2 || *v133 != 193 || v133[1] != 1)
        {
          continue;
        }

        *(this + 1) = v133 + 2;
LABEL_325:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 160) = *v274;
        *(a1 + 468) |= 0x800000u;
        v134 = *(this + 1);
        if (*(this + 4) - v134 < 2 || *v134 != 201 || v134[1] != 1)
        {
          continue;
        }

        *(this + 1) = v134 + 2;
LABEL_330:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 168) = *v274;
        *(a1 + 468) |= 0x1000000u;
        v135 = *(this + 1);
        if (*(this + 4) - v135 < 2 || *v135 != 209 || v135[1] != 1)
        {
          continue;
        }

        *(this + 1) = v135 + 2;
LABEL_335:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 176) = *v274;
        *(a1 + 468) |= 0x2000000u;
        v136 = *(this + 1);
        v81 = *(this + 2);
        if (v81 - v136 < 2 || *v136 != 216 || v136[1] != 1)
        {
          continue;
        }

        v82 = (v136 + 2);
        *(this + 1) = v82;
LABEL_340:
        if (v82 >= v81 || (v137 = *v82, v137 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 140));
          if (!result)
          {
            return result;
          }

          v138 = *(this + 1);
          v81 = *(this + 2);
        }

        else
        {
          *(a1 + 140) = v137;
          v138 = (v82 + 1);
          *(this + 1) = v138;
        }

        *(a1 + 468) |= 0x4000000u;
        if (v81 - v138 < 2 || *v138 != 225 || v138[1] != 1)
        {
          continue;
        }

        *(this + 1) = v138 + 2;
LABEL_349:
        *v274 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 184) = *v274;
        *(a1 + 468) |= 0x8000000u;
        v139 = *(this + 1);
        if (*(this + 4) - v139 < 2 || *v139 != 234 || v139[1] != 1)
        {
          continue;
        }

LABEL_355:
        *(this + 1) = v139 + 2;
LABEL_356:
        v140 = *(a1 + 204);
        v141 = *(a1 + 200);
        if (v141 >= v140)
        {
          if (v140 == *(a1 + 208))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192), v140 + 1);
            v140 = *(a1 + 204);
          }

          *(a1 + 204) = v140 + 1;
          sub_1000CCEC8();
        }

        v261 = v13;
        v265 = v12;
        v142 = v11;
        v143 = v10;
        v144 = v9;
        v145 = v8;
        v146 = v7;
        v147 = v6;
        v148 = *(a1 + 192);
        *(a1 + 200) = v141 + 1;
        v149 = *(v148 + 8 * v141);
        v274[0] = 0;
        v150 = *(this + 1);
        if (v150 >= *(this + 2) || *v150 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274))
          {
            return 0;
          }
        }

        else
        {
          v274[0] = *v150;
          *(this + 1) = v150 + 1;
        }

        v151 = *(this + 14);
        v152 = *(this + 15);
        *(this + 14) = v151 + 1;
        if (v151 >= v152)
        {
          return 0;
        }

        v153 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v274[0]);
        if (!sub_1000AA744(v149, this, v154, v155) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v153);
        v156 = *(this + 14);
        v96 = __OFSUB__(v156, 1);
        v157 = v156 - 1;
        if (v157 < 0 == v96)
        {
          *(this + 14) = v157;
        }

        v139 = *(this + 1);
        v6 = v147;
        v7 = v146;
        v8 = v145;
        v9 = v144;
        v10 = v143;
        v11 = v142;
        v13 = v261;
        v12 = v265;
        if (*(this + 4) - v139 > 1)
        {
          v158 = *v139;
          if (v158 != 241)
          {
            if (v158 != 234 || v139[1] != 1)
            {
              continue;
            }

            goto LABEL_355;
          }

          if (v139[1] == 1)
          {
            *(this + 1) = v139 + 2;
LABEL_377:
            *v274 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 216) = *v274;
            *(a1 + 468) |= 0x20000000u;
            v159 = *(this + 1);
            if (*(this + 4) - v159 >= 2 && *v159 == 249 && v159[1] == 1)
            {
              *(this + 1) = v159 + 2;
LABEL_382:
              *v274 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 224) = *v274;
              *(a1 + 468) |= 0x40000000u;
              v160 = *(this + 1);
              if (*(this + 4) - v160 >= 2 && *v160 == 129 && v160[1] == 2)
              {
                *(this + 1) = v160 + 2;
LABEL_387:
                *v274 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 232) = *v274;
                *(a1 + 468) |= 0x80000000;
                v161 = *(this + 1);
                v40 = *(this + 2);
                if (v40 - v161 >= 2 && *v161 == 136 && v161[1] == 2)
                {
                  v69 = (v161 + 2);
                  *(this + 1) = v69;
LABEL_392:
                  if (v69 >= v40 || (v162 = *v69, v162 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 240));
                    if (!result)
                    {
                      return result;
                    }

                    v163 = *(this + 1);
                    v40 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 240) = v162;
                    v163 = (v69 + 1);
                    *(this + 1) = v163;
                  }

                  *(a1 + 472) |= 1u;
                  if (v40 - v163 >= 2 && *v163 == 144 && v163[1] == 2)
                  {
                    v41 = (v163 + 2);
                    *(this + 1) = v41;
LABEL_401:
                    v274[0] = 0;
                    if (v41 >= v40 || (v164 = *v41, (v164 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                      if (!result)
                      {
                        return result;
                      }

                      v164 = v274[0];
                    }

                    else
                    {
                      *(this + 1) = v41 + 1;
                    }

                    if (v164 > 1)
                    {
                      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 34, v164);
                    }

                    else
                    {
                      *(a1 + 472) |= 2u;
                      *(a1 + 244) = v164;
                    }

                    v165 = *(this + 1);
                    if (*(this + 4) - v165 >= 2 && *v165 == 153 && v165[1] == 2)
                    {
                      *(this + 1) = v165 + 2;
LABEL_413:
                      *v274 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 248) = *v274;
                      *(a1 + 472) |= 4u;
                      v166 = *(this + 1);
                      if (*(this + 4) - v166 >= 2 && *v166 == 161 && v166[1] == 2)
                      {
                        *(this + 1) = v166 + 2;
LABEL_418:
                        *v274 = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                        {
                          return 0;
                        }

                        *(a1 + 256) = *v274;
                        *(a1 + 472) |= 8u;
                        v167 = *(this + 1);
                        if (*(this + 4) - v167 >= 2 && *v167 == 169 && v167[1] == 2)
                        {
                          *(this + 1) = v167 + 2;
LABEL_423:
                          *v274 = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                          {
                            return 0;
                          }

                          *(a1 + 264) = *v274;
                          *(a1 + 472) |= 0x10u;
                          v168 = *(this + 1);
                          if (*(this + 4) - v168 >= 2 && *v168 == 177 && v168[1] == 2)
                          {
                            *(this + 1) = v168 + 2;
LABEL_428:
                            *v274 = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                            {
                              return 0;
                            }

                            *(a1 + 272) = *v274;
                            *(a1 + 472) |= 0x20u;
                            v169 = *(this + 1);
                            if (*(this + 4) - v169 >= 2 && *v169 == 185 && v169[1] == 2)
                            {
                              *(this + 1) = v169 + 2;
LABEL_433:
                              *v274 = 0;
                              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                              {
                                return 0;
                              }

                              *(a1 + 280) = *v274;
                              *(a1 + 472) |= 0x40u;
                              v170 = *(this + 1);
                              v77 = *(this + 2);
                              if (v77 - v170 >= 2 && *v170 == 192 && v170[1] == 2)
                              {
                                v78 = (v170 + 2);
                                *(this + 1) = v78;
LABEL_438:
                                v274[0] = 0;
                                if (v78 >= v77 || (v171 = *v78, v171 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v171 = v274[0];
                                }

                                else
                                {
                                  *(this + 1) = v78 + 1;
                                }

                                if ((v171 - 1) > 1)
                                {
                                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 40, v171);
                                }

                                else
                                {
                                  *(a1 + 472) |= 0x80u;
                                  *(a1 + 288) = v171;
                                }

                                v172 = *(this + 1);
                                v29 = *(this + 2);
                                if (v29 - v172 >= 2 && *v172 == 200 && v172[1] == 2)
                                {
                                  v49 = (v172 + 2);
                                  *(this + 1) = v49;
LABEL_450:
                                  if (v49 >= v29 || (v173 = *v49, (v173 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v268);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v174 = *(this + 1);
                                    v29 = *(this + 2);
                                  }

                                  else
                                  {
                                    *v268 = v173;
                                    v174 = (v49 + 1);
                                    *(this + 1) = v174;
                                  }

                                  *(a1 + 472) |= 0x100u;
                                  if (v29 - v174 >= 2 && *v174 == 208 && v174[1] == 2)
                                  {
                                    v61 = (v174 + 2);
                                    *(this + 1) = v61;
LABEL_459:
                                    v274[0] = 0;
                                    if (v61 >= v29 || (v175 = *v61, (v175 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v175 = v274[0];
                                      v176 = *(this + 1);
                                      v29 = *(this + 2);
                                    }

                                    else
                                    {
                                      v176 = (v61 + 1);
                                      *(this + 1) = v176;
                                    }

                                    *(a1 + 296) = v175 != 0;
                                    *(a1 + 472) |= 0x200u;
                                    if (v29 - v176 >= 2 && *v176 == 216 && v176[1] == 2)
                                    {
                                      v79 = (v176 + 2);
                                      *(this + 1) = v79;
LABEL_468:
                                      v274[0] = 0;
                                      if (v79 >= v29 || (v177 = *v79, (v177 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v177 = v274[0];
                                        v178 = *(this + 1);
                                        v29 = *(this + 2);
                                      }

                                      else
                                      {
                                        v178 = (v79 + 1);
                                        *(this + 1) = v178;
                                      }

                                      *(a1 + 297) = v177 != 0;
                                      *(a1 + 472) |= 0x400u;
                                      if (v29 - v178 >= 2 && *v178 == 224 && v178[1] == 2)
                                      {
                                        v30 = (v178 + 2);
                                        *(this + 1) = v30;
LABEL_477:
                                        v274[0] = 0;
                                        if (v30 >= v29 || (v179 = *v30, (v179 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v179 = v274[0];
                                          v180 = *(this + 1);
                                          v29 = *(this + 2);
                                        }

                                        else
                                        {
                                          v180 = (v30 + 1);
                                          *(this + 1) = v180;
                                        }

                                        *(a1 + 298) = v179 != 0;
                                        *(a1 + 472) |= 0x800u;
                                        if (v29 - v180 >= 2 && *v180 == 233 && v180[1] == 2)
                                        {
                                          *(this + 1) = v180 + 2;
LABEL_486:
                                          *v274 = 0;
                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                                          {
                                            return 0;
                                          }

                                          *(a1 + 304) = *v274;
                                          v76 = *(a1 + 472) | 0x1000;
                                          *(a1 + 472) = v76;
                                          v181 = *(this + 1);
                                          if (*(this + 4) - v181 >= 2 && *v181 == 242 && v181[1] == 2)
                                          {
                                            v260 = v13;
                                            v264 = v12;
                                            v70 = v11;
                                            v71 = v10;
                                            v72 = v9;
                                            v73 = v8;
                                            v74 = v7;
                                            v75 = v6;
                                            *(this + 1) = v181 + 2;
LABEL_491:
                                            *(a1 + 472) = v76 | 0x2000;
                                            v182 = *(a1 + 312);
                                            if (!v182)
                                            {
                                              operator new();
                                            }

                                            v274[0] = 0;
                                            v183 = *(this + 1);
                                            if (v183 >= *(this + 2) || *v183 < 0)
                                            {
                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274))
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                              v274[0] = *v183;
                                              *(this + 1) = v183 + 1;
                                            }

                                            v184 = *(this + 14);
                                            v185 = *(this + 15);
                                            *(this + 14) = v184 + 1;
                                            if (v184 >= v185)
                                            {
                                              return 0;
                                            }

                                            v186 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v274[0]);
                                            if (!sub_1000AB484(v182, this, v187, v188) || *(this + 36) != 1)
                                            {
                                              return 0;
                                            }

                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v186);
                                            v189 = *(this + 14);
                                            v96 = __OFSUB__(v189, 1);
                                            v190 = v189 - 1;
                                            if (v190 < 0 == v96)
                                            {
                                              *(this + 14) = v190;
                                            }

                                            v191 = *(this + 1);
                                            v87 = *(this + 2);
                                            v6 = v75;
                                            v7 = v74;
                                            v8 = v73;
                                            v9 = v72;
                                            v10 = v71;
                                            v11 = v70;
                                            v13 = v260;
                                            v12 = v264;
                                            if (v87 - v191 > 1 && *v191 == 248 && v191[1] == 2)
                                            {
                                              v88 = (v191 + 2);
                                              *(this + 1) = v88;
LABEL_506:
                                              if (v88 >= v87 || (v192 = *v88, (v192 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v266);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v193 = *(this + 1);
                                                v87 = *(this + 2);
                                              }

                                              else
                                              {
                                                *v266 = v192;
                                                v193 = (v88 + 1);
                                                *(this + 1) = v193;
                                              }

                                              *(a1 + 472) |= 0x4000u;
                                              if (v87 - v193 >= 2 && *v193 == 129 && v193[1] == 3)
                                              {
                                                goto LABEL_514;
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
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v53 = *(this + 1);
        v47 = *(this + 2);
        goto LABEL_186;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v56 = *(this + 1);
        v47 = *(this + 2);
        goto LABEL_194;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v48 = *(this + 1);
        v47 = *(this + 2);
        goto LABEL_202;
      case 6u:
        if (v16 != 2)
        {
          goto LABEL_159;
        }

        v63 = *(a1 + 468);
        goto LABEL_210;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v67 = *(this + 1);
        v57 = *(this + 2);
        goto LABEL_216;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v58 = *(this + 1);
        v57 = *(this + 2);
        goto LABEL_224;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v68 = *(this + 1);
        v57 = *(this + 2);
        goto LABEL_232;
      case 0xAu:
        if (v16 == 1)
        {
          goto LABEL_240;
        }

        goto LABEL_159;
      case 0xBu:
        if (v16 == 1)
        {
          goto LABEL_244;
        }

        goto LABEL_159;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v45 = *(this + 1);
        v38 = *(this + 2);
        goto LABEL_248;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v52 = *(this + 1);
        v38 = *(this + 2);
        goto LABEL_256;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v66 = *(this + 1);
        v38 = *(this + 2);
        goto LABEL_264;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v39 = *(this + 1);
        v38 = *(this + 2);
        goto LABEL_272;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v54 = *(this + 1);
        v38 = *(this + 2);
        goto LABEL_281;
      case 0x11u:
        if (v16 == 1)
        {
          goto LABEL_290;
        }

        goto LABEL_159;
      case 0x12u:
        if (v16 == 1)
        {
          goto LABEL_295;
        }

        goto LABEL_159;
      case 0x13u:
        if (v16 == 1)
        {
          goto LABEL_300;
        }

        goto LABEL_159;
      case 0x14u:
        if (v16 == 1)
        {
          goto LABEL_305;
        }

        goto LABEL_159;
      case 0x15u:
        if (v16 == 1)
        {
          goto LABEL_310;
        }

        goto LABEL_159;
      case 0x16u:
        if (v16 == 1)
        {
          goto LABEL_315;
        }

        goto LABEL_159;
      case 0x17u:
        if (v16 == 1)
        {
          goto LABEL_320;
        }

        goto LABEL_159;
      case 0x18u:
        if (v16 == 1)
        {
          goto LABEL_325;
        }

        goto LABEL_159;
      case 0x19u:
        if (v16 == 1)
        {
          goto LABEL_330;
        }

        goto LABEL_159;
      case 0x1Au:
        if (v16 == 1)
        {
          goto LABEL_335;
        }

        goto LABEL_159;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v82 = *(this + 1);
        v81 = *(this + 2);
        goto LABEL_340;
      case 0x1Cu:
        if (v16 == 1)
        {
          goto LABEL_349;
        }

        goto LABEL_159;
      case 0x1Du:
        if (v16 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_159;
      case 0x1Eu:
        if (v16 == 1)
        {
          goto LABEL_377;
        }

        goto LABEL_159;
      case 0x1Fu:
        if (v16 == 1)
        {
          goto LABEL_382;
        }

        goto LABEL_159;
      case 0x20u:
        if (v16 == 1)
        {
          goto LABEL_387;
        }

        goto LABEL_159;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v69 = *(this + 1);
        v40 = *(this + 2);
        goto LABEL_392;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v41 = *(this + 1);
        v40 = *(this + 2);
        goto LABEL_401;
      case 0x23u:
        if (v16 == 1)
        {
          goto LABEL_413;
        }

        goto LABEL_159;
      case 0x24u:
        if (v16 == 1)
        {
          goto LABEL_418;
        }

        goto LABEL_159;
      case 0x25u:
        if (v16 == 1)
        {
          goto LABEL_423;
        }

        goto LABEL_159;
      case 0x26u:
        if (v16 == 1)
        {
          goto LABEL_428;
        }

        goto LABEL_159;
      case 0x27u:
        if (v16 == 1)
        {
          goto LABEL_433;
        }

        goto LABEL_159;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v78 = *(this + 1);
        v77 = *(this + 2);
        goto LABEL_438;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v49 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_450;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v61 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_459;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v79 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_468;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v30 = *(this + 1);
        v29 = *(this + 2);
        goto LABEL_477;
      case 0x2Du:
        if (v16 == 1)
        {
          goto LABEL_486;
        }

        goto LABEL_159;
      case 0x2Eu:
        if (v16 != 2)
        {
          goto LABEL_159;
        }

        v260 = v13;
        v264 = v12;
        v70 = v11;
        v71 = v10;
        v72 = v9;
        v73 = v8;
        v74 = v7;
        v75 = v6;
        v76 = *(a1 + 472);
        goto LABEL_491;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v88 = *(this + 1);
        v87 = *(this + 2);
        goto LABEL_506;
      case 0x30u:
        if (v16 == 1)
        {
          goto LABEL_515;
        }

        if (v16 != 2)
        {
LABEL_159:
          if (v16 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v259 = v13;
        v263 = v12;
        v252 = v11;
        v253 = v10;
        v254 = v9;
        v255 = v8;
        v256 = v7;
        v257 = v6;
        result = sub_100063F88(this, a1 + 320);
        if (!result)
        {
          return result;
        }

LABEL_534:
        v193 = *(this + 1);
        v27 = *(this + 2);
        v7 = v256;
        v6 = v257;
        v9 = v254;
        v8 = v255;
        v11 = v252;
        v10 = v253;
        v13 = v259;
        v12 = v263;
        if (v27 - v193 <= 1)
        {
          continue;
        }

        v204 = *v193;
        if (v204 == 136)
        {
          if (v193[1] == 3)
          {
            v42 = (v193 + 2);
            *(this + 1) = v42;
LABEL_541:
            if (v42 >= v27 || (v205 = *v42, (v205 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v273);
              if (!result)
              {
                return result;
              }

              v206 = *(this + 1);
              v27 = *(this + 2);
            }

            else
            {
              *v273 = v205;
              v206 = (v42 + 1);
              *(this + 1) = v206;
            }

            *(a1 + 472) |= 0x10000u;
            if (v27 - v206 >= 2 && *v206 == 144 && v206[1] == 3)
            {
              v46 = (v206 + 2);
              *(this + 1) = v46;
LABEL_550:
              v274[0] = 0;
              if (v46 >= v27 || (v207 = *v46, (v207 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                if (!result)
                {
                  return result;
                }

                v207 = v274[0];
                v208 = *(this + 1);
                v27 = *(this + 2);
              }

              else
              {
                v208 = (v46 + 1);
                *(this + 1) = v208;
              }

              *(a1 + 340) = v207;
              *(a1 + 472) |= 0x20000u;
              if (v27 - v208 >= 2 && *v208 == 152 && v208[1] == 3)
              {
                v28 = (v208 + 2);
                *(this + 1) = v28;
LABEL_559:
                v274[0] = 0;
                if (v28 >= v27 || (v209 = *v28, (v209 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                  if (!result)
                  {
                    return result;
                  }

                  v209 = v274[0];
                  v210 = *(this + 1);
                  v27 = *(this + 2);
                }

                else
                {
                  v210 = (v28 + 1);
                  *(this + 1) = v210;
                }

                *(a1 + 344) = v209;
                *(a1 + 472) |= 0x40000u;
                if (v27 - v210 >= 2 && *v210 == 160 && v210[1] == 3)
                {
                  v89 = (v210 + 2);
                  *(this + 1) = v89;
LABEL_568:
                  v274[0] = 0;
                  if (v89 >= v27 || (v211 = *v89, (v211 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                    if (!result)
                    {
                      return result;
                    }

                    v211 = v274[0];
                    v212 = *(this + 1);
                    v27 = *(this + 2);
                  }

                  else
                  {
                    v212 = (v89 + 1);
                    *(this + 1) = v212;
                  }

                  *(a1 + 348) = v211;
                  *(a1 + 472) |= 0x80000u;
                  if (v27 - v212 >= 2 && *v212 == 168 && v212[1] == 3)
                  {
                    v86 = (v212 + 2);
                    *(this + 1) = v86;
LABEL_577:
                    if (v86 >= v27 || (v213 = *v86, (v213 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v272);
                      if (!result)
                      {
                        return result;
                      }

                      v214 = *(this + 1);
                      v27 = *(this + 2);
                    }

                    else
                    {
                      *v272 = v213;
                      v214 = (v86 + 1);
                      *(this + 1) = v214;
                    }

                    *(a1 + 472) |= 0x100000u;
                    if (v27 - v214 >= 2 && *v214 == 176 && v214[1] == 3)
                    {
                      v34 = (v214 + 2);
                      *(this + 1) = v34;
LABEL_586:
                      if (v34 >= v27 || (v215 = *v34, v215 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 352));
                        if (!result)
                        {
                          return result;
                        }

                        v216 = *(this + 1);
                        v27 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 352) = v215;
                        v216 = (v34 + 1);
                        *(this + 1) = v216;
                      }

                      *(a1 + 472) |= 0x200000u;
                      if (v27 - v216 >= 2 && *v216 == 184 && v216[1] == 3)
                      {
                        v83 = (v216 + 2);
                        *(this + 1) = v83;
LABEL_595:
                        if (v83 >= v27 || (v217 = *v83, v217 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 360));
                          if (!result)
                          {
                            return result;
                          }

                          v218 = *(this + 1);
                          v27 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 360) = v217;
                          v218 = (v83 + 1);
                          *(this + 1) = v218;
                        }

                        *(a1 + 472) |= 0x400000u;
                        if (v27 - v218 >= 2 && *v218 == 192 && v218[1] == 3)
                        {
                          v85 = (v218 + 2);
                          *(this + 1) = v85;
LABEL_604:
                          if (v85 >= v27 || (v219 = *v85, v219 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 368));
                            if (!result)
                            {
                              return result;
                            }

                            v220 = *(this + 1);
                            v27 = *(this + 2);
                          }

                          else
                          {
                            *(a1 + 368) = v219;
                            v220 = (v85 + 1);
                            *(this + 1) = v220;
                          }

                          *(a1 + 472) |= 0x800000u;
                          if (v27 - v220 >= 2 && *v220 == 200 && v220[1] == 3)
                          {
                            v36 = (v220 + 2);
                            *(this + 1) = v36;
LABEL_613:
                            if (v36 >= v27 || (v221 = *v36, v221 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 384));
                              if (!result)
                              {
                                return result;
                              }

                              v222 = *(this + 1);
                              v27 = *(this + 2);
                            }

                            else
                            {
                              *(a1 + 384) = v221;
                              v222 = (v36 + 1);
                              *(this + 1) = v222;
                            }

                            *(a1 + 472) |= 0x1000000u;
                            if (v27 - v222 >= 2 && *v222 == 209 && v222[1] == 3)
                            {
                              *(this + 1) = v222 + 2;
LABEL_622:
                              *v274 = 0;
                              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                              {
                                return 0;
                              }

                              *(a1 + 392) = *v274;
                              *(a1 + 472) |= 0x2000000u;
                              v223 = *(this + 1);
                              v43 = *(this + 2);
                              if (v43 - v223 >= 2 && *v223 == 216 && v223[1] == 3)
                              {
                                v44 = (v223 + 2);
                                *(this + 1) = v44;
LABEL_627:
                                if (v44 >= v43 || (v224 = *v44, (v224 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v267);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v225 = *(this + 1);
                                  v43 = *(this + 2);
                                }

                                else
                                {
                                  *v267 = v224;
                                  v225 = (v44 + 1);
                                  *(this + 1) = v225;
                                }

                                *(a1 + 472) |= 0x4000000u;
                                if (v43 - v225 >= 2 && *v225 == 224 && v225[1] == 3)
                                {
                                  v80 = (v225 + 2);
                                  *(this + 1) = v80;
LABEL_636:
                                  if (v80 >= v43 || (v226 = *v80, (v226 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v269);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v227 = *(this + 1);
                                    v43 = *(this + 2);
                                  }

                                  else
                                  {
                                    *v269 = v226;
                                    v227 = (v80 + 1);
                                    *(this + 1) = v227;
                                  }

                                  *(a1 + 472) |= 0x8000000u;
                                  if (v43 - v227 >= 2 && *v227 == 232 && v227[1] == 3)
                                  {
                                    v50 = (v227 + 2);
                                    *(this + 1) = v50;
LABEL_645:
                                    if (v50 >= v43 || (v228 = *v50, (v228 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v229 = *(this + 1);
                                      v43 = *(this + 2);
                                    }

                                    else
                                    {
                                      *v6 = v228;
                                      v229 = (v50 + 1);
                                      *(this + 1) = v229;
                                    }

                                    *(a1 + 472) |= 0x10000000u;
                                    if (v43 - v229 >= 2 && *v229 == 240 && v229[1] == 3)
                                    {
                                      v62 = (v229 + 2);
                                      *(this + 1) = v62;
LABEL_654:
                                      if (v62 >= v43 || (v230 = *v62, (v230 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v7);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v231 = *(this + 1);
                                        v43 = *(this + 2);
                                      }

                                      else
                                      {
                                        *v7 = v230;
                                        v231 = (v62 + 1);
                                        *(this + 1) = v231;
                                      }

                                      *(a1 + 472) |= 0x20000000u;
                                      if (v43 - v231 >= 2 && *v231 == 248 && v231[1] == 3)
                                      {
                                        v65 = (v231 + 2);
                                        *(this + 1) = v65;
LABEL_663:
                                        if (v65 >= v43 || (v232 = *v65, (v232 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v8);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v233 = *(this + 1);
                                          v43 = *(this + 2);
                                        }

                                        else
                                        {
                                          *v8 = v232;
                                          v233 = (v65 + 1);
                                          *(this + 1) = v233;
                                        }

                                        *(a1 + 472) |= 0x40000000u;
                                        if (v43 - v233 >= 2 && *v233 == 128 && v233[1] == 4)
                                        {
                                          v55 = (v233 + 2);
                                          *(this + 1) = v55;
LABEL_672:
                                          v274[0] = 0;
                                          if (v55 >= v43 || (v234 = *v55, v234 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v274);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v234 = v274[0];
                                          }

                                          else
                                          {
                                            *(this + 1) = v55 + 1;
                                          }

                                          if ((v234 - 1) > 5)
                                          {
                                            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 64, v234);
                                          }

                                          else
                                          {
                                            *(a1 + 472) |= 0x80000000;
                                            *(a1 + 416) = v234;
                                          }

                                          v235 = *(this + 1);
                                          v31 = *(this + 2);
                                          if (v31 - v235 >= 2 && *v235 == 136 && v235[1] == 4)
                                          {
                                            v51 = (v235 + 2);
                                            *(this + 1) = v51;
LABEL_684:
                                            if (v51 >= v31 || (v236 = *v51, (v236 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v9);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v237 = *(this + 1);
                                              v31 = *(this + 2);
                                            }

                                            else
                                            {
                                              *v9 = v236;
                                              v237 = (v51 + 1);
                                              *(this + 1) = v237;
                                            }

                                            *(a1 + 476) |= 1u;
                                            if (v31 - v237 >= 2 && *v237 == 144 && v237[1] == 4)
                                            {
                                              v64 = (v237 + 2);
                                              *(this + 1) = v64;
LABEL_693:
                                              if (v64 >= v31 || (v238 = *v64, (v238 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v10);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v239 = *(this + 1);
                                                v31 = *(this + 2);
                                              }

                                              else
                                              {
                                                *v10 = v238;
                                                v239 = (v64 + 1);
                                                *(this + 1) = v239;
                                              }

                                              *(a1 + 476) |= 2u;
                                              if (v31 - v239 >= 2 && *v239 == 152 && v239[1] == 4)
                                              {
                                                v32 = (v239 + 2);
                                                *(this + 1) = v32;
LABEL_702:
                                                if (v32 >= v31 || (v240 = *v32, (v240 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v11);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v241 = *(this + 1);
                                                  v31 = *(this + 2);
                                                }

                                                else
                                                {
                                                  *v11 = v240;
                                                  v241 = (v32 + 1);
                                                  *(this + 1) = v241;
                                                }

                                                *(a1 + 476) |= 4u;
                                                if (v31 - v241 >= 2 && *v241 == 161 && v241[1] == 4)
                                                {
                                                  *(this + 1) = v241 + 2;
LABEL_711:
                                                  *v274 = 0;
                                                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                                                  {
                                                    return 0;
                                                  }

                                                  *(a1 + 432) = *v274;
                                                  *(a1 + 476) |= 8u;
                                                  v242 = *(this + 1);
                                                  if (*(this + 4) - v242 >= 2 && *v242 == 169 && v242[1] == 4)
                                                  {
                                                    *(this + 1) = v242 + 2;
LABEL_716:
                                                    *v274 = 0;
                                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274) & 1) == 0)
                                                    {
                                                      return 0;
                                                    }

                                                    *(a1 + 440) = *v274;
                                                    *(a1 + 476) |= 0x10u;
                                                    v243 = *(this + 1);
                                                    v25 = *(this + 2);
                                                    if (v25 - v243 >= 2 && *v243 == 176 && v243[1] == 4)
                                                    {
                                                      v37 = (v243 + 2);
                                                      *(this + 1) = v37;
LABEL_721:
                                                      if (v37 >= v25 || (v244 = *v37, (v244 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v12);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v245 = *(this + 1);
                                                        v25 = *(this + 2);
                                                      }

                                                      else
                                                      {
                                                        *v12 = v244;
                                                        v245 = (v37 + 1);
                                                        *(this + 1) = v245;
                                                      }

                                                      *(a1 + 476) |= 0x20u;
                                                      if (v25 - v245 >= 2 && *v245 == 184 && v245[1] == 4)
                                                      {
                                                        v26 = (v245 + 2);
                                                        *(this + 1) = v26;
LABEL_730:
                                                        if (v26 >= v25 || (v246 = *v26, (v246 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v13);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v247 = *(this + 1);
                                                          v25 = *(this + 2);
                                                        }

                                                        else
                                                        {
                                                          *v13 = v246;
                                                          v247 = (v26 + 1);
                                                          *(this + 1) = v247;
                                                        }

                                                        *(a1 + 476) |= 0x40u;
                                                        if (v25 - v247 >= 2 && *v247 == 192 && v247[1] == 4)
                                                        {
                                                          v33 = (v247 + 2);
                                                          *(this + 1) = v33;
LABEL_739:
                                                          if (v33 >= v25 || (v248 = *v33, (v248 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v270);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v249 = *(this + 1);
                                                            v25 = *(this + 2);
                                                          }

                                                          else
                                                          {
                                                            *v270 = v248;
                                                            v249 = (v33 + 1);
                                                            *(this + 1) = v249;
                                                          }

                                                          *(a1 + 476) |= 0x80u;
                                                          if (v25 - v249 >= 2 && *v249 == 200 && v249[1] == 4)
                                                          {
                                                            v84 = (v249 + 2);
                                                            *(this + 1) = v84;
LABEL_748:
                                                            if (v84 >= v25 || (v250 = *v84, (v250 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v271);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v251 = *(this + 1);
                                                              v25 = *(this + 2);
                                                            }

                                                            else
                                                            {
                                                              *v271 = v250;
                                                              v251 = v84 + 1;
                                                              *(this + 1) = v251;
                                                            }

                                                            *(a1 + 476) |= 0x100u;
                                                            if (v251 == v25 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
                  }
                }
              }
            }
          }

          continue;
        }

        if (v204 != 129 || v193[1] != 3)
        {
          continue;
        }

LABEL_514:
        *(this + 1) = v193 + 2;
LABEL_515:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x181, TagFallback) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v274);
        }

        *v274 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v274))
        {
          v259 = v13;
          v263 = v12;
          v252 = v11;
          v253 = v10;
          v254 = v9;
          v255 = v8;
          v256 = v7;
          v257 = v6;
          v194 = *v274;
          v195 = *(a1 + 328);
          if (v195 == *(a1 + 332))
          {
            sub_1000778F4((a1 + 320), v195 + 1);
            v195 = *(a1 + 328);
          }

          v196 = *(a1 + 320);
          v197 = v195 + 1;
          *(a1 + 328) = v195 + 1;
          *(v196 + 8 * v195) = v194;
          v198 = *(this + 1);
          v199 = *(this + 4) - v198;
          if (v199 >= 1)
          {
            v200 = v199 / 0xAu;
            v201 = v200 >= *(a1 + 332) - v197 ? *(a1 + 332) - v197 : v200;
            if (v201 >= 1)
            {
              v202 = 0;
              while (*v198 == 129 && v198[1] == 3)
              {
                v203 = *(v198 + 2);
                if (v197 >= *(a1 + 332))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v274);
                  v197 = *(a1 + 328);
                  v196 = *(a1 + 320);
                }

                *(a1 + 328) = v197 + 1;
                *(v196 + 8 * v197) = v203;
                ++v202;
                v198 += 10;
                ++v197;
                if (v201 == v202)
                {
                  v202 = v201;
                  goto LABEL_533;
                }
              }

              if (!v202)
              {
                goto LABEL_534;
              }

LABEL_533:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 10 * v202);
            }
          }

          goto LABEL_534;
        }

        return 0;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v42 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_541;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v46 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_550;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v28 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_559;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v89 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_568;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v86 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_577;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v34 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_586;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v83 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_595;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v85 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_604;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v36 = *(this + 1);
        v27 = *(this + 2);
        goto LABEL_613;
      case 0x3Au:
        if (v16 == 1)
        {
          goto LABEL_622;
        }

        goto LABEL_159;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v44 = *(this + 1);
        v43 = *(this + 2);
        goto LABEL_627;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v80 = *(this + 1);
        v43 = *(this + 2);
        goto LABEL_636;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v50 = *(this + 1);
        v43 = *(this + 2);
        goto LABEL_645;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v62 = *(this + 1);
        v43 = *(this + 2);
        goto LABEL_654;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v65 = *(this + 1);
        v43 = *(this + 2);
        goto LABEL_663;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v55 = *(this + 1);
        v43 = *(this + 2);
        goto LABEL_672;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v51 = *(this + 1);
        v31 = *(this + 2);
        goto LABEL_684;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v64 = *(this + 1);
        v31 = *(this + 2);
        goto LABEL_693;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v32 = *(this + 1);
        v31 = *(this + 2);
        goto LABEL_702;
      case 0x44u:
        if (v16 == 1)
        {
          goto LABEL_711;
        }

        goto LABEL_159;
      case 0x45u:
        if (v16 != 1)
        {
          goto LABEL_159;
        }

        goto LABEL_716;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v37 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_721;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v26 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_730;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v33 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_739;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_159;
        }

        v84 = *(this + 1);
        v25 = *(this + 2);
        goto LABEL_748;
      default:
        goto LABEL_159;
    }
  }
}

uint64_t sub_1000AEBD0(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 468);
  if (v6)
  {
    v16 = *(this + 16);
    if (!v16)
    {
      v16 = *(qword_1009F9A28 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v16, a2, a4);
    v6 = *(v5 + 468);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_91;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

LABEL_91:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_93;
  }

LABEL_92:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_94;
  }

LABEL_93:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 48), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_95;
  }

LABEL_94:
  v17 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 468);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_96;
  }

LABEL_95:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_97;
  }

LABEL_96:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 56), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 60), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_99;
  }

LABEL_98:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_99:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_101;
  }

LABEL_100:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 80), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 84), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 88), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 92), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 136), a2, a4);
  v6 = *(v5 + 468);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 96), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 104), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 112), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 120), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 128), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x16, a2, *(v5 + 144), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 152), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 160), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 168), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 176), a3);
  v6 = *(v5 + 468);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 140), a2, a4);
  if ((*(v5 + 468) & 0x8000000) != 0)
  {
LABEL_29:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 184), a3);
  }

LABEL_30:
  if (*(v5 + 200) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, *(*(v5 + 192) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 200));
  }

  v8 = *(v5 + 468);
  if ((v8 & 0x20000000) == 0)
  {
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_118:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 224), a3);
    if ((*(v5 + 468) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_119;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 216), a3);
  v8 = *(v5 + 468);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_35:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_119:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 232), a3);
LABEL_36:
  v9 = *(v5 + 472);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 240), a2, a4);
    v9 = *(v5 + 472);
    if ((v9 & 2) == 0)
    {
LABEL_38:
      if ((v9 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_122;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x22, *(v5 + 244), a2, a4);
  v9 = *(v5 + 472);
  if ((v9 & 4) == 0)
  {
LABEL_39:
    if ((v9 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x23, a2, *(v5 + 248), a3);
  v9 = *(v5 + 472);
  if ((v9 & 8) == 0)
  {
LABEL_40:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x24, a2, *(v5 + 256), a3);
  v9 = *(v5 + 472);
  if ((v9 & 0x10) == 0)
  {
LABEL_41:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x25, a2, *(v5 + 264), a3);
  v9 = *(v5 + 472);
  if ((v9 & 0x20) == 0)
  {
LABEL_42:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x26, a2, *(v5 + 272), a3);
  v9 = *(v5 + 472);
  if ((v9 & 0x40) == 0)
  {
LABEL_43:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x27, a2, *(v5 + 280), a3);
  v9 = *(v5 + 472);
  if ((v9 & 0x80) == 0)
  {
LABEL_44:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x28, *(v5 + 288), a2, a4);
  v9 = *(v5 + 472);
  if ((v9 & 0x100) == 0)
  {
LABEL_45:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 292), a2, a4);
  v9 = *(v5 + 472);
  if ((v9 & 0x200) == 0)
  {
LABEL_46:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 296), a2, a4);
  v9 = *(v5 + 472);
  if ((v9 & 0x400) == 0)
  {
LABEL_47:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2B, *(v5 + 297), a2, a4);
  v9 = *(v5 + 472);
  if ((v9 & 0x800) == 0)
  {
LABEL_48:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2C, *(v5 + 298), a2, a4);
  v9 = *(v5 + 472);
  if ((v9 & 0x1000) == 0)
  {
LABEL_49:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2D, a2, *(v5 + 304), a3);
  v9 = *(v5 + 472);
  if ((v9 & 0x2000) == 0)
  {
LABEL_50:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_133:
  v18 = *(v5 + 312);
  if (!v18)
  {
    v18 = *(qword_1009F9A28 + 312);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2E, v18, a2, a4);
  if ((*(v5 + 472) & 0x4000) != 0)
  {
LABEL_51:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 300), a2, a4);
  }

LABEL_52:
  if (*(v5 + 328) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x30, a2, *(*(v5 + 320) + 8 * v10++), a3);
    }

    while (v10 < *(v5 + 328));
  }

  v11 = *(v5 + 472);
  if ((v11 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 336), a2, a4);
    v11 = *(v5 + 472);
    if ((v11 & 0x20000) == 0)
    {
LABEL_57:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_139;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_57;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x32, *(v5 + 340), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x40000) == 0)
  {
LABEL_58:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x33, *(v5 + 344), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x80000) == 0)
  {
LABEL_59:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x34, *(v5 + 348), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x100000) == 0)
  {
LABEL_60:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 376), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x200000) == 0)
  {
LABEL_61:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_143;
  }

LABEL_142:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x36, *(v5 + 352), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x400000) == 0)
  {
LABEL_62:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_144;
  }

LABEL_143:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x37, *(v5 + 360), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x800000) == 0)
  {
LABEL_63:
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_145;
  }

LABEL_144:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x38, *(v5 + 368), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_64:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_146;
  }

LABEL_145:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x39, *(v5 + 384), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_65:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_147;
  }

LABEL_146:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3A, a2, *(v5 + 392), a3);
  v11 = *(v5 + 472);
  if ((v11 & 0x4000000) == 0)
  {
LABEL_66:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_148;
  }

LABEL_147:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 380), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x8000000) == 0)
  {
LABEL_67:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_149;
  }

LABEL_148:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 400), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x10000000) == 0)
  {
LABEL_68:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 404), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x20000000) == 0)
  {
LABEL_69:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_151:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(v5 + 412), a2, a4);
    if ((*(v5 + 472) & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_152;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 408), a2, a4);
  v11 = *(v5 + 472);
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_151;
  }

LABEL_70:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_152:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x40, *(v5 + 416), a2, a4);
LABEL_71:
  v12 = *(v5 + 476);
  if (v12)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 420), a2, a4);
    v12 = *(v5 + 476);
    if ((v12 & 2) == 0)
    {
LABEL_73:
      if ((v12 & 4) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_155;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_73;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 424), a2, a4);
  v12 = *(v5 + 476);
  if ((v12 & 4) == 0)
  {
LABEL_74:
    if ((v12 & 8) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 428), a2, a4);
  v12 = *(v5 + 476);
  if ((v12 & 8) == 0)
  {
LABEL_75:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x44, a2, *(v5 + 432), a3);
  v12 = *(v5 + 476);
  if ((v12 & 0x10) == 0)
  {
LABEL_76:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x45, a2, *(v5 + 440), a3);
  v12 = *(v5 + 476);
  if ((v12 & 0x20) == 0)
  {
LABEL_77:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 448), a2, a4);
  v12 = *(v5 + 476);
  if ((v12 & 0x40) == 0)
  {
LABEL_78:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_79;
    }

LABEL_160:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 456), a2, a4);
    if ((*(v5 + 476) & 0x100) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_159:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 452), a2, a4);
  v12 = *(v5 + 476);
  if ((v12 & 0x80) != 0)
  {
    goto LABEL_160;
  }

LABEL_79:
  if ((v12 & 0x100) != 0)
  {
LABEL_80:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 460), a2, a4);
  }

LABEL_81:
  v15 = *(v5 + 8);
  v14 = (v5 + 8);
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v14, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AF484(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 117);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9A28 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[7];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_1000A02A0(v7, v10, a3);
    v6 = *(this + 117);
  }

  if ((v6 & 2) != 0)
  {
    v11 = *(this + 8);
    *v4 = 16;
    v12 = v4 + 1;
    if ((v11 & 0x80000000) != 0)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    }

    else
    {
      if (v11 <= 0x7F)
      {
        *(v4 + 1) = v11;
        v4 = (v4 + 2);
        goto LABEL_15;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v4 = v13;
  }

LABEL_15:
  v14 = *(this + 117);
  if ((v14 & 4) != 0)
  {
    v15 = *(this + 3);
    *v4 = 24;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v4 + 1, a3);
    v14 = *(this + 117);
  }

  if ((v14 & 8) != 0)
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

  if ((*(this + 468) & 0x10) != 0)
  {
    v17 = *(this + 12);
    *v4 = 40;
    if (v17 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v17;
      v4 = (v4 + 2);
    }
  }

  v18 = *(this + 117);
  if ((v18 & 0x20) != 0)
  {
    v19 = *(this + 5);
    *v4 = 50;
    v20 = *(v19 + 23);
    if ((v20 & 0x8000000000000000) != 0)
    {
      v20 = *(v19 + 8);
    }

    if (v20 > 0x7F)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v20;
      v21 = v4 + 2;
    }

    v22 = *(v19 + 23);
    if (v22 >= 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = *v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v19 + 23);
    }

    else
    {
      v24 = *(v19 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v23, v24, v21, a4);
    v18 = *(this + 117);
  }

  if ((v18 & 0x40) != 0)
  {
    v25 = *(this + 13);
    *v4 = 56;
    if (v25 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v25;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 468) & 0x80) != 0)
  {
    v26 = *(this + 14);
    *v4 = 64;
    if (v26 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v26;
      v4 = (v4 + 2);
    }
  }

  if (*(this + 469))
  {
    v27 = *(this + 15);
    *v4 = 72;
    if (v27 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v27;
      v4 = (v4 + 2);
    }
  }

  v28 = *(this + 117);
  if ((v28 & 0x200) != 0)
  {
    v29 = *(this + 8);
    *v4 = 81;
    *(v4 + 1) = v29;
    v4 = (v4 + 9);
    v28 = *(this + 117);
    if ((v28 & 0x400) == 0)
    {
LABEL_52:
      if ((v28 & 0x800) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }
  }

  else if ((v28 & 0x400) == 0)
  {
    goto LABEL_52;
  }

  v30 = *(this + 9);
  *v4 = 89;
  *(v4 + 1) = v30;
  v4 = (v4 + 9);
  if ((*(this + 117) & 0x800) == 0)
  {
    goto LABEL_59;
  }

LABEL_56:
  v31 = *(this + 20);
  *v4 = 96;
  if (v31 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v31;
    v4 = (v4 + 2);
  }

LABEL_59:
  if ((*(this + 469) & 0x10) != 0)
  {
    v32 = *(this + 21);
    *v4 = 104;
    if (v32 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v32;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 469) & 0x20) != 0)
  {
    v33 = *(this + 22);
    *v4 = 112;
    if (v33 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v33;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 469) & 0x40) != 0)
  {
    v34 = *(this + 23);
    *v4 = 120;
    if (v34 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v34;
      v4 = (v4 + 2);
    }
  }

  if ((*(this + 469) & 0x80) != 0)
  {
    v35 = *(this + 34);
    *v4 = 384;
    if (v35 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v35;
      v4 = (v4 + 3);
    }
  }

  v36 = *(this + 117);
  if ((v36 & 0x10000) != 0)
  {
    v37 = *(this + 12);
    *v4 = 393;
    *(v4 + 2) = v37;
    v4 = (v4 + 10);
    v36 = *(this + 117);
    if ((v36 & 0x20000) == 0)
    {
LABEL_77:
      if ((v36 & 0x40000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_89;
    }
  }

  else if ((v36 & 0x20000) == 0)
  {
    goto LABEL_77;
  }

  v38 = *(this + 13);
  *v4 = 401;
  *(v4 + 2) = v38;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x40000) == 0)
  {
LABEL_78:
    if ((v36 & 0x80000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_90;
  }

LABEL_89:
  v39 = *(this + 14);
  *v4 = 409;
  *(v4 + 2) = v39;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x80000) == 0)
  {
LABEL_79:
    if ((v36 & 0x100000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_91;
  }

LABEL_90:
  v40 = *(this + 15);
  *v4 = 417;
  *(v4 + 2) = v40;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x100000) == 0)
  {
LABEL_80:
    if ((v36 & 0x200000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_92;
  }

LABEL_91:
  v41 = *(this + 16);
  *v4 = 425;
  *(v4 + 2) = v41;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x200000) == 0)
  {
LABEL_81:
    if ((v36 & 0x400000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

LABEL_92:
  v42 = *(this + 18);
  *v4 = 433;
  *(v4 + 2) = v42;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x400000) == 0)
  {
LABEL_82:
    if ((v36 & 0x800000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

LABEL_93:
  v43 = *(this + 19);
  *v4 = 441;
  *(v4 + 2) = v43;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x800000) == 0)
  {
LABEL_83:
    if ((v36 & 0x1000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_95;
  }

LABEL_94:
  v44 = *(this + 20);
  *v4 = 449;
  *(v4 + 2) = v44;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x1000000) == 0)
  {
LABEL_84:
    if ((v36 & 0x2000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_96;
  }

LABEL_95:
  v45 = *(this + 21);
  *v4 = 457;
  *(v4 + 2) = v45;
  v4 = (v4 + 10);
  v36 = *(this + 117);
  if ((v36 & 0x2000000) == 0)
  {
LABEL_85:
    if ((v36 & 0x4000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_97;
  }

LABEL_96:
  v46 = *(this + 22);
  *v4 = 465;
  *(v4 + 2) = v46;
  v4 = (v4 + 10);
  if ((*(this + 117) & 0x4000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_97:
  v47 = *(this + 35);
  *v4 = 472;
  if (v47 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v47;
    v4 = (v4 + 3);
  }

LABEL_100:
  if ((*(this + 471) & 8) != 0)
  {
    v48 = *(this + 23);
    *v4 = 481;
    *(v4 + 2) = v48;
    v4 = (v4 + 10);
  }

  if (*(this + 50) >= 1)
  {
    v49 = 0;
    do
    {
      v50 = *(*(this + 24) + 8 * v49);
      *v4 = 490;
      v51 = *(v50 + 72);
      if (v51 > 0x7F)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v4 + 2, a3);
      }

      else
      {
        *(v4 + 2) = v51;
        v52 = v4 + 3;
      }

      v4 = sub_1000AABA0(v50, v52, a3);
      ++v49;
    }

    while (v49 < *(this + 50));
  }

  v53 = *(this + 117);
  if ((v53 & 0x20000000) == 0)
  {
    if ((v53 & 0x40000000) == 0)
    {
      goto LABEL_110;
    }

LABEL_115:
    v56 = *(this + 28);
    *v4 = 505;
    *(v4 + 2) = v56;
    v4 = (v4 + 10);
    if ((*(this + 117) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_116;
  }

  v55 = *(this + 27);
  *v4 = 497;
  *(v4 + 2) = v55;
  v4 = (v4 + 10);
  v53 = *(this + 117);
  if ((v53 & 0x40000000) != 0)
  {
    goto LABEL_115;
  }

LABEL_110:
  if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_111;
  }

LABEL_116:
  v57 = *(this + 29);
  *v4 = 641;
  *(v4 + 2) = v57;
  v4 = (v4 + 10);
LABEL_111:
  if (*(this + 472))
  {
    v54 = *(this + 60);
    *v4 = 648;
    if (v54 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v54, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v54;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 472) & 2) != 0)
  {
    v58 = *(this + 61);
    *v4 = 656;
    v59 = v4 + 2;
    if ((v58 & 0x80000000) != 0)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v58, v59, a3);
    }

    else
    {
      if (v58 <= 0x7F)
      {
        *(v4 + 2) = v58;
        v4 = (v4 + 3);
        goto LABEL_125;
      }

      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v58, v59, a3);
    }

    v4 = v60;
  }

LABEL_125:
  v61 = *(this + 118);
  if ((v61 & 4) != 0)
  {
    v62 = *(this + 31);
    *v4 = 665;
    *(v4 + 2) = v62;
    v4 = (v4 + 10);
    v61 = *(this + 118);
    if ((v61 & 8) == 0)
    {
LABEL_127:
      if ((v61 & 0x10) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_134;
    }
  }

  else if ((v61 & 8) == 0)
  {
    goto LABEL_127;
  }

  v63 = *(this + 32);
  *v4 = 673;
  *(v4 + 2) = v63;
  v4 = (v4 + 10);
  v61 = *(this + 118);
  if ((v61 & 0x10) == 0)
  {
LABEL_128:
    if ((v61 & 0x20) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_135;
  }

LABEL_134:
  v64 = *(this + 33);
  *v4 = 681;
  *(v4 + 2) = v64;
  v4 = (v4 + 10);
  v61 = *(this + 118);
  if ((v61 & 0x20) == 0)
  {
LABEL_129:
    if ((v61 & 0x40) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_136;
  }

LABEL_135:
  v65 = *(this + 34);
  *v4 = 689;
  *(v4 + 2) = v65;
  v4 = (v4 + 10);
  v61 = *(this + 118);
  if ((v61 & 0x40) == 0)
  {
LABEL_130:
    if ((v61 & 0x80) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_137;
  }

LABEL_136:
  v66 = *(this + 35);
  *v4 = 697;
  *(v4 + 2) = v66;
  v4 = (v4 + 10);
  if ((*(this + 118) & 0x80) == 0)
  {
    goto LABEL_143;
  }

LABEL_137:
  v67 = *(this + 72);
  *v4 = 704;
  v68 = v4 + 2;
  if ((v67 & 0x80000000) != 0)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v67, v68, a3);
  }

  else
  {
    if (v67 <= 0x7F)
    {
      *(v4 + 2) = v67;
      v4 = (v4 + 3);
      goto LABEL_143;
    }

    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v67, v68, a3);
  }

  v4 = v69;
LABEL_143:
  if (*(this + 473))
  {
    v70 = *(this + 73);
    *v4 = 712;
    if (v70 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v70, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v70;
      v4 = (v4 + 3);
    }
  }

  v71 = *(this + 118);
  if ((v71 & 0x200) != 0)
  {
    v72 = *(this + 296);
    *v4 = 720;
    *(v4 + 2) = v72;
    v4 = (v4 + 3);
    v71 = *(this + 118);
    if ((v71 & 0x400) == 0)
    {
LABEL_149:
      if ((v71 & 0x800) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_156;
    }
  }

  else if ((v71 & 0x400) == 0)
  {
    goto LABEL_149;
  }

  v73 = *(this + 297);
  *v4 = 728;
  *(v4 + 2) = v73;
  v4 = (v4 + 3);
  v71 = *(this + 118);
  if ((v71 & 0x800) == 0)
  {
LABEL_150:
    if ((v71 & 0x1000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_157;
  }

LABEL_156:
  v74 = *(this + 298);
  *v4 = 736;
  *(v4 + 2) = v74;
  v4 = (v4 + 3);
  v71 = *(this + 118);
  if ((v71 & 0x1000) == 0)
  {
LABEL_151:
    if ((v71 & 0x2000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_158;
  }

LABEL_157:
  v75 = *(this + 38);
  *v4 = 745;
  *(v4 + 2) = v75;
  v4 = (v4 + 10);
  v71 = *(this + 118);
  if ((v71 & 0x2000) == 0)
  {
LABEL_152:
    if ((v71 & 0x4000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_164;
  }

LABEL_158:
  v76 = *(this + 39);
  if (!v76)
  {
    v76 = *(qword_1009F9A28 + 312);
  }

  *v4 = 754;
  v77 = v76[12];
  if (v77 > 0x7F)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v77, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v77;
    v78 = (v4 + 3);
  }

  v4 = sub_1000ABB20(v76, v78, a3);
  if ((*(this + 118) & 0x4000) != 0)
  {
LABEL_164:
    v79 = *(this + 75);
    *v4 = 760;
    if (v79 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v79, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v79;
      v4 = (v4 + 3);
    }
  }

LABEL_167:
  if (*(this + 82) >= 1)
  {
    v80 = 0;
    do
    {
      v81 = *(*(this + 40) + 8 * v80);
      *v4 = 897;
      *(v4 + 2) = v81;
      v4 = (v4 + 10);
      ++v80;
    }

    while (v80 < *(this + 82));
  }

  if (*(this + 474))
  {
    v82 = *(this + 84);
    *v4 = 904;
    if (v82 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v82, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v82;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 474) & 2) != 0)
  {
    v83 = *(this + 85);
    *v4 = 912;
    v84 = v4 + 2;
    if ((v83 & 0x80000000) != 0)
    {
      v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v83, v84, a3);
    }

    else
    {
      if (v83 <= 0x7F)
      {
        *(v4 + 2) = v83;
        v4 = (v4 + 3);
        goto LABEL_181;
      }

      v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v83, v84, a3);
    }

    v4 = v85;
  }

LABEL_181:
  if ((*(this + 474) & 4) == 0)
  {
    goto LABEL_188;
  }

  v86 = *(this + 86);
  *v4 = 920;
  v87 = v4 + 2;
  if ((v86 & 0x80000000) != 0)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v86, v87, a3);
  }

  else
  {
    if (v86 <= 0x7F)
    {
      *(v4 + 2) = v86;
      v4 = (v4 + 3);
      goto LABEL_188;
    }

    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v86, v87, a3);
  }

  v4 = v88;
LABEL_188:
  if ((*(this + 474) & 8) == 0)
  {
    goto LABEL_195;
  }

  v89 = *(this + 87);
  *v4 = 928;
  v90 = v4 + 2;
  if ((v89 & 0x80000000) != 0)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v89, v90, a3);
  }

  else
  {
    if (v89 <= 0x7F)
    {
      *(v4 + 2) = v89;
      v4 = (v4 + 3);
      goto LABEL_195;
    }

    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v89, v90, a3);
  }

  v4 = v91;
LABEL_195:
  if ((*(this + 474) & 0x10) != 0)
  {
    v92 = *(this + 94);
    *v4 = 936;
    if (v92 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v92, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v92;
      v4 = (v4 + 3);
    }
  }

  v93 = *(this + 118);
  if ((v93 & 0x200000) != 0)
  {
    v94 = *(this + 44);
    *v4 = 944;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v94, v4 + 2, a3);
    v93 = *(this + 118);
    if ((v93 & 0x400000) == 0)
    {
LABEL_201:
      if ((v93 & 0x800000) == 0)
      {
        goto LABEL_202;
      }

      goto LABEL_208;
    }
  }

  else if ((v93 & 0x400000) == 0)
  {
    goto LABEL_201;
  }

  v95 = *(this + 45);
  *v4 = 952;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v95, v4 + 2, a3);
  v93 = *(this + 118);
  if ((v93 & 0x800000) == 0)
  {
LABEL_202:
    if ((v93 & 0x1000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_209;
  }

LABEL_208:
  v96 = *(this + 46);
  *v4 = 960;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v96, v4 + 2, a3);
  v93 = *(this + 118);
  if ((v93 & 0x1000000) == 0)
  {
LABEL_203:
    if ((v93 & 0x2000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_210;
  }

LABEL_209:
  v97 = *(this + 48);
  *v4 = 968;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v97, v4 + 2, a3);
  v93 = *(this + 118);
  if ((v93 & 0x2000000) == 0)
  {
LABEL_204:
    if ((v93 & 0x4000000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_211;
  }

LABEL_210:
  v98 = *(this + 49);
  *v4 = 977;
  *(v4 + 2) = v98;
  v4 = (v4 + 10);
  if ((*(this + 118) & 0x4000000) == 0)
  {
    goto LABEL_214;
  }

LABEL_211:
  v99 = *(this + 95);
  *v4 = 984;
  if (v99 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v99, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v99;
    v4 = (v4 + 3);
  }

LABEL_214:
  if ((*(this + 475) & 8) != 0)
  {
    v100 = *(this + 100);
    *v4 = 992;
    if (v100 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v100, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v100;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 475) & 0x10) != 0)
  {
    v101 = *(this + 101);
    *v4 = 1000;
    if (v101 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v101, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v101;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 475) & 0x20) != 0)
  {
    v102 = *(this + 102);
    *v4 = 1008;
    if (v102 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v102, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v102;
      v4 = (v4 + 3);
    }
  }

  v103 = *(this + 118);
  if ((v103 & 0x40000000) != 0)
  {
    v104 = *(this + 103);
    *v4 = 1016;
    if (v104 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v104, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v104;
      v4 = (v4 + 3);
    }

    v103 = *(this + 118);
  }

  if (v103 < 0)
  {
    v105 = *(this + 104);
    *v4 = 1152;
    v106 = v4 + 2;
    if ((v105 & 0x80000000) != 0)
    {
      v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v105, v106, a3);
    }

    else
    {
      if (v105 <= 0x7F)
      {
        *(v4 + 2) = v105;
        v4 = (v4 + 3);
        goto LABEL_238;
      }

      v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v105, v106, a3);
    }

    v4 = v107;
  }

LABEL_238:
  if (*(this + 476))
  {
    v108 = *(this + 105);
    *v4 = 1160;
    if (v108 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v108, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v108;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 476) & 2) != 0)
  {
    v109 = *(this + 106);
    *v4 = 1168;
    if (v109 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v109, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v109;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 476) & 4) != 0)
  {
    v110 = *(this + 107);
    *v4 = 1176;
    if (v110 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v110, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v110;
      v4 = (v4 + 3);
    }
  }

  v111 = *(this + 119);
  if ((v111 & 8) != 0)
  {
    v112 = *(this + 54);
    *v4 = 1185;
    *(v4 + 2) = v112;
    v4 = (v4 + 10);
    v111 = *(this + 119);
    if ((v111 & 0x10) == 0)
    {
LABEL_252:
      if ((v111 & 0x20) == 0)
      {
        goto LABEL_259;
      }

      goto LABEL_256;
    }
  }

  else if ((v111 & 0x10) == 0)
  {
    goto LABEL_252;
  }

  v113 = *(this + 55);
  *v4 = 1193;
  *(v4 + 2) = v113;
  v4 = (v4 + 10);
  if ((*(this + 119) & 0x20) == 0)
  {
    goto LABEL_259;
  }

LABEL_256:
  v114 = *(this + 112);
  *v4 = 1200;
  if (v114 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v114, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v114;
    v4 = (v4 + 3);
  }

LABEL_259:
  if ((*(this + 476) & 0x40) != 0)
  {
    v115 = *(this + 113);
    *v4 = 1208;
    if (v115 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v115, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v115;
      v4 = (v4 + 3);
    }
  }

  if ((*(this + 476) & 0x80) != 0)
  {
    v116 = *(this + 114);
    *v4 = 1216;
    if (v116 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v116, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v116;
      v4 = (v4 + 3);
    }
  }

  if (*(this + 477))
  {
    v117 = *(this + 115);
    *v4 = 1224;
    if (v117 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v117, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v117;
      v4 = (v4 + 3);
    }
  }

  v120 = *(this + 1);
  v119 = (this + 8);
  v118 = v120;
  if (!v120 || *v118 == v118[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v119, v4, a3);
}