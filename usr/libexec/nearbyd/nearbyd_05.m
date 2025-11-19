void sub_10006E5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006E5C8(uint64_t *a1)
{
  *a1 = off_10098CA60;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006E62C(uint64_t *a1)
{
  sub_10006E5C8(a1);

  operator delete();
}

uint64_t sub_10006E6D0(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 40) = 0x8FFFFFFFFLL;
  }

  result = sub_100077B98(a1 + 16);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 11) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10006E738(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v13 = *(this + 2);
          goto LABEL_46;
        }

LABEL_16:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v32 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
        if (!result)
        {
          return result;
        }

        v11 = v32;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if ((v11 + 1) > 5)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v11);
      }

      else
      {
        a1[13] |= 1u;
        a1[10] = v11;
      }

      v15 = *(this + 1);
      if (v15 < *(this + 2) && *v15 == 18)
      {
LABEL_49:
        *(this + 1) = v15 + 1;
        goto LABEL_28;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v16 = a1[7];
    v17 = a1[6];
    if (v17 >= v16)
    {
      if (v16 == a1[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v16 + 1);
        v16 = a1[7];
      }

      a1[7] = v16 + 1;
      sub_100077AD0();
    }

    v18 = *(a1 + 2);
    a1[6] = v17 + 1;
    v19 = *(v18 + 8 * v17);
    v33 = 0;
    v20 = *(this + 1);
    if (v20 >= *(this + 2) || *v20 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
      {
        return 0;
      }
    }

    else
    {
      v33 = *v20;
      *(this + 1) = v20 + 1;
    }

    v21 = *(this + 14);
    v22 = *(this + 15);
    *(this + 14) = v21 + 1;
    if (v21 >= v22)
    {
      return 0;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33);
    if (!sub_10006BFEC(v19, this, v24, v25) || *(this + 36) != 1)
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

    v15 = *(this + 1);
    v13 = *(this + 2);
    if (v15 < v13)
    {
      v29 = *v15;
      if (v29 == 18)
      {
        goto LABEL_49;
      }

      if (v29 == 24)
      {
        v12 = v15 + 1;
        *(this + 1) = v12;
LABEL_46:
        v31 = 0;
        if (v12 >= v13 || (v30 = *v12, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
          if (!result)
          {
            return result;
          }

          v30 = v31;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v30 > 8)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 3, v30);
        }

        else
        {
          a1[13] |= 4u;
          a1[11] = v30;
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

uint64_t sub_10006EA50(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
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

  if ((*(v5 + 52) & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 44), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006EB1C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
  {
    v5 = *(this + 10);
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
  if (*(this + 6) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 2) + 8 * v8);
      *v3 = 18;
      v10 = v9[19];
      if (v10 > 0x7F)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v10;
        v11 = (v3 + 2);
      }

      v3 = sub_10006C9BC(v9, v11, a3);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

  if ((*(this + 52) & 4) != 0)
  {
    v12 = *(this + 11);
    *v3 = 24;
    v13 = v3 + 1;
    if ((v12 & 0x80000000) != 0)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, v13, a3);
    }

    else
    {
      if (v12 <= 0x7F)
      {
        *(v3 + 1) = v12;
        v3 = (v3 + 2);
        goto LABEL_21;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v13, a3);
    }

    v3 = v14;
  }

LABEL_21:
  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, v3, a3);
}

uint64_t sub_10006EC68(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 52))
  {
    v5 = *(a1 + 40);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      if ((*(a1 + 52) & 4) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 4) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 4) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 44);
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

  v4 += v7;
LABEL_19:
  v8 = *(a1 + 24);
  v9 = (v8 + v4);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_10006CCC0(*(*(a1 + 16) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(a1 + 24));
  }

  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v9;
  }

  *(a1 + 48) = v9;
  return v9;
}

uint64_t sub_10006ED90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006E4D0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006EE7C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100077AD0();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10006B8E4(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10006EFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006EFBC(uint64_t result, uint64_t a2)
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

uint64_t sub_10006F050()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED378;
}

void sub_10006F0E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10006F0F8(void *a1)
{
  *a1 = off_10098CB10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10006F158(uint64_t a1, uint64_t a2)
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
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F98A0 + 16);
      }

      sub_100063B00(v5, v6);
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006F288(void *a1)
{
  *a1 = off_10098CB10;
  if (qword_1009F98A0 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006F320(void *a1)
{
  sub_10006F288(a1);

  operator delete();
}

uint64_t sub_10006F3C4(uint64_t this)
{
  v1 = this;
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      this = *(this + 16);
      if (this)
      {
        v2 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v2)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 24) = 0;
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

uint64_t sub_10006F43C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if (v8 == 1)
      {
        goto LABEL_27;
      }

LABEL_15:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 36) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
    if (!sub_100063D0C(v9, this, v14, v15) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v16 = *(this + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(this + 14) = v18;
    }

    v19 = *(this + 1);
    if (v19 < *(this + 2) && *v19 == 17)
    {
      *(this + 1) = v19 + 1;
LABEL_27:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v21) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = v21;
      *(a1 + 36) |= 2u;
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

uint64_t sub_10006F668(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F98A0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
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

_BYTE *sub_10006F704(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F98A0 + 16);
    }

    *a2 = 10;
    v6 = *(v5 + 32);
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      a2[1] = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_10006411C(v5, v7, a3);
    v4 = *(this + 9);
  }

  if ((v4 & 2) != 0)
  {
    v8 = *(this + 3);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
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

uint64_t sub_10006F808(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v6 = *(a1 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F98A0 + 16);
      }

      v7 = sub_1000641AC(v6, a2);
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
      v3 = *(a1 + 36);
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

uint64_t sub_10006F8B8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006F158(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006F98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006F9A4(uint64_t result, uint64_t a2)
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

uint64_t sub_10006FA38()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED388;
}

void sub_10006FACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10006FAE0(void *a1)
{
  *a1 = off_10098CBC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10006FB40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    sub_100077844((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 4 * *(a1 + 24)), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006FC18(void *a1)
{
  *a1 = off_10098CBC0;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006FC90(void *a1)
{
  sub_10006FC18(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006FD34(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10006FD4C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    result = sub_100063628(this, a1 + 16);
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v10 = *(this + 1);
      v11 = *(this + 2);
      if (v10 >= v11 || *v10 != 13)
      {
        break;
      }

      *(this + 1) = v10 + 1;
LABEL_16:
      v22[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v22) & 1) == 0)
      {
        return 0;
      }

      v12 = v22[0];
      v13 = *(a1 + 24);
      if (v13 == *(a1 + 28))
      {
        sub_100077844((a1 + 16), v13 + 1);
        v13 = *(a1 + 24);
      }

      v14 = *(a1 + 16);
      v15 = v13 + 1;
      *(a1 + 24) = v13 + 1;
      *(v14 + 4 * v13) = v12;
      v16 = *(this + 1);
      v17 = *(this + 4) - v16;
      if (v17 >= 1)
      {
        v18 = v17 / 5u;
        v19 = v18 >= *(a1 + 28) - v15 ? *(a1 + 28) - v15 : v18;
        if (v19 >= 1)
        {
          v20 = 0;
          while (*v16 == 13)
          {
            v21 = *(v16 + 1);
            if (v15 >= *(a1 + 28))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
              v15 = *(a1 + 24);
              v14 = *(a1 + 16);
            }

            *(a1 + 24) = v15 + 1;
            *(v14 + 4 * v15) = v21;
            ++v20;
            v16 += 5;
            ++v15;
            if (v19 == v20)
            {
              v20 = v19;
              goto LABEL_35;
            }
          }

          if (!v20)
          {
            continue;
          }

LABEL_35:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v20);
        }
      }
    }
  }

  while (v10 != v11 || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

void sub_10006FFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006FFC0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 24) >= 1)
  {
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(*(v4 + 16) + 4 * v5++), a3);
    }

    while (v5 < *(v4 + 24));
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

uint64_t sub_10007005C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 16) + 4 * v3);
      *a2 = 13;
      *(a2 + 1) = v4;
      a2 += 5;
      ++v3;
    }

    while (v3 < *(a1 + 24));
  }

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

uint64_t sub_1000700CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (5 * *(v3 + 4));
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 32) = v6;
  return v6;
}

uint64_t sub_100070118(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006FB40(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000701EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070204(uint64_t result, uint64_t a2)
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

uint64_t sub_100070298()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED398;
}

void sub_10007032C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070340(uint64_t a1)
{
  *a1 = off_10098CC70;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1000703AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_100070A84((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100070434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007044C(uint64_t *a1)
{
  *a1 = off_10098CC70;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000704B0(uint64_t *a1)
{
  sub_10007044C(a1);

  operator delete();
}

uint64_t sub_100070554(uint64_t a1)
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

uint64_t sub_1000705A8(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          sub_100077B34();
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
        if (!sub_10006FD4C(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_100070790(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007082C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 8 * v5);
      *a2 = 10;
      v7 = *(v6 + 32);
      if (v7 > 0x7F)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v7;
        v8 = a2 + 2;
      }

      a2 = sub_10007005C(v6, v8, a3);
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

uint64_t sub_1000708F8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1000700CC(*(*(a1 + 16) + 8 * v4), a2);
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

uint64_t sub_100070998(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000703AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100070A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070A84(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100077B34();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10006FB40(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100070BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070BC4(uint64_t result, uint64_t a2)
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

uint64_t sub_100070C58()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED3A8;
}

void sub_100070CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070D00(uint64_t a1)
{
  *a1 = off_10098CD20;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 176) = 0;
  return a1;
}

uint64_t sub_100070DA0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_100077844((a1 + 24), *(a1 + 32) + v4);
    memcpy((*(a1 + 24) + 4 * *(a1 + 32)), *(a2 + 24), 4 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    sub_1000778F4((a1 + 40), *(a1 + 48) + v5);
    memcpy((*(a1 + 40) + 8 * *(a1 + 48)), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    sub_100077844((a1 + 56), *(a1 + 64) + v6);
    memcpy((*(a1 + 56) + 4 * *(a1 + 64)), *(a2 + 56), 4 * *(a2 + 64));
    *(a1 + 64) += *(a2 + 64);
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    sub_1000778F4((a1 + 72), *(a1 + 80) + v7);
    memcpy((*(a1 + 72) + 8 * *(a1 + 80)), *(a2 + 72), 8 * *(a2 + 80));
    *(a1 + 80) += *(a2 + 80);
  }

  v8 = *(a2 + 104);
  if (v8)
  {
    sub_100077844((a1 + 96), *(a1 + 104) + v8);
    memcpy((*(a1 + 96) + 4 * *(a1 + 104)), *(a2 + 96), 4 * *(a2 + 104));
    *(a1 + 104) += *(a2 + 104);
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    sub_100077844((a1 + 128), *(a1 + 136) + v9);
    memcpy((*(a1 + 128) + 4 * *(a1 + 136)), *(a2 + 128), 4 * *(a2 + 136));
    *(a1 + 136) += *(a2 + 136);
  }

  v10 = *(a2 + 152);
  if (v10)
  {
    sub_100077844((a1 + 144), *(a1 + 152) + v10);
    memcpy((*(a1 + 144) + 4 * *(a1 + 152)), *(a2 + 144), 4 * *(a2 + 152));
    *(a1 + 152) += *(a2 + 152);
  }

  v11 = *(a2 + 168);
  if (v11)
  {
    sub_100077844((a1 + 160), *(a1 + 168) + v11);
    memcpy((*(a1 + 160) + 4 * *(a1 + 168)), *(a2 + 160), 4 * *(a2 + 168));
    *(a1 + 168) += *(a2 + 168);
  }

  v12 = *(a2 + 192);
  if (v12)
  {
    sub_100077844((a1 + 184), *(a1 + 192) + v12);
    memcpy((*(a1 + 184) + 4 * *(a1 + 192)), *(a2 + 184), 4 * *(a2 + 192));
    *(a1 + 192) += *(a2 + 192);
  }

  v13 = *(a2 + 208);
  if (v13)
  {
    sub_100077844((a1 + 200), *(a1 + 208) + v13);
    memcpy((*(a1 + 200) + 4 * *(a1 + 208)), *(a2 + 200), 4 * *(a2 + 208));
    *(a1 + 208) += *(a2 + 208);
  }

  v14 = *(a2 + 224);
  if (v14)
  {
    sub_100077844((a1 + 216), *(a1 + 224) + v14);
    memcpy((*(a1 + 216) + 4 * *(a1 + 224)), *(a2 + 216), 4 * *(a2 + 224));
    *(a1 + 224) += *(a2 + 224);
  }

  v15 = *(a2 + 240);
  if (v15)
  {
    sub_100077844((a1 + 232), *(a1 + 240) + v15);
    memcpy((*(a1 + 232) + 4 * *(a1 + 240)), *(a2 + 232), 4 * *(a2 + 240));
    *(a1 + 240) += *(a2 + 240);
  }

  v16 = *(a2 + 256);
  if (v16)
  {
    sub_1000778F4((a1 + 248), *(a1 + 256) + v16);
    memcpy((*(a1 + 248) + 8 * *(a1 + 256)), *(a2 + 248), 8 * *(a2 + 256));
    *(a1 + 256) += *(a2 + 256);
  }

  v17 = *(a2 + 272);
  if (v17)
  {
    sub_1000778F4((a1 + 264), *(a1 + 272) + v17);
    memcpy((*(a1 + 264) + 8 * *(a1 + 272)), *(a2 + 264), 8 * *(a2 + 272));
    *(a1 + 272) += *(a2 + 272);
  }

  v18 = *(a2 + 284);
  if (v18)
  {
    if (v18)
    {
      v24 = *(a2 + 16);
      *(a1 + 284) |= 1u;
      *(a1 + 16) = v24;
      v18 = *(a2 + 284);
      if ((v18 & 0x20) == 0)
      {
LABEL_34:
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else if ((v18 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    v25 = *(a2 + 88);
    *(a1 + 284) |= 0x20u;
    *(a1 + 88) = v25;
    v18 = *(a2 + 284);
    if ((v18 & 0x80) != 0)
    {
LABEL_35:
      v19 = *(a2 + 112);
      *(a1 + 284) |= 0x80u;
      *(a1 + 112) = v19;
      v18 = *(a2 + 284);
    }
  }

LABEL_36:
  if ((v18 & 0xFF00) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      v20 = *(a2 + 120);
      *(a1 + 284) |= 0x100u;
      v21 = *(a1 + 120);
      if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v21, v20);
      v18 = *(a2 + 284);
    }

    if ((v18 & 0x1000) != 0)
    {
      v22 = *(a2 + 176);
      *(a1 + 284) |= 0x1000u;
      *(a1 + 176) = v22;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000712C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000712D8(void *a1)
{
  *a1 = off_10098CD20;
  sub_10007143C(a1);
  if (a1[33])
  {
    operator delete[]();
  }

  if (a1[31])
  {
    operator delete[]();
  }

  if (a1[29])
  {
    operator delete[]();
  }

  if (a1[27])
  {
    operator delete[]();
  }

  if (a1[25])
  {
    operator delete[]();
  }

  if (a1[23])
  {
    operator delete[]();
  }

  if (a1[20])
  {
    operator delete[]();
  }

  if (a1[18])
  {
    operator delete[]();
  }

  if (a1[16])
  {
    operator delete[]();
  }

  if (a1[12])
  {
    operator delete[]();
  }

  if (a1[9])
  {
    operator delete[]();
  }

  if (a1[7])
  {
    operator delete[]();
  }

  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[3])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_10007143C(uint64_t result)
{
  v1 = *(result + 120);
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

void sub_1000714B4(void *a1)
{
  sub_1000712D8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100071558(uint64_t a1)
{
  v1 = *(a1 + 284);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 88) = 0;
    *(a1 + 112) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v2 = *(a1 + 120);
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

    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  *(result + 18) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 40) = 0;
  *(result + 46) = 0;
  *(result + 50) = 0;
  *(result + 54) = 0;
  *(result + 58) = 0;
  *(result + 62) = 0;
  *(result + 66) = 0;
  *(result + 69) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100071600(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
LABEL_1:
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v9 = *(this + 1);
        v10 = *(this + 2);
        if (v9 >= v10 || (v11 = *v9, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v11;
          v12 = v9 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 284) |= 1u;
        if (v12 >= v10 || *v12 != 21)
        {
          continue;
        }

        goto LABEL_92;
      case 2u:
        if (v8 == 2)
        {
          result = sub_100063628(this, a1 + 24);
          if (!result)
          {
            return result;
          }

          goto LABEL_109;
        }

        if (v8 != 5)
        {
LABEL_68:
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

        while (1)
        {
          v191[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v191) & 1) == 0)
          {
            return 0;
          }

          v27 = v191[0];
          v28 = *(a1 + 32);
          if (v28 == *(a1 + 36))
          {
            sub_100077844((a1 + 24), v28 + 1);
            v28 = *(a1 + 32);
          }

          v29 = *(a1 + 24);
          v30 = v28 + 1;
          *(a1 + 32) = v28 + 1;
          *(v29 + 4 * v28) = v27;
          v31 = *(this + 1);
          v32 = *(this + 4) - v31;
          if (v32 >= 1)
          {
            v33 = v32 / 5u;
            v34 = v33 >= *(a1 + 36) - v30 ? *(a1 + 36) - v30 : v33;
            if (v34 >= 1)
            {
              v35 = 0;
              while (*v31 == 21)
              {
                v36 = *(v31 + 1);
                if (v30 >= *(a1 + 36))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                  v30 = *(a1 + 32);
                  v29 = *(a1 + 24);
                }

                *(a1 + 32) = v30 + 1;
                *(v29 + 4 * v30) = v36;
                ++v35;
                v31 += 5;
                ++v30;
                if (v34 == v35)
                {
                  v35 = v34;
                  goto LABEL_108;
                }
              }

              if (!v35)
              {
                goto LABEL_109;
              }

LABEL_108:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v35);
            }
          }

LABEL_109:
          v12 = *(this + 1);
          if (v12 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v37 = *v12;
          if (v37 != 21)
          {
            break;
          }

LABEL_92:
          *(this + 1) = v12 + 1;
        }

        if (v37 != 25)
        {
          continue;
        }

LABEL_112:
        *(this + 1) = v12 + 1;
LABEL_113:
        *v191 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v191))
        {
          v38 = *v191;
          v39 = *(a1 + 48);
          if (v39 == *(a1 + 52))
          {
            sub_1000778F4((a1 + 40), v39 + 1);
            v39 = *(a1 + 48);
          }

          v40 = *(a1 + 40);
          v41 = v39 + 1;
          *(a1 + 48) = v39 + 1;
          *(v40 + 8 * v39) = v38;
          v42 = *(this + 1);
          v43 = *(this + 4) - v42;
          if (v43 >= 1)
          {
            v44 = v43 / 9u;
            v45 = v44 >= *(a1 + 52) - v41 ? *(a1 + 52) - v41 : v44;
            if (v45 >= 1)
            {
              v46 = 0;
              while (*v42 == 25)
              {
                v47 = *(v42 + 1);
                if (v41 >= *(a1 + 52))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                  v41 = *(a1 + 48);
                  v40 = *(a1 + 40);
                }

                *(a1 + 48) = v41 + 1;
                *(v40 + 8 * v41) = v47;
                ++v46;
                v42 += 9;
                ++v41;
                if (v45 == v46)
                {
                  v46 = v45;
                  goto LABEL_128;
                }
              }

              if (!v46)
              {
                goto LABEL_129;
              }

LABEL_128:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v46);
            }
          }

LABEL_129:
          v12 = *(this + 1);
          v25 = *(this + 2);
          if (v12 >= v25)
          {
            continue;
          }

          v48 = *v12;
          if (v48 == 25)
          {
            goto LABEL_112;
          }

          if (v48 == 32)
          {
            for (i = v12 + 1; ; i = (v59 + 1))
            {
              *(this + 1) = i;
LABEL_133:
              v191[0] = 0;
              if (i >= v25 || (v49 = *i, (v49 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                if (!result)
                {
                  return result;
                }

                v49 = v191[0];
              }

              else
              {
                *(this + 1) = i + 1;
              }

              v50 = *(a1 + 64);
              if (v50 == *(a1 + 68))
              {
                sub_100077844((a1 + 56), v50 + 1);
                v50 = *(a1 + 64);
              }

              v51 = *(a1 + 56);
              *(a1 + 64) = v50 + 1;
              *(v51 + 4 * v50) = v49;
              v52 = *(a1 + 68) - *(a1 + 64);
              if (v52 >= 1)
              {
                v53 = v52 + 1;
                do
                {
                  v54 = *(this + 1);
                  v55 = *(this + 2);
                  if (v54 >= v55 || *v54 != 32)
                  {
                    break;
                  }

                  *(this + 1) = v54 + 1;
                  v191[0] = 0;
                  if ((v54 + 1) >= v55 || (v56 = v54[1], (v56 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                    if (!result)
                    {
                      return result;
                    }

                    v56 = v191[0];
                  }

                  else
                  {
                    *(this + 1) = v54 + 2;
                  }

                  v57 = *(a1 + 64);
                  if (v57 >= *(a1 + 68))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                    v57 = *(a1 + 64);
                  }

                  v58 = *(a1 + 56);
                  *(a1 + 64) = v57 + 1;
                  *(v58 + 4 * v57) = v56;
                  --v53;
                }

                while (v53 > 1);
              }

LABEL_152:
              v59 = *(this + 1);
              v25 = *(this + 2);
              if (v59 >= v25)
              {
                break;
              }

              v60 = *v59;
              if (v60 == 41)
              {
                while (1)
                {
                  *(this + 1) = v59 + 1;
LABEL_158:
                  *v191 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v191) & 1) == 0)
                  {
                    return 0;
                  }

                  v61 = *v191;
                  v62 = *(a1 + 80);
                  if (v62 == *(a1 + 84))
                  {
                    sub_1000778F4((a1 + 72), v62 + 1);
                    v62 = *(a1 + 80);
                  }

                  v63 = *(a1 + 72);
                  v64 = v62 + 1;
                  *(a1 + 80) = v62 + 1;
                  *(v63 + 8 * v62) = v61;
                  v65 = *(this + 1);
                  v66 = *(this + 4) - v65;
                  if (v66 >= 1)
                  {
                    v67 = v66 / 9u;
                    v68 = v67 >= *(a1 + 84) - v64 ? *(a1 + 84) - v64 : v67;
                    if (v68 >= 1)
                    {
                      v69 = 0;
                      while (*v65 == 41)
                      {
                        v70 = *(v65 + 1);
                        if (v64 >= *(a1 + 84))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                          v64 = *(a1 + 80);
                          v63 = *(a1 + 72);
                        }

                        *(a1 + 80) = v64 + 1;
                        *(v63 + 8 * v64) = v70;
                        ++v69;
                        v65 += 9;
                        ++v64;
                        if (v68 == v69)
                        {
                          v69 = v68;
                          goto LABEL_173;
                        }
                      }

                      if (!v69)
                      {
                        goto LABEL_174;
                      }

LABEL_173:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v69);
                    }
                  }

LABEL_174:
                  v59 = *(this + 1);
                  v18 = *(this + 2);
                  if (v59 >= v18)
                  {
                    goto LABEL_1;
                  }

                  v71 = *v59;
                  if (v71 != 41)
                  {
                    if (v71 == 48)
                    {
                      v19 = (v59 + 1);
                      *(this + 1) = v59 + 1;
LABEL_178:
                      if (v19 >= v18 || (v72 = *v19, v72 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 88));
                        if (!result)
                        {
                          return result;
                        }

                        v73 = *(this + 1);
                        v18 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 88) = v72;
                        v73 = v19 + 1;
                        *(this + 1) = v73;
                      }

                      *(a1 + 284) |= 0x20u;
                      if (v73 < v18 && *v73 == 61)
                      {
                        while (1)
                        {
                          *(this + 1) = v73 + 1;
LABEL_186:
                          v191[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v191) & 1) == 0)
                          {
                            return 0;
                          }

                          v74 = v191[0];
                          v75 = *(a1 + 104);
                          if (v75 == *(a1 + 108))
                          {
                            sub_100077844((a1 + 96), v75 + 1);
                            v75 = *(a1 + 104);
                          }

                          v76 = *(a1 + 96);
                          v77 = v75 + 1;
                          *(a1 + 104) = v75 + 1;
                          *(v76 + 4 * v75) = v74;
                          v78 = *(this + 1);
                          v79 = *(this + 4) - v78;
                          if (v79 >= 1)
                          {
                            v80 = v79 / 5u;
                            v81 = v80 >= *(a1 + 108) - v77 ? *(a1 + 108) - v77 : v80;
                            if (v81 >= 1)
                            {
                              v82 = 0;
                              while (*v78 == 61)
                              {
                                v83 = *(v78 + 1);
                                if (v77 >= *(a1 + 108))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                  v77 = *(a1 + 104);
                                  v76 = *(a1 + 96);
                                }

                                *(a1 + 104) = v77 + 1;
                                *(v76 + 4 * v77) = v83;
                                ++v82;
                                v78 += 5;
                                ++v77;
                                if (v81 == v82)
                                {
                                  v82 = v81;
                                  goto LABEL_201;
                                }
                              }

                              if (!v82)
                              {
                                goto LABEL_202;
                              }

LABEL_201:
                              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v82);
                            }
                          }

LABEL_202:
                          v73 = *(this + 1);
                          v16 = *(this + 2);
                          if (v73 >= v16)
                          {
                            break;
                          }

                          v84 = *v73;
                          if (v84 != 61)
                          {
                            if (v84 == 64)
                            {
                              v17 = v73 + 1;
                              *(this + 1) = v17;
LABEL_206:
                              if (v17 >= v16 || (v85 = *v17, v85 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 112));
                                if (!result)
                                {
                                  return result;
                                }

                                v86 = *(this + 1);
                                v16 = *(this + 2);
                              }

                              else
                              {
                                *(a1 + 112) = v85;
                                v86 = v17 + 1;
                                *(this + 1) = v86;
                              }

                              v20 = *(a1 + 284) | 0x80;
                              *(a1 + 284) = v20;
                              if (v86 < v16 && *v86 == 74)
                              {
                                *(this + 1) = v86 + 1;
LABEL_214:
                                *(a1 + 284) = v20 | 0x100;
                                if (*(a1 + 120) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                                {
                                  operator new();
                                }

                                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                                if (!result)
                                {
                                  return result;
                                }

                                v87 = *(this + 1);
                                v22 = *(this + 2);
                                if (v87 < v22 && *v87 == 80)
                                {
                                  for (j = v87 + 1; ; j = (v98 + 1))
                                  {
                                    *(this + 1) = j;
LABEL_220:
                                    v191[0] = 0;
                                    if (j >= v22 || (v88 = *j, (v88 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v88 = v191[0];
                                    }

                                    else
                                    {
                                      *(this + 1) = j + 1;
                                    }

                                    v89 = *(a1 + 136);
                                    if (v89 == *(a1 + 140))
                                    {
                                      sub_100077844((a1 + 128), v89 + 1);
                                      v89 = *(a1 + 136);
                                    }

                                    v90 = *(a1 + 128);
                                    *(a1 + 136) = v89 + 1;
                                    *(v90 + 4 * v89) = v88;
                                    v91 = *(a1 + 140) - *(a1 + 136);
                                    if (v91 >= 1)
                                    {
                                      v92 = v91 + 1;
                                      do
                                      {
                                        v93 = *(this + 1);
                                        v94 = *(this + 2);
                                        if (v93 >= v94 || *v93 != 80)
                                        {
                                          break;
                                        }

                                        *(this + 1) = v93 + 1;
                                        v191[0] = 0;
                                        if ((v93 + 1) >= v94 || (v95 = v93[1], (v95 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v95 = v191[0];
                                        }

                                        else
                                        {
                                          *(this + 1) = v93 + 2;
                                        }

                                        v96 = *(a1 + 136);
                                        if (v96 >= *(a1 + 140))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                          v96 = *(a1 + 136);
                                        }

                                        v97 = *(a1 + 128);
                                        *(a1 + 136) = v96 + 1;
                                        *(v97 + 4 * v96) = v95;
                                        --v92;
                                      }

                                      while (v92 > 1);
                                    }

LABEL_239:
                                    v98 = *(this + 1);
                                    v22 = *(this + 2);
                                    if (v98 >= v22)
                                    {
                                      break;
                                    }

                                    v99 = *v98;
                                    if (v99 == 93)
                                    {
                                      while (1)
                                      {
                                        *(this + 1) = v98 + 1;
LABEL_245:
                                        v191[0] = 0;
                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v191) & 1) == 0)
                                        {
                                          return 0;
                                        }

                                        v100 = v191[0];
                                        v101 = *(a1 + 152);
                                        if (v101 == *(a1 + 156))
                                        {
                                          sub_100077844((a1 + 144), v101 + 1);
                                          v101 = *(a1 + 152);
                                        }

                                        v102 = *(a1 + 144);
                                        v103 = v101 + 1;
                                        *(a1 + 152) = v101 + 1;
                                        *(v102 + 4 * v101) = v100;
                                        v104 = *(this + 1);
                                        v105 = *(this + 4) - v104;
                                        if (v105 >= 1)
                                        {
                                          v106 = v105 / 5u;
                                          v107 = v106 >= *(a1 + 156) - v103 ? *(a1 + 156) - v103 : v106;
                                          if (v107 >= 1)
                                          {
                                            v108 = 0;
                                            while (*v104 == 93)
                                            {
                                              v109 = *(v104 + 1);
                                              if (v103 >= *(a1 + 156))
                                              {
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                v103 = *(a1 + 152);
                                                v102 = *(a1 + 144);
                                              }

                                              *(a1 + 152) = v103 + 1;
                                              *(v102 + 4 * v103) = v109;
                                              ++v108;
                                              v104 += 5;
                                              ++v103;
                                              if (v107 == v108)
                                              {
                                                v108 = v107;
                                                goto LABEL_260;
                                              }
                                            }

                                            if (!v108)
                                            {
                                              goto LABEL_261;
                                            }

LABEL_260:
                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v108);
                                          }
                                        }

LABEL_261:
                                        v98 = *(this + 1);
                                        v15 = *(this + 2);
                                        if (v98 >= v15)
                                        {
                                          goto LABEL_1;
                                        }

                                        v110 = *v98;
                                        if (v110 != 93)
                                        {
                                          if (v110 == 96)
                                          {
                                            for (k = (v98 + 1); ; k = (v121 + 1))
                                            {
                                              *(this + 1) = k;
LABEL_265:
                                              v191[0] = 0;
                                              if (k >= v15 || (v111 = *k, (v111 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v111 = v191[0];
                                              }

                                              else
                                              {
                                                *(this + 1) = k + 1;
                                              }

                                              v112 = *(a1 + 168);
                                              if (v112 == *(a1 + 172))
                                              {
                                                sub_100077844((a1 + 160), v112 + 1);
                                                v112 = *(a1 + 168);
                                              }

                                              v113 = *(a1 + 160);
                                              *(a1 + 168) = v112 + 1;
                                              *(v113 + 4 * v112) = v111;
                                              v114 = *(a1 + 172) - *(a1 + 168);
                                              if (v114 >= 1)
                                              {
                                                v115 = v114 + 1;
                                                do
                                                {
                                                  v116 = *(this + 1);
                                                  v117 = *(this + 2);
                                                  if (v116 >= v117 || *v116 != 96)
                                                  {
                                                    break;
                                                  }

                                                  *(this + 1) = v116 + 1;
                                                  v191[0] = 0;
                                                  if ((v116 + 1) >= v117 || (v118 = v116[1], (v118 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v118 = v191[0];
                                                  }

                                                  else
                                                  {
                                                    *(this + 1) = v116 + 2;
                                                  }

                                                  v119 = *(a1 + 168);
                                                  if (v119 >= *(a1 + 172))
                                                  {
                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                    v119 = *(a1 + 168);
                                                  }

                                                  v120 = *(a1 + 160);
                                                  *(a1 + 168) = v119 + 1;
                                                  *(v120 + 4 * v119) = v118;
                                                  --v115;
                                                }

                                                while (v115 > 1);
                                              }

LABEL_284:
                                              v121 = *(this + 1);
                                              v15 = *(this + 2);
                                              if (v121 >= v15)
                                              {
                                                break;
                                              }

                                              v122 = *v121;
                                              if (v122 == 104)
                                              {
                                                v14 = (v121 + 1);
                                                *(this + 1) = v14;
LABEL_290:
                                                if (v14 >= v15 || (v123 = *v14, v123 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 176));
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v124 = *(this + 1);
                                                  v15 = *(this + 2);
                                                }

                                                else
                                                {
                                                  *(a1 + 176) = v123;
                                                  v124 = (v14 + 1);
                                                  *(this + 1) = v124;
                                                }

                                                *(a1 + 284) |= 0x1000u;
                                                if (v124 < v15)
                                                {
                                                  v125 = *v124;
                                                  while (v125 == 112)
                                                  {
                                                    v26 = (v124 + 1);
                                                    *(this + 1) = v26;
LABEL_299:
                                                    v191[0] = 0;
                                                    if (v26 >= v15 || (v126 = *v26, (v126 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v126 = v191[0];
                                                    }

                                                    else
                                                    {
                                                      *(this + 1) = v26 + 1;
                                                    }

                                                    v127 = *(a1 + 192);
                                                    if (v127 == *(a1 + 196))
                                                    {
                                                      sub_100077844((a1 + 184), v127 + 1);
                                                      v127 = *(a1 + 192);
                                                    }

                                                    v128 = *(a1 + 184);
                                                    *(a1 + 192) = v127 + 1;
                                                    *(v128 + 4 * v127) = v126;
                                                    v129 = *(a1 + 196) - *(a1 + 192);
                                                    if (v129 >= 1)
                                                    {
                                                      v130 = v129 + 1;
                                                      do
                                                      {
                                                        v131 = *(this + 1);
                                                        v132 = *(this + 2);
                                                        if (v131 >= v132 || *v131 != 112)
                                                        {
                                                          break;
                                                        }

                                                        *(this + 1) = v131 + 1;
                                                        v191[0] = 0;
                                                        if ((v131 + 1) >= v132 || (v133 = v131[1], (v133 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v191);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v133 = v191[0];
                                                        }

                                                        else
                                                        {
                                                          *(this + 1) = v131 + 2;
                                                        }

                                                        v134 = *(a1 + 192);
                                                        if (v134 >= *(a1 + 196))
                                                        {
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                          v134 = *(a1 + 192);
                                                        }

                                                        v135 = *(a1 + 184);
                                                        *(a1 + 192) = v134 + 1;
                                                        *(v135 + 4 * v134) = v133;
                                                        --v130;
                                                      }

                                                      while (v130 > 1);
                                                    }

LABEL_318:
                                                    v124 = *(this + 1);
                                                    v15 = *(this + 2);
                                                    if (v124 >= v15)
                                                    {
                                                      break;
                                                    }

                                                    v125 = *v124;
                                                    if (v125 == 125)
                                                    {
                                                      do
                                                      {
                                                        *(this + 1) = v124 + 1;
LABEL_321:
                                                        v191[0] = 0;
                                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v191) & 1) == 0)
                                                        {
                                                          return 0;
                                                        }

                                                        v136 = v191[0];
                                                        v137 = *(a1 + 208);
                                                        if (v137 == *(a1 + 212))
                                                        {
                                                          sub_100077844((a1 + 200), v137 + 1);
                                                          v137 = *(a1 + 208);
                                                        }

                                                        v138 = *(a1 + 200);
                                                        v139 = v137 + 1;
                                                        *(a1 + 208) = v137 + 1;
                                                        *(v138 + 4 * v137) = v136;
                                                        v140 = *(this + 1);
                                                        v141 = *(this + 4) - v140;
                                                        if (v141 >= 1)
                                                        {
                                                          v142 = v141 / 5u;
                                                          v143 = v142 >= *(a1 + 212) - v139 ? *(a1 + 212) - v139 : v142;
                                                          if (v143 >= 1)
                                                          {
                                                            v144 = 0;
                                                            while (*v140 == 125)
                                                            {
                                                              v145 = *(v140 + 1);
                                                              if (v139 >= *(a1 + 212))
                                                              {
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                v139 = *(a1 + 208);
                                                                v138 = *(a1 + 200);
                                                              }

                                                              *(a1 + 208) = v139 + 1;
                                                              *(v138 + 4 * v139) = v145;
                                                              ++v144;
                                                              v140 += 5;
                                                              ++v139;
                                                              if (v143 == v144)
                                                              {
                                                                v144 = v143;
                                                                goto LABEL_336;
                                                              }
                                                            }

                                                            if (!v144)
                                                            {
                                                              goto LABEL_337;
                                                            }

LABEL_336:
                                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 5 * v144);
                                                          }
                                                        }

LABEL_337:
                                                        v124 = *(this + 1);
                                                        v146 = *(this + 2);
                                                      }

                                                      while (v124 < v146 && *v124 == 125);
                                                      if (v146 - v124 >= 2 && *v124 == 133 && v124[1] == 1)
                                                      {
                                                        while (1)
                                                        {
                                                          *(this + 1) = v124 + 2;
LABEL_343:
                                                          if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x85, TagFallback) != 2)
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                          }

                                                          v191[0] = 0;
                                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v191) & 1) == 0)
                                                          {
                                                            return 0;
                                                          }

                                                          v147 = v191[0];
                                                          v148 = *(a1 + 224);
                                                          if (v148 == *(a1 + 228))
                                                          {
                                                            sub_100077844((a1 + 216), v148 + 1);
                                                            v148 = *(a1 + 224);
                                                          }

                                                          v149 = *(a1 + 216);
                                                          v150 = v148 + 1;
                                                          *(a1 + 224) = v148 + 1;
                                                          *(v149 + 4 * v148) = v147;
                                                          v151 = *(this + 1);
                                                          v152 = *(this + 4) - v151;
                                                          if (v152 >= 1)
                                                          {
                                                            v153 = v152 / 6u;
                                                            v154 = v153 >= *(a1 + 228) - v150 ? *(a1 + 228) - v150 : v153;
                                                            if (v154 >= 1)
                                                            {
                                                              v155 = 0;
                                                              while (*v151 == 133 && v151[1] == 1)
                                                              {
                                                                v156 = *(v151 + 2);
                                                                if (v150 >= *(a1 + 228))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                  v150 = *(a1 + 224);
                                                                  v149 = *(a1 + 216);
                                                                }

                                                                *(a1 + 224) = v150 + 1;
                                                                *(v149 + 4 * v150) = v156;
                                                                ++v155;
                                                                v151 += 6;
                                                                ++v150;
                                                                if (v154 == v155)
                                                                {
                                                                  v155 = v154;
                                                                  goto LABEL_361;
                                                                }
                                                              }

                                                              if (!v155)
                                                              {
                                                                goto LABEL_362;
                                                              }

LABEL_361:
                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 6 * v155);
                                                            }
                                                          }

LABEL_362:
                                                          v124 = *(this + 1);
                                                          if (*(this + 4) - v124 <= 1)
                                                          {
                                                            break;
                                                          }

                                                          v157 = *v124;
                                                          if (v157 == 141)
                                                          {
                                                            if (v124[1] == 1)
                                                            {
                                                              while (1)
                                                              {
                                                                *(this + 1) = v124 + 2;
LABEL_369:
                                                                if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x8D, TagFallback) != 2)
                                                                {
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                }

                                                                v191[0] = 0;
                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v191) & 1) == 0)
                                                                {
                                                                  return 0;
                                                                }

                                                                v158 = v191[0];
                                                                v159 = *(a1 + 240);
                                                                if (v159 == *(a1 + 244))
                                                                {
                                                                  sub_100077844((a1 + 232), v159 + 1);
                                                                  v159 = *(a1 + 240);
                                                                }

                                                                v160 = *(a1 + 232);
                                                                v161 = v159 + 1;
                                                                *(a1 + 240) = v159 + 1;
                                                                *(v160 + 4 * v159) = v158;
                                                                v162 = *(this + 1);
                                                                v163 = *(this + 4) - v162;
                                                                if (v163 >= 1)
                                                                {
                                                                  v164 = v163 / 6u;
                                                                  v165 = v164 >= *(a1 + 244) - v161 ? *(a1 + 244) - v161 : v164;
                                                                  if (v165 >= 1)
                                                                  {
                                                                    v166 = 0;
                                                                    while (*v162 == 141 && v162[1] == 1)
                                                                    {
                                                                      v167 = *(v162 + 2);
                                                                      if (v161 >= *(a1 + 244))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                        v161 = *(a1 + 240);
                                                                        v160 = *(a1 + 232);
                                                                      }

                                                                      *(a1 + 240) = v161 + 1;
                                                                      *(v160 + 4 * v161) = v167;
                                                                      ++v166;
                                                                      v162 += 6;
                                                                      ++v161;
                                                                      if (v165 == v166)
                                                                      {
                                                                        v166 = v165;
                                                                        goto LABEL_387;
                                                                      }
                                                                    }

                                                                    if (!v166)
                                                                    {
                                                                      goto LABEL_388;
                                                                    }

LABEL_387:
                                                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 6 * v166);
                                                                  }
                                                                }

LABEL_388:
                                                                v124 = *(this + 1);
                                                                if (*(this + 4) - v124 <= 1)
                                                                {
                                                                  break;
                                                                }

                                                                v168 = *v124;
                                                                if (v168 == 145)
                                                                {
                                                                  if (v124[1] == 1)
                                                                  {
                                                                    while (1)
                                                                    {
                                                                      *(this + 1) = v124 + 2;
LABEL_395:
                                                                      if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x91, TagFallback) != 2)
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                      }

                                                                      *v191 = 0;
                                                                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v191) & 1) == 0)
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      v169 = *v191;
                                                                      v170 = *(a1 + 256);
                                                                      if (v170 == *(a1 + 260))
                                                                      {
                                                                        sub_1000778F4((a1 + 248), v170 + 1);
                                                                        v170 = *(a1 + 256);
                                                                      }

                                                                      v171 = *(a1 + 248);
                                                                      v172 = v170 + 1;
                                                                      *(a1 + 256) = v170 + 1;
                                                                      *(v171 + 8 * v170) = v169;
                                                                      v173 = *(this + 1);
                                                                      v174 = *(this + 4) - v173;
                                                                      if (v174 >= 1)
                                                                      {
                                                                        v175 = v174 / 0xAu;
                                                                        v176 = v175 >= *(a1 + 260) - v172 ? *(a1 + 260) - v172 : v175;
                                                                        if (v176 >= 1)
                                                                        {
                                                                          v177 = 0;
                                                                          while (*v173 == 145 && v173[1] == 1)
                                                                          {
                                                                            v178 = *(v173 + 2);
                                                                            if (v172 >= *(a1 + 260))
                                                                            {
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                              v172 = *(a1 + 256);
                                                                              v171 = *(a1 + 248);
                                                                            }

                                                                            *(a1 + 256) = v172 + 1;
                                                                            *(v171 + 8 * v172) = v178;
                                                                            ++v177;
                                                                            v173 += 10;
                                                                            ++v172;
                                                                            if (v176 == v177)
                                                                            {
                                                                              v177 = v176;
                                                                              goto LABEL_413;
                                                                            }
                                                                          }

                                                                          if (!v177)
                                                                          {
                                                                            goto LABEL_414;
                                                                          }

LABEL_413:
                                                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 10 * v177);
                                                                        }
                                                                      }

LABEL_414:
                                                                      v124 = *(this + 1);
                                                                      if (*(this + 4) - v124 <= 1)
                                                                      {
                                                                        goto LABEL_1;
                                                                      }

                                                                      v179 = *v124;
                                                                      if (v179 == 153)
                                                                      {
                                                                        break;
                                                                      }

                                                                      if (v179 != 145 || v124[1] != 1)
                                                                      {
                                                                        goto LABEL_1;
                                                                      }
                                                                    }

                                                                    if (v124[1] == 1)
                                                                    {
                                                                      do
                                                                      {
                                                                        *(this + 1) = v124 + 2;
LABEL_421:
                                                                        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x99, TagFallback) != 2)
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                        }

                                                                        *v191 = 0;
                                                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v191) & 1) == 0)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        v180 = *v191;
                                                                        v181 = *(a1 + 272);
                                                                        if (v181 == *(a1 + 276))
                                                                        {
                                                                          sub_1000778F4((a1 + 264), v181 + 1);
                                                                          v181 = *(a1 + 272);
                                                                        }

                                                                        v182 = *(a1 + 264);
                                                                        v183 = v181 + 1;
                                                                        *(a1 + 272) = v181 + 1;
                                                                        *(v182 + 8 * v181) = v180;
                                                                        v184 = *(this + 1);
                                                                        v185 = *(this + 4) - v184;
                                                                        if (v185 >= 1)
                                                                        {
                                                                          v186 = v185 / 0xAu;
                                                                          v187 = v186 >= *(a1 + 276) - v183 ? *(a1 + 276) - v183 : v186;
                                                                          if (v187 >= 1)
                                                                          {
                                                                            v188 = 0;
                                                                            while (*v184 == 153 && v184[1] == 1)
                                                                            {
                                                                              v189 = *(v184 + 2);
                                                                              if (v183 >= *(a1 + 276))
                                                                              {
                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v191);
                                                                                v183 = *(a1 + 272);
                                                                                v182 = *(a1 + 264);
                                                                              }

                                                                              *(a1 + 272) = v183 + 1;
                                                                              *(v182 + 8 * v183) = v189;
                                                                              ++v188;
                                                                              v184 += 10;
                                                                              ++v183;
                                                                              if (v187 == v188)
                                                                              {
                                                                                v188 = v187;
                                                                                goto LABEL_439;
                                                                              }
                                                                            }

                                                                            if (!v188)
                                                                            {
                                                                              goto LABEL_440;
                                                                            }

LABEL_439:
                                                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 10 * v188);
                                                                          }
                                                                        }

LABEL_440:
                                                                        v124 = *(this + 1);
                                                                        v190 = *(this + 2);
                                                                      }

                                                                      while (v190 - v124 > 1 && *v124 == 153 && v124[1] == 1);
                                                                      if (v124 == v190 && (*(this + 11) || *(this + 6) == *(this + 10)))
                                                                      {
                                                                        *(this + 8) = 0;
                                                                        result = 1;
                                                                        *(this + 36) = 1;
                                                                        return result;
                                                                      }
                                                                    }
                                                                  }

                                                                  goto LABEL_1;
                                                                }

                                                                if (v168 != 141 || v124[1] != 1)
                                                                {
                                                                  goto LABEL_1;
                                                                }
                                                              }
                                                            }

                                                            goto LABEL_1;
                                                          }

                                                          if (v157 != 133 || v124[1] != 1)
                                                          {
                                                            goto LABEL_1;
                                                          }
                                                        }
                                                      }

                                                      goto LABEL_1;
                                                    }
                                                  }
                                                }

                                                goto LABEL_1;
                                              }

                                              if (v122 != 96)
                                              {
                                                goto LABEL_1;
                                              }
                                            }
                                          }

                                          goto LABEL_1;
                                        }
                                      }
                                    }

                                    if (v99 != 80)
                                    {
                                      goto LABEL_1;
                                    }
                                  }
                                }
                              }
                            }

                            goto LABEL_1;
                          }
                        }
                      }
                    }

                    goto LABEL_1;
                  }
                }
              }

              if (v60 != 32)
              {
                goto LABEL_1;
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v8 == 1)
        {
          goto LABEL_113;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100063F88(this, a1 + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_129;
      case 4u:
        if ((TagFallback & 7) == 0)
        {
          i = *(this + 1);
          v25 = *(this + 2);
          goto LABEL_133;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100072F98(this, a1 + 56);
        if (!result)
        {
          return result;
        }

        goto LABEL_152;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_158;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100063F88(this, a1 + 72);
        if (!result)
        {
          return result;
        }

        goto LABEL_174;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_178;
      case 7u:
        if (v8 == 2)
        {
          result = sub_100063628(this, a1 + 96);
          if (!result)
          {
            return result;
          }

          goto LABEL_202;
        }

        if (v8 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_186;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_206;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_68;
        }

        v20 = *(a1 + 284);
        goto LABEL_214;
      case 0xAu:
        if ((TagFallback & 7) == 0)
        {
          j = *(this + 1);
          v22 = *(this + 2);
          goto LABEL_220;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100072F98(this, a1 + 128);
        if (!result)
        {
          return result;
        }

        goto LABEL_239;
      case 0xBu:
        if (v8 == 2)
        {
          result = sub_100063628(this, a1 + 144);
          if (!result)
          {
            return result;
          }

          goto LABEL_261;
        }

        if (v8 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_245;
      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          k = *(this + 1);
          v15 = *(this + 2);
          goto LABEL_265;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100072F98(this, a1 + 160);
        if (!result)
        {
          return result;
        }

        goto LABEL_284;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v14 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_290;
      case 0xEu:
        if ((TagFallback & 7) == 0)
        {
          v26 = *(this + 1);
          v15 = *(this + 2);
          goto LABEL_299;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100072F98(this, a1 + 184);
        if (!result)
        {
          return result;
        }

        goto LABEL_318;
      case 0xFu:
        if (v8 == 2)
        {
          result = sub_100063628(this, a1 + 200);
          if (!result)
          {
            return result;
          }

          goto LABEL_337;
        }

        if (v8 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_321;
      case 0x10u:
        if (v8 == 2)
        {
          result = sub_100063628(this, a1 + 216);
          if (!result)
          {
            return result;
          }

          goto LABEL_362;
        }

        if (v8 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_343;
      case 0x11u:
        if (v8 == 2)
        {
          result = sub_100063628(this, a1 + 232);
          if (!result)
          {
            return result;
          }

          goto LABEL_388;
        }

        if (v8 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_369;
      case 0x12u:
        if (v8 == 1)
        {
          goto LABEL_395;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100063F88(this, a1 + 248);
        if (!result)
        {
          return result;
        }

        goto LABEL_414;
      case 0x13u:
        if (v8 == 1)
        {
          goto LABEL_421;
        }

        if (v8 != 2)
        {
          goto LABEL_68;
        }

        result = sub_100063F88(this, a1 + 264);
        if (!result)
        {
          return result;
        }

        goto LABEL_440;
      default:
        goto LABEL_68;
    }
  }
}

void sub_100072EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072F98(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v12 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
    if (!result)
    {
      return result;
    }

    v5 = v12;
  }

  else
  {
    v12 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v13 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v9 = v13;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      v10 = *(a2 + 8);
      if (v10 == *(a2 + 12))
      {
        sub_100077844(a2, v10 + 1);
        v10 = *(a2 + 8);
      }

      v11 = *a2;
      *(a2 + 8) = v10 + 1;
      *(v11 + 4 * v10) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_1000730A8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 284))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(*(v5 + 24) + 4 * v6++), a3);
    }

    while (v6 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(*(v5 + 40) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(*(v5 + 56) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v5 + 72) + 8 * v9++), a3);
    }

    while (v9 < *(v5 + 80));
  }

  if ((*(v5 + 284) & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 88), a2, a4);
  }

  if (*(v5 + 104) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(*(v5 + 96) + 4 * v10++), a3);
    }

    while (v10 < *(v5 + 104));
  }

  v11 = *(v5 + 284);
  if ((v11 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 112), a2, a4);
    v11 = *(v5 + 284);
  }

  if ((v11 & 0x100) != 0)
  {
    v12 = *(v5 + 120);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, *(*(v5 + 144) + 4 * v14++), a3);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if ((*(v5 + 285) & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xD, *(v5 + 176), a2, a4);
  }

  if (*(v5 + 192) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(*(v5 + 184) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 192));
  }

  if (*(v5 + 208) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xF, a2, *(*(v5 + 200) + 4 * v17++), a3);
    }

    while (v17 < *(v5 + 208));
  }

  if (*(v5 + 224) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x10, a2, *(*(v5 + 216) + 4 * v18++), a3);
    }

    while (v18 < *(v5 + 224));
  }

  if (*(v5 + 240) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x11, a2, *(*(v5 + 232) + 4 * v19++), a3);
    }

    while (v19 < *(v5 + 240));
  }

  if (*(v5 + 256) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(*(v5 + 248) + 8 * v20++), a3);
    }

    while (v20 < *(v5 + 256));
  }

  if (*(v5 + 272) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(*(v5 + 264) + 8 * v21++), a3);
    }

    while (v21 < *(v5 + 272));
  }

  v24 = *(v5 + 8);
  v23 = (v5 + 8);
  v22 = v24;
  if (v24 && *v22 != v22[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v23, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100073460(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 284))
  {
    v6 = *(this + 2);
    *a2 = 8;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
  }

  if (*(this + 8) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 3) + 4 * v7);
      *v4 = 21;
      *(v4 + 1) = v8;
      v4 = (v4 + 5);
      ++v7;
    }

    while (v7 < *(this + 8));
  }

  if (*(this + 12) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 5) + 8 * v9);
      *v4 = 25;
      *(v4 + 1) = v10;
      v4 = (v4 + 9);
      ++v9;
    }

    while (v9 < *(this + 12));
  }

  if (*(this + 16) >= 1)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(*(this + 7) + 4 * v11);
      *v4 = 32;
      v13 = v4 + 1;
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      if (v12 > 0x7F)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v13, a3);
        goto LABEL_16;
      }

      *(v4 + 1) = v12;
      v4 = (v4 + 2);
LABEL_17:
      if (++v11 >= *(this + 16))
      {
        goto LABEL_18;
      }
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, v13, a3);
LABEL_16:
    v4 = v14;
    goto LABEL_17;
  }

LABEL_18:
  if (*(this + 20) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(this + 9) + 8 * v15);
      *v4 = 41;
      *(v4 + 1) = v16;
      v4 = (v4 + 9);
      ++v15;
    }

    while (v15 < *(this + 20));
  }

  if ((*(this + 284) & 0x20) != 0)
  {
    v17 = *(this + 11);
    *v4 = 48;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v4 + 1, a3);
  }

  if (*(this + 26) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(this + 12) + 4 * v18);
      *v4 = 61;
      *(v4 + 1) = v19;
      v4 = (v4 + 5);
      ++v18;
    }

    while (v18 < *(this + 26));
  }

  v20 = *(this + 71);
  if ((v20 & 0x80) != 0)
  {
    v21 = *(this + 14);
    *v4 = 64;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v4 + 1, a3);
    v20 = *(this + 71);
  }

  if ((v20 & 0x100) != 0)
  {
    v22 = *(this + 15);
    *v4 = 74;
    v23 = *(v22 + 23);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 > 0x7F)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v23;
      v24 = v4 + 2;
    }

    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = *v22;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v26, v27, v24, a4);
  }

  if (*(this + 34) >= 1)
  {
    v28 = 0;
    while (1)
    {
      v29 = *(*(this + 16) + 4 * v28);
      *v4 = 80;
      v30 = v4 + 1;
      if ((v29 & 0x80000000) != 0)
      {
        break;
      }

      if (v29 > 0x7F)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v30, a3);
        goto LABEL_48;
      }

      *(v4 + 1) = v29;
      v4 = (v4 + 2);
LABEL_49:
      if (++v28 >= *(this + 34))
      {
        goto LABEL_50;
      }
    }

    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v29, v30, a3);
LABEL_48:
    v4 = v31;
    goto LABEL_49;
  }

LABEL_50:
  if (*(this + 38) >= 1)
  {
    v32 = 0;
    do
    {
      v33 = *(*(this + 18) + 4 * v32);
      *v4 = 93;
      *(v4 + 1) = v33;
      v4 = (v4 + 5);
      ++v32;
    }

    while (v32 < *(this + 38));
  }

  if (*(this + 42) >= 1)
  {
    v34 = 0;
    while (1)
    {
      v35 = *(*(this + 20) + 4 * v34);
      *v4 = 96;
      v36 = v4 + 1;
      if ((v35 & 0x80000000) != 0)
      {
        break;
      }

      if (v35 > 0x7F)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, v36, a3);
        goto LABEL_60;
      }

      *(v4 + 1) = v35;
      v4 = (v4 + 2);
LABEL_61:
      if (++v34 >= *(this + 42))
      {
        goto LABEL_62;
      }
    }

    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v35, v36, a3);
LABEL_60:
    v4 = v37;
    goto LABEL_61;
  }

LABEL_62:
  if ((*(this + 285) & 0x10) != 0)
  {
    v38 = *(this + 22);
    *v4 = 104;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v38, v4 + 1, a3);
  }

  if (*(this + 48) >= 1)
  {
    v39 = 0;
    while (1)
    {
      v40 = *(*(this + 23) + 4 * v39);
      *v4 = 112;
      v41 = v4 + 1;
      if ((v40 & 0x80000000) != 0)
      {
        break;
      }

      if (v40 > 0x7F)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, v41, a3);
        goto LABEL_71;
      }

      *(v4 + 1) = v40;
      v4 = (v4 + 2);
LABEL_72:
      if (++v39 >= *(this + 48))
      {
        goto LABEL_73;
      }
    }

    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v40, v41, a3);
LABEL_71:
    v4 = v42;
    goto LABEL_72;
  }

LABEL_73:
  if (*(this + 52) >= 1)
  {
    v43 = 0;
    do
    {
      v44 = *(*(this + 25) + 4 * v43);
      *v4 = 125;
      *(v4 + 1) = v44;
      v4 = (v4 + 5);
      ++v43;
    }

    while (v43 < *(this + 52));
  }

  if (*(this + 56) >= 1)
  {
    v45 = 0;
    do
    {
      v46 = *(*(this + 27) + 4 * v45);
      *v4 = 389;
      *(v4 + 2) = v46;
      v4 = (v4 + 6);
      ++v45;
    }

    while (v45 < *(this + 56));
  }

  if (*(this + 60) >= 1)
  {
    v47 = 0;
    do
    {
      v48 = *(*(this + 29) + 4 * v47);
      *v4 = 397;
      *(v4 + 2) = v48;
      v4 = (v4 + 6);
      ++v47;
    }

    while (v47 < *(this + 60));
  }

  if (*(this + 64) >= 1)
  {
    v49 = 0;
    do
    {
      v50 = *(*(this + 31) + 8 * v49);
      *v4 = 401;
      *(v4 + 2) = v50;
      v4 = (v4 + 10);
      ++v49;
    }

    while (v49 < *(this + 64));
  }

  if (*(this + 68) >= 1)
  {
    v51 = 0;
    do
    {
      v52 = *(*(this + 33) + 8 * v51);
      *v4 = 409;
      *(v4 + 2) = v52;
      v4 = (v4 + 10);
      ++v51;
    }

    while (v51 < *(this + 68));
  }

  v55 = *(this + 1);
  v54 = (this + 8);
  v53 = v55;
  if (!v55 || *v53 == v53[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v54, v4, a3);
}

uint64_t sub_100073AC0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 284);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 284);
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((v3 & 0x20) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 88), a2) + 1;
    v3 = *(a1 + 284);
  }

LABEL_8:
  if ((v3 & 0x80) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 112), a2) + 1;
    v3 = *(a1 + 284);
  }

LABEL_10:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 = *(a1 + 120);
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
        v3 = *(a1 + 284);
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

      v4 += v10 + v6 + 1;
    }

    if ((v3 & 0x1000) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 176), a2) + 1;
    }
  }

  v38 = *(a1 + 32);
  v39 = *(a1 + 48);
  v40 = v4;
  v11 = *(a1 + 64);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 56) + 4 * v12);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 10;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
        v11 = *(a1 + 64);
      }

      else
      {
        v15 = 1;
      }

      v13 += v15;
      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(a1 + 104);
  v36 = *(a1 + 104);
  v37 = *(a1 + 80);
  v17 = *(a1 + 136);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(a1 + 128) + 4 * v18);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
        v17 = *(a1 + 136);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v22 = *(a1 + 152);
  v23 = *(a1 + 168);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(a1 + 160) + 4 * v24);
      if ((v26 & 0x80000000) != 0)
      {
        v27 = 10;
      }

      else if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
        v23 = *(a1 + 168);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v28 = *(a1 + 192);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(a1 + 184) + 4 * v29);
      if ((v31 & 0x80000000) != 0)
      {
        v32 = 10;
      }

      else if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
        v28 = *(a1 + 192);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  v33 = *(a1 + 8);
  v34 = v13 + v40 + v11 + v19 + 9 * (v37 + v39) + v17 + v25 + v23 + v30 + v28 + 5 * (v36 + v38 + v22 + *(a1 + 208)) + 6 * (*(a1 + 240) + *(a1 + 224)) + 10 * (*(a1 + 272) + *(a1 + 256));
  if (v33 && *v33 != v33[1])
  {
    v34 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), v36) + v34;
  }

  *(a1 + 280) = v34;
  return v34;
}

uint64_t sub_100073E04(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100070DA0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100073ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073EF0(uint64_t result, uint64_t a2)
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

uint64_t sub_100073F84()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED3B8;
}

void sub_100074018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10007402C(void *a1)
{
  *a1 = off_10098CDD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  return a1;
}

uint64_t sub_100074088(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100074104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007411C(uint64_t a1)
{
  *a1 = off_10098CDD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100074170(uint64_t a1)
{
  *a1 = off_10098CDD0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100074244(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 3) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100074258(int a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
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

    if (TagFallback)
    {
      v8 = (TagFallback & 7) == 4;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
  }

  while (!v8 && (wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return v9;
}

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_1000742E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    if (*v4 != v4[1])
    {
      return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000742FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5 || *v4 == v4[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v3, a2, a3);
  }
}

uint64_t sub_10007431C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5 || *v4 == v4[1])
  {
    result = 0;
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2);
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100074360(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100074088(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100074434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007444C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000744E0()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED3C8;
}

void sub_100074574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074588(uint64_t a1)
{
  *a1 = off_10098CE80;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 76) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000745F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 80);
      if (v5 >= 4)
      {
        sub_10049D6C4();
      }

      *(a1 + 88) |= 1u;
      *(a1 + 80) = v5;
      v4 = *(a2 + 88);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 88) |= 2u;
      v6 = *(a1 + 16);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 16);
      if (!v7)
      {
        v7 = *(qword_1009F98C8 + 16);
      }

      sub_100063B00(v6, v7);
      v4 = *(a2 + 88);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 88) |= 4u;
      v8 = *(a1 + 24);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 24);
      if (!v9)
      {
        v9 = *(qword_1009F98C8 + 24);
      }

      sub_100063B00(v8, v9);
      v4 = *(a2 + 88);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 88) |= 8u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 32);
      if (!v11)
      {
        v11 = *(qword_1009F98C8 + 32);
      }

      sub_100063B00(v10, v11);
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x10) != 0)
    {
      v12 = *(a2 + 40);
      *(a1 + 88) |= 0x10u;
      *(a1 + 40) = v12;
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 88) |= 0x20u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 48);
      if (!v14)
      {
        v14 = *(qword_1009F98C8 + 48);
      }

      sub_100064E4C(v13, v14);
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 88) |= 0x40u;
      v15 = *(a1 + 56);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 56);
      if (!v16)
      {
        v16 = *(qword_1009F98C8 + 56);
      }

      sub_100063B00(v15, v16);
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 88) |= 0x80u;
      v17 = *(a1 + 64);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 64);
      if (!v18)
      {
        v18 = *(qword_1009F98C8 + 64);
      }

      sub_100063B00(v17, v18);
      v4 = *(a2 + 88);
    }
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 88) |= 0x100u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 72);
    if (!v20)
    {
      v20 = *(qword_1009F98C8 + 72);
    }

    sub_100063B00(v19, v20);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000749A4(void *a1)
{
  *a1 = off_10098CE80;
  v2 = (a1 + 1);
  sub_100074A04(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100074A04(void *result)
{
  if (qword_1009F98C8 != result)
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

    v5 = v1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    result = v1[9];
    if (result)
    {
      v8 = *(*result + 8);

      return v8();
    }
  }

  return result;
}

void sub_100074B84(void *a1)
{
  sub_1000749A4(a1);

  operator delete();
}

uint64_t sub_100074C28(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 80) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        v3 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 88) & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        v4 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 88) & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        v5 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v5)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 40) = 0;
    v6 = *(v1 + 88);
    if ((v6 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_100065024(this);
        v6 = *(v1 + 88);
      }
    }

    if ((v6 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        v7 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v7)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 88) & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        v8 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v8)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  if (*(v1 + 89))
  {
    this = *(v1 + 72);
    if (this)
    {
      v9 = *(this + 8);
      this += 8;
      *(this + 16) = 0;
      *(this + 28) = 0;
      if (v9)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  v11 = *(v1 + 8);
  v10 = (v1 + 8);
  *(v10 + 20) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return this;
}

uint64_t sub_100074D6C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v8 == 5)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(this + 1);
            v13 = *(this + 2);
            goto LABEL_90;
          }

          if (v8 != 6 || v9 != 2)
          {
            goto LABEL_37;
          }

          v10 = *(a1 + 88);
LABEL_98:
          *(a1 + 88) = v10 | 0x20;
          v50 = *(a1 + 48);
          if (!v50)
          {
            operator new();
          }

          v89[0] = 0;
          v51 = *(this + 1);
          if (v51 >= *(this + 2) || *v51 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
            {
              return 0;
            }
          }

          else
          {
            v89[0] = *v51;
            *(this + 1) = v51 + 1;
          }

          v52 = *(this + 14);
          v53 = *(this + 15);
          *(this + 14) = v52 + 1;
          if (v52 >= v53)
          {
            return 0;
          }

          v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
          if (!sub_100065078(v50, this, v55, v56) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
          v57 = *(this + 14);
          v25 = __OFSUB__(v57, 1);
          v58 = v57 - 1;
          if (v58 < 0 == v25)
          {
            *(this + 14) = v58;
          }

          v59 = *(this + 1);
          if (v59 < *(this + 2) && *v59 == 58)
          {
            *(this + 1) = v59 + 1;
LABEL_112:
            *(a1 + 88) |= 0x40u;
            v60 = *(a1 + 56);
            if (!v60)
            {
              operator new();
            }

            v89[0] = 0;
            v61 = *(this + 1);
            if (v61 >= *(this + 2) || *v61 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
              {
                return 0;
              }
            }

            else
            {
              v89[0] = *v61;
              *(this + 1) = v61 + 1;
            }

            v62 = *(this + 14);
            v63 = *(this + 15);
            *(this + 14) = v62 + 1;
            if (v62 >= v63)
            {
              return 0;
            }

            v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
            if (!sub_100063D0C(v60, this, v65, v66) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
            v67 = *(this + 14);
            v25 = __OFSUB__(v67, 1);
            v68 = v67 - 1;
            if (v68 < 0 == v25)
            {
              *(this + 14) = v68;
            }

            v69 = *(this + 1);
            if (v69 < *(this + 2) && *v69 == 66)
            {
              *(this + 1) = v69 + 1;
              goto LABEL_126;
            }
          }
        }

        else
        {
          if (v8 == 7)
          {
            if (v9 != 2)
            {
              goto LABEL_37;
            }

            goto LABEL_112;
          }

          if (v8 == 8)
          {
            if (v9 != 2)
            {
              goto LABEL_37;
            }

LABEL_126:
            *(a1 + 88) |= 0x80u;
            v70 = *(a1 + 64);
            if (!v70)
            {
              operator new();
            }

            v89[0] = 0;
            v71 = *(this + 1);
            if (v71 >= *(this + 2) || *v71 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
              {
                return 0;
              }
            }

            else
            {
              v89[0] = *v71;
              *(this + 1) = v71 + 1;
            }

            v72 = *(this + 14);
            v73 = *(this + 15);
            *(this + 14) = v72 + 1;
            if (v72 >= v73)
            {
              return 0;
            }

            v74 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
            if (!sub_100063D0C(v70, this, v75, v76) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v74);
            v77 = *(this + 14);
            v25 = __OFSUB__(v77, 1);
            v78 = v77 - 1;
            if (v78 < 0 == v25)
            {
              *(this + 14) = v78;
            }

            v79 = *(this + 1);
            if (v79 < *(this + 2) && *v79 == 74)
            {
              *(this + 1) = v79 + 1;
              goto LABEL_140;
            }
          }

          else
          {
            if (v8 != 9 || v9 != 2)
            {
              goto LABEL_37;
            }

LABEL_140:
            *(a1 + 88) |= 0x100u;
            v80 = *(a1 + 72);
            if (!v80)
            {
              operator new();
            }

            v89[0] = 0;
            v81 = *(this + 1);
            if (v81 >= *(this + 2) || *v81 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
              {
                return 0;
              }
            }

            else
            {
              v89[0] = *v81;
              *(this + 1) = v81 + 1;
            }

            v82 = *(this + 14);
            v83 = *(this + 15);
            *(this + 14) = v82 + 1;
            if (v82 >= v83)
            {
              return 0;
            }

            v84 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
            if (!sub_100063D0C(v80, this, v85, v86) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v84);
            v87 = *(this + 14);
            v25 = __OFSUB__(v87, 1);
            v88 = v87 - 1;
            if (v88 < 0 == v25)
            {
              *(this + 14) = v88;
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

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v9 != 2)
          {
            goto LABEL_37;
          }

          goto LABEL_62;
        }

        if (v8 == 4 && v9 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_37;
      }

      if (v8 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v89[0] = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89);
        if (!result)
        {
          return result;
        }

        v12 = v89[0];
      }

      else
      {
        *(this + 1) = v11 + 1;
      }

      if (v12 > 3)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v12);
      }

      else
      {
        *(a1 + 88) |= 1u;
        *(a1 + 80) = v12;
      }

      v16 = *(this + 1);
      if (v16 < *(this + 2) && *v16 == 18)
      {
        *(this + 1) = v16 + 1;
LABEL_48:
        *(a1 + 88) |= 2u;
        v17 = *(a1 + 16);
        if (!v17)
        {
          operator new();
        }

        v89[0] = 0;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
          {
            return 0;
          }
        }

        else
        {
          v89[0] = *v18;
          *(this + 1) = v18 + 1;
        }

        v19 = *(this + 14);
        v20 = *(this + 15);
        *(this + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
        if (!sub_100063D0C(v17, this, v22, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
        v24 = *(this + 14);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          *(this + 1) = v27 + 1;
LABEL_62:
          *(a1 + 88) |= 4u;
          v28 = *(a1 + 24);
          if (!v28)
          {
            operator new();
          }

          v89[0] = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
            {
              return 0;
            }
          }

          else
          {
            v89[0] = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
          if (!sub_100063D0C(v28, this, v33, v34) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
          v35 = *(this + 14);
          v25 = __OFSUB__(v35, 1);
          v36 = v35 - 1;
          if (v36 < 0 == v25)
          {
            *(this + 14) = v36;
          }

          v37 = *(this + 1);
          if (v37 < *(this + 2) && *v37 == 34)
          {
            *(this + 1) = v37 + 1;
LABEL_76:
            *(a1 + 88) |= 8u;
            v38 = *(a1 + 32);
            if (!v38)
            {
              operator new();
            }

            v89[0] = 0;
            v39 = *(this + 1);
            if (v39 >= *(this + 2) || *v39 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v89))
              {
                return 0;
              }
            }

            else
            {
              v89[0] = *v39;
              *(this + 1) = v39 + 1;
            }

            v40 = *(this + 14);
            v41 = *(this + 15);
            *(this + 14) = v40 + 1;
            if (v40 >= v41)
            {
              return 0;
            }

            v42 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v89[0]);
            if (!sub_100063D0C(v38, this, v43, v44) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v42);
            v45 = *(this + 14);
            v25 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v25)
            {
              *(this + 14) = v46;
            }

            v47 = *(this + 1);
            v13 = *(this + 2);
            if (v47 < v13 && *v47 == 40)
            {
              v14 = v47 + 1;
              *(this + 1) = v14;
LABEL_90:
              *v89 = 0;
              if (v14 >= v13 || (v48 = *v14, v48 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v89);
                if (!result)
                {
                  return result;
                }

                v48 = *v89;
                v49 = *(this + 1);
                v13 = *(this + 2);
              }

              else
              {
                v49 = v14 + 1;
                *(this + 1) = v49;
              }

              *(a1 + 40) = v48;
              v10 = *(a1 + 88) | 0x10;
              *(a1 + 88) = v10;
              if (v49 < v13 && *v49 == 50)
              {
                *(this + 1) = v49 + 1;
                goto LABEL_98;
              }
            }
          }
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_48;
    }

LABEL_37:
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

uint64_t sub_10007564C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 80), a2, a4);
    v6 = *(v5 + 88);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_1009F98C8 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F98C8 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_1009F98C8 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v9, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_22:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(qword_1009F98C8 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v10, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_25:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_1009F98C8 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v11, a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_28:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(qword_1009F98C8 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v12, a2, a4);
  if ((*(v5 + 88) & 0x100) != 0)
  {
LABEL_31:
    v13 = *(v5 + 72);
    if (!v13)
    {
      v13 = *(qword_1009F98C8 + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v13, a2, a4);
  }

LABEL_34:
  v16 = *(v5 + 8);
  v15 = (v5 + 8);
  v14 = v16;
  if (v16 && *v14 != v14[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v15, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100075814(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 88))
  {
    v5 = *(this + 20);
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
  v8 = *(this + 22);
  if ((v8 & 2) != 0)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(qword_1009F98C8 + 16);
    }

    *v3 = 18;
    v10 = *(v9 + 32);
    if (v10 > 0x7F)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v10;
      v11 = v3 + 2;
    }

    v3 = sub_10006411C(v9, v11, a3);
    v8 = *(this + 22);
    if ((v8 & 4) == 0)
    {
LABEL_10:
      if ((v8 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 4) == 0)
  {
    goto LABEL_10;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(qword_1009F98C8 + 24);
  }

  *v3 = 26;
  v13 = *(v12 + 32);
  if (v13 > 0x7F)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v13;
    v14 = v3 + 2;
  }

  v3 = sub_10006411C(v12, v14, a3);
  v8 = *(this + 22);
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_29:
  v15 = *(this + 4);
  if (!v15)
  {
    v15 = *(qword_1009F98C8 + 32);
  }

  *v3 = 34;
  v16 = *(v15 + 32);
  if (v16 > 0x7F)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v16;
    v17 = v3 + 2;
  }

  v3 = sub_10006411C(v15, v17, a3);
  v8 = *(this + 22);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(this + 5);
  *v3 = 40;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v3 + 1, a3);
  v8 = *(this + 22);
  if ((v8 & 0x20) == 0)
  {
LABEL_13:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_36:
  v19 = *(this + 6);
  if (!v19)
  {
    v19 = *(qword_1009F98C8 + 48);
  }

  *v3 = 50;
  v20 = v19[10];
  if (v20 > 0x7F)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v20;
    v21 = (v3 + 2);
  }

  v3 = sub_1000652FC(v19, v21, a3);
  v8 = *(this + 22);
  if ((v8 & 0x40) == 0)
  {
LABEL_14:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_42:
  v22 = *(this + 7);
  if (!v22)
  {
    v22 = *(qword_1009F98C8 + 56);
  }

  *v3 = 58;
  v23 = *(v22 + 32);
  if (v23 > 0x7F)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v23;
    v24 = v3 + 2;
  }

  v3 = sub_10006411C(v22, v24, a3);
  v8 = *(this + 22);
  if ((v8 & 0x80) == 0)
  {
LABEL_15:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_54;
  }

LABEL_48:
  v25 = *(this + 8);
  if (!v25)
  {
    v25 = *(qword_1009F98C8 + 64);
  }

  *v3 = 66;
  v26 = *(v25 + 32);
  if (v26 > 0x7F)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v26;
    v27 = v3 + 2;
  }

  v3 = sub_10006411C(v25, v27, a3);
  if ((*(this + 22) & 0x100) != 0)
  {
LABEL_54:
    v28 = *(this + 9);
    if (!v28)
    {
      v28 = *(qword_1009F98C8 + 72);
    }

    *v3 = 74;
    v29 = *(v28 + 32);
    if (v29 > 0x7F)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v29;
      v30 = v3 + 2;
    }

    v3 = sub_10006411C(v28, v30, a3);
  }

LABEL_60:
  v33 = *(this + 1);
  v32 = (this + 8);
  v31 = v33;
  if (!v33 || *v31 == v31[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v32, v3, a3);
}

uint64_t sub_100075B40(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  if (v3)
  {
    v5 = *(a1 + 80);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 88);
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(qword_1009F98C8 + 16);
  }

  v7 = sub_1000641AC(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(a1 + 88);
LABEL_20:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 24);
    if (!v10)
    {
      v10 = *(qword_1009F98C8 + 24);
    }

    v11 = sub_1000641AC(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
    v3 = *(a1 + 88);
    if ((v3 & 8) == 0)
    {
LABEL_22:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_22;
  }

  v14 = *(a1 + 32);
  if (!v14)
  {
    v14 = *(qword_1009F98C8 + 32);
  }

  v15 = sub_1000641AC(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 1);
  v3 = *(a1 + 88);
  if ((v3 & 0x10) == 0)
  {
LABEL_23:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  v3 = *(a1 + 88);
  if ((v3 & 0x20) == 0)
  {
LABEL_24:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_41:
  v18 = *(a1 + 48);
  if (!v18)
  {
    v18 = *(qword_1009F98C8 + 48);
  }

  v19 = sub_1000653C8(v18, a2);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 1);
  v3 = *(a1 + 88);
  if ((v3 & 0x40) == 0)
  {
LABEL_25:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_47:
  v22 = *(a1 + 56);
  if (!v22)
  {
    v22 = *(qword_1009F98C8 + 56);
  }

  v23 = sub_1000641AC(v22, a2);
  v24 = v23;
  if (v23 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
  }

  else
  {
    v25 = 1;
  }

  v4 = (v4 + v24 + v25 + 1);
  v3 = *(a1 + 88);
  if ((v3 & 0x80) == 0)
  {
LABEL_26:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

LABEL_53:
  v26 = *(a1 + 64);
  if (!v26)
  {
    v26 = *(qword_1009F98C8 + 64);
  }

  v27 = sub_1000641AC(v26, a2);
  v28 = v27;
  if (v27 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
  }

  else
  {
    v29 = 1;
  }

  v4 = (v4 + v28 + v29 + 1);
  if ((*(a1 + 88) & 0x100) != 0)
  {
LABEL_59:
    v30 = *(a1 + 72);
    if (!v30)
    {
      v30 = *(qword_1009F98C8 + 72);
    }

    v31 = sub_1000641AC(v30, a2);
    v32 = v31;
    if (v31 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
    }

    else
    {
      v33 = 1;
    }

    v4 = (v4 + v32 + v33 + 1);
  }

LABEL_65:
  v34 = *(a1 + 8);
  if (v34 && *v34 != v34[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 84) = v4;
  return v4;
}

uint64_t sub_100075E14(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000745F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100075EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075F00(uint64_t result, uint64_t a2)
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

uint64_t sub_100075F94()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED3D8;
}

void sub_100076028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007603C(uint64_t a1)
{
  *a1 = off_10098CF30;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000760A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (v4)
  {
    if (*(a2 + 72))
    {
      *(a1 + 72) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F98D0 + 16);
      }

      sub_1000628A4(v5, v6);
      v4 = *(a2 + 72);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 72) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F98D0 + 24);
      }

      sub_10006F158(v7, v8);
      v4 = *(a2 + 72);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 72) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F98D0 + 32);
      }

      sub_100064E4C(v9, v10);
      v4 = *(a2 + 72);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 72) |= 8u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 40);
      if (!v12)
      {
        v12 = *(qword_1009F98D0 + 40);
      }

      sub_1000703AC(v11, v12);
      v4 = *(a2 + 72);
    }

    if ((v4 & 0x10) != 0)
    {
      v13 = *(a2 + 64);
      *(a1 + 72) |= 0x10u;
      *(a1 + 64) = v13;
      v4 = *(a2 + 72);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 72) |= 0x20u;
      v14 = *(a1 + 48);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 48);
      if (!v15)
      {
        v15 = *(qword_1009F98D0 + 48);
      }

      sub_100074088(v14, v15);
      v4 = *(a2 + 72);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 72) |= 0x40u;
      v16 = *(a1 + 56);
      if (!v16)
      {
        operator new();
      }

      v17 = *(a2 + 56);
      if (!v17)
      {
        v17 = *(qword_1009F98D0 + 56);
      }

      sub_1000745F0(v16, v17);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000763C8(void *a1)
{
  *a1 = off_10098CF30;
  v2 = (a1 + 1);
  sub_100076428(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100076428(void *result)
{
  if (qword_1009F98D0 != result)
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

    result = v1[7];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_10007657C(void *a1)
{
  sub_1000763C8(a1);

  operator delete();
}

uint64_t sub_100076620(uint64_t this)
{
  v1 = this;
  if (*(this + 72))
  {
    if (*(this + 72))
    {
      this = *(this + 16);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v2 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v2)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v3 = *(v1 + 72);
    if ((v3 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_10006F3C4(this);
        v3 = *(v1 + 72);
      }
    }

    if ((v3 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_100065024(this);
        v3 = *(v1 + 72);
      }
    }

    if ((v3 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_100070554(this);
        v3 = *(v1 + 72);
      }
    }

    *(v1 + 64) = 0;
    if ((v3 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        v4 = *(this + 8);
        this += 8;
        *(this + 12) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 72) & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_100074C28(this);
      }
    }
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 16) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_100076714(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_32;
            }

            *(a1 + 72) |= 1u;
            v10 = *(a1 + 16);
            if (!v10)
            {
              operator new();
            }

            v73 = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73))
              {
                return 0;
              }
            }

            else
            {
              v73 = *v11;
              *(this + 1) = v11 + 1;
            }

            v13 = *(this + 14);
            v14 = *(this + 15);
            *(this + 14) = v13 + 1;
            if (v13 >= v14)
            {
              return 0;
            }

            v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
            if (!sub_100062AE8(v10, this, v16, v17) || *(this + 36) != 1)
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
            if (v21 < *(this + 2) && *v21 == 18)
            {
              *(this + 1) = v21 + 1;
              goto LABEL_44;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || v9 != 2)
              {
                goto LABEL_32;
              }

              goto LABEL_58;
            }

            if (v9 != 2)
            {
              goto LABEL_32;
            }

LABEL_44:
            *(a1 + 72) |= 2u;
            v22 = *(a1 + 24);
            if (!v22)
            {
              operator new();
            }

            v73 = 0;
            v23 = *(this + 1);
            if (v23 >= *(this + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73))
              {
                return 0;
              }
            }

            else
            {
              v73 = *v23;
              *(this + 1) = v23 + 1;
            }

            v24 = *(this + 14);
            v25 = *(this + 15);
            *(this + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
            if (!sub_10006F43C(v22, this, v27, v28) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
            v29 = *(this + 14);
            v19 = __OFSUB__(v29, 1);
            v30 = v29 - 1;
            if (v30 < 0 == v19)
            {
              *(this + 14) = v30;
            }

            v31 = *(this + 1);
            if (v31 < *(this + 2) && *v31 == 26)
            {
              *(this + 1) = v31 + 1;
LABEL_58:
              *(a1 + 72) |= 4u;
              v32 = *(a1 + 32);
              if (!v32)
              {
                operator new();
              }

              v73 = 0;
              v33 = *(this + 1);
              if (v33 >= *(this + 2) || *v33 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73))
                {
                  return 0;
                }
              }

              else
              {
                v73 = *v33;
                *(this + 1) = v33 + 1;
              }

              v34 = *(this + 14);
              v35 = *(this + 15);
              *(this + 14) = v34 + 1;
              if (v34 >= v35)
              {
                return 0;
              }

              v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
              if (!sub_100065078(v32, this, v37, v38) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
              v39 = *(this + 14);
              v19 = __OFSUB__(v39, 1);
              v40 = v39 - 1;
              if (v40 < 0 == v19)
              {
                *(this + 14) = v40;
              }

              v41 = *(this + 1);
              if (v41 < *(this + 2) && *v41 == 34)
              {
                *(this + 1) = v41 + 1;
                goto LABEL_72;
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
          if (v9 != 2)
          {
            goto LABEL_32;
          }

          v12 = *(a1 + 72);
LABEL_90:
          *(a1 + 72) = v12 | 0x20;
          v53 = *(a1 + 48);
          if (!v53)
          {
            operator new();
          }

          v73 = 0;
          v54 = *(this + 1);
          if (v54 >= *(this + 2) || *v54 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73))
            {
              return 0;
            }
          }

          else
          {
            v73 = *v54;
            *(this + 1) = v54 + 1;
          }

          v55 = *(this + 14);
          v56 = *(this + 15);
          *(this + 14) = v55 + 1;
          if (v55 >= v56)
          {
            return 0;
          }

          v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
          if (!sub_100074258(v53, this, v58, v59) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v57);
          v60 = *(this + 14);
          v19 = __OFSUB__(v60, 1);
          v61 = v60 - 1;
          if (v61 < 0 == v19)
          {
            *(this + 14) = v61;
          }

          v62 = *(this + 1);
          if (v62 < *(this + 2) && *v62 == 58)
          {
            *(this + 1) = v62 + 1;
            goto LABEL_104;
          }
        }

        else
        {
          if (v8 != 7 || v9 != 2)
          {
            goto LABEL_32;
          }

LABEL_104:
          *(a1 + 72) |= 0x40u;
          v63 = *(a1 + 56);
          if (!v63)
          {
            operator new();
          }

          v73 = 0;
          v64 = *(this + 1);
          if (v64 >= *(this + 2) || *v64 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73))
            {
              return 0;
            }
          }

          else
          {
            v73 = *v64;
            *(this + 1) = v64 + 1;
          }

          v65 = *(this + 14);
          v66 = *(this + 15);
          *(this + 14) = v65 + 1;
          if (v65 >= v66)
          {
            return 0;
          }

          v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
          if (!sub_100074D6C(v63, this, v68, v69) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
          v70 = *(this + 14);
          v19 = __OFSUB__(v70, 1);
          v71 = v70 - 1;
          if (v71 < 0 == v19)
          {
            *(this + 14) = v71;
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

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_32;
      }

LABEL_72:
      *(a1 + 72) |= 8u;
      v42 = *(a1 + 40);
      if (!v42)
      {
        operator new();
      }

      v73 = 0;
      v43 = *(this + 1);
      if (v43 >= *(this + 2) || *v43 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v73))
        {
          return 0;
        }
      }

      else
      {
        v73 = *v43;
        *(this + 1) = v43 + 1;
      }

      v44 = *(this + 14);
      v45 = *(this + 15);
      *(this + 14) = v44 + 1;
      if (v44 >= v45)
      {
        return 0;
      }

      v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v73);
      if (!sub_1000705A8(v42, this, v47, v48) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
      v49 = *(this + 14);
      v19 = __OFSUB__(v49, 1);
      v50 = v49 - 1;
      if (v50 < 0 == v19)
      {
        *(this + 14) = v50;
      }

      v51 = *(this + 1);
      if (v51 < *(this + 2) && *v51 == 45)
      {
        *(this + 1) = v51 + 1;
LABEL_86:
        v73 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v73) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = v73;
        v12 = *(a1 + 72) | 0x10;
        *(a1 + 72) = v12;
        v52 = *(this + 1);
        if (v52 < *(this + 2) && *v52 == 50)
        {
          *(this + 1) = v52 + 1;
          goto LABEL_90;
        }
      }
    }

    if (v8 == 5 && v9 == 5)
    {
      goto LABEL_86;
    }

LABEL_32:
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

uint64_t sub_100076EA8(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F98D0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 72);
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

  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F98D0 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_1009F98D0 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 40);
  if (!v10)
  {
    v10 = *(qword_1009F98D0 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 64), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(qword_1009F98D0 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v11, a2, a4);
  if ((*(v5 + 72) & 0x40) != 0)
  {
LABEL_25:
    v12 = *(v5 + 56);
    if (!v12)
    {
      v12 = *(qword_1009F98D0 + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v12, a2, a4);
  }

LABEL_28:
  v15 = *(v5 + 8);
  v14 = (v5 + 8);
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v14, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100077028(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F98D0 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 40);
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = v3 + 2;
    }

    v3 = sub_100062D54(v6, v9, a3);
    v5 = *(this + 18);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    v10 = *(qword_1009F98D0 + 24);
  }

  *v3 = 18;
  v11 = v10[8];
  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v11;
    v12 = v3 + 2;
  }

  v3 = sub_10006F704(v10, v12, a3);
  v5 = *(this + 18);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_20:
  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(qword_1009F98D0 + 32);
  }

  *v3 = 26;
  v14 = v13[10];
  if (v14 > 0x7F)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v14;
    v15 = (v3 + 2);
  }

  v3 = sub_1000652FC(v13, v15, a3);
  v5 = *(this + 18);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_26:
  v16 = *(this + 5);
  if (!v16)
  {
    v16 = *(qword_1009F98D0 + 40);
  }

  *v3 = 34;
  v17 = v16[10];
  if (v17 > 0x7F)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v17;
    v18 = (v3 + 2);
  }

  v3 = sub_10007082C(v16, v18, a3);
  v5 = *(this + 18);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = *(this + 16);
  *v3 = 45;
  *(v3 + 1) = v19;
  v3 = (v3 + 5);
  if ((*(this + 18) & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  v20 = *(this + 6);
  if (!v20)
  {
    v20 = *(qword_1009F98D0 + 48);
  }

  *v3 = 50;
  v21 = *(v20 + 16);
  if (v21 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v21;
    v3 = (v3 + 2);
  }

  v24 = *(v20 + 8);
  v23 = (v20 + 8);
  v22 = v24;
  if (v24 && *v22 != v22[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, v3, a3);
  }

LABEL_41:
  if ((*(this + 72) & 0x40) != 0)
  {
    v25 = *(this + 7);
    if (!v25)
    {
      v25 = *(qword_1009F98D0 + 56);
    }

    *v3 = 58;
    v26 = v25[21];
    if (v26 > 0x7F)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v26;
      v27 = (v3 + 2);
    }

    v3 = sub_100075814(v25, v27, a3);
  }

  v30 = *(this + 1);
  v29 = (this + 8);
  v28 = v30;
  if (!v30 || *v28 == v28[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, v3, a3);
}

uint64_t sub_1000772E4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 72);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_53;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(qword_1009F98D0 + 16);
  }

  v7 = sub_100062E7C(v6, a2);
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
  v3 = *(a1 + 72);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 24);
    if (!v10)
    {
      v10 = *(qword_1009F98D0 + 24);
    }

    v11 = sub_10006F808(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(a1 + 72);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v14 = *(a1 + 32);
  if (!v14)
  {
    v14 = *(qword_1009F98D0 + 32);
  }

  v15 = sub_1000653C8(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 += v16 + v17 + 1;
  v3 = *(a1 + 72);
  if ((v3 & 8) != 0)
  {
LABEL_27:
    v18 = *(a1 + 40);
    if (!v18)
    {
      v18 = *(qword_1009F98D0 + 40);
    }

    v19 = sub_1000708F8(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    else
    {
      v21 = 1;
    }

    v4 += v20 + v21 + 1;
    v3 = *(a1 + 72);
  }

LABEL_33:
  if ((v3 & 0x10) != 0)
  {
    v5 = v4 + 5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v22 = *(a1 + 48);
    if (!v22)
    {
      v22 = *(qword_1009F98D0 + 48);
    }

    v23 = *(v22 + 8);
    if (!v23 || *v23 == v23[1])
    {
      v25 = 0;
      *(v22 + 16) = 0;
    }

    else
    {
      v24 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v22 + 8), a2);
      v25 = v24;
      *(v22 + 16) = v24;
      if (v24 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
LABEL_45:
        v5 = (v5 + v25 + v26 + 1);
        v3 = *(a1 + 72);
        goto LABEL_46;
      }
    }

    v26 = 1;
    goto LABEL_45;
  }

LABEL_46:
  if ((v3 & 0x40) != 0)
  {
    v27 = *(a1 + 56);
    if (!v27)
    {
      v27 = *(qword_1009F98D0 + 56);
    }

    v28 = sub_100075B40(v27, a2);
    v29 = v28;
    if (v28 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
    }

    else
    {
      v30 = 1;
    }

    v5 = (v5 + v29 + v30 + 1);
  }

LABEL_53:
  v31 = *(a1 + 8);
  if (v31 && *v31 != v31[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 68) = v5;
  return v5;
}

uint64_t sub_100077530(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000760A4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100077604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007761C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000776B0()
{
  v0 = qword_1009ED438;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006081C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED3E8;
}

void sub_100077744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100077844(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t *sub_1000778F4(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t sub_100077B98(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_100077C08(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

void sub_100077CB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_10007882C(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  v7 = 16;
  strcpy(__p, "CLPNearbyd.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  qword_1009ED440 = *(FileByName + 80);
  operator new();
}

void sub_10007882C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009ED5C0 & 1) == 0)
  {
    byte_1009ED5C0 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/CLPNearbyd.pb.cc", a4);
    sub_1000CE744(v4, v5, v6, v7);
    sub_1001523F0(v8, v9, v10, v11);
    sub_1000DF334(v12, v13, v14, v15);
    sub_1000F8CA0(v16, v17, v18, v19);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_10054BB00, 0x2BA3, v20);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100078D68()
{
  if (qword_1009F98D8)
  {
    (*(*qword_1009F98D8 + 8))(qword_1009F98D8);
  }

  if (qword_1009ED448)
  {
    (*(*qword_1009ED448 + 8))(qword_1009ED448);
  }

  if (qword_1009F98E0)
  {
    (*(*qword_1009F98E0 + 8))(qword_1009F98E0);
  }

  if (qword_1009ED458)
  {
    (*(*qword_1009ED458 + 8))(qword_1009ED458);
  }

  if (qword_1009F98E8)
  {
    (*(*qword_1009F98E8 + 8))(qword_1009F98E8);
  }

  if (qword_1009ED468)
  {
    (*(*qword_1009ED468 + 8))(qword_1009ED468);
  }

  if (qword_1009F98F0)
  {
    (*(*qword_1009F98F0 + 8))(qword_1009F98F0);
  }

  if (qword_1009ED478)
  {
    (*(*qword_1009ED478 + 8))(qword_1009ED478);
  }

  if (qword_1009F98F8)
  {
    (*(*qword_1009F98F8 + 8))(qword_1009F98F8);
  }

  if (qword_1009ED488)
  {
    (*(*qword_1009ED488 + 8))(qword_1009ED488);
  }

  if (qword_1009F9900)
  {
    (*(*qword_1009F9900 + 8))(qword_1009F9900);
  }

  if (qword_1009ED498)
  {
    (*(*qword_1009ED498 + 8))(qword_1009ED498);
  }

  if (qword_1009F9908)
  {
    (*(*qword_1009F9908 + 8))(qword_1009F9908);
  }

  if (qword_1009ED4A8)
  {
    (*(*qword_1009ED4A8 + 8))(qword_1009ED4A8);
  }

  if (qword_1009F9910)
  {
    (*(*qword_1009F9910 + 8))(qword_1009F9910);
  }

  if (qword_1009ED4B8)
  {
    (*(*qword_1009ED4B8 + 8))(qword_1009ED4B8);
  }

  if (qword_1009F9918)
  {
    (*(*qword_1009F9918 + 8))(qword_1009F9918);
  }

  if (qword_1009ED4C8)
  {
    (*(*qword_1009ED4C8 + 8))(qword_1009ED4C8);
  }

  if (qword_1009F9920)
  {
    (*(*qword_1009F9920 + 8))(qword_1009F9920);
  }

  if (qword_1009ED4D8)
  {
    (*(*qword_1009ED4D8 + 8))(qword_1009ED4D8);
  }

  if (qword_1009F9928)
  {
    (*(*qword_1009F9928 + 8))(qword_1009F9928);
  }

  if (qword_1009ED4E8)
  {
    (*(*qword_1009ED4E8 + 8))(qword_1009ED4E8);
  }

  if (qword_1009F9930)
  {
    (*(*qword_1009F9930 + 8))(qword_1009F9930);
  }

  if (qword_1009ED4F8)
  {
    (*(*qword_1009ED4F8 + 8))(qword_1009ED4F8);
  }

  if (qword_1009F9938)
  {
    (*(*qword_1009F9938 + 8))(qword_1009F9938);
  }

  if (qword_1009ED508)
  {
    (*(*qword_1009ED508 + 8))(qword_1009ED508);
  }

  if (qword_1009F9940)
  {
    (*(*qword_1009F9940 + 8))(qword_1009F9940);
  }

  if (qword_1009ED518)
  {
    (*(*qword_1009ED518 + 8))(qword_1009ED518);
  }

  if (qword_1009F9948)
  {
    (*(*qword_1009F9948 + 8))(qword_1009F9948);
  }

  if (qword_1009ED528)
  {
    (*(*qword_1009ED528 + 8))(qword_1009ED528);
  }

  if (qword_1009F9950)
  {
    (*(*qword_1009F9950 + 8))(qword_1009F9950);
  }

  if (qword_1009ED538)
  {
    (*(*qword_1009ED538 + 8))(qword_1009ED538);
  }

  if (qword_1009F9958)
  {
    (*(*qword_1009F9958 + 8))(qword_1009F9958);
  }

  if (qword_1009ED548)
  {
    (*(*qword_1009ED548 + 8))(qword_1009ED548);
  }

  if (qword_1009F9960)
  {
    (*(*qword_1009F9960 + 8))(qword_1009F9960);
  }

  if (qword_1009ED558)
  {
    (*(*qword_1009ED558 + 8))(qword_1009ED558);
  }

  if (qword_1009F9968)
  {
    (*(*qword_1009F9968 + 8))(qword_1009F9968);
  }

  if (qword_1009ED568)
  {
    (*(*qword_1009ED568 + 8))(qword_1009ED568);
  }

  if (qword_1009F9970)
  {
    (*(*qword_1009F9970 + 8))(qword_1009F9970);
  }

  if (qword_1009ED578)
  {
    (*(*qword_1009ED578 + 8))(qword_1009ED578);
  }

  if (qword_1009F9978)
  {
    (*(*qword_1009F9978 + 8))(qword_1009F9978);
  }

  result = qword_1009ED588;
  if (qword_1009ED588)
  {
    v1 = *(*qword_1009ED588 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100079570()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v22[1] = sub_100077CB0;
    v23 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v22);
  }

  if (!qword_1009F98D8)
  {
    (sub_10007882C)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F98E0)
  {
    sub_10007882C(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F98E8)
  {
    sub_10007882C(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F98F0)
  {
    sub_10007882C(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F98F8)
  {
    sub_10007882C(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9900)
  {
    sub_10007882C(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9908)
  {
    sub_10007882C(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9910)
  {
    sub_10007882C(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9918)
  {
    sub_10007882C(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9920)
  {
    sub_10007882C(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9928)
  {
    sub_10007882C(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9930)
  {
    sub_10007882C(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9938)
  {
    sub_10007882C(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9940)
  {
    sub_10007882C(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9948)
  {
    sub_10007882C(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9950)
  {
    sub_10007882C(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9958)
  {
    sub_10007882C(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9960)
  {
    sub_10007882C(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9968)
  {
    sub_10007882C(v18);
  }

  v19 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9970)
  {
    sub_10007882C(v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9978)
  {
    sub_10007882C(v20);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000798E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007993C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v5 = qword_1009F98E8;
  if (!qword_1009F98E8)
  {
    a1 = sub_10007882C(a1);
    v5 = qword_1009F98E8;
  }

  v4[2] = v5;
  v6 = sub_1000D0228(a1, a2, a3, a4);
  v4[3] = v6;
  v10 = sub_1000D138C(v6, v7, v8, v9);
  v4[4] = v10;
  v14 = sub_1000D1C9C(v10, v11, v12, v13);
  v4[5] = v14;
  v18 = sub_100153644(v14, v15, v16, v17);
  v4[6] = v18;
  v22 = qword_1009F98F0;
  if (!qword_1009F98F0)
  {
    v18 = sub_10007882C(v18);
    v22 = qword_1009F98F0;
  }

  v4[7] = v22;
  v23 = qword_1009F9900;
  if (!qword_1009F9900)
  {
    v18 = sub_10007882C(v18);
    v23 = qword_1009F9900;
  }

  v4[8] = v23;
  v24 = qword_1009F9908;
  if (!qword_1009F9908)
  {
    v18 = sub_10007882C(v18);
    v24 = qword_1009F9908;
  }

  v4[9] = v24;
  v25 = qword_1009F9910;
  if (!qword_1009F9910)
  {
    v18 = sub_10007882C(v18);
    v25 = qword_1009F9910;
  }

  v4[10] = v25;
  v26 = qword_1009F9918;
  if (!qword_1009F9918)
  {
    v18 = sub_10007882C(v18);
    v26 = qword_1009F9918;
  }

  v4[11] = v26;
  v27 = qword_1009F9920;
  if (!qword_1009F9920)
  {
    v18 = sub_10007882C(v18);
    v27 = qword_1009F9920;
  }

  v4[12] = v27;
  v28 = qword_1009F9928;
  if (!qword_1009F9928)
  {
    v18 = sub_10007882C(v18);
    v28 = qword_1009F9928;
  }

  v4[13] = v28;
  v29 = sub_1000FDDE4(v18, v19, v20, v21);
  v4[14] = v29;
  v33 = sub_10011AF14(v29, v30, v31, v32);
  v4[15] = v33;
  v37 = sub_100123A10(v33, v34, v35, v36);
  v4[16] = v37;
  v41 = sub_100138030(v37, v38, v39, v40);
  v4[17] = v41;
  v45 = sub_10010DD78(v41, v42, v43, v44);
  v4[18] = v45;
  v49 = sub_10011F6C0(v45, v46, v47, v48);
  v4[19] = v49;
  v53 = sub_100122B44(v49, v50, v51, v52);
  v4[20] = v53;
  v57 = sub_100124A1C(v53, v54, v55, v56);
  v4[21] = v57;
  v61 = sub_100126004(v57, v58, v59, v60);
  v4[22] = v61;
  v65 = sub_100126B74(v61, v62, v63, v64);
  v4[23] = v65;
  v69 = sub_100128CA4(v65, v66, v67, v68);
  v4[24] = v69;
  v73 = sub_10012BC6C(v69, v70, v71, v72);
  v4[25] = v73;
  v77 = sub_10012D5F4(v73, v74, v75, v76);
  v4[26] = v77;
  v81 = sub_10012BC6C(v77, v78, v79, v80);
  v4[27] = v81;
  v85 = sub_1000E39A0(v81, v82, v83, v84);
  v4[28] = v85;
  v89 = qword_1009F9958;
  if (!qword_1009F9958)
  {
    v85 = sub_10007882C(v85);
    v89 = qword_1009F9958;
  }

  v4[29] = v89;
  v90 = sub_10012FD98(v85, v86, v87, v88);
  v4[30] = v90;
  v94 = sub_100131320(v90, v91, v92, v93);
  v4[31] = v94;
  v98 = sub_100134DD4(v94, v95, v96, v97);
  v4[32] = v98;
  v102 = sub_100135804(v98, v99, v100, v101);
  v4[33] = v102;
  v106 = sub_100136078(v102, v103, v104, v105);
  v4[34] = v106;
  v110 = sub_1001335EC(v106, v107, v108, v109);
  v4[35] = v110;
  v114 = sub_10012BC6C(v110, v111, v112, v113);
  v4[36] = v114;
  v118 = qword_1009F9960;
  if (!qword_1009F9960)
  {
    v114 = sub_10007882C(v114);
    v118 = qword_1009F9960;
  }

  v4[37] = v118;
  v119 = sub_100130834(v114, v115, v116, v117);
  v4[38] = v119;
  v123 = sub_100136BC0(v119, v120, v121, v122);
  v4[39] = v123;
  v127 = qword_1009F9970;
  if (!qword_1009F9970)
  {
    v123 = sub_10007882C(v123);
    v127 = qword_1009F9970;
  }

  v4[40] = v127;
  v128 = sub_10012F070(v123, v124, v125, v126);
  v4[41] = v128;
  v132 = sub_100138F54(v128, v129, v130, v131);
  v4[42] = v132;
  v136 = sub_10013A504(v132, v133, v134, v135);
  v4[43] = v136;
  v140 = sub_10013BE5C(v136, v137, v138, v139);
  v4[44] = v140;
  v144 = sub_10013D4A4(v140, v141, v142, v143);
  v4[45] = v144;
  v148 = sub_1001376DC(v144, v145, v146, v147);
  v4[46] = v148;
  v152 = sub_10013DF90(v148, v149, v150, v151);
  v4[47] = v152;
  v156 = sub_1001255C0(v152, v153, v154, v155);
  v4[48] = v156;
  v160 = sub_100142768(v156, v157, v158, v159);
  v4[49] = v160;
  v164 = sub_100144BB8(v160, v161, v162, v163);
  v4[50] = v164;
  v168 = sub_100145C98(v164, v165, v166, v167);
  v4[51] = v168;
  v172 = sub_100146728(v168, v169, v170, v171);
  v4[52] = v172;
  v176 = sub_100147190(v172, v173, v174, v175);
  v4[53] = v176;
  v180 = sub_100128EBC(v176, v177, v178, v179);
  v4[54] = v180;
  v184 = sub_10013EA54(v180, v181, v182, v183);
  v4[55] = v184;
  v188 = qword_1009F9978;
  if (!qword_1009F9978)
  {
    v184 = sub_10007882C(v184);
    v188 = qword_1009F9978;
  }

  v4[56] = v188;
  v189 = sub_100148C00(v184, v185, v186, v187);
  v4[57] = v189;
  v193 = sub_10010E8BC(v189, v190, v191, v192);
  v4[58] = v193;
  v197 = sub_100144044(v193, v194, v195, v196);
  v4[59] = v197;
  result = sub_100129A40(v197, v198, v199, v200);
  v4[60] = result;
  return result;
}

uint64_t sub_100079BF4(uint64_t result)
{
  v1 = result;
  v2 = qword_1009F9940;
  if (!qword_1009F9940)
  {
    result = sub_10007882C(result);
    v2 = qword_1009F9940;
  }

  v1[4] = v2;
  v3 = qword_1009F9948;
  if (!qword_1009F9948)
  {
    result = sub_10007882C(result);
    v3 = qword_1009F9948;
  }

  v1[6] = v3;
  v4 = qword_1009F9938;
  if (!qword_1009F9938)
  {
    result = sub_10007882C(result);
    v4 = qword_1009F9938;
  }

  v1[8] = v4;
  v5 = qword_1009F9930;
  if (!qword_1009F9930)
  {
    result = sub_10007882C(result);
    v5 = qword_1009F9930;
  }

  v1[9] = v5;
  v6 = qword_1009F9950;
  if (!qword_1009F9950)
  {
    result = sub_10007882C(result);
    v6 = qword_1009F9950;
  }

  v1[10] = v6;
  return result;
}

void *sub_100079CDC(void *a1)
{
  *a1 = off_10098D1F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100079D38(uint64_t a1, uint64_t a2)
{
  *a1 = off_10098D1F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100079DC4(a1, a2);
  return a1;
}

void sub_100079DA0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100079DC4(_DWORD *a1, uint64_t a2)
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
      if (!sub_100079CA8(v5))
      {
        sub_10049D6F0();
      }

      a1[7] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 28);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      if (v6 >= 2)
      {
        sub_10049D71C();
      }

      a1[7] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100079EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100079EBC(uint64_t a1)
{
  *a1 = off_10098D1F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100079F10(uint64_t a1)
{
  *a1 = off_10098D1F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100079FE4(uint64_t a1)
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

uint64_t sub_10007A004(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (v8 >= *(this + 2) || (v9 = *v8, v9 < 0))
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

      if (sub_100079CA8(v9))
      {
        a1[7] |= 1u;
        a1[4] = v9;
      }

      else
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v9);
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

        if (v13 > 1)
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

uint64_t sub_10007A1E0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007A26C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

uint64_t sub_10007A354(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_10007A420(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100079DC4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A50C(uint64_t result, uint64_t a2)
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

uint64_t sub_10007A5A0()
{
  v0 = qword_1009ED5C8;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100077CB0;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED440;
}

void sub_10007A634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10007A660(void *a1)
{
  *a1 = off_10098D2A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10007A6C8(uint64_t a1, uint64_t a2)
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
      *(a1 + 36) |= 2u;
      v8 = *(a1 + 24);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007A7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007A810(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098D2A0;
  v2 = (a1 + 8);
  sub_10007A870(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_10007A870(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 24);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

void sub_10007A928(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10007A810(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007A9CC(uint64_t a1)
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

    if ((*(a1 + 36) & 2) != 0)
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

uint64_t sub_10007AA54(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        goto LABEL_18;
      }

      *(a1 + 36) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v10 = *(a1 + 16);
      if ((*(v10 + 23) & 0x8000000000000000) != 0)
      {
        v11 = *v10;
        v12 = *(*(a1 + 16) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 18)
      {
        *(this + 1) = v13 + 1;
LABEL_21:
        *(a1 + 36) |= 2u;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(a1 + 24);
        if ((*(v14 + 23) & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v16 = *(*(a1 + 24) + 8);
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

    if (v8 == 2)
    {
      goto LABEL_21;
    }

LABEL_18:
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

uint64_t sub_10007AC2C(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if (v5)
  {
    v6 = *(this + 16);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      v7 = *v6;
      v8 = *(*(v4 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v9 = *(v4 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(v4 + 24);
    if ((*(v10 + 23) & 0x8000000000000000) != 0)
    {
      v11 = *v10;
      v12 = *(*(v4 + 24) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v13 = *(v4 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  v16 = *(v4 + 8);
  v15 = (v4 + 8);
  v14 = v16;
  if (v16 && *v14 != v14[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v15, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007ACE8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      v7 = *v6;
      v8 = *(*(this + 2) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v11 = *(this + 2);
    *a2 = 10;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, v9);
    }

    else
    {
      *(a2 + 1) = v12;
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

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, v10);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v17 = *(this + 3);
    if ((*(v17 + 23) & 0x8000000000000000) != 0)
    {
      v18 = *v17;
      v19 = *(*(this + 3) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v22 = *(this + 3);
    *a2 = 18;
    v23 = *(v22 + 23);
    if ((v23 & 0x8000000000000000) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 > 0x7F)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, a2 + 1, v20);
    }

    else
    {
      *(a2 + 1) = v23;
      v24 = a2 + 2;
    }

    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = *v22;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v26, v27, v24, v21);
  }

  v30 = *(this + 1);
  v29 = (this + 8);
  v28 = v30;
  if (!v30 || *v28 == v28[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, a2, a3);
}