uint64_t sub_100066018(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100065478(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000660F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100066120(uint64_t result, uint64_t a2)
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

uint64_t sub_1000661B4()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C778;
}

void sub_100066244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100066258(void *a1)
{
  *a1 = off_100435478;
  if (qword_10045DB98 != a1)
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

void sub_1000662EC(void *a1)
{
  *a1 = off_100435478;
  if (qword_10045DB98 != a1)
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

uint64_t sub_100066424(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 < *(this + 2))
      {
        TagFallback = *v6;
        if ((TagFallback & 0x80000000) == 0)
        {
          break;
        }
      }

      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback != 10)
      {
        goto LABEL_4;
      }

LABEL_9:
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
      if (!sub_100065958(v8, this, v13, v14) || *(this + 36) != 1)
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

    *(this + 8) = TagFallback;
    *(this + 1) = v6 + 1;
    if (TagFallback == 10)
    {
      goto LABEL_9;
    }

LABEL_4:
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

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_100066644(uint64_t a1, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 28))
  {
    v5 = a1;
    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DB98 + 16);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
    a1 = v5;
  }

  v9 = *(a1 + 8);
  result = (a1 + 8);
  v8 = v9;
  if (v9 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000666C8(uint64_t a1, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(a1 + 28))
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      v3 = *(qword_10045DB98 + 16);
    }

    v4 = a1;
    *a2 = 10;
    v5 = v3[12];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_100065D10(v3, v6, a3);
    a1 = v4;
  }

  v9 = *(a1 + 8);
  v7 = (a1 + 8);
  v8 = v9;
  if (!v9 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, a2, a3);
}

uint64_t sub_100066778(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = sub_100065EE4(v7, a2);
      if (v8 < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = sub_100065EE4(*(qword_10045DB98 + 16), a2);
      if (v8 < 0x80)
      {
LABEL_6:
        v3 = (v8 + 2);
        v4 = (a1 + 8);
        v5 = *(a1 + 8);
        if (!v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v3 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v4 = (a1 + 8);
    v5 = *(a1 + 8);
    if (!v5)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_3:
    *(a1 + 24) = v3;
    return v3;
  }

LABEL_10:
  if (*v5 == v5[1])
  {
    goto LABEL_3;
  }

  v9 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v4, a2) + v3;
  *(a1 + 24) = v9;
  return v9;
}

uint64_t sub_10006684C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000651D4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100066940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100066954(uint64_t result, uint64_t a2)
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

uint64_t sub_1000669E8()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C788;
}

void sub_100066A78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100066A8C(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = a1[7];
      v8 = a1[6];
      if (v8 >= v7)
      {
        if (v7 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v7 + 1);
          v7 = a1[7];
        }

        a1[7] = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 2);
      a1[6] = v8 + 1;
      sub_100062F44(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  LOBYTE(v9) = *(a2 + 52);
  if (v9)
  {
    if (*(a2 + 52))
    {
      v10 = *(a2 + 40);
      a1[13] |= 1u;
      a1[10] = v10;
      v9 = *(a2 + 52);
    }

    if ((v9 & 4) != 0)
    {
      v11 = *(a2 + 44);
      a1[13] |= 4u;
      a1[11] = v11;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100066C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100066C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100066CB8(uint64_t a1)
{
  *a1 = off_100435528;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100066D84(uint64_t a1)
{
  *a1 = off_100435528;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100066E6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DBA0;
  if (!qword_10045DBA0)
  {
    sub_100056A38(0, a2, a3, a4);
    return qword_10045DBA0;
  }

  return result;
}

uint64_t sub_100066F40(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    *(this + 40) = 0x8FFFFFFFFLL;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 4) = 0;
  *(v4 + 11) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_100066FF0(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    do
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
            if (TagFallback >> 3 != 3)
            {
              break;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v17 = *(this + 1);
            v18 = *(this + 2);
            v32 = 0;
            if (v17 < v18)
            {
              goto LABEL_45;
            }

LABEL_51:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32);
            if (!result)
            {
              return result;
            }

            v31 = v32;
            if (v32 <= 8)
            {
              goto LABEL_47;
            }

LABEL_53:
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 3, v31);
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_54;
            }
          }

          if (v8 != 2)
          {
            break;
          }

          if (v9 == 2)
          {
            v13 = a1[7];
            v14 = a1[6];
            if (v14 >= v13)
            {
              goto LABEL_29;
            }

            goto LABEL_18;
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

        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v33 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2))
        {
          break;
        }

        v11 = *v10;
        if (v11 < 0)
        {
          break;
        }

        *(this + 1) = v10 + 1;
        if ((v11 + 1) > 5)
        {
          goto LABEL_27;
        }

LABEL_13:
        a1[13] |= 1u;
        a1[10] = v11;
        v12 = *(this + 1);
        if (v12 < *(this + 2))
        {
          goto LABEL_14;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33);
      if (!result)
      {
        return result;
      }

      v11 = v33;
      if (v33 + 1 <= 5)
      {
        goto LABEL_13;
      }

LABEL_27:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 2), 1, v11);
      v12 = *(this + 1);
    }

    while (v12 >= *(this + 2));
LABEL_14:
    ;
  }

  while (*v12 != 18);
  while (1)
  {
    *(this + 1) = v12 + 1;
    v13 = a1[7];
    v14 = a1[6];
    if (v14 >= v13)
    {
LABEL_29:
      if (v13 == a1[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v13 + 1);
        v13 = a1[7];
      }

      a1[7] = v13 + 1;
      operator new();
    }

LABEL_18:
    v15 = *(a1 + 2);
    a1[6] = v14 + 1;
    v16 = *(v15 + 8 * v14);
    v34 = 0;
    v20 = *(this + 1);
    if (v20 >= *(this + 2) || *v20 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
      {
        return 0;
      }
    }

    else
    {
      v34 = *v20;
      *(this + 1) = v20 + 1;
    }

    v21 = *(this + 14);
    v22 = *(this + 15);
    *(this + 14) = v21 + 1;
    if (v21 >= v22)
    {
      return 0;
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
    if (!sub_1000639FC(v16, this, v24, v25) || *(this + 36) != 1)
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

    v12 = *(this + 1);
    v29 = *(this + 2);
    if (v12 >= v29)
    {
      goto LABEL_1;
    }

    v30 = *v12;
    if (v30 != 18)
    {
      if (v30 == 24)
      {
        v17 = v12 + 1;
        *(this + 1) = v17;
        v32 = 0;
        if (v17 >= v29)
        {
          goto LABEL_51;
        }

LABEL_45:
        v31 = *v17;
        if ((v31 & 0x80000000) != 0)
        {
          goto LABEL_51;
        }

        *(this + 1) = v17 + 1;
        if (v31 > 8)
        {
          goto LABEL_53;
        }

LABEL_47:
        a1[13] |= 4u;
        a1[11] = v31;
        if (*(this + 1) == *(this + 2))
        {
LABEL_54:
          if (*(this + 11) || *(this + 6) == *(this + 10))
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
  }
}

uint64_t sub_1000673C4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if ((*(v5 + 52) & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 44), a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100067490(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 52))
  {
    v6 = *(this + 10);
    *a2 = 8;
    v7 = a2 + 1;
    if ((v6 & 0x80000000) != 0)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v7, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_16;
      }
    }

    else if (v6 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(a2 + 1) = v6;
      result = (a2 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    result = a2;
    if (*(this + 6) < 1)
    {
      goto LABEL_16;
    }
  }

  v8 = 0;
  do
  {
    v10 = *(*(this + 2) + 8 * v8);
    *result = 18;
    v11 = *(v10 + 19);
    if (v11 <= 0x7F)
    {
      *(result + 1) = v11;
      v9 = (result + 2);
    }

    else
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v10 + 19), result + 1, a3);
    }

    result = sub_10006463C(v10, v9, a3);
    ++v8;
  }

  while (v8 < *(this + 6));
LABEL_16:
  if ((*(this + 52) & 4) == 0)
  {
    goto LABEL_22;
  }

  v12 = result;
  v13 = *(this + 11);
  v14 = v12;
  *v12 = 24;
  v15 = v12 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v15, a3);
LABEL_22:
    v19 = *(this + 1);
    v17 = (this + 8);
    v16 = v19;
    if (!v19)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v13 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v15, a3);
    v20 = *(this + 1);
    v17 = (this + 8);
    v16 = v20;
    if (!v20)
    {
      return result;
    }
  }

  else
  {
    *(v14 + 1) = v13;
    result = (v14 + 2);
    v18 = *(this + 1);
    v17 = (this + 8);
    v16 = v18;
    if (!v18)
    {
      return result;
    }
  }

LABEL_23:
  if (*v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, result, a3);
  }

  return result;
}

uint64_t sub_100067610(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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
      v12 = sub_100064B6C(*(*(a1 + 16) + 8 * v10), a2);
      v13 = v12;
      if (v12 < 0x80)
      {
        v11 = 1;
      }

      else
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      v9 = (v13 + v9 + v11);
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

uint64_t sub_10006773C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100066A8C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100067830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100067844(uint64_t result, uint64_t a2)
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

uint64_t sub_1000678D8()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C798;
}

void sub_100067968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006797C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
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
      v6 = *(qword_10045DBA8 + 16);
    }

    sub_100059648(v5, v6);
    v4 = *(a2 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100067AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100067AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100067B00(void *a1)
{
  *a1 = off_1004355D8;
  if (qword_10045DBA8 != a1)
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

void sub_100067B94(void *a1)
{
  *a1 = off_1004355D8;
  if (qword_10045DBA8 != a1)
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

uint64_t sub_100067C44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DBA8;
  if (!qword_10045DBA8)
  {
    sub_100056A38(0, a2, a3, a4);
    return qword_10045DBA8;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100067D0C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 4) = 0;
        *(v3 + 7) = 0;
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
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100067D80(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_100059988(v9, this, v14, v15) || *(this + 36) != 1)
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

uint64_t sub_100067FFC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      if ((*(v5 + 36) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DBA8 + 16), a2, a4);
      if ((*(v5 + 36) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

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

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_10:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1000680C0(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 36) & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *a2 = 10;
    v4 = a2 + 1;
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = a1;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v4, a3);
    a1 = v6;
    if (*(v3 + 24) < 1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v3 = *(qword_10045DBA8 + 16);
  *a2 = 10;
  v4 = a2 + 1;
  v5 = *(v3 + 32);
  if (v5 > 0x7F)
  {
    goto LABEL_7;
  }

LABEL_4:
  a2[1] = v5;
  a2 += 2;
  if (*(v3 + 24) < 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 0;
  do
  {
    v8 = *(*(v3 + 16) + 8 * v7);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    ++v7;
  }

  while (v7 < *(v3 + 24));
LABEL_10:
  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {
    v12 = a1;
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
    a1 = v12;
  }

LABEL_13:
  if ((*(a1 + 36) & 2) != 0)
  {
    v13 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v13;
    a2 += 9;
  }

  v16 = *(a1 + 8);
  v14 = (a1 + 8);
  v15 = v16;
  if (!v16 || *v15 == v15[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, a2, a3);
}

uint64_t sub_100068278(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = *(qword_10045DBA8 + 16);
      }

      v10 = *(v9 + 1);
      v11 = (9 * v9[6]);
      if (v10 && *v10 != v10[1])
      {
        v11 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v9 + 2), a2) + v11;
      }

      v9[8] = v11;
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v12 = 1;
      }

      v4 = v11 + v12 + 1;
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

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_5:
      *(a1 + 32) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v13;
  return v13;
}

uint64_t sub_100068374(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006797C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100068454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100068468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006847C(uint64_t result, uint64_t a2)
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

uint64_t sub_100068510()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C7A8;
}

void sub_1000685A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000685B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000686E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000686FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100068710(void *a1)
{
  *a1 = off_100435688;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100068784(void *a1)
{
  *a1 = off_100435688;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000688A0(uint64_t a1)
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

uint64_t sub_1000688B8(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

    result = sub_100059148(this, (a1 + 16));
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
      v26 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v26) & 1) == 0)
      {
        return 0;
      }

      v12 = v26;
      v13 = *(a1 + 24);
      v14 = *(a1 + 16);
      if (v13 == *(a1 + 28))
      {
        if (2 * v13 <= v13 + 1)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = 2 * v13;
        }

        if (v15 <= 4)
        {
          v15 = 4;
        }

        *(a1 + 28) = v15;
        operator new[]();
      }

      v16 = v13 + 1;
      *(a1 + 24) = v13 + 1;
      *(v14 + 4 * v13) = v12;
      v17 = *(this + 1);
      v18 = *(this + 4) - v17;
      if (v18 >= 1)
      {
        v19 = *(a1 + 28) - v16;
        v20 = v18 / 5u;
        if ((v18 / 5u) >= v19)
        {
          v20 = *(a1 + 28) - v16;
        }

        if (v20 >= 1)
        {
          v21 = 0;
          v22 = v13 + 2;
          v23 = v14 + 4 * v16;
          v24 = ((*(this + 4) - v17) * 0x3333333333333334uLL) >> 64;
          if (v24 >= v19)
          {
            LODWORD(v24) = v19;
          }

          while (*v17 == 13)
          {
            v25 = *(v17 + 1);
            *(a1 + 24) = v22;
            *(v23 + 4 * v21) = v25;
            ++v22;
            ++v21;
            v17 += 5;
            if (v24 == v21)
            {
              goto LABEL_39;
            }
          }

          if (!v21)
          {
            continue;
          }

          v20 = v21;
LABEL_39:
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

uint64_t sub_100068B38(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(*(v4 + 16) + 4 * v5++), a3);
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

  return result;
}

uint64_t sub_100068BD4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_100068C44(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100068C90(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000685B4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100068D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100068D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100068D98(uint64_t result, uint64_t a2)
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

uint64_t sub_100068E2C()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C7B8;
}

void sub_100068EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100068ED0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), *(a2 + 24) + a1[6]);
  if (*(a2 + 24) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 16) + 8 * v4);
      v7 = a1[7];
      v8 = a1[6];
      if (v8 >= v7)
      {
        if (v7 == a1[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 4), v7 + 1);
          v7 = a1[7];
        }

        a1[7] = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 2);
      a1[6] = v8 + 1;
      sub_1000685B4(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 24));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_100069060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100069074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000690A4(uint64_t a1)
{
  *a1 = off_100435738;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100069170(uint64_t a1)
{
  *a1 = off_100435738;
  v2 = *(a1 + 28);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 16) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 28);
      }
    }
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000692F0(uint64_t this)
{
  v1 = this;
  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 4) = 0;
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10006938C(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (TagFallback == 10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback == 10)
      {
        while (1)
        {
LABEL_11:
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
            operator new();
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
          if (!sub_1000688B8(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_100069608(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v5 + 16) + 8 * v6++), a2, a4);
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

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000696A4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    for (i = 0; i < *(this + 6); ++i)
    {
      v6 = *(*(this + 2) + 8 * i);
      *a2 = 10;
      v7 = *(v6 + 32);
      if (v7 > 0x7F)
      {
        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
        if (*(v6 + 24) >= 1)
        {
LABEL_8:
          v8 = 0;
          do
          {
            v9 = *(*(v6 + 16) + 4 * v8);
            *a2 = 13;
            *(a2 + 1) = v9;
            a2 = (a2 + 5);
            ++v8;
          }

          while (v8 < *(v6 + 24));
        }
      }

      else
      {
        *(a2 + 1) = v7;
        a2 = (a2 + 2);
        if (*(v6 + 24) >= 1)
        {
          goto LABEL_8;
        }
      }

      v12 = *(v6 + 8);
      v11 = (v6 + 8);
      v10 = v12;
      if (v12 && *v10 != v10[1])
      {
        a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
      }
    }
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

uint64_t sub_1000697F8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v4);
      v7 = (5 * v6[6]);
      v8 = *(v6 + 1);
      if (v8 && *v8 != v8[1])
      {
        v7 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v6 + 2), a2) + v7;
      }

      v6[8] = v7;
      if (v7 < 0x80)
      {
        v5 = 1;
      }

      else
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      v3 = (v7 + v3 + v5);
      ++v4;
    }

    while (v4 < *(a1 + 24));
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_1000698C8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100068ED0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000699A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000699BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000699D0(uint64_t result, uint64_t a2)
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

uint64_t sub_100069A64()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C7C8;
}

void sub_100069AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100069B08(uint64_t a1)
{
  *a1 = off_1004357E8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100069B5C(uint64_t a1)
{
  *a1 = off_1004357E8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100069C54(uint64_t a1)
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

uint64_t sub_100069C68(int a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    v6 = *(this + 1);
    if (v6 >= *(this + 2))
    {
      break;
    }

    TagFallback = *v6;
    if ((TagFallback & 0x80000000) != 0)
    {
      break;
    }

    *(this + 8) = TagFallback;
    *(this + 1) = v6 + 1;
    if (TagFallback)
    {
      v8 = (TagFallback & 7) == 4;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
    if (v8)
    {
      return v9;
    }

LABEL_19:
    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return v9;
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
  *(this + 8) = TagFallback;
  if (TagFallback)
  {
    v10 = (TagFallback & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  v9 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  return v9;
}

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_100069D04(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_100069D20(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

uint64_t sub_100069D40(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (!v5 || *v4 == v4[1])
  {
    result = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v3, a2);
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100069D90(char *a1, char **lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = **lpsrc;
  if (!v5)
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }

  v7 = v5;
  if (v5 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (v7 + 8));
}

void sub_100069EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100069ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100069EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100069F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100069F14(uint64_t result, uint64_t a2)
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

uint64_t sub_100069FA8()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C7D8;
}

void sub_10006A038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A04C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
    LOBYTE(v4) = *(a2 + 64);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 64);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 64) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DBC8 + 16);
    }

    sub_1000582D0(v5, v6);
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 64) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DBC8 + 24);
    }

    sub_10006797C(v7, v8);
    v4 = *(a2 + 64);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 64) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DBC8 + 32);
    }

    sub_10005AD68(v9, v10);
    v4 = *(a2 + 64);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 64) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045DBC8 + 40);
    }

    sub_100068ED0(v11, v12);
    v4 = *(a2 + 64);
  }

  if ((v4 & 0x10) != 0)
  {
    v13 = *(a2 + 56);
    *(a1 + 64) |= 0x10u;
    *(a1 + 56) = v13;
    v4 = *(a2 + 64);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 64) |= 0x20u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 48);
    if (v15)
    {
      if (v15 == v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v15 = *(qword_10045DBC8 + 48);
      if (v15 == v14)
      {
LABEL_38:
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
      }
    }

    wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((v14 + 8), (v15 + 8));
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006A4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A4C4(uint64_t a1, uint64_t a2)
{
  *a1 = off_100435898;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  sub_10006A04C(a1, a2);
  return a1;
}

void sub_10006A538(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_10006A568(void *a1)
{
  *a1 = off_100435898;
  if (qword_10045DBC8 != a1)
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

    v5 = a1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = a1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006A6B0(void *a1)
{
  sub_10006A568(a1);

  operator delete();
}

uint64_t sub_10006A6F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DBC8;
  if (!qword_10045DBC8)
  {
    sub_100056A38(0, a2, a3, a4);
    return qword_10045DBC8;
  }

  return result;
}

uint64_t sub_10006A7C0(uint64_t this)
{
  v1 = this;
  if (*(this + 64))
  {
    if (*(this + 64))
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

    if ((*(v1 + 64) & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        if (*(this + 36))
        {
          if (*(this + 36))
          {
            v3 = *(this + 16);
            if (v3)
            {
              v5 = *(v3 + 8);
              v4 = (v3 + 8);
              *(v4 + 4) = 0;
              *(v4 + 7) = 0;
              if (v5)
              {
                v6 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
                this = v6;
              }
            }
          }

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

    if ((*(v1 + 64) & 4) != 0)
    {
      v8 = *(v1 + 32);
      if (v8)
      {
        if (*(v8 + 24) >= 1)
        {
          v9 = 0;
          do
          {
            v10 = *(*(v8 + 16) + 8 * v9);
            this = (*(*v10 + 32))(v10);
            ++v9;
          }

          while (v9 < *(v8 + 24));
        }

        v12 = *(v8 + 8);
        v11 = (v8 + 8);
        *(v11 + 4) = 0;
        *(v11 + 9) = 0;
        if (v12)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
        }
      }
    }

    if ((*(v1 + 64) & 8) != 0)
    {
      v13 = *(v1 + 40);
      if (v13)
      {
        if (*(v13 + 24) >= 1)
        {
          v14 = 0;
          do
          {
            v15 = *(*(v13 + 16) + 8 * v14);
            this = (*(*v15 + 32))(v15);
            ++v14;
          }

          while (v14 < *(v13 + 24));
        }

        v17 = *(v13 + 8);
        v16 = (v13 + 8);
        *(v16 + 4) = 0;
        *(v16 + 9) = 0;
        if (v17)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v16);
        }
      }
    }

    *(v1 + 56) = 0;
    if ((*(v1 + 64) & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        v18 = *(this + 8);
        this += 8;
        *(this + 12) = 0;
        if (v18)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v20 = *(v1 + 8);
  v19 = (v1 + 8);
  *(v19 + 14) = 0;
  if (v20)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v19);
  }

  return this;
}

uint64_t sub_10006A9B0(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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
                goto LABEL_35;
              }

              *(a1 + 64) |= 1u;
              v13 = *(a1 + 16);
              if (!v13)
              {
                operator new();
              }

              v55 = 0;
              v14 = *(this + 1);
              if (v14 >= *(this + 2) || *v14 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
                {
                  return 0;
                }
              }

              else
              {
                v55 = *v14;
                *(this + 1) = v14 + 1;
              }

              v19 = *(this + 14);
              v20 = *(this + 15);
              *(this + 14) = v19 + 1;
              if (v19 >= v20)
              {
                return 0;
              }

              v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
              if (!sub_100058554(v13, this, v22, v23) || *(this + 36) != 1)
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
              if (v27 < *(this + 2) && *v27 == 18)
              {
                *(this + 1) = v27 + 1;
                *(a1 + 64) |= 2u;
                v17 = *(a1 + 24);
                if (!v17)
                {
LABEL_47:
                  operator new();
                }

                goto LABEL_32;
              }
            }

            else if (v8 == 2)
            {
              if (v9 != 2)
              {
                goto LABEL_35;
              }

              *(a1 + 64) |= 2u;
              v17 = *(a1 + 24);
              if (!v17)
              {
                goto LABEL_47;
              }

LABEL_32:
              v55 = 0;
              v18 = *(this + 1);
              if (v18 >= *(this + 2) || *v18 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
                {
                  return 0;
                }
              }

              else
              {
                v55 = *v18;
                *(this + 1) = v18 + 1;
              }

              v28 = *(this + 14);
              v29 = *(this + 15);
              *(this + 14) = v28 + 1;
              if (v28 >= v29)
              {
                return 0;
              }

              v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
              if (!sub_100067D80(v17, this, v31, v32) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
              v33 = *(this + 14);
              v25 = __OFSUB__(v33, 1);
              v34 = v33 - 1;
              if (v34 < 0 == v25)
              {
                *(this + 14) = v34;
              }

              v35 = *(this + 1);
              if (v35 < *(this + 2) && *v35 == 26)
              {
                *(this + 1) = v35 + 1;
                *(a1 + 64) |= 4u;
                v10 = *(a1 + 32);
                if (!v10)
                {
LABEL_59:
                  operator new();
                }

                goto LABEL_12;
              }
            }

            else
            {
              if (v8 != 3 || v9 != 2)
              {
                goto LABEL_35;
              }

              *(a1 + 64) |= 4u;
              v10 = *(a1 + 32);
              if (!v10)
              {
                goto LABEL_59;
              }

LABEL_12:
              v55 = 0;
              v11 = *(this + 1);
              if (v11 >= *(this + 2) || *v11 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
                {
                  return 0;
                }
              }

              else
              {
                v55 = *v11;
                *(this + 1) = v11 + 1;
              }

              v36 = *(this + 14);
              v37 = *(this + 15);
              *(this + 14) = v36 + 1;
              if (v36 >= v37)
              {
                return 0;
              }

              v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
              if (!sub_10005B224(v10, this, v39, v40) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
              v41 = *(this + 14);
              v25 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v25)
              {
                *(this + 14) = v42;
              }

              v43 = *(this + 1);
              if (v43 < *(this + 2) && *v43 == 34)
              {
                *(this + 1) = v43 + 1;
                *(a1 + 64) |= 8u;
                v15 = *(a1 + 40);
                if (!v15)
                {
LABEL_71:
                  operator new();
                }

                goto LABEL_28;
              }
            }
          }

          if (v8 != 4)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_35;
          }

          *(a1 + 64) |= 8u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            goto LABEL_71;
          }

LABEL_28:
          v55 = 0;
          v16 = *(this + 1);
          if (v16 >= *(this + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v16;
            *(this + 1) = v16 + 1;
          }

          v44 = *(this + 14);
          v45 = *(this + 15);
          *(this + 14) = v44 + 1;
          if (v44 >= v45)
          {
            return 0;
          }

          v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          if (!sub_10006938C(v15, this, v47, v48) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
          v49 = *(this + 14);
          v25 = __OFSUB__(v49, 1);
          v50 = v49 - 1;
          if (v50 < 0 == v25)
          {
            *(this + 14) = v50;
          }

          v51 = *(this + 1);
          if (v51 < *(this + 2) && *v51 == 45)
          {
            *(this + 1) = v51 + 1;
            goto LABEL_83;
          }
        }

        if (v8 != 5)
        {
          break;
        }

        if (v9 != 5)
        {
          goto LABEL_35;
        }

LABEL_83:
        v55 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v55) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = v55;
        v52 = *(a1 + 64) | 0x10;
        *(a1 + 64) = v52;
        v53 = *(this + 1);
        if (v53 < *(this + 2) && *v53 == 50)
        {
          *(this + 1) = v53 + 1;
          *(a1 + 64) = v52 | 0x20;
          v12 = *(a1 + 48);
          if (!v12)
          {
LABEL_87:
            operator new();
          }

          goto LABEL_88;
        }
      }

      if (v8 != 6 || v9 != 2)
      {
        break;
      }

      *(a1 + 64) |= 0x20u;
      v12 = *(a1 + 48);
      if (!v12)
      {
        goto LABEL_87;
      }

LABEL_88:
      result = sub_10006B108(this, v12);
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

LABEL_35:
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

uint64_t sub_10006B108(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, int a2)
{
  v15 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v15);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v15 = *v4;
    *(this + 1) = v4 + 1;
  }

  v6 = *(this + 14);
  v7 = *(this + 15);
  *(this + 14) = v6 + 1;
  if (v6 >= v7)
  {
    return 0;
  }

  v9 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v15);
  while (1)
  {
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        break;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v10 + 1;
      if (!TagFallback)
      {
        break;
      }
    }

    if ((TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a2 + 8, v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(this + 36) != 1)
  {
    return 0;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v9);
  v12 = *(this + 14);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v14 < 0 == v13)
  {
    *(this + 14) = v14;
  }

  return 1;
}

uint64_t sub_10006B24C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 64);
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DBC8 + 24), a2, a4);
      v6 = *(v5 + 64);
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    v13 = *(v5 + 40);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
      v6 = *(v5 + 64);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DBC8 + 40), a2, a4);
      v6 = *(v5 + 64);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v10 = *(result + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DBC8 + 16), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v12 = *(v5 + 32);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DBC8 + 32), a2, a4);
    v6 = *(v5 + 64);
    if ((v6 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 56), a3);
  if ((*(v5 + 64) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_30;
  }

LABEL_26:
  v14 = *(v5 + 48);
  if (v14)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v14, a2, a4);
    v15 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v15;
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DBC8 + 48), a2, a4);
    v16 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v16;
    if (!v16)
    {
      return result;
    }
  }

LABEL_30:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006B420(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = *(this + 3);
    if (v11)
    {
      *v3 = 18;
      v12 = v3 + 1;
      v13 = *(v11 + 32);
      if (v13 <= 0x7F)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = *(qword_10045DBC8 + 24);
      *v3 = 18;
      v12 = v3 + 1;
      v13 = *(v11 + 32);
      if (v13 <= 0x7F)
      {
LABEL_16:
        *(v3 + 1) = v13;
        v3 = sub_1000680C0(v11, v3 + 2, a3);
        v5 = *(this + 16);
        if ((v5 & 4) != 0)
        {
          goto LABEL_20;
        }

LABEL_4:
        if ((v5 & 8) == 0)
        {
          goto LABEL_5;
        }

LABEL_26:
        v21 = *(this + 5);
        if (v21)
        {
          *v3 = 34;
          v22 = v3 + 1;
          v23 = v21[10];
          if (v23 <= 0x7F)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v21 = *(qword_10045DBC8 + 40);
          *v3 = 34;
          v22 = v3 + 1;
          v23 = v21[10];
          if (v23 <= 0x7F)
          {
LABEL_28:
            *(v3 + 1) = v23;
            v3 = sub_1000696A4(v21, (v3 + 2), a3);
            v5 = *(this + 16);
            if ((v5 & 0x10) != 0)
            {
              goto LABEL_32;
            }

LABEL_6:
            if ((v5 & 0x20) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v22, a3);
        v3 = sub_1000696A4(v21, v24, v25);
        v5 = *(this + 16);
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_32;
        }

        goto LABEL_6;
      }
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
    v3 = sub_1000680C0(v11, v14, v15);
    v5 = *(this + 16);
    if ((v5 & 4) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_4;
  }

  v6 = *(this + 2);
  if (v6)
  {
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 40);
    if (v8 <= 0x7F)
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    v3 = sub_1000587E0(v6, v9, v10);
    v5 = *(this + 16);
    if ((v5 & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_3;
  }

  v6 = *(qword_10045DBC8 + 16);
  *a2 = 10;
  v7 = a2 + 1;
  v8 = *(v6 + 40);
  if (v8 > 0x7F)
  {
    goto LABEL_13;
  }

LABEL_10:
  *(v3 + 1) = v8;
  v3 = sub_1000587E0(v6, v3 + 2, a3);
  v5 = *(this + 16);
  if ((v5 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v16 = *(this + 4);
  if (v16)
  {
    *v3 = 26;
    v17 = v3 + 1;
    v18 = v16[10];
    if (v18 <= 0x7F)
    {
      goto LABEL_22;
    }

LABEL_25:
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v17, a3);
    v3 = sub_10005B53C(v16, v19, v20);
    v5 = *(this + 16);
    if ((v5 & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  v16 = *(qword_10045DBC8 + 32);
  *v3 = 26;
  v17 = v3 + 1;
  v18 = v16[10];
  if (v18 > 0x7F)
  {
    goto LABEL_25;
  }

LABEL_22:
  *(v3 + 1) = v18;
  v3 = sub_10005B53C(v16, (v3 + 2), a3);
  v5 = *(this + 16);
  if ((v5 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_32:
  v26 = *(this + 14);
  *v3 = 45;
  *(v3 + 1) = v26;
  v3 = (v3 + 5);
  if ((*(this + 16) & 0x20) == 0)
  {
    goto LABEL_41;
  }

LABEL_33:
  v27 = *(this + 6);
  if (v27)
  {
    *v3 = 50;
    v28 = v3 + 1;
    v29 = *(v27 + 16);
    if (v29 <= 0x7F)
    {
      goto LABEL_35;
    }

LABEL_38:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v28, a3);
    v33 = *(v27 + 8);
    v31 = (v27 + 8);
    v30 = v33;
    if (!v33)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v27 = *(qword_10045DBC8 + 48);
  *v3 = 50;
  v28 = v3 + 1;
  v29 = *(v27 + 16);
  if (v29 > 0x7F)
  {
    goto LABEL_38;
  }

LABEL_35:
  *(v3 + 1) = v29;
  v3 = (v3 + 2);
  v32 = *(v27 + 8);
  v31 = (v27 + 8);
  v30 = v32;
  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_39:
  if (*v30 != v30[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, v3, a3);
  }

LABEL_41:
  v36 = *(this + 1);
  v35 = (this + 8);
  v34 = v36;
  if (!v36 || *v34 == v34[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v35, v3, a3);
}

uint64_t sub_10006B758(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v15 = *(a1 + 24);
    if (v15)
    {
      v16 = sub_100068278(v15, a2);
      if (v16 < 0x80)
      {
LABEL_27:
        v17 = 1;
LABEL_30:
        v4 += v16 + v17 + 1;
        v3 = *(a1 + 64);
        goto LABEL_31;
      }
    }

    else
    {
      v16 = sub_100068278(*(qword_10045DBC8 + 24), a2);
      if (v16 < 0x80)
      {
        goto LABEL_27;
      }
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    goto LABEL_30;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v8 + 44);
    if (*(v8 + 44))
    {
      goto LABEL_9;
    }

LABEL_17:
    v11 = 0;
    v12 = (v8 + 8);
    v13 = *(v8 + 8);
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v8 = *(qword_10045DBC8 + 16);
  v9 = *(v8 + 44);
  if (!*(v8 + 44))
  {
    goto LABEL_17;
  }

LABEL_9:
  v10 = (v9 << 31 >> 31) & 9;
  if ((v9 & 2) != 0)
  {
    v10 += 9;
  }

  if ((v9 & 4) != 0)
  {
    v11 = v10 + 9;
  }

  else
  {
    v11 = v10;
  }

  v12 = (v8 + 8);
  v13 = *(v8 + 8);
  if (!v13)
  {
LABEL_22:
    *(v8 + 40) = v11;
    v4 = v11 + 2;
    v3 = *(a1 + 64);
    if ((v3 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_18:
  if (*v13 == v13[1])
  {
    goto LABEL_22;
  }

  v14 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v12, a2) + v11);
  *(v8 + 40) = v14;
  if (v14 >= 0x80)
  {
    v4 = v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 64);
    if ((v3 & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v4 = v14 + 2;
  v3 = *(a1 + 64);
  if ((v3 & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  if ((v3 & 4) != 0)
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      v18 = *(qword_10045DBC8 + 32);
    }

    v19 = *(v18 + 24);
    if (v19 >= 1)
    {
      v20 = 0;
      do
      {
        v22 = *(*(v18 + 16) + 8 * v20);
        v23 = (9 * v22[6]);
        v24 = *(v22 + 1);
        if (v24 && *v24 != v24[1])
        {
          v23 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v22 + 2), a2) + v23;
        }

        v22[8] = v23;
        if (v23 >= 0x80)
        {
          v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
        }

        else
        {
          v21 = 1;
        }

        v19 = (v23 + v19 + v21);
        ++v20;
      }

      while (v20 < *(v18 + 24));
    }

    v25 = *(v18 + 8);
    if (v25 && *v25 != v25[1])
    {
      v19 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v18 + 8), a2) + v19;
    }

    *(v18 + 40) = v19;
    if (v19 >= 0x80)
    {
      v4 += v19 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = *(a1 + 64);
      if ((v3 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v4 += v19 + 2;
      v3 = *(a1 + 64);
      if ((v3 & 8) != 0)
      {
        goto LABEL_57;
      }
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

    if ((v3 & 0x20) == 0)
    {
      goto LABEL_37;
    }

LABEL_78:
    v37 = *(a1 + 48);
    if (v37)
    {
      v38 = (v37 + 8);
      v39 = *(v37 + 8);
      if (!v39)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v37 = *(qword_10045DBC8 + 48);
      v38 = (v37 + 8);
      v39 = *(v37 + 8);
      if (!v39)
      {
        goto LABEL_85;
      }
    }

    if (*v39 != v39[1])
    {
      v40 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v38, a2);
      v41 = v40;
      *(v37 + 16) = v40;
      if (v40 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
      }

      else
      {
        v42 = 1;
      }

LABEL_87:
      v5 = (v5 + v41 + v42 + 1);
      v6 = (a1 + 8);
      v7 = *(a1 + 8);
      if (!v7)
      {
        goto LABEL_90;
      }

      goto LABEL_88;
    }

LABEL_85:
    v41 = 0;
    *(v37 + 16) = 0;
    v42 = 1;
    goto LABEL_87;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_33;
  }

LABEL_57:
  v26 = *(a1 + 40);
  if (!v26)
  {
    v26 = *(qword_10045DBC8 + 40);
  }

  v27 = *(v26 + 24);
  if (v27 >= 1)
  {
    v28 = 0;
    do
    {
      v30 = *(*(v26 + 16) + 8 * v28);
      v31 = (5 * v30[6]);
      v32 = *(v30 + 1);
      if (v32 && *v32 != v32[1])
      {
        v31 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v30 + 2), a2) + v31;
      }

      v30[8] = v31;
      if (v31 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
      }

      else
      {
        v29 = 1;
      }

      v27 = (v31 + v27 + v29);
      ++v28;
    }

    while (v28 < *(v26 + 24));
  }

  v33 = *(v26 + 8);
  if (v33 && *v33 != v33[1])
  {
    v27 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v26 + 8), a2) + v27;
  }

  *(v26 + 40) = v27;
  if (v27 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
  }

  else
  {
    v34 = 1;
  }

  v35 = v4 + v27 + v34 + 1;
  v36 = *(a1 + 64);
  if ((v36 & 0x10) != 0)
  {
    v5 = v35 + 5;
  }

  else
  {
    v5 = v35;
  }

  if ((v36 & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_37:
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_90;
  }

LABEL_88:
  if (*v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

LABEL_90:
  *(a1 + 60) = v5;
  return v5;
}

uint64_t sub_10006BB88(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006A04C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006BC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006BC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BC90(uint64_t result, uint64_t a2)
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

uint64_t sub_10006BD24()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C7E8;
}

void sub_10006BDB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_10006BE6C()
{
  v0 = sub_10006C580();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_10006C4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006C520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006C580(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045C828 & 1) == 0)
  {
    byte_10045C828 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPOutdoorEstimatorLogEntry.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003C90EC, 0x12E8, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_10006CD28()
{
  if (qword_10045DBD0)
  {
    (*(*qword_10045DBD0 + 8))(qword_10045DBD0);
  }

  if (qword_10045C840)
  {
    (*(*qword_10045C840 + 8))(qword_10045C840);
  }

  if (qword_10045DBD8)
  {
    (*(*qword_10045DBD8 + 8))(qword_10045DBD8);
  }

  if (qword_10045C850)
  {
    (*(*qword_10045C850 + 8))(qword_10045C850);
  }

  if (qword_10045DBE0)
  {
    (*(*qword_10045DBE0 + 8))(qword_10045DBE0);
  }

  if (qword_10045C860)
  {
    (*(*qword_10045C860 + 8))(qword_10045C860);
  }

  if (qword_10045DBE8)
  {
    (*(*qword_10045DBE8 + 8))(qword_10045DBE8);
  }

  if (qword_10045C870)
  {
    (*(*qword_10045C870 + 8))(qword_10045C870);
  }

  if (qword_10045DBF0)
  {
    (*(*qword_10045DBF0 + 8))(qword_10045DBF0);
  }

  if (qword_10045C888)
  {
    (*(*qword_10045C888 + 8))(qword_10045C888);
  }

  if (qword_10045DBF8)
  {
    (*(*qword_10045DBF8 + 8))(qword_10045DBF8);
  }

  if (qword_10045C8A8)
  {
    (*(*qword_10045C8A8 + 8))(qword_10045C8A8);
  }

  if (qword_10045DC00)
  {
    (*(*qword_10045DC00 + 8))(qword_10045DC00);
  }

  if (qword_10045C8B8)
  {
    (*(*qword_10045C8B8 + 8))(qword_10045C8B8);
  }

  if (qword_10045DC08)
  {
    (*(*qword_10045DC08 + 8))(qword_10045DC08);
  }

  if (qword_10045C8C8)
  {
    (*(*qword_10045C8C8 + 8))(qword_10045C8C8);
  }

  if (qword_10045DC10)
  {
    (*(*qword_10045DC10 + 8))(qword_10045DC10);
  }

  if (qword_10045C8D8)
  {
    (*(*qword_10045C8D8 + 8))(qword_10045C8D8);
  }

  if (qword_10045DC18)
  {
    (*(*qword_10045DC18 + 8))(qword_10045DC18);
  }

  if (qword_10045C8F0)
  {
    (*(*qword_10045C8F0 + 8))(qword_10045C8F0);
  }

  if (qword_10045DC20)
  {
    (*(*qword_10045DC20 + 8))(qword_10045DC20);
  }

  if (qword_10045C900)
  {
    (*(*qword_10045C900 + 8))(qword_10045C900);
  }

  if (qword_10045DC28)
  {
    (*(*qword_10045DC28 + 8))(qword_10045DC28);
  }

  result = qword_10045C910;
  if (qword_10045C910)
  {
    v1 = *(*qword_10045C910 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10006D1D0()
{
  v0 = qword_10045C928;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v13[1] = sub_10006BE6C;
    v14 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v13);
  }

  if (!qword_10045DBD0)
  {
    (sub_10006C580)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBD8)
  {
    sub_10006C580(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBE0)
  {
    sub_10006C580(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBE8)
  {
    sub_10006C580(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBF0)
  {
    sub_10006C580(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DBF8)
  {
    sub_10006C580(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC00)
  {
    sub_10006C580(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC08)
  {
    sub_10006C580(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC10)
  {
    sub_10006C580(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC18)
  {
    sub_10006C580(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC20)
  {
    sub_10006C580(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DC28)
  {
    sub_10006C580(v11);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10006D41C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D430(uint64_t a1)
{
  *a1 = off_100435B28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_10006D498(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
    v4 = *(a2 + 92);
    if (!v4)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v4 = *(a2 + 92);
    if (!v4)
    {
      goto LABEL_45;
    }
  }

  if (v4)
  {
    *(a1 + 92) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DBD0 + 16);
    }

    sub_100070288(v5, v6);
    v4 = *(a2 + 92);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 92) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DBD0 + 24);
    }

    sub_100070504(v7, v8);
    v4 = *(a2 + 92);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 92) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DBD0 + 32);
    }

    sub_100070688(v9, v10);
    v4 = *(a2 + 92);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 92) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045DBD0 + 40);
    }

    sub_100070850(v11, v12);
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x10) != 0)
  {
    *(a1 + 92) |= 0x10u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 48);
    if (!v14)
    {
      v14 = *(qword_10045DBD0 + 48);
    }

    sub_1000709E4(v13, v14);
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 92) |= 0x20u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 56);
    if (!v16)
    {
      v16 = *(qword_10045DBD0 + 56);
    }

    sub_100070C74(v15, v16);
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x40) != 0)
  {
    *(a1 + 92) |= 0x40u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 64);
    if (!v18)
    {
      v18 = *(qword_10045DBD0 + 64);
    }

    sub_100070DF8(v17, v18);
    v4 = *(a2 + 92);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 92) |= 0x80u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 72);
    if (!v20)
    {
      v20 = *(qword_10045DBD0 + 72);
    }

    sub_100070F7C(v19, v20);
    v4 = *(a2 + 92);
  }

LABEL_45:
  if ((v4 & 0x100) != 0)
  {
    *(a1 + 92) |= 0x100u;
    v21 = *(a1 + 80);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 80);
    if (!v22)
    {
      v22 = *(qword_10045DBD0 + 80);
    }

    sub_100071100(v21, v22);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006DAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006DAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006DAD8(uint64_t a1, uint64_t a2)
{
  *a1 = off_100435B28;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  sub_10006D498(a1, a2);
  return a1;
}

void sub_10006DB4C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void *sub_10006DB7C(void *result)
{
  if (qword_10045DBD0 != result)
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

    result = v1[10];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_10006DD50(void *a1)
{
  *a1 = off_100435B28;
  v2 = (a1 + 1);
  sub_10006DB7C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006DDB0(void *a1)
{
  *a1 = off_100435B28;
  v2 = (a1 + 1);
  sub_10006DB7C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10006DE2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DBD0;
  if (!qword_10045DBD0)
  {
    sub_10006C580(0, a2, a3, a4);
    return qword_10045DBD0;
  }

  return result;
}

uint64_t sub_10006DEFC(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 92);
  if (v2)
  {
    if (*(this + 92))
    {
      this = *(this + 16);
      if (this)
      {
        this = sub_10006E248(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        if (*(this + 32))
        {
          if (*(this + 32))
          {
            v3 = *(this + 16);
            if (v3)
            {
              if (*(v3 + 44))
              {
                *(v3 + 16) = 0;
                *(v3 + 24) = 0;
                *(v3 + 32) = 0;
              }

              v5 = *(v3 + 8);
              v4 = (v3 + 8);
              *(v4 + 9) = 0;
              if (v5)
              {
                v6 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
                this = v6;
              }
            }
          }

          *(this + 24) = 0;
        }

        v7 = *(this + 8);
        this += 8;
        *(this + 24) = 0;
        if (v7)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 92) & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        if (*(this + 44))
        {
          if (*(this + 44))
          {
            v8 = *(this + 16);
            if (v8)
            {
              if (*(v8 + 44))
              {
                *(v8 + 16) = 0;
                *(v8 + 24) = 0;
                *(v8 + 32) = 0;
              }

              v10 = *(v8 + 8);
              v9 = (v8 + 8);
              *(v9 + 9) = 0;
              if (v10)
              {
                v11 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
                this = v11;
              }
            }
          }

          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v12 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v12)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v13 = *(v1 + 92);
    if ((v13 & 8) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = sub_10006E408(this);
        v13 = *(v1 + 92);
      }
    }

    if ((v13 & 0x10) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        v14 = *(this + 40);
        if (v14)
        {
          if (v14)
          {
            v15 = *(this + 16);
            if (v15)
            {
              if (*(v15 + 44))
              {
                *(v15 + 16) = 0;
                *(v15 + 24) = 0;
                *(v15 + 32) = 0;
              }

              v17 = *(v15 + 8);
              v16 = (v15 + 8);
              *(v16 + 9) = 0;
              if (v17)
              {
                v18 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v16);
                this = v18;
              }
            }
          }

          *(this + 27) = 0;
          *(this + 24) = 0;
          v14 = *(this + 40);
        }

        if ((v14 & 0xFF00) != 0)
        {
          *(this + 31) = 0;
        }

        v19 = *(this + 8);
        this += 8;
        *(this + 32) = 0;
        if (v19)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 92) & 0x20) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        if (*(this + 32))
        {
          if (*(this + 32))
          {
            v20 = *(this + 16);
            if (v20)
            {
              if (*(v20 + 44))
              {
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
              }

              v22 = *(v20 + 8);
              v21 = (v20 + 8);
              *(v21 + 9) = 0;
              if (v22)
              {
                v23 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v21);
                this = v23;
              }
            }
          }

          *(this + 24) = 0;
        }

        v24 = *(this + 8);
        this += 8;
        *(this + 24) = 0;
        if (v24)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 92) & 0x40) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        if (*(this + 36))
        {
          if (*(this + 36))
          {
            v25 = *(this + 16);
            if (v25)
            {
              if (*(v25 + 44))
              {
                *(v25 + 16) = 0;
                *(v25 + 24) = 0;
                *(v25 + 32) = 0;
              }

              v27 = *(v25 + 8);
              v26 = (v25 + 8);
              *(v26 + 9) = 0;
              if (v27)
              {
                v28 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v26);
                this = v28;
              }
            }
          }

          *(this + 24) = 0;
        }

        v29 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v29)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 92) & 0x80) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if (*(this + 36))
        {
          if (*(this + 36))
          {
            v30 = *(this + 16);
            if (v30)
            {
              if (*(v30 + 44))
              {
                *(v30 + 16) = 0;
                *(v30 + 24) = 0;
                *(v30 + 32) = 0;
              }

              v32 = *(v30 + 8);
              v31 = (v30 + 8);
              *(v31 + 9) = 0;
              if (v32)
              {
                v33 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v31);
                this = v33;
              }
            }
          }

          *(this + 24) = 0;
        }

        v34 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v34)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  if (*(v1 + 93))
  {
    this = *(v1 + 80);
    if (this)
    {
      if (*(this + 36))
      {
        if (*(this + 36))
        {
          v35 = *(this + 16);
          if (v35)
          {
            if (*(v35 + 44))
            {
              *(v35 + 16) = 0;
              *(v35 + 24) = 0;
              *(v35 + 32) = 0;
            }

            v37 = *(v35 + 8);
            v36 = (v35 + 8);
            *(v36 + 9) = 0;
            if (v37)
            {
              v38 = this;
              wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v36);
              this = v38;
            }
          }
        }

        *(this + 24) = 0;
      }

      v39 = *(this + 8);
      this += 8;
      *(this + 28) = 0;
      if (v39)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  v41 = *(v1 + 8);
  v40 = (v1 + 8);
  *(v40 + 21) = 0;
  if (v41)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v40);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E248(uint64_t a1)
{
  if (*(a1 + 60))
  {
    if (*(a1 + 60))
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
        }
      }
    }

    if ((*(a1 + 60) & 2) != 0)
    {
      v6 = *(a1 + 24);
      if (v6)
      {
        if (*(v6 + 44))
        {
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
        }

        v8 = *(v6 + 8);
        v7 = (v6 + 8);
        *(v7 + 9) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v1 = vars8;
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E308(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 32))
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
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E388(uint64_t a1)
{
  if (*(a1 + 44))
  {
    if (*(a1 + 44))
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
  *(result + 9) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10006E408(uint64_t this)
{
  v1 = this;
  if (*(this + 148))
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

  *(v1 + 32) = 0;
  if (*(v1 + 56) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 48) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 56));
  }

  *(v1 + 56) = 0;
  if (*(v1 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 72) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 80));
  }

  *(v1 + 80) = 0;
  if (*(v1 + 104) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v1 + 96) + 8 * v9);
      this = (*(*v10 + 32))(v10);
      ++v9;
    }

    while (v9 < *(v1 + 104));
  }

  *(v1 + 104) = 0;
  if (*(v1 + 128) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(v1 + 120) + 8 * v11);
      this = (*(*v12 + 32))(v12);
      ++v11;
    }

    while (v11 < *(v1 + 128));
  }

  v14 = *(v1 + 8);
  v13 = (v1 + 8);
  *(v13 + 30) = 0;
  *(v13 + 35) = 0;
  if (v14)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v13);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E614(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (v2)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
          *(v3 + 32) = 0;
        }

        v5 = *(v3 + 8);
        v4 = (v3 + 8);
        *(v4 + 9) = 0;
        if (v5)
        {
          v6 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
          a1 = v6;
        }
      }
    }

    *(a1 + 27) = 0;
    *(a1 + 24) = 0;
    v2 = *(a1 + 40);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 31) = 0;
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E6AC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 32))
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
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E72C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
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
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E7AC(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
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
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E82C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
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
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10006E8AC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v8 != 3)
            {
              if (v8 != 4 || v9 != 2)
              {
                goto LABEL_53;
              }

              *(a1 + 92) |= 8u;
              v14 = *(a1 + 40);
              if (!v14)
              {
                goto LABEL_89;
              }

              goto LABEL_26;
            }

            if (v9 != 2)
            {
              goto LABEL_53;
            }

            *(a1 + 92) |= 4u;
            v20 = *(a1 + 32);
            if (!v20)
            {
              goto LABEL_77;
            }

LABEL_42:
            v101 = 0;
            v21 = *(this + 1);
            if (v21 >= *(this + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
              {
                return 0;
              }
            }

            else
            {
              v101 = *v21;
              *(this + 1) = v21 + 1;
            }

            v43 = *(this + 14);
            v44 = *(this + 15);
            *(this + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
            if (!sub_100073AC0(v20, this, v46, v47) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
            v48 = *(this + 14);
            v32 = __OFSUB__(v48, 1);
            v49 = v48 - 1;
            if (v49 < 0 == v32)
            {
              *(this + 14) = v49;
            }

            v50 = *(this + 1);
            if (v50 < *(this + 2) && *v50 == 34)
            {
              *(this + 1) = v50 + 1;
              *(a1 + 92) |= 8u;
              v14 = *(a1 + 40);
              if (!v14)
              {
LABEL_89:
                operator new();
              }

LABEL_26:
              v101 = 0;
              v15 = *(this + 1);
              if (v15 >= *(this + 2) || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
                {
                  return 0;
                }
              }

              else
              {
                v101 = *v15;
                *(this + 1) = v15 + 1;
              }

              v51 = *(this + 14);
              v52 = *(this + 15);
              *(this + 14) = v51 + 1;
              if (v51 >= v52)
              {
                return 0;
              }

              v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
              if (!sub_1000751F0(v14, this, v54, v55) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v53);
              v56 = *(this + 14);
              v32 = __OFSUB__(v56, 1);
              v57 = v56 - 1;
              if (v57 < 0 == v32)
              {
                *(this + 14) = v57;
              }

              v58 = *(this + 1);
              if (v58 < *(this + 2) && *v58 == 42)
              {
                *(this + 1) = v58 + 1;
                *(a1 + 92) |= 0x10u;
                v24 = *(a1 + 48);
                if (!v24)
                {
LABEL_101:
                  operator new();
                }

                goto LABEL_50;
              }
            }
          }

          else
          {
            if (v8 != 1)
            {
              if (v8 != 2 || v9 != 2)
              {
                goto LABEL_53;
              }

              *(a1 + 92) |= 2u;
              v12 = *(a1 + 24);
              if (!v12)
              {
                goto LABEL_65;
              }

              goto LABEL_20;
            }

            if (v9 != 2)
            {
              goto LABEL_53;
            }

            *(a1 + 92) |= 1u;
            v18 = *(a1 + 16);
            if (!v18)
            {
              operator new();
            }

            v101 = 0;
            v19 = *(this + 1);
            if (v19 >= *(this + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
              {
                return 0;
              }
            }

            else
            {
              v101 = *v19;
              *(this + 1) = v19 + 1;
            }

            v26 = *(this + 14);
            v27 = *(this + 15);
            *(this + 14) = v26 + 1;
            if (v26 >= v27)
            {
              return 0;
            }

            v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
            if (!sub_100071FE8(v18, this, v29, v30) || *(this + 36) != 1)
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
            if (v34 < *(this + 2) && *v34 == 18)
            {
              *(this + 1) = v34 + 1;
              *(a1 + 92) |= 2u;
              v12 = *(a1 + 24);
              if (!v12)
              {
LABEL_65:
                operator new();
              }

LABEL_20:
              v101 = 0;
              v13 = *(this + 1);
              if (v13 >= *(this + 2) || *v13 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
                {
                  return 0;
                }
              }

              else
              {
                v101 = *v13;
                *(this + 1) = v13 + 1;
              }

              v35 = *(this + 14);
              v36 = *(this + 15);
              *(this + 14) = v35 + 1;
              if (v35 >= v36)
              {
                return 0;
              }

              v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
              if (!sub_100073064(v12, this, v38, v39) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
              v40 = *(this + 14);
              v32 = __OFSUB__(v40, 1);
              v41 = v40 - 1;
              if (v41 < 0 == v32)
              {
                *(this + 14) = v41;
              }

              v42 = *(this + 1);
              if (v42 < *(this + 2) && *v42 == 26)
              {
                *(this + 1) = v42 + 1;
                *(a1 + 92) |= 4u;
                v20 = *(a1 + 32);
                if (!v20)
                {
LABEL_77:
                  operator new();
                }

                goto LABEL_42;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v8 != 5)
        {
          if (v8 != 6 || v9 != 2)
          {
            goto LABEL_53;
          }

          *(a1 + 92) |= 0x20u;
          v16 = *(a1 + 56);
          if (!v16)
          {
            goto LABEL_113;
          }

          goto LABEL_32;
        }

        if (v9 != 2)
        {
          goto LABEL_53;
        }

        *(a1 + 92) |= 0x10u;
        v24 = *(a1 + 48);
        if (!v24)
        {
          goto LABEL_101;
        }

LABEL_50:
        v101 = 0;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
          {
            return 0;
          }
        }

        else
        {
          v101 = *v25;
          *(this + 1) = v25 + 1;
        }

        v59 = *(this + 14);
        v60 = *(this + 15);
        *(this + 14) = v59 + 1;
        if (v59 >= v60)
        {
          return 0;
        }

        v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
        if (!sub_100076EC0(v24, this, v62, v63) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v61);
        v64 = *(this + 14);
        v32 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v32)
        {
          *(this + 14) = v65;
        }

        v66 = *(this + 1);
        if (v66 < *(this + 2) && *v66 == 50)
        {
          *(this + 1) = v66 + 1;
          *(a1 + 92) |= 0x20u;
          v16 = *(a1 + 56);
          if (!v16)
          {
LABEL_113:
            operator new();
          }

LABEL_32:
          v101 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
            {
              return 0;
            }
          }

          else
          {
            v101 = *v17;
            *(this + 1) = v17 + 1;
          }

          v67 = *(this + 14);
          v68 = *(this + 15);
          *(this + 14) = v67 + 1;
          if (v67 >= v68)
          {
            return 0;
          }

          v69 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
          if (!sub_100077ED8(v16, this, v70, v71) || *(this + 36) != 1)
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

          v74 = *(this + 1);
          if (v74 < *(this + 2) && *v74 == 58)
          {
            *(this + 1) = v74 + 1;
            *(a1 + 92) |= 0x40u;
            v22 = *(a1 + 64);
            if (!v22)
            {
LABEL_125:
              operator new();
            }

LABEL_46:
            v101 = 0;
            v23 = *(this + 1);
            if (v23 >= *(this + 2) || *v23 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
              {
                return 0;
              }
            }

            else
            {
              v101 = *v23;
              *(this + 1) = v23 + 1;
            }

            v75 = *(this + 14);
            v76 = *(this + 15);
            *(this + 14) = v75 + 1;
            if (v75 >= v76)
            {
              return 0;
            }

            v77 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
            if (!sub_100078934(v22, this, v78, v79) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v77);
            v80 = *(this + 14);
            v32 = __OFSUB__(v80, 1);
            v81 = v80 - 1;
            if (v81 < 0 == v32)
            {
              *(this + 14) = v81;
            }

            v82 = *(this + 1);
            if (v82 < *(this + 2) && *v82 == 66)
            {
              *(this + 1) = v82 + 1;
              goto LABEL_137;
            }
          }
        }
      }

      if (v8 == 7)
      {
        if (v9 != 2)
        {
          goto LABEL_53;
        }

        *(a1 + 92) |= 0x40u;
        v22 = *(a1 + 64);
        if (!v22)
        {
          goto LABEL_125;
        }

        goto LABEL_46;
      }

      if (v8 != 8)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_53;
      }

LABEL_137:
      *(a1 + 92) |= 0x80u;
      v83 = *(a1 + 72);
      if (!v83)
      {
        operator new();
      }

      v101 = 0;
      v84 = *(this + 1);
      if (v84 >= *(this + 2) || *v84 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
        {
          return 0;
        }
      }

      else
      {
        v101 = *v84;
        *(this + 1) = v84 + 1;
      }

      v85 = *(this + 14);
      v86 = *(this + 15);
      *(this + 14) = v85 + 1;
      if (v85 >= v86)
      {
        return 0;
      }

      v87 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
      if (!sub_1000792E0(v83, this, v88, v89) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v87);
      v90 = *(this + 14);
      v32 = __OFSUB__(v90, 1);
      v91 = v90 - 1;
      if (v91 < 0 == v32)
      {
        *(this + 14) = v91;
      }

      v92 = *(this + 1);
      if (v92 < *(this + 2) && *v92 == 74)
      {
        *(this + 1) = v92 + 1;
        *(a1 + 92) |= 0x100u;
        v10 = *(a1 + 80);
        if (!v10)
        {
LABEL_151:
          operator new();
        }

LABEL_13:
        v101 = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v101))
          {
            return 0;
          }
        }

        else
        {
          v101 = *v11;
          *(this + 1) = v11 + 1;
        }

        v93 = *(this + 14);
        v94 = *(this + 15);
        *(this + 14) = v93 + 1;
        if (v93 >= v94)
        {
          return 0;
        }

        v95 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v101);
        if (!sub_100079C8C(v10, this, v96, v97) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v95);
        v98 = *(this + 14);
        v32 = __OFSUB__(v98, 1);
        v99 = v98 - 1;
        if (v99 < 0 == v32)
        {
          *(this + 14) = v99;
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

    if (v8 == 9 && v9 == 2)
    {
      *(a1 + 92) |= 0x100u;
      v10 = *(a1 + 80);
      if (!v10)
      {
        goto LABEL_151;
      }

      goto LABEL_13;
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

uint64_t sub_10006F5A0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DBD0 + 24), a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    v13 = *(v5 + 40);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DBD0 + 40), a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_32:
    v15 = *(v5 + 56);
    if (v15)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v15, a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DBD0 + 56), a2, a4);
      v6 = *(v5 + 92);
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_40:
    v17 = *(v5 + 72);
    if (v17)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v17, a2, a4);
      if ((*(v5 + 92) & 0x100) != 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(qword_10045DBD0 + 72), a2, a4);
      if ((*(v5 + 92) & 0x100) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_10:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_48;
  }

  v10 = *(result + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DBD0 + 16), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v12 = *(v5 + 32);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 8) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DBD0 + 32), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 8) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_28:
  v14 = *(v5 + 48);
  if (v14)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v14, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045DBD0 + 48), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v16 = *(v5 + 64);
  if (v16)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v16, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DBD0 + 64), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_40;
    }
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_10;
  }

LABEL_44:
  v18 = *(v5 + 80);
  if (v18)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v18, a2, a4);
    v19 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v19;
    if (!v19)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(qword_10045DBD0 + 80), a2, a4);
    v20 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v20;
    if (!v20)
    {
      return result;
    }
  }

LABEL_48:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006F868(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v4 = *(this + 23);
  if ((v4 & 1) == 0)
  {
    result = a2;
    if ((v4 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = *(this + 3);
    if (v12)
    {
      *result = 18;
      v13 = result + 1;
      v14 = v12[7];
      if (v14 <= 0x7F)
      {
LABEL_12:
        *(result + 1) = v14;
        v15 = (result + 2);
LABEL_15:
        result = sub_1000733FC(v12, v15, a3);
        v4 = *(this + 23);
        goto LABEL_16;
      }
    }

    else
    {
      v12 = *(qword_10045DBD0 + 24);
      *result = 18;
      v13 = result + 1;
      v14 = v12[7];
      if (v14 <= 0x7F)
      {
        goto LABEL_12;
      }
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v13, a3);
    goto LABEL_15;
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = a2;
    *a2 = 10;
    v8 = a2 + 1;
    v9 = v6[14];
    if (v9 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    result = sub_1000726CC(v6, v10, v11);
    v4 = *(this + 23);
    if ((v4 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v6 = *(qword_10045DBD0 + 16);
  v7 = a2;
  *a2 = 10;
  v8 = a2 + 1;
  v9 = v6[14];
  if (v9 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(v7 + 1) = v9;
  result = sub_1000726CC(v6, (v7 + 2), a3);
  v4 = *(this + 23);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v4 & 4) == 0)
  {
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v24 = *(this + 5);
    if (v24)
    {
      *result = 34;
      v25 = result + 1;
      v26 = v24[36];
      if (v26 <= 0x7F)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *(qword_10045DBD0 + 40);
      *result = 34;
      v25 = result + 1;
      v26 = v24[36];
      if (v26 <= 0x7F)
      {
LABEL_33:
        *(result + 1) = v26;
        result = sub_100075D18(v24, (result + 2), a3);
        v4 = *(this + 23);
        if ((v4 & 0x10) != 0)
        {
          goto LABEL_37;
        }

LABEL_19:
        if ((v4 & 0x20) == 0)
        {
          goto LABEL_20;
        }

LABEL_43:
        v34 = *(this + 7);
        if (v34)
        {
          *result = 50;
          v35 = result + 1;
          v36 = v34[7];
          if (v36 <= 0x7F)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v34 = *(qword_10045DBD0 + 56);
          *result = 50;
          v35 = result + 1;
          v36 = v34[7];
          if (v36 <= 0x7F)
          {
LABEL_45:
            *(result + 1) = v36;
            result = sub_100078270(v34, (result + 2), a3);
            v4 = *(this + 23);
            if ((v4 & 0x40) != 0)
            {
              goto LABEL_49;
            }

LABEL_21:
            if ((v4 & 0x80) == 0)
            {
              goto LABEL_22;
            }

LABEL_55:
            v44 = *(this + 9);
            if (v44)
            {
              *result = 66;
              v45 = result + 1;
              v46 = *(v44 + 32);
              if (v46 <= 0x7F)
              {
                goto LABEL_57;
              }
            }

            else
            {
              v44 = *(qword_10045DBD0 + 72);
              *result = 66;
              v45 = result + 1;
              v46 = *(v44 + 32);
              if (v46 <= 0x7F)
              {
LABEL_57:
                *(result + 1) = v46;
                result = sub_100079620(v44, result + 2, a3);
                if ((*(this + 23) & 0x100) != 0)
                {
                  goto LABEL_61;
                }

LABEL_23:
                v18 = *(this + 1);
                v17 = (this + 8);
                v16 = v18;
                if (!v18)
                {
                  return result;
                }

                goto LABEL_67;
              }
            }

            v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v46, v45, a3);
            result = sub_100079620(v44, v47, v48);
            if ((*(this + 23) & 0x100) != 0)
            {
              goto LABEL_61;
            }

            goto LABEL_23;
          }
        }

        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
        result = sub_100078270(v34, v37, v38);
        v4 = *(this + 23);
        if ((v4 & 0x40) != 0)
        {
          goto LABEL_49;
        }

        goto LABEL_21;
      }
    }

    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v25, a3);
    result = sub_100075D18(v24, v27, v28);
    v4 = *(this + 23);
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  v19 = *(this + 4);
  if (v19)
  {
    *result = 26;
    v20 = result + 1;
    v21 = v19[10];
    if (v21 <= 0x7F)
    {
      goto LABEL_27;
    }

LABEL_30:
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v20, a3);
    result = sub_100073FA0(v19, v22, v23);
    v4 = *(this + 23);
    if ((v4 & 8) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  v19 = *(qword_10045DBD0 + 32);
  *result = 26;
  v20 = result + 1;
  v21 = v19[10];
  if (v21 > 0x7F)
  {
    goto LABEL_30;
  }

LABEL_27:
  *(result + 1) = v21;
  result = sub_100073FA0(v19, (result + 2), a3);
  v4 = *(this + 23);
  if ((v4 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_37:
  v29 = *(this + 6);
  if (v29)
  {
    *result = 42;
    v30 = result + 1;
    v31 = *(v29 + 36);
    if (v31 <= 0x7F)
    {
      goto LABEL_39;
    }

LABEL_42:
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v30, a3);
    result = sub_100077768(v29, v32, v33);
    v4 = *(this + 23);
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_20;
  }

  v29 = *(qword_10045DBD0 + 48);
  *result = 42;
  v30 = result + 1;
  v31 = *(v29 + 36);
  if (v31 > 0x7F)
  {
    goto LABEL_42;
  }

LABEL_39:
  *(result + 1) = v31;
  result = sub_100077768(v29, (result + 2), a3);
  v4 = *(this + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_20:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_49:
  v39 = *(this + 8);
  if (v39)
  {
    *result = 58;
    v40 = result + 1;
    v41 = *(v39 + 32);
    if (v41 <= 0x7F)
    {
      goto LABEL_51;
    }

LABEL_54:
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v40, a3);
    result = sub_100078C74(v39, v42, v43);
    v4 = *(this + 23);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_22;
  }

  v39 = *(qword_10045DBD0 + 64);
  *result = 58;
  v40 = result + 1;
  v41 = *(v39 + 32);
  if (v41 > 0x7F)
  {
    goto LABEL_54;
  }

LABEL_51:
  *(result + 1) = v41;
  result = sub_100078C74(v39, result + 2, a3);
  v4 = *(this + 23);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_55;
  }

LABEL_22:
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_23;
  }

LABEL_61:
  v49 = *(this + 10);
  if (v49)
  {
    *result = 74;
    v50 = result + 1;
    v51 = *(v49 + 32);
    if (v51 <= 0x7F)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v49 = *(qword_10045DBD0 + 80);
    *result = 74;
    v50 = result + 1;
    v51 = *(v49 + 32);
    if (v51 <= 0x7F)
    {
LABEL_63:
      *(result + 1) = v51;
      result = sub_100079FCC(v49, result + 2, a3);
      v52 = *(this + 1);
      v17 = (this + 8);
      v16 = v52;
      if (!v52)
      {
        return result;
      }

      goto LABEL_67;
    }
  }

  v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v50, a3);
  result = sub_100079FCC(v49, v53, v54);
  v55 = *(this + 1);
  v17 = (this + 8);
  v16 = v55;
  if (!v55)
  {
    return result;
  }

LABEL_67:
  if (*v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, result, a3);
  }

  return result;
}

uint64_t sub_10006FD38(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 92);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = sub_100073540(v7, a2);
      if (v8 < 0x80)
      {
LABEL_15:
        v9 = 1;
LABEL_18:
        v4 = (v4 + v8 + v9 + 1);
        v3 = *(a1 + 92);
        goto LABEL_19;
      }
    }

    else
    {
      v8 = sub_100073540(*(qword_10045DBD0 + 24), a2);
      if (v8 < 0x80)
      {
        goto LABEL_15;
      }
    }

    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    goto LABEL_18;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_1000729A4(v5, a2);
    if (v6 < 0x80)
    {
      goto LABEL_9;
    }

LABEL_12:
    v4 = v6 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 92);
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v6 = sub_1000729A4(*(qword_10045DBD0 + 16), a2);
  if (v6 >= 0x80)
  {
    goto LABEL_12;
  }

LABEL_9:
  v4 = (v6 + 2);
  v3 = *(a1 + 92);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = sub_10007419C(v13, a2);
      if (v14 < 0x80)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v14 = sub_10007419C(*(qword_10045DBD0 + 32), a2);
      if (v14 < 0x80)
      {
LABEL_30:
        v4 = (v4 + v14 + 2);
        v3 = *(a1 + 92);
        if ((v3 & 8) != 0)
        {
          goto LABEL_34;
        }

LABEL_21:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_22;
        }

LABEL_40:
        v17 = *(a1 + 48);
        if (v17)
        {
          v18 = sub_100077944(v17, a2);
          if (v18 < 0x80)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v18 = sub_100077944(*(qword_10045DBD0 + 48), a2);
          if (v18 < 0x80)
          {
LABEL_42:
            v4 = (v4 + v18 + 2);
            v3 = *(a1 + 92);
            if ((v3 & 0x20) != 0)
            {
              goto LABEL_46;
            }

LABEL_23:
            if ((v3 & 0x40) == 0)
            {
              goto LABEL_24;
            }

LABEL_52:
            v21 = *(a1 + 64);
            if (v21)
            {
              v22 = sub_100078D88(v21, a2);
              if (v22 < 0x80)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v22 = sub_100078D88(*(qword_10045DBD0 + 64), a2);
              if (v22 < 0x80)
              {
LABEL_54:
                v4 = (v4 + v22 + 2);
                v3 = *(a1 + 92);
                if ((v3 & 0x80) != 0)
                {
                  goto LABEL_58;
                }

LABEL_25:
                if ((v3 & 0x100) == 0)
                {
                  goto LABEL_26;
                }

LABEL_64:
                v25 = *(a1 + 80);
                if (v25)
                {
                  v26 = sub_10007A0E0(v25, a2);
                  if (v26 < 0x80)
                  {
LABEL_66:
                    v27 = 1;
                    goto LABEL_69;
                  }
                }

                else
                {
                  v26 = sub_10007A0E0(*(qword_10045DBD0 + 80), a2);
                  if (v26 < 0x80)
                  {
                    goto LABEL_66;
                  }
                }

                v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
LABEL_69:
                v4 = (v4 + v26 + v27 + 1);
                v10 = (a1 + 8);
                v11 = *(a1 + 8);
                if (!v11)
                {
                  goto LABEL_27;
                }

                goto LABEL_70;
              }
            }

            v4 = v4 + v22 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
            v3 = *(a1 + 92);
            if ((v3 & 0x80) != 0)
            {
              goto LABEL_58;
            }

            goto LABEL_25;
          }
        }

        v4 = v4 + v18 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
        v3 = *(a1 + 92);
        if ((v3 & 0x20) != 0)
        {
          goto LABEL_46;
        }

        goto LABEL_23;
      }
    }

    v4 = v4 + v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 92);
    if ((v3 & 8) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_34:
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = sub_10007640C(v15, a2);
    if (v16 < 0x80)
    {
      goto LABEL_36;
    }

LABEL_39:
    v4 = v4 + v16 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 92);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  v16 = sub_10007640C(*(qword_10045DBD0 + 40), a2);
  if (v16 >= 0x80)
  {
    goto LABEL_39;
  }

LABEL_36:
  v4 = (v4 + v16 + 2);
  v3 = *(a1 + 92);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  v19 = *(a1 + 56);
  if (v19)
  {
    v20 = sub_1000783B4(v19, a2);
    if (v20 < 0x80)
    {
      goto LABEL_48;
    }

LABEL_51:
    v4 = v4 + v20 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
    v3 = *(a1 + 92);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_24;
  }

  v20 = sub_1000783B4(*(qword_10045DBD0 + 56), a2);
  if (v20 >= 0x80)
  {
    goto LABEL_51;
  }

LABEL_48:
  v4 = (v4 + v20 + 2);
  v3 = *(a1 + 92);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_25;
  }

LABEL_58:
  v23 = *(a1 + 72);
  if (v23)
  {
    v24 = sub_100079734(v23, a2);
    if (v24 < 0x80)
    {
      goto LABEL_60;
    }

LABEL_63:
    v4 = v4 + v24 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
    if ((*(a1 + 92) & 0x100) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_26;
  }

  v24 = sub_100079734(*(qword_10045DBD0 + 72), a2);
  if (v24 >= 0x80)
  {
    goto LABEL_63;
  }

LABEL_60:
  v4 = (v4 + v24 + 2);
  if ((*(a1 + 92) & 0x100) != 0)
  {
    goto LABEL_64;
  }

LABEL_26:
  v10 = (a1 + 8);
  v11 = *(a1 + 8);
  if (!v11)
  {
LABEL_27:
    *(a1 + 88) = v4;
    return v4;
  }

LABEL_70:
  if (*v11 == v11[1])
  {
    goto LABEL_27;
  }

  v28 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v10, a2) + v4;
  *(a1 + 88) = v28;
  return v28;
}

uint64_t sub_100070180(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006D498(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100070260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100070274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070288(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
    LOBYTE(v4) = *(a2 + 60);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 60);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
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
      v6 = *(qword_10045DBE0 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 60);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 60) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DBE0 + 24);
    }

    sub_100071428(v7, v8);
    v4 = *(a2 + 60);
  }

  if ((v4 & 4) != 0)
  {
    v11 = *(a2 + 32);
    *(a1 + 60) |= 4u;
    *(a1 + 32) = v11;
    v4 = *(a2 + 60);
    if ((v4 & 8) == 0)
    {
LABEL_17:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      v13 = *(a2 + 40);
      *(a1 + 60) |= 0x10u;
      *(a1 + 40) = v13;
      if ((*(a2 + 60) & 0x20) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_17;
  }

  v12 = *(a2 + 36);
  *(a1 + 60) |= 8u;
  *(a1 + 36) = v12;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((v4 & 0x20) != 0)
  {
LABEL_19:
    v9 = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000704DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000704F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070504(uint64_t a1, uint64_t a2)
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
    *(a1 + 32) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DBE8 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 32);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100070660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100070674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070688(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
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
      v6 = *(qword_10045DBF0 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 28);
    *(a1 + 44) |= 4u;
    *(a1 + 28) = v10;
    if ((*(a2 + 44) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 44) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 32);
    *(a1 + 44) |= 8u;
    *(a1 + 32) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100070828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10007083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070850(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  sub_100076A64((a1 + 24), a2 + 24);
  sub_100076A64((a1 + 48), a2 + 48);
  sub_100076A64((a1 + 72), a2 + 72);
  sub_100076A64((a1 + 96), a2 + 96);
  sub_100076A64((a1 + 120), a2 + 120);
  if (*(a2 + 148))
  {
    *(a1 + 148) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_10045DBF8 + 16);
    }

    sub_100071428(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000709BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000709D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000709E4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
    v4 = *(a2 + 40);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    if (!v4)
    {
      goto LABEL_18;
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
      v6 = *(qword_10045DC08 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) != 0)
  {
    v11 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    *(a1 + 24) = v11;
    v4 = *(a2 + 40);
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

  v12 = *(a2 + 25);
  *(a1 + 40) |= 4u;
  *(a1 + 25) = v12;
  v4 = *(a2 + 40);
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
  v13 = *(a2 + 26);
  *(a1 + 40) |= 8u;
  *(a1 + 26) = v13;
  v4 = *(a2 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a2 + 27);
  *(a1 + 40) |= 0x10u;
  *(a1 + 27) = v14;
  v4 = *(a2 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = *(a2 + 28);
  *(a1 + 40) |= 0x20u;
  *(a1 + 28) = v15;
  v4 = *(a2 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_16:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_29:
  v16 = *(a2 + 29);
  *(a1 + 40) |= 0x40u;
  *(a1 + 29) = v16;
  v4 = *(a2 + 40);
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v7 = *(a2 + 30);
    *(a1 + 40) |= 0x80u;
    *(a1 + 30) = v7;
    v4 = *(a2 + 40);
  }

LABEL_18:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v8 = *(a2 + 31);
      *(a1 + 40) |= 0x100u;
      *(a1 + 31) = v8;
      v4 = *(a2 + 40);
    }

    if ((v4 & 0x200) != 0)
    {
      v9 = *(a2 + 32);
      *(a1 + 40) |= 0x200u;
      *(a1 + 32) = v9;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100070C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100070C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070C74(uint64_t a1, uint64_t a2)
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
    *(a1 + 32) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DC10 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 32);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 32) |= 2u;
    *(a1 + 24) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100070DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100070DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070DF8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
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
      v6 = *(qword_10045DC18 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100070F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100070F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070F7C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
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
      v6 = *(qword_10045DC20 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000710D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000710EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071100(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
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
      v6 = *(qword_10045DC28 + 16);
    }

    sub_100071428(v5, v6);
    v4 = *(a2 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 36) |= 2u;
    *(a1 + 24) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10007125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100071270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071284(uint64_t result, uint64_t a2)
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

uint64_t sub_100071310(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_10006D498(v4, a2);
  }

  return result;
}

uint64_t sub_100071384()
{
  v0 = qword_10045C928;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006BE6C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C838;
}

void sub_100071414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071428(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    a2 = v3;
    a1 = v2;
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

void sub_100071510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100071524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100071538(uint64_t a1)
{
  *a1 = off_100435BD8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10007158C(uint64_t a1)
{
  *a1 = off_100435BD8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100071688(uint64_t a1)
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

uint64_t sub_1000716AC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_100071880(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  if ((*(v4 + 44) & 4) == 0)
  {
LABEL_4:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_9:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100071938(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v7 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(a1 + 32);
      *a2 = 25;
      *(a2 + 1) = v9;
      a2 += 9;
      v10 = *(a1 + 8);
      v4 = (a1 + 8);
      v5 = v10;
      if (!v10)
      {
        return a2;
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
  if ((*(a1 + 44) & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_9:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100071A68(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100071ADC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100071428(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100071BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100071BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071BE4(uint64_t result, uint64_t a2)
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

uint64_t sub_100071C78()
{
  v0 = qword_10045C928;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10006BE6C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C848;
}

void sub_100071D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071D1C(uint64_t a1, uint64_t a2)
{
  *a1 = off_100435C88;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  sub_100070288(a1, a2);
  return a1;
}

void sub_100071D8C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_100071DBC(void *a1)
{
  *a1 = off_100435C88;
  if (qword_10045DBE0 != a1)
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
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100071E7C(void *a1)
{
  *a1 = off_100435C88;
  if (qword_10045DBE0 != a1)
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
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100071FE8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v14 = *(this + 2);
              v43[0] = 0;
              if (v15 >= v14)
              {
                goto LABEL_69;
              }

              goto LABEL_66;
            }

            goto LABEL_33;
          }

          if (v8 != 5)
          {
            if (v8 == 6 && v9 == 1)
            {
              *v43 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_79;
            }

            goto LABEL_33;
          }

          if (v9 != 1)
          {
            goto LABEL_33;
          }

LABEL_75:
          *v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v43;
          *(a1 + 60) |= 0x10u;
          v42 = *(this + 1);
          if (v42 < *(this + 2) && *v42 == 49)
          {
            *(this + 1) = v42 + 1;
            *v43 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v43) & 1) == 0)
            {
              return 0;
            }

LABEL_79:
            *(a1 + 48) = *v43;
            *(a1 + 60) |= 0x20u;
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
          goto LABEL_33;
        }

        *(a1 + 60) |= 1u;
        v12 = *(a1 + 16);
        if (!v12)
        {
          operator new();
        }

        v43[0] = 0;
        v13 = *(this + 1);
        if (v13 >= *(this + 2) || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43))
          {
            return 0;
          }
        }

        else
        {
          v43[0] = *v13;
          *(this + 1) = v13 + 1;
        }

        v18 = *(this + 14);
        v19 = *(this + 15);
        *(this + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43[0]);
        if (!sub_1000716AC(v12, this, v21, v22) || *(this + 36) != 1)
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
        if (v26 < *(this + 2) && *v26 == 18)
        {
          *(this + 1) = v26 + 1;
          *(a1 + 60) |= 2u;
          v16 = *(a1 + 24);
          if (!v16)
          {
LABEL_45:
            operator new();
          }

          goto LABEL_30;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 == 3 && (TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        v43[0] = 0;
        if (v11 >= v10)
        {
          goto LABEL_60;
        }

        goto LABEL_57;
      }

LABEL_33:
      if (v9 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_33;
    }

    *(a1 + 60) |= 2u;
    v16 = *(a1 + 24);
    if (!v16)
    {
      goto LABEL_45;
    }

LABEL_30:
    v43[0] = 0;
    v17 = *(this + 1);
    if (v17 >= *(this + 2) || *v17 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43))
      {
        return 0;
      }
    }

    else
    {
      v43[0] = *v17;
      *(this + 1) = v17 + 1;
    }

    v27 = *(this + 14);
    v28 = *(this + 15);
    *(this + 14) = v27 + 1;
    if (v27 >= v28)
    {
      return 0;
    }

    v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43[0]);
    if (!sub_1000716AC(v16, this, v30, v31) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
    v32 = *(this + 14);
    v24 = __OFSUB__(v32, 1);
    v33 = v32 - 1;
    if (v33 < 0 == v24)
    {
      *(this + 14) = v33;
    }

    v35 = *(this + 1);
    v34 = *(this + 2);
    if (v35 < v34 && *v35 == 24)
    {
      v11 = v35 + 1;
      *(this + 1) = v11;
      v43[0] = 0;
      if (v11 >= v34)
      {
        goto LABEL_60;
      }

LABEL_57:
      v36 = *v11;
      if ((v36 & 0x80000000) == 0)
      {
        *(this + 1) = v11 + 1;
        if (v36 <= 2)
        {
          goto LABEL_59;
        }

        goto LABEL_62;
      }

LABEL_60:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
      if (!result)
      {
        return result;
      }

      v36 = v43[0];
      if (v43[0] <= 2)
      {
LABEL_59:
        *(a1 + 60) |= 4u;
        *(a1 + 32) = v36;
        goto LABEL_63;
      }

LABEL_62:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v36);
LABEL_63:
      v39 = *(this + 1);
      v38 = *(this + 2);
      if (v39 < v38 && *v39 == 32)
      {
        v15 = v39 + 1;
        *(this + 1) = v15;
        v43[0] = 0;
        if (v15 >= v38)
        {
          goto LABEL_69;
        }

LABEL_66:
        v40 = *v15;
        if ((v40 & 0x80000000) == 0)
        {
          *(this + 1) = v15 + 1;
          if (v40 <= 3)
          {
            goto LABEL_68;
          }

          goto LABEL_71;
        }

LABEL_69:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v43);
        if (!result)
        {
          return result;
        }

        v40 = v43[0];
        if (v43[0] <= 3)
        {
LABEL_68:
          *(a1 + 60) |= 8u;
          *(a1 + 36) = v40;
          goto LABEL_72;
        }

LABEL_71:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v40);
LABEL_72:
        v41 = *(this + 1);
        if (v41 < *(this + 2) && *v41 == 41)
        {
          *(this + 1) = v41 + 1;
          goto LABEL_75;
        }
      }
    }
  }
}

uint64_t sub_100072570(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 60);
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DBE0 + 24), a2, a4);
      v6 = *(v5 + 60);
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v10 = *(result + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DBE0 + 16), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  if ((*(v5 + 60) & 0x20) == 0)
  {
LABEL_7:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v12 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_21:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}