uint64_t sub_10007DDC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DC48 + 16);
    }

    sub_10007B848(v5, v6);
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 28);
    *(a1 + 40) |= 4u;
    *(a1 + 28) = v10;
    if ((*(a2 + 40) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 40) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 32);
    *(a1 + 40) |= 8u;
    *(a1 + 32) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007DF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007DF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007DF8C(void *a1)
{
  *a1 = off_100436698;
  if (qword_10045DC48 != a1)
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

void sub_10007E020(void *a1)
{
  *a1 = off_100436698;
  if (qword_10045DC48 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007E160(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 44))
        {
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
          *(v2 + 32) = 0;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 9) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
          v1 = vars8;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10007E1E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v9 != 5)
          {
            goto LABEL_24;
          }

LABEL_39:
          v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 28) = v24;
          *(a1 + 40) |= 4u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 37)
          {
            *(this + 1) = v22 + 1;
            v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
            {
              return 0;
            }

LABEL_43:
            *(a1 + 32) = v24;
            *(a1 + 40) |= 8u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
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
          if (v8 == 4 && v9 == 5)
          {
            v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_43;
          }

LABEL_24:
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

      if (v8 == 1)
      {
        break;
      }

      if (v8 != 2 || v9 != 5)
      {
        goto LABEL_24;
      }

      v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      *(a1 + 24) = v24;
      *(a1 + 40) |= 2u;
      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 29)
      {
        *(this + 1) = v21 + 1;
        goto LABEL_39;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 40) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v24 = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v11;
      *(this + 1) = v11 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_10007BACC(v10, this, v15, v16) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
    v17 = *(this + 14);
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v19 < 0 == v18)
    {
      *(this + 14) = v19;
    }

    v20 = *(this + 1);
    if (v20 < *(this + 2) && *v20 == 21)
    {
      *(this + 1) = v20 + 1;
      v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_36;
    }
  }
}

uint64_t sub_10007E548(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC48 + 16), a2, a4);
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 28), a3);
  if ((*(v5 + 40) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_10007E644(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC48 + 16);
    }

    v8 = a1;
    *a2 = 10;
    v9 = *(v7 + 40);
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
    }

    else
    {
      a2[1] = v9;
      v10 = (a2 + 2);
    }

    a2 = sub_10007BD58(v7, v10, a3);
    a1 = v8;
    v3 = *(v8 + 40);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(a1 + 24);
  *a2 = 21;
  *(a2 + 1) = v11;
  a2 += 5;
  v3 = *(a1 + 40);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v12 = *(a1 + 28);
  *a2 = 29;
  *(a2 + 1) = v12;
  a2 += 5;
  if ((*(a1 + 40) & 8) == 0)
  {
LABEL_5:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  v13 = *(a1 + 32);
  *a2 = 37;
  *(a2 + 1) = v13;
  a2 += 5;
  v14 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v14;
  if (!v14)
  {
    return a2;
  }

LABEL_16:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_10007E7A8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_23;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(v9 + 44);
      if (*(v9 + 44))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(qword_10045DC48 + 16);
      v10 = *(v9 + 44);
      if (*(v9 + 44))
      {
LABEL_8:
        v11 = (v10 << 31 >> 31) & 9;
        if ((v10 & 2) != 0)
        {
          v11 += 9;
        }

        if ((v10 & 4) != 0)
        {
          LODWORD(v12) = v11 + 9;
        }

        else
        {
          LODWORD(v12) = v11;
        }

        v13 = (v9 + 8);
        v14 = *(v9 + 8);
        if (!v14)
        {
          goto LABEL_20;
        }

LABEL_17:
        if (*v14 != v14[1])
        {
          v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v13, a2) + v12);
          *(v9 + 40) = v12;
          if (v12 >= 0x80)
          {
            v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_22;
        }

LABEL_20:
        *(v9 + 40) = v12;
        v15 = 1;
LABEL_22:
        v4 = v12 + v15 + 1;
        v3 = *(a1 + 40);
LABEL_23:
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
          v5 = v4 + 5;
        }

        else
        {
          v5 = v4;
        }

        v6 = (a1 + 8);
        v7 = *(a1 + 8);
        if (!v7)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }
    }

    LODWORD(v12) = 0;
    v13 = (v9 + 8);
    v14 = *(v9 + 8);
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_5:
    *(a1 + 36) = v5;
    return v5;
  }

LABEL_31:
  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 36) = v16;
  return v16;
}

uint64_t sub_10007E908(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007DDC4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007EA10(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10007EAA4()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10007A4CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C970;
}

void sub_10007EB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007EB48(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), *(a2 + 32) + *(a1 + 32));
  if (*(a2 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 24) + 8 * v4);
      v7 = *(a1 + 36);
      v8 = *(a1 + 32);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v7 + 1);
          v7 = *(a1 + 36);
        }

        *(a1 + 36) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 24);
      *(a1 + 32) = v8 + 1;
      sub_10007DDC4(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 32));
  }

  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_10045DC50 + 16);
    }

    sub_10007B848(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007ED88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007EDCC(uint64_t a1)
{
  *a1 = off_100436748;
  if (qword_10045DC50 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 24) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 36);
      }
    }
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007EED8(uint64_t a1)
{
  sub_10007EDCC(a1);

  operator delete();
}

uint64_t sub_10007EF18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DC50;
  if (!qword_10045DC50)
  {
    sub_10007AA60(0, a2, a3, a4);
    return qword_10045DC50;
  }

  return result;
}

uint64_t sub_10007EFE8(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
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

  if (*(v1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 24) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 32));
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 6) = 0;
  *(v5 + 11) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_10007F0B4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        goto LABEL_15;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10007BACC(v9, this, v14, v15) || *(this + 36) != 1)
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
      if (v19 < *(this + 2) && *v19 == 18)
      {
        do
        {
          *(this + 1) = v19 + 1;
LABEL_27:
          v20 = *(a1 + 36);
          v21 = *(a1 + 32);
          if (v21 >= v20)
          {
            if (v20 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v20 + 1);
              v20 = *(a1 + 36);
            }

            *(a1 + 36) = v20 + 1;
            operator new();
          }

          v22 = *(a1 + 24);
          *(a1 + 32) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v35 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10007E1E4(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v17 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v17)
          {
            *(this + 14) = v31;
          }

          v19 = *(this + 1);
          v32 = *(this + 2);
        }

        while (v19 < v32 && *v19 == 18);
        if (v19 == v32 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
}

uint64_t sub_10007F47C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_10045DC50 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007F540(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if ((*(this + 52) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    v11 = 0;
    do
    {
      v13 = *(*(this + 3) + 8 * v11);
      *result = 18;
      v14 = *(v13 + 36);
      if (v14 <= 0x7F)
      {
        *(result + 1) = v14;
        v12 = result + 2;
      }

      else
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v13 + 36), result + 1, a3);
      }

      result = sub_10007E644(v13, v12, a3);
      ++v11;
    }

    while (v11 < *(this + 8));
    goto LABEL_15;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = a2;
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v5 + 40);
    if (v8 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *(qword_10045DC50 + 16);
    v6 = a2;
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v5 + 40);
    if (v8 <= 0x7F)
    {
LABEL_6:
      *(v6 + 1) = v8;
      result = sub_10007BD58(v5, v6 + 2, a3);
      if (*(this + 8) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
  result = sub_10007BD58(v5, v9, v10);
  if (*(this + 8) >= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (v17 && *v15 != v15[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, result, a3);
  }

  return result;
}

uint64_t sub_10007F698(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 52))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(v5 + 44);
      if (*(v5 + 44))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *(qword_10045DC50 + 16);
      v6 = *(v5 + 44);
      if (*(v5 + 44))
      {
LABEL_6:
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          LODWORD(v8) = v7 + 9;
        }

        else
        {
          LODWORD(v8) = v7;
        }

        v9 = (v5 + 8);
        v10 = *(v5 + 8);
        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_15:
        if (*v10 != v10[1])
        {
          v8 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8);
          *(v5 + 40) = v8;
          if (v8 >= 0x80)
          {
            v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
          }

          else
          {
            v11 = 1;
          }

LABEL_20:
          v12 = *(a1 + 32);
          v4 = (v12 + v8 + v11 + 1);
          if (v12 < 1)
          {
            goto LABEL_26;
          }

          goto LABEL_21;
        }

LABEL_18:
        *(v5 + 40) = v8;
        v11 = 1;
        goto LABEL_20;
      }
    }

    LODWORD(v8) = 0;
    v9 = (v5 + 8);
    v10 = *(v5 + 8);
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v13 = 0;
  do
  {
    v15 = sub_10007E7A8(*(*(a1 + 24) + 8 * v13), a2);
    v16 = v15;
    if (v15 < 0x80)
    {
      v14 = 1;
    }

    else
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
    }

    v4 = (v16 + v4 + v14);
    ++v13;
  }

  while (v13 < *(a1 + 32));
LABEL_26:
  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_10007F80C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007EB48(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10007F8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007F900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007F914(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10007F9A8()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10007A4CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C980;
}

void sub_10007FA38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007FA4C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 64);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 16);
    *(a1 + 64) |= 1u;
    *(a1 + 16) = v9;
    v4 = *(a2 + 64);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 24);
  *(a1 + 64) |= 2u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 32);
  *(a1 + 64) |= 4u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 36);
  *(a1 + 64) |= 8u;
  *(a1 + 36) = v13;
  v4 = *(a2 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v15 = *(a2 + 44);
    *(a1 + 64) |= 0x20u;
    *(a1 + 44) = v15;
    v4 = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v14 = *(a2 + 40);
  *(a1 + 64) |= 0x10u;
  *(a1 + 40) = v14;
  v4 = *(a2 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v16 = *(a2 + 48);
  *(a1 + 64) |= 0x40u;
  *(a1 + 48) = v16;
  v4 = *(a2 + 64);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 49);
    *(a1 + 64) |= 0x80u;
    *(a1 + 49) = v5;
    v4 = *(a2 + 64);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 52);
      *(a1 + 64) |= 0x100u;
      *(a1 + 52) = v6;
      v4 = *(a2 + 64);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 56);
      *(a1 + 64) |= 0x200u;
      *(a1 + 56) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007FC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007FC7C(void *a1)
{
  *a1 = off_1004367F8;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007FD14(void *a1)
{
  *a1 = off_1004367F8;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10007FE6C(uint64_t a1)
{
  v1 = *(a1 + 64);
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

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v1 = *(a1 + 64);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 14) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10007FEE0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v8 == 1)
            {
              if (v9 != 1)
              {
                goto LABEL_55;
              }

              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, (a1 + 16));
              if (!result)
              {
                return result;
              }

              v20 = *(a1 + 64) | 1;
              *(a1 + 64) = v20;
              v21 = *(this + 1);
              if (v21 < *(this + 2) && *v21 == 18)
              {
                *(this + 1) = v21 + 1;
                *(a1 + 64) = v20 | 2;
                if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
LABEL_24:
                  operator new();
                }

                goto LABEL_25;
              }
            }

            else
            {
              if (v8 != 2 || v9 != 2)
              {
                goto LABEL_55;
              }

              *(a1 + 64) |= 2u;
              if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                goto LABEL_24;
              }

LABEL_25:
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
              v15 = *(this + 2);
              if (v16 < v15 && *v16 == 24)
              {
                v17 = v16 + 1;
                *(this + 1) = v17;
LABEL_45:
                v44 = 0;
                if (v17 >= v15 || (v22 = *v17, (v22 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
                  if (!result)
                  {
                    return result;
                  }

                  v22 = v44;
                  v23 = *(this + 1);
                  v15 = *(this + 2);
                }

                else
                {
                  v23 = v17 + 1;
                  *(this + 1) = v23;
                }

                *(a1 + 32) = -(v22 & 1) ^ (v22 >> 1);
                *(a1 + 64) |= 4u;
                if (v23 < v15 && *v23 == 32)
                {
                  v26 = v23 + 1;
                  *(this + 1) = v26;
                  v44 = 0;
                  if (v26 >= v15)
                  {
                    goto LABEL_67;
                  }

LABEL_64:
                  v28 = *v26;
                  if ((v28 & 0x80000000) == 0)
                  {
                    *(this + 1) = v26 + 1;
                    if (v28 <= 3)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_69;
                  }

LABEL_67:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
                  if (!result)
                  {
                    return result;
                  }

                  v28 = v44;
                  if (v44 <= 3)
                  {
LABEL_66:
                    *(a1 + 64) |= 8u;
                    *(a1 + 36) = v28;
                    goto LABEL_70;
                  }

LABEL_69:
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v28);
LABEL_70:
                  v29 = *(this + 1);
                  v10 = *(this + 2);
                  if (v29 < v10 && *v29 == 40)
                  {
                    v11 = v29 + 1;
                    *(this + 1) = v11;
                    v44 = 0;
                    if (v11 < v10)
                    {
                      goto LABEL_73;
                    }

LABEL_76:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
                    if (!result)
                    {
                      return result;
                    }

                    v31 = *(this + 1);
                    v32 = *(this + 2);
                    *(a1 + 40) = v44;
                    *(a1 + 64) |= 0x10u;
                    if (v31 < v32)
                    {
                      goto LABEL_78;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_55;
              }

              v17 = *(this + 1);
              v15 = *(this + 2);
              goto LABEL_45;
            }

            if (v8 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_55;
              }

              v26 = *(this + 1);
              v25 = *(this + 2);
              v44 = 0;
              if (v26 >= v25)
              {
                goto LABEL_67;
              }

              goto LABEL_64;
            }

            if (v8 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_55;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            v44 = 0;
            if (v11 >= v10)
            {
              goto LABEL_76;
            }

LABEL_73:
            v30 = *v11;
            if (v30 < 0)
            {
              goto LABEL_76;
            }

            v31 = v11 + 1;
            *(this + 1) = v31;
            *(a1 + 40) = v30;
            *(a1 + 64) |= 0x10u;
            if (v31 < v10)
            {
LABEL_78:
              if (*v31 == 53)
              {
                *(this + 1) = v31 + 1;
                v44 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v44) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_80;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 7)
        {
          break;
        }

        if (v8 == 8)
        {
          if ((TagFallback & 7) == 0)
          {
            v24 = *(this + 1);
            v18 = *(this + 2);
            v44 = 0;
            if (v24 >= v18)
            {
              goto LABEL_92;
            }

            goto LABEL_90;
          }

          goto LABEL_55;
        }

        if (v8 != 9)
        {
          if (v8 == 10 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_107;
          }

          goto LABEL_55;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_55;
        }

        v27 = *(this + 1);
        v18 = *(this + 2);
LABEL_97:
        v44 = 0;
        if (v27 >= v18 || (v38 = *v27, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
          if (!result)
          {
            return result;
          }

          v38 = v44;
          if (v44 <= 3)
          {
LABEL_100:
            *(a1 + 64) |= 0x100u;
            *(a1 + 52) = v38;
            goto LABEL_104;
          }
        }

        else
        {
          *(this + 1) = v27 + 1;
          if (v38 <= 3)
          {
            goto LABEL_100;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 9, v38);
LABEL_104:
        v39 = *(this + 1);
        v12 = *(this + 2);
        if (v39 < v12 && *v39 == 80)
        {
          v13 = v39 + 1;
          *(this + 1) = v13;
LABEL_107:
          v44 = 0;
          if (v13 >= v12 || (v40 = *v13, v40 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
            if (!result)
            {
              return result;
            }

            v43 = *(this + 1);
            v42 = *(this + 2);
            *(a1 + 56) = v44;
            *(a1 + 64) |= 0x200u;
            if (v43 == v42)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v41 = v13 + 1;
            *(this + 1) = v41;
            *(a1 + 56) = v40;
            *(a1 + 64) |= 0x200u;
            if (v41 == v12)
            {
LABEL_113:
              if (*(this + 11) || *(this + 6) == *(this + 10))
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

      if (v8 != 6)
      {
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_55;
      }

      v44 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v44) & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      *(a1 + 44) = v44;
      *(a1 + 64) |= 0x20u;
      v33 = *(this + 1);
      v18 = *(this + 2);
      if (v33 < v18 && *v33 == 56)
      {
        v19 = v33 + 1;
        *(this + 1) = v19;
        v44 = 0;
        if (v19 >= v18)
        {
          goto LABEL_85;
        }

LABEL_83:
        v34 = *v19;
        if ((v34 & 0x80000000) != 0)
        {
LABEL_85:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
          if (!result)
          {
            return result;
          }

          v34 = v44;
          v35 = *(this + 1);
          v18 = *(this + 2);
          goto LABEL_87;
        }

        v35 = v19 + 1;
        *(this + 1) = v35;
LABEL_87:
        *(a1 + 48) = v34 != 0;
        *(a1 + 64) |= 0x40u;
        if (v35 < v18 && *v35 == 64)
        {
          v24 = v35 + 1;
          *(this + 1) = v24;
          v44 = 0;
          if (v24 >= v18)
          {
            goto LABEL_92;
          }

LABEL_90:
          v36 = *v24;
          if ((v36 & 0x80000000) != 0)
          {
LABEL_92:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
            if (!result)
            {
              return result;
            }

            v36 = v44;
            v37 = *(this + 1);
            v18 = *(this + 2);
            goto LABEL_94;
          }

          v37 = v24 + 1;
          *(this + 1) = v37;
LABEL_94:
          *(a1 + 49) = v36 != 0;
          *(a1 + 64) |= 0x80u;
          if (v37 < v18 && *v37 == 72)
          {
            v27 = v37 + 1;
            *(this + 1) = v27;
            goto LABEL_97;
          }
        }
      }
    }

    if (v8 == 7 && (TagFallback & 7) == 0)
    {
      v19 = *(this + 1);
      v18 = *(this + 2);
      v44 = 0;
      if (v19 >= v18)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }

LABEL_55:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10008052C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFixed64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 64);
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

  v10 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 44), a3);
  v6 = *(v5 + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 49), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 52), a2, a4);
  if ((*(v5 + 64) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5 + 56), a2, a4);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_23:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000806A8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 16);
  if (v6)
  {
    v11 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v11;
    v4 = (a2 + 9);
    v6 = *(this + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_26:
      v18 = *(this + 8);
      *v4 = 24;
      v19 = ((2 * v18) ^ (v18 >> 31));
      if (v19 > 0x7F)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
        if ((*(this + 64) & 8) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *(v4 + 1) = (2 * v18) ^ (v18 >> 31);
        v4 = (v4 + 2);
        if ((*(this + 64) & 8) != 0)
        {
          goto LABEL_30;
        }
      }

LABEL_5:
      if ((*(this + 64) & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_37:
      v22 = *(this + 10);
      *v4 = 40;
      v23 = v4 + 1;
      if ((v22 & 0x80000000) != 0)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v22, v23, a3);
        v7 = *(this + 16);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_44;
        }
      }

      else if (v22 > 0x7F)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v23, a3);
        v7 = *(this + 16);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        *(v4 + 1) = v22;
        v4 = (v4 + 2);
        v7 = *(this + 16);
        if ((v7 & 0x20) != 0)
        {
          goto LABEL_44;
        }
      }

LABEL_7:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(this + 3);
  *v4 = 18;
  v13 = *(v12 + 23);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v13 = *(v12 + 8);
    if (v13 <= 0x7F)
    {
      goto LABEL_16;
    }
  }

  else if (v13 <= 0x7F)
  {
LABEL_16:
    *(v4 + 1) = v13;
    v14 = v4 + 2;
    goto LABEL_19;
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v4 + 1, a3);
LABEL_19:
  v15 = *(v12 + 23);
  if (v15 >= 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = *v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v12 + 23);
  }

  else
  {
    v17 = *(v12 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v16, v17, v14, a4);
  if ((*(this + 16) & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_30:
  v20 = *(this + 9);
  *v4 = 32;
  v21 = v4 + 1;
  if ((v20 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

  else if (v20 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v4 + 1) = v20;
    v4 = (v4 + 2);
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_6:
  v7 = *(this + 16);
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_44:
  v24 = *(this + 11);
  *v4 = 53;
  *(v4 + 1) = v24;
  v4 = (v4 + 5);
  v7 = *(this + 16);
  if ((v7 & 0x40) == 0)
  {
LABEL_8:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = *(this + 48);
  *v4 = 56;
  *(v4 + 1) = v25;
  v4 = (v4 + 2);
  v7 = *(this + 16);
  if ((v7 & 0x80) == 0)
  {
LABEL_9:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_47:
    v27 = *(this + 13);
    *v4 = 72;
    v28 = v4 + 1;
    if ((v27 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v27, v28, a3);
      if ((*(this + 65) & 2) != 0)
      {
        goto LABEL_54;
      }
    }

    else if (v27 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v28, a3);
      if ((*(this + 65) & 2) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      *(v4 + 1) = v27;
      v4 = (v4 + 2);
      if ((*(this + 65) & 2) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_11:
    v10 = *(this + 1);
    v9 = (this + 8);
    v8 = v10;
    if (!v10)
    {
      return v4;
    }

    goto LABEL_61;
  }

LABEL_46:
  v26 = *(this + 49);
  *v4 = 64;
  *(v4 + 1) = v26;
  v4 = (v4 + 2);
  if ((*(this + 16) & 0x100) != 0)
  {
    goto LABEL_47;
  }

LABEL_10:
  if ((*(this + 65) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  v29 = *(this + 14);
  *v4 = 80;
  v30 = v4 + 1;
  if ((v29 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v29, v30, a3);
    v32 = *(this + 1);
    v9 = (this + 8);
    v8 = v32;
    if (!v32)
    {
      return v4;
    }
  }

  else if (v29 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v30, a3);
    v33 = *(this + 1);
    v9 = (this + 8);
    v8 = v33;
    if (!v33)
    {
      return v4;
    }
  }

  else
  {
    *(v4 + 1) = v29;
    v4 = (v4 + 2);
    v31 = *(this + 1);
    v9 = (this + 8);
    v8 = v31;
    if (!v31)
    {
      return v4;
    }
  }

LABEL_61:
  if (*v8 == v8[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, v4, a3);
}

uint64_t sub_100080A08(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_38;
  }

  v4 = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v12 = ((2 * *(a1 + 32)) ^ (*(a1 + 32) >> 31));
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      v3 = *(a1 + 64);
      v4 += v13 + 1;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v6 = *(a1 + 24);
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
    v3 = *(a1 + 64);
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

  v4 += v11 + v7 + 1;
  if ((v3 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v3 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v14 = *(a1 + 36);
  if ((v14 & 0x80000000) != 0)
  {
    v4 += 11;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    v3 = *(a1 + 64);
    v4 += v15 + 1;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v4 += 2;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_29:
  v16 = *(a1 + 40);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 64);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
LABEL_35:
  v18 = v4 + 5;
  if ((v3 & 0x20) == 0)
  {
    v18 = v4;
  }

  v5 = ((v3 >> 6) & 2) + ((v3 >> 5) & 2) + v18;
  if ((v3 & 0xFF00) != 0)
  {
LABEL_38:
    if ((v3 & 0x100) != 0)
    {
      v19 = *(a1 + 52);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v20 = 2;
      }

      v5 = (v20 + v5);
    }

    if ((v3 & 0x200) != 0)
    {
      v21 = *(a1 + 56);
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

LABEL_52:
  v23 = *(a1 + 8);
  if (v23 && *v23 != v23[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 60) = v5;
  return v5;
}

uint64_t sub_100080C28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10007FA4C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100080D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100080D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100080D30(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100080DC4()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10007A4CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C990;
}

void sub_100080E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100080E68(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 32);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 32);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 32) |= 1u;
    *(a1 + 24) = v5;
    v4 = *(a2 + 32);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 32) |= 2u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC60 + 16);
    }

    sub_10007FA4C(v6, v7);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100080FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100080FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100081004(void *a1)
{
  *a1 = off_1004368A8;
  if (qword_10045DC60 != a1)
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

void sub_100081098(void *a1)
{
  *a1 = off_1004368A8;
  if (qword_10045DC60 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000811D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 24) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        v4 = *(v3 + 64);
        if (v4)
        {
          *(v3 + 16) = 0;
          if ((v4 & 2) != 0)
          {
            v5 = *(v3 + 24);
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

          *(v3 + 32) = 0;
          *(v3 + 40) = 0;
          *(v3 + 48) = 0;
          v4 = *(v3 + 64);
        }

        if ((v4 & 0xFF00) != 0)
        {
          *(v3 + 52) = 0;
          *(v3 + 56) = 0;
        }

        v7 = *(v3 + 8);
        v6 = (v3 + 8);
        *(v6 + 14) = 0;
        if (v7)
        {
          v8 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
          a1 = v8;
        }
      }
    }
  }

  v10 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000812A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 == 2)
        {
          *(a1 + 32) |= 2u;
          v13 = *(a1 + 16);
          if (!v13)
          {
            goto LABEL_24;
          }

          goto LABEL_17;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v25 = 0;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25);
        if (!result)
        {
          return result;
        }

        v11 = v25;
        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 24) = v11 != 0;
      v16 = *(a1 + 32) | 1;
      *(a1 + 32) = v16;
    }

    while (v12 >= v9 || *v12 != 18);
    *(this + 1) = v12 + 1;
    *(a1 + 32) = v16 | 2;
    v13 = *(a1 + 16);
    if (!v13)
    {
LABEL_24:
      operator new();
    }

LABEL_17:
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

    v17 = *(this + 14);
    v18 = *(this + 15);
    *(this + 14) = v17 + 1;
    if (v17 >= v18)
    {
      return 0;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26);
    if (!sub_10007FEE0(v13, this, v20, v21) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10008158C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 24), a2, a4);
    if ((*(v5 + 32) & 2) == 0)
    {
LABEL_3:
      v9 = *(v5 + 8);
      v8 = (v5 + 8);
      v7 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v10, a2, a4);
    v11 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v11;
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DC60 + 16), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_10:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100081650(uint64_t a1, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *(a1 + 32);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_10045DC60 + 16);
    }

    *a2 = 18;
    v11 = v9[15];
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v11;
      v12 = (a2 + 2);
    }

    a2 = sub_1000806A8(v9, v12, a3, a4);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      return a2;
    }

    goto LABEL_12;
  }

  v8 = *(a1 + 24);
  *a2 = 8;
  *(a2 + 1) = v8;
  a2 = (a2 + 2);
  if ((*(a1 + 32) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  if (!v7)
  {
    return a2;
  }

LABEL_12:
  if (*v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v5, a2, a3);
}

uint64_t sub_10008172C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
LABEL_7:
    v8 = (a1 + 8);
    v9 = *(a1 + 8);
    if (v9)
    {
      goto LABEL_12;
    }

LABEL_8:
    *(a1 + 28) = v4;
    return v4;
  }

  v4 = 2 * (v3 & 1u);
  if ((v3 & 2) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_100080A08(v5, a2);
    if (v6 < 0x80)
    {
LABEL_5:
      v7 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = sub_100080A08(*(qword_10045DC60 + 16), a2);
    if (v6 < 0x80)
    {
      goto LABEL_5;
    }
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
LABEL_11:
  v4 = (v6 + v4 + v7 + 1);
  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (*v9 == v9[1])
  {
    goto LABEL_8;
  }

  v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v4;
  *(a1 + 28) = v11;
  return v11;
}

uint64_t sub_100081808(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100080E68(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000818E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000818FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100081910(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000819A4()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10007A4CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C9A0;
}

void sub_100081A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100081A48(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), *(a2 + 32) + *(a1 + 32));
  if (*(a2 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 24) + 8 * v4);
      v7 = *(a1 + 36);
      v8 = *(a1 + 32);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v7 + 1);
          v7 = *(a1 + 36);
        }

        *(a1 + 36) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 24);
      *(a1 + 32) = v8 + 1;
      sub_10007FA4C(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 32));
  }

  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      v10 = *(qword_10045DC68 + 16);
    }

    sub_10007B848(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100081CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100081CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100081CF0(uint64_t a1)
{
  *a1 = off_100436958;
  if (qword_10045DC68 != a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 24) + 8 * i);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(a1 + 36);
      }
    }
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100081DFC(uint64_t a1)
{
  sub_100081CF0(a1);

  operator delete();
}

uint64_t sub_100081ED0(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
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

  if (*(v1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 24) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 32));
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 6) = 0;
  *(v5 + 11) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_100081F9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        goto LABEL_15;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v34 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
        {
          return 0;
        }
      }

      else
      {
        v34 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
      if (!sub_10007BACC(v9, this, v14, v15) || *(this + 36) != 1)
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
      if (v19 < *(this + 2) && *v19 == 18)
      {
        do
        {
          *(this + 1) = v19 + 1;
LABEL_27:
          v20 = *(a1 + 36);
          v21 = *(a1 + 32);
          if (v21 >= v20)
          {
            if (v20 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v20 + 1);
              v20 = *(a1 + 36);
            }

            *(a1 + 36) = v20 + 1;
            operator new();
          }

          v22 = *(a1 + 24);
          *(a1 + 32) = v21 + 1;
          v23 = *(v22 + 8 * v21);
          v35 = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35);
          if (!sub_10007FEE0(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v17 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v17)
          {
            *(this + 14) = v31;
          }

          v19 = *(this + 1);
          v32 = *(this + 2);
        }

        while (v19 < v32 && *v19 == 18);
        if (v19 == v32 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
}

uint64_t sub_100082360(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_10045DC68 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100082424(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 52) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    do
    {
      v14 = *(*(this + 3) + 8 * v12);
      *result = 18;
      v15 = *(v14 + 15);
      if (v15 <= 0x7F)
      {
        *(result + 1) = v15;
        v13 = (result + 2);
      }

      else
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v14 + 15), result + 1, a3);
      }

      result = sub_1000806A8(v14, v13, a3, a4);
      ++v12;
    }

    while (v12 < *(this + 8));
    goto LABEL_15;
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = a2;
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v6 + 40);
    if (v9 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(qword_10045DC68 + 16);
    v7 = a2;
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v6 + 40);
    if (v9 <= 0x7F)
    {
LABEL_6:
      *(v7 + 1) = v9;
      result = sub_10007BD58(v6, v7 + 2, a3);
      if (*(this + 8) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
  result = sub_10007BD58(v6, v10, v11);
  if (*(this + 8) >= 1)
  {
    goto LABEL_10;
  }

LABEL_15:
  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (v18 && *v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, result, a3);
  }

  return result;
}

uint64_t sub_10008257C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 52))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(v5 + 44);
      if (*(v5 + 44))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *(qword_10045DC68 + 16);
      v6 = *(v5 + 44);
      if (*(v5 + 44))
      {
LABEL_6:
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          LODWORD(v8) = v7 + 9;
        }

        else
        {
          LODWORD(v8) = v7;
        }

        v9 = (v5 + 8);
        v10 = *(v5 + 8);
        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_15:
        if (*v10 != v10[1])
        {
          v8 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8);
          *(v5 + 40) = v8;
          if (v8 >= 0x80)
          {
            v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
          }

          else
          {
            v11 = 1;
          }

LABEL_20:
          v12 = *(a1 + 32);
          v4 = (v12 + v8 + v11 + 1);
          if (v12 < 1)
          {
            goto LABEL_26;
          }

          goto LABEL_21;
        }

LABEL_18:
        *(v5 + 40) = v8;
        v11 = 1;
        goto LABEL_20;
      }
    }

    LODWORD(v8) = 0;
    v9 = (v5 + 8);
    v10 = *(v5 + 8);
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v13 = 0;
  do
  {
    v15 = sub_100080A08(*(*(a1 + 24) + 8 * v13), a2);
    v16 = v15;
    if (v15 < 0x80)
    {
      v14 = 1;
    }

    else
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
    }

    v4 = (v16 + v4 + v14);
    ++v13;
  }

  while (v13 < *(a1 + 32));
LABEL_26:
  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1000826F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100081A48(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000827D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000827E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000827F8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10008288C()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10007A4CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C9B0;
}

void sub_10008291C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100082930(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
    v4 = *(a2 + 60);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a2 + 60);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (v4)
  {
    *(a1 + 60) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DC70 + 16);
    }

    sub_10007B848(v5, v6);
    v4 = *(a2 + 60);
  }

  if ((v4 & 2) != 0)
  {
    v11 = *(a2 + 24);
    *(a1 + 60) |= 2u;
    *(a1 + 24) = v11;
    v4 = *(a2 + 60);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a2 + 28);
  *(a1 + 60) |= 4u;
  *(a1 + 28) = v12;
  v4 = *(a2 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 48);
  *(a1 + 60) |= 8u;
  *(a1 + 48) = v13;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    *(a1 + 60) |= 0x20u;
    v15 = *(a1 + 32);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 32);
    if (v16)
    {
      sub_100080E68(v15, v16);
      v4 = *(a2 + 60);
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_100080E68(v15, *(qword_10045DC70 + 32));
      v4 = *(a2 + 60);
      if ((v4 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_27:
  v14 = *(a2 + 52);
  *(a1 + 60) |= 0x10u;
  *(a1 + 52) = v14;
  v4 = *(a2 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_35:
  *(a1 + 60) |= 0x40u;
  v17 = *(a1 + 40);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    sub_100081A48(v17, v18);
    v4 = *(a2 + 60);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *(a2 + 53);
    *(a1 + 60) |= 0x80u;
    *(a1 + 53) = v7;
    v4 = *(a2 + 60);
    goto LABEL_18;
  }

  sub_100081A48(v17, *(qword_10045DC70 + 40));
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v8 = *(a2 + 54);
      *(a1 + 60) |= 0x100u;
      *(a1 + 54) = v8;
      v4 = *(a2 + 60);
    }

    if ((v4 & 0x200) != 0)
    {
      v9 = *(a2 + 55);
      *(a1 + 60) |= 0x200u;
      *(a1 + 55) = v9;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100082CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100082CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100082CD4(void *a1)
{
  *a1 = off_100436A08;
  if (qword_10045DC70 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100082DC0(void *a1)
{
  *a1 = off_100436A08;
  if (qword_10045DC70 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100082EC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DC70;
  if (!qword_10045DC70)
  {
    sub_10007AA60(0, a2, a3, a4);
    return qword_10045DC70;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100082F94(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 15);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 2);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 2) = 0;
          *(this + 3) = 0;
          *(this + 4) = 0;
        }

        v3 = *(this + 1);
        this = (this + 8);
        *(this + 9) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 3) = 0;
    *(v1 + 12) = 0;
    *(v1 + 52) = 0;
    v4 = *(v1 + 15);
    if ((v4 & 0x20) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        this = sub_1000811D8(this);
        v4 = *(v1 + 15);
      }
    }

    if ((v4 & 0x40) != 0)
    {
      v5 = *(v1 + 5);
      if (v5)
      {
        if (*(v5 + 52))
        {
          this = *(v5 + 16);
          if (this)
          {
            if (*(this + 44))
            {
              *(this + 2) = 0;
              *(this + 3) = 0;
              *(this + 4) = 0;
            }

            v6 = *(this + 1);
            this = (this + 8);
            *(this + 9) = 0;
            if (v6)
            {
              this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
            }
          }
        }

        if (*(v5 + 32) >= 1)
        {
          v7 = 0;
          do
          {
            v8 = *(*(v5 + 24) + 8 * v7);
            this = (*(*v8 + 32))(v8);
            ++v7;
          }

          while (v7 < *(v5 + 32));
        }

        v10 = *(v5 + 8);
        v9 = (v5 + 8);
        *(v9 + 6) = 0;
        *(v9 + 11) = 0;
        if (v10)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
        }
      }
    }

    *(v1 + 53) = 0;
    v2 = *(v1 + 15);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 27) = 0;
  }

  v12 = *(v1 + 1);
  v11 = (v1 + 8);
  *(v11 + 13) = 0;
  if (v12)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
  }

  return this;
}

uint64_t sub_1000830FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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
            if (TagFallback >> 3 > 5)
            {
              if (TagFallback >> 3 <= 7)
              {
                if (v8 == 6)
                {
                  if (v9 == 2)
                  {
                    *(a1 + 60) |= 0x20u;
                    v20 = *(a1 + 32);
                    if (!v20)
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_98;
                  }
                }

                else if (v8 == 7 && v9 == 2)
                {
                  *(a1 + 60) |= 0x40u;
                  v16 = *(a1 + 40);
                  if (!v16)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_30;
                }
              }

              else if (v8 == 8)
              {
                if ((TagFallback & 7) == 0)
                {
                  v23 = *(this + 1);
                  v12 = *(this + 2);
                  v70 = 0;
                  if (v23 >= v12)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_122;
                }
              }

              else if (v8 == 9)
              {
                if ((TagFallback & 7) == 0)
                {
                  v26 = *(this + 1);
                  v12 = *(this + 2);
                  v70 = 0;
                  if (v26 >= v12)
                  {
                    goto LABEL_131;
                  }

                  goto LABEL_129;
                }
              }

              else if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v13 = *(this + 1);
                v12 = *(this + 2);
                v70 = 0;
                if (v13 >= v12)
                {
                  goto LABEL_138;
                }

                goto LABEL_136;
              }

              goto LABEL_51;
            }

            if (TagFallback >> 3 <= 2)
            {
              break;
            }

            if (v8 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_51;
              }

              v22 = *(this + 1);
              v21 = *(this + 2);
              v70 = 0;
              if (v22 >= v21)
              {
                goto LABEL_75;
              }

              goto LABEL_72;
            }

            if (v8 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_51;
              }

              v25 = *(this + 1);
              v24 = *(this + 2);
              v70 = 0;
              if (v25 >= v24)
              {
                goto LABEL_84;
              }

              goto LABEL_81;
            }

            if (v8 == 5 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              v70 = 0;
              if (v11 >= v10)
              {
                goto LABEL_92;
              }

              goto LABEL_90;
            }

LABEL_51:
            if (v9 == 4)
            {
              return 1;
            }

            if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
            {
              return 0;
            }
          }

          if (v8 != 1)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_51;
          }

          *(a1 + 60) |= 1u;
          v18 = *(a1 + 16);
          if (!v18)
          {
            operator new();
          }

          v70 = 0;
          v19 = *(this + 1);
          if (v19 >= *(this + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
            {
              return 0;
            }
          }

          else
          {
            v70 = *v19;
            *(this + 1) = v19 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v70);
          if (!sub_10007BACC(v18, this, v30, v31) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v32 = *(this + 14);
          v33 = __OFSUB__(v32, 1);
          v34 = v32 - 1;
          if (v34 < 0 == v33)
          {
            *(this + 14) = v34;
          }

          v35 = *(this + 1);
          v14 = *(this + 2);
          if (v35 < v14 && *v35 == 16)
          {
            v15 = v35 + 1;
            *(this + 1) = v15;
            v70 = 0;
            if (v15 < v14)
            {
              goto LABEL_65;
            }

LABEL_68:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
            if (!result)
            {
              return result;
            }

            v37 = *(this + 1);
            v14 = *(this + 2);
            *(a1 + 24) = v70;
            *(a1 + 60) |= 2u;
            if (v37 < v14)
            {
              goto LABEL_70;
            }
          }
        }

        if (v8 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_51;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        v70 = 0;
        if (v15 >= v14)
        {
          goto LABEL_68;
        }

LABEL_65:
        v36 = *v15;
        if (v36 < 0)
        {
          goto LABEL_68;
        }

        v37 = v15 + 1;
        *(this + 1) = v37;
        *(a1 + 24) = v36;
        *(a1 + 60) |= 2u;
      }

      while (v37 >= v14);
LABEL_70:
      if (*v37 == 24)
      {
        v22 = v37 + 1;
        *(this + 1) = v22;
        v70 = 0;
        if (v22 >= v14)
        {
          goto LABEL_75;
        }

LABEL_72:
        v39 = *v22;
        if ((v39 & 0x80000000) == 0)
        {
          *(this + 1) = v22 + 1;
          if (v39 <= 0xE)
          {
            goto LABEL_74;
          }

          goto LABEL_77;
        }

LABEL_75:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
        if (!result)
        {
          return result;
        }

        v39 = v70;
        if (v70 <= 0xE)
        {
LABEL_74:
          *(a1 + 60) |= 4u;
          *(a1 + 28) = v39;
          goto LABEL_78;
        }

LABEL_77:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v39);
LABEL_78:
        v41 = *(this + 1);
        v40 = *(this + 2);
        if (v41 < v40 && *v41 == 32)
        {
          v25 = v41 + 1;
          *(this + 1) = v25;
          v70 = 0;
          if (v25 >= v40)
          {
            goto LABEL_84;
          }

LABEL_81:
          v42 = *v25;
          if ((v42 & 0x80000000) == 0)
          {
            *(this + 1) = v25 + 1;
            if (v42 <= 0xE)
            {
              goto LABEL_83;
            }

            goto LABEL_86;
          }

LABEL_84:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
          if (!result)
          {
            return result;
          }

          v42 = v70;
          if (v70 <= 0xE)
          {
LABEL_83:
            *(a1 + 60) |= 8u;
            *(a1 + 48) = v42;
            goto LABEL_87;
          }

LABEL_86:
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v42);
LABEL_87:
          v43 = *(this + 1);
          v10 = *(this + 2);
          if (v43 < v10 && *v43 == 40)
          {
            v11 = v43 + 1;
            *(this + 1) = v11;
            v70 = 0;
            if (v11 >= v10)
            {
              goto LABEL_92;
            }

LABEL_90:
            v44 = *v11;
            if ((v44 & 0x80000000) != 0)
            {
LABEL_92:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
              if (!result)
              {
                return result;
              }

              v44 = v70;
              v45 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_94;
            }

            v45 = v11 + 1;
            *(this + 1) = v45;
LABEL_94:
            *(a1 + 52) = v44 != 0;
            v46 = *(a1 + 60) | 0x10;
            *(a1 + 60) = v46;
            if (v45 < v10 && *v45 == 50)
            {
              *(this + 1) = v45 + 1;
              *(a1 + 60) = v46 | 0x20;
              v20 = *(a1 + 32);
              if (!v20)
              {
LABEL_97:
                operator new();
              }

LABEL_98:
              v70 = 0;
              v47 = *(this + 1);
              if (v47 >= *(this + 2) || *v47 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
                {
                  return 0;
                }
              }

              else
              {
                v70 = *v47;
                *(this + 1) = v47 + 1;
              }

              v48 = *(this + 14);
              v49 = *(this + 15);
              *(this + 14) = v48 + 1;
              if (v48 >= v49)
              {
                return 0;
              }

              v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v70);
              if (!sub_1000812A8(v20, this, v51, v52) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
              v53 = *(this + 14);
              v33 = __OFSUB__(v53, 1);
              v54 = v53 - 1;
              if (v54 < 0 == v33)
              {
                *(this + 14) = v54;
              }

              v55 = *(this + 1);
              if (v55 < *(this + 2) && *v55 == 58)
              {
                break;
              }
            }
          }
        }
      }
    }

    *(this + 1) = v55 + 1;
    *(a1 + 60) |= 0x40u;
    v16 = *(a1 + 40);
    if (!v16)
    {
LABEL_110:
      operator new();
    }

LABEL_30:
    v70 = 0;
    v17 = *(this + 1);
    if (v17 >= *(this + 2) || *v17 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70))
      {
        return 0;
      }
    }

    else
    {
      v70 = *v17;
      *(this + 1) = v17 + 1;
    }

    v56 = *(this + 14);
    v57 = *(this + 15);
    *(this + 14) = v56 + 1;
    if (v56 >= v57)
    {
      return 0;
    }

    v58 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v70);
    if (!sub_100081F9C(v16, this, v59, v60) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v58);
    v61 = *(this + 14);
    v33 = __OFSUB__(v61, 1);
    v62 = v61 - 1;
    if (v62 < 0 == v33)
    {
      *(this + 14) = v62;
    }

    v63 = *(this + 1);
    v12 = *(this + 2);
    if (v63 < v12 && *v63 == 64)
    {
      v23 = v63 + 1;
      *(this + 1) = v23;
      v70 = 0;
      if (v23 >= v12)
      {
        goto LABEL_124;
      }

LABEL_122:
      v64 = *v23;
      if ((v64 & 0x80000000) != 0)
      {
LABEL_124:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
        if (!result)
        {
          return result;
        }

        v64 = v70;
        v65 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_126;
      }

      v65 = v23 + 1;
      *(this + 1) = v65;
LABEL_126:
      *(a1 + 53) = v64 != 0;
      *(a1 + 60) |= 0x80u;
      if (v65 < v12 && *v65 == 72)
      {
        v26 = v65 + 1;
        *(this + 1) = v26;
        v70 = 0;
        if (v26 >= v12)
        {
          goto LABEL_131;
        }

LABEL_129:
        v66 = *v26;
        if ((v66 & 0x80000000) != 0)
        {
LABEL_131:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
          if (!result)
          {
            return result;
          }

          v66 = v70;
          v67 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_133;
        }

        v67 = v26 + 1;
        *(this + 1) = v67;
LABEL_133:
        *(a1 + 54) = v66 != 0;
        *(a1 + 60) |= 0x100u;
        if (v67 < v12 && *v67 == 80)
        {
          v13 = v67 + 1;
          *(this + 1) = v13;
          v70 = 0;
          if (v13 >= v12)
          {
            goto LABEL_138;
          }

LABEL_136:
          v68 = *v13;
          if ((v68 & 0x80000000) != 0)
          {
LABEL_138:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v70);
            if (!result)
            {
              return result;
            }

            v68 = v70;
            v69 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_140;
          }

          v69 = v13 + 1;
          *(this + 1) = v69;
LABEL_140:
          *(a1 + 55) = v68 != 0;
          *(a1 + 60) |= 0x200u;
          if (v69 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_1000839F4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 60);
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DC70 + 16), a2, a4);
      v6 = *(v5 + 60);
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 52), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    v12 = *(v5 + 40);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v12, a2, a4);
      v6 = *(v5 + 60);
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DC70 + 40), a2, a4);
      v6 = *(v5 + 60);
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_21:
  v11 = *(v5 + 32);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v11, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DC70 + 32), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 53), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 54), a2, a4);
  if ((*(v5 + 60) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 55), a2, a4);
  v13 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v13;
  if (!v13)
  {
    return result;
  }

LABEL_32:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100083BE8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 15);
  if (v6)
  {
    v8 = *(this + 2);
    if (v8)
    {
      *a2 = 10;
      v9 = a2 + 1;
      v10 = *(v8 + 40);
      if (v10 <= 0x7F)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *(qword_10045DC70 + 16);
      *a2 = 10;
      v9 = a2 + 1;
      v10 = *(v8 + 40);
      if (v10 <= 0x7F)
      {
LABEL_10:
        *(v4 + 1) = v10;
        v4 = sub_10007BD58(v8, v4 + 2, a3);
        if ((*(this + 15) & 2) != 0)
        {
          goto LABEL_14;
        }

LABEL_3:
        if ((*(this + 60) & 4) == 0)
        {
          goto LABEL_4;
        }

LABEL_21:
        v15 = *(this + 7);
        *v4 = 24;
        v16 = v4 + 1;
        if ((v15 & 0x80000000) != 0)
        {
          v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
          if ((*(this + 60) & 8) != 0)
          {
            goto LABEL_28;
          }
        }

        else if (v15 > 0x7F)
        {
          v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
          if ((*(this + 60) & 8) != 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          *(v4 + 1) = v15;
          v4 = (v4 + 2);
          if ((*(this + 60) & 8) != 0)
          {
            goto LABEL_28;
          }
        }

LABEL_5:
        v7 = *(this + 15);
        if ((v7 & 0x10) == 0)
        {
          goto LABEL_6;
        }

LABEL_35:
        v19 = *(this + 52);
        *v4 = 40;
        *(v4 + 1) = v19;
        v4 = (v4 + 2);
        if ((*(this + 15) & 0x20) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_36;
      }
    }

    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    v4 = sub_10007BD58(v8, v11, v12);
    if ((*(this + 15) & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_14:
  v13 = *(this + 6);
  *v4 = 16;
  v14 = v4 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
    if ((*(this + 60) & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else if (v13 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
    if ((*(this + 60) & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v4 + 1) = v13;
    v4 = (v4 + 2);
    if ((*(this + 60) & 4) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_4:
  if ((*(this + 60) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_28:
  v17 = *(this + 12);
  *v4 = 32;
  v18 = v4 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v18, a3);
    v7 = *(this + 15);
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_35;
    }
  }

  else if (v17 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v18, a3);
    v7 = *(this + 15);
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(v4 + 1) = v17;
    v4 = (v4 + 2);
    v7 = *(this + 15);
    if ((v7 & 0x10) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_6:
  if ((v7 & 0x20) == 0)
  {
    goto LABEL_54;
  }

LABEL_36:
  v20 = *(this + 4);
  if (v20)
  {
    *v4 = 50;
    v21 = v4 + 1;
    v22 = *(v20 + 28);
    if (v22 <= 0x7F)
    {
      goto LABEL_38;
    }

LABEL_41:
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v21, a3);
    v23 = *(v20 + 32);
    if ((v23 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v20 = *(qword_10045DC70 + 32);
  *v4 = 50;
  v21 = v4 + 1;
  v22 = *(v20 + 28);
  if (v22 > 0x7F)
  {
    goto LABEL_41;
  }

LABEL_38:
  *(v4 + 1) = v22;
  v4 = (v4 + 2);
  v23 = *(v20 + 32);
  if (v23)
  {
LABEL_42:
    v24 = *(v20 + 24);
    *v4 = 8;
    *(v4 + 1) = v24;
    v4 = (v4 + 2);
    v23 = *(v20 + 32);
  }

LABEL_43:
  if ((v23 & 2) == 0)
  {
    v27 = *(v20 + 8);
    v26 = (v20 + 8);
    v25 = v27;
    if (!v27)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v28 = *(v20 + 16);
  if (v28)
  {
    *v4 = 18;
    v29 = v4 + 1;
    v30 = v28[15];
    if (v30 <= 0x7F)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v28 = *(qword_10045DC60 + 16);
    *v4 = 18;
    v29 = v4 + 1;
    v30 = v28[15];
    if (v30 <= 0x7F)
    {
LABEL_48:
      *(v4 + 1) = v30;
      v4 = sub_1000806A8(v28, (v4 + 2), a3, a4);
      v31 = *(v20 + 8);
      v26 = (v20 + 8);
      v25 = v31;
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }
  }

  v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v29, a3);
  v4 = sub_1000806A8(v28, v32, v33, v34);
  v35 = *(v20 + 8);
  v26 = (v20 + 8);
  v25 = v35;
  if (!v35)
  {
    goto LABEL_54;
  }

LABEL_52:
  if (*v25 != v25[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v26, v4, a3);
  }

LABEL_54:
  v36 = *(this + 15);
  if ((v36 & 0x40) != 0)
  {
    v40 = *(this + 5);
    if (v40)
    {
      *v4 = 58;
      v41 = v4 + 1;
      v42 = v40[12];
      if (v42 <= 0x7F)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v40 = *(qword_10045DC70 + 40);
      *v4 = 58;
      v41 = v4 + 1;
      v42 = v40[12];
      if (v42 <= 0x7F)
      {
LABEL_62:
        *(v4 + 1) = v42;
        v4 = sub_100082424(v40, (v4 + 2), a3, a4);
        v36 = *(this + 15);
        if ((v36 & 0x80) != 0)
        {
          goto LABEL_66;
        }

LABEL_56:
        if ((v36 & 0x100) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_67;
      }
    }

    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v41, a3);
    v4 = sub_100082424(v40, v43, v44, v45);
    v36 = *(this + 15);
    if ((v36 & 0x80) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_56;
  }

  if ((v36 & 0x80) == 0)
  {
    goto LABEL_56;
  }

LABEL_66:
  v46 = *(this + 53);
  *v4 = 64;
  *(v4 + 1) = v46;
  v4 = (v4 + 2);
  v36 = *(this + 15);
  if ((v36 & 0x100) == 0)
  {
LABEL_57:
    if ((v36 & 0x200) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_68;
  }

LABEL_67:
  v47 = *(this + 54);
  *v4 = 72;
  *(v4 + 1) = v47;
  v4 = (v4 + 2);
  if ((*(this + 15) & 0x200) == 0)
  {
LABEL_58:
    v39 = *(this + 1);
    v38 = (this + 8);
    v37 = v39;
    if (!v39)
    {
      return v4;
    }

    goto LABEL_69;
  }

LABEL_68:
  v48 = *(this + 55);
  *v4 = 80;
  *(v4 + 1) = v48;
  v4 = (v4 + 2);
  v49 = *(this + 1);
  v38 = (this + 8);
  v37 = v49;
  if (!v49)
  {
    return v4;
  }

LABEL_69:
  if (*v37 == v37[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v38, v4, a3);
}

uint64_t sub_100084030(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_75;
  }

  if (v3)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *(v6 + 44);
      if (*(v6 + 44))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(qword_10045DC70 + 16);
      v7 = *(v6 + 44);
      if (*(v6 + 44))
      {
LABEL_8:
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          v9 = v8 + 9;
        }

        else
        {
          v9 = v8;
        }

        v10 = (v6 + 8);
        v11 = *(v6 + 8);
        if (!v11)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    v9 = 0;
    v10 = (v6 + 8);
    v11 = *(v6 + 8);
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (*v11 != v11[1])
    {
      v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v10, a2) + v9);
      *(v6 + 40) = v12;
      if (v12 >= 0x80)
      {
        v4 = v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(a1 + 60);
        if ((v3 & 2) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v4 = v12 + 2;
        v3 = *(a1 + 60);
        if ((v3 & 2) == 0)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_24;
    }

LABEL_21:
    *(v6 + 40) = v9;
    v4 = v9 + 2;
    v3 = *(a1 + 60);
    if ((v3 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v4 = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v13 = *(a1 + 24);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
LABEL_30:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_42:
    v18 = *(a1 + 48);
    if ((v18 & 0x80000000) != 0)
    {
      v15 = ((v3 >> 3) & 2) + v4 + 11;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
      v3 = *(a1 + 60);
      v15 = ((v3 >> 3) & 2) + v19 + 1 + v4;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v15 = ((v3 >> 3) & 2) + v4 + 2;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_33:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_74;
    }

LABEL_68:
    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = sub_10008257C(v28, a2);
      if (v29 < 0x80)
      {
LABEL_70:
        v30 = 1;
LABEL_73:
        v15 += v29 + v30 + 1;
        v3 = *(a1 + 60);
        goto LABEL_74;
      }
    }

    else
    {
      v29 = sub_10008257C(*(qword_10045DC70 + 40), a2);
      if (v29 < 0x80)
      {
        goto LABEL_70;
      }
    }

    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
    goto LABEL_73;
  }

  v16 = *(a1 + 28);
  if ((v16 & 0x80000000) != 0)
  {
    v4 += 11;
    if ((v3 & 8) != 0)
    {
      goto LABEL_42;
    }
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    v3 = *(a1 + 60);
    v4 += v17 + 1;
    if ((v3 & 8) != 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v4 += 2;
    if ((v3 & 8) != 0)
    {
      goto LABEL_42;
    }
  }

LABEL_32:
  v15 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_49:
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = *(v20 + 32);
    if (v21)
    {
      goto LABEL_51;
    }

LABEL_56:
    v22 = 0;
LABEL_57:
    v26 = (v20 + 8);
    v27 = *(v20 + 8);
    if (!v27)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  v20 = *(qword_10045DC70 + 32);
  v21 = *(v20 + 32);
  if (!v21)
  {
    goto LABEL_56;
  }

LABEL_51:
  v22 = 2 * (v21 & 1u);
  if ((v21 & 2) == 0)
  {
    goto LABEL_57;
  }

  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = sub_100080A08(v23, a2);
    if (v24 < 0x80)
    {
LABEL_54:
      v25 = 1;
      goto LABEL_61;
    }
  }

  else
  {
    v24 = sub_100080A08(*(qword_10045DC60 + 16), a2);
    if (v24 < 0x80)
    {
      goto LABEL_54;
    }
  }

  v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
LABEL_61:
  v22 = (v24 + v22 + v25 + 1);
  v26 = (v20 + 8);
  v27 = *(v20 + 8);
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_62:
  if (*v27 != v27[1])
  {
    v22 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v26, a2) + v22;
  }

LABEL_64:
  *(v20 + 28) = v22;
  if (v22 < 0x80)
  {
    v15 += v22 + 2;
    v3 = *(a1 + 60);
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_68;
  }

  v15 += v22 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
  v3 = *(a1 + 60);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_68;
  }

LABEL_74:
  v5 = ((v3 >> 6) & 2) + v15;
LABEL_75:
  v31 = (v3 & 0xFF00) == 0;
  v32 = ((v3 >> 7) & 2) + v5 + ((v3 >> 8) & 2);
  if (v31)
  {
    v33 = v5;
  }

  else
  {
    v33 = v32;
  }

  v34 = *(a1 + 8);
  if (v34 && *v34 != v34[1])
  {
    v33 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v33;
  }

  *(a1 + 56) = v33;
  return v33;
}

uint64_t sub_1000843F8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100082930(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000844D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000844EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100084500(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100084594()
{
  v0 = qword_10045C9F0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10007A4CC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C9C0;
}

void sub_100084624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100084684()
{
  v0 = sub_10008484C();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1000847F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100084804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100084818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008484C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C9F8 & 1) == 0)
  {
    byte_10045C9F8 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPVisionLogEntry.pb.cc", a4);
    sub_100056A38(v4, v5, v6, v7);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x17CLPVisionLogEntry.proto\x12\x19proto.CLP.LogEntry.Vision\x1A\x14CLPVisionEvent.proto\xB3\x02\n\bLogEntry\x12C\n\x10ar_session_state\x18\x01 \x01(\x0E2).proto.CLP.LogEntry.Vision.ARSessionState\x12@\n\x0Evio_estimation\x18\x02 \x01(\v2(.proto.CLP.LogEntry.Vision.VIOEstimation\x12O\n\x16lsl_heading_estimation\x18\x03 \x01(\v2/.proto.CLP.LogEntry.Vision.LSLHeadingEstimation\x12O\n\x16vl_localization_result\x18\x04 \x01(\v2/.proto.CLP.LogEntry.Vision.VLLocalizationResult", 0x180, v8);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100084990()
{
  if (qword_10045DC78)
  {
    (*(*qword_10045DC78 + 8))(qword_10045DC78);
  }

  result = qword_10045CA10;
  if (qword_10045CA10)
  {
    v1 = *(*qword_10045CA10 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100084A18()
{
  v0 = qword_10045CA18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100084684;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  if (!qword_10045DC78)
  {
    sub_10008484C();
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_100084AD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100084AEC(uint64_t a1)
{
  *a1 = off_100436B90;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 40) = 0xFFFFFFFFLL;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100084B58(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 40);
    *(a1 + 48) |= 1u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 48) |= 2u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DC78 + 16);
    }

    sub_10005EC24(v6, v7);
    v4 = *(a2 + 48);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 48) |= 4u;
    v8 = *(a1 + 24);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 24);
    if (!v9)
    {
      v9 = *(qword_10045DC78 + 24);
    }

    sub_100066A8C(v8, v9);
    v4 = *(a2 + 48);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 48) |= 8u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 32);
    if (!v11)
    {
      v11 = *(qword_10045DC78 + 32);
    }

    sub_10006A04C(v10, v11);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100084D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100084DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100084DBC(void *a1)
{
  *a1 = off_100436B90;
  if (qword_10045DC78 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100084EA8(void *a1)
{
  *a1 = off_100436B90;
  if (qword_10045DC78 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = a1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100084FB0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DC78;
  if (!qword_10045DC78)
  {
    sub_10008484C(0, a2, a3, a4);
    return qword_10045DC78;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100085084(uint64_t a1)
{
  LOBYTE(v1) = *(a1 + 48);
  if (v1)
  {
    *(a1 + 40) = -1;
    if ((v1 & 2) != 0 && *(a1 + 16))
    {
      v2 = a1;
      sub_10005F6AC(*(a1 + 16));
      a1 = v2;
      v1 = *(v2 + 48);
    }

    if ((v1 & 4) != 0 && *(a1 + 24))
    {
      v3 = a1;
      sub_100066F40(*(a1 + 24));
      a1 = v3;
      v1 = *(v3 + 48);
    }

    if ((v1 & 8) != 0 && *(a1 + 32))
    {
      v4 = a1;
      sub_10006A7C0(*(a1 + 32));
      a1 = v4;
    }
  }

  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100085134(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_25;
          }

          v44 = 0;
          v14 = *(this + 1);
          if (v14 >= *(this + 2) || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
            if (!result)
            {
              return result;
            }

            v15 = v44;
            if (sub_1000582C0(v44))
            {
LABEL_23:
              *(a1 + 48) |= 1u;
              *(a1 + 40) = v15;
              goto LABEL_31;
            }
          }

          else
          {
            *(this + 1) = v14 + 1;
            if (sub_1000582C0(v15))
            {
              goto LABEL_23;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v15);
LABEL_31:
          v17 = *(this + 1);
          if (v17 < *(this + 2) && *v17 == 18)
          {
            *(this + 1) = v17 + 1;
            *(a1 + 48) |= 2u;
            v10 = *(a1 + 16);
            if (!v10)
            {
LABEL_34:
              operator new();
            }

            goto LABEL_11;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_25;
          }

          *(a1 + 48) |= 2u;
          v10 = *(a1 + 16);
          if (!v10)
          {
            goto LABEL_34;
          }

LABEL_11:
          v44 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v11;
            *(this + 1) = v11 + 1;
          }

          v18 = *(this + 14);
          v19 = *(this + 15);
          *(this + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
          if (!sub_10005F9A4(v10, this, v21, v22) || *(this + 36) != 1)
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

          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 26)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_46;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_25;
      }

LABEL_46:
      *(a1 + 48) |= 4u;
      v27 = *(a1 + 24);
      if (!v27)
      {
        operator new();
      }

      v44 = 0;
      v28 = *(this + 1);
      if (v28 >= *(this + 2) || *v28 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v28;
        *(this + 1) = v28 + 1;
      }

      v29 = *(this + 14);
      v30 = *(this + 15);
      *(this + 14) = v29 + 1;
      if (v29 >= v30)
      {
        return 0;
      }

      v31 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
      if (!sub_100066FF0(v27, this, v32, v33) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v31);
      v34 = *(this + 14);
      v24 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v35 < 0 == v24)
      {
        *(this + 14) = v35;
      }

      v36 = *(this + 1);
      if (v36 < *(this + 2) && *v36 == 34)
      {
        *(this + 1) = v36 + 1;
        *(a1 + 48) |= 8u;
        v12 = *(a1 + 32);
        if (!v12)
        {
LABEL_60:
          operator new();
        }

LABEL_17:
        v44 = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v13;
          *(this + 1) = v13 + 1;
        }

        v37 = *(this + 14);
        v38 = *(this + 15);
        *(this + 14) = v37 + 1;
        if (v37 >= v38)
        {
          return 0;
        }

        v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
        if (!sub_10006A9B0(v12, this, v40, v41) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v39);
        v42 = *(this + 14);
        v24 = __OFSUB__(v42, 1);
        v43 = v42 - 1;
        if (v43 < 0 == v24)
        {
          *(this + 14) = v43;
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

    if (v8 == 4 && v9 == 2)
    {
      *(a1 + 48) |= 8u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_60;
      }

      goto LABEL_17;
    }

LABEL_25:
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

uint64_t sub_100085634(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 40), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v11 = *(v5 + 24);
      if (v11)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v11, a2, a4);
        if ((*(v5 + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DC78 + 24), a2, a4);
        if ((*(v5 + 48) & 8) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      v9 = *(v5 + 8);
      v8 = (v5 + 8);
      v7 = v9;
      if (!v9)
      {
        return result;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v10, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DC78 + 16), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  v12 = *(v5 + 32);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v12, a2, a4);
    v13 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v13;
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DC78 + 32), a2, a4);
    v14 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v14;
    if (!v14)
    {
      return result;
    }
  }

LABEL_20:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100085780(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 48))
  {
    v10 = *(this + 10);
    *a2 = 8;
    v11 = a2 + 1;
    if ((v10 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
      v6 = *(this + 12);
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (v10 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
      v6 = *(this + 12);
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v4 + 1) = v10;
      v4 = (v4 + 2);
      v6 = *(this + 12);
      if ((v6 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    v18 = *(this + 3);
    if (v18)
    {
      *v4 = 26;
      v19 = v4 + 1;
      v20 = v18[12];
      if (v20 <= 0x7F)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *(qword_10045DC78 + 24);
      *v4 = 26;
      v19 = v4 + 1;
      v20 = v18[12];
      if (v20 <= 0x7F)
      {
LABEL_22:
        *(v4 + 1) = v20;
        v4 = sub_100067490(v18, (v4 + 2), a3);
        if ((*(this + 12) & 8) != 0)
        {
          goto LABEL_26;
        }

LABEL_5:
        v9 = *(this + 1);
        v8 = (this + 8);
        v7 = v9;
        if (!v9)
        {
          return v4;
        }

        goto LABEL_32;
      }
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v19, a3);
    v4 = sub_100067490(v18, v21, v22);
    if ((*(this + 12) & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  v6 = *(this + 12);
  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_14:
  v12 = *(this + 2);
  if (v12)
  {
    *v4 = 18;
    v13 = v4 + 1;
    v14 = v12[23];
    if (v14 <= 0x7F)
    {
      goto LABEL_16;
    }

LABEL_19:
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v13, a3);
    v4 = sub_100060870(v12, v15, v16, v17);
    v6 = *(this + 12);
    if ((v6 & 4) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  v12 = *(qword_10045DC78 + 16);
  *v4 = 18;
  v13 = v4 + 1;
  v14 = v12[23];
  if (v14 > 0x7F)
  {
    goto LABEL_19;
  }

LABEL_16:
  *(v4 + 1) = v14;
  v4 = sub_100060870(v12, (v4 + 2), a3, a4);
  v6 = *(this + 12);
  if ((v6 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_26:
  v23 = *(this + 4);
  if (v23)
  {
    *v4 = 34;
    v24 = v4 + 1;
    v25 = v23[15];
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v23 = *(qword_10045DC78 + 32);
    *v4 = 34;
    v24 = v4 + 1;
    v25 = v23[15];
    if (v25 <= 0x7F)
    {
LABEL_28:
      *(v4 + 1) = v25;
      v4 = sub_10006B420(v23, (v4 + 2), a3);
      v26 = *(this + 1);
      v8 = (this + 8);
      v7 = v26;
      if (!v26)
      {
        return v4;
      }

      goto LABEL_32;
    }
  }

  v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v24, a3);
  v4 = sub_10006B420(v23, v27, v28);
  v29 = *(this + 1);
  v8 = (this + 8);
  v7 = v29;
  if (!v29)
  {
    return v4;
  }

LABEL_32:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1000859D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = sub_100060E38(v8, a2);
      if (v9 < 0x80)
      {
LABEL_16:
        v10 = 1;
LABEL_19:
        v4 = (v4 + v9 + v10 + 1);
        v3 = *(a1 + 48);
        goto LABEL_20;
      }
    }

    else
    {
      v9 = sub_100060E38(*(qword_10045DC78 + 16), a2);
      if (v9 < 0x80)
      {
        goto LABEL_16;
      }
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    goto LABEL_19;
  }

  v7 = *(a1 + 40);
  if ((v7 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 48);
      if ((v3 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_30:
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = sub_10006B758(v14, a2);
      if (v15 < 0x80)
      {
LABEL_32:
        v16 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      v15 = sub_10006B758(*(qword_10045DC78 + 32), a2);
      if (v15 < 0x80)
      {
        goto LABEL_32;
      }
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
LABEL_35:
    v4 = (v4 + v15 + v16 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = sub_100067610(v12, a2);
    if (v13 < 0x80)
    {
      goto LABEL_26;
    }

LABEL_29:
    v4 = v4 + v13 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    if ((*(a1 + 48) & 8) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  v13 = sub_100067610(*(qword_10045DC78 + 24), a2);
  if (v13 >= 0x80)
  {
    goto LABEL_29;
  }

LABEL_26:
  v4 = (v4 + v13 + 2);
  if ((*(a1 + 48) & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_23:
    *(a1 + 44) = v4;
    return v4;
  }

LABEL_36:
  if (*v6 == v6[1])
  {
    goto LABEL_23;
  }

  v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 44) = v17;
  return v17;
}

uint64_t sub_100085BC0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100084B58(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100085CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100085CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100085CC8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100085D5C()
{
  v0 = qword_10045CA18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100084684;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA08;
}

void sub_100085DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100085E0C()
{
  v0 = sub_100086130();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1000860C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000860DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000860F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100086130(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CA20 & 1) == 0)
  {
    byte_10045CA20 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPPipelinedOutput.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x18CLPPipelinedOutput.proto\x12\x1Cproto.CLP.LogEntry.Pipelined\x8A\x01\n\tTimeStamp\x12\x1A\n\x12cf_absolute_time_s\x18\x01 \x01(\x01\x12\x1C\n\x14mach_absolute_time_s\x18\x02 \x01(\x01\x12\x1E\n\x16mach_continuous_time_s\x18\x03 \x01(\x01\x12#\n\x1Bpipelined_monotonic_time_ns\x18\x04 \x01(\x03T\n\x1BIndoorOutdoorClassification\x12\x19\n\x11indoor_likelihood\x18\x01 \x01(\x01\x12\x1A\n\x12outdoor_likelihood\x18\x02 \x01(\x01\x95\x04\n'CoarseIndoorOutdoorClassificationResult\x12\x10\n\bfloor_id\x18\x01 \x01(\t\x12J\n\aoverall\x18\x02 \x01(\v29.proto.CLP.LogEntry.Pipelined.IndoorOutdoorClassification\x12F\n\x03gps\x18\x03 \x01(\v29.proto.CLP.LogEntry.Pipelined.IndoorOutdoorClassification\x12G\n\x04wifi\x18\x04 \x01(\v29.proto.CLP.LogEntry.Pipelined.IndoorOutdoorClassification\x12I\n\x06z_axis\x18\x05 \x01(\v29.proto.CLP.LogEntry.Pipelined.IndoorOutdoorClassification\x12U\n\x12cl_outdoor_service\x18\x06 \x01(\v29.proto.CLP.LogEntry.Pipelined.IndoorOutdoorClassification\x12Y\n\x16raw_cl_outdoor_service\x18\a \x01(\v29.proto.CLP.LogEntry.Pipelined.IndoorOutdoorClassification\xDD\x01\n\x0FPipelinedOutput\x12:\n\ttimestamp\x18\x01 \x01(\v2'.proto.CLP.LogEntry.Pipelined.TimeStamp\x12 \n\x18pose_estimate_thrift_bin\x18\x02 \x01(\f\x12l\n\x1Dcoarse_indoor_outdoor_results\x18\x03 \x03(\v2E.proto.CLP.LogEntry.Pipelined.CoarseIndoorOutdoorClassificationResult", 0x413, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10008642C()
{
  if (qword_10045DC80)
  {
    (*(*qword_10045DC80 + 8))(qword_10045DC80);
  }

  if (qword_10045CA38)
  {
    (*(*qword_10045CA38 + 8))(qword_10045CA38);
  }

  if (qword_10045DC88)
  {
    (*(*qword_10045DC88 + 8))(qword_10045DC88);
  }

  if (qword_10045CA48)
  {
    (*(*qword_10045CA48 + 8))(qword_10045CA48);
  }

  if (qword_10045DC90)
  {
    (*(*qword_10045DC90 + 8))(qword_10045DC90);
  }

  if (qword_10045CA58)
  {
    (*(*qword_10045CA58 + 8))(qword_10045CA58);
  }

  if (qword_10045DC98)
  {
    (*(*qword_10045DC98 + 8))(qword_10045DC98);
  }

  result = qword_10045CA68;
  if (qword_10045CA68)
  {
    v1 = *(*qword_10045CA68 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000865D4()
{
  v0 = qword_10045CA70;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v5[1] = sub_100085E0C;
    v6 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  if (!qword_10045DC80)
  {
    (sub_100086130)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC88)
  {
    sub_100086130(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC90)
  {
    sub_100086130(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC98)
  {
    sub_100086130(v3);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_100086700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100086714(uint64_t a1)
{
  *a1 = off_100436E68;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_10008678C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
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
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 32);
      *(a1 + 52) |= 4u;
      *(a1 + 32) = v9;
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

  v8 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
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

void sub_100086894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000868A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000868BC(uint64_t a1)
{
  *a1 = off_100436C58;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100086910(uint64_t a1)
{
  *a1 = off_100436C58;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100086A10(uint64_t a1)
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

uint64_t sub_100086A34(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v20;
          *(a1 + 52) |= 1u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 17)
          {
            *(this + 1) = v12 + 1;
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_26;
          }

          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
          {
            return 0;
          }

LABEL_22:
          *(a1 + 24) = v20;
          *(a1 + 52) |= 2u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 25)
          {
            *(this + 1) = v13 + 1;
LABEL_29:
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v20;
            *(a1 + 52) |= 4u;
            v14 = *(this + 1);
            v10 = *(this + 2);
            if (v14 < v10 && *v14 == 32)
            {
              v11 = v14 + 1;
              *(this + 1) = v11;
              v20 = 0;
              if (v11 < v10)
              {
                goto LABEL_33;
              }

LABEL_36:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v20);
              if (!result)
              {
                return result;
              }

              v19 = *(this + 1);
              v18 = *(this + 2);
              *(a1 + 40) = v20;
              *(a1 + 52) |= 8u;
              if (v19 == v18)
              {
                goto LABEL_38;
              }
            }
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 != 4 || (TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v11 = *(this + 1);
      v10 = *(this + 2);
      v20 = 0;
      if (v11 >= v10)
      {
        goto LABEL_36;
      }

LABEL_33:
      v15 = *v11;
      if (v15 < 0)
      {
        goto LABEL_36;
      }

      v16 = v11 + 1;
      *(this + 1) = v16;
      *(a1 + 40) = v15;
      *(a1 + 52) |= 8u;
      if (v16 == v10)
      {
LABEL_38:
        if (*(this + 11) || *(this + 6) == *(this + 10))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_29;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100086CC0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v6 = *(v5 + 52);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  if ((*(v5 + 52) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 40), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_11:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100086D94(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  v3 = *(a1 + 52);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v9 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((*(a1 + 52) & 8) == 0)
  {
LABEL_5:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_11;
  }

LABEL_10:
  v10 = *(a1 + 40);
  *a2 = 32;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
    return a2;
  }

LABEL_11:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_100086F20(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (*(a1 + 52))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_10:
      *(a1 + 48) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_10;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 48) = v9;
  return v9;
}

uint64_t sub_100086FCC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10008678C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000870AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000870C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000870D4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100087168()
{
  v0 = qword_10045CA70;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100085E0C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA30;
}

void sub_1000871F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008720C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
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
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000872CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000872E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000872F4(uint64_t a1)
{
  *a1 = off_100436D08;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100087348(uint64_t a1)
{
  *a1 = off_100436D08;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100087444(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100087464(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
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

uint64_t sub_1000875DC(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100087678(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100087750(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
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

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1000877B8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10008720C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100087898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000878AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000878C0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100087954()
{
  v0 = qword_10045CA70;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100085E0C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CA40;
}

void sub_1000879E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000879F8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
    LOBYTE(v4) = *(a2 + 76);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 76);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    v6 = *(a1 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
    v4 = *(a2 + 76);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 76) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DC90 + 24);
    }

    sub_10008720C(v7, v8);
    v4 = *(a2 + 76);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 76) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DC90 + 32);
    }

    sub_10008720C(v9, v10);
    v4 = *(a2 + 76);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 76) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045DC90 + 40);
    }

    sub_10008720C(v11, v12);
    v4 = *(a2 + 76);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 76) |= 0x10u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 48);
    if (!v14)
    {
      v14 = *(qword_10045DC90 + 48);
    }

    sub_10008720C(v13, v14);
    v4 = *(a2 + 76);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 76) |= 0x20u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 56);
    if (!v16)
    {
      v16 = *(qword_10045DC90 + 56);
    }

    sub_10008720C(v15, v16);
    v4 = *(a2 + 76);
  }

  if ((v4 & 0x40) != 0)
  {
    *(a1 + 76) |= 0x40u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 64);
    if (!v18)
    {
      v18 = *(qword_10045DC90 + 64);
    }

    sub_10008720C(v17, v18);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100087E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100087E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100087E4C(void *result)
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

  if (qword_10045DC90 != result)
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

    result = v1[8];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void sub_100087FDC(void *a1)
{
  *a1 = off_100436DB8;
  v2 = (a1 + 1);
  sub_100087E4C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10008803C(void *a1)
{
  *a1 = off_100436DB8;
  v2 = (a1 + 1);
  sub_100087E4C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10008815C(uint64_t this)
{
  v1 = this;
  if (!*(this + 76))
  {
    goto LABEL_43;
  }

  if ((*(this + 76) & 1) == 0 || (v2 = *(this + 16), v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    if ((*(this + 76) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((*(this + 76) & 2) != 0)
  {
LABEL_7:
    this = *(this + 24);
    if (this)
    {
      if (*(this + 36))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
      }

      v3 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v3)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

LABEL_13:
  if ((*(v1 + 76) & 4) != 0)
  {
    this = *(v1 + 32);
    if (this)
    {
      if (*(this + 36))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
      }

      v4 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v4)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 76) & 8) != 0)
  {
    this = *(v1 + 40);
    if (this)
    {
      if (*(this + 36))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
      }

      v5 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 76) & 0x10) != 0)
  {
    this = *(v1 + 48);
    if (this)
    {
      if (*(this + 36))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
      }

      v6 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v6)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 76) & 0x20) != 0)
  {
    this = *(v1 + 56);
    if (this)
    {
      if (*(this + 36))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
      }

      v7 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v7)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 76) & 0x40) != 0)
  {
    this = *(v1 + 64);
    if (this)
    {
      if (*(this + 36))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
      }

      v8 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v8)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

LABEL_43:
  v10 = *(v1 + 8);
  v9 = (v1 + 8);
  *(v9 + 17) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return this;
}

uint64_t sub_1000882F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              goto LABEL_43;
            }

            *(a1 + 76) |= 1u;
            if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            if (v17 < *(this + 2) && *v17 == 18)
            {
              *(this + 1) = v17 + 1;
LABEL_46:
              *(a1 + 76) |= 2u;
              v22 = *(a1 + 24);
              if (!v22)
              {
                operator new();
              }

              v72 = 0;
              v23 = *(this + 1);
              if (v23 >= *(this + 2) || *v23 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
                {
                  return 0;
                }
              }

              else
              {
                v72 = *v23;
                *(this + 1) = v23 + 1;
              }

              v24 = *(this + 14);
              v25 = *(this + 15);
              *(this + 14) = v24 + 1;
              if (v24 >= v25)
              {
                return 0;
              }

              v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
              if (!sub_100087464(v22, this, v27, v28) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
              v29 = *(this + 14);
              v30 = __OFSUB__(v29, 1);
              v31 = v29 - 1;
              if (v31 < 0 == v30)
              {
                *(this + 14) = v31;
              }

              v32 = *(this + 1);
              if (v32 < *(this + 2) && *v32 == 26)
              {
                *(this + 1) = v32 + 1;
                *(a1 + 76) |= 4u;
                v12 = *(a1 + 32);
                if (!v12)
                {
LABEL_60:
                  operator new();
                }

                goto LABEL_19;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if (v9 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_46;
            }

            if (v8 != 3 || v9 != 2)
            {
              goto LABEL_43;
            }

            *(a1 + 76) |= 4u;
            v12 = *(a1 + 32);
            if (!v12)
            {
              goto LABEL_60;
            }

LABEL_19:
            v72 = 0;
            v13 = *(this + 1);
            if (v13 >= *(this + 2) || *v13 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
              {
                return 0;
              }
            }

            else
            {
              v72 = *v13;
              *(this + 1) = v13 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
            if (!sub_100087464(v12, this, v36, v37) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v38 = *(this + 14);
            v30 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v30)
            {
              *(this + 14) = v39;
            }

            v40 = *(this + 1);
            if (v40 < *(this + 2) && *v40 == 34)
            {
              *(this + 1) = v40 + 1;
              *(a1 + 76) |= 8u;
              v18 = *(a1 + 40);
              if (!v18)
              {
LABEL_72:
                operator new();
              }

              goto LABEL_36;
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if (v9 != 2)
          {
            goto LABEL_43;
          }

          *(a1 + 76) |= 8u;
          v18 = *(a1 + 40);
          if (!v18)
          {
            goto LABEL_72;
          }

LABEL_36:
          v72 = 0;
          v19 = *(this + 1);
          if (v19 >= *(this + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
            {
              return 0;
            }
          }

          else
          {
            v72 = *v19;
            *(this + 1) = v19 + 1;
          }

          v41 = *(this + 14);
          v42 = *(this + 15);
          *(this + 14) = v41 + 1;
          if (v41 >= v42)
          {
            return 0;
          }

          v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
          if (!sub_100087464(v18, this, v44, v45) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v43);
          v46 = *(this + 14);
          v30 = __OFSUB__(v46, 1);
          v47 = v46 - 1;
          if (v47 < 0 == v30)
          {
            *(this + 14) = v47;
          }

          v48 = *(this + 1);
          if (v48 < *(this + 2) && *v48 == 42)
          {
            *(this + 1) = v48 + 1;
            *(a1 + 76) |= 0x10u;
            v10 = *(a1 + 48);
            if (!v10)
            {
LABEL_84:
              operator new();
            }

            goto LABEL_12;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_43;
          }

          *(a1 + 76) |= 0x10u;
          v10 = *(a1 + 48);
          if (!v10)
          {
            goto LABEL_84;
          }

LABEL_12:
          v72 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
            {
              return 0;
            }
          }

          else
          {
            v72 = *v11;
            *(this + 1) = v11 + 1;
          }

          v49 = *(this + 14);
          v50 = *(this + 15);
          *(this + 14) = v49 + 1;
          if (v49 >= v50)
          {
            return 0;
          }

          v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
          if (!sub_100087464(v10, this, v52, v53) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v51);
          v54 = *(this + 14);
          v30 = __OFSUB__(v54, 1);
          v55 = v54 - 1;
          if (v55 < 0 == v30)
          {
            *(this + 14) = v55;
          }

          v56 = *(this + 1);
          if (v56 < *(this + 2) && *v56 == 50)
          {
            *(this + 1) = v56 + 1;
            *(a1 + 76) |= 0x20u;
            v20 = *(a1 + 56);
            if (!v20)
            {
LABEL_96:
              operator new();
            }

            goto LABEL_40;
          }
        }
      }

      if (v8 != 6)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_43;
      }

      *(a1 + 76) |= 0x20u;
      v20 = *(a1 + 56);
      if (!v20)
      {
        goto LABEL_96;
      }

LABEL_40:
      v72 = 0;
      v21 = *(this + 1);
      if (v21 >= *(this + 2) || *v21 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
        {
          return 0;
        }
      }

      else
      {
        v72 = *v21;
        *(this + 1) = v21 + 1;
      }

      v57 = *(this + 14);
      v58 = *(this + 15);
      *(this + 14) = v57 + 1;
      if (v57 >= v58)
      {
        return 0;
      }

      v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
      if (!sub_100087464(v20, this, v60, v61) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
      v62 = *(this + 14);
      v30 = __OFSUB__(v62, 1);
      v63 = v62 - 1;
      if (v63 < 0 == v30)
      {
        *(this + 14) = v63;
      }

      v64 = *(this + 1);
      if (v64 < *(this + 2) && *v64 == 58)
      {
        *(this + 1) = v64 + 1;
        *(a1 + 76) |= 0x40u;
        v14 = *(a1 + 64);
        if (!v14)
        {
LABEL_108:
          operator new();
        }

LABEL_25:
        v72 = 0;
        v15 = *(this + 1);
        if (v15 >= *(this + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v72))
          {
            return 0;
          }
        }

        else
        {
          v72 = *v15;
          *(this + 1) = v15 + 1;
        }

        v65 = *(this + 14);
        v66 = *(this + 15);
        *(this + 14) = v65 + 1;
        if (v65 >= v66)
        {
          return 0;
        }

        v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
        if (!sub_100087464(v14, this, v68, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
        v70 = *(this + 14);
        v30 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v30)
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

    if (v8 == 7 && v9 == 2)
    {
      *(a1 + 76) |= 0x40u;
      v14 = *(a1 + 64);
      if (!v14)
      {
        goto LABEL_108;
      }

      goto LABEL_25;
    }

LABEL_43:
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

uint64_t sub_100088BD8(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DC90 + 24), a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v13 = *(v5 + 40);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DC90 + 40), a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v15 = *(v5 + 56);
    if (v15)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v15, a2, a4);
      if ((*(v5 + 76) & 0x40) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DC90 + 56), a2, a4);
      if ((*(v5 + 76) & 0x40) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_35;
  }

  v10 = *(result + 16);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v12 = *(v5 + 32);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 8) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DC90 + 32), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 8) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_23:
  v14 = *(v5 + 48);
  if (v14)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v14, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045DC90 + 48), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_31:
  v16 = *(v5 + 64);
  if (v16)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v16, a2, a4);
    v17 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v17;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DC90 + 64), a2, a4);
    v18 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v18;
    if (!v18)
    {
      return result;
    }
  }

LABEL_35:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}