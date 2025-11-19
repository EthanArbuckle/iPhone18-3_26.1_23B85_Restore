uint64_t sub_100121FF4()
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

  return qword_1009EDEF0;
}

void sub_100122088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012209C(uint64_t a1)
{
  *a1 = off_1009943B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_1001220FC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 16);
    a1[6] |= 1u;
    a1[4] = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100122194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001221AC(uint64_t a1)
{
  *a1 = off_1009943B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100122200(uint64_t a1)
{
  *a1 = off_1009943B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001222D4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001222F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

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

uint64_t sub_1001223F8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012246C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 24))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v4;
      a2 = (a2 + 2);
    }
  }

  v7 = *(this + 1);
  v6 = (this + 8);
  v5 = v7;
  if (!v7 || *v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_1001224FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
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

  v5 = *(a1 + 8);
  if (v5 && *v5 != v5[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_100122570(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001220FC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100122644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012265C(uint64_t result, uint64_t a2)
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

uint64_t sub_1001226F0()
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

  return qword_1009EDF00;
}

void sub_100122784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100122798(uint64_t a1)
{
  *a1 = off_100994460;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1001227F8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      *(a1 + 44) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9D88 + 16);
      }

      sub_100120180(v5, v6);
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 44) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9D88 + 24);
      }

      sub_100121644(v7, v8);
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 44) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9D88 + 32);
      }

      sub_1001220FC(v9, v10);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001229D4(void *a1)
{
  *a1 = off_100994460;
  v2 = (a1 + 1);
  sub_100122A34(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100122A34(void *result)
{
  if (qword_1009F9D88 != result)
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

void sub_100122B04(void *a1)
{
  sub_1001229D4(a1);

  operator delete();
}

uint64_t sub_100122B44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9D88;
  if (!qword_1009F9D88)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9D88;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100122BD8(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10012052C(this);
        v2 = *(v1 + 11);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 3);
      if (this)
      {
        this = sub_100121878(this);
        v2 = *(v1 + 11);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 4);
      if (this)
      {
        if (*(this + 24))
        {
          *(this + 4) = 0;
        }

        v3 = *(this + 1);
        this = (this + 8);
        *(this + 4) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *(v1 + 1);
  v4 = (v1 + 8);
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_100122C7C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 44) |= 1u;
      v10 = *(a1 + 16);
      if (!v10)
      {
        operator new();
      }

      v41 = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(this + 14);
      v13 = *(this + 15);
      *(this + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
      if (!sub_100120568(v10, this, v15, v16) || *(this + 36) != 1)
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
      if (v20 < *(this + 2) && *v20 == 18)
      {
        *(this + 1) = v20 + 1;
LABEL_30:
        *(a1 + 44) |= 2u;
        v21 = *(a1 + 24);
        if (!v21)
        {
          operator new();
        }

        v42 = 0;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v22;
          *(this + 1) = v22 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
        if (!sub_1001218A4(v21, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v18 = __OFSUB__(v28, 1);
        v29 = v28 - 1;
        if (v29 < 0 == v18)
        {
          *(this + 14) = v29;
        }

        v30 = *(this + 1);
        if (v30 < *(this + 2) && *v30 == 26)
        {
          *(this + 1) = v30 + 1;
LABEL_44:
          *(a1 + 44) |= 4u;
          v31 = *(a1 + 32);
          if (!v31)
          {
            operator new();
          }

          v43 = 0;
          v32 = *(this + 1);
          if (v32 >= *(this + 2) || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
            {
              return 0;
            }
          }

          else
          {
            v43 = *v32;
            *(this + 1) = v32 + 1;
          }

          v33 = *(this + 14);
          v34 = *(this + 15);
          *(this + 14) = v33 + 1;
          if (v33 >= v34)
          {
            return 0;
          }

          v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
          if (!sub_1001222F4(v31, this, v36, v37) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
          v38 = *(this + 14);
          v18 = __OFSUB__(v38, 1);
          v39 = v38 - 1;
          if (v39 < 0 == v18)
          {
            *(this + 14) = v39;
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

    if (v9 == 2)
    {
      goto LABEL_30;
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

uint64_t sub_10012307C(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9D88 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9D88 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  if ((*(v5 + 44) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(qword_1009F9D88 + 32);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  }

LABEL_14:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012315C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 11);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9D88 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[17];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = (v3 + 2);
    }

    v3 = sub_100120E48(v6, v9, a3);
    v5 = *(this + 11);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    v10 = *(qword_1009F9D88 + 24);
  }

  *v3 = 18;
  v11 = v10[11];
  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v11;
    v12 = v3 + 2;
  }

  v3 = sub_100121CA8(v10, v12, a3);
  if ((*(this + 11) & 4) != 0)
  {
LABEL_17:
    v13 = *(this + 4);
    if (!v13)
    {
      v13 = *(qword_1009F9D88 + 32);
    }

    *v3 = 26;
    v14 = v13[5];
    if (v14 > 0x7F)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v14;
      v15 = (v3 + 2);
    }

    v3 = sub_10012246C(v13, v15, a3);
  }

LABEL_23:
  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, v3, a3);
}

uint64_t sub_1001232C4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 44))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9D88 + 16);
    }

    v6 = sub_100121188(v5, a2);
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
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 44) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9D88 + 24);
    }

    v10 = sub_100121DDC(v9, a2);
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
    v3 = *(a1 + 44);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = *(qword_1009F9D88 + 32);
    }

    v14 = sub_1001224FC(v13, a2);
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
  }

LABEL_25:
  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 40) = v4;
  return v4;
}

uint64_t sub_100123400(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001227F8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001234D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001234EC(uint64_t result, uint64_t a2)
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

uint64_t sub_100123580()
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

  return qword_1009EDF10;
}

void sub_100123614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100123628(void *a1)
{
  *a1 = off_100994510;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[7] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 46) = 0;
  return a1;
}

uint64_t sub_100123698(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 60))
  {
    v7 = *(a2 + 16);
    *(a1 + 60) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 60) |= 2u;
  v9 = *(a1 + 24);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_17:
  *(a1 + 60) |= 4u;
  v10 = *(a1 + 32);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9D90 + 32);
  }

  sub_100064E4C(v10, v11);
  v4 = *(a2 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_22:
  v12 = *(a2 + 48);
  if (v12 >= 4)
  {
    sub_10049E124();
  }

  *(a1 + 60) |= 8u;
  *(a1 + 48) = v12;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v14 = *(a2 + 52);
    *(a1 + 60) |= 0x20u;
    *(a1 + 52) = v14;
    if ((*(a2 + 60) & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

LABEL_24:
  v13 = *(a2 + 40);
  *(a1 + 60) |= 0x10u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 53);
    *(a1 + 60) |= 0x40u;
    *(a1 + 53) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001238B8(void *a1)
{
  *a1 = off_100994510;
  v2 = (a1 + 1);
  sub_100123918(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100123918(void *result)
{
  v1 = result[3];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_1009F9D90 != result)
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

void sub_1001239D0(void *a1)
{
  sub_1001238B8(a1);

  operator delete();
}

uint64_t sub_100123A10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9D90;
  if (!qword_1009F9D90)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9D90;
  }

  return result;
}

uint64_t sub_100123AA4(uint64_t this)
{
  v1 = this;
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 24);
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

    if ((*(this + 60) & 4) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = sub_100065024(this);
      }
    }

    *(v1 + 46) = 0;
    v1[5] = 0;
  }

  v5 = v1[1];
  v4 = (v1 + 1);
  *(v4 + 13) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_100123B50(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (TagFallback >> 3 > 5)
        {
          if (v8 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_70;
            }
          }

          else if (v8 == 7 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_78;
          }

          goto LABEL_31;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
LABEL_55:
          v37[0] = 0;
          if (v15 >= v14 || (v30 = *v15, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v37);
            if (!result)
            {
              return result;
            }

            v30 = v37[0];
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v30 > 3)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v30);
          }

          else
          {
            *(a1 + 60) |= 8u;
            *(a1 + 48) = v30;
          }

          v31 = *(this + 1);
          if (v31 < *(this + 2) && *v31 == 41)
          {
            *(this + 1) = v31 + 1;
LABEL_66:
            *v37 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 40) = *v37;
            *(a1 + 60) |= 0x10u;
            v32 = *(this + 1);
            v10 = *(this + 2);
            if (v32 < v10 && *v32 == 48)
            {
              v16 = v32 + 1;
              *(this + 1) = v16;
LABEL_70:
              v37[0] = 0;
              if (v16 >= v10 || (v33 = *v16, (v33 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v37);
                if (!result)
                {
                  return result;
                }

                v33 = v37[0];
                v34 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v34 = v16 + 1;
                *(this + 1) = v34;
              }

              *(a1 + 52) = v33 != 0;
              *(a1 + 60) |= 0x20u;
              if (v34 < v10 && *v34 == 56)
              {
                v11 = v34 + 1;
                *(this + 1) = v11;
LABEL_78:
                v37[0] = 0;
                if (v11 >= v10 || (v35 = *v11, (v35 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v37);
                  if (!result)
                  {
                    return result;
                  }

                  v35 = v37[0];
                  v36 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  v36 = v11 + 1;
                  *(this + 1) = v36;
                }

                *(a1 + 53) = v35 != 0;
                *(a1 + 60) |= 0x40u;
                if (v36 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        else
        {
          if (v8 == 5 && v9 == 1)
          {
            goto LABEL_66;
          }

LABEL_31:
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_31;
      }

      *v37 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v37) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v37;
      v12 = *(a1 + 60) | 1;
      *(a1 + 60) = v12;
      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 18)
      {
        *(this + 1) = v13 + 1;
LABEL_35:
        *(a1 + 60) = v12 | 2;
        if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 26)
        {
          *(this + 1) = v18 + 1;
          goto LABEL_41;
        }
      }
    }

    if (v8 == 2)
    {
      if (v9 != 2)
      {
        goto LABEL_31;
      }

      v12 = *(a1 + 60);
      goto LABEL_35;
    }

    if (v8 != 3 || v9 != 2)
    {
      goto LABEL_31;
    }

LABEL_41:
    *(a1 + 60) |= 4u;
    v19 = *(a1 + 32);
    if (!v19)
    {
      operator new();
    }

    v37[0] = 0;
    v20 = *(this + 1);
    if (v20 >= *(this + 2) || *v20 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v37))
      {
        return 0;
      }
    }

    else
    {
      v37[0] = *v20;
      *(this + 1) = v20 + 1;
    }

    v21 = *(this + 14);
    v22 = *(this + 15);
    *(this + 14) = v21 + 1;
    if (v21 >= v22)
    {
      return 0;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v37[0]);
    if (!sub_100065078(v19, this, v24, v25) || *(this + 36) != 1)
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
    v14 = *(this + 2);
    if (v29 < v14 && *v29 == 32)
    {
      v15 = v29 + 1;
      *(this + 1) = v15;
      goto LABEL_55;
    }
  }
}

uint64_t sub_100124014(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 60);
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

  v10 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(v5 + 32);
  if (!v11)
  {
    v11 = *(qword_1009F9D90 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v11, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 52), a2, a4);
    if ((*(v5 + 60) & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 53), a2, a4);
  }

LABEL_9:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100124144(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 15);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_19:
      v14 = *(this + 4);
      if (!v14)
      {
        v14 = *(qword_1009F9D90 + 32);
      }

      *v4 = 26;
      v15 = v14[10];
      if (v15 > 0x7F)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v15;
        v16 = (v4 + 2);
      }

      v4 = sub_1000652FC(v14, v16, a3);
      if ((*(this + 15) & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  *v4 = 18;
  v9 = *(v8 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 > 0x7F)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v9;
    v10 = v4 + 2;
  }

  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = *v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v8 + 23);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  v6 = *(this + 15);
  if ((v6 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v17 = *(this + 12);
  *v4 = 32;
  v18 = v4 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v18, a3);
  }

  else
  {
    if (v17 <= 0x7F)
    {
      *(v4 + 1) = v17;
      v4 = (v4 + 2);
      goto LABEL_31;
    }

    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v18, a3);
  }

  v4 = v19;
LABEL_31:
  v20 = *(this + 15);
  if ((v20 & 0x10) == 0)
  {
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_42:
    v27 = *(this + 52);
    *v4 = 48;
    *(v4 + 1) = v27;
    v4 = (v4 + 2);
    if ((*(this + 15) & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v26 = *(this + 5);
  *v4 = 41;
  *(v4 + 1) = v26;
  v4 = (v4 + 9);
  v20 = *(this + 15);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_33:
  if ((v20 & 0x40) != 0)
  {
LABEL_34:
    v21 = *(this + 53);
    *v4 = 56;
    *(v4 + 1) = v21;
    v4 = (v4 + 2);
  }

LABEL_35:
  v24 = *(this + 1);
  v23 = (this + 8);
  v22 = v24;
  if (!v24 || *v22 == v22[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, v4, a3);
}

uint64_t sub_100124398(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 60);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_31;
  }

  v4 = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(a1 + 32);
    if (!v12)
    {
      v12 = *(qword_1009F9D90 + 32);
    }

    v13 = sub_1000653C8(v12, a2);
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
    v3 = *(a1 + 60);
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
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
    v3 = *(a1 + 60);
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
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v16 = *(a1 + 48);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 60);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
  }

LABEL_28:
  v18 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v18 = v4;
  }

  v5 = ((v3 >> 5) & 2) + ((v3 >> 4) & 2) + v18;
LABEL_31:
  v19 = *(a1 + 8);
  if (v19 && *v19 != v19[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 56) = v5;
  return v5;
}

uint64_t sub_10012450C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100123698(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001245E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001245F8(uint64_t result, uint64_t a2)
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

uint64_t sub_10012468C()
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

  return qword_1009EDF20;
}

void sub_100124720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100124734(uint64_t a1)
{
  *a1 = off_1009945C0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_1001247A8(uint64_t a1, uint64_t a2)
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
      v8 = *(a2 + 40);
      *(a1 + 52) |= 8u;
      v9 = *(a1 + 40);
      if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
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

void sub_1001248EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100124904(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1009945C0;
  v2 = (a1 + 8);
  sub_100124964(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_100124964(uint64_t result)
{
  v1 = *(result + 40);
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

void sub_1001249DC(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100124904(a1);

  operator delete();
}

uint64_t sub_100124A1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9D98;
  if (!qword_1009F9D98)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9D98;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100124AB0(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if ((v1 & 8) != 0)
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100124B0C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v8 != 4 || v9 != 2)
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 52);
LABEL_32:
        *(a1 + 52) = v10 | 8;
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_25;
      }

      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v15;
      *(a1 + 52) |= 1u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_20:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v15;
        *(a1 + 52) |= 2u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 25)
        {
          *(this + 1) = v12 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v15;
          v10 = *(a1 + 52) | 4;
          *(a1 + 52) = v10;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 34)
          {
            *(this + 1) = v13 + 1;
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

uint64_t sub_100124D64(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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
    v6 = *(v4 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_6:
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_100124E30(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 13);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = *(this + 4);
      *a2 = 25;
      *(a2 + 1) = v8;
      a2 += 9;
      if ((*(this + 13) & 8) == 0)
      {
        goto LABEL_21;
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
  v5 = *(this + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v9 = *(this + 5);
  *a2 = 34;
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 8);
  }

  if (v10 > 0x7F)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v10;
    v11 = a2 + 2;
  }

  v12 = *(v9 + 23);
  if (v12 >= 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = *v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
LABEL_21:
  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, a2, a3);
}

uint64_t sub_100124FFC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v6 = *(a1 + 40);
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

  *(a1 + 48) = v5;
  return v5;
}

uint64_t sub_1001250D4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1001247A8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001251A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001251C0(uint64_t result, uint64_t a2)
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

uint64_t sub_100125254()
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

  return qword_1009EDF30;
}

void sub_1001252E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001252FC(uint64_t a1)
{
  *a1 = off_100994670;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10012536C(uint64_t a1, uint64_t a2)
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
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        v7 = *(a2 + 32);
        *(a1 + 44) |= 4u;
        v8 = *(a1 + 32);
        if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v8, v7);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v6;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100125490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001254A8(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100994670;
  v2 = (a1 + 8);
  sub_100125508(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_100125508(uint64_t result)
{
  v1 = *(result + 32);
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

void sub_100125580(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1001254A8(a1);

  operator delete();
}

uint64_t sub_1001255C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DA0;
  if (!qword_1009F9DA0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DA0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100125654(uint64_t a1)
{
  v1 = *(a1 + 44);
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001256AC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v9 == 2)
        {
          v11 = *(a1 + 44);
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v14;
      *(a1 + 44) |= 1u;
      v10 = *(this + 1);
      if (v10 < *(this + 2) && *v10 == 17)
      {
        *(this + 1) = v10 + 1;
LABEL_15:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v14) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v14;
        v11 = *(a1 + 44) | 2;
        *(a1 + 44) = v11;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 26)
        {
          *(this + 1) = v12 + 1;
LABEL_24:
          *(a1 + 44) = v11 | 4;
          if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

uint64_t sub_1001258A0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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
    v6 = *(v4 + 32);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_5:
  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

uint64_t sub_100125950(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 11);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = *(this + 3);
    *a2 = 17;
    *(a2 + 1) = v7;
    a2 += 9;
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v6 = *(this + 2);
  *a2 = 9;
  *(a2 + 1) = v6;
  a2 += 9;
  v5 = *(this + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v8 = *(this + 4);
  *a2 = 26;
  v9 = *(v8 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 > 0x7F)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v9;
    v10 = a2 + 2;
  }

  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = *v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v8 + 23);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
LABEL_19:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, a2, a3);
}

uint64_t sub_100125AC4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
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
      v6 = *(a1 + 32);
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

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100125B90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012536C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100125C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100125C7C(uint64_t result, uint64_t a2)
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

uint64_t sub_100125D10()
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

  return qword_1009EDF40;
}

void sub_100125DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100125DB8(uint64_t a1)
{
  *a1 = off_100994720;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  return a1;
}

uint64_t sub_100125E24(uint64_t a1, uint64_t a2)
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
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_10:
        v7 = *(a2 + 24);
        *(a1 + 40) |= 4u;
        v8 = *(a1 + 24);
        if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v8, v7);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 32);
    *(a1 + 40) |= 2u;
    *(a1 + 32) = v6;
    if ((*(a2 + 40) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100125F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100125F60(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100994720;
  v2 = (a1 + 8);
  sub_1000880E8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100125FC4(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100125F60(a1);

  operator delete();
}

uint64_t sub_100126004(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DA8;
  if (!qword_1009F9DA8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DA8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100126098(uint64_t a1)
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

uint64_t sub_1001260F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_20;
          }

          v15 = *(a1 + 40);
LABEL_29:
          *(a1 + 40) = v15 | 4;
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

        if (v8 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_16:
        v18 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v18);
          if (!result)
          {
            return result;
          }

          v13 = v18;
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 32) = v13 != 0;
        v15 = *(a1 + 40) | 2;
        *(a1 + 40) = v15;
        if (v14 < v10 && *v14 == 26)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_29;
        }
      }

      if (v8 != 1 || v9 != 1)
      {
        break;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v17) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v17;
      *(a1 + 40) |= 1u;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        goto LABEL_16;
      }
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

uint64_t sub_10012630C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v7 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_5:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

_BYTE *sub_1001263BC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 10);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = *(this + 32);
    *a2 = 16;
    a2[1] = v7;
    a2 += 2;
    if ((*(this + 10) & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v6 = *(this + 2);
  *a2 = 9;
  *(a2 + 1) = v6;
  a2 += 9;
  v5 = *(this + 10);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  v8 = *(this + 3);
  *a2 = 26;
  v9 = *(v8 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9 > 0x7F)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
  }

  else
  {
    a2[1] = v9;
    v10 = a2 + 2;
  }

  v11 = *(v8 + 23);
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = *v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v8 + 23);
  }

  else
  {
    v13 = *(v8 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
LABEL_19:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, a2, a3);
}

uint64_t sub_1001264F8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9 | v3 & 2u;
    if ((v3 & 4) != 0)
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

  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_1001265C0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100125E24(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100126694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001266AC(uint64_t result, uint64_t a2)
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

uint64_t sub_100126740()
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

  return qword_1009EDF50;
}

void sub_1001267D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001267E8(uint64_t a1)
{
  *a1 = off_1009947D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 72) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_100126860(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 80);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 16);
    *(a1 + 80) |= 1u;
    *(a1 + 16) = v9;
    v4 = *(a2 + 80);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 24);
  *(a1 + 80) |= 2u;
  *(a1 + 24) = v10;
  v4 = *(a2 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 48);
  *(a1 + 80) |= 4u;
  *(a1 + 48) = v11;
  v4 = *(a2 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = *(a2 + 32);
  *(a1 + 80) |= 8u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v14 = *(a2 + 56);
    *(a1 + 80) |= 0x20u;
    *(a1 + 56) = v14;
    v4 = *(a2 + 80);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_22:
  v13 = *(a2 + 40);
  *(a1 + 80) |= 0x10u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 80);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v15 = *(a2 + 52);
  *(a1 + 80) |= 0x40u;
  *(a1 + 52) = v15;
  v4 = *(a2 + 80);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 72);
    *(a1 + 80) |= 0x80u;
    *(a1 + 72) = v5;
    v4 = *(a2 + 80);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 64);
    *(a1 + 80) |= 0x100u;
    v7 = *(a1 + 64);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, v6);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100126A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100126A5C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_1009947D0;
  v2 = (a1 + 8);
  sub_100126ABC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_100126ABC(uint64_t result)
{
  v1 = *(result + 64);
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

void sub_100126B34(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100126A5C(a1);

  operator delete();
}

uint64_t sub_100126B74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DB0;
  if (!qword_1009F9DB0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DB0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100126C08(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    *(a1 + 72) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  if ((v1 & 0x100) != 0)
  {
    v2 = *(a1 + 64);
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

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 18) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100126C70(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              goto LABEL_45;
            }

            goto LABEL_54;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_45;
          }

          v14 = *(this + 1);
          v12 = *(this + 2);
LABEL_37:
          if (v14 >= v12 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
            if (!result)
            {
              return result;
            }

            v16 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            *(a1 + 48) = v15;
            v16 = v14 + 1;
            *(this + 1) = v16;
          }

          *(a1 + 80) |= 4u;
          if (v16 < v12 && *v16 == 33)
          {
            *(this + 1) = v16 + 1;
LABEL_54:
            v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v28;
            *(a1 + 80) |= 8u;
            v21 = *(this + 1);
            if (v21 < *(this + 2) && *v21 == 41)
            {
              *(this + 1) = v21 + 1;
LABEL_58:
              v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 40) = v28;
              *(a1 + 80) |= 0x10u;
              v22 = *(this + 1);
              if (v22 < *(this + 2) && *v22 == 49)
              {
                *(this + 1) = v22 + 1;
LABEL_62:
                v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 56) = v28;
                *(a1 + 80) |= 0x20u;
                v23 = *(this + 1);
                v17 = *(this + 2);
                if (v23 < v17 && *v23 == 56)
                {
                  v18 = v23 + 1;
                  *(this + 1) = v18;
LABEL_66:
                  if (v18 >= v17 || (v24 = *v18, v24 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                    if (!result)
                    {
                      return result;
                    }

                    v25 = *(this + 1);
                    v17 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 52) = v24;
                    v25 = v18 + 1;
                    *(this + 1) = v25;
                  }

                  *(a1 + 80) |= 0x40u;
                  if (v25 < v17 && *v25 == 64)
                  {
                    v19 = v25 + 1;
                    *(this + 1) = v19;
                    goto LABEL_74;
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
              goto LABEL_45;
            }

            goto LABEL_31;
          }

          if (v9 != 1)
          {
            goto LABEL_45;
          }

          v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v28;
          *(a1 + 80) |= 1u;
          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 17)
          {
            *(this + 1) = v11 + 1;
LABEL_31:
            v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v28;
            *(a1 + 80) |= 2u;
            v13 = *(this + 1);
            v12 = *(this + 2);
            if (v13 < v12 && *v13 == 24)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
              goto LABEL_37;
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_66;
      }

      if (v8 == 8)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_45;
        }

        v19 = *(this + 1);
        v17 = *(this + 2);
LABEL_74:
        if (v19 >= v17 || (v26 = *v19, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          *(a1 + 72) = v26;
          v27 = v19 + 1;
          *(this + 1) = v27;
        }

        v10 = *(a1 + 80) | 0x80;
        *(a1 + 80) = v10;
        if (v27 < v17 && *v27 == 74)
        {
          *(this + 1) = v27 + 1;
          goto LABEL_82;
        }
      }

      else
      {
        if (v8 != 9 || v9 != 2)
        {
          goto LABEL_45;
        }

        v10 = *(a1 + 80);
LABEL_82:
        *(a1 + 80) = v10 | 0x100;
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

    if (v8 == 5)
    {
      if (v9 != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    if (v8 == 6 && v9 == 1)
    {
      goto LABEL_62;
    }

LABEL_45:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1001270E0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 80);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 72), a2, a4);
    if ((*(v5 + 80) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if ((v6 & 0x100) != 0)
  {
LABEL_10:
    v7 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_11:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100127238(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 20);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 = (v4 + 9);
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = *(this + 12);
  *v4 = 24;
  if (v9 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v9;
    v4 = (v4 + 2);
  }

LABEL_10:
  v10 = *(this + 20);
  if ((v10 & 8) != 0)
  {
    v11 = *(this + 4);
    *v4 = 33;
    *(v4 + 1) = v11;
    v4 = (v4 + 9);
    v10 = *(this + 20);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(this + 5);
  *v4 = 41;
  *(v4 + 1) = v12;
  v4 = (v4 + 9);
  v10 = *(this + 20);
  if ((v10 & 0x20) == 0)
  {
LABEL_13:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_17:
  v13 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v13;
  v4 = (v4 + 9);
  if ((*(this + 20) & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = *(this + 13);
  *v4 = 56;
  if (v14 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v14;
    v4 = (v4 + 2);
  }

LABEL_21:
  if ((*(this + 80) & 0x80) != 0)
  {
    v15 = *(this + 18);
    *v4 = 64;
    if (v15 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v15;
      v4 = (v4 + 2);
    }
  }

  if (*(this + 81))
  {
    v16 = *(this + 8);
    *v4 = 74;
    v17 = *(v16 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17 > 0x7F)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v17;
      v18 = v4 + 2;
    }

    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, a4);
  }

  v24 = *(this + 1);
  v23 = (this + 8);
  v22 = v24;
  if (!v24 || *v22 == v22[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, v4, a3);
}

uint64_t sub_100127558(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    v7 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 9) + 9;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 9;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 48);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 80);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
  }

  v8 = v4 + 9;
  if ((v3 & 8) == 0)
  {
    v8 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v8 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v7 = v8 + 9;
  }

  else
  {
    v7 = v8;
  }

  if ((v3 & 0x40) != 0)
  {
    v9 = *(a1 + 52);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 80);
    }

    else
    {
      v10 = 2;
    }

    v7 = (v10 + v7);
    if ((v3 & 0x80) == 0)
    {
LABEL_21:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(a1 + 72);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 80);
  }

  else
  {
    v12 = 2;
  }

  v7 = (v12 + v7);
  if ((v3 & 0x100) == 0)
  {
    goto LABEL_40;
  }

LABEL_31:
  v13 = *(a1 + 64);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v15 = *(v13 + 23);
  }

  else
  {
    v18 = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v7 = (v7 + v18 + v14 + 1);
LABEL_40:
  v19 = *(a1 + 8);
  if (v19 && *v19 != v19[1])
  {
    v7 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v7;
  }

  *(a1 + 76) = v7;
  return v7;
}

uint64_t sub_1001276D4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100126860(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001277A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001277C0(uint64_t result, uint64_t a2)
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

uint64_t sub_100127854()
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

  return qword_1009EDF60;
}

void sub_1001278E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001278FC(uint64_t a1)
{
  *a1 = off_100994880;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

uint64_t sub_100127974(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 116);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 116) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 116);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 116) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 116);
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
    v7 = *(a2 + 32);
    *(a1 + 116) |= 4u;
    *(a1 + 32) = v7;
    v4 = *(a2 + 116);
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
    v8 = *(a2 + 40);
    *(a1 + 116) |= 8u;
    *(a1 + 40) = v8;
    v4 = *(a2 + 116);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 48);
    *(a1 + 116) |= 0x10u;
    *(a1 + 48) = v9;
    v4 = *(a2 + 116);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 56);
    *(a1 + 116) |= 0x20u;
    *(a1 + 56) = v10;
    v4 = *(a2 + 116);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 64);
    *(a1 + 116) |= 0x40u;
    *(a1 + 64) = v11;
    v4 = *(a2 + 116);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    v12 = *(a2 + 72);
    *(a1 + 116) |= 0x80u;
    v13 = *(a1 + 72);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v4 = *(a2 + 116);
  }

LABEL_23:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 80);
    *(a1 + 116) |= 0x100u;
    *(a1 + 80) = v16;
    v4 = *(a2 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_26:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_27;
      }

LABEL_32:
      v18 = *(a2 + 96);
      *(a1 + 116) |= 0x400u;
      *(a1 + 96) = v18;
      if ((*(a2 + 116) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_28;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v17 = *(a2 + 88);
  *(a1 + 116) |= 0x200u;
  *(a1 + 88) = v17;
  v4 = *(a2 + 116);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  if ((v4 & 0x800) != 0)
  {
LABEL_28:
    v14 = *(a2 + 104);
    *(a1 + 116) |= 0x800u;
    *(a1 + 104) = v14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100127BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100127BDC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100994880;
  v2 = (a1 + 8);
  sub_100086E5C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100127C40(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_100127BDC(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100127CE4(uint64_t a1)
{
  v1 = *(a1 + 116);
  if (v1)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
    if (v1 < 0)
    {
      v2 = *(a1 + 72);
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

  if (*(a1 + 117))
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
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

uint64_t sub_100127D58(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
                goto LABEL_78;
              }

              goto LABEL_83;
            }

            if (v8 == 11)
            {
              if (v9 == 1)
              {
                goto LABEL_86;
              }

              goto LABEL_83;
            }

            if (v8 != 12 || v9 != 1)
            {
              goto LABEL_83;
            }

LABEL_90:
            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 104) = v23;
            *(a1 + 116) |= 0x800u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          else
          {
            if (v8 == 7)
            {
              if (v9 == 1)
              {
                goto LABEL_64;
              }

              goto LABEL_83;
            }

            if (v8 != 8)
            {
              if (v8 == 9 && v9 == 1)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
            }

            if (v9 != 2)
            {
              goto LABEL_83;
            }

            v14 = *(a1 + 116);
LABEL_68:
            *(a1 + 116) = v14 | 0x80;
            if (*(a1 + 72) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            if (v19 < *(this + 2) && *v19 == 73)
            {
              *(this + 1) = v19 + 1;
LABEL_74:
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 80) = v23;
              *(a1 + 116) |= 0x100u;
              v20 = *(this + 1);
              if (v20 < *(this + 2) && *v20 == 81)
              {
                *(this + 1) = v20 + 1;
LABEL_78:
                v23 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 88) = v23;
                *(a1 + 116) |= 0x200u;
                v21 = *(this + 1);
                if (v21 < *(this + 2) && *v21 == 89)
                {
                  *(this + 1) = v21 + 1;
LABEL_86:
                  v23 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 96) = v23;
                  *(a1 + 116) |= 0x400u;
                  v22 = *(this + 1);
                  if (v22 < *(this + 2) && *v22 == 97)
                  {
                    *(this + 1) = v22 + 1;
                    goto LABEL_90;
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
              goto LABEL_49;
            }
          }

          else if (v8 == 5)
          {
            if (v9 == 1)
            {
              goto LABEL_56;
            }
          }

          else if (v8 == 6 && v9 == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_83;
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 1)
        {
          goto LABEL_83;
        }

        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v23;
        *(a1 + 116) |= 1u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 17)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_41;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_83;
      }

LABEL_41:
      v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 24) = v23;
      *(a1 + 116) |= 2u;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 25)
      {
        *(this + 1) = v11 + 1;
LABEL_45:
        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = v23;
        *(a1 + 116) |= 4u;
        v12 = *(this + 1);
        if (v12 < *(this + 2) && *v12 == 33)
        {
          *(this + 1) = v12 + 1;
LABEL_49:
          v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = v23;
          *(a1 + 116) |= 8u;
          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 41)
          {
            *(this + 1) = v13 + 1;
LABEL_56:
            v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = v23;
            *(a1 + 116) |= 0x10u;
            v15 = *(this + 1);
            if (v15 < *(this + 2) && *v15 == 49)
            {
              *(this + 1) = v15 + 1;
LABEL_60:
              v23 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = v23;
              *(a1 + 116) |= 0x20u;
              v16 = *(this + 1);
              if (v16 < *(this + 2) && *v16 == 57)
              {
                *(this + 1) = v16 + 1;
LABEL_64:
                v23 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v23) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = v23;
                v14 = *(a1 + 116) | 0x40;
                *(a1 + 116) = v14;
                v17 = *(this + 1);
                if (v17 < *(this + 2) && *v17 == 66)
                {
                  *(this + 1) = v17 + 1;
                  goto LABEL_68;
                }
              }
            }
          }
        }
      }
    }

    if (v8 == 3 && v9 == 1)
    {
      goto LABEL_45;
    }

LABEL_83:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1001282A0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 116);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 116);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 116);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v4 + 64), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = *(v4 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v5 = *(v4 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v4 + 80), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v4 + 96), a3);
    if ((*(v4 + 116) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v4 + 88), a3);
  v5 = *(v4 + 116);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v5 & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v4 + 104), a3);
  }

LABEL_14:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

uint64_t sub_10012844C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 29);
  if (v5)
  {
    v11 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v11;
    a2 += 9;
    v5 = *(this + 29);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v12;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(this + 4);
  *a2 = 25;
  *(a2 + 1) = v13;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = *(this + 5);
  *a2 = 33;
  *(a2 + 1) = v14;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = *(this + 6);
  *a2 = 41;
  *(a2 + 1) = v15;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = *(this + 7);
  *a2 = 49;
  *(a2 + 1) = v16;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = *(this + 8);
  *a2 = 57;
  *(a2 + 1) = v17;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_27:
  v18 = *(this + 9);
  *a2 = 66;
  v19 = *(v18 + 23);
  if ((v19 & 0x8000000000000000) != 0)
  {
    v19 = *(v18 + 8);
  }

  if (v19 > 0x7F)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v19;
    v20 = a2 + 2;
  }

  v21 = *(v18 + 23);
  if (v21 >= 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = *v18;
  }

  if (v21 >= 0)
  {
    v23 = *(v18 + 23);
  }

  else
  {
    v23 = *(v18 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v22, v23, v20, a4);
  v5 = *(this + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v24 = *(this + 10);
  *a2 = 73;
  *(a2 + 1) = v24;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_41:
    v26 = *(this + 12);
    *a2 = 89;
    *(a2 + 1) = v26;
    a2 += 9;
    if ((*(this + 29) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_40:
  v25 = *(this + 11);
  *a2 = 81;
  *(a2 + 1) = v25;
  a2 += 9;
  v5 = *(this + 29);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_41;
  }

LABEL_12:
  if ((v5 & 0x800) != 0)
  {
LABEL_13:
    v6 = *(this + 13);
    *a2 = 97;
    *(a2 + 1) = v6;
    a2 += 9;
  }

LABEL_14:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1001288D8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 116);
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x80) != 0)
    {
      v6 = *(a1 + 72);
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
        v3 = *(a1 + 116);
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

  if ((v3 & 0xFF00) != 0)
  {
    v12 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v12 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v5 = v12 + 9;
    }

    else
    {
      v5 = v12;
    }
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 112) = v5;
  return v5;
}

uint64_t sub_100128A20(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100127974(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100128AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100128B0C(uint64_t result, uint64_t a2)
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

uint64_t sub_100128BA0()
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

  return qword_1009EDF70;
}

void sub_100128C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_100128C48(void *a1)
{
  *a1 = off_100994930;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100128CA4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DD0;
  if (!qword_1009F9DD0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DD0;
  }

  return result;
}

uint64_t sub_100128CD4(uint64_t a1, uint64_t a2)
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
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9DC0 + 16);
    }

    sub_100129494(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100128DE4(void *a1)
{
  *a1 = off_100994930;
  if (qword_1009F9DC0 != a1)
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

void sub_100128E7C(void *a1)
{
  sub_100128DE4(a1);

  operator delete();
}

uint64_t sub_100128EBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DC0;
  if (!qword_1009F9DC0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DC0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100128F50(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_100128FB0(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100128FB0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 30) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 48) = 0;
    if ((v1 & 0x200) != 0)
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
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10012901C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10012A264(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
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

uint64_t sub_1001291E0(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9DC0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100129264(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F9DC0 + 16);
    }

    *a2 = 10;
    v6 = v5[13];
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_10012A978(v5, v7, a3, a4);
  }

  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_100129314(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9DC0 + 16);
    }

    v5 = sub_10012ABF0(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1001293A8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100128CD4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100129494(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    *(a1 + 16) = v10;
    v4 = *(a2 + 56);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(a2 + 24);
  *(a1 + 56) |= 2u;
  *(a1 + 24) = v11;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 32);
  *(a1 + 56) |= 4u;
  *(a1 + 32) = v12;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 33);
  *(a1 + 56) |= 8u;
  *(a1 + 33) = v13;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v15 = *(a2 + 35);
    *(a1 + 56) |= 0x20u;
    *(a1 + 35) = v15;
    v4 = *(a2 + 56);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v14 = *(a2 + 34);
  *(a1 + 56) |= 0x10u;
  *(a1 + 34) = v14;
  v4 = *(a2 + 56);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v16 = *(a2 + 36);
  *(a1 + 56) |= 0x40u;
  *(a1 + 36) = v16;
  v4 = *(a2 + 56);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 37);
    *(a1 + 56) |= 0x80u;
    *(a1 + 37) = v5;
    v4 = *(a2 + 56);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 48);
      if (v6 >= 3)
      {
        sub_10049E150();
      }

      *(a1 + 56) |= 0x100u;
      *(a1 + 48) = v6;
      v4 = *(a2 + 56);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 40);
      *(a1 + 56) |= 0x200u;
      v8 = *(a1 + 40);
      if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001296A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001296C0(uint64_t result, uint64_t a2)
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

uint64_t sub_100129754()
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

  return qword_1009EDF80;
}

void sub_1001297E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1001297FC(void *a1)
{
  *a1 = off_1009949E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_100129858(uint64_t a1, uint64_t a2)
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
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9DC8 + 16);
    }

    sub_100127974(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100129968(void *a1)
{
  *a1 = off_1009949E0;
  if (qword_1009F9DC8 != a1)
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

void sub_100129A00(void *a1)
{
  sub_100129968(a1);

  operator delete();
}

uint64_t sub_100129A40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DC8;
  if (!qword_1009F9DC8)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DC8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100129AD4(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 2);
    if (this)
    {
      this = sub_100127CE4(this);
    }
  }

  v3 = *(v1 + 1);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_100129B34(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_100127D58(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
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

uint64_t sub_100129CF8(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9DC8 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
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

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100129D7C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(qword_1009F9DC8 + 16);
    }

    *a2 = 10;
    v6 = v5[28];
    if (v6 > 0x7F)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v6;
      v7 = a2 + 2;
    }

    a2 = sub_10012844C(v5, v7, a3, a4);
  }

  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_100129E2C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9DC8 + 16);
    }

    v5 = sub_1001288D8(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_100129EC0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100129858(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100129F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100129FAC(uint64_t result, uint64_t a2)
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

uint64_t sub_10012A040()
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

  return qword_1009EDF90;
}

void sub_10012A0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A0E8(uint64_t a1)
{
  *a1 = off_100994A90;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 30) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  return a1;
}

void sub_10012A15C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100994A90;
  v2 = (a1 + 8);
  sub_100124964(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10012A1C0(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10012A15C(a1);

  operator delete();
}

uint64_t sub_10012A264(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
              if ((TagFallback & 7) == 0)
              {
                v16 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_73;
              }
            }

            else if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v12 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_81;
            }
          }

          else if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v8 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(this + 1);
              v10 = *(this + 2);
              goto LABEL_97;
            }
          }

          else if (v8 == 10 && v9 == 2)
          {
            goto LABEL_108;
          }

          goto LABEL_48;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_32;
        }

        if (v9 != 1)
        {
          goto LABEL_48;
        }

        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v35;
        *(a1 + 56) |= 1u;
        v13 = *(this + 1);
        if (v13 < *(this + 2) && *v13 == 17)
        {
          *(this + 1) = v13 + 1;
LABEL_32:
          *v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v35;
          *(a1 + 56) |= 2u;
          v14 = *(this + 1);
          v10 = *(this + 2);
          if (v14 < v10 && *v14 == 24)
          {
            v15 = v14 + 1;
            *(this + 1) = v15;
LABEL_40:
            v35[0] = 0;
            if (v15 >= v10 || (v17 = *v15, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
              if (!result)
              {
                return result;
              }

              v17 = v35[0];
              v18 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v18 = v15 + 1;
              *(this + 1) = v18;
            }

            *(a1 + 32) = v17 != 0;
            *(a1 + 56) |= 4u;
            if (v18 < v10 && *v18 == 32)
            {
              v20 = v18 + 1;
              *(this + 1) = v20;
              goto LABEL_57;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v15 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_40;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_48;
      }

      v20 = *(this + 1);
      v10 = *(this + 2);
LABEL_57:
      v35[0] = 0;
      if (v20 >= v10 || (v23 = *v20, (v23 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
        if (!result)
        {
          return result;
        }

        v23 = v35[0];
        v24 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v24 = v20 + 1;
        *(this + 1) = v24;
      }

      *(a1 + 33) = v23 != 0;
      *(a1 + 56) |= 8u;
      if (v24 < v10 && *v24 == 40)
      {
        v11 = v24 + 1;
        *(this + 1) = v11;
LABEL_65:
        v35[0] = 0;
        if (v11 >= v10 || (v25 = *v11, (v25 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
          if (!result)
          {
            return result;
          }

          v25 = v35[0];
          v26 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v26 = v11 + 1;
          *(this + 1) = v26;
        }

        *(a1 + 34) = v25 != 0;
        *(a1 + 56) |= 0x10u;
        if (v26 < v10 && *v26 == 48)
        {
          v16 = v26 + 1;
          *(this + 1) = v16;
LABEL_73:
          v35[0] = 0;
          if (v16 >= v10 || (v27 = *v16, (v27 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
            if (!result)
            {
              return result;
            }

            v27 = v35[0];
            v28 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            v28 = v16 + 1;
            *(this + 1) = v28;
          }

          *(a1 + 35) = v27 != 0;
          *(a1 + 56) |= 0x20u;
          if (v28 < v10 && *v28 == 56)
          {
            v12 = v28 + 1;
            *(this + 1) = v12;
LABEL_81:
            v35[0] = 0;
            if (v12 >= v10 || (v29 = *v12, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
              if (!result)
              {
                return result;
              }

              v29 = v35[0];
              v30 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              v30 = v12 + 1;
              *(this + 1) = v30;
            }

            *(a1 + 36) = v29 != 0;
            *(a1 + 56) |= 0x40u;
            if (v30 < v10 && *v30 == 64)
            {
              v19 = v30 + 1;
              *(this + 1) = v19;
LABEL_89:
              v35[0] = 0;
              if (v19 >= v10 || (v31 = *v19, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
                if (!result)
                {
                  return result;
                }

                v31 = v35[0];
                v32 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v32 = v19 + 1;
                *(this + 1) = v32;
              }

              *(a1 + 37) = v31 != 0;
              *(a1 + 56) |= 0x80u;
              if (v32 < v10 && *v32 == 72)
              {
                v21 = v32 + 1;
                *(this + 1) = v21;
LABEL_97:
                v35[0] = 0;
                if (v21 >= v10 || (v33 = *v21, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v35[0];
                }

                else
                {
                  *(this + 1) = v21 + 1;
                }

                if (v33 > 2)
                {
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 9, v33);
                }

                else
                {
                  *(a1 + 56) |= 0x100u;
                  *(a1 + 48) = v33;
                }

                v34 = *(this + 1);
                if (v34 < *(this + 2) && *v34 == 82)
                {
                  *(this + 1) = v34 + 1;
LABEL_108:
                  *(a1 + 56) |= 0x200u;
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
              }
            }
          }
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_65;
    }

LABEL_48:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_10012A804(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 33), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 34), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 35), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 48), a2, a4);
    if ((*(v5 + 56) & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 37), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v6 & 0x200) != 0)
  {
LABEL_11:
    v7 = *(v5 + 40);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_12:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012A978(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 14);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 14);
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
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 = (v4 + 9);
  v6 = *(this + 14);
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
  v9 = *(this + 32);
  *v4 = 24;
  *(v4 + 1) = v9;
  v4 = (v4 + 2);
  v6 = *(this + 14);
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
  v10 = *(this + 33);
  *v4 = 32;
  *(v4 + 1) = v10;
  v4 = (v4 + 2);
  v6 = *(this + 14);
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
  v11 = *(this + 34);
  *v4 = 40;
  *(v4 + 1) = v11;
  v4 = (v4 + 2);
  v6 = *(this + 14);
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
  v12 = *(this + 35);
  *v4 = 48;
  *(v4 + 1) = v12;
  v4 = (v4 + 2);
  v6 = *(this + 14);
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
  v13 = *(this + 36);
  *v4 = 56;
  *(v4 + 1) = v13;
  v4 = (v4 + 2);
  v6 = *(this + 14);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = *(this + 37);
  *v4 = 64;
  *(v4 + 1) = v14;
  v4 = (v4 + 2);
  if ((*(this + 14) & 0x100) == 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  v15 = *(this + 12);
  *v4 = 72;
  v16 = v4 + 1;
  if ((v15 & 0x80000000) != 0)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
  }

  else
  {
    if (v15 <= 0x7F)
    {
      *(v4 + 1) = v15;
      v4 = (v4 + 2);
      goto LABEL_25;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
  }

  v4 = v17;
LABEL_25:
  if ((*(this + 57) & 2) != 0)
  {
    v18 = *(this + 5);
    *v4 = 82;
    v19 = *(v18 + 23);
    if ((v19 & 0x8000000000000000) != 0)
    {
      v19 = *(v18 + 8);
    }

    if (v19 > 0x7F)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v19;
      v20 = v4 + 2;
    }

    v21 = *(v18 + 23);
    if (v21 >= 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = *v18;
    }

    if (v21 >= 0)
    {
      v23 = *(v18 + 23);
    }

    else
    {
      v23 = *(v18 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v22, v23, v20, a4);
  }

  v26 = *(this + 1);
  v25 = (this + 8);
  v24 = v26;
  if (!v26 || *v24 == v24[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v25, v4, a3);
}

uint64_t sub_10012ABF0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v5.i64[0] = 0x200000002;
    v5.i64[1] = 0x200000002;
    v6 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_100557380), v5)) + ((v3 >> 5) & 2) + ((v3 >> 6) & 2) + v4;
  }

  else
  {
    v6 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v7 = *(a1 + 48);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 56);
      }

      else
      {
        v8 = 2;
      }

      v6 = (v8 + v6);
    }

    if ((v3 & 0x200) != 0)
    {
      v9 = *(a1 + 40);
      v10 = *(v9 + 23);
      v11 = v10;
      v12 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = v12;
      }

      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
        v10 = *(v9 + 23);
        v12 = *(v9 + 8);
        v11 = *(v9 + 23);
      }

      else
      {
        v14 = 1;
      }

      if (v11 < 0)
      {
        v10 = v12;
      }

      v6 = (v6 + v14 + v10 + 1);
    }
  }

  v15 = *(a1 + 8);
  if (v15 && *v15 != v15[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 52) = v6;
  return v6;
}

uint64_t sub_10012AD38(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100129494(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012AE24(uint64_t result, uint64_t a2)
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

uint64_t sub_10012AEB8()
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

  return qword_1009EDFA0;
}

void sub_10012AF4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10012AF60(void *a1)
{
  *a1 = off_100994B40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10012AFC0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
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

void sub_10012B078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10012B090(uint64_t a1)
{
  *a1 = off_100994B40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10012B0E4(uint64_t a1)
{
  *a1 = off_100994B40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012B1B8(uint64_t a1)
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

uint64_t sub_10012B1D8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_10012B338(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
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

uint64_t sub_10012B3C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v4 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v4;
    a2 += 9;
    v3 = *(a1 + 36);
  }

  if ((v3 & 2) != 0)
  {
    v5 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v5;
    a2 += 9;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
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

uint64_t sub_10012B48C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_10012B4F4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10012AFC0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10012B5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B5E0(uint64_t result, uint64_t a2)
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

uint64_t sub_10012B674()
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

  return qword_1009EDFB0;
}

void sub_10012B708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B71C(uint64_t a1)
{
  *a1 = off_100994BF0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 136) = 0;
  return a1;
}

uint64_t sub_10012B794(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 140);
  if (!v4)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    *(a1 + 140) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9DE0 + 16);
    }

    sub_10012AFC0(v5, v6);
    v4 = *(a2 + 140);
  }

  if ((v4 & 2) != 0)
  {
    v19 = *(a2 + 24);
    *(a1 + 140) |= 2u;
    *(a1 + 24) = v19;
    v4 = *(a2 + 140);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_46;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v20 = *(a2 + 32);
  *(a1 + 140) |= 4u;
  *(a1 + 32) = v20;
  v4 = *(a2 + 140);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = *(a2 + 40);
  *(a1 + 140) |= 8u;
  *(a1 + 40) = v21;
  v4 = *(a2 + 140);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_48:
    v23 = *(a2 + 56);
    *(a1 + 140) |= 0x20u;
    *(a1 + 56) = v23;
    v4 = *(a2 + 140);
    if ((v4 & 0x40) == 0)
    {
LABEL_16:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_47:
  v22 = *(a2 + 48);
  *(a1 + 140) |= 0x10u;
  *(a1 + 48) = v22;
  v4 = *(a2 + 140);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_15:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_49:
  v24 = *(a2 + 64);
  *(a1 + 140) |= 0x40u;
  *(a1 + 64) = v24;
  v4 = *(a2 + 140);
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v7 = *(a2 + 72);
    *(a1 + 140) |= 0x80u;
    *(a1 + 72) = v7;
    v4 = *(a2 + 140);
  }

LABEL_18:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v4 & 0x100) != 0)
  {
    v8 = *(a2 + 80);
    *(a1 + 140) |= 0x100u;
    *(a1 + 80) = v8;
    v4 = *(a2 + 140);
    if ((v4 & 0x200) == 0)
    {
LABEL_21:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(a2 + 88);
  *(a1 + 140) |= 0x200u;
  *(a1 + 88) = v9;
  v4 = *(a2 + 140);
  if ((v4 & 0x400) == 0)
  {
LABEL_22:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = *(a2 + 96);
  *(a1 + 140) |= 0x400u;
  *(a1 + 96) = v10;
  v4 = *(a2 + 140);
  if ((v4 & 0x800) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_32:
  v11 = *(a2 + 100);
  if (v11 >= 4)
  {
    sub_10049E17C();
  }

  *(a1 + 140) |= 0x800u;
  *(a1 + 100) = v11;
  v4 = *(a2 + 140);
  if ((v4 & 0x1000) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = *(a2 + 104);
  *(a1 + 140) |= 0x1000u;
  *(a1 + 104) = v12;
  v4 = *(a2 + 140);
  if ((v4 & 0x2000) == 0)
  {
LABEL_25:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = *(a2 + 112);
  *(a1 + 140) |= 0x2000u;
  *(a1 + 112) = v13;
  v4 = *(a2 + 140);
  if ((v4 & 0x4000) == 0)
  {
LABEL_26:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_36:
  v14 = *(a2 + 120);
  if (v14 >= 8)
  {
    sub_10049E1A8();
  }

  *(a1 + 140) |= 0x4000u;
  *(a1 + 120) = v14;
  v4 = *(a2 + 140);
  if ((v4 & 0x8000) == 0)
  {
LABEL_27:
    if ((v4 & 0x10000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_40;
  }

LABEL_38:
  v15 = *(a2 + 124);
  if (v15 >= 0xF)
  {
    sub_10049E1D4();
  }

  *(a1 + 140) |= 0x8000u;
  *(a1 + 124) = v15;
  if ((*(a2 + 140) & 0x10000) != 0)
  {
LABEL_40:
    v16 = *(a2 + 128);
    *(a1 + 140) |= 0x10000u;
    v17 = *(a1 + 128);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10012BB14(void *a1)
{
  *a1 = off_100994BF0;
  v2 = (a1 + 1);
  sub_10012BB74(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10012BB74(void *result)
{
  v1 = result[16];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_1009F9DE0 != result)
  {
    result = result[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10012BC2C(void *a1)
{
  sub_10012BB14(a1);

  operator delete();
}

uint64_t sub_10012BC6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9DE0;
  if (!qword_1009F9DE0)
  {
    sub_1000F8CA0(0, a2, a3, a4);
    return qword_1009F9DE0;
  }

  return result;
}

uint64_t sub_10012BD00(uint64_t this)
{
  v1 = this;
  v2 = *(this + 140);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 16);
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

    *(v1 + 72) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 24) = 0u;
    v2 = *(v1 + 140);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 80) = 0u;
  }

  if ((v2 & 0x10000) != 0)
  {
    v4 = *(v1 + 128);
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

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 33) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_10012BDE4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          goto LABEL_44;
        }

        *(a1 + 140) |= 1u;
        v9 = *(a1 + 16);
        if (!v9)
        {
          operator new();
        }

        v47[0] = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
          {
            return 0;
          }
        }

        else
        {
          v47[0] = *v10;
          *(this + 1) = v10 + 1;
        }

        v18 = *(this + 14);
        v19 = *(this + 15);
        *(this + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
        if (!sub_10012B1D8(v9, this, v21, v22) || *(this + 36) != 1)
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
        if (v26 >= *(this + 2) || *v26 != 17)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
        goto LABEL_56;
      case 2u:
        if (v8 != 1)
        {
          goto LABEL_44;
        }

LABEL_56:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v47;
        *(a1 + 140) |= 2u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 25)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_60:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v47;
        *(a1 + 140) |= 4u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 33)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_64:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v47;
        *(a1 + 140) |= 8u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 41)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_68:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v47;
        *(a1 + 140) |= 0x10u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 49)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_72:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v47;
        *(a1 + 140) |= 0x20u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 57)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_76:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v47;
        *(a1 + 140) |= 0x40u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 65)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_80:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v47;
        *(a1 + 140) |= 0x80u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 73)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_84:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v47;
        *(a1 + 140) |= 0x100u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 81)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_88:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v47;
        *(a1 + 140) |= 0x200u;
        v35 = *(this + 1);
        v13 = *(this + 2);
        if (v35 >= v13 || *v35 != 88)
        {
          continue;
        }

        v17 = v35 + 1;
        *(this + 1) = v17;
LABEL_92:
        v47[0] = 0;
        if (v17 >= v13 || (v36 = *v17, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
          if (!result)
          {
            return result;
          }

          v36 = v47[0];
          v37 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          v37 = v17 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 96) = v36;
        *(a1 + 140) |= 0x400u;
        if (v37 >= v13 || *v37 != 96)
        {
          continue;
        }

        v14 = v37 + 1;
        *(this + 1) = v14;
LABEL_100:
        v47[0] = 0;
        if (v14 >= v13 || (v39 = *v14, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
          if (!result)
          {
            return result;
          }

          v39 = v47[0];
        }

        else
        {
          *(this + 1) = v14 + 1;
        }

        if (v39 > 3)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 12, v39);
        }

        else
        {
          *(a1 + 140) |= 0x800u;
          *(a1 + 100) = v39;
        }

        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 105)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_111:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v47;
        *(a1 + 140) |= 0x1000u;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 113)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_115:
        *v47 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47))
        {
          *(a1 + 112) = *v47;
          *(a1 + 140) |= 0x2000u;
          v42 = *(this + 1);
          v11 = *(this + 2);
          if (v42 < v11 && *v42 == 120)
          {
            v12 = v42 + 1;
            *(this + 1) = v12;
LABEL_119:
            v47[0] = 0;
            if (v12 >= v11 || (v43 = *v12, (v43 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
              if (!result)
              {
                return result;
              }

              v43 = v47[0];
            }

            else
            {
              *(this + 1) = v12 + 1;
            }

            if (v43 > 7)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 15, v43);
            }

            else
            {
              *(a1 + 140) |= 0x4000u;
              *(a1 + 120) = v43;
            }

            v44 = *(this + 1);
            v15 = *(this + 2);
            if (v15 - v44 >= 2 && *v44 == 128 && v44[1] == 1)
            {
              v16 = (v44 + 2);
              *(this + 1) = v16;
LABEL_131:
              v47[0] = 0;
              if (v16 >= v15 || (v45 = *v16, (v45 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47);
                if (!result)
                {
                  return result;
                }

                v45 = v47[0];
              }

              else
              {
                *(this + 1) = v16 + 1;
              }

              if (v45 > 0xE)
              {
                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 16, v45);
              }

              else
              {
                *(a1 + 140) |= 0x8000u;
                *(a1 + 124) = v45;
              }

              v46 = *(this + 1);
              if (*(this + 4) - v46 >= 2 && *v46 == 138 && v46[1] == 1)
              {
                *(this + 1) = v46 + 2;
LABEL_143:
                *(a1 + 140) |= 0x10000u;
                if (*(a1 + 128) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
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

          continue;
        }

        return 0;
      case 3u:
        if (v8 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_44;
      case 4u:
        if (v8 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_44;
      case 5u:
        if (v8 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_44;
      case 6u:
        if (v8 == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_44;
      case 7u:
        if (v8 == 1)
        {
          goto LABEL_76;
        }

        goto LABEL_44;
      case 8u:
        if (v8 == 1)
        {
          goto LABEL_80;
        }

        goto LABEL_44;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_44;
        }

        goto LABEL_84;
      case 0xAu:
        if (v8 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_44;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v17 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_92;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        goto LABEL_100;
      case 0xDu:
        if (v8 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_44;
      case 0xEu:
        if (v8 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_44;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_119;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_131;
      case 0x11u:
        if (v8 == 2)
        {
          goto LABEL_143;
        }

        goto LABEL_44;
      default:
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
  }
}

uint64_t sub_10012C638(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 140);
  if (v6)
  {
    v11 = *(this + 16);
    if (!v11)
    {
      v11 = *(qword_1009F9DE0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v11, a2, a4);
    v6 = *(v5 + 140);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 140);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 140);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 40), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 64), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 72), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 80), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 88), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 96), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 100), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
  v6 = *(v5 + 140);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, *(v5 + 124), a2, a4);
    if ((*(v5 + 140) & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 120), a2, a4);
  v6 = *(v5 + 140);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_42;
  }

LABEL_17:
  if ((v6 & 0x10000) != 0)
  {
LABEL_18:
    v7 = *(v5 + 128);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_19:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10012C880(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 35);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9DE0 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 32);
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v4 = sub_10012B3C4(v7, v10, a3);
    v6 = *(this + 35);
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

  v11 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v11;
  v4 = (v4 + 9);
  v6 = *(this + 35);
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
  v12 = *(this + 4);
  *v4 = 25;
  *(v4 + 1) = v12;
  v4 = (v4 + 9);
  v6 = *(this + 35);
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
  v13 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v13;
  v4 = (v4 + 9);
  v6 = *(this + 35);
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
  v14 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v14;
  v4 = (v4 + 9);
  v6 = *(this + 35);
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
  v15 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v15;
  v4 = (v4 + 9);
  v6 = *(this + 35);
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
  v16 = *(this + 8);
  *v4 = 57;
  *(v4 + 1) = v16;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = *(this + 9);
  *v4 = 65;
  *(v4 + 1) = v17;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = *(this + 10);
  *v4 = 73;
  *(v4 + 1) = v18;
  v4 = (v4 + 9);
  v6 = *(this + 35);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = *(this + 11);
  *v4 = 81;
  *(v4 + 1) = v19;
  v4 = (v4 + 9);
  if ((*(this + 35) & 0x400) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v20 = *(this + 24);
  *v4 = 88;
  v21 = v4 + 1;
  if ((v20 & 0x80000000) != 0)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
  }

  else
  {
    if (v20 <= 0x7F)
    {
      *(v4 + 1) = v20;
      v4 = (v4 + 2);
      goto LABEL_34;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
  }

  v4 = v22;
LABEL_34:
  if ((*(this + 141) & 8) == 0)
  {
    goto LABEL_41;
  }

  v23 = *(this + 25);
  *v4 = 96;
  v24 = v4 + 1;
  if ((v23 & 0x80000000) != 0)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
  }

  else
  {
    if (v23 <= 0x7F)
    {
      *(v4 + 1) = v23;
      v4 = (v4 + 2);
      goto LABEL_41;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
  }

  v4 = v25;
LABEL_41:
  v26 = *(this + 35);
  if ((v26 & 0x1000) != 0)
  {
    v27 = *(this + 13);
    *v4 = 105;
    *(v4 + 1) = v27;
    v4 = (v4 + 9);
    v26 = *(this + 35);
    if ((v26 & 0x2000) == 0)
    {
LABEL_43:
      if ((v26 & 0x4000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }
  }

  else if ((v26 & 0x2000) == 0)
  {
    goto LABEL_43;
  }

  v28 = *(this + 14);
  *v4 = 113;
  *(v4 + 1) = v28;
  v4 = (v4 + 9);
  if ((*(this + 35) & 0x4000) == 0)
  {
    goto LABEL_53;
  }

LABEL_47:
  v29 = *(this + 30);
  *v4 = 120;
  v30 = v4 + 1;
  if ((v29 & 0x80000000) != 0)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v29, v30, a3);
  }

  else
  {
    if (v29 <= 0x7F)
    {
      *(v4 + 1) = v29;
      v4 = (v4 + 2);
      goto LABEL_53;
    }

    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v30, a3);
  }

  v4 = v31;
LABEL_53:
  if ((*(this + 141) & 0x80) == 0)
  {
    goto LABEL_60;
  }

  v32 = *(this + 31);
  *v4 = 384;
  v33 = v4 + 2;
  if ((v32 & 0x80000000) != 0)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v32, v33, a3);
  }

  else
  {
    if (v32 <= 0x7F)
    {
      *(v4 + 2) = v32;
      v4 = (v4 + 3);
      goto LABEL_60;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v33, a3);
  }

  v4 = v34;
LABEL_60:
  if (*(this + 142))
  {
    v35 = *(this + 16);
    *v4 = 394;
    v36 = *(v35 + 23);
    if ((v36 & 0x8000000000000000) != 0)
    {
      v36 = *(v35 + 8);
    }

    if (v36 > 0x7F)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v36;
      v37 = v4 + 3;
    }

    v38 = *(v35 + 23);
    if (v38 >= 0)
    {
      v39 = v35;
    }

    else
    {
      v39 = *v35;
    }

    if (v38 >= 0)
    {
      v40 = *(v35 + 23);
    }

    else
    {
      v40 = *(v35 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v39, v40, v37, a4);
  }

  v43 = *(this + 1);
  v42 = (this + 8);
  v41 = v43;
  if (!v43 || *v41 == v41[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v42, v4, a3);
}