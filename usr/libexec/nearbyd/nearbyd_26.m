void sub_100159F4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100159F60(void *a1)
{
  *a1 = off_100997608;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100159FC0(uint64_t a1, uint64_t a2)
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
    sub_1000778F4((a1 + 16), *(a1 + 24) + v4);
    memcpy((*(a1 + 16) + 8 * *(a1 + 24)), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015A080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015A098(void *a1)
{
  *a1 = off_100997608;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015A110(void *a1)
{
  sub_10015A098(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015A1B4(uint64_t a1)
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

uint64_t sub_10015A1CC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if ((TagFallback & 0xFFFFFFF8) == 8)
    {
      if (v8 == 1)
      {
        while (1)
        {
          v22[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22) & 1) == 0)
          {
            return 0;
          }

          v10 = v22[0];
          v11 = *(a1 + 24);
          if (v11 == *(a1 + 28))
          {
            sub_1000778F4((a1 + 16), v11 + 1);
            v11 = *(a1 + 24);
          }

          v12 = *(a1 + 16);
          v13 = v11 + 1;
          *(a1 + 24) = v11 + 1;
          *(v12 + 8 * v11) = v10;
          v14 = *(this + 1);
          v15 = *(this + 4) - v14;
          if (v15 >= 1)
          {
            v16 = v15 / 9u;
            v17 = v16 >= *(a1 + 28) - v13 ? *(a1 + 28) - v13 : v16;
            if (v17 >= 1)
            {
              v18 = 0;
              while (*v14 == 9)
              {
                v19 = *(v14 + 1);
                if (v13 >= *(a1 + 28))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
                  v13 = *(a1 + 24);
                  v12 = *(a1 + 16);
                }

                *(a1 + 24) = v13 + 1;
                *(v12 + 8 * v13) = v19;
                ++v18;
                v14 += 9;
                ++v13;
                if (v17 == v18)
                {
                  v18 = v17;
                  goto LABEL_29;
                }
              }

              if (!v18)
              {
                goto LABEL_30;
              }

LABEL_29:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v18);
            }
          }

LABEL_30:
          v20 = *(this + 1);
          v21 = *(this + 2);
          if (v20 >= v21 || *v20 != 9)
          {
            if (v20 == v21 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          *(this + 1) = v20 + 1;
        }
      }

      if (v8 == 2)
      {
        break;
      }
    }

    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_100063F88(this, a1 + 16);
  if (result)
  {
    goto LABEL_30;
  }

  return result;
}

void sub_10015A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015A448(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 24) >= 1)
  {
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(*(v4 + 16) + 8 * v5++), a3);
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

uint64_t sub_10015A4E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a1 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 16) + 8 * v3);
      *a2 = 9;
      *(a2 + 1) = v4;
      a2 += 9;
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

uint64_t sub_10015A574(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  v6 = (9 * *(v3 + 4));
  if (v5 && *v4 != v4[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2) + v6;
  }

  *(a1 + 32) = v6;
  return v6;
}

uint64_t sub_10015A5C0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100159FC0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015A694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015A6AC(uint64_t result, uint64_t a2)
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

uint64_t sub_10015A740()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE420;
}

void sub_10015A7D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015A7E8(uint64_t a1)
{
  *a1 = off_1009976B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10015A850(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_10015B1A4((a1 + 6), a2 + 24);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 16);
      a1[13] |= 1u;
      a1[4] = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      a1[13] |= 2u;
      a1[5] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_10015A914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015A92C(uint64_t *a1)
{
  *a1 = off_1009976B8;
  sub_100077C08(a1 + 3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015A990(uint64_t *a1)
{
  sub_10015A92C(a1);

  operator delete();
}

uint64_t sub_10015AA34(uint64_t a1)
{
  if (*(a1 + 52))
  {
    *(a1 + 16) = 0;
  }

  result = sub_100077B98(a1 + 24);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 11) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_10015AA94(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v9 == 2)
        {
          goto LABEL_32;
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

      v33 = 0;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
        if (!result)
        {
          return result;
        }

        v12 = v33;
        v13 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      a1[4] = v12;
      a1[13] |= 1u;
      if (v13 < v10 && *v13 == 16)
      {
        v14 = v13 + 1;
        *(this + 1) = v14;
LABEL_24:
        v32 = 0;
        if (v14 >= v10 || (v16 = *v14, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
          if (!result)
          {
            return result;
          }

          v16 = v32;
          v17 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v17 = v14 + 1;
          *(this + 1) = v17;
        }

        a1[5] = v16;
        a1[13] |= 2u;
        if (v17 < v10 && *v17 == 26)
        {
          do
          {
            *(this + 1) = v17 + 1;
LABEL_32:
            v18 = a1[9];
            v19 = a1[8];
            if (v19 >= v18)
            {
              if (v18 == a1[10])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 6), v18 + 1);
                v18 = a1[9];
              }

              a1[9] = v18 + 1;
              sub_1001667FC();
            }

            v20 = *(a1 + 3);
            a1[8] = v19 + 1;
            v21 = *(v20 + 8 * v19);
            v34 = 0;
            v22 = *(this + 1);
            if (v22 >= *(this + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
              {
                return 0;
              }
            }

            else
            {
              v34 = *v22;
              *(this + 1) = v22 + 1;
            }

            v23 = *(this + 14);
            v24 = *(this + 15);
            *(this + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
            if (!sub_10015A1CC(v21, this, v26, v27) || *(this + 36) != 1)
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

            v17 = *(this + 1);
            v31 = *(this + 2);
          }

          while (v17 < v31 && *v17 == 26);
          if (v17 == v31 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      v14 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_24;
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
}

uint64_t sub_10015AD78(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 20), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 24) + 8 * v7++), a2, a4);
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

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015AE44(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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
  if (*(this + 8) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 3) + 8 * v11);
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

      v3 = sub_10015A4E4(v12, v14, a3);
      ++v11;
    }

    while (v11 < *(this + 8));
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

uint64_t sub_10015AF90(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

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
      if ((*(a1 + 52) & 2) == 0)
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
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_19:
  v8 = *(a1 + 32);
  v9 = (v8 + v4);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_10015A574(*(*(a1 + 24) + 8 * v10), a2);
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

    while (v10 < *(a1 + 32));
  }

  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v9;
  }

  *(a1 + 48) = v9;
  return v9;
}

uint64_t sub_10015B0B8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015A850(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015B18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B1A4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1001667FC();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100159FC0(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10015B2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B2E4(uint64_t result, uint64_t a2)
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

uint64_t sub_10015B378()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE410;
}

void sub_10015B40C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B420(uint64_t a1)
{
  *a1 = off_100997768;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_10015B498(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9F68 + 16);
      }

      sub_100158E18(v5, v6);
      v4 = *(a2 + 48);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9F68 + 24);
      }

      sub_1001596EC(v7, v8);
      v4 = *(a2 + 48);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 48) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9F68 + 32);
      }

      sub_10015A850(v9, v10);
      v4 = *(a2 + 48);
    }

    if ((v4 & 8) != 0)
    {
      v11 = *(a2 + 40);
      if ((v11 - 1) >= 0xA)
      {
        sub_10049E4EC();
      }

      *(a1 + 48) |= 8u;
      *(a1 + 40) = v11;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015B6A0(void *a1)
{
  *a1 = off_100997768;
  v2 = (a1 + 1);
  sub_10015B700(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10015B700(void *result)
{
  if (qword_1009F9F68 != result)
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

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10015B7D0(void *a1)
{
  sub_10015B6A0(a1);

  operator delete();
}

uint64_t sub_10015B874(uint64_t this)
{
  v1 = this;
  if (*(this + 48))
  {
    if (*(this + 48))
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

    if ((*(v1 + 48) & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 48) & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_10015AA34(this);
      }
    }

    *(v1 + 40) = 1;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 10) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10015B940(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 3)
        {
          if (v8 == 4 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_62;
          }

          goto LABEL_22;
        }

        if (v9 != 2)
        {
          goto LABEL_22;
        }

LABEL_48:
        *(a1 + 48) |= 4u;
        v33 = *(a1 + 32);
        if (!v33)
        {
          operator new();
        }

        v45 = 0;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45))
          {
            return 0;
          }
        }

        else
        {
          v45 = *v34;
          *(this + 1) = v34 + 1;
        }

        v35 = *(this + 14);
        v36 = *(this + 15);
        *(this + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v45);
        if (!sub_10015AA94(v33, this, v38, v39) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
        v40 = *(this + 14);
        v20 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v41 < 0 == v20)
        {
          *(this + 14) = v41;
        }

        v42 = *(this + 1);
        v10 = *(this + 2);
        if (v42 < v10 && *v42 == 32)
        {
          v11 = v42 + 1;
          *(this + 1) = v11;
LABEL_62:
          v45 = 0;
          if (v11 >= v10 || (v43 = *v11, v43 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45);
            if (!result)
            {
              return result;
            }

            v43 = v45;
          }

          else
          {
            *(this + 1) = v11 + 1;
          }

          if ((v43 - 1) > 9)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v43);
          }

          else
          {
            *(a1 + 48) |= 8u;
            *(a1 + 40) = v43;
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

      if (v9 != 2)
      {
        goto LABEL_22;
      }

      *(a1 + 48) |= 1u;
      v12 = *(a1 + 16);
      if (!v12)
      {
        operator new();
      }

      v45 = 0;
      v13 = *(this + 1);
      if (v13 >= *(this + 2) || *v13 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45))
        {
          return 0;
        }
      }

      else
      {
        v45 = *v13;
        *(this + 1) = v13 + 1;
      }

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v45);
      if (!sub_10015905C(v12, this, v17, v18) || *(this + 36) != 1)
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
      if (v22 < *(this + 2) && *v22 == 18)
      {
        *(this + 1) = v22 + 1;
LABEL_34:
        *(a1 + 48) |= 2u;
        v23 = *(a1 + 24);
        if (!v23)
        {
          operator new();
        }

        v45 = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v45))
          {
            return 0;
          }
        }

        else
        {
          v45 = *v24;
          *(this + 1) = v24 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v45);
        if (!sub_100159930(v23, this, v28, v29) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
        v30 = *(this + 14);
        v20 = __OFSUB__(v30, 1);
        v31 = v30 - 1;
        if (v31 < 0 == v20)
        {
          *(this + 14) = v31;
        }

        v32 = *(this + 1);
        if (v32 < *(this + 2) && *v32 == 26)
        {
          *(this + 1) = v32 + 1;
          goto LABEL_48;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
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

uint64_t sub_10015BDBC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v10 = *(this + 16);
    if (!v10)
    {
      v10 = *(qword_1009F9F68 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_18:
      v12 = *(v5 + 32);
      if (!v12)
      {
        v12 = *(qword_1009F9F68 + 32);
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
      if ((*(v5 + 48) & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    v11 = *(qword_1009F9F68 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 40), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015BEB8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 12);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9F68 + 16);
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

    v3 = sub_1001592C8(v6, v9, a3);
    v5 = *(this + 12);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    v10 = *(qword_1009F9F68 + 24);
  }

  *v3 = 18;
  v11 = *(v10 + 40);
  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v11;
    v12 = v3 + 2;
  }

  v3 = sub_100159B9C(v10, v12, a3);
  v5 = *(this + 12);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v16 = *(this + 10);
    *v3 = 32;
    v17 = v3 + 1;
    if ((v16 & 0x80000000) != 0)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v16, v17, a3);
    }

    else
    {
      if (v16 <= 0x7F)
      {
        *(v3 + 1) = v16;
        v3 = (v3 + 2);
        goto LABEL_30;
      }

      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v17, a3);
    }

    v3 = v18;
    goto LABEL_30;
  }

LABEL_18:
  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(qword_1009F9F68 + 32);
  }

  *v3 = 26;
  v14 = v13[12];
  if (v14 > 0x7F)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v14;
    v15 = (v3 + 2);
  }

  v3 = sub_10015AE44(v13, v15, a3);
  if ((*(this + 12) & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_30:
  v21 = *(this + 1);
  v20 = (this + 8);
  v19 = v21;
  if (!v21 || *v19 == v19[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v20, v3, a3);
}

uint64_t sub_10015C064(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if (*(a1 + 48))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9F68 + 16);
    }

    v6 = sub_1001593F0(v5, a2);
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
    v3 = *(a1 + 48);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 48) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9F68 + 24);
    }

    v10 = sub_100159CC4(v9, a2);
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
    v3 = *(a1 + 48);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

LABEL_27:
    v17 = *(a1 + 40);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
    goto LABEL_33;
  }

  v13 = *(a1 + 32);
  if (!v13)
  {
    v13 = *(qword_1009F9F68 + 32);
  }

  v14 = sub_10015AF90(v13, a2);
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
  if ((*(a1 + 48) & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_33:
  v19 = *(a1 + 8);
  if (v19 && *v19 != v19[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 44) = v4;
  return v4;
}

uint64_t sub_10015C1DC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015B498(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015C2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015C2C8(uint64_t result, uint64_t a2)
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

uint64_t sub_10015C35C()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE3E0;
}

void sub_10015C3F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015C404(uint64_t a1)
{
  *a1 = off_100997818;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10015C464(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015C544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015C55C(uint64_t a1)
{
  *a1 = off_100997818;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015C5B0(uint64_t a1)
{
  *a1 = off_100997818;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015C684(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015C6A8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
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

uint64_t sub_10015C864(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  }

LABEL_5:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_10015C914(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((*(a1 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = *(a1 + 32);
    *a2 = 25;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_5:
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

uint64_t sub_10015CA3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
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

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_10015CAB0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015C464(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015CB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015CB9C(uint64_t result, uint64_t a2)
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

uint64_t sub_10015CC30()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE430;
}

void sub_10015CCC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015CCD8(uint64_t a1)
{
  *a1 = off_1009978C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10015CD40(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 92);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 92) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 92) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 32);
  *(a1 + 92) |= 4u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 40);
  *(a1 + 92) |= 8u;
  *(a1 + 40) = v11;
  v4 = *(a2 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v13 = *(a2 + 56);
    *(a1 + 92) |= 0x20u;
    *(a1 + 56) = v13;
    v4 = *(a2 + 92);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v12 = *(a2 + 48);
  *(a1 + 92) |= 0x10u;
  *(a1 + 48) = v12;
  v4 = *(a2 + 92);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v14 = *(a2 + 64);
  *(a1 + 92) |= 0x40u;
  *(a1 + 64) = v14;
  v4 = *(a2 + 92);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 72);
    *(a1 + 92) |= 0x80u;
    *(a1 + 72) = v5;
    v4 = *(a2 + 92);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 80);
    *(a1 + 92) |= 0x100u;
    *(a1 + 80) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015CEF8(uint64_t a1)
{
  *a1 = off_1009978C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015CF4C(uint64_t a1)
{
  *a1 = off_1009978C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015D020(uint64_t a1)
{
  v1 = *(a1 + 92);
  if (v1)
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 21) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10015D058(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v8 != 3)
          {
            if (v8 != 4 || v9 != 1)
            {
              goto LABEL_60;
            }

            goto LABEL_40;
          }

          if (v9 != 1)
          {
            goto LABEL_60;
          }

LABEL_36:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v19;
          *(a1 + 92) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
LABEL_40:
            v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = v19;
            *(a1 + 92) |= 8u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 41)
            {
              *(this + 1) = v13 + 1;
LABEL_47:
              v19 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = v19;
              *(a1 + 92) |= 0x10u;
              v14 = *(this + 1);
              if (v14 < *(this + 2) && *v14 == 49)
              {
                *(this + 1) = v14 + 1;
LABEL_51:
                v19 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = v19;
                *(a1 + 92) |= 0x20u;
                v15 = *(this + 1);
                if (v15 < *(this + 2) && *v15 == 57)
                {
                  *(this + 1) = v15 + 1;
LABEL_55:
                  v19 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 64) = v19;
                  *(a1 + 92) |= 0x40u;
                  v16 = *(this + 1);
                  if (v16 < *(this + 2) && *v16 == 65)
                  {
                    *(this + 1) = v16 + 1;
                    goto LABEL_63;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 1)
            {
              goto LABEL_60;
            }

            goto LABEL_31;
          }

          if (v9 != 1)
          {
            goto LABEL_60;
          }

          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v19;
          *(a1 + 92) |= 1u;
          v10 = *(this + 1);
          if (v10 < *(this + 2) && *v10 == 17)
          {
            *(this + 1) = v10 + 1;
LABEL_31:
            v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v19;
            *(a1 + 92) |= 2u;
            v11 = *(this + 1);
            if (v11 < *(this + 2) && *v11 == 25)
            {
              *(this + 1) = v11 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v8 == 7)
      {
        if (v9 != 1)
        {
          goto LABEL_60;
        }

        goto LABEL_55;
      }

      if (v8 == 8)
      {
        if (v9 != 1)
        {
          goto LABEL_60;
        }

LABEL_63:
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = v19;
        *(a1 + 92) |= 0x80u;
        v17 = *(this + 1);
        if (v17 < *(this + 2) && *v17 == 73)
        {
          *(this + 1) = v17 + 1;
          goto LABEL_67;
        }
      }

      else
      {
        if (v8 != 9 || v9 != 1)
        {
          goto LABEL_60;
        }

LABEL_67:
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = v19;
        *(a1 + 92) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 5)
    {
      if (v9 != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    if (v8 == 6 && v9 == 1)
    {
      goto LABEL_51;
    }

LABEL_60:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10015D454(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 92);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v5 = *(v4 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  v5 = *(v4 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v4 + 72), a3);
    if ((*(v4 + 92) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v4 + 64), a3);
  v5 = *(v4 + 92);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if ((v5 & 0x100) != 0)
  {
LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v4 + 80), a3);
  }

LABEL_11:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_10015D5AC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 92);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
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
  v3 = *(a1 + 92);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v11;
  a2 += 9;
  v3 = *(a1 + 92);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v12;
  a2 += 9;
  v3 = *(a1 + 92);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v13;
  a2 += 9;
  v3 = *(a1 + 92);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = *(a1 + 56);
  *a2 = 49;
  *(a2 + 1) = v14;
  a2 += 9;
  v3 = *(a1 + 92);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_22:
    v16 = *(a1 + 72);
    *a2 = 65;
    *(a2 + 1) = v16;
    a2 += 9;
    if ((*(a1 + 92) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v15 = *(a1 + 64);
  *a2 = 57;
  *(a2 + 1) = v15;
  a2 += 9;
  v3 = *(a1 + 92);
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v3 & 0x100) != 0)
  {
LABEL_10:
    v4 = *(a1 + 80);
    *a2 = 73;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_11:
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

uint64_t sub_10015D8E4(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[23];
  if (v3)
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
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  v6 = (a1 + 2);
  v7 = *(a1 + 1);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  a1[22] = v5;
  return v5;
}

uint64_t sub_10015D9AC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015CD40(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015DA98(uint64_t result, uint64_t a2)
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

uint64_t sub_10015DB2C()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE440;
}

void sub_10015DBC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015DBD4(uint64_t a1)
{
  *a1 = off_100997978;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10015DC3C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  v4 = *(a2 + 92);
  if (!v4)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 92) |= 1u;
    *(a1 + 24) = v5;
    v4 = *(a2 + 92);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 92) |= 2u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9F60 + 16);
    }

    sub_10015F420(v6, v7);
    v4 = *(a2 + 92);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 28);
    if (v8 >= 4)
    {
      sub_10049E518();
    }

    *(a1 + 92) |= 4u;
    *(a1 + 28) = v8;
    v4 = *(a2 + 92);
  }

  if ((v4 & 8) != 0)
  {
    v17 = *(a2 + 32);
    *(a1 + 92) |= 8u;
    *(a1 + 32) = v17;
    v4 = *(a2 + 92);
    if ((v4 & 0x10) == 0)
    {
LABEL_17:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_18;
      }

LABEL_43:
      v19 = *(a2 + 48);
      *(a1 + 92) |= 0x20u;
      *(a1 + 48) = v19;
      v4 = *(a2 + 92);
      if ((v4 & 0x40) == 0)
      {
LABEL_19:
        if ((v4 & 0x80) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(a2 + 40);
  *(a1 + 92) |= 0x10u;
  *(a1 + 40) = v18;
  v4 = *(a2 + 92);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_18:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_44:
  v20 = *(a2 + 56);
  *(a1 + 92) |= 0x40u;
  *(a1 + 56) = v20;
  v4 = *(a2 + 92);
  if ((v4 & 0x80) != 0)
  {
LABEL_20:
    v9 = *(a2 + 60);
    *(a1 + 92) |= 0x80u;
    *(a1 + 60) = v9;
    v4 = *(a2 + 92);
  }

LABEL_21:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 92) |= 0x100u;
      v10 = *(a1 + 64);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 64);
      if (!v11)
      {
        v11 = *(qword_1009F9F60 + 64);
      }

      sub_10015B498(v10, v11);
      v4 = *(a2 + 92);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 92) |= 0x200u;
      v12 = *(a1 + 72);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 72);
      if (!v13)
      {
        v13 = *(qword_1009F9F60 + 72);
      }

      sub_10015C464(v12, v13);
      v4 = *(a2 + 92);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 92) |= 0x400u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 80);
      if (!v15)
      {
        v15 = *(qword_1009F9F60 + 80);
      }

      sub_10015CD40(v14, v15);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10015DF6C(void *a1)
{
  *a1 = off_100997978;
  v2 = (a1 + 1);
  sub_10015DFCC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10015DFCC(void *result)
{
  if (qword_1009F9F60 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[8];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[9];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = v1[10];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_10015E0C8(void *a1)
{
  sub_10015DF6C(a1);

  operator delete();
}

uint64_t sub_10015E16C(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 24) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10015E248(this);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 60) = 0;
    *(v1 + 44) = 0u;
    *(v1 + 28) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_10015B874(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 93) & 4) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = sub_10015D020(this);
      }
    }
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 21) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10015E248(uint64_t this)
{
  v1 = this;
  if (*(this + 36))
  {
    if (*(this + 36))
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

    if ((*(v1 + 36) & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        if (*(this + 68))
        {
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 16) = 0u;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 60) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 7) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10015E2FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
                goto LABEL_43;
              }

              v14 = *(a1 + 92);
              goto LABEL_52;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v16 = *(this + 1);
            v15 = *(this + 2);
            if (v16 >= v15 || (v17 = *v16, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v18 = *(this + 1);
              v15 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v17;
              v18 = v16 + 1;
              *(this + 1) = v18;
            }

            v14 = *(a1 + 92) | 1;
            *(a1 + 92) = v14;
            if (v18 < v15 && *v18 == 18)
            {
              *(this + 1) = v18 + 1;
LABEL_52:
              *(a1 + 92) = v14 | 2;
              v24 = *(a1 + 16);
              if (!v24)
              {
                operator new();
              }

              v74[0] = 0;
              v25 = *(this + 1);
              if (v25 >= *(this + 2) || *v25 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
                {
                  return 0;
                }
              }

              else
              {
                v74[0] = *v25;
                *(this + 1) = v25 + 1;
              }

              v26 = *(this + 14);
              v27 = *(this + 15);
              *(this + 14) = v26 + 1;
              if (v26 >= v27)
              {
                return 0;
              }

              v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74[0]);
              if (!sub_100164A50(v24, this, v29, v30) || *(this + 36) != 1)
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

              v34 = *(this + 1);
              v20 = *(this + 2);
              if (v34 < v20 && *v34 == 24)
              {
                v21 = v34 + 1;
                *(this + 1) = v21;
LABEL_66:
                v74[0] = 0;
                if (v21 >= v20 || (v35 = *v21, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v74[0];
                }

                else
                {
                  *(this + 1) = v21 + 1;
                }

                if (v35 > 3)
                {
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v35);
                }

                else
                {
                  *(a1 + 92) |= 4u;
                  *(a1 + 28) = v35;
                }

                v36 = *(this + 1);
                if (v36 < *(this + 2) && *v36 == 33)
                {
                  *(this + 1) = v36 + 1;
                  goto LABEL_77;
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
                goto LABEL_43;
              }

              v21 = *(this + 1);
              v20 = *(this + 2);
              goto LABEL_66;
            }

            if (v8 != 4)
            {
              if (v8 != 5 || (TagFallback & 7) != 0)
              {
                goto LABEL_43;
              }

              v13 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_81;
            }

            if (v9 != 1)
            {
              goto LABEL_43;
            }

LABEL_77:
            *v74 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v74) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v74;
            *(a1 + 92) |= 8u;
            v37 = *(this + 1);
            v12 = *(this + 2);
            if (v37 < v12 && *v37 == 40)
            {
              v13 = v37 + 1;
              *(this + 1) = v13;
LABEL_81:
              if (v13 >= v12 || (v38 = *v13, v38 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v39 = *(this + 1);
                v12 = *(this + 2);
              }

              else
              {
                *(a1 + 40) = v38;
                v39 = v13 + 1;
                *(this + 1) = v39;
              }

              *(a1 + 92) |= 0x10u;
              if (v39 < v12 && *v39 == 49)
              {
                *(this + 1) = v39 + 1;
LABEL_89:
                *v74 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v74) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 48) = *v74;
                *(a1 + 92) |= 0x20u;
                v40 = *(this + 1);
                v10 = *(this + 2);
                if (v40 < v10 && *v40 == 56)
                {
                  v19 = v40 + 1;
                  *(this + 1) = v19;
                  goto LABEL_93;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v8 == 9)
        {
          if (v9 != 2)
          {
            goto LABEL_43;
          }

          v22 = *(a1 + 92);
LABEL_109:
          *(a1 + 92) = v22 | 0x100;
          v45 = *(a1 + 64);
          if (!v45)
          {
            operator new();
          }

          v74[0] = 0;
          v46 = *(this + 1);
          if (v46 >= *(this + 2) || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
            {
              return 0;
            }
          }

          else
          {
            v74[0] = *v46;
            *(this + 1) = v46 + 1;
          }

          v47 = *(this + 14);
          v48 = *(this + 15);
          *(this + 14) = v47 + 1;
          if (v47 >= v48)
          {
            return 0;
          }

          v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74[0]);
          if (!sub_10015B940(v45, this, v50, v51) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v49);
          v52 = *(this + 14);
          v32 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v32)
          {
            *(this + 14) = v53;
          }

          v54 = *(this + 1);
          if (v54 < *(this + 2) && *v54 == 82)
          {
            *(this + 1) = v54 + 1;
LABEL_123:
            *(a1 + 92) |= 0x200u;
            v55 = *(a1 + 72);
            if (!v55)
            {
              operator new();
            }

            v74[0] = 0;
            v56 = *(this + 1);
            if (v56 >= *(this + 2) || *v56 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
              {
                return 0;
              }
            }

            else
            {
              v74[0] = *v56;
              *(this + 1) = v56 + 1;
            }

            v57 = *(this + 14);
            v58 = *(this + 15);
            *(this + 14) = v57 + 1;
            if (v57 >= v58)
            {
              return 0;
            }

            v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74[0]);
            if (!sub_10015C6A8(v55, this, v60, v61) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
            v62 = *(this + 14);
            v32 = __OFSUB__(v62, 1);
            v63 = v62 - 1;
            if (v63 < 0 == v32)
            {
              *(this + 14) = v63;
            }

            v64 = *(this + 1);
            if (v64 < *(this + 2) && *v64 == 90)
            {
              *(this + 1) = v64 + 1;
              goto LABEL_137;
            }
          }
        }

        else
        {
          if (v8 == 10)
          {
            if (v9 == 2)
            {
              goto LABEL_123;
            }

            goto LABEL_43;
          }

          if (v8 != 11 || v9 != 2)
          {
            goto LABEL_43;
          }

LABEL_137:
          *(a1 + 92) |= 0x400u;
          v65 = *(a1 + 80);
          if (!v65)
          {
            operator new();
          }

          v74[0] = 0;
          v66 = *(this + 1);
          if (v66 >= *(this + 2) || *v66 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74))
            {
              return 0;
            }
          }

          else
          {
            v74[0] = *v66;
            *(this + 1) = v66 + 1;
          }

          v67 = *(this + 14);
          v68 = *(this + 15);
          *(this + 14) = v67 + 1;
          if (v67 >= v68)
          {
            return 0;
          }

          v69 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v74[0]);
          if (!sub_10015D058(v65, this, v70, v71) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v69);
          v72 = *(this + 14);
          v32 = __OFSUB__(v72, 1);
          v73 = v72 - 1;
          if (v73 < 0 == v32)
          {
            *(this + 14) = v73;
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

      if (v8 == 6)
      {
        if (v9 != 1)
        {
          goto LABEL_43;
        }

        goto LABEL_89;
      }

      if (v8 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v19 = *(this + 1);
      v10 = *(this + 2);
LABEL_93:
      v74[0] = 0;
      if (v19 >= v10 || (v41 = *v19, (v41 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74);
        if (!result)
        {
          return result;
        }

        v41 = v74[0];
        v42 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v42 = v19 + 1;
        *(this + 1) = v42;
      }

      *(a1 + 56) = v41;
      *(a1 + 92) |= 0x40u;
      if (v42 < v10 && *v42 == 64)
      {
        v11 = v42 + 1;
        *(this + 1) = v11;
LABEL_101:
        v74[0] = 0;
        if (v11 >= v10 || (v43 = *v11, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v74);
          if (!result)
          {
            return result;
          }

          v43 = v74[0];
          v44 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v44 = v11 + 1;
          *(this + 1) = v44;
        }

        *(a1 + 60) = v43;
        v22 = *(a1 + 92) | 0x80;
        *(a1 + 92) = v22;
        if (v44 < v10 && *v44 == 74)
        {
          *(this + 1) = v44 + 1;
          goto LABEL_109;
        }
      }
    }

    if (v8 == 8 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_101;
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

uint64_t sub_10015EB48(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_1009F9F60 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 60), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 64);
  if (!v8)
  {
    v8 = *(qword_1009F9F60 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v8, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 72);
  if (!v9)
  {
    v9 = *(qword_1009F9F60 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v9, a2, a4);
  if ((*(v5 + 92) & 0x400) != 0)
  {
LABEL_29:
    v10 = *(v5 + 80);
    if (!v10)
    {
      v10 = *(qword_1009F9F60 + 80);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, v10, a2, a4);
  }

LABEL_32:
  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10015ED18(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 92))
  {
    v5 = *(this + 6);
    *a2 = 8;
    v6 = a2 + 1;
    if (v5 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    else
    {
      *(v3 + 1) = v5;
      v3 = (v3 + 2);
    }
  }

  v7 = *(this + 23);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(qword_1009F9F60 + 16);
    }

    *v3 = 18;
    v9 = v8[8];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v10 = (v3 + 2);
    }

    v3 = sub_100164DE0(v8, v10, a3);
    v7 = *(this + 23);
  }

  if ((v7 & 4) != 0)
  {
    v11 = *(this + 7);
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
        goto LABEL_19;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    }

    v3 = v13;
  }

LABEL_19:
  v14 = *(this + 23);
  if ((v14 & 8) != 0)
  {
    v15 = *(this + 4);
    *v3 = 33;
    *(v3 + 1) = v15;
    v3 = (v3 + 9);
    v14 = *(this + 23);
    if ((v14 & 0x10) == 0)
    {
LABEL_21:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if ((v14 & 0x10) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(this + 5);
  *v3 = 40;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v16, v3 + 1, a3);
  v14 = *(this + 23);
  if ((v14 & 0x20) == 0)
  {
LABEL_22:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = *(this + 6);
  *v3 = 49;
  *(v3 + 1) = v17;
  v3 = (v3 + 9);
  if ((*(this + 23) & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v18 = *(this + 14);
  *v3 = 56;
  v19 = v3 + 1;
  if ((v18 & 0x80000000) != 0)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
  }

  else
  {
    if (v18 <= 0x7F)
    {
      *(v3 + 1) = v18;
      v3 = (v3 + 2);
      goto LABEL_33;
    }

    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
  }

  v3 = v20;
LABEL_33:
  if ((*(this + 92) & 0x80) == 0)
  {
    goto LABEL_40;
  }

  v21 = *(this + 15);
  *v3 = 64;
  v22 = v3 + 1;
  if ((v21 & 0x80000000) != 0)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
  }

  else
  {
    if (v21 <= 0x7F)
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
      goto LABEL_40;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
  }

  v3 = v23;
LABEL_40:
  v24 = *(this + 23);
  if ((v24 & 0x100) != 0)
  {
    v25 = *(this + 8);
    if (!v25)
    {
      v25 = *(qword_1009F9F60 + 64);
    }

    *v3 = 74;
    v26 = v25[11];
    if (v26 > 0x7F)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v26;
      v27 = (v3 + 2);
    }

    v3 = sub_10015BEB8(v25, v27, a3);
    v24 = *(this + 23);
    if ((v24 & 0x200) == 0)
    {
LABEL_42:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_56;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_42;
  }

  v28 = *(this + 9);
  if (!v28)
  {
    v28 = *(qword_1009F9F60 + 72);
  }

  *v3 = 82;
  v29 = *(v28 + 40);
  if (v29 > 0x7F)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v29;
    v30 = v3 + 2;
  }

  v3 = sub_10015C914(v28, v30, a3);
  if ((*(this + 23) & 0x400) != 0)
  {
LABEL_56:
    v31 = *(this + 10);
    if (!v31)
    {
      v31 = *(qword_1009F9F60 + 80);
    }

    *v3 = 90;
    v32 = *(v31 + 88);
    if (v32 > 0x7F)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v32;
      v33 = v3 + 2;
    }

    v3 = sub_10015D5AC(v31, v33, a3);
  }

LABEL_62:
  v36 = *(this + 1);
  v35 = (this + 8);
  v34 = v36;
  if (!v36 || *v34 == v34[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v35, v3, a3);
}

uint64_t sub_10015F0A0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 92);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_45;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9F60 + 16);
    }

    v8 = sub_100164EE8(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v4 += v9 + v10 + 1;
    v3 = *(a1 + 92);
    goto LABEL_16;
  }

  v6 = *(a1 + 24);
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
  v3 = *(a1 + 92);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 28);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
  }

  if ((v3 & 8) != 0)
  {
    LODWORD(v5) = v4 + 9;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    LODWORD(v5) = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    v3 = *(a1 + 92);
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = (v5 + 9);
  }

  else
  {
    v5 = v5;
  }

  if ((v3 & 0x40) != 0)
  {
    v13 = *(a1 + 56);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v14 = 2;
    }

    v5 = (v14 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v15 = *(a1 + 60);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v16 = 2;
    }

    v5 = (v16 + v5);
  }

LABEL_45:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_68;
  }

  if ((v3 & 0x100) != 0)
  {
    v17 = *(a1 + 64);
    if (!v17)
    {
      v17 = *(qword_1009F9F60 + 64);
    }

    v18 = sub_10015C064(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    }

    else
    {
      v20 = 1;
    }

    v5 = (v5 + v19 + v20 + 1);
    v3 = *(a1 + 92);
    if ((v3 & 0x200) == 0)
    {
LABEL_48:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v21 = *(a1 + 72);
  if (!v21)
  {
    v21 = *(qword_1009F9F60 + 72);
  }

  v22 = sub_10015CA3C(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v5 = (v5 + v23 + v24 + 1);
  if ((*(a1 + 92) & 0x400) != 0)
  {
LABEL_62:
    v25 = *(a1 + 80);
    if (!v25)
    {
      v25 = *(qword_1009F9F60 + 80);
    }

    v26 = sub_10015D8E4(v25, a2);
    v27 = v26;
    if (v26 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    }

    else
    {
      v28 = 1;
    }

    v5 = (v5 + v27 + v28 + 1);
  }

LABEL_68:
  v29 = *(a1 + 8);
  if (v29 && *v29 != v29[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 88) = v5;
  return v5;
}

uint64_t sub_10015F334(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10015DC3C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015F420(uint64_t a1, uint64_t a2)
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
      *(a1 + 36) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9FC0 + 16);
      }

      sub_1001633F0(v5, v6);
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
        v8 = *(qword_1009F9FC0 + 24);
      }

      sub_100163CCC(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10015F598(uint64_t result, uint64_t a2)
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

uint64_t sub_10015F62C()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE3D0;
}

void sub_10015F6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015F6D4(uint64_t a1)
{
  *a1 = off_100997A28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_10015F744(void *a1)
{
  *a1 = off_100997A28;
  if (a1[4])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10015F7BC(void *a1)
{
  sub_10015F744(a1);

  operator delete();
}

uint64_t sub_10015F860(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 1)
        {
          goto LABEL_44;
        }

        v39[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v39[0];
        *(a1 + 148) |= 1u;
        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || *v10 != 16)
        {
          continue;
        }

        v11 = v10 + 1;
        *(this + 1) = v11;
        goto LABEL_32;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_32:
        if (v11 >= v9 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v14 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v13;
          v14 = (v11 + 1);
          *(this + 1) = v14;
        }

        *(a1 + 148) |= 2u;
        if (v14 < v9)
        {
          v16 = *v14;
          goto LABEL_52;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) == 0)
        {
          v15 = *(this + 1);
          v9 = *(this + 2);
          while (1)
          {
            v38 = 0;
            if (v15 >= v9 || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
              {
                return 0;
              }
            }

            else
            {
              v38 = *v15;
              *(this + 1) = v15 + 1;
            }

            v17 = *(a1 + 40);
            if (v17 == *(a1 + 44))
            {
              sub_100077844((a1 + 32), v17 + 1);
              v17 = *(a1 + 40);
            }

            v18 = v38;
            v19 = *(a1 + 32);
            *(a1 + 40) = v17 + 1;
            *(v19 + 4 * v17) = v18;
            v20 = *(a1 + 44) - *(a1 + 40);
            if (v20 >= 1)
            {
              v21 = v20 + 1;
              do
              {
                v22 = *(this + 1);
                v23 = *(this + 2);
                if (v22 >= v23 || *v22 != 24)
                {
                  break;
                }

                *(this + 1) = v22 + 1;
                if ((v22 + 1) >= v23 || v22[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38))
                  {
                    return 0;
                  }
                }

                else
                {
                  v38 = v22[1];
                  *(this + 1) = v22 + 2;
                }

                v24 = *(a1 + 40);
                if (v24 >= *(a1 + 44))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v39);
                  v24 = *(a1 + 40);
                }

                v25 = v38;
                v26 = *(a1 + 32);
                *(a1 + 40) = v24 + 1;
                *(v26 + 4 * v24) = v25;
                --v21;
              }

              while (v21 > 1);
            }

LABEL_71:
            v14 = *(this + 1);
            v9 = *(this + 2);
            if (v14 >= v9)
            {
              goto LABEL_1;
            }

            v16 = *v14;
            if (v16 == 33)
            {
              break;
            }

LABEL_52:
            if (v16 != 24)
            {
              goto LABEL_1;
            }

            v15 = (v14 + 1);
            *(this + 1) = v15;
          }

          *(this + 1) = v14 + 1;
LABEL_74:
          v39[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v39[0];
          *(a1 + 148) |= 8u;
          v27 = *(this + 1);
          if (v27 < *(this + 2) && *v27 == 41)
          {
            *(this + 1) = v27 + 1;
LABEL_78:
            v39[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 56) = v39[0];
            *(a1 + 148) |= 0x10u;
            v28 = *(this + 1);
            if (v28 < *(this + 2) && *v28 == 49)
            {
              *(this + 1) = v28 + 1;
LABEL_82:
              v39[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 64) = v39[0];
              *(a1 + 148) |= 0x20u;
              v29 = *(this + 1);
              if (v29 < *(this + 2) && *v29 == 57)
              {
                *(this + 1) = v29 + 1;
LABEL_86:
                v39[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 72) = v39[0];
                *(a1 + 148) |= 0x40u;
                v30 = *(this + 1);
                if (v30 < *(this + 2) && *v30 == 65)
                {
                  *(this + 1) = v30 + 1;
LABEL_90:
                  v39[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 80) = v39[0];
                  *(a1 + 148) |= 0x80u;
                  v31 = *(this + 1);
                  if (v31 < *(this + 2) && *v31 == 73)
                  {
                    *(this + 1) = v31 + 1;
LABEL_94:
                    v39[0] = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 88) = v39[0];
                    *(a1 + 148) |= 0x100u;
                    v32 = *(this + 1);
                    if (v32 < *(this + 2) && *v32 == 81)
                    {
                      *(this + 1) = v32 + 1;
LABEL_98:
                      v39[0] = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 96) = v39[0];
                      *(a1 + 148) |= 0x200u;
                      v33 = *(this + 1);
                      if (v33 < *(this + 2) && *v33 == 89)
                      {
                        *(this + 1) = v33 + 1;
LABEL_102:
                        v39[0] = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                        {
                          return 0;
                        }

                        *(a1 + 104) = v39[0];
                        *(a1 + 148) |= 0x400u;
                        v34 = *(this + 1);
                        if (v34 < *(this + 2) && *v34 == 97)
                        {
                          *(this + 1) = v34 + 1;
LABEL_106:
                          v39[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                          {
                            return 0;
                          }

                          *(a1 + 112) = v39[0];
                          *(a1 + 148) |= 0x800u;
                          v35 = *(this + 1);
                          if (v35 < *(this + 2) && *v35 == 105)
                          {
                            *(this + 1) = v35 + 1;
LABEL_110:
                            v39[0] = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                            {
                              return 0;
                            }

                            *(a1 + 120) = v39[0];
                            *(a1 + 148) |= 0x1000u;
                            v36 = *(this + 1);
                            if (v36 < *(this + 2) && *v36 == 113)
                            {
                              *(this + 1) = v36 + 1;
LABEL_114:
                              v39[0] = 0;
                              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                              {
                                return 0;
                              }

                              *(a1 + 128) = v39[0];
                              *(a1 + 148) |= 0x2000u;
                              v37 = *(this + 1);
                              if (v37 < *(this + 2) && *v37 == 121)
                              {
                                *(this + 1) = v37 + 1;
LABEL_118:
                                v39[0] = 0;
                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v39) & 1) == 0)
                                {
                                  return 0;
                                }

                                *(a1 + 136) = v39[0];
                                *(a1 + 148) |= 0x4000u;
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
            }
          }

          continue;
        }

        if (v8 != 2)
        {
LABEL_44:
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

        result = sub_1000A6548(this, a1 + 32);
        if (result)
        {
          goto LABEL_71;
        }

        return result;
      case 4u:
        if (v8 == 1)
        {
          goto LABEL_74;
        }

        goto LABEL_44;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_78;
        }

        goto LABEL_44;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_44;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_86;
        }

        goto LABEL_44;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_44;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_44;
        }

        goto LABEL_94;
      case 0xAu:
        if (v8 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_44;
      case 0xBu:
        if (v8 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_44;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_44;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_44;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_44;
      case 0xFu:
        if (v8 == 1)
        {
          goto LABEL_118;
        }

        goto LABEL_44;
      default:
        goto LABEL_44;
    }
  }
}

void sub_10015FF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015FF88(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 148);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 148);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  v8 = *(v5 + 148);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 48), a3);
    v8 = *(v5 + 148);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 56), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x40) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 72), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x80) == 0)
  {
LABEL_13:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 80), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x100) == 0)
  {
LABEL_14:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 88), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x200) == 0)
  {
LABEL_15:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 96), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x400) == 0)
  {
LABEL_16:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 104), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x800) == 0)
  {
LABEL_17:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 112), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x1000) == 0)
  {
LABEL_18:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

LABEL_37:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 128), a3);
    if ((*(v5 + 148) & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 120), a3);
  v8 = *(v5 + 148);
  if ((v8 & 0x2000) != 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if ((v8 & 0x4000) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 136), a3);
  }

LABEL_21:
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001601A4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 37);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 37);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    *v3 = 16;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, v3 + 1, a3);
  }

  if (*(this + 10) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 4) + 4 * v8);
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

      ++v8;
    }

    while (v8 < *(this + 10));
  }

  v10 = *(this + 37);
  if ((v10 & 8) != 0)
  {
    v16 = *(this + 6);
    *v3 = 33;
    *(v3 + 1) = v16;
    v3 = (v3 + 9);
    v10 = *(this + 37);
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(this + 7);
  *v3 = 41;
  *(v3 + 1) = v17;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x20) == 0)
  {
LABEL_14:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = *(this + 8);
  *v3 = 49;
  *(v3 + 1) = v18;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x40) == 0)
  {
LABEL_15:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = *(this + 9);
  *v3 = 57;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x80) == 0)
  {
LABEL_16:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = *(this + 10);
  *v3 = 65;
  *(v3 + 1) = v20;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x100) == 0)
  {
LABEL_17:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = *(this + 11);
  *v3 = 73;
  *(v3 + 1) = v21;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v22 = *(this + 12);
  *v3 = 81;
  *(v3 + 1) = v22;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = *(this + 13);
  *v3 = 89;
  *(v3 + 1) = v23;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x800) == 0)
  {
LABEL_20:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v24 = *(this + 14);
  *v3 = 97;
  *(v3 + 1) = v24;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_40:
    v26 = *(this + 16);
    *v3 = 113;
    *(v3 + 1) = v26;
    v3 = (v3 + 9);
    if ((*(this + 37) & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_39:
  v25 = *(this + 15);
  *v3 = 105;
  *(v3 + 1) = v25;
  v3 = (v3 + 9);
  v10 = *(this + 37);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  if ((v10 & 0x4000) != 0)
  {
LABEL_23:
    v11 = *(this + 17);
    *v3 = 121;
    *(v3 + 1) = v11;
    v3 = (v3 + 9);
  }

LABEL_24:
  v14 = *(this + 1);
  v13 = (this + 8);
  v12 = v14;
  if (!v14 || *v12 == v12[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, v3, a3);
}

uint64_t sub_1001606F4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 148);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 148);
    }

    v5 = v4 + 9;
    if ((v3 & 8) == 0)
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v6 = v5 + 9;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v7 = v6 + 9;
    if ((v3 & 0x100) == 0)
    {
      v7 = v6;
    }

    if ((v3 & 0x200) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v7 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  v8 = *(a1 + 40);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 32) + 4 * v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v8 = *(a1 + 40);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = (v10 + v6 + v8);
  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v13;
  }

  *(a1 + 144) = v13;
  return v13;
}

uint64_t sub_100160868(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001588DC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10016093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100160954(uint64_t result, uint64_t a2)
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

uint64_t sub_1001609E8()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE458;
}

void sub_100160A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100160A90(uint64_t a1)
{
  *a1 = off_100997AD8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_100160AF4(uint64_t a1)
{
  *a1 = off_100997AD8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100160B48(uint64_t a1)
{
  *a1 = off_100997AD8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100160C1C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_28;
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

      v16[0] = 0;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
        if (!result)
        {
          return result;
        }

        v12 = v16[0];
        v13 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 32) = v12 != 0;
      *(a1 + 40) |= 1u;
      if (v13 < v10 && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_24:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 40) |= 2u;
        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 25)
        {
          *(this + 1) = v15 + 1;
LABEL_28:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v16;
          *(a1 + 40) |= 4u;
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

    if (v9 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100160DF8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
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

uint64_t sub_100160EA8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(a1 + 16);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((*(a1 + 40) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 32);
  *a2 = 8;
  *(a2 + 1) = v9;
  a2 += 2;
  v3 = *(a1 + 40);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = *(a1 + 24);
    *a2 = 25;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_5:
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

uint64_t sub_100160F98(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[10];
  v4 = 2 * (v3 & 1);
  if ((v3 & 2) != 0)
  {
    v4 = (2 * (v3 & 1)) | 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (a1[10])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 1);
  v6 = (a1 + 2);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  a1[9] = v5;
  return v5;
}

uint64_t sub_100161008(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100158B84(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001610DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001610F4(uint64_t result, uint64_t a2)
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

uint64_t sub_100161188()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE468;
}

void sub_10016121C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100161230(uint64_t a1)
{
  *a1 = off_100997B88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  return a1;
}

void sub_1001612A4(void *a1)
{
  *a1 = off_100997B88;
  v2 = (a1 + 1);
  sub_100161304(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100161304(void *result)
{
  if (qword_1009F9FB0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1001613A8(void *a1)
{
  sub_1001612A4(a1);

  operator delete();
}

uint64_t sub_10016144C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          v13 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_45;
        }

LABEL_18:
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

      if (v8 != 1 || v9 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 40) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v36 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v36))
        {
          return 0;
        }
      }

      else
      {
        v36 = *v11;
        *(this + 1) = v11 + 1;
      }

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v36);
      if (!sub_100161F50(v10, this, v17, v18) || *(this + 36) != 1)
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
      if (v22 < *(this + 2) && *v22 == 18)
      {
        *(this + 1) = v22 + 1;
        goto LABEL_31;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_18;
    }

LABEL_31:
    *(a1 + 40) |= 2u;
    v23 = *(a1 + 24);
    if (!v23)
    {
      operator new();
    }

    v37 = 0;
    v24 = *(this + 1);
    if (v24 >= *(this + 2) || *v24 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v37))
      {
        return 0;
      }
    }

    else
    {
      v37 = *v24;
      *(this + 1) = v24 + 1;
    }

    v25 = *(this + 14);
    v26 = *(this + 15);
    *(this + 14) = v25 + 1;
    if (v25 >= v26)
    {
      return 0;
    }

    v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v37);
    if (!sub_100164A50(v23, this, v28, v29) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
    v30 = *(this + 14);
    v20 = __OFSUB__(v30, 1);
    v31 = v30 - 1;
    if (v31 < 0 == v20)
    {
      *(this + 14) = v31;
    }

    v32 = *(this + 1);
    v12 = *(this + 2);
    if (v32 < v12 && *v32 == 24)
    {
      v13 = v32 + 1;
      *(this + 1) = v13;
LABEL_45:
      v35 = 0;
      if (v13 >= v12 || (v33 = *v13, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v35);
        if (!result)
        {
          return result;
        }

        v33 = v35;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if ((v33 - 1) > 9)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v33);
      }

      else
      {
        *(a1 + 40) |= 4u;
        *(a1 + 32) = v33;
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

uint64_t sub_1001617CC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = *(v5 + 24);
    if (!v11)
    {
      v11 = *(qword_1009F9FB0 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
    if ((*(v5 + 40) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v10 = *(this + 16);
  if (!v10)
  {
    v10 = *(qword_1009F9FB0 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10016189C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9FB0 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[34];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_1001629F4(v7, v10, a3, a4);
    v6 = *(this + 10);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_23;
      }

LABEL_17:
      v14 = *(this + 8);
      *v4 = 24;
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
          goto LABEL_23;
        }

        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v15, a3);
      }

      v4 = v16;
      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F9FB0 + 24);
  }

  *v4 = 18;
  v12 = v11[8];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v12;
    v13 = (v4 + 2);
  }

  v4 = sub_100164DE0(v11, v13, a3);
  if ((*(this + 10) & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v4, a3);
}

uint64_t sub_1001619F0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9FB0 + 16);
    }

    v6 = sub_100162F54(v5, a2);
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
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9FB0 + 24);
    }

    v10 = sub_100164EE8(v9, a2);
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
    v3 = *(a1 + 40);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
  }

LABEL_25:
  v15 = *(a1 + 8);
  if (v15 && *v15 != v15[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_100161B18(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100158738(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100161BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100161C04(uint64_t result, uint64_t a2)
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

uint64_t sub_100161C98()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE478;
}

void sub_100161D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100161D40(uint64_t a1)
{
  *a1 = off_100997C38;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_100161DBC(void *a1)
{
  *a1 = off_100997C38;
  sub_100161E34(a1);
  if (a1[14])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_100161E34(uint64_t result)
{
  v1 = *(result + 88);
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

void sub_100161EAC(void *a1)
{
  sub_100161DBC(a1);

  operator delete();
}

uint64_t sub_100161F50(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 1)
        {
          goto LABEL_46;
        }

        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v50;
        *(a1 + 140) |= 1u;
        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || *v10 != 16)
        {
          continue;
        }

        v11 = v10 + 1;
        *(this + 1) = v11;
        goto LABEL_32;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_32:
        if (v11 >= v9 || (v18 = *v11, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v19 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v18;
          v19 = v11 + 1;
          *(this + 1) = v19;
        }

        *(a1 + 140) |= 2u;
        if (v19 >= v9 || *v19 != 25)
        {
          continue;
        }

        *(this + 1) = v19 + 1;
LABEL_55:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v50;
        *(a1 + 140) |= 4u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 33)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_59:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v50;
        *(a1 + 140) |= 8u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 41)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_63:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v50;
        *(a1 + 140) |= 0x10u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 49)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_67:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v50;
        *(a1 + 140) |= 0x20u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 57)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_71:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v50;
        *(a1 + 140) |= 0x40u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 65)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_75:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v50;
        *(a1 + 140) |= 0x80u;
        v28 = *(this + 1);
        v14 = *(this + 2);
        if (v28 >= v14 || *v28 != 72)
        {
          continue;
        }

        v22 = v28 + 1;
        *(this + 1) = v22;
LABEL_79:
        if (v22 >= v14 || (v29 = *v22, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 80));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          *(a1 + 80) = v29;
          v30 = v22 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 140) |= 0x100u;
        if (v30 >= v14 || *v30 != 80)
        {
          continue;
        }

        v15 = v30 + 1;
        *(this + 1) = v15;
LABEL_87:
        if (v15 >= v14 || (v31 = *v15, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 84));
          if (!result)
          {
            return result;
          }

          v32 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          *(a1 + 84) = v31;
          v32 = v15 + 1;
          *(this + 1) = v32;
        }

        v21 = *(a1 + 140) | 0x200;
        *(a1 + 140) = v21;
        if (v32 >= v14 || *v32 != 90)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_95:
        *(a1 + 140) = v21 | 0x400;
        if (*(a1 + 88) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 97)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_101:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v50;
        *(a1 + 140) |= 0x800u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 105)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_105:
        *v50 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v50;
        *(a1 + 140) |= 0x1000u;
        v35 = *(this + 1);
        if (v35 < *(this + 2) && *v35 == 113)
        {
          goto LABEL_108;
        }

        continue;
      case 3u:
        if (v8 == 1)
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      case 4u:
        if (v8 == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_46;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_46;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_46;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_75;
        }

        goto LABEL_46;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v22 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_79;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_87;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_46;
        }

        v21 = *(a1 + 140);
        goto LABEL_95;
      case 0xCu:
        if (v8 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_46;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_46;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_109;
        }

        if (v8 != 2)
        {
LABEL_46:
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

        result = sub_100063F88(this, a1 + 112);
        if (!result)
        {
          return result;
        }

LABEL_125:
        v35 = *(this + 1);
        v13 = *(this + 2);
        if (v35 >= v13)
        {
          continue;
        }

        v46 = *v35;
        if (v46 != 113)
        {
          if (v46 == 120)
          {
            v12 = v35 + 1;
            *(this + 1) = v12;
LABEL_129:
            v50[0] = 0;
            if (v12 >= v13 || (v47 = *v12, v47 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
              if (!result)
              {
                return result;
              }

              v47 = v50[0];
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (sub_100079CC4(v47))
            {
              if (!sub_100079CC4(v47))
              {
                sub_10049E468();
              }

              *(a1 + 140) |= 0x4000u;
              *(a1 + 128) = v47;
            }

            else
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 15, v47);
            }

            v48 = *(this + 1);
            v16 = *(this + 2);
            if (v16 - v48 >= 2 && *v48 == 128 && v48[1] == 1)
            {
              v17 = (v48 + 2);
              *(this + 1) = v17;
LABEL_142:
              v50[0] = 0;
              if (v17 >= v16 || (v49 = *v17, (v49 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
                if (!result)
                {
                  return result;
                }

                v49 = v50[0];
              }

              else
              {
                *(this + 1) = v17 + 1;
              }

              if (v49 > 1)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 16, v49);
              }

              else
              {
                *(a1 + 140) |= 0x8000u;
                *(a1 + 132) = v49;
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

          continue;
        }

LABEL_108:
        *(this + 1) = v35 + 1;
LABEL_109:
        *v50 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50))
        {
          v36 = *v50;
          v37 = *(a1 + 120);
          if (v37 == *(a1 + 124))
          {
            sub_1000778F4((a1 + 112), v37 + 1);
            v37 = *(a1 + 120);
          }

          v38 = *(a1 + 112);
          v39 = v37 + 1;
          *(a1 + 120) = v37 + 1;
          *(v38 + 8 * v37) = v36;
          v40 = *(this + 1);
          v41 = *(this + 4) - v40;
          if (v41 >= 1)
          {
            v42 = v41 / 9u;
            v43 = v42 >= *(a1 + 124) - v39 ? *(a1 + 124) - v39 : v42;
            if (v43 >= 1)
            {
              v44 = 0;
              while (*v40 == 113)
              {
                v45 = *(v40 + 1);
                if (v39 >= *(a1 + 124))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
                  v39 = *(a1 + 120);
                  v38 = *(a1 + 112);
                }

                *(a1 + 120) = v39 + 1;
                *(v38 + 8 * v39) = v45;
                ++v44;
                v40 += 9;
                ++v39;
                if (v43 == v44)
                {
                  v44 = v43;
                  goto LABEL_124;
                }
              }

              if (!v44)
              {
                goto LABEL_125;
              }

LABEL_124:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v44);
            }
          }

          goto LABEL_125;
        }

        return 0;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v12 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_129;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_142;
      default:
        goto LABEL_46;
    }
  }
}

void sub_1001627A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001627BC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 140);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 140);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 140);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 64), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 72), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 80), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 84), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 140);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  if ((*(v5 + 140) & 0x1000) != 0)
  {
LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  }

LABEL_15:
  if (*(v5 + 120) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(*(v5 + 112) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 120));
  }

  v8 = *(v5 + 140);
  if ((v8 & 0x4000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 128), a2, a4);
    v8 = *(v5 + 140);
  }

  if ((v8 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, *(v5 + 132), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001629F4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 35);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 35);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  *v4 = 16;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v4 + 1, a3);
  v6 = *(this + 35);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(this + 4);
  *v4 = 25;
  *(v4 + 1) = v9;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v10;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v11;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v12;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v13 = *(this + 8);
  *v4 = 57;
  *(v4 + 1) = v13;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = *(this + 9);
  *v4 = 65;
  *(v4 + 1) = v14;
  v4 = (v4 + 9);
  if ((*(this + 35) & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v15 = *(this + 20);
  *v4 = 72;
  if (v15 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v4 = (v4 + 2);
  }

LABEL_22:
  if ((*(this + 141) & 2) != 0)
  {
    v16 = *(this + 21);
    *v4 = 80;
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

  v17 = *(this + 35);
  if ((v17 & 0x400) != 0)
  {
    v23 = *(this + 11);
    *v4 = 90;
    v24 = *(v23 + 23);
    if ((v24 & 0x8000000000000000) != 0)
    {
      v24 = *(v23 + 8);
    }

    if (v24 > 0x7F)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v24;
      v25 = v4 + 2;
    }

    v26 = *(v23 + 23);
    if (v26 >= 0)
    {
      v27 = v23;
    }

    else
    {
      v27 = *v23;
    }

    if (v26 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = *(v23 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v27, v28, v25, a4);
    v17 = *(this + 35);
    if ((v17 & 0x800) == 0)
    {
LABEL_28:
      if ((v17 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v17 & 0x800) == 0)
  {
    goto LABEL_28;
  }

  v29 = *(this + 12);
  *v4 = 97;
  *(v4 + 1) = v29;
  v4 = (v4 + 9);
  if ((*(this + 35) & 0x1000) != 0)
  {
LABEL_29:
    v18 = *(this + 13);
    *v4 = 105;
    *(v4 + 1) = v18;
    v4 = (v4 + 9);
  }

LABEL_30:
  if (*(this + 30) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = *(*(this + 14) + 8 * v19);
      *v4 = 113;
      *(v4 + 1) = v20;
      v4 = (v4 + 9);
      ++v19;
    }

    while (v19 < *(this + 30));
  }

  if ((*(this + 141) & 0x40) != 0)
  {
    v21 = *(this + 32);
    *v4 = 120;
    v22 = v4 + 1;
    if ((v21 & 0x80000000) != 0)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
    }

    else
    {
      if (v21 <= 0x7F)
      {
        *(v4 + 1) = v21;
        v4 = (v4 + 2);
        goto LABEL_54;
      }

      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
    }

    v4 = v30;
  }

LABEL_54:
  if ((*(this + 141) & 0x80) != 0)
  {
    v31 = *(this + 33);
    *v4 = 384;
    v32 = v4 + 2;
    if ((v31 & 0x80000000) != 0)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v31, v32, a3);
    }

    else
    {
      if (v31 <= 0x7F)
      {
        *(v4 + 2) = v31;
        v4 = (v4 + 3);
        goto LABEL_61;
      }

      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v32, a3);
    }

    v4 = v33;
  }

LABEL_61:
  v36 = *(this + 1);
  v35 = (this + 8);
  v34 = v36;
  if (!v36 || *v34 == v34[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v35, v4, a3);
}

uint64_t sub_100162F54(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 140);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 140);
    }

    v5 = v4 + 9;
    if ((v3 & 4) == 0)
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v5 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v6 = v5 + 9;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v7 = *(a1 + 80);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 140);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
      if ((v3 & 0x200) == 0)
      {
LABEL_21:
        if ((v3 & 0x400) == 0)
        {
LABEL_40:
          v17 = v6 + 9;
          if ((v3 & 0x800) == 0)
          {
            v17 = v6;
          }

          if ((v3 & 0x1000) != 0)
          {
            v6 = v17 + 9;
          }

          else
          {
            v6 = v17;
          }

          if ((v3 & 0x4000) != 0)
          {
            v18 = *(a1 + 128);
            if ((v18 & 0x80000000) != 0)
            {
              v19 = 11;
            }

            else if (v18 >= 0x80)
            {
              v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
              v3 = *(a1 + 140);
            }

            else
            {
              v19 = 2;
            }

            v6 += v19;
          }

          if ((v3 & 0x8000) != 0)
          {
            v20 = *(a1 + 132);
            if ((v20 & 0x80000000) != 0)
            {
              v21 = 12;
            }

            else if (v20 >= 0x80)
            {
              v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 2;
            }

            else
            {
              v21 = 3;
            }

            v6 += v21;
          }

          goto LABEL_59;
        }

LABEL_31:
        v11 = *(a1 + 88);
        v12 = *(v11 + 23);
        v13 = v12;
        v14 = *(v11 + 8);
        if ((v12 & 0x80u) == 0)
        {
          v15 = *(v11 + 23);
        }

        else
        {
          v15 = v14;
        }

        if (v15 >= 0x80)
        {
          v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
          v12 = *(v11 + 23);
          v14 = *(v11 + 8);
          v3 = *(a1 + 140);
          v13 = *(v11 + 23);
        }

        else
        {
          v16 = 1;
        }

        if (v13 < 0)
        {
          v12 = v14;
        }

        v6 += v16 + v12 + 1;
        goto LABEL_40;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 84);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 140);
    }

    else
    {
      v10 = 2;
    }

    v6 += v10;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

LABEL_59:
  v22 = *(a1 + 8);
  v23 = (9 * *(a1 + 120) + v6);
  if (v22 && *v22 != v22[1])
  {
    v23 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v23;
  }

  *(a1 + 136) = v23;
  return v23;
}

uint64_t sub_100163168(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100157128(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10016323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100163254(uint64_t result, uint64_t a2)
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

uint64_t sub_1001632E8()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE488;
}

void sub_10016337C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100163390(uint64_t a1)
{
  *a1 = off_100997CE8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1001633F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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
    v8 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v8;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  *(a1 + 44) |= 1u;
  *(a1 + 16) = v7;
  v4 = *(a2 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 32);
    *(a1 + 44) |= 4u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001634D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001634E8(uint64_t a1)
{
  *a1 = off_100997CE8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10016353C(uint64_t a1)
{
  *a1 = off_100997CE8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100163610(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100163634(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v13;
        *(a1 + 44) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v13;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v13;
        *(a1 + 44) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_15;
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

uint64_t sub_1001637F0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  }

LABEL_5:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_1001638A0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v10;
    a2 += 9;
    if ((*(a1 + 44) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v9;
  a2 += 9;
  v3 = *(a1 + 44);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v4 = *(a1 + 32);
    *a2 = 25;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_5:
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

uint64_t sub_1001639C8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 44))
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

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100163A3C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001633F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100163B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100163B28(uint64_t result, uint64_t a2)
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

uint64_t sub_100163BBC()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE4A8;
}

void sub_100163C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100163C64(uint64_t a1)
{
  *a1 = off_100997D98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_100163CCC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 68);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 68))
  {
    v7 = *(a2 + 16);
    *(a1 + 68) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 68) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = *(a2 + 32);
  *(a1 + 68) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 48);
    *(a1 + 68) |= 0x10u;
    *(a1 + 48) = v11;
    if ((*(a2 + 68) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 40);
  *(a1 + 68) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 68);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 56);
    *(a1 + 68) |= 0x20u;
    *(a1 + 56) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100163E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100163E24(uint64_t a1)
{
  *a1 = off_100997D98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100163E78(uint64_t a1)
{
  *a1 = off_100997D98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100163F4C(uint64_t a1)
{
  if (*(a1 + 68))
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 15) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100163F74(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if (v9 == 1)
            {
              goto LABEL_33;
            }

            goto LABEL_38;
          }

          if (v8 == 5)
          {
            if (v9 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v8 != 6 || v9 != 1)
          {
            goto LABEL_38;
          }

LABEL_45:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 56) = v16;
          *(a1 + 68) |= 0x20u;
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

        if (v9 != 1)
        {
          goto LABEL_38;
        }

        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v16;
        *(a1 + 68) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 17)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_25;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_38;
      }

LABEL_25:
      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = v16;
      *(a1 + 68) |= 2u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 25)
      {
        *(this + 1) = v11 + 1;
LABEL_29:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v16;
        *(a1 + 68) |= 4u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 33)
        {
          *(this + 1) = v12 + 1;
LABEL_33:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v16;
          *(a1 + 68) |= 8u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 41)
          {
            *(this + 1) = v13 + 1;
LABEL_41:
            v16 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = v16;
            *(a1 + 68) |= 0x10u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 49)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_45;
            }
          }
        }
      }
    }

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_29;
    }

LABEL_38:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10016424C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 68);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
    if ((*(v4 + 68) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 68);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v5 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  }

LABEL_8:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_100164350(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 68);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 68);
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

  v10 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 68);
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
  v11 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v11;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v13 = *(a1 + 48);
    *a2 = 41;
    *(a2 + 1) = v13;
    a2 += 9;
    if ((*(a1 + 68) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v12 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v12;
  a2 += 9;
  v3 = *(a1 + 68);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v3 & 0x20) != 0)
  {
LABEL_7:
    v4 = *(a1 + 56);
    *a2 = 49;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_8:
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

uint64_t sub_100164580(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 68);
  if (*(a1 + 68))
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

  *(a1 + 64) = v5;
  return v5;
}

uint64_t sub_100164620(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100163CCC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001646F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016470C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001647A0()
{
  v0 = qword_1009EE4E0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1001546D4;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EE4B8;
}

void sub_100164834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100164848(void *a1)
{
  *a1 = off_100997E48;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

void sub_1001648A8(void *a1)
{
  *a1 = off_100997E48;
  v2 = (a1 + 1);
  sub_100164908(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100164908(void *result)
{
  if (qword_1009F9FC0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1001649AC(void *a1)
{
  sub_1001648A8(a1);

  operator delete();
}

uint64_t sub_100164A50(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      *(a1 + 36) |= 1u;
      v9 = *(a1 + 16);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
      if (!sub_100163634(v9, this, v14, v15) || *(this + 36) != 1)
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
        *(this + 1) = v19 + 1;
LABEL_27:
        *(a1 + 36) |= 2u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        v31 = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v21;
          *(this + 1) = v21 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
        if (!sub_100163F74(v20, this, v25, v26) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
        v27 = *(this + 14);
        v17 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v17)
        {
          *(this + 14) = v28;
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