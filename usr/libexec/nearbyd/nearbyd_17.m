uint64_t sub_1000F1480(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v7 = *(this + 16);
    if ((*(v7 + 23) & 0x8000000000000000) != 0)
    {
      v8 = *v7;
      v9 = *(*(v5 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v10 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 28), a2, a4);
  if ((*(v5 + 68) & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v11 = *(v5 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9C10 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v11, a2, a4);
LABEL_14:
  if (*(v5 + 48) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(*(v5 + 40) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 48));
  }

  v15 = *(v5 + 8);
  v14 = (v5 + 8);
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v14, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000F15B4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 17);
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
    v5 = *(this + 17);
  }

  if ((v5 & 2) != 0)
  {
    v17 = *(this + 6);
    *a2 = 16;
    if (v17 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v17;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 68) & 4) != 0)
  {
    v18 = *(this + 7);
    *a2 = 24;
    v19 = a2 + 1;
    if ((v18 & 0x80000000) != 0)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
    }

    else
    {
      if (v18 <= 0x7F)
      {
        *(a2 + 1) = v18;
        a2 = (a2 + 2);
        goto LABEL_27;
      }

      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
    }

    a2 = v20;
  }

LABEL_27:
  if ((*(this + 68) & 8) != 0)
  {
    v21 = *(this + 4);
    if (!v21)
    {
      v21 = *(qword_1009F9C10 + 32);
    }

    *a2 = 34;
    v22 = *(v21 + 40);
    if (v22 > 0x7F)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v22;
      v23 = a2 + 2;
    }

    a2 = sub_1000F4EB0(v21, v23, a3);
  }

  if (*(this + 12) >= 1)
  {
    v24 = 0;
    do
    {
      v25 = *(*(this + 5) + 8 * v24);
      *a2 = 42;
      v26 = v25[7];
      if (v26 > 0x7F)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v26;
        v27 = (a2 + 2);
      }

      a2 = sub_1000F0724(v25, v27, a3);
      ++v24;
    }

    while (v24 < *(this + 12));
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

uint64_t sub_1000F17D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 68) & 2) == 0)
    {
      goto LABEL_19;
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
    v3 = *(a1 + 68);
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
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 28);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_34;
  }

  v16 = *(a1 + 32);
  if (!v16)
  {
    v16 = *(qword_1009F9C10 + 32);
  }

  v17 = sub_1000F4FD8(v16, a2);
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
LABEL_34:
  v20 = *(a1 + 48);
  v21 = (v20 + v4);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = sub_1000F080C(*(*(a1 + 40) + 8 * v22), a2);
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(a1 + 48));
  }

  v26 = *(a1 + 8);
  if (v26 && *v26 != v26[1])
  {
    v21 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v21;
  }

  *(a1 + 64) = v21;
  return v21;
}

uint64_t sub_1000F198C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000F0B80(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F1A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1A78(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F547C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000F0154(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000F1BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1BB8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F1C4C()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC08;
}

void sub_1000F1CE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1CF4(uint64_t a1)
{
  *a1 = off_100992240;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_1000F1D6C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  sub_1000F27A8((a1 + 4), a2 + 16);
  sub_1000F28E8((a1 + 10), a2 + 40);
  if (*(a2 + 72))
  {
    v4 = *(a2 + 64);
    a1[18] |= 1u;
    a1[16] = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1000F1E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000F1E34(uint64_t *a1)
{
  *a1 = off_100992240;
  sub_100077C08(a1 + 5);
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000F1EA4(uint64_t *a1)
{
  sub_1000F1E34(a1);

  operator delete();
}

uint64_t sub_1000F1F48(uint64_t a1)
{
  if (*(a1 + 72))
  {
    *(a1 + 64) = 0;
  }

  sub_100077B98(a1 + 16);
  result = sub_100077B98(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 16) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t sub_1000F1FB0(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v9 != 2)
        {
          goto LABEL_16;
        }

LABEL_24:
        v15 = a1[7];
        v16 = a1[6];
        if (v16 >= v15)
        {
          if (v15 == a1[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v15 + 1);
            v15 = a1[7];
          }

          a1[7] = v15 + 1;
          sub_1000F54E0();
        }

        v17 = *(a1 + 2);
        a1[6] = v16 + 1;
        v18 = *(v17 + 8 * v16);
        v42 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
        if (!sub_1000EF540(v18, this, v23, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v25 = *(this + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(this + 14) = v27;
        }

        v13 = *(this + 1);
        if (v13 < *(this + 2))
        {
          v28 = *v13;
          if (v28 == 18)
          {
            goto LABEL_42;
          }

          if (v28 == 26)
          {
            do
            {
              *(this + 1) = v13 + 1;
LABEL_43:
              v29 = a1[13];
              v30 = a1[12];
              if (v30 >= v29)
              {
                if (v29 == a1[14])
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 10), v29 + 1);
                  v29 = a1[13];
                }

                a1[13] = v29 + 1;
                sub_1000F5544();
              }

              v31 = *(a1 + 5);
              a1[12] = v30 + 1;
              v32 = *(v31 + 8 * v30);
              v43 = 0;
              v33 = *(this + 1);
              if (v33 >= *(this + 2) || *v33 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
                {
                  return 0;
                }
              }

              else
              {
                v43 = *v33;
                *(this + 1) = v33 + 1;
              }

              v34 = *(this + 14);
              v35 = *(this + 15);
              *(this + 14) = v34 + 1;
              if (v34 >= v35)
              {
                return 0;
              }

              v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
              if (!sub_1000F0FD0(v32, this, v37, v38) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
              v39 = *(this + 14);
              v26 = __OFSUB__(v39, 1);
              v40 = v39 - 1;
              if (v40 < 0 == v26)
              {
                *(this + 14) = v40;
              }

              v13 = *(this + 1);
              v41 = *(this + 2);
            }

            while (v13 < v41 && *v13 == 26);
            if (v13 == v41 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      else
      {
        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(this + 1);
        v11 = *(this + 2);
        if (v10 >= v11 || (v12 = *v10, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 16);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          a1[16] = v12;
          v13 = v10 + 1;
          *(this + 1) = v13;
        }

        a1[18] |= 1u;
        if (v13 < v11 && *v13 == 18)
        {
LABEL_42:
          *(this + 1) = v13 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_43;
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

uint64_t sub_1000F2350(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 72))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 64), a2, a4);
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

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000F2438(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 72))
  {
    v5 = *(this + 16);
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

  if (*(this + 6) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 2) + 8 * v7);
      *v3 = 18;
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

      v3 = sub_1000EF9A8(v8, v10, a3);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

  if (*(this + 12) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 5) + 8 * v11);
      *v3 = 26;
      v13 = v12[16];
      if (v13 > 0x7F)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v13;
        v14 = (v3 + 2);
      }

      v3 = sub_1000F15B4(v12, v14, a3);
      ++v11;
    }

    while (v11 < *(this + 12));
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

uint64_t sub_1000F2598(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 72))
  {
    v4 = *(a1 + 64);
    if (v4 >= 0x80)
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
  v6 = v5 + v3;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1000EFC34(*(*(a1 + 16) + 8 * v7), a2);
      v9 = v8;
      if (v8 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      }

      else
      {
        v10 = 1;
      }

      v6 += v9 + v10;
      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

  v11 = *(a1 + 48);
  v12 = (v11 + v6);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_1000F17D0(*(*(a1 + 40) + 8 * v13), a2);
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

    while (v13 < *(a1 + 48));
  }

  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 68) = v12;
  return v12;
}

uint64_t sub_1000F26BC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000F1D6C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F2790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F27A8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F54E0();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000EF274(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000F28D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F28E8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F5544();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000F0B80(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000F2A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F2A28(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F2ABC()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDBE8;
}

void sub_1000F2B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F2B64(uint64_t a1)
{
  *a1 = off_1009922F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

void sub_1000F2BD0(uint64_t *a1)
{
  *a1 = off_1009922F0;
  sub_100077C08(a1 + 6);
  if (a1[4])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000F2C64(uint64_t *a1)
{
  sub_1000F2BD0(a1);

  operator delete();
}

uint64_t sub_1000F2D08(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_18;
          }

          while (1)
          {
            v37 = *(a1 + 60);
            v38 = *(a1 + 56);
            if (v38 >= v37)
            {
              if (v37 == *(a1 + 64))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v37 + 1);
                v37 = *(a1 + 60);
              }

              *(a1 + 60) = v37 + 1;
              sub_1000F55A8();
            }

            v39 = *(a1 + 48);
            *(a1 + 56) = v38 + 1;
            v40 = *(v39 + 8 * v38);
            v52[0] = 0;
            v41 = *(this + 1);
            if (v41 >= *(this + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v52))
              {
                return 0;
              }
            }

            else
            {
              v52[0] = *v41;
              *(this + 1) = v41 + 1;
            }

            v42 = *(this + 14);
            v43 = *(this + 15);
            *(this + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v52[0]);
            if (!sub_1000F1FB0(v40, this, v45, v46) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
            v47 = *(this + 14);
            v48 = __OFSUB__(v47, 1);
            v49 = v47 - 1;
            if (v49 < 0 == v48)
            {
              *(this + 14) = v49;
            }

            v24 = *(this + 1);
            v50 = *(this + 2);
            if (v24 >= v50 || *v24 != 26)
            {
              break;
            }

LABEL_81:
            *(this + 1) = v24 + 1;
          }

          if (v24 == v50 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        if (v8 != 1)
        {
          goto LABEL_18;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v9 == 2)
          {
            result = sub_1000A6548(this, a1 + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_40;
          }

          goto LABEL_18;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        while (1)
        {
          v51 = 0;
          if (v13 >= v11 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
            {
              return 0;
            }
          }

          else
          {
            v51 = *v13;
            *(this + 1) = v13 + 1;
          }

          v14 = *(a1 + 24);
          if (v14 == *(a1 + 28))
          {
            sub_100077844((a1 + 16), v14 + 1);
            v14 = *(a1 + 24);
          }

          v15 = v51;
          v16 = *(a1 + 16);
          *(a1 + 24) = v14 + 1;
          *(v16 + 4 * v14) = v15;
          v17 = *(a1 + 28) - *(a1 + 24);
          if (v17 >= 1)
          {
            v18 = v17 + 1;
            do
            {
              v19 = *(this + 1);
              v20 = *(this + 2);
              if (v19 >= v20 || *v19 != 8)
              {
                break;
              }

              *(this + 1) = v19 + 1;
              if ((v19 + 1) >= v20 || v19[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
                {
                  return 0;
                }
              }

              else
              {
                v51 = v19[1];
                *(this + 1) = v19 + 2;
              }

              v21 = *(a1 + 24);
              if (v21 >= *(a1 + 28))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v52);
                v21 = *(a1 + 24);
              }

              v22 = v51;
              v23 = *(a1 + 16);
              *(a1 + 24) = v21 + 1;
              *(v23 + 4 * v21) = v22;
              --v18;
            }

            while (v18 > 1);
          }

LABEL_40:
          v24 = *(this + 1);
          v11 = *(this + 2);
          if (v24 >= v11)
          {
            break;
          }

          v25 = *v24;
          if (v25 == 16)
          {
            goto LABEL_64;
          }

          if (v25 != 8)
          {
            break;
          }

          v13 = v24 + 1;
          *(this + 1) = v13;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v12 = *(this + 1);
      v11 = *(this + 2);
      while (1)
      {
        v51 = 0;
        if (v12 >= v11 || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
          {
            return 0;
          }
        }

        else
        {
          v51 = *v12;
          *(this + 1) = v12 + 1;
        }

        v26 = *(a1 + 40);
        if (v26 == *(a1 + 44))
        {
          sub_100077844((a1 + 32), v26 + 1);
          v26 = *(a1 + 40);
        }

        v27 = v51;
        v28 = *(a1 + 32);
        *(a1 + 40) = v26 + 1;
        *(v28 + 4 * v26) = v27;
        v29 = *(a1 + 44) - *(a1 + 40);
        if (v29 >= 1)
        {
          v30 = v29 + 1;
          do
          {
            v31 = *(this + 1);
            v32 = *(this + 2);
            if (v31 >= v32 || *v31 != 16)
            {
              break;
            }

            *(this + 1) = v31 + 1;
            if ((v31 + 1) >= v32 || v31[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = v31[1];
              *(this + 1) = v31 + 2;
            }

            v33 = *(a1 + 40);
            if (v33 >= *(a1 + 44))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v52);
              v33 = *(a1 + 40);
            }

            v34 = v51;
            v35 = *(a1 + 32);
            *(a1 + 40) = v33 + 1;
            *(v35 + 4 * v33) = v34;
            --v30;
          }

          while (v30 > 1);
        }

LABEL_61:
        v24 = *(this + 1);
        v11 = *(this + 2);
        if (v24 >= v11)
        {
          break;
        }

        v36 = *v24;
        if (v36 == 26)
        {
          goto LABEL_81;
        }

        if (v36 != 16)
        {
          break;
        }

LABEL_64:
        v12 = v24 + 1;
        *(this + 1) = v12;
      }
    }

    if (v9 == 2)
    {
      result = sub_1000A6548(this, a1 + 32);
      if (!result)
      {
        return result;
      }

      goto LABEL_61;
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
}

void sub_1000F3228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3248(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 48) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000F334C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

  if (*(this + 10) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 4) + 4 * v7);
      *a2 = 16;
      if (v8 > 0x7F)
      {
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        a2 = (a2 + 2);
      }

      ++v7;
    }

    while (v7 < *(this + 10));
  }

  if (*(this + 14) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 6) + 8 * v9);
      *a2 = 26;
      v11 = v10[17];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v11;
        v12 = (a2 + 2);
      }

      a2 = sub_1000F2438(v10, v12, a3);
      ++v9;
    }

    while (v9 < *(this + 14));
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

uint64_t sub_1000F34B8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

  v13 = *(a1 + 56);
  v14 = (v3 + v5 + v10 + v8 + v13);
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = sub_1000F2598(*(*(a1 + 48) + 8 * v15), a2);
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      }

      else
      {
        v18 = 1;
      }

      v14 = (v17 + v14 + v18);
      ++v15;
    }

    while (v15 < *(a1 + 56));
  }

  v19 = *(a1 + 8);
  if (v19 && *v19 != v19[1])
  {
    v14 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v14;
  }

  *(a1 + 72) = v14;
  return v14;
}

uint64_t sub_1000F3608(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E88D8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F36DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F36F4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000F55A8();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000F1D6C(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000F381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F3834(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F38C8()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDBD8;
}

void sub_1000F395C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000F3970(void *a1)
{
  *a1 = off_1009923A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return a1;
}

void sub_1000F39D8(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1009923A0;
  v2 = (a1 + 8);
  sub_10007A870(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000F3A3C(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000F39D8(a1);

  operator delete();
}

uint64_t sub_1000F3AE0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_1000F3CB8(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000F3D74(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

uint64_t sub_1000F3ED8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_24;
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
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_1000F3FEC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000E8B80(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F40C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F40D8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F416C()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC28;
}

void sub_1000F4200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4214(uint64_t a1)
{
  *a1 = off_100992450;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_1000F4278(uint64_t a1)
{
  *a1 = off_100992450;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000F42CC(uint64_t a1)
{
  *a1 = off_100992450;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000F43A0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v8 != 4 || v9 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
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

      if (v9 != 1)
      {
        goto LABEL_25;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v14;
      *(a1 + 52) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_20:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v14;
        *(a1 + 52) |= 2u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 25)
        {
          *(this + 1) = v11 + 1;
LABEL_28:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v14;
          *(a1 + 52) |= 4u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 33)
          {
            *(this + 1) = v12 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000F45C0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
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

uint64_t sub_1000F468C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    v9 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v9;
    a2 += 9;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v11 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v11;
      a2 += 9;
      if ((*(a1 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
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
  v3 = *(a1 + 52);
  if ((v3 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_5:
    v4 = *(a1 + 40);
    *a2 = 33;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_6:
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

uint64_t sub_1000F480C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 48) = v5;
  return v5;
}

uint64_t sub_1000F4894(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000EEFA4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F4968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4980(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F4A14()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC38;
}

void sub_1000F4AA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F4ABC(uint64_t a1)
{
  *a1 = off_100992500;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_1000F4B1C(uint64_t a1)
{
  *a1 = off_100992500;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000F4B70(uint64_t a1)
{
  *a1 = off_100992500;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000F4C44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_1000F4E00(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_1000F4EB0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1000F4FD8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1000F504C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000ECC1C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000F5120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5138(uint64_t result, uint64_t a2)
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

uint64_t sub_1000F51CC()
{
  v0 = qword_1009EDC60;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000E635C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC48;
}

void sub_1000F5260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F560C(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
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

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t sub_1000F565C(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    operator delete[]();
  }

  return result;
}

uint64_t sub_1000F56E0(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = off_100992718;
  *(a1 + 8) = off_1009913E0;
  v6 = (a1 + 16);
  v7 = (a1 + 432);
  *(a1 + 480) = 0;
  *(a1 + 16) = v9;
  *(v6 + *(v9 - 24)) = v8;
  v10 = (a1 + 16 + *(*(a1 + 16) - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  *(a1 + 584) = a3;
  *(a1 + 592) = 850045863;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = a2;
  sub_1000F5900((a1 + 656), 0x3E8uLL);
  return a1;
}

void sub_1000F58B0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 664) = v5;
    operator delete(v5);
  }

  std::mutex::~mutex((v1 + 592));
  sub_1000F5FEC(v2);
  _Unwind_Resume(a1);
}

void *sub_1000F5900(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_100019B38();
  }

  return result;
}

void sub_1000F59CC(uint64_t a1, char a2)
{
  if (*(a1 + 584) == 1)
  {
    v13 = a2;
    sub_10000EA44((a1 + 16), &v13, 1);
  }

  std::mutex::lock((a1 + 592));
  v4 = *(a1 + 664);
  v5 = *(a1 + 672);
  if (v4 >= v5)
  {
    v7 = *(a1 + 656);
    v8 = (v4 - v7);
    v9 = v4 - v7 + 1;
    if (v9 < 0)
    {
      sub_100019B38();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v4 - v7;
    *v8 = a2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *(a1 + 656) = 0;
    *(a1 + 664) = v8 + 1;
    *(a1 + 672) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v4 = a2;
    v6 = v4 + 1;
  }

  *(a1 + 664) = v6;
  if (&v6[-*(a1 + 656)] == 1000)
  {
    sub_1000F5B28(a1);
  }

  std::mutex::unlock((a1 + 592));
}

void sub_1000F5B28(uint64_t a1)
{
  v2 = (*(**(a1 + 680) + 16))(*(a1 + 680));
  if (v2)
  {
    [v2 publishBytes:*(a1 + 656) amount:*(a1 + 664) - *(a1 + 656)];
  }

  *(a1 + 664) = *(a1 + 656);
}

BOOL sub_1000F5C08(uint64_t a1)
{
  if (*(a1 + 584) != 1)
  {
    return 1;
  }

  v2 = a1 + 16;
  std::ofstream::open();
  return *(v2 + *(*(a1 + 16) - 24) + 32) == 0;
}

void sub_1000F5C94(uint64_t a1)
{
  if (*(a1 + 584) == 1 && !std::filebuf::close())
  {
    v2 = (a1 + 16 + *(*(a1 + 16) - 24));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

void sub_1000F5D08(uint64_t a1)
{
  if (*(a1 + 584) == 1)
  {
    std::ostream::flush();
  }

  std::mutex::lock((a1 + 592));
  sub_1000F5B28(a1);

  std::mutex::unlock((a1 + 592));
}

uint64_t sub_1000F5D74(uint64_t a1)
{
  *a1 = off_100992718;
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 592));
  *(a1 + 8) = off_1009913E0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1000F5EA0(uint64_t a1)
{
  *a1 = off_100992718;
  v2 = *(a1 + 656);
  if (v2)
  {
    *(a1 + 664) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 592));
  *(a1 + 8) = off_1009913E0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();

  operator delete();
}

void *sub_1000F5FEC(void *a1)
{
  *a1 = off_1009913E0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_1000F60E0(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

void sub_1000F6148()
{
  v0 = sub_1000F8CA0();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1000F8CA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1009EE270 & 1) == 0)
  {
    byte_1009EE270 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/Proximity/protobuf/NearbyInteractionTypes.pb.cc", a4);
    sub_1000613D4(v4, v5, v6, v7);
    sub_100092114(v8, v9, v10, v11);
    sub_1000DF334(v12, v13, v14, v15);
    sub_100149E9C(v16, v17, v18, v19);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_100557B50, 0x6127, v20);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000FA1B4()
{
  if (qword_1009F9C38)
  {
    (*(*qword_1009F9C38 + 8))(qword_1009F9C38);
  }

  if (qword_1009EDC70)
  {
    (*(*qword_1009EDC70 + 8))(qword_1009EDC70);
  }

  if (qword_1009F9C40)
  {
    (*(*qword_1009F9C40 + 8))(qword_1009F9C40);
  }

  if (qword_1009EDC80)
  {
    (*(*qword_1009EDC80 + 8))(qword_1009EDC80);
  }

  if (qword_1009F9C48)
  {
    (*(*qword_1009F9C48 + 8))(qword_1009F9C48);
  }

  if (qword_1009EDC90)
  {
    (*(*qword_1009EDC90 + 8))(qword_1009EDC90);
  }

  if (qword_1009F9C50)
  {
    (*(*qword_1009F9C50 + 8))(qword_1009F9C50);
  }

  if (qword_1009EDCA0)
  {
    (*(*qword_1009EDCA0 + 8))(qword_1009EDCA0);
  }

  if (qword_1009F9C58)
  {
    (*(*qword_1009F9C58 + 8))(qword_1009F9C58);
  }

  if (qword_1009EDCB0)
  {
    (*(*qword_1009EDCB0 + 8))(qword_1009EDCB0);
  }

  if (qword_1009F9C60)
  {
    (*(*qword_1009F9C60 + 8))(qword_1009F9C60);
  }

  if (qword_1009EDCC0)
  {
    (*(*qword_1009EDCC0 + 8))(qword_1009EDCC0);
  }

  if (qword_1009F9C68)
  {
    (*(*qword_1009F9C68 + 8))(qword_1009F9C68);
  }

  if (qword_1009EDCD0)
  {
    (*(*qword_1009EDCD0 + 8))(qword_1009EDCD0);
  }

  if (qword_1009F9C70)
  {
    (*(*qword_1009F9C70 + 8))(qword_1009F9C70);
  }

  if (qword_1009EDCE0)
  {
    (*(*qword_1009EDCE0 + 8))(qword_1009EDCE0);
  }

  if (qword_1009F9C78)
  {
    (*(*qword_1009F9C78 + 8))(qword_1009F9C78);
  }

  if (qword_1009EDCF0)
  {
    (*(*qword_1009EDCF0 + 8))(qword_1009EDCF0);
  }

  if (qword_1009F9C80)
  {
    (*(*qword_1009F9C80 + 8))(qword_1009F9C80);
  }

  if (qword_1009EDD00)
  {
    (*(*qword_1009EDD00 + 8))(qword_1009EDD00);
  }

  if (qword_1009F9C88)
  {
    (*(*qword_1009F9C88 + 8))(qword_1009F9C88);
  }

  if (qword_1009EDD18)
  {
    (*(*qword_1009EDD18 + 8))(qword_1009EDD18);
  }

  if (qword_1009F9C90)
  {
    (*(*qword_1009F9C90 + 8))(qword_1009F9C90);
  }

  if (qword_1009EDD28)
  {
    (*(*qword_1009EDD28 + 8))(qword_1009EDD28);
  }

  if (qword_1009F9C98)
  {
    (*(*qword_1009F9C98 + 8))(qword_1009F9C98);
  }

  if (qword_1009EDD38)
  {
    (*(*qword_1009EDD38 + 8))(qword_1009EDD38);
  }

  if (qword_1009F9CA0)
  {
    (*(*qword_1009F9CA0 + 8))(qword_1009F9CA0);
  }

  if (qword_1009EDD48)
  {
    (*(*qword_1009EDD48 + 8))(qword_1009EDD48);
  }

  if (qword_1009F9CA8)
  {
    (*(*qword_1009F9CA8 + 8))(qword_1009F9CA8);
  }

  if (qword_1009EDD58)
  {
    (*(*qword_1009EDD58 + 8))(qword_1009EDD58);
  }

  if (qword_1009F9CB0)
  {
    (*(*qword_1009F9CB0 + 8))(qword_1009F9CB0);
  }

  if (qword_1009EDD68)
  {
    (*(*qword_1009EDD68 + 8))(qword_1009EDD68);
  }

  if (qword_1009F9CB8)
  {
    (*(*qword_1009F9CB8 + 8))(qword_1009F9CB8);
  }

  if (qword_1009EDD78)
  {
    (*(*qword_1009EDD78 + 8))(qword_1009EDD78);
  }

  if (qword_1009F9CC0)
  {
    (*(*qword_1009F9CC0 + 8))(qword_1009F9CC0);
  }

  if (qword_1009EDD88)
  {
    (*(*qword_1009EDD88 + 8))(qword_1009EDD88);
  }

  if (qword_1009F9CC8)
  {
    (*(*qword_1009F9CC8 + 8))(qword_1009F9CC8);
  }

  if (qword_1009EDD98)
  {
    (*(*qword_1009EDD98 + 8))(qword_1009EDD98);
  }

  if (qword_1009F9CD0)
  {
    (*(*qword_1009F9CD0 + 8))(qword_1009F9CD0);
  }

  if (qword_1009EDDA8)
  {
    (*(*qword_1009EDDA8 + 8))(qword_1009EDDA8);
  }

  if (qword_1009F9CD8)
  {
    (*(*qword_1009F9CD8 + 8))(qword_1009F9CD8);
  }

  if (qword_1009EDDB8)
  {
    (*(*qword_1009EDDB8 + 8))(qword_1009EDDB8);
  }

  if (qword_1009F9CE0)
  {
    (*(*qword_1009F9CE0 + 8))(qword_1009F9CE0);
  }

  if (qword_1009EDDC8)
  {
    (*(*qword_1009EDDC8 + 8))(qword_1009EDDC8);
  }

  if (qword_1009F9CE8)
  {
    (*(*qword_1009F9CE8 + 8))(qword_1009F9CE8);
  }

  if (qword_1009EDDD8)
  {
    (*(*qword_1009EDDD8 + 8))(qword_1009EDDD8);
  }

  if (qword_1009F9CF0)
  {
    (*(*qword_1009F9CF0 + 8))(qword_1009F9CF0);
  }

  if (qword_1009EDDE8)
  {
    (*(*qword_1009EDDE8 + 8))(qword_1009EDDE8);
  }

  if (qword_1009F9CF8)
  {
    (*(*qword_1009F9CF8 + 8))(qword_1009F9CF8);
  }

  if (qword_1009EDDF8)
  {
    (*(*qword_1009EDDF8 + 8))(qword_1009EDDF8);
  }

  if (qword_1009F9D00)
  {
    (*(*qword_1009F9D00 + 8))(qword_1009F9D00);
  }

  if (qword_1009EDE08)
  {
    (*(*qword_1009EDE08 + 8))(qword_1009EDE08);
  }

  if (qword_1009F9D08)
  {
    (*(*qword_1009F9D08 + 8))(qword_1009F9D08);
  }

  if (qword_1009EDE18)
  {
    (*(*qword_1009EDE18 + 8))(qword_1009EDE18);
  }

  if (qword_1009F9D10)
  {
    (*(*qword_1009F9D10 + 8))(qword_1009F9D10);
  }

  if (qword_1009EDE28)
  {
    (*(*qword_1009EDE28 + 8))(qword_1009EDE28);
  }

  if (qword_1009F9D18)
  {
    (*(*qword_1009F9D18 + 8))(qword_1009F9D18);
  }

  if (qword_1009EDE38)
  {
    (*(*qword_1009EDE38 + 8))(qword_1009EDE38);
  }

  if (qword_1009F9D20)
  {
    (*(*qword_1009F9D20 + 8))(qword_1009F9D20);
  }

  if (qword_1009EDE48)
  {
    (*(*qword_1009EDE48 + 8))(qword_1009EDE48);
  }

  if (qword_1009F9D28)
  {
    (*(*qword_1009F9D28 + 8))(qword_1009F9D28);
  }

  if (qword_1009EDE58)
  {
    (*(*qword_1009EDE58 + 8))(qword_1009EDE58);
  }

  if (qword_1009F9D30)
  {
    (*(*qword_1009F9D30 + 8))(qword_1009F9D30);
  }

  if (qword_1009EDE68)
  {
    (*(*qword_1009EDE68 + 8))(qword_1009EDE68);
  }

  if (qword_1009F9D38)
  {
    (*(*qword_1009F9D38 + 8))(qword_1009F9D38);
  }

  if (qword_1009EDE78)
  {
    (*(*qword_1009EDE78 + 8))(qword_1009EDE78);
  }

  if (qword_1009F9D40)
  {
    (*(*qword_1009F9D40 + 8))(qword_1009F9D40);
  }

  if (qword_1009EDE88)
  {
    (*(*qword_1009EDE88 + 8))(qword_1009EDE88);
  }

  if (qword_1009F9D48)
  {
    (*(*qword_1009F9D48 + 8))(qword_1009F9D48);
  }

  if (qword_1009EDE98)
  {
    (*(*qword_1009EDE98 + 8))(qword_1009EDE98);
  }

  if (qword_1009F9D50)
  {
    (*(*qword_1009F9D50 + 8))(qword_1009F9D50);
  }

  if (qword_1009EDEA8)
  {
    (*(*qword_1009EDEA8 + 8))(qword_1009EDEA8);
  }

  if (qword_1009F9D58)
  {
    (*(*qword_1009F9D58 + 8))(qword_1009F9D58);
  }

  if (qword_1009EDEB8)
  {
    (*(*qword_1009EDEB8 + 8))(qword_1009EDEB8);
  }

  if (qword_1009F9D60)
  {
    (*(*qword_1009F9D60 + 8))(qword_1009F9D60);
  }

  if (qword_1009EDEC8)
  {
    (*(*qword_1009EDEC8 + 8))(qword_1009EDEC8);
  }

  if (qword_1009F9D68)
  {
    (*(*qword_1009F9D68 + 8))(qword_1009F9D68);
  }

  if (qword_1009EDED8)
  {
    (*(*qword_1009EDED8 + 8))(qword_1009EDED8);
  }

  if (qword_1009F9D70)
  {
    (*(*qword_1009F9D70 + 8))(qword_1009F9D70);
  }

  if (qword_1009EDEE8)
  {
    (*(*qword_1009EDEE8 + 8))(qword_1009EDEE8);
  }

  if (qword_1009F9D78)
  {
    (*(*qword_1009F9D78 + 8))(qword_1009F9D78);
  }

  if (qword_1009EDEF8)
  {
    (*(*qword_1009EDEF8 + 8))(qword_1009EDEF8);
  }

  if (qword_1009F9D80)
  {
    (*(*qword_1009F9D80 + 8))(qword_1009F9D80);
  }

  if (qword_1009EDF08)
  {
    (*(*qword_1009EDF08 + 8))(qword_1009EDF08);
  }

  if (qword_1009F9D88)
  {
    (*(*qword_1009F9D88 + 8))(qword_1009F9D88);
  }

  if (qword_1009EDF18)
  {
    (*(*qword_1009EDF18 + 8))(qword_1009EDF18);
  }

  if (qword_1009F9D90)
  {
    (*(*qword_1009F9D90 + 8))(qword_1009F9D90);
  }

  if (qword_1009EDF28)
  {
    (*(*qword_1009EDF28 + 8))(qword_1009EDF28);
  }

  if (qword_1009F9D98)
  {
    (*(*qword_1009F9D98 + 8))(qword_1009F9D98);
  }

  if (qword_1009EDF38)
  {
    (*(*qword_1009EDF38 + 8))(qword_1009EDF38);
  }

  if (qword_1009F9DA0)
  {
    (*(*qword_1009F9DA0 + 8))(qword_1009F9DA0);
  }

  if (qword_1009EDF48)
  {
    (*(*qword_1009EDF48 + 8))(qword_1009EDF48);
  }

  if (qword_1009F9DA8)
  {
    (*(*qword_1009F9DA8 + 8))(qword_1009F9DA8);
  }

  if (qword_1009EDF58)
  {
    (*(*qword_1009EDF58 + 8))(qword_1009EDF58);
  }

  if (qword_1009F9DB0)
  {
    (*(*qword_1009F9DB0 + 8))(qword_1009F9DB0);
  }

  if (qword_1009EDF68)
  {
    (*(*qword_1009EDF68 + 8))(qword_1009EDF68);
  }

  if (qword_1009F9DB8)
  {
    (*(*qword_1009F9DB8 + 8))(qword_1009F9DB8);
  }

  if (qword_1009EDF78)
  {
    (*(*qword_1009EDF78 + 8))(qword_1009EDF78);
  }

  if (qword_1009F9DC0)
  {
    (*(*qword_1009F9DC0 + 8))(qword_1009F9DC0);
  }

  if (qword_1009EDF88)
  {
    (*(*qword_1009EDF88 + 8))(qword_1009EDF88);
  }

  if (qword_1009F9DC8)
  {
    (*(*qword_1009F9DC8 + 8))(qword_1009F9DC8);
  }

  if (qword_1009EDF98)
  {
    (*(*qword_1009EDF98 + 8))(qword_1009EDF98);
  }

  if (qword_1009F9DD0)
  {
    (*(*qword_1009F9DD0 + 8))(qword_1009F9DD0);
  }

  if (qword_1009EDFA8)
  {
    (*(*qword_1009EDFA8 + 8))(qword_1009EDFA8);
  }

  if (qword_1009F9DD8)
  {
    (*(*qword_1009F9DD8 + 8))(qword_1009F9DD8);
  }

  if (qword_1009EDFB8)
  {
    (*(*qword_1009EDFB8 + 8))(qword_1009EDFB8);
  }

  if (qword_1009F9DE0)
  {
    (*(*qword_1009F9DE0 + 8))(qword_1009F9DE0);
  }

  if (qword_1009EDFC8)
  {
    (*(*qword_1009EDFC8 + 8))(qword_1009EDFC8);
  }

  if (qword_1009F9DE8)
  {
    (*(*qword_1009F9DE8 + 8))(qword_1009F9DE8);
  }

  if (qword_1009EDFD8)
  {
    (*(*qword_1009EDFD8 + 8))(qword_1009EDFD8);
  }

  if (qword_1009F9DF0)
  {
    (*(*qword_1009F9DF0 + 8))(qword_1009F9DF0);
  }

  if (qword_1009EDFE8)
  {
    (*(*qword_1009EDFE8 + 8))(qword_1009EDFE8);
  }

  if (qword_1009F9DF8)
  {
    (*(*qword_1009F9DF8 + 8))(qword_1009F9DF8);
  }

  if (qword_1009EDFF8)
  {
    (*(*qword_1009EDFF8 + 8))(qword_1009EDFF8);
  }

  if (qword_1009F9E00)
  {
    (*(*qword_1009F9E00 + 8))(qword_1009F9E00);
  }

  if (qword_1009EE008)
  {
    (*(*qword_1009EE008 + 8))(qword_1009EE008);
  }

  if (qword_1009F9E08)
  {
    (*(*qword_1009F9E08 + 8))(qword_1009F9E08);
  }

  if (qword_1009EE018)
  {
    (*(*qword_1009EE018 + 8))(qword_1009EE018);
  }

  if (qword_1009F9E10)
  {
    (*(*qword_1009F9E10 + 8))(qword_1009F9E10);
  }

  if (qword_1009EE028)
  {
    (*(*qword_1009EE028 + 8))(qword_1009EE028);
  }

  if (qword_1009F9E18)
  {
    (*(*qword_1009F9E18 + 8))(qword_1009F9E18);
  }

  if (qword_1009EE038)
  {
    (*(*qword_1009EE038 + 8))(qword_1009EE038);
  }

  if (qword_1009F9E20)
  {
    (*(*qword_1009F9E20 + 8))(qword_1009F9E20);
  }

  if (qword_1009EE048)
  {
    (*(*qword_1009EE048 + 8))(qword_1009EE048);
  }

  if (qword_1009F9E28)
  {
    (*(*qword_1009F9E28 + 8))(qword_1009F9E28);
  }

  if (qword_1009EE058)
  {
    (*(*qword_1009EE058 + 8))(qword_1009EE058);
  }

  if (qword_1009F9E30)
  {
    (*(*qword_1009F9E30 + 8))(qword_1009F9E30);
  }

  if (qword_1009EE068)
  {
    (*(*qword_1009EE068 + 8))(qword_1009EE068);
  }

  if (qword_1009F9E38)
  {
    (*(*qword_1009F9E38 + 8))(qword_1009F9E38);
  }

  if (qword_1009EE078)
  {
    (*(*qword_1009EE078 + 8))(qword_1009EE078);
  }

  if (qword_1009F9E40)
  {
    (*(*qword_1009F9E40 + 8))(qword_1009F9E40);
  }

  if (qword_1009EE088)
  {
    (*(*qword_1009EE088 + 8))(qword_1009EE088);
  }

  if (qword_1009F9E48)
  {
    (*(*qword_1009F9E48 + 8))(qword_1009F9E48);
  }

  if (qword_1009EE098)
  {
    (*(*qword_1009EE098 + 8))(qword_1009EE098);
  }

  if (qword_1009F9E50)
  {
    (*(*qword_1009F9E50 + 8))(qword_1009F9E50);
  }

  if (qword_1009EE0A8)
  {
    (*(*qword_1009EE0A8 + 8))(qword_1009EE0A8);
  }

  if (qword_1009F9E58)
  {
    (*(*qword_1009F9E58 + 8))(qword_1009F9E58);
  }

  if (qword_1009EE0B8)
  {
    (*(*qword_1009EE0B8 + 8))(qword_1009EE0B8);
  }

  if (qword_1009F9E60)
  {
    (*(*qword_1009F9E60 + 8))(qword_1009F9E60);
  }

  if (qword_1009EE0C8)
  {
    (*(*qword_1009EE0C8 + 8))(qword_1009EE0C8);
  }

  if (qword_1009F9E68)
  {
    (*(*qword_1009F9E68 + 8))(qword_1009F9E68);
  }

  if (qword_1009EE0D8)
  {
    (*(*qword_1009EE0D8 + 8))(qword_1009EE0D8);
  }

  if (qword_1009F9E70)
  {
    (*(*qword_1009F9E70 + 8))(qword_1009F9E70);
  }

  if (qword_1009EE0E8)
  {
    (*(*qword_1009EE0E8 + 8))(qword_1009EE0E8);
  }

  if (qword_1009F9E78)
  {
    (*(*qword_1009F9E78 + 8))(qword_1009F9E78);
  }

  if (qword_1009EE0F8)
  {
    (*(*qword_1009EE0F8 + 8))(qword_1009EE0F8);
  }

  if (qword_1009F9E80)
  {
    (*(*qword_1009F9E80 + 8))(qword_1009F9E80);
  }

  if (qword_1009EE108)
  {
    (*(*qword_1009EE108 + 8))(qword_1009EE108);
  }

  if (qword_1009F9E88)
  {
    (*(*qword_1009F9E88 + 8))(qword_1009F9E88);
  }

  if (qword_1009EE118)
  {
    (*(*qword_1009EE118 + 8))(qword_1009EE118);
  }

  if (qword_1009F9E90)
  {
    (*(*qword_1009F9E90 + 8))(qword_1009F9E90);
  }

  if (qword_1009EE128)
  {
    (*(*qword_1009EE128 + 8))(qword_1009EE128);
  }

  if (qword_1009F9E98)
  {
    (*(*qword_1009F9E98 + 8))(qword_1009F9E98);
  }

  if (qword_1009EE138)
  {
    (*(*qword_1009EE138 + 8))(qword_1009EE138);
  }

  if (qword_1009F9EA0)
  {
    (*(*qword_1009F9EA0 + 8))(qword_1009F9EA0);
  }

  if (qword_1009EE148)
  {
    (*(*qword_1009EE148 + 8))(qword_1009EE148);
  }

  if (qword_1009F9EA8)
  {
    (*(*qword_1009F9EA8 + 8))(qword_1009F9EA8);
  }

  if (qword_1009EE158)
  {
    (*(*qword_1009EE158 + 8))(qword_1009EE158);
  }

  if (qword_1009F9EB0)
  {
    (*(*qword_1009F9EB0 + 8))(qword_1009F9EB0);
  }

  if (qword_1009EE168)
  {
    (*(*qword_1009EE168 + 8))(qword_1009EE168);
  }

  if (qword_1009F9EB8)
  {
    (*(*qword_1009F9EB8 + 8))(qword_1009F9EB8);
  }

  if (qword_1009EE178)
  {
    (*(*qword_1009EE178 + 8))(qword_1009EE178);
  }

  if (qword_1009F9EC0)
  {
    (*(*qword_1009F9EC0 + 8))(qword_1009F9EC0);
  }

  if (qword_1009EE188)
  {
    (*(*qword_1009EE188 + 8))(qword_1009EE188);
  }

  if (qword_1009F9EC8)
  {
    (*(*qword_1009F9EC8 + 8))(qword_1009F9EC8);
  }

  if (qword_1009EE198)
  {
    (*(*qword_1009EE198 + 8))(qword_1009EE198);
  }

  if (qword_1009F9ED0)
  {
    (*(*qword_1009F9ED0 + 8))(qword_1009F9ED0);
  }

  if (qword_1009EE1A8)
  {
    (*(*qword_1009EE1A8 + 8))(qword_1009EE1A8);
  }

  if (qword_1009F9ED8)
  {
    (*(*qword_1009F9ED8 + 8))(qword_1009F9ED8);
  }

  if (qword_1009EE1B8)
  {
    (*(*qword_1009EE1B8 + 8))(qword_1009EE1B8);
  }

  if (qword_1009F9EE0)
  {
    (*(*qword_1009F9EE0 + 8))(qword_1009F9EE0);
  }

  result = qword_1009EE1C8;
  if (qword_1009EE1C8)
  {
    v1 = *(*qword_1009EE1C8 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000FC21C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v87[1] = sub_1000F6148;
    v88 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v87);
  }

  if (!qword_1009F9C38)
  {
    (sub_1000F8CA0)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C40)
  {
    sub_1000F8CA0(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C48)
  {
    sub_1000F8CA0(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C50)
  {
    sub_1000F8CA0(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C58)
  {
    sub_1000F8CA0(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C60)
  {
    sub_1000F8CA0(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C68)
  {
    sub_1000F8CA0(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C70)
  {
    sub_1000F8CA0(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C78)
  {
    sub_1000F8CA0(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C80)
  {
    sub_1000F8CA0(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C88)
  {
    sub_1000F8CA0(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C90)
  {
    sub_1000F8CA0(v11);
  }

  v12 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9C98)
  {
    sub_1000F8CA0(v12);
  }

  v13 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CA0)
  {
    sub_1000F8CA0(v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CA8)
  {
    sub_1000F8CA0(v14);
  }

  v15 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CB0)
  {
    sub_1000F8CA0(v15);
  }

  v16 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CB8)
  {
    sub_1000F8CA0(v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CC0)
  {
    sub_1000F8CA0(v17);
  }

  v18 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CC8)
  {
    sub_1000F8CA0(v18);
  }

  v19 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CD0)
  {
    sub_1000F8CA0(v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CD8)
  {
    sub_1000F8CA0(v20);
  }

  v21 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CE0)
  {
    sub_1000F8CA0(v21);
  }

  v22 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CE8)
  {
    sub_1000F8CA0(v22);
  }

  v23 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CF0)
  {
    sub_1000F8CA0(v23);
  }

  v24 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9CF8)
  {
    sub_1000F8CA0(v24);
  }

  v25 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D00)
  {
    sub_1000F8CA0(v25);
  }

  v26 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D08)
  {
    sub_1000F8CA0(v26);
  }

  v27 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D10)
  {
    sub_1000F8CA0(v27);
  }

  v28 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D18)
  {
    sub_1000F8CA0(v28);
  }

  v29 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D20)
  {
    sub_1000F8CA0(v29);
  }

  v30 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D28)
  {
    sub_1000F8CA0(v30);
  }

  v31 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D30)
  {
    sub_1000F8CA0(v31);
  }

  v32 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D38)
  {
    sub_1000F8CA0(v32);
  }

  v33 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D40)
  {
    sub_1000F8CA0(v33);
  }

  v34 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D48)
  {
    sub_1000F8CA0(v34);
  }

  v35 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D50)
  {
    sub_1000F8CA0(v35);
  }

  v36 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D58)
  {
    sub_1000F8CA0(v36);
  }

  v37 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D60)
  {
    sub_1000F8CA0(v37);
  }

  v38 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D68)
  {
    sub_1000F8CA0(v38);
  }

  v39 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D70)
  {
    sub_1000F8CA0(v39);
  }

  v40 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D78)
  {
    sub_1000F8CA0(v40);
  }

  v41 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D80)
  {
    sub_1000F8CA0(v41);
  }

  v42 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D88)
  {
    sub_1000F8CA0(v42);
  }

  v43 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D90)
  {
    sub_1000F8CA0(v43);
  }

  v44 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9D98)
  {
    sub_1000F8CA0(v44);
  }

  v45 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DA0)
  {
    sub_1000F8CA0(v45);
  }

  v46 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DA8)
  {
    sub_1000F8CA0(v46);
  }

  v47 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DB0)
  {
    sub_1000F8CA0(v47);
  }

  v48 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DB8)
  {
    sub_1000F8CA0(v48);
  }

  v49 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DC0)
  {
    sub_1000F8CA0(v49);
  }

  v50 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DC8)
  {
    sub_1000F8CA0(v50);
  }

  v51 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DD0)
  {
    sub_1000F8CA0(v51);
  }

  v52 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DD8)
  {
    sub_1000F8CA0(v52);
  }

  v53 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DE0)
  {
    sub_1000F8CA0(v53);
  }

  v54 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DE8)
  {
    sub_1000F8CA0(v54);
  }

  v55 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DF0)
  {
    sub_1000F8CA0(v55);
  }

  v56 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9DF8)
  {
    sub_1000F8CA0(v56);
  }

  v57 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E00)
  {
    sub_1000F8CA0(v57);
  }

  v58 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E08)
  {
    sub_1000F8CA0(v58);
  }

  v59 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E10)
  {
    sub_1000F8CA0(v59);
  }

  v60 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E18)
  {
    sub_1000F8CA0(v60);
  }

  v61 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E20)
  {
    sub_1000F8CA0(v61);
  }

  v62 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E28)
  {
    sub_1000F8CA0(v62);
  }

  v63 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E30)
  {
    sub_1000F8CA0(v63);
  }

  v64 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E38)
  {
    sub_1000F8CA0(v64);
  }

  v65 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E40)
  {
    sub_1000F8CA0(v65);
  }

  v66 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E48)
  {
    sub_1000F8CA0(v66);
  }

  v67 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E50)
  {
    sub_1000F8CA0(v67);
  }

  v68 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E58)
  {
    sub_1000F8CA0(v68);
  }

  v69 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E60)
  {
    sub_1000F8CA0(v69);
  }

  v70 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E68)
  {
    sub_1000F8CA0(v70);
  }

  v71 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E70)
  {
    sub_1000F8CA0(v71);
  }

  v72 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E78)
  {
    sub_1000F8CA0(v72);
  }

  v73 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E80)
  {
    sub_1000F8CA0(v73);
  }

  v74 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E88)
  {
    sub_1000F8CA0(v74);
  }

  v75 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E90)
  {
    sub_1000F8CA0(v75);
  }

  v76 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9E98)
  {
    sub_1000F8CA0(v76);
  }

  v77 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EA0)
  {
    sub_1000F8CA0(v77);
  }

  v78 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EA8)
  {
    sub_1000F8CA0(v78);
  }

  v79 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EB0)
  {
    sub_1000F8CA0(v79);
  }

  v80 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EB8)
  {
    sub_1000F8CA0(v80);
  }

  v81 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EC0)
  {
    sub_1000F8CA0(v81);
  }

  v82 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EC8)
  {
    sub_1000F8CA0(v82);
  }

  v83 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9ED0)
  {
    sub_1000F8CA0(v83);
  }

  v84 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9ED8)
  {
    sub_1000F8CA0(v84);
  }

  v85 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_1009F9EE0)
  {
    sub_1000F8CA0(v85);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000FCEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FCFE0(uint64_t result)
{
  v1 = result;
  v2 = qword_1009F9C58;
  if (!qword_1009F9C58)
  {
    result = sub_1000F8CA0(result);
    v2 = qword_1009F9C58;
  }

  v1[2] = v2;
  v3 = qword_1009F9D00;
  if (!qword_1009F9D00)
  {
    result = sub_1000F8CA0(result);
    v3 = qword_1009F9D00;
  }

  v1[3] = v3;
  v4 = qword_1009F9C68;
  if (!qword_1009F9C68)
  {
    result = sub_1000F8CA0(result);
    v4 = qword_1009F9C68;
  }

  v1[4] = v4;
  v5 = qword_1009F9C60;
  if (!qword_1009F9C60)
  {
    result = sub_1000F8CA0(result);
    v5 = qword_1009F9C60;
  }

  v1[5] = v5;
  v6 = qword_1009F9D08;
  if (!qword_1009F9D08)
  {
    result = sub_1000F8CA0(result);
    v6 = qword_1009F9D08;
  }

  v1[6] = v6;
  v7 = qword_1009F9D20;
  if (!qword_1009F9D20)
  {
    result = sub_1000F8CA0(result);
    v7 = qword_1009F9D20;
  }

  v1[7] = v7;
  v8 = qword_1009F9D28;
  if (!qword_1009F9D28)
  {
    result = sub_1000F8CA0(result);
    v8 = qword_1009F9D28;
  }

  v1[8] = v8;
  v9 = qword_1009F9C70;
  if (!qword_1009F9C70)
  {
    result = sub_1000F8CA0(result);
    v9 = qword_1009F9C70;
  }

  v1[9] = v9;
  v10 = qword_1009F9C80;
  if (!qword_1009F9C80)
  {
    result = sub_1000F8CA0(result);
    v10 = qword_1009F9C80;
  }

  v1[10] = v10;
  v11 = qword_1009F9C78;
  if (!qword_1009F9C78)
  {
    result = sub_1000F8CA0(result);
    v11 = qword_1009F9C78;
  }

  v1[11] = v11;
  v12 = qword_1009F9C98;
  if (!qword_1009F9C98)
  {
    result = sub_1000F8CA0(result);
    v12 = qword_1009F9C98;
  }

  v1[12] = v12;
  v13 = qword_1009F9C90;
  if (!qword_1009F9C90)
  {
    result = sub_1000F8CA0(result);
    v13 = qword_1009F9C90;
  }

  v1[13] = v13;
  v14 = qword_1009F9D10;
  if (!qword_1009F9D10)
  {
    result = sub_1000F8CA0(result);
    v14 = qword_1009F9D10;
  }

  v1[14] = v14;
  v15 = qword_1009F9D18;
  if (!qword_1009F9D18)
  {
    result = sub_1000F8CA0(result);
    v15 = qword_1009F9D18;
  }

  v1[15] = v15;
  v16 = qword_1009F9CA0;
  if (!qword_1009F9CA0)
  {
    result = sub_1000F8CA0(result);
    v16 = qword_1009F9CA0;
  }

  v1[16] = v16;
  v17 = qword_1009F9CA8;
  if (!qword_1009F9CA8)
  {
    result = sub_1000F8CA0(result);
    v17 = qword_1009F9CA8;
  }

  v1[17] = v17;
  return result;
}

uint64_t sub_1000FD180(uint64_t result)
{
  v1 = result;
  v2 = qword_1009F9CE0;
  if (!qword_1009F9CE0)
  {
    result = sub_1000F8CA0(result);
    v2 = qword_1009F9CE0;
  }

  v1[6] = v2;
  v3 = qword_1009F9CD8;
  if (!qword_1009F9CD8)
  {
    result = sub_1000F8CA0(result);
    v3 = qword_1009F9CD8;
  }

  v1[7] = v3;
  v4 = qword_1009F9CF8;
  if (!qword_1009F9CF8)
  {
    result = sub_1000F8CA0(result);
    v4 = qword_1009F9CF8;
  }

  v1[8] = v4;
  v5 = qword_1009F9CD0;
  if (!qword_1009F9CD0)
  {
    result = sub_1000F8CA0(result);
    v5 = qword_1009F9CD0;
  }

  v1[9] = v5;
  v6 = qword_1009F9CC8;
  if (!qword_1009F9CC8)
  {
    result = sub_1000F8CA0(result);
    v6 = qword_1009F9CC8;
  }

  v1[10] = v6;
  v7 = qword_1009F9CE8;
  if (!qword_1009F9CE8)
  {
    result = sub_1000F8CA0(result);
    v7 = qword_1009F9CE8;
  }

  v1[12] = v7;
  v8 = qword_1009F9CF0;
  if (!qword_1009F9CF0)
  {
    result = sub_1000F8CA0(result);
    v8 = qword_1009F9CF0;
  }

  v1[13] = v8;
  return result;
}

uint64_t sub_1000FD248(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = a1;
  v5 = qword_1009F9E18;
  if (!qword_1009F9E18)
  {
    a1 = sub_1000F8CA0(a1);
    v5 = qword_1009F9E18;
  }

  v4[3] = v5;
  v6 = qword_1009F9E10;
  if (!qword_1009F9E10)
  {
    a1 = sub_1000F8CA0(a1);
    v6 = qword_1009F9E10;
  }

  v4[4] = v6;
  v7 = sub_100063308(a1, a2, a3, a4);
  v4[8] = v7;
  result = sub_100063308(v7, v8, v9, v10);
  v4[10] = result;
  return result;
}

uint64_t sub_1000FD2CC(uint64_t a1)
{
  *a1 = off_100992780;
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

uint64_t sub_1000FD33C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v38);
  }

  v4 = *(a2 + 148);
  if (v4)
  {
    if (v4)
    {
      *(a1 + 148) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9C38 + 16);
      }

      sub_1001008D8(v5, v6);
      v4 = *(a2 + 148);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 148) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9C38 + 24);
      }

      sub_100100A24(v7, v8);
      v4 = *(a2 + 148);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 148) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9C38 + 32);
      }

      sub_100100E74(v9, v10);
      v4 = *(a2 + 148);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 148) |= 8u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 40);
      if (!v12)
      {
        v12 = *(qword_1009F9C38 + 40);
      }

      sub_100101108(v11, v12);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x10) != 0)
    {
      *(a1 + 148) |= 0x10u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 48);
      if (!v14)
      {
        v14 = *(qword_1009F9C38 + 48);
      }

      sub_100101238(v13, v14);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 148) |= 0x20u;
      v15 = *(a1 + 56);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 56);
      if (!v16)
      {
        v16 = *(qword_1009F9C38 + 56);
      }

      sub_10010132C(v15, v16);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 148) |= 0x40u;
      v17 = *(a1 + 64);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 64);
      if (!v18)
      {
        v18 = *(qword_1009F9C38 + 64);
      }

      sub_100101440(v17, v18);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 148) |= 0x80u;
      v19 = *(a1 + 72);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 72);
      if (!v20)
      {
        v20 = *(qword_1009F9C38 + 72);
      }

      sub_100101554(v19, v20);
      v4 = *(a2 + 148);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 148) |= 0x100u;
      v21 = *(a1 + 80);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 80);
      if (!v22)
      {
        v22 = *(qword_1009F9C38 + 80);
      }

      sub_1001016CC(v21, v22);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 148) |= 0x200u;
      v23 = *(a1 + 88);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 88);
      if (!v24)
      {
        v24 = *(qword_1009F9C38 + 88);
      }

      sub_100101808(v23, v24);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x400) != 0)
    {
      *(a1 + 148) |= 0x400u;
      v25 = *(a1 + 96);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 96);
      if (!v26)
      {
        v26 = *(qword_1009F9C38 + 96);
      }

      sub_1001019A0(v25, v26);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x800) != 0)
    {
      *(a1 + 148) |= 0x800u;
      v27 = *(a1 + 104);
      if (!v27)
      {
        operator new();
      }

      v28 = *(a2 + 104);
      if (!v28)
      {
        v28 = *(qword_1009F9C38 + 104);
      }

      sub_100101AB4(v27, v28);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x1000) != 0)
    {
      *(a1 + 148) |= 0x1000u;
      v29 = *(a1 + 112);
      if (!v29)
      {
        operator new();
      }

      v30 = *(a2 + 112);
      if (!v30)
      {
        v30 = *(qword_1009F9C38 + 112);
      }

      sub_100101D2C(v29, v30);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x2000) != 0)
    {
      *(a1 + 148) |= 0x2000u;
      v31 = *(a1 + 120);
      if (!v31)
      {
        operator new();
      }

      v32 = *(a2 + 120);
      if (!v32)
      {
        v32 = *(qword_1009F9C38 + 120);
      }

      sub_100101E5C(v31, v32);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x4000) != 0)
    {
      *(a1 + 148) |= 0x4000u;
      v33 = *(a1 + 128);
      if (!v33)
      {
        operator new();
      }

      v34 = *(a2 + 128);
      if (!v34)
      {
        v34 = *(qword_1009F9C38 + 128);
      }

      sub_100101F0C(v33, v34);
      v4 = *(a2 + 148);
    }

    if ((v4 & 0x8000) != 0)
    {
      *(a1 + 148) |= 0x8000u;
      v35 = *(a1 + 136);
      if (!v35)
      {
        operator new();
      }

      v36 = *(a2 + 136);
      if (!v36)
      {
        v36 = *(qword_1009F9C38 + 136);
      }

      sub_100102174(v35, v36);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000FDA38(void *a1)
{
  *a1 = off_100992780;
  v2 = (a1 + 1);
  sub_1000FDA98(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1000FDA98(void *result)
{
  if (qword_1009F9C38 != result)
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

    v11 = v1[11];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[12];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[16];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    result = v1[17];
    if (result)
    {
      v17 = *(*result + 8);

      return v17();
    }
  }

  return result;
}

void sub_1000FDDA4(void *a1)
{
  sub_1000FDA38(a1);

  operator delete();
}

uint64_t sub_1000FDDE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9C38;
  if (!qword_1009F9C38)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9C38;
  }

  return result;
}

uint64_t sub_1000FDE78(uint64_t this)
{
  v1 = this;
  v2 = *(this + 148);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_1000FE02C(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_1000FE098(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_1000FE214(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_1000FE2E8(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_1000FE350(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_1000FE3A0(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_1000FE3F8(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = sub_1000FE450(this);
        v2 = *(v1 + 148);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = sub_1000FE4BC(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        this = sub_1000FE518(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = sub_1000FE588(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        this = sub_1000FE5B0(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x1000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = sub_1000FE64C(this);
        v2 = *(v1 + 148);
      }
    }

    if ((v2 & 0x2000) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        if (*(this + 28))
        {
          *(this + 16) = 0;
        }

        v3 = *(this + 8);
        this += 8;
        *(this + 20) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v4 = *(v1 + 148);
    if ((v4 & 0x4000) != 0)
    {
      this = *(v1 + 128);
      if (this)
      {
        this = sub_1000FE6D4(this);
        v4 = *(v1 + 148);
      }
    }

    if ((v4 & 0x8000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = sub_1000FE76C(this);
      }
    }
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 35) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_1000FE02C(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = sub_100104230(this);
      }
    }

    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_1000FE098(uint64_t a1)
{
  if (*(a1 + 120))
  {
    if (*(a1 + 120))
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

    v3 = *(a1 + 120);
    if ((v3 & 4) != 0)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        sub_100111510(v4);
        v3 = *(a1 + 120);
      }
    }

    if ((v3 & 8) != 0)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        sub_100110CF8(v5);
        v3 = *(a1 + 120);
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        sub_100113EA8(v6);
        v3 = *(a1 + 120);
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v7 = *(a1 + 72);
      if (v7)
      {
        sub_1001102F8(v7);
        v3 = *(a1 + 120);
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v8 = *(a1 + 80);
      if (v8)
      {
        if (*(v8 + 40))
        {
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
          *(v8 + 32) = 0;
        }

        v10 = *(v8 + 8);
        v9 = (v8 + 8);
        *(v9 + 8) = 0;
        if (v10)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
        }
      }
    }

    if ((*(a1 + 120) & 0x80) != 0)
    {
      v11 = *(a1 + 88);
      if (v11 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }
  }

  v12 = *(a1 + 120);
  if ((v12 & 0xFF00) != 0)
  {
    if ((v12 & 0x100) != 0)
    {
      v13 = *(a1 + 96);
      if (v13)
      {
        sub_100112044(v13);
        v12 = *(a1 + 120);
      }
    }

    if ((v12 & 0x200) != 0)
    {
      v14 = *(a1 + 104);
      if (v14)
      {
        sub_1001130F0(v14);
      }
    }

    *(a1 + 112) = 0;
  }

  result = sub_100077B98(a1 + 24);
  v17 = *(a1 + 8);
  v16 = (a1 + 8);
  *(v16 + 28) = 0;
  if (v17)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v16);
  }

  return result;
}

uint64_t sub_1000FE214(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 68);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = sub_100104230(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_100102784(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_100102784(this);
        v2 = *(v1 + 68);
      }
    }

    *(v1 + 48) = 0;
    *(v1 + 52) = 0;
    if ((v2 & 0x40) != 0)
    {
      v3 = *(v1 + 56);
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
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 15) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_1000FE2E8(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = sub_100104230(this);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE350(uint64_t a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE3A0(uint64_t a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE3F8(uint64_t a1)
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

uint64_t sub_1000FE450(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = sub_100104230(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 11) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE4BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    if ((v1 & 4) != 0)
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
  *(result + 8) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000FE518(uint64_t this)
{
  v1 = this;
  v2 = *(this + 56);
  if (v2)
  {
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((v2 & 8) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = sub_100104230(this);
      }
    }

    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 12) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE588(uint64_t a1)
{
  if (*(a1 + 44))
  {
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  *(result + 9) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE5B0(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 22) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_1001094BC(this);
        v2 = *(v1 + 24);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 3);
      if (this)
      {
        this = sub_1001094BC(this);
        v2 = *(v1 + 24);
      }
    }

    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 10) = 0;
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 8) = 0;
  *(v3 + 22) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_1000FE64C(uint64_t a1)
{
  if (*(a1 + 72))
  {
    *(a1 + 64) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
  }

  result = sub_100077B98(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  *(v3 + 16) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FE6B4(uint64_t a1)
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

uint64_t sub_1000FE6D4(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    *(this + 64) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 16) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = sub_100096434(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_100096B88(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_1000E2E44(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 16) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_1000FE76C(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    if (*(this + 44))
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

    *(this + 24) = 0;
    if ((*(this + 44) & 4) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = sub_100104230(this);
      }
    }
  }

  v4 = *(v1 + 8);
  v3 = (v1 + 8);
  *(v3 + 9) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_1000FE810(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    v6 = *(this + 1);
    if (v6 < *(this + 2))
    {
      TagFallback = *v6;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
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
    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_42;
        }

        *(a1 + 148) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v170 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v10;
          *(this + 1) = v10 + 1;
        }

        v11 = *(this + 14);
        v12 = *(this + 15);
        *(this + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_10010526C(v9, this, v14, v15) || *(this + 36) != 1)
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
        if (v19 >= *(this + 2) || *v19 != 18)
        {
          continue;
        }

        *(this + 1) = v19 + 1;
        goto LABEL_54;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_42;
        }

LABEL_54:
        *(a1 + 148) |= 2u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          operator new();
        }

        v170 = 0;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v21;
          *(this + 1) = v21 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100114F64(v20, this, v25, v26) || *(this + 36) != 1)
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

        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 26)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_68:
        *(a1 + 148) |= 4u;
        v30 = *(a1 + 32);
        if (!v30)
        {
          operator new();
        }

        v170 = 0;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v31;
          *(this + 1) = v31 + 1;
        }

        v32 = *(this + 14);
        v33 = *(this + 15);
        *(this + 14) = v32 + 1;
        if (v32 >= v33)
        {
          return 0;
        }

        v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_1001064B0(v30, this, v35, v36) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
        v37 = *(this + 14);
        v17 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v17)
        {
          *(this + 14) = v38;
        }

        v39 = *(this + 1);
        if (v39 >= *(this + 2) || *v39 != 34)
        {
          continue;
        }

        *(this + 1) = v39 + 1;
LABEL_82:
        *(a1 + 148) |= 8u;
        v40 = *(a1 + 40);
        if (!v40)
        {
          operator new();
        }

        v170 = 0;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v41;
          *(this + 1) = v41 + 1;
        }

        v42 = *(this + 14);
        v43 = *(this + 15);
        *(this + 14) = v42 + 1;
        if (v42 >= v43)
        {
          return 0;
        }

        v44 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100105B84(v40, this, v45, v46) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v44);
        v47 = *(this + 14);
        v17 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v17)
        {
          *(this + 14) = v48;
        }

        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 42)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_96:
        *(a1 + 148) |= 0x10u;
        v50 = *(a1 + 48);
        if (!v50)
        {
          operator new();
        }

        v170 = 0;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v51;
          *(this + 1) = v51 + 1;
        }

        v52 = *(this + 14);
        v53 = *(this + 15);
        *(this + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100116980(v50, this, v55, v56) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
        v57 = *(this + 14);
        v17 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v17)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 50)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_110:
        *(a1 + 148) |= 0x20u;
        v60 = *(a1 + 56);
        if (!v60)
        {
          operator new();
        }

        v170 = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100118150(v60, this, v65, v66) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
        v67 = *(this + 14);
        v17 = __OFSUB__(v67, 1);
        v68 = v67 - 1;
        if (v68 < 0 == v17)
        {
          *(this + 14) = v68;
        }

        v69 = *(this + 1);
        if (v69 >= *(this + 2) || *v69 != 58)
        {
          continue;
        }

        *(this + 1) = v69 + 1;
LABEL_124:
        *(a1 + 148) |= 0x40u;
        v70 = *(a1 + 64);
        if (!v70)
        {
          operator new();
        }

        v170 = 0;
        v71 = *(this + 1);
        if (v71 >= *(this + 2) || *v71 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v71;
          *(this + 1) = v71 + 1;
        }

        v72 = *(this + 14);
        v73 = *(this + 15);
        *(this + 14) = v72 + 1;
        if (v72 >= v73)
        {
          return 0;
        }

        v74 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_1001188C0(v70, this, v75, v76) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v74);
        v77 = *(this + 14);
        v17 = __OFSUB__(v77, 1);
        v78 = v77 - 1;
        if (v78 < 0 == v17)
        {
          *(this + 14) = v78;
        }

        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 != 66)
        {
          continue;
        }

        *(this + 1) = v79 + 1;
LABEL_138:
        *(a1 + 148) |= 0x80u;
        v80 = *(a1 + 72);
        if (!v80)
        {
          operator new();
        }

        v170 = 0;
        v81 = *(this + 1);
        if (v81 >= *(this + 2) || *v81 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v81;
          *(this + 1) = v81 + 1;
        }

        v82 = *(this + 14);
        v83 = *(this + 15);
        *(this + 14) = v82 + 1;
        if (v82 >= v83)
        {
          return 0;
        }

        v84 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_1001073C4(v80, this, v85, v86) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v84);
        v87 = *(this + 14);
        v17 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v17)
        {
          *(this + 14) = v88;
        }

        v89 = *(this + 1);
        if (v89 >= *(this + 2) || *v89 != 74)
        {
          continue;
        }

        *(this + 1) = v89 + 1;
LABEL_152:
        *(a1 + 148) |= 0x100u;
        v90 = *(a1 + 80);
        if (!v90)
        {
          operator new();
        }

        v170 = 0;
        v91 = *(this + 1);
        if (v91 >= *(this + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v91;
          *(this + 1) = v91 + 1;
        }

        v92 = *(this + 14);
        v93 = *(this + 15);
        *(this + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        v94 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_1001088F4(v90, this, v95, v96) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v94);
        v97 = *(this + 14);
        v17 = __OFSUB__(v97, 1);
        v98 = v97 - 1;
        if (v98 < 0 == v17)
        {
          *(this + 14) = v98;
        }

        v99 = *(this + 1);
        if (v99 >= *(this + 2) || *v99 != 82)
        {
          continue;
        }

        *(this + 1) = v99 + 1;
LABEL_166:
        *(a1 + 148) |= 0x200u;
        v100 = *(a1 + 88);
        if (!v100)
        {
          operator new();
        }

        v170 = 0;
        v101 = *(this + 1);
        if (v101 >= *(this + 2) || *v101 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v101;
          *(this + 1) = v101 + 1;
        }

        v102 = *(this + 14);
        v103 = *(this + 15);
        *(this + 14) = v102 + 1;
        if (v102 >= v103)
        {
          return 0;
        }

        v104 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100107DBC(v100, this, v105, v106) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v104);
        v107 = *(this + 14);
        v17 = __OFSUB__(v107, 1);
        v108 = v107 - 1;
        if (v108 < 0 == v17)
        {
          *(this + 14) = v108;
        }

        v109 = *(this + 1);
        if (v109 >= *(this + 2) || *v109 != 90)
        {
          continue;
        }

        *(this + 1) = v109 + 1;
LABEL_180:
        *(a1 + 148) |= 0x400u;
        v110 = *(a1 + 96);
        if (!v110)
        {
          operator new();
        }

        v170 = 0;
        v111 = *(this + 1);
        if (v111 >= *(this + 2) || *v111 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v111;
          *(this + 1) = v111 + 1;
        }

        v112 = *(this + 14);
        v113 = *(this + 15);
        *(this + 14) = v112 + 1;
        if (v112 >= v113)
        {
          return 0;
        }

        v114 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_10010B974(v110, this, v115, v116) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v114);
        v117 = *(this + 14);
        v17 = __OFSUB__(v117, 1);
        v118 = v117 - 1;
        if (v118 < 0 == v17)
        {
          *(this + 14) = v118;
        }

        v119 = *(this + 1);
        if (v119 >= *(this + 2) || *v119 != 98)
        {
          continue;
        }

        *(this + 1) = v119 + 1;
LABEL_194:
        *(a1 + 148) |= 0x800u;
        v120 = *(a1 + 104);
        if (!v120)
        {
          operator new();
        }

        v170 = 0;
        v121 = *(this + 1);
        if (v121 >= *(this + 2) || *v121 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v121;
          *(this + 1) = v121 + 1;
        }

        v122 = *(this + 14);
        v123 = *(this + 15);
        *(this + 14) = v122 + 1;
        if (v122 >= v123)
        {
          return 0;
        }

        v124 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_10010A8BC(v120, this, v125, v126) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v124);
        v127 = *(this + 14);
        v17 = __OFSUB__(v127, 1);
        v128 = v127 - 1;
        if (v128 < 0 == v17)
        {
          *(this + 14) = v128;
        }

        v129 = *(this + 1);
        if (v129 >= *(this + 2) || *v129 != 106)
        {
          continue;
        }

        *(this + 1) = v129 + 1;
LABEL_208:
        *(a1 + 148) |= 0x1000u;
        v130 = *(a1 + 112);
        if (!v130)
        {
          operator new();
        }

        v170 = 0;
        v131 = *(this + 1);
        if (v131 >= *(this + 2) || *v131 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v131;
          *(this + 1) = v131 + 1;
        }

        v132 = *(this + 14);
        v133 = *(this + 15);
        *(this + 14) = v132 + 1;
        if (v132 >= v133)
        {
          return 0;
        }

        v134 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100117018(v130, this, v135, v136) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v134);
        v137 = *(this + 14);
        v17 = __OFSUB__(v137, 1);
        v138 = v137 - 1;
        if (v138 < 0 == v17)
        {
          *(this + 14) = v138;
        }

        v139 = *(this + 1);
        if (v139 >= *(this + 2) || *v139 != 114)
        {
          continue;
        }

        *(this + 1) = v139 + 1;
LABEL_222:
        *(a1 + 148) |= 0x2000u;
        v140 = *(a1 + 120);
        if (!v140)
        {
          operator new();
        }

        v170 = 0;
        v141 = *(this + 1);
        if (v141 >= *(this + 2) || *v141 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v141;
          *(this + 1) = v141 + 1;
        }

        v142 = *(this + 14);
        v143 = *(this + 15);
        *(this + 14) = v142 + 1;
        if (v142 >= v143)
        {
          return 0;
        }

        v144 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_100117B68(v140, this, v145, v146) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v144);
        v147 = *(this + 14);
        v17 = __OFSUB__(v147, 1);
        v148 = v147 - 1;
        if (v148 < 0 == v17)
        {
          *(this + 14) = v148;
        }

        v149 = *(this + 1);
        if (v149 >= *(this + 2) || *v149 != 122)
        {
          continue;
        }

        *(this + 1) = v149 + 1;
LABEL_236:
        *(a1 + 148) |= 0x4000u;
        v150 = *(a1 + 128);
        if (!v150)
        {
          operator new();
        }

        v170 = 0;
        v151 = *(this + 1);
        if (v151 >= *(this + 2) || *v151 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v151;
          *(this + 1) = v151 + 1;
        }

        v152 = *(this + 14);
        v153 = *(this + 15);
        *(this + 14) = v152 + 1;
        if (v152 >= v153)
        {
          return 0;
        }

        v154 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_10010C3B4(v150, this, v155, v156) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v154);
        v157 = *(this + 14);
        v17 = __OFSUB__(v157, 1);
        v158 = v157 - 1;
        if (v158 < 0 == v17)
        {
          *(this + 14) = v158;
        }

        v159 = *(this + 1);
        if (*(this + 4) - v159 <= 1 || *v159 != 130 || v159[1] != 1)
        {
          continue;
        }

        *(this + 1) = v159 + 2;
LABEL_251:
        *(a1 + 148) |= 0x8000u;
        v160 = *(a1 + 136);
        if (!v160)
        {
          operator new();
        }

        v170 = 0;
        v161 = *(this + 1);
        if (v161 >= *(this + 2) || *v161 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v170))
          {
            return 0;
          }
        }

        else
        {
          v170 = *v161;
          *(this + 1) = v161 + 1;
        }

        v162 = *(this + 14);
        v163 = *(this + 15);
        *(this + 14) = v162 + 1;
        if (v162 >= v163)
        {
          return 0;
        }

        v164 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v170);
        if (!sub_10010D300(v160, this, v165, v166) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v164);
        v167 = *(this + 14);
        v17 = __OFSUB__(v167, 1);
        v168 = v167 - 1;
        if (v168 < 0 == v17)
        {
          *(this + 14) = v168;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v8 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_42;
      case 4u:
        if (v8 == 2)
        {
          goto LABEL_82;
        }

        goto LABEL_42;
      case 5u:
        if (v8 == 2)
        {
          goto LABEL_96;
        }

        goto LABEL_42;
      case 6u:
        if (v8 == 2)
        {
          goto LABEL_110;
        }

        goto LABEL_42;
      case 7u:
        if (v8 == 2)
        {
          goto LABEL_124;
        }

        goto LABEL_42;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_138;
        }

        goto LABEL_42;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_152;
      case 0xAu:
        if (v8 == 2)
        {
          goto LABEL_166;
        }

        goto LABEL_42;
      case 0xBu:
        if (v8 == 2)
        {
          goto LABEL_180;
        }

        goto LABEL_42;
      case 0xCu:
        if (v8 == 2)
        {
          goto LABEL_194;
        }

        goto LABEL_42;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_208;
        }

        goto LABEL_42;
      case 0xEu:
        if (v8 == 2)
        {
          goto LABEL_222;
        }

        goto LABEL_42;
      case 0xFu:
        if (v8 == 2)
        {
          goto LABEL_236;
        }

        goto LABEL_42;
      case 0x10u:
        if (v8 == 2)
        {
          goto LABEL_251;
        }

        goto LABEL_42;
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

uint64_t sub_1000FF9C8(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 148);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9C38 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 148);
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

  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9C38 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  v6 = *(v5 + 148);
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
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_1009F9C38 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_27:
  v10 = *(v5 + 40);
  if (!v10)
  {
    v10 = *(qword_1009F9C38 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_30:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(qword_1009F9C38 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v11, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_33:
  v12 = *(v5 + 56);
  if (!v12)
  {
    v12 = *(qword_1009F9C38 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v12, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_36:
  v13 = *(v5 + 64);
  if (!v13)
  {
    v13 = *(qword_1009F9C38 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v13, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_39:
  v14 = *(v5 + 72);
  if (!v14)
  {
    v14 = *(qword_1009F9C38 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v14, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_42:
  v15 = *(v5 + 80);
  if (!v15)
  {
    v15 = *(qword_1009F9C38 + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v15, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_45:
  v16 = *(v5 + 88);
  if (!v16)
  {
    v16 = *(qword_1009F9C38 + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v16, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_48:
  v17 = *(v5 + 96);
  if (!v17)
  {
    v17 = *(qword_1009F9C38 + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, v17, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_51:
  v18 = *(v5 + 104);
  if (!v18)
  {
    v18 = *(qword_1009F9C38 + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, v18, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_54:
  v19 = *(v5 + 112);
  if (!v19)
  {
    v19 = *(qword_1009F9C38 + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, v19, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_57:
  v20 = *(v5 + 120);
  if (!v20)
  {
    v20 = *(qword_1009F9C38 + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xE, v20, a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

LABEL_60:
  v21 = *(v5 + 128);
  if (!v21)
  {
    v21 = *(qword_1009F9C38 + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xF, v21, a2, a4);
  if ((*(v5 + 148) & 0x8000) != 0)
  {
LABEL_63:
    v22 = *(v5 + 136);
    if (!v22)
    {
      v22 = *(qword_1009F9C38 + 136);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, v22, a2, a4);
  }

LABEL_66:
  v25 = *(v5 + 8);
  v24 = (v5 + 8);
  v23 = v25;
  if (v25 && *v23 != v23[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v24, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000FFCE4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 37);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9C38 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[10];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_1001055CC(v7, v10, a3, a4);
    v6 = *(this + 37);
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

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F9C38 + 24);
  }

  *v4 = 18;
  v12 = v11[29];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v12;
    v13 = (v4 + 2);
  }

  v4 = sub_100115CC0(v11, v13, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_30:
  v14 = *(this + 4);
  if (!v14)
  {
    v14 = *(qword_1009F9C38 + 32);
  }

  *v4 = 26;
  v15 = v14[16];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = (v4 + 2);
  }

  v4 = sub_100106BBC(v14, v16, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(qword_1009F9C38 + 40);
  }

  *v4 = 34;
  v18 = v17[8];
  if (v18 > 0x7F)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v18;
    v19 = (v4 + 2);
  }

  v4 = sub_100105E50(v17, v19, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_42:
  v20 = *(this + 6);
  if (!v20)
  {
    v20 = *(qword_1009F9C38 + 48);
  }

  *v4 = 42;
  v21 = v20[6];
  if (v21 > 0x7F)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v21;
    v22 = (v4 + 2);
  }

  v4 = sub_100116B18(v20, v22, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_48:
  v23 = *(this + 7);
  if (!v23)
  {
    v23 = *(qword_1009F9C38 + 56);
  }

  *v4 = 50;
  v24 = v23[8];
  if (v24 > 0x7F)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v24;
    v25 = (v4 + 2);
  }

  v4 = sub_100118380(v23, v25, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_54:
  v26 = *(this + 8);
  if (!v26)
  {
    v26 = *(qword_1009F9C38 + 64);
  }

  *v4 = 58;
  v27 = v26[8];
  if (v27 > 0x7F)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v27;
    v28 = (v4 + 2);
  }

  v4 = sub_100118AF0(v26, v28, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_60:
  v29 = *(this + 9);
  if (!v29)
  {
    v29 = *(qword_1009F9C38 + 72);
  }

  *v4 = 66;
  v30 = v29[12];
  if (v30 > 0x7F)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v30, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v30;
    v31 = (v4 + 2);
  }

  v4 = sub_1001077B8(v29, v31, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_66:
  v32 = *(this + 10);
  if (!v32)
  {
    v32 = *(qword_1009F9C38 + 80);
  }

  *v4 = 74;
  v33 = v32[9];
  if (v33 > 0x7F)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v33;
    v34 = (v4 + 2);
  }

  v4 = sub_100108BFC(v32, v34, a3);
  v6 = *(this + 37);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_78;
  }

LABEL_72:
  v35 = *(this + 11);
  if (!v35)
  {
    v35 = *(qword_1009F9C38 + 88);
  }

  *v4 = 82;
  v36 = v35[13];
  if (v36 > 0x7F)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v36;
    v37 = (v4 + 2);
  }

  v4 = sub_10010824C(v35, v37, a3, a4);
  v6 = *(this + 37);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_84;
  }

LABEL_78:
  v38 = *(this + 12);
  if (!v38)
  {
    v38 = *(qword_1009F9C38 + 96);
  }

  *v4 = 90;
  v39 = v38[10];
  if (v39 > 0x7F)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v39;
    v40 = v4 + 2;
  }

  v4 = sub_10010BDA4(v38, v40, a3);
  v6 = *(this + 37);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_90;
  }

LABEL_84:
  v41 = *(this + 13);
  if (!v41)
  {
    v41 = *(qword_1009F9C38 + 104);
  }

  *v4 = 98;
  v42 = v41[23];
  if (v42 > 0x7F)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v42;
    v43 = (v4 + 2);
  }

  v4 = sub_10010B144(v41, v43, a3);
  v6 = *(this + 37);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_96;
  }

LABEL_90:
  v44 = *(this + 14);
  if (!v44)
  {
    v44 = *(qword_1009F9C38 + 112);
  }

  *v4 = 106;
  v45 = v44[17];
  if (v45 > 0x7F)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v45;
    v46 = (v4 + 2);
  }

  v4 = sub_1001174E4(v44, v46, a3);
  v6 = *(this + 37);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_102;
  }

LABEL_96:
  v47 = *(this + 15);
  if (!v47)
  {
    v47 = *(qword_1009F9C38 + 120);
  }

  *v4 = 114;
  v48 = v47[6];
  if (v48 > 0x7F)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v48, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v48;
    v49 = (v4 + 2);
  }

  v4 = sub_100117CE0(v47, v49, a3);
  v6 = *(this + 37);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_108;
  }

LABEL_102:
  v50 = *(this + 16);
  if (!v50)
  {
    v50 = *(qword_1009F9C38 + 128);
  }

  *v4 = 122;
  v51 = v50[17];
  if (v51 > 0x7F)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v51;
    v52 = (v4 + 2);
  }

  v4 = sub_10010CAC4(v50, v52, a3, a4);
  if ((*(this + 37) & 0x8000) != 0)
  {
LABEL_108:
    v53 = *(this + 17);
    if (!v53)
    {
      v53 = *(qword_1009F9C38 + 136);
    }

    *v4 = 386;
    v54 = v53[10];
    if (v54 > 0x7F)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v54, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v54;
      v55 = (v4 + 3);
    }

    v4 = sub_10010D684(v53, v55, a3, a4);
  }

LABEL_114:
  v58 = *(this + 1);
  v57 = (this + 8);
  v56 = v58;
  if (!v58 || *v56 == v56[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v57, v4, a3);
}

uint64_t sub_1001002C4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 148);
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

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F9C38 + 16);
  }

  v6 = sub_1001056F8(v5, a2);
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
  v3 = *(a1 + 148);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9C38 + 24);
    }

    v10 = sub_10011611C(v9, a2);
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
    v3 = *(a1 + 148);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = *(qword_1009F9C38 + 32);
    }

    v14 = sub_100106E3C(v13, a2);
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
    v3 = *(a1 + 148);
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

  v17 = *(a1 + 40);
  if (!v17)
  {
    v17 = *(qword_1009F9C38 + 40);
  }

  v18 = sub_100105F54(v17, a2);
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
  v3 = *(a1 + 148);
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
  v21 = *(a1 + 48);
  if (!v21)
  {
    v21 = *(qword_1009F9C38 + 48);
  }

  v22 = sub_100116BD8(v21, a2);
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
  v3 = *(a1 + 148);
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
  v25 = *(a1 + 56);
  if (!v25)
  {
    v25 = *(qword_1009F9C38 + 56);
  }

  v26 = sub_10011845C(v25, a2);
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
  v3 = *(a1 + 148);
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
  v29 = *(a1 + 64);
  if (!v29)
  {
    v29 = *(qword_1009F9C38 + 64);
  }

  v30 = sub_100118BCC(v29, a2);
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
  v3 = *(a1 + 148);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 72);
    if (!v33)
    {
      v33 = *(qword_1009F9C38 + 72);
    }

    v34 = sub_100107904(v33, a2);
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
    v3 = *(a1 + 148);
  }

LABEL_61:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x100) != 0)
  {
    v37 = *(a1 + 80);
    if (!v37)
    {
      v37 = *(qword_1009F9C38 + 80);
    }

    v38 = sub_100108D78(v37, a2);
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
    v3 = *(a1 + 148);
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

  v41 = *(a1 + 88);
  if (!v41)
  {
    v41 = *(qword_1009F9C38 + 88);
  }

  v42 = sub_1001083B8(v41, a2);
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
  v3 = *(a1 + 148);
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
  v45 = *(a1 + 96);
  if (!v45)
  {
    v45 = *(qword_1009F9C38 + 96);
  }

  v46 = sub_10010BEC0(v45, a2);
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
  v3 = *(a1 + 148);
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
  v49 = *(a1 + 104);
  if (!v49)
  {
    v49 = *(qword_1009F9C38 + 104);
  }

  v50 = sub_10010B440(v49, a2);
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
  v3 = *(a1 + 148);
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
  v53 = *(a1 + 112);
  if (!v53)
  {
    v53 = *(qword_1009F9C38 + 112);
  }

  v54 = sub_100117690(v53, a2);
  v55 = v54;
  if (v54 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54, a2);
  }

  else
  {
    v56 = 1;
  }

  v4 = (v4 + v55 + v56 + 1);
  v3 = *(a1 + 148);
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
  v57 = *(a1 + 120);
  if (!v57)
  {
    v57 = *(qword_1009F9C38 + 120);
  }

  v58 = sub_100117D54(v57, a2);
  v59 = v58;
  if (v58 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2);
  }

  else
  {
    v60 = 1;
  }

  v4 = (v4 + v59 + v60 + 1);
  v3 = *(a1 + 148);
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
  v61 = *(a1 + 128);
  if (!v61)
  {
    v61 = *(qword_1009F9C38 + 128);
  }

  v62 = sub_10010CD04(v61, a2);
  v63 = v62;
  if (v62 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62, a2);
  }

  else
  {
    v64 = 1;
  }

  v4 = (v4 + v63 + v64 + 1);
  if ((*(a1 + 148) & 0x8000) != 0)
  {
LABEL_113:
    v65 = *(a1 + 136);
    if (!v65)
    {
      v65 = *(qword_1009F9C38 + 136);
    }

    v66 = sub_10010D7FC(v65, a2);
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
  }

LABEL_119:
  v69 = *(a1 + 8);
  if (v69 && *v69 != v69[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 144) = v4;
  return v4;
}

uint64_t sub_1001007EC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000FD33C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001008C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001008D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 16);
      *(a1 + 44) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 44) |= 2u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        v7 = *(qword_1009F9C58 + 24);
      }

      sub_100103E18(v6, v7);
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 32);
      *(a1 + 44) |= 4u;
      *(a1 + 32) = v8;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_100100A24(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  sub_100116598((a1 + 24), a2 + 24);
  v4 = *(a2 + 120);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 120) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 120);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 120) |= 4u;
      v7 = *(a1 + 48);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 48);
      if (!v8)
      {
        v8 = *(qword_1009F9D00 + 48);
      }

      sub_10011127C(v7, v8);
      v4 = *(a2 + 120);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 120) |= 8u;
      v9 = *(a1 + 56);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 56);
      if (!v10)
      {
        v10 = *(qword_1009F9D00 + 56);
      }

      sub_100110B00(v9, v10);
      v4 = *(a2 + 120);
    }

    if ((v4 & 0x10) != 0)
    {
      *(a1 + 120) |= 0x10u;
      v11 = *(a1 + 64);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 64);
      if (!v12)
      {
        v12 = *(qword_1009F9D00 + 64);
      }

      sub_100113B30(v11, v12);
      v4 = *(a2 + 120);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 120) |= 0x20u;
      v13 = *(a1 + 72);
      if (!v13)
      {
        operator new();
      }

      v14 = *(a2 + 72);
      if (!v14)
      {
        v14 = *(qword_1009F9D00 + 72);
      }

      sub_100110150(v13, v14);
      v4 = *(a2 + 120);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 120) |= 0x40u;
      v15 = *(a1 + 80);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 80);
      if (!v16)
      {
        v16 = *(qword_1009F9D00 + 80);
      }

      sub_10010F6E0(v15, v16);
      v4 = *(a2 + 120);
    }

    if ((v4 & 0x80) != 0)
    {
      v17 = *(a2 + 88);
      *(a1 + 120) |= 0x80u;
      v18 = *(a1 + 88);
      if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v18, v17);
      v4 = *(a2 + 120);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 120) |= 0x100u;
      v19 = *(a1 + 96);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 96);
      if (!v20)
      {
        v20 = *(qword_1009F9D00 + 96);
      }

      sub_100111D40(v19, v20);
      v4 = *(a2 + 120);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 120) |= 0x200u;
      v21 = *(a1 + 104);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 104);
      if (!v22)
      {
        v22 = *(qword_1009F9D00 + 104);
      }

      sub_100112D88(v21, v22);
      v4 = *(a2 + 120);
    }

    if ((v4 & 0x400) != 0)
    {
      v23 = *(a2 + 112);
      *(a1 + 120) |= 0x400u;
      *(a1 + 112) = v23;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_100100E74(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 68);
  if (v4)
  {
    if (*(a2 + 68))
    {
      v5 = *(a2 + 16);
      *(a1 + 68) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 68);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 68) |= 2u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        v7 = *(qword_1009F9C68 + 24);
      }

      sub_100103E18(v6, v7);
      v4 = *(a2 + 68);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 68) |= 4u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 32);
      if (!v9)
      {
        v9 = *(qword_1009F9C68 + 32);
      }

      sub_1001024B4(v8, v9);
      v4 = *(a2 + 68);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 68) |= 8u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 40);
      if (!v11)
      {
        v11 = *(qword_1009F9C68 + 40);
      }

      sub_1001024B4(v10, v11);
      v4 = *(a2 + 68);
    }

    if ((v4 & 0x10) != 0)
    {
      v12 = *(a2 + 48);
      *(a1 + 68) |= 0x10u;
      *(a1 + 48) = v12;
      v4 = *(a2 + 68);
      if ((v4 & 0x20) == 0)
      {
LABEL_26:
        if ((v4 & 0x40) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_30:
        v14 = *(a2 + 56);
        *(a1 + 68) |= 0x40u;
        v15 = *(a1 + 56);
        if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v15, v14);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((v4 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    v13 = *(a2 + 52);
    *(a1 + 68) |= 0x20u;
    *(a1 + 52) = v13;
    if ((*(a2 + 68) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_30;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_100101108(uint64_t a1, uint64_t a2)
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
      *(a1 + 36) |= 2u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 24);
      if (!v7)
      {
        v7 = *(qword_1009F9C60 + 24);
      }

      sub_100103E18(v6, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_100101238(uint64_t a1, uint64_t a2)
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

void sub_100101314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010132C(uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100101428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101440(uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10010153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101554(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 16);
      *(a1 + 52) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 52);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 52) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 52);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

LABEL_12:
      *(a1 + 52) |= 8u;
      v8 = *(a1 + 40);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 40);
      if (!v9)
      {
        v9 = *(qword_1009F9C70 + 40);
      }

      sub_100103E18(v8, v9);
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

LABEL_11:
    v7 = *(a2 + 32);
    *(a1 + 52) |= 4u;
    *(a1 + 32) = v7;
    if ((*(a2 + 52) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_1001016CC(uint64_t a1, uint64_t a2)
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
      v6 = *(a2 + 32);
      if (v6 >= 3)
      {
        sub_10049DF98();
      }

      *(a1 + 40) |= 2u;
      *(a1 + 32) = v6;
      v4 = *(a2 + 40);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 40) |= 4u;
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

void sub_1001017F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101808(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 56) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    *(a1 + 56) |= 8u;
    v10 = *(a1 + 40);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 40);
    if (!v11)
    {
      v11 = *(qword_1009F9C78 + 40);
    }

    sub_100103E18(v10, v11);
    if ((*(a2 + 56) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_13:
  v9 = *(a2 + 32);
  *(a1 + 56) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 48);
    *(a1 + 56) |= 0x10u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_1001019A0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    sub_1000778F4((a1 + 24), *(a1 + 32) + v4);
    memcpy((*(a1 + 24) + 8 * *(a1 + 32)), *(a2 + 24), 8 * *(a2 + 32));
    *(a1 + 32) += *(a2 + 32);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 16);
      *(a1 + 44) |= 1u;
      *(a1 + 16) = v6;
      v5 = *(a2 + 44);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 20);
      *(a1 + 44) |= 2u;
      *(a1 + 20) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100101A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101AB4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    sub_1000778F4((a1 + 32), *(a1 + 40) + v4);
    memcpy((*(a1 + 32) + 8 * *(a1 + 40)), *(a2 + 32), 8 * *(a2 + 40));
    *(a1 + 40) += *(a2 + 40);
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v6 = *(a2 + 88);
    *(a1 + 96) |= 1u;
    *(a1 + 88) = v6;
    v5 = *(a2 + 96);
  }

  if ((v5 & 2) != 0)
  {
    *(a1 + 96) |= 2u;
    v7 = *(a1 + 16);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 16);
    if (!v8)
    {
      v8 = *(qword_1009F9C90 + 16);
    }

    sub_100109104(v7, v8);
    v5 = *(a2 + 96);
  }

  if ((v5 & 4) != 0)
  {
    *(a1 + 96) |= 4u;
    v9 = *(a1 + 24);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 24);
    if (!v10)
    {
      v10 = *(qword_1009F9C90 + 24);
    }

    sub_100109104(v9, v10);
    v5 = *(a2 + 96);
  }

  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_22;
    }

LABEL_29:
    v15 = *(a2 + 56);
    *(a1 + 96) |= 0x20u;
    *(a1 + 56) = v15;
    v5 = *(a2 + 96);
    if ((v5 & 0x40) == 0)
    {
LABEL_23:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v14 = *(a2 + 48);
  *(a1 + 96) |= 0x10u;
  *(a1 + 48) = v14;
  v5 = *(a2 + 96);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_30:
  v16 = *(a2 + 64);
  *(a1 + 96) |= 0x40u;
  *(a1 + 64) = v16;
  v5 = *(a2 + 96);
  if ((v5 & 0x80) != 0)
  {
LABEL_24:
    v11 = *(a2 + 72);
    *(a1 + 96) |= 0x80u;
    *(a1 + 72) = v11;
    v5 = *(a2 + 96);
  }

LABEL_25:
  if ((v5 & 0x100) != 0)
  {
    v12 = *(a2 + 80);
    *(a1 + 96) |= 0x100u;
    *(a1 + 80) = v12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}