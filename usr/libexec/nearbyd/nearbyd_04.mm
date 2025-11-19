void sub_100063C50(void *a1)
{
  sub_100063BD8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100063CF4(uint64_t a1)
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

uint64_t sub_100063D0C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

void sub_100063F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100063F88(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }

    v5 = v11;
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_11:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
    return 1;
  }

  else
  {
    while (1)
    {
      v12 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12);
      if (!result)
      {
        break;
      }

      v8 = v12;
      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        sub_1000778F4(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v10 + 8 * v9) = v8;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_100064080(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_10006411C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1000641AC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1000641F8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100063B00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000642CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000642E4(uint64_t result, uint64_t a2)
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

uint64_t sub_100064378()
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

  return qword_1009ED2B8;
}

void sub_10006440C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100064420(uint64_t a1)
{
  *a1 = off_10098C2D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10006448C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_100064B64((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100064514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006452C(uint64_t *a1)
{
  *a1 = off_10098C2D0;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100064590(uint64_t *a1)
{
  sub_10006452C(a1);

  operator delete();
}

uint64_t sub_100064634(uint64_t a1)
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

uint64_t sub_100064688(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          sub_1000779A4();
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
        if (!sub_1000633B4(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_100064870(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006490C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

      a2 = sub_1000637BC(v6, v8, a3);
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

uint64_t sub_1000649D8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_10006382C(*(*(a1 + 16) + 8 * v4), a2);
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

uint64_t sub_100064A78(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006448C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100064B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100064B64(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000779A4();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100063178(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_100064C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100064CA4(uint64_t result, uint64_t a2)
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

uint64_t sub_100064D38()
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

  return qword_1009ED2C8;
}

void sub_100064DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100064DE0(uint64_t a1)
{
  *a1 = off_10098C380;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_100064E4C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  sub_100065554((a1 + 16), a2 + 16);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100064ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100064EEC(uint64_t *a1)
{
  *a1 = off_10098C380;
  sub_100077C08(a1 + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100064F50(uint64_t *a1)
{
  sub_100064EEC(a1);

  operator delete();
}

uint64_t sub_100064F90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_1009F9848;
  if (!qword_1009F9848)
  {
    sub_1000613D4(0, a2, a3, a4);
    return qword_1009F9848;
  }

  return result;
}

uint64_t sub_100065024(uint64_t a1)
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

uint64_t sub_100065078(int *a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          sub_100077A08();
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
        if (!sub_100063D0C(v11, this, v16, v17) || *(this + 36) != 1)
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

uint64_t sub_100065260(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000652FC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
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

      a2 = sub_10006411C(v6, v8, a3);
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

uint64_t sub_1000653C8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1000641AC(*(*(a1 + 16) + 8 * v4), a2);
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

uint64_t sub_100065468(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100064E4C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065554(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100077A08();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_100063B00(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10006567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065694(uint64_t result, uint64_t a2)
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

uint64_t sub_100065728()
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

  return qword_1009ED2D8;
}

void sub_1000657BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000657D0(void *a1)
{
  *a1 = off_10098C430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_100065830(uint64_t a1, uint64_t a2)
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

void sub_1000658E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100065900(uint64_t a1)
{
  *a1 = off_10098C430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100065954(uint64_t a1)
{
  *a1 = off_10098C430;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100065A28(uint64_t a1)
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

uint64_t sub_100065A48(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_100065BA8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_100065C34(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_100065CFC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_100065D64(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100065830(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100065E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065E50(uint64_t result, uint64_t a2)
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

uint64_t sub_100065EE4()
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

  return qword_1009ED2E8;
}

void sub_100065F78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065F8C(uint64_t a1)
{
  *a1 = off_10098C4E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_100065FF4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 28);
  *(a1 + 72) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 32);
  *(a1 + 72) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v13 = *(a2 + 40);
    *(a1 + 72) |= 0x20u;
    *(a1 + 40) = v13;
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

    goto LABEL_26;
  }

LABEL_24:
  v12 = *(a2 + 36);
  *(a1 + 72) |= 0x10u;
  *(a1 + 36) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v14 = *(a2 + 44);
  *(a1 + 72) |= 0x40u;
  *(a1 + 44) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 52);
    *(a1 + 72) |= 0x100u;
    *(a1 + 52) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v17 = *(a2 + 60);
      *(a1 + 72) |= 0x400u;
      *(a1 + 60) = v17;
      if ((*(a2 + 72) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 56);
  *(a1 + 72) |= 0x200u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v4 & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 64);
    *(a1 + 72) |= 0x800u;
    *(a1 + 64) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100066200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100066218(uint64_t a1)
{
  *a1 = off_10098C4E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006626C(uint64_t a1)
{
  *a1 = off_10098C4E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100066340(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 52) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10006637C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v8 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v19 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_119;
              }
            }

            else if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v23 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_127;
              }
            }

            else if (v8 == 12 && (TagFallback & 7) == 0)
            {
              v13 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_135;
            }
          }

          else if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_95;
            }
          }

          else if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v8 == 9 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_71;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_79;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        if (v14 >= v9 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v14 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 72) |= 1u;
        if (v16 < v9 && *v16 == 16)
        {
          v20 = v16 + 1;
          *(this + 1) = v20;
          goto LABEL_55;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v20 = *(this + 1);
      v9 = *(this + 2);
LABEL_55:
      if (v20 >= v9 || (v24 = *v20, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v25 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v24;
        v25 = v20 + 1;
        *(this + 1) = v25;
      }

      *(a1 + 72) |= 2u;
      if (v25 < v9 && *v25 == 24)
      {
        v10 = v25 + 1;
        *(this + 1) = v10;
LABEL_63:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v26;
          v27 = v10 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 72) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v18 = v27 + 1;
          *(this + 1) = v18;
LABEL_71:
          if (v18 >= v9 || (v28 = *v18, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v28;
            v29 = v18 + 1;
            *(this + 1) = v29;
          }

          *(a1 + 72) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v22 = v29 + 1;
            *(this + 1) = v22;
LABEL_79:
            if (v22 >= v9 || (v30 = *v22, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
              if (!result)
              {
                return result;
              }

              v31 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 36) = v30;
              v31 = v22 + 1;
              *(this + 1) = v31;
            }

            *(a1 + 72) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v12 = v31 + 1;
              *(this + 1) = v12;
LABEL_87:
              if (v12 >= v9 || (v32 = *v12, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v33 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 40) = v32;
                v33 = v12 + 1;
                *(this + 1) = v33;
              }

              *(a1 + 72) |= 0x20u;
              if (v33 < v9 && *v33 == 56)
              {
                v17 = v33 + 1;
                *(this + 1) = v17;
LABEL_95:
                if (v17 >= v9 || (v34 = *v17, v34 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                  if (!result)
                  {
                    return result;
                  }

                  v35 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 44) = v34;
                  v35 = v17 + 1;
                  *(this + 1) = v35;
                }

                *(a1 + 72) |= 0x40u;
                if (v35 < v9 && *v35 == 64)
                {
                  v21 = v35 + 1;
                  *(this + 1) = v21;
LABEL_103:
                  if (v21 >= v9 || (v36 = *v21, v36 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                    if (!result)
                    {
                      return result;
                    }

                    v37 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 48) = v36;
                    v37 = v21 + 1;
                    *(this + 1) = v37;
                  }

                  *(a1 + 72) |= 0x80u;
                  if (v37 < v9 && *v37 == 72)
                  {
                    v11 = v37 + 1;
                    *(this + 1) = v11;
LABEL_111:
                    if (v11 >= v9 || (v38 = *v11, v38 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                      if (!result)
                      {
                        return result;
                      }

                      v39 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 52) = v38;
                      v39 = v11 + 1;
                      *(this + 1) = v39;
                    }

                    *(a1 + 72) |= 0x100u;
                    if (v39 < v9 && *v39 == 80)
                    {
                      v19 = v39 + 1;
                      *(this + 1) = v19;
LABEL_119:
                      if (v19 >= v9 || (v40 = *v19, v40 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                        if (!result)
                        {
                          return result;
                        }

                        v41 = *(this + 1);
                        v9 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 56) = v40;
                        v41 = v19 + 1;
                        *(this + 1) = v41;
                      }

                      *(a1 + 72) |= 0x200u;
                      if (v41 < v9 && *v41 == 88)
                      {
                        v23 = v41 + 1;
                        *(this + 1) = v23;
LABEL_127:
                        if (v23 >= v9 || (v42 = *v23, v42 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                          if (!result)
                          {
                            return result;
                          }

                          v43 = *(this + 1);
                          v9 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 60) = v42;
                          v43 = v23 + 1;
                          *(this + 1) = v43;
                        }

                        *(a1 + 72) |= 0x400u;
                        if (v43 < v9 && *v43 == 96)
                        {
                          v13 = v43 + 1;
                          *(this + 1) = v13;
LABEL_135:
                          if (v13 >= v9 || (v44 = *v13, v44 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                            if (!result)
                            {
                              return result;
                            }

                            v45 = *(this + 1);
                            v9 = *(this + 2);
                          }

                          else
                          {
                            *(a1 + 64) = v44;
                            v45 = v13 + 1;
                            *(this + 1) = v45;
                          }

                          *(a1 + 72) |= 0x800u;
                          if (v45 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_63;
    }

LABEL_46:
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

uint64_t sub_100066974(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
    if ((*(v5 + 72) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v6 & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100066B20(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    v5 = *(this + 18);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
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

  if ((*(this + 72) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
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

  if ((*(this + 72) & 8) != 0)
  {
    v9 = *(this + 8);
    *v3 = 32;
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

  if ((*(this + 72) & 0x10) != 0)
  {
    v10 = *(this + 9);
    *v3 = 40;
    if (v10 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v10;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 72) & 0x20) != 0)
  {
    v11 = *(this + 10);
    *v3 = 48;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 72) & 0x40) != 0)
  {
    v12 = *(this + 11);
    *v3 = 56;
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 72) & 0x80) != 0)
  {
    v13 = *(this + 12);
    *v3 = 64;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 73))
  {
    v14 = *(this + 13);
    *v3 = 72;
    if (v14 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 2) != 0)
  {
    v15 = *(this + 14);
    *v3 = 80;
    if (v15 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 4) != 0)
  {
    v16 = *(this + 15);
    *v3 = 88;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 8) != 0)
  {
    v17 = *(this + 16);
    *v3 = 96;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v3, a3);
}

uint64_t sub_100066DDC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 72);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 24);
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
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 28);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(a1 + 36);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(a1 + 40);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(a1 + 44);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(a1 + 48);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_42:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(a1 + 52);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = *(a1 + 72);
      }

      else
      {
        v20 = 2;
      }

      v4 = (v20 + v4);
      if ((v3 & 0x200) == 0)
      {
LABEL_45:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_56;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    v21 = *(a1 + 56);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
    if ((v3 & 0x400) == 0)
    {
LABEL_46:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_64;
      }

LABEL_60:
      v25 = *(a1 + 64);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
      }

      else
      {
        v26 = 2;
      }

      v4 = (v26 + v4);
      goto LABEL_64;
    }

LABEL_56:
    v23 = *(a1 + 60);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_64:
  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 68) = v4;
  return v4;
}

uint64_t sub_10006703C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100065FF4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100067110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100067128(uint64_t result, uint64_t a2)
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

uint64_t sub_1000671BC()
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

  return qword_1009ED2F8;
}

void sub_100067250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100067264(uint64_t a1)
{
  *a1 = off_10098C590;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000672CC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 28);
  *(a1 + 72) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 32);
  *(a1 + 72) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v13 = *(a2 + 40);
    *(a1 + 72) |= 0x20u;
    *(a1 + 40) = v13;
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

    goto LABEL_26;
  }

LABEL_24:
  v12 = *(a2 + 36);
  *(a1 + 72) |= 0x10u;
  *(a1 + 36) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v14 = *(a2 + 44);
  *(a1 + 72) |= 0x40u;
  *(a1 + 44) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 52);
    *(a1 + 72) |= 0x100u;
    *(a1 + 52) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v17 = *(a2 + 60);
      *(a1 + 72) |= 0x400u;
      *(a1 + 60) = v17;
      if ((*(a2 + 72) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 56);
  *(a1 + 72) |= 0x200u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v4 & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 64);
    *(a1 + 72) |= 0x800u;
    *(a1 + 64) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000674D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000674F0(uint64_t a1)
{
  *a1 = off_10098C590;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100067544(uint64_t a1)
{
  *a1 = off_10098C590;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100067618(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 52) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100067654(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v8 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v19 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_119;
              }
            }

            else if (v8 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v23 = *(this + 1);
                v9 = *(this + 2);
                goto LABEL_127;
              }
            }

            else if (v8 == 12 && (TagFallback & 7) == 0)
            {
              v13 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_135;
            }
          }

          else if (v8 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_95;
            }
          }

          else if (v8 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_103;
            }
          }

          else if (v8 == 9 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_71;
            }
          }

          else if (v8 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_79;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        if (v14 >= v9 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v14 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 72) |= 1u;
        if (v16 < v9 && *v16 == 16)
        {
          v20 = v16 + 1;
          *(this + 1) = v20;
          goto LABEL_55;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v20 = *(this + 1);
      v9 = *(this + 2);
LABEL_55:
      if (v20 >= v9 || (v24 = *v20, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v25 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v24;
        v25 = v20 + 1;
        *(this + 1) = v25;
      }

      *(a1 + 72) |= 2u;
      if (v25 < v9 && *v25 == 24)
      {
        v10 = v25 + 1;
        *(this + 1) = v10;
LABEL_63:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
          if (!result)
          {
            return result;
          }

          v27 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 28) = v26;
          v27 = v10 + 1;
          *(this + 1) = v27;
        }

        *(a1 + 72) |= 4u;
        if (v27 < v9 && *v27 == 32)
        {
          v18 = v27 + 1;
          *(this + 1) = v18;
LABEL_71:
          if (v18 >= v9 || (v28 = *v18, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v28;
            v29 = v18 + 1;
            *(this + 1) = v29;
          }

          *(a1 + 72) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v22 = v29 + 1;
            *(this + 1) = v22;
LABEL_79:
            if (v22 >= v9 || (v30 = *v22, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
              if (!result)
              {
                return result;
              }

              v31 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 36) = v30;
              v31 = v22 + 1;
              *(this + 1) = v31;
            }

            *(a1 + 72) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v12 = v31 + 1;
              *(this + 1) = v12;
LABEL_87:
              if (v12 >= v9 || (v32 = *v12, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v33 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 40) = v32;
                v33 = v12 + 1;
                *(this + 1) = v33;
              }

              *(a1 + 72) |= 0x20u;
              if (v33 < v9 && *v33 == 56)
              {
                v17 = v33 + 1;
                *(this + 1) = v17;
LABEL_95:
                if (v17 >= v9 || (v34 = *v17, v34 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                  if (!result)
                  {
                    return result;
                  }

                  v35 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 44) = v34;
                  v35 = v17 + 1;
                  *(this + 1) = v35;
                }

                *(a1 + 72) |= 0x40u;
                if (v35 < v9 && *v35 == 64)
                {
                  v21 = v35 + 1;
                  *(this + 1) = v21;
LABEL_103:
                  if (v21 >= v9 || (v36 = *v21, v36 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                    if (!result)
                    {
                      return result;
                    }

                    v37 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 48) = v36;
                    v37 = v21 + 1;
                    *(this + 1) = v37;
                  }

                  *(a1 + 72) |= 0x80u;
                  if (v37 < v9 && *v37 == 72)
                  {
                    v11 = v37 + 1;
                    *(this + 1) = v11;
LABEL_111:
                    if (v11 >= v9 || (v38 = *v11, v38 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                      if (!result)
                      {
                        return result;
                      }

                      v39 = *(this + 1);
                      v9 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 52) = v38;
                      v39 = v11 + 1;
                      *(this + 1) = v39;
                    }

                    *(a1 + 72) |= 0x100u;
                    if (v39 < v9 && *v39 == 80)
                    {
                      v19 = v39 + 1;
                      *(this + 1) = v19;
LABEL_119:
                      if (v19 >= v9 || (v40 = *v19, v40 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                        if (!result)
                        {
                          return result;
                        }

                        v41 = *(this + 1);
                        v9 = *(this + 2);
                      }

                      else
                      {
                        *(a1 + 56) = v40;
                        v41 = v19 + 1;
                        *(this + 1) = v41;
                      }

                      *(a1 + 72) |= 0x200u;
                      if (v41 < v9 && *v41 == 88)
                      {
                        v23 = v41 + 1;
                        *(this + 1) = v23;
LABEL_127:
                        if (v23 >= v9 || (v42 = *v23, v42 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                          if (!result)
                          {
                            return result;
                          }

                          v43 = *(this + 1);
                          v9 = *(this + 2);
                        }

                        else
                        {
                          *(a1 + 60) = v42;
                          v43 = v23 + 1;
                          *(this + 1) = v43;
                        }

                        *(a1 + 72) |= 0x400u;
                        if (v43 < v9 && *v43 == 96)
                        {
                          v13 = v43 + 1;
                          *(this + 1) = v13;
LABEL_135:
                          if (v13 >= v9 || (v44 = *v13, v44 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                            if (!result)
                            {
                              return result;
                            }

                            v45 = *(this + 1);
                            v9 = *(this + 2);
                          }

                          else
                          {
                            *(a1 + 64) = v44;
                            v45 = v13 + 1;
                            *(this + 1) = v45;
                          }

                          *(a1 + 72) |= 0x800u;
                          if (v45 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_63;
    }

LABEL_46:
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

uint64_t sub_100067C4C(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
    if ((*(v5 + 72) & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((v6 & 0x800) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100067DF8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
    v5 = *(this + 18);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 6);
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

  if ((*(this + 72) & 4) != 0)
  {
    v8 = *(this + 7);
    *v3 = 24;
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

  if ((*(this + 72) & 8) != 0)
  {
    v9 = *(this + 8);
    *v3 = 32;
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

  if ((*(this + 72) & 0x10) != 0)
  {
    v10 = *(this + 9);
    *v3 = 40;
    if (v10 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v10;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 72) & 0x20) != 0)
  {
    v11 = *(this + 10);
    *v3 = 48;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 72) & 0x40) != 0)
  {
    v12 = *(this + 11);
    *v3 = 56;
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 72) & 0x80) != 0)
  {
    v13 = *(this + 12);
    *v3 = 64;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 73))
  {
    v14 = *(this + 13);
    *v3 = 72;
    if (v14 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v14;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 2) != 0)
  {
    v15 = *(this + 14);
    *v3 = 80;
    if (v15 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 4) != 0)
  {
    v16 = *(this + 15);
    *v3 = 88;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 73) & 8) != 0)
  {
    v17 = *(this + 16);
    *v3 = 96;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v3, a3);
}

uint64_t sub_1000680B4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 72);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(a1 + 24);
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
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 28);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(a1 + 36);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(a1 + 40);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(a1 + 44);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(a1 + 48);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_42:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(a1 + 52);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = *(a1 + 72);
      }

      else
      {
        v20 = 2;
      }

      v4 = (v20 + v4);
      if ((v3 & 0x200) == 0)
      {
LABEL_45:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_56;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    v21 = *(a1 + 56);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
    if ((v3 & 0x400) == 0)
    {
LABEL_46:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_64;
      }

LABEL_60:
      v25 = *(a1 + 64);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
      }

      else
      {
        v26 = 2;
      }

      v4 = (v26 + v4);
      goto LABEL_64;
    }

LABEL_56:
    v23 = *(a1 + 60);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 72);
    }

    else
    {
      v24 = 2;
    }

    v4 = (v24 + v4);
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_64:
  v27 = *(a1 + 8);
  if (v27 && *v27 != v27[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 68) = v4;
  return v4;
}

uint64_t sub_100068314(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000672CC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000683E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100068400(uint64_t result, uint64_t a2)
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

uint64_t sub_100068494()
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

  return qword_1009ED308;
}

void sub_100068528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006853C(uint64_t a1)
{
  *a1 = off_10098C640;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_1000685BC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 96);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 88);
      if ((v5 + 1) >= 6)
      {
        sub_10049D614();
      }

      *(a1 + 96) |= 1u;
      *(a1 + 88) = v5;
      v4 = *(a2 + 96);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 96) |= 2u;
      v6 = *(a1 + 16);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 16);
      if (!v7)
      {
        v7 = *(qword_1009F9868 + 16);
      }

      sub_1000628A4(v6, v7);
      v4 = *(a2 + 96);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 96) |= 4u;
      v8 = *(a1 + 24);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 24);
      if (!v9)
      {
        v9 = *(qword_1009F9868 + 24);
      }

      sub_1000628A4(v8, v9);
      v4 = *(a2 + 96);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 96) |= 8u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 32);
      if (!v11)
      {
        v11 = *(qword_1009F9868 + 32);
      }

      sub_100065FF4(v10, v11);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x10) != 0)
    {
      v12 = *(a2 + 40);
      *(a1 + 96) |= 0x10u;
      v13 = *(a1 + 40);
      if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x20) != 0)
    {
      *(a1 + 96) |= 0x20u;
      v14 = *(a1 + 48);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 48);
      if (!v15)
      {
        v15 = *(qword_1009F9868 + 48);
      }

      sub_1000672CC(v14, v15);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x40) != 0)
    {
      v16 = *(a2 + 56);
      *(a1 + 96) |= 0x40u;
      v17 = *(a1 + 56);
      if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v17, v16);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 96) |= 0x80u;
      v18 = *(a1 + 64);
      if (!v18)
      {
        operator new();
      }

      v19 = *(a2 + 64);
      if (!v19)
      {
        v19 = *(qword_1009F9868 + 64);
      }

      sub_10006448C(v18, v19);
      v4 = *(a2 + 96);
    }
  }

  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 96) |= 0x100u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 72);
      if (!v21)
      {
        v21 = *(qword_1009F9868 + 72);
      }

      sub_10006448C(v20, v21);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 96) |= 0x200u;
      v22 = *(a1 + 80);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 80);
      if (!v23)
      {
        v23 = *(qword_1009F9868 + 80);
      }

      sub_100065830(v22, v23);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100068A10(void *a1)
{
  *a1 = off_10098C640;
  v2 = (a1 + 1);
  sub_100068A70(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_100068A70(void *result)
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

  v4 = result[7];
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  if (qword_1009F9868 != result)
  {
    v6 = result[2];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[3];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[4];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[6];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[8];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[9];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v1[10];
    if (result)
    {
      v12 = *(*result + 8);

      return v12();
    }
  }

  return result;
}

void sub_100068C6C(void *a1)
{
  sub_100068A10(a1);

  operator delete();
}

uint64_t sub_100068D10(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  if (v2)
  {
    *(this + 88) = -1;
    if ((v2 & 2) != 0)
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

        v3 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 96) & 4) != 0)
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

        v4 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    v5 = *(v1 + 96);
    if ((v5 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_100066340(this);
        v5 = *(v1 + 96);
      }
    }

    if ((v5 & 0x10) != 0)
    {
      v6 = *(v1 + 40);
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

    v7 = *(v1 + 96);
    if ((v7 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = sub_100067618(this);
        v7 = *(v1 + 96);
      }
    }

    if ((v7 & 0x40) != 0)
    {
      v8 = *(v1 + 56);
      if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 96);
    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_100064634(this);
        v2 = *(v1 + 96);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = sub_100064634(this);
        v2 = *(v1 + 96);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v9 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v9)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v11 = *(v1 + 8);
  v10 = (v1 + 8);
  *(v10 + 22) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return this;
}

uint64_t sub_100068EC0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v8 != 1)
          {
            if (v8 != 2 || v9 != 2)
            {
              goto LABEL_40;
            }

            goto LABEL_50;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v86 = 0;
          v10 = *(this + 1);
          if (v10 >= *(this + 2) || (v11 = *v10, v11 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86);
            if (!result)
            {
              return result;
            }

            v11 = v86;
          }

          else
          {
            *(this + 1) = v10 + 1;
          }

          if ((v11 + 1) > 5)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v11);
          }

          else
          {
            *(a1 + 96) |= 1u;
            *(a1 + 88) = v11;
          }

          v13 = *(this + 1);
          if (v13 < *(this + 2) && *v13 == 18)
          {
            *(this + 1) = v13 + 1;
LABEL_50:
            *(a1 + 96) |= 2u;
            v14 = *(a1 + 16);
            if (!v14)
            {
              operator new();
            }

            v86 = 0;
            v15 = *(this + 1);
            if (v15 >= *(this + 2) || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
              {
                return 0;
              }
            }

            else
            {
              v86 = *v15;
              *(this + 1) = v15 + 1;
            }

            v16 = *(this + 14);
            v17 = *(this + 15);
            *(this + 14) = v16 + 1;
            if (v16 >= v17)
            {
              return 0;
            }

            v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
            if (!sub_100062AE8(v14, this, v19, v20) || *(this + 36) != 1)
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

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 26)
            {
              *(this + 1) = v24 + 1;
LABEL_64:
              *(a1 + 96) |= 4u;
              v25 = *(a1 + 24);
              if (!v25)
              {
                operator new();
              }

              v86 = 0;
              v26 = *(this + 1);
              if (v26 >= *(this + 2) || *v26 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
                {
                  return 0;
                }
              }

              else
              {
                v86 = *v26;
                *(this + 1) = v26 + 1;
              }

              v27 = *(this + 14);
              v28 = *(this + 15);
              *(this + 14) = v27 + 1;
              if (v27 >= v28)
              {
                return 0;
              }

              v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
              if (!sub_100062AE8(v25, this, v30, v31) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
              v32 = *(this + 14);
              v22 = __OFSUB__(v32, 1);
              v33 = v32 - 1;
              if (v33 < 0 == v22)
              {
                *(this + 14) = v33;
              }

              v34 = *(this + 1);
              if (v34 < *(this + 2) && *v34 == 34)
              {
                *(this + 1) = v34 + 1;
                goto LABEL_78;
              }
            }
          }
        }

        else
        {
          if (v8 == 3)
          {
            if (v9 != 2)
            {
              goto LABEL_40;
            }

            goto LABEL_64;
          }

          if (v8 == 4)
          {
            if (v9 != 2)
            {
              goto LABEL_40;
            }

LABEL_78:
            *(a1 + 96) |= 8u;
            v35 = *(a1 + 32);
            if (!v35)
            {
              operator new();
            }

            v86 = 0;
            v36 = *(this + 1);
            if (v36 >= *(this + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
              {
                return 0;
              }
            }

            else
            {
              v86 = *v36;
              *(this + 1) = v36 + 1;
            }

            v37 = *(this + 14);
            v38 = *(this + 15);
            *(this + 14) = v37 + 1;
            if (v37 >= v38)
            {
              return 0;
            }

            v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
            if (!sub_10006637C(v35, this, v40, v41) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v39);
            v42 = *(this + 14);
            v22 = __OFSUB__(v42, 1);
            v43 = v42 - 1;
            if (v43 < 0 == v22)
            {
              *(this + 14) = v43;
            }

            v44 = *(this + 1);
            if (v44 < *(this + 2) && *v44 == 42)
            {
              *(this + 1) = v44 + 1;
LABEL_92:
              *(a1 + 96) |= 0x10u;
              if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
              if (!result)
              {
                return result;
              }

              v45 = *(this + 1);
              if (v45 < *(this + 2) && *v45 == 50)
              {
                *(this + 1) = v45 + 1;
LABEL_98:
                *(a1 + 96) |= 0x20u;
                v46 = *(a1 + 48);
                if (!v46)
                {
                  operator new();
                }

                v86 = 0;
                v47 = *(this + 1);
                if (v47 >= *(this + 2) || *v47 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
                  {
                    return 0;
                  }
                }

                else
                {
                  v86 = *v47;
                  *(this + 1) = v47 + 1;
                }

                v48 = *(this + 14);
                v49 = *(this + 15);
                *(this + 14) = v48 + 1;
                if (v48 >= v49)
                {
                  return 0;
                }

                v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
                if (!sub_100067654(v46, this, v51, v52) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
                v53 = *(this + 14);
                v22 = __OFSUB__(v53, 1);
                v54 = v53 - 1;
                if (v54 < 0 == v22)
                {
                  *(this + 14) = v54;
                }

                v55 = *(this + 1);
                if (v55 < *(this + 2) && *v55 == 58)
                {
                  *(this + 1) = v55 + 1;
LABEL_112:
                  *(a1 + 96) |= 0x40u;
                  if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
                    operator new();
                  }

                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                  if (!result)
                  {
                    return result;
                  }

                  v56 = *(this + 1);
                  if (v56 < *(this + 2) && *v56 == 66)
                  {
                    *(this + 1) = v56 + 1;
LABEL_118:
                    *(a1 + 96) |= 0x80u;
                    v57 = *(a1 + 64);
                    if (!v57)
                    {
                      operator new();
                    }

                    v86 = 0;
                    v58 = *(this + 1);
                    if (v58 >= *(this + 2) || *v58 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v86 = *v58;
                      *(this + 1) = v58 + 1;
                    }

                    v59 = *(this + 14);
                    v60 = *(this + 15);
                    *(this + 14) = v59 + 1;
                    if (v59 >= v60)
                    {
                      return 0;
                    }

                    v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
                    if (!sub_100064688(v57, this, v62, v63) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v61);
                    v64 = *(this + 14);
                    v22 = __OFSUB__(v64, 1);
                    v65 = v64 - 1;
                    if (v65 < 0 == v22)
                    {
                      *(this + 14) = v65;
                    }

                    v66 = *(this + 1);
                    if (v66 < *(this + 2) && *v66 == 74)
                    {
                      *(this + 1) = v66 + 1;
                      goto LABEL_132;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v8 == 5 && v9 == 2)
            {
              goto LABEL_92;
            }

LABEL_40:
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
          if (v9 == 2)
          {
            goto LABEL_98;
          }
        }

        else if (v8 == 7 && v9 == 2)
        {
          goto LABEL_112;
        }

        goto LABEL_40;
      }

      if (v8 == 8)
      {
        if (v9 == 2)
        {
          goto LABEL_118;
        }

        goto LABEL_40;
      }

      if (v8 != 9)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_40;
      }

LABEL_132:
      *(a1 + 96) |= 0x100u;
      v67 = *(a1 + 72);
      if (!v67)
      {
        operator new();
      }

      v86 = 0;
      v68 = *(this + 1);
      if (v68 >= *(this + 2) || *v68 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
        {
          return 0;
        }
      }

      else
      {
        v86 = *v68;
        *(this + 1) = v68 + 1;
      }

      v69 = *(this + 14);
      v70 = *(this + 15);
      *(this + 14) = v69 + 1;
      if (v69 >= v70)
      {
        return 0;
      }

      v71 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
      if (!sub_100064688(v67, this, v72, v73) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v71);
      v74 = *(this + 14);
      v22 = __OFSUB__(v74, 1);
      v75 = v74 - 1;
      if (v75 < 0 == v22)
      {
        *(this + 14) = v75;
      }

      v76 = *(this + 1);
      if (v76 < *(this + 2) && *v76 == 82)
      {
        *(this + 1) = v76 + 1;
        goto LABEL_146;
      }
    }

    if (v8 != 10 || v9 != 2)
    {
      goto LABEL_40;
    }

LABEL_146:
    *(a1 + 96) |= 0x200u;
    v77 = *(a1 + 80);
    if (!v77)
    {
      operator new();
    }

    v86 = 0;
    v78 = *(this + 1);
    if (v78 >= *(this + 2) || *v78 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
      {
        return 0;
      }
    }

    else
    {
      v86 = *v78;
      *(this + 1) = v78 + 1;
    }

    v79 = *(this + 14);
    v80 = *(this + 15);
    *(this + 14) = v79 + 1;
    if (v79 >= v80)
    {
      return 0;
    }

    v81 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
    if (!sub_100065A48(v77, this, v82, v83) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v81);
    v84 = *(this + 14);
    v22 = __OFSUB__(v84, 1);
    v85 = v84 - 1;
    if (v85 < 0 == v22)
    {
      *(this + 14) = v85;
    }
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100069878(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 88), a2, a4);
    v6 = *(v5 + 96);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_1009F9868 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9868 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_1009F9868 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v9, a2, a4);
  v6 = *(v5 + 96);
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
  v10 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v11 = *(v5 + 48);
  if (!v11)
  {
    v11 = *(qword_1009F9868 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v11, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(v5 + 56);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_27:
  v13 = *(v5 + 64);
  if (!v13)
  {
    v13 = *(qword_1009F9868 + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v13, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  v14 = *(v5 + 72);
  if (!v14)
  {
    v14 = *(qword_1009F9868 + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v14, a2, a4);
  if ((*(v5 + 96) & 0x200) != 0)
  {
LABEL_33:
    v15 = *(v5 + 80);
    if (!v15)
    {
      v15 = *(qword_1009F9868 + 80);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v15, a2, a4);
  }

LABEL_36:
  v18 = *(v5 + 8);
  v17 = (v5 + 8);
  v16 = v18;
  if (v18 && *v16 != v16[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v17, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100069A5C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 96))
  {
    v6 = *(this + 22);
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
  v9 = *(this + 24);
  if ((v9 & 2) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      v10 = *(qword_1009F9868 + 16);
    }

    *v4 = 18;
    v11 = *(v10 + 40);
    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v11;
      v12 = v4 + 2;
    }

    v4 = sub_100062D54(v10, v12, a3);
    v9 = *(this + 24);
    if ((v9 & 4) == 0)
    {
LABEL_10:
      if ((v9 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }
  }

  else if ((v9 & 4) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(qword_1009F9868 + 24);
  }

  *v4 = 26;
  v14 = *(v13 + 40);
  if (v14 > 0x7F)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v14;
    v15 = v4 + 2;
  }

  v4 = sub_100062D54(v13, v15, a3);
  v9 = *(this + 24);
  if ((v9 & 8) == 0)
  {
LABEL_11:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_30:
  v16 = *(this + 4);
  if (!v16)
  {
    v16 = *(qword_1009F9868 + 32);
  }

  *v4 = 34;
  v17 = v16[17];
  if (v17 > 0x7F)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v17;
    v18 = (v4 + 2);
  }

  v4 = sub_100066B20(v16, v18, a3);
  v9 = *(this + 24);
  if ((v9 & 0x10) == 0)
  {
LABEL_12:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_36:
  v19 = *(this + 5);
  *v4 = 42;
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
  v9 = *(this + 24);
  if ((v9 & 0x20) == 0)
  {
LABEL_13:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_48:
  v25 = *(this + 6);
  if (!v25)
  {
    v25 = *(qword_1009F9868 + 48);
  }

  *v4 = 50;
  v26 = v25[17];
  if (v26 > 0x7F)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v26;
    v27 = (v4 + 2);
  }

  v4 = sub_100067DF8(v25, v27, a3);
  v9 = *(this + 24);
  if ((v9 & 0x40) == 0)
  {
LABEL_14:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_54:
  v28 = *(this + 7);
  *v4 = 58;
  v29 = *(v28 + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = *(v28 + 8);
  }

  if (v29 > 0x7F)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v29;
    v30 = v4 + 2;
  }

  v31 = *(v28 + 23);
  if (v31 >= 0)
  {
    v32 = v28;
  }

  else
  {
    v32 = *v28;
  }

  if (v31 >= 0)
  {
    v33 = *(v28 + 23);
  }

  else
  {
    v33 = *(v28 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v32, v33, v30, a4);
  v9 = *(this + 24);
  if ((v9 & 0x80) == 0)
  {
LABEL_15:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_72;
  }

LABEL_66:
  v34 = *(this + 8);
  if (!v34)
  {
    v34 = *(qword_1009F9868 + 64);
  }

  *v4 = 66;
  v35 = v34[10];
  if (v35 > 0x7F)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v35;
    v36 = (v4 + 2);
  }

  v4 = sub_10006490C(v34, v36, a3);
  v9 = *(this + 24);
  if ((v9 & 0x100) == 0)
  {
LABEL_16:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

LABEL_72:
  v37 = *(this + 9);
  if (!v37)
  {
    v37 = *(qword_1009F9868 + 72);
  }

  *v4 = 74;
  v38 = v37[10];
  if (v38 > 0x7F)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v38;
    v39 = (v4 + 2);
  }

  v4 = sub_10006490C(v37, v39, a3);
  if ((*(this + 24) & 0x200) != 0)
  {
LABEL_78:
    v40 = *(this + 10);
    if (!v40)
    {
      v40 = *(qword_1009F9868 + 80);
    }

    *v4 = 82;
    v41 = *(v40 + 32);
    if (v41 > 0x7F)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v41;
      v42 = v4 + 2;
    }

    v4 = sub_100065C34(v40, v42, a3);
  }

LABEL_84:
  v45 = *(this + 1);
  v44 = (this + 8);
  v43 = v45;
  if (!v45 || *v43 == v43[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v44, v4, a3);
}

uint64_t sub_100069E34(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_68;
  }

  if (v3)
  {
    v5 = *(a1 + 88);
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
      v3 = *(a1 + 96);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(qword_1009F9868 + 16);
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

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(a1 + 96);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 24);
    if (!v10)
    {
      v10 = *(qword_1009F9868 + 24);
    }

    v11 = sub_100062E7C(v10, a2);
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
    v3 = *(a1 + 96);
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

  v14 = *(a1 + 32);
  if (!v14)
  {
    v14 = *(qword_1009F9868 + 32);
  }

  v15 = sub_100066DDC(v14, a2);
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
  v3 = *(a1 + 96);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_38:
  v18 = *(a1 + 40);
  v19 = *(v18 + 23);
  v20 = v19;
  v21 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v3 = *(a1 + 96);
    v20 = *(v18 + 23);
  }

  else
  {
    v23 = 1;
  }

  if (v20 < 0)
  {
    v19 = v21;
  }

  v4 = (v4 + v23 + v19 + 1);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_47:
  v24 = *(a1 + 48);
  if (!v24)
  {
    v24 = *(qword_1009F9868 + 48);
  }

  v25 = sub_1000680B4(v24, a2);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
  }

  else
  {
    v27 = 1;
  }

  v4 = (v4 + v26 + v27 + 1);
  v3 = *(a1 + 96);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }

LABEL_53:
  v28 = *(a1 + 56);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v3 = *(a1 + 96);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v4 = (v4 + v33 + v29 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_62:
    v34 = *(a1 + 64);
    if (!v34)
    {
      v34 = *(qword_1009F9868 + 64);
    }

    v35 = sub_1000649D8(v34, a2);
    v36 = v35;
    if (v35 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
    }

    else
    {
      v37 = 1;
    }

    v4 = (v4 + v36 + v37 + 1);
    v3 = *(a1 + 96);
  }

LABEL_68:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v38 = *(a1 + 72);
      if (!v38)
      {
        v38 = *(qword_1009F9868 + 72);
      }

      v39 = sub_1000649D8(v38, a2);
      v40 = v39;
      if (v39 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2);
      }

      else
      {
        v41 = 1;
      }

      v4 = (v4 + v40 + v41 + 1);
      v3 = *(a1 + 96);
    }

    if ((v3 & 0x200) != 0)
    {
      v42 = *(a1 + 80);
      if (!v42)
      {
        v42 = *(qword_1009F9868 + 80);
      }

      v43 = sub_100065CFC(v42, a2);
      v44 = v43;
      if (v43 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
      }

      else
      {
        v45 = 1;
      }

      v4 = (v4 + v44 + v45 + 1);
    }
  }

  v46 = *(a1 + 8);
  if (v46 && *v46 != v46[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 92) = v4;
  return v4;
}

uint64_t sub_10006A1A0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000685BC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006A274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006A28C(uint64_t result, uint64_t a2)
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

uint64_t sub_10006A320()
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

  return qword_1009ED318;
}

void sub_10006A3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10006A3C8(void *a1)
{
  *a1 = off_10098C6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_10006A428(uint64_t a1, uint64_t a2)
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

void sub_10006A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006A4F8(uint64_t a1)
{
  *a1 = off_10098C6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006A54C(uint64_t a1)
{
  *a1 = off_10098C6F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006A620(uint64_t a1)
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

uint64_t sub_10006A640(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_10006A7A0(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_10006A82C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_10006A8F4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_10006A95C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006A428(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006AA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006AA48(uint64_t result, uint64_t a2)
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

uint64_t sub_10006AADC()
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

  return qword_1009ED328;
}

void sub_10006AB70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006AB84(uint64_t a1)
{
  *a1 = off_10098C7A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10006ABE4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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
        v6 = *(qword_1009F9878 + 16);
      }

      sub_10006A428(v5, v6);
      v4 = *(a2 + 44);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 44) |= 2u;
      *(a1 + 24) = v7;
      v4 = *(a2 + 44);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 44) |= 4u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 32);
      if (!v9)
      {
        v9 = *(qword_1009F9878 + 32);
      }

      sub_1000628A4(v8, v9);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006AD78(void *a1)
{
  *a1 = off_10098C7A0;
  v2 = (a1 + 1);
  sub_10006ADD8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10006ADD8(void *result)
{
  if (qword_1009F9878 != result)
  {
    v1 = result;
    v2 = result[2];
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

void sub_10006AE7C(void *a1)
{
  sub_10006AD78(a1);

  operator delete();
}

uint64_t sub_10006AF20(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    if (*(this + 44))
    {
      this = *(this + 16);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v2 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v2)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 24) = 0;
    if ((*(v1 + 44) & 4) != 0)
    {
      this = *(v1 + 32);
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
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 9) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_10006AFD0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          v12 = *(a1 + 44);
          goto LABEL_35;
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

      v33[0] = 0;
      v11 = *(this + 1);
      if (v11 >= *(this + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33))
        {
          return 0;
        }
      }

      else
      {
        v33[0] = *v11;
        *(this + 1) = v11 + 1;
      }

      v13 = *(this + 14);
      v14 = *(this + 15);
      *(this + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33[0]);
      if (!sub_10006A640(v10, this, v16, v17) || *(this + 36) != 1)
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
      if (v21 < *(this + 2) && *v21 == 17)
      {
        *(this + 1) = v21 + 1;
LABEL_31:
        *v33 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v33;
        v12 = *(a1 + 44) | 2;
        *(a1 + 44) = v12;
        v22 = *(this + 1);
        if (v22 < *(this + 2) && *v22 == 26)
        {
          *(this + 1) = v22 + 1;
LABEL_35:
          *(a1 + 44) = v12 | 4;
          v23 = *(a1 + 32);
          if (!v23)
          {
            operator new();
          }

          v33[0] = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33))
            {
              return 0;
            }
          }

          else
          {
            v33[0] = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33[0]);
          if (!sub_100062AE8(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v19 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v19)
          {
            *(this + 14) = v31;
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
      goto LABEL_31;
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

uint64_t sub_10006B314(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
    if ((*(v5 + 44) & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v7 = *(this + 16);
  if (!v7)
  {
    v7 = *(qword_1009F9878 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(qword_1009F9878 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
LABEL_12:
  v11 = *(v5 + 8);
  v10 = (v5 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006B3E4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 11);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = *(this + 3);
    *v3 = 17;
    *(v3 + 1) = v10;
    v3 = (v3 + 9);
    if ((*(this + 11) & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(this + 2);
  if (!v6)
  {
    v6 = *(qword_1009F9878 + 16);
  }

  *a2 = 10;
  v7 = a2 + 1;
  v8 = *(v6 + 32);
  if (v8 > 0x7F)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
  }

  else
  {
    *(v3 + 1) = v8;
    v9 = v3 + 2;
  }

  v3 = sub_10006A82C(v6, v9, a3);
  v5 = *(this + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v11 = *(this + 4);
  if (!v11)
  {
    v11 = *(qword_1009F9878 + 32);
  }

  *v3 = 26;
  v12 = *(v11 + 40);
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v12;
    v13 = v3 + 2;
  }

  v3 = sub_100062D54(v11, v13, a3);
LABEL_18:
  v16 = *(this + 1);
  v15 = (this + 8);
  v14 = v16;
  if (!v16 || *v14 == v14[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v15, v3, a3);
}

uint64_t sub_10006B54C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v6 = *(a1 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9878 + 16);
      }

      v7 = sub_10006A8F4(v6, a2);
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
      v3 = *(a1 + 44);
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
      v10 = *(a1 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9878 + 32);
      }

      v11 = sub_100062E7C(v10, a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v5 = (v5 + v12 + v13 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_10006B648(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006ABE4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006B71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B734(uint64_t result, uint64_t a2)
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

uint64_t sub_10006B7C8()
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

  return qword_1009ED338;
}

void sub_10006B85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B870(uint64_t a1)
{
  *a1 = off_10098C850;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 72) = 0xFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_10006B8E4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  LOBYTE(v4) = *(a2 + 80);
  if (v4)
  {
    if (*(a2 + 80))
    {
      *(a1 + 80) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9880 + 16);
      }

      sub_1000628A4(v5, v6);
      v4 = *(a2 + 80);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 80) |= 2u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9880 + 24);
      }

      sub_100064E4C(v7, v8);
      v4 = *(a2 + 80);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 80) |= 4u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9880 + 32);
      }

      sub_100064E4C(v9, v10);
      v4 = *(a2 + 80);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 80) |= 8u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 40);
      if (!v12)
      {
        v12 = *(qword_1009F9880 + 40);
      }

      sub_100063B00(v11, v12);
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x10) != 0)
    {
      v13 = *(a2 + 48);
      *(a1 + 80) |= 0x10u;
      *(a1 + 48) = v13;
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x20) != 0)
    {
      v14 = *(a2 + 72);
      if ((v14 + 1) >= 4)
      {
        sub_10049D640();
      }

      *(a1 + 80) |= 0x20u;
      *(a1 + 72) = v14;
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x40) != 0)
    {
      *(a1 + 80) |= 0x40u;
      v15 = *(a1 + 56);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 56);
      if (!v16)
      {
        v16 = *(qword_1009F9880 + 56);
      }

      sub_10006ABE4(v15, v16);
      v4 = *(a2 + 80);
    }

    if ((v4 & 0x80) != 0)
    {
      *(a1 + 80) |= 0x80u;
      v17 = *(a1 + 64);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 64);
      if (!v18)
      {
        v18 = *(qword_1009F9880 + 64);
      }

      sub_10006D014(v17, v18);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006BC34(void *a1)
{
  *a1 = off_10098C850;
  v2 = (a1 + 1);
  sub_10006BC94(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10006BC94(void *result)
{
  if (qword_1009F9880 != result)
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

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[8];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_10006BDE8(void *a1)
{
  sub_10006BC34(a1);

  operator delete();
}

uint64_t sub_10006BE8C(uint64_t this)
{
  v1 = this;
  if (*(this + 80))
  {
    if (*(this + 80))
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

    v3 = *(v1 + 80);
    if ((v3 & 2) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = sub_100065024(this);
        v3 = *(v1 + 80);
      }
    }

    if ((v3 & 4) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = sub_100065024(this);
        v3 = *(v1 + 80);
      }
    }

    if ((v3 & 8) != 0)
    {
      this = *(v1 + 40);
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

    *(v1 + 48) = 0;
    *(v1 + 72) = -1;
    v5 = *(v1 + 80);
    if ((v5 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = sub_10006AF20(this);
        v5 = *(v1 + 80);
      }
    }

    if ((v5 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = sub_10006BF8C(this);
      }
    }
  }

  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 18) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_10006BF8C(uint64_t this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = *(this + 16);
    if (this)
    {
      this = sub_10006D48C(this);
    }
  }

  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  *(v2 + 5) = 0;
  if (v3)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t sub_10006BFEC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v9 == 1)
            {
              goto LABEL_90;
            }
          }

          else if (v8 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_94;
          }

          goto LABEL_36;
        }

        if (v8 == 7)
        {
          if (v9 != 2)
          {
            goto LABEL_36;
          }

LABEL_105:
          *(a1 + 80) |= 0x40u;
          v57 = *(a1 + 56);
          if (!v57)
          {
            operator new();
          }

          v76[0] = 0;
          v58 = *(this + 1);
          if (v58 >= *(this + 2) || *v58 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v58;
            *(this + 1) = v58 + 1;
          }

          v59 = *(this + 14);
          v60 = *(this + 15);
          *(this + 14) = v59 + 1;
          if (v59 >= v60)
          {
            return 0;
          }

          v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
          if (!sub_10006AFD0(v57, this, v62, v63) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v61);
          v64 = *(this + 14);
          v20 = __OFSUB__(v64, 1);
          v65 = v64 - 1;
          if (v65 < 0 == v20)
          {
            *(this + 14) = v65;
          }

          v66 = *(this + 1);
          if (v66 < *(this + 2) && *v66 == 66)
          {
            *(this + 1) = v66 + 1;
            goto LABEL_119;
          }
        }

        else
        {
          if (v8 != 8 || v9 != 2)
          {
            goto LABEL_36;
          }

LABEL_119:
          *(a1 + 80) |= 0x80u;
          v67 = *(a1 + 64);
          if (!v67)
          {
            operator new();
          }

          v76[0] = 0;
          v68 = *(this + 1);
          if (v68 >= *(this + 2) || *v68 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v68;
            *(this + 1) = v68 + 1;
          }

          v69 = *(this + 14);
          v70 = *(this + 15);
          *(this + 14) = v69 + 1;
          if (v69 >= v70)
          {
            return 0;
          }

          v71 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
          if (!sub_10006DEB0(v67, this, v72, v73) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v71);
          v74 = *(this + 14);
          v20 = __OFSUB__(v74, 1);
          v75 = v74 - 1;
          if (v75 < 0 == v20)
          {
            *(this + 14) = v75;
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

      if (TagFallback >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v9 == 2)
          {
            goto LABEL_62;
          }
        }

        else if (v8 == 4 && v9 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_36;
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_36;
      }

      *(a1 + 80) |= 1u;
      v12 = *(a1 + 16);
      if (!v12)
      {
        operator new();
      }

      v76[0] = 0;
      v13 = *(this + 1);
      if (v13 >= *(this + 2) || *v13 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
        {
          return 0;
        }
      }

      else
      {
        v76[0] = *v13;
        *(this + 1) = v13 + 1;
      }

      v14 = *(this + 14);
      v15 = *(this + 15);
      *(this + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
      if (!sub_100062AE8(v12, this, v17, v18) || *(this + 36) != 1)
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
LABEL_48:
        *(a1 + 80) |= 2u;
        v23 = *(a1 + 24);
        if (!v23)
        {
          operator new();
        }

        v76[0] = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
          {
            return 0;
          }
        }

        else
        {
          v76[0] = *v24;
          *(this + 1) = v24 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
        if (!sub_100065078(v23, this, v28, v29) || *(this + 36) != 1)
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
LABEL_62:
          *(a1 + 80) |= 4u;
          v33 = *(a1 + 32);
          if (!v33)
          {
            operator new();
          }

          v76[0] = 0;
          v34 = *(this + 1);
          if (v34 >= *(this + 2) || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v34;
            *(this + 1) = v34 + 1;
          }

          v35 = *(this + 14);
          v36 = *(this + 15);
          *(this + 14) = v35 + 1;
          if (v35 >= v36)
          {
            return 0;
          }

          v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
          if (!sub_100065078(v33, this, v38, v39) || *(this + 36) != 1)
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
          if (v42 < *(this + 2) && *v42 == 34)
          {
            *(this + 1) = v42 + 1;
LABEL_76:
            *(a1 + 80) |= 8u;
            v43 = *(a1 + 40);
            if (!v43)
            {
              operator new();
            }

            v76[0] = 0;
            v44 = *(this + 1);
            if (v44 >= *(this + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76))
              {
                return 0;
              }
            }

            else
            {
              v76[0] = *v44;
              *(this + 1) = v44 + 1;
            }

            v45 = *(this + 14);
            v46 = *(this + 15);
            *(this + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v76[0]);
            if (!sub_100063D0C(v43, this, v48, v49) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v47);
            v50 = *(this + 14);
            v20 = __OFSUB__(v50, 1);
            v51 = v50 - 1;
            if (v51 < 0 == v20)
            {
              *(this + 14) = v51;
            }

            v52 = *(this + 1);
            if (v52 < *(this + 2) && *v52 == 41)
            {
              *(this + 1) = v52 + 1;
LABEL_90:
              *v76 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v76) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 48) = *v76;
              *(a1 + 80) |= 0x10u;
              v53 = *(this + 1);
              v10 = *(this + 2);
              if (v53 < v10 && *v53 == 48)
              {
                v11 = v53 + 1;
                *(this + 1) = v11;
LABEL_94:
                v76[0] = 0;
                if (v11 >= v10 || (v54 = *v11, v54 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v76);
                  if (!result)
                  {
                    return result;
                  }

                  v54 = v76[0];
                }

                else
                {
                  *(this + 1) = v11 + 1;
                }

                if ((v54 + 1) > 3)
                {
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 6, v54);
                }

                else
                {
                  *(a1 + 80) |= 0x20u;
                  *(a1 + 72) = v54;
                }

                v56 = *(this + 1);
                if (v56 < *(this + 2) && *v56 == 58)
                {
                  *(this + 1) = v56 + 1;
                  goto LABEL_105;
                }
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

LABEL_36:
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

uint64_t sub_10006C820(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 80);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9880 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
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

  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_1009F9880 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v8, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(qword_1009F9880 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 40);
  if (!v10)
  {
    v10 = *(qword_1009F9880 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 80);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_1009F9880 + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v11, a2, a4);
  if ((*(v5 + 80) & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 64);
    if (!v12)
    {
      v12 = *(qword_1009F9880 + 64);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v12, a2, a4);
  }

LABEL_30:
  v15 = *(v5 + 8);
  v14 = (v5 + 8);
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v14, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006C9BC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 20);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F9880 + 16);
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
    v5 = *(this + 20);
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
    v10 = *(qword_1009F9880 + 24);
  }

  *v3 = 18;
  v11 = v10[10];
  if (v11 > 0x7F)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v11;
    v12 = (v3 + 2);
  }

  v3 = sub_1000652FC(v10, v12, a3);
  v5 = *(this + 20);
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
    v13 = *(qword_1009F9880 + 32);
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
  v5 = *(this + 20);
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
    v16 = *(qword_1009F9880 + 40);
  }

  *v3 = 34;
  v17 = *(v16 + 32);
  if (v17 > 0x7F)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v17;
    v18 = v3 + 2;
  }

  v3 = sub_10006411C(v16, v18, a3);
  v5 = *(this + 20);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = *(this + 6);
  *v3 = 41;
  *(v3 + 1) = v19;
  v3 = (v3 + 9);
  if ((*(this + 20) & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v20 = *(this + 18);
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
      goto LABEL_39;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
  }

  v3 = v22;
LABEL_39:
  v23 = *(this + 20);
  if ((v23 & 0x40) != 0)
  {
    v24 = *(this + 7);
    if (!v24)
    {
      v24 = *(qword_1009F9880 + 56);
    }

    *v3 = 58;
    v25 = v24[10];
    if (v25 > 0x7F)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v25;
      v26 = (v3 + 2);
    }

    v3 = sub_10006B3E4(v24, v26, a3);
    v23 = *(this + 20);
  }

  if ((v23 & 0x80) != 0)
  {
    v27 = *(this + 8);
    if (!v27)
    {
      v27 = *(qword_1009F9880 + 64);
    }

    *v3 = 66;
    v28 = v27[6];
    if (v28 > 0x7F)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v28;
      v29 = (v3 + 2);
    }

    v3 = sub_10006E0F8(v27, v29, a3);
  }

  v32 = *(this + 1);
  v31 = (this + 8);
  v30 = v32;
  if (!v32 || *v30 == v30[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v31, v3, a3);
}

uint64_t sub_10006CCC0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 80);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_58;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 80) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(qword_1009F9880 + 16);
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
  v3 = *(a1 + 80);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 24);
    if (!v10)
    {
      v10 = *(qword_1009F9880 + 24);
    }

    v11 = sub_1000653C8(v10, a2);
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
    v3 = *(a1 + 80);
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
    v14 = *(qword_1009F9880 + 32);
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
  v3 = *(a1 + 80);
  if ((v3 & 8) != 0)
  {
LABEL_27:
    v18 = *(a1 + 40);
    if (!v18)
    {
      v18 = *(qword_1009F9880 + 40);
    }

    v19 = sub_1000641AC(v18, a2);
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
    v3 = *(a1 + 80);
  }

LABEL_33:
  if ((v3 & 0x10) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
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
      v3 = *(a1 + 80);
    }

    else
    {
      v23 = 2;
    }

    v5 = (v23 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_38:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  v24 = *(a1 + 56);
  if (!v24)
  {
    v24 = *(qword_1009F9880 + 56);
  }

  v25 = sub_10006B54C(v24, a2);
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
  if ((*(a1 + 80) & 0x80) != 0)
  {
LABEL_52:
    v28 = *(a1 + 64);
    if (!v28)
    {
      v28 = *(qword_1009F9880 + 64);
    }

    v29 = sub_10006E1A8(v28, a2);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
    }

    else
    {
      v31 = 1;
    }

    v5 = (v5 + v30 + v31 + 1);
  }

LABEL_58:
  v32 = *(a1 + 8);
  if (v32 && *v32 != v32[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 76) = v5;
  return v5;
}

uint64_t sub_10006CF28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006B8E4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006CFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D014(uint64_t a1, uint64_t a2)
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
      v5 = *(qword_1009F9890 + 16);
    }

    sub_10006D2C8(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10006D124(uint64_t result, uint64_t a2)
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

uint64_t sub_10006D1B8()
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

  return qword_1009ED348;
}

void sub_10006D24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D260(uint64_t a1)
{
  *a1 = off_10098C900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10006D2C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  sub_10006DA9C((a1 + 24), a2 + 24);
  if (*(a2 + 52))
  {
    v4 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10006D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006D384(uint64_t *a1)
{
  *a1 = off_10098C900;
  sub_100077C08(a1 + 3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006D3E8(uint64_t *a1)
{
  sub_10006D384(a1);

  operator delete();
}

uint64_t sub_10006D48C(uint64_t a1)
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

uint64_t sub_10006D4EC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      *(a1 + 52) |= 1u;
      if (v12 < v10 && *v12 == 18)
      {
        do
        {
          *(this + 1) = v12 + 1;
LABEL_21:
          v14 = *(a1 + 36);
          v15 = *(a1 + 32);
          if (v15 >= v14)
          {
            if (v14 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v14 + 1);
              v14 = *(a1 + 36);
            }

            *(a1 + 36) = v14 + 1;
            sub_100077A6C();
          }

          v16 = *(a1 + 24);
          *(a1 + 32) = v15 + 1;
          v17 = *(v16 + 8 * v15);
          v28 = 0;
          v18 = *(this + 1);
          if (v18 >= *(this + 2) || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v18;
            *(this + 1) = v18 + 1;
          }

          v19 = *(this + 14);
          v20 = *(this + 15);
          *(this + 14) = v19 + 1;
          if (v19 >= v20)
          {
            return 0;
          }

          v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
          if (!sub_10006A640(v17, this, v22, v23) || *(this + 36) != 1)
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

          v12 = *(this + 1);
          v27 = *(this + 2);
        }

        while (v12 < v27 && *v12 == 18);
        if (v12 == v27 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_10006D750(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 16), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 32));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006D804(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
  {
    v5 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
  }

  if (*(this + 8) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 3) + 8 * v6);
      *v3 = 18;
      v8 = *(v7 + 32);
      if (v8 > 0x7F)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v8;
        v9 = v3 + 2;
      }

      v3 = sub_10006A82C(v7, v9, a3);
      ++v6;
    }

    while (v6 < *(this + 8));
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

uint64_t sub_10006D8F0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = (v4 + v3);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_10006A8F4(*(*(a1 + 24) + 8 * v6), a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(a1 + 32));
  }

  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 48) = v5;
  return v5;
}

uint64_t sub_10006D9B0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006D2C8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006DA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006DA9C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_100077A6C();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_10006A428(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10006DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006DBDC(uint64_t result, uint64_t a2)
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

uint64_t sub_10006DC70()
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

  return qword_1009ED358;
}

void sub_10006DD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_10006DD18(void *a1)
{
  *a1 = off_10098C9B0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_10006DD74(void *a1)
{
  *a1 = off_10098C9B0;
  if (qword_1009F9890 != a1)
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

void sub_10006DE0C(void *a1)
{
  sub_10006DD74(a1);

  operator delete();
}

uint64_t sub_10006DEB0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (!sub_10006D4EC(v8, this, v13, v14) || *(this + 36) != 1)
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

uint64_t sub_10006E074(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9890 + 16);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006E0F8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(qword_1009F9890 + 16);
    }

    *a2 = 10;
    v5 = v4[12];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_10006D804(v4, v6, a3);
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

uint64_t sub_10006E1A8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F9890 + 16);
    }

    v5 = sub_10006D8F0(v4, a2);
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

uint64_t sub_10006E23C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10006D014(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10006E310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E328(uint64_t result, uint64_t a2)
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

uint64_t sub_10006E3BC()
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

  return qword_1009ED368;
}

void sub_10006E450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E464(uint64_t a1)
{
  *a1 = off_10098CA60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_100549BD0;
  return a1;
}

uint64_t sub_10006E4D0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  sub_10006EE7C((a1 + 4), a2 + 16);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 40);
      if ((v5 + 1) >= 6)
      {
        sub_10049D66C();
      }

      a1[13] |= 1u;
      a1[10] = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 44);
      if (v6 >= 9)
      {
        sub_10049D698();
      }

      a1[13] |= 4u;
      a1[11] = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}