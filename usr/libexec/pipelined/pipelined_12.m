uint64_t sub_1000A8B88(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1000A8C34(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000A8354(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A8D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A8D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8D3C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A8DD0()
{
  v0 = qword_10045CC50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A7CAC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC40;
}

void sub_1000A8E60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8E74(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    LOBYTE(v4) = *(a2 + 60);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 60);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  if (v4)
  {
    *(a1 + 60) |= 1u;
    v5 = *(a1 + 40);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 40);
    if (!v6)
    {
      v6 = *(qword_10045DD30 + 40);
    }

    sub_1000A8354(v5, v6);
    v4 = *(a2 + 60);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 60) |= 2u;
    v7 = *(a1 + 48);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 48);
    if (!v8)
    {
      v8 = *(qword_10045DD30 + 48);
    }

    sub_100054228(v7, v8);
  }

LABEL_15:
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::MergeFrom((a1 + 8), (a2 + 8));
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 32), (a2 + 32));
}

void sub_1000A9048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A905C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A9070(void *a1)
{
  *a1 = off_100437E38;
  if (qword_10045DD30 != a1)
  {
    v2 = a1[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[6];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 4));
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A9138(void *a1)
{
  *a1 = off_100437E38;
  if (qword_10045DD30 != a1)
  {
    v2 = a1[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[6];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 4));
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

void sub_1000A929C()
{
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v1);
  wireless_diagnostics::google::protobuf::Message::~Message(v0);
  operator delete();
}

uint64_t sub_1000A92DC(uint64_t a1)
{
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Clear((a1 + 8));
  if (*(a1 + 60))
  {
    if (*(a1 + 60))
    {
      result = *(a1 + 40);
      if (result)
      {
        if (*(result + 52))
        {
          *(result + 16) = 0u;
          *(result + 32) = 0u;
        }

        v3 = *(result + 8);
        result += 8;
        *(result + 44) = 0;
        if (v3)
        {
          result = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
        }
      }
    }

    if ((*(a1 + 60) & 2) != 0)
    {
      result = *(a1 + 48);
      if (result)
      {
        result = sub_1000549A4(result);
      }
    }
  }

  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  *(v4 + 7) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return result;
}

uint64_t sub_1000A9378(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 4)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_17;
      }

      *(a1 + 60) |= 1u;
      v9 = *(a1 + 40);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!sub_1000A869C(v9, a2, v14, v15) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v13);
      v16 = *(a2 + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(a2 + 14) = v18;
      }

      v19 = *(a2 + 1);
      if (v19 < *(a2 + 2) && *v19 == 34)
      {
        *(a2 + 1) = v19 + 1;
LABEL_30:
        *(a1 + 60) |= 2u;
        v20 = *(a1 + 48);
        if (!v20)
        {
          operator new();
        }

        v31 = 0;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v31);
        if (!sub_100054A80(v20, a2, v25, v26) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
        v27 = *(a2 + 14);
        v17 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v17)
        {
          *(a2 + 14) = v28;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_17:
    if (v8 == 4)
    {
      return 1;
    }

    if ((TagFallback & 0xFFFFFFF8) == 0x10)
    {
      if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((a1 + 8), TagFallback, a2, qword_10045DD30, (a1 + 32)) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, a1 + 32, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1000A96C4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 60))
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(qword_10045DD30 + 40);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
  }

  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes((a1 + 8), 2, 3, a2);
  if ((*(a1 + 60) & 2) != 0)
  {
    v10 = *(a1 + 48);
    if (!v10)
    {
      v10 = *(qword_10045DD30 + 48);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, v9);
  }

  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, v8);
  }

  return result;
}

_BYTE *sub_1000A9784(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((a1 + 8), 2, 3, a2);
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    *a2 = 10;
    v12 = a2 + 1;
    v13 = *(v11 + 48);
    if (v13 <= 0x7F)
    {
LABEL_7:
      a2[1] = v13;
      v14 = a2 + 2;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *(qword_10045DD30 + 40);
    *a2 = 10;
    v12 = a2 + 1;
    v13 = *(v11 + 48);
    if (v13 <= 0x7F)
    {
      goto LABEL_7;
    }
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
LABEL_10:
  v15 = sub_1000A89FC(v11, v14, a3);
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((a1 + 8), 2, 3, v15);
  if ((*(a1 + 60) & 2) == 0)
  {
LABEL_3:
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (!v10)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_11:
  v16 = *(a1 + 48);
  if (v16)
  {
    *result = 34;
    v17 = result + 1;
    v18 = v16[18];
    if (v18 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *(qword_10045DD30 + 48);
    *result = 34;
    v17 = result + 1;
    v18 = v16[18];
    if (v18 <= 0x7F)
    {
LABEL_13:
      result[1] = v18;
      result = sub_100055610(v16, (result + 2), v6, v7);
      v19 = *(a1 + 32);
      v9 = (a1 + 32);
      v8 = v19;
      if (!v19)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v17, v6);
  result = sub_100055610(v16, v20, v21, v22);
  v23 = *(a1 + 32);
  v9 = (a1 + 32);
  v8 = v23;
  if (!v23)
  {
    return result;
  }

LABEL_17:
  if (*v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, result, v6);
  }

  return result;
}

uint64_t sub_1000A98FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 60))
  {
    v3 = 0;
    goto LABEL_31;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v10 = *(a1 + 48);
    if (v10)
    {
      v12 = sub_1000559E0(v10, a2);
      if (v12 < 0x80)
      {
LABEL_27:
        v13 = 1;
LABEL_30:
        v3 += v12 + v13 + 1;
        goto LABEL_31;
      }
    }

    else
    {
      v12 = sub_1000559E0(*(qword_10045DD30 + 48), a2);
      if (v12 < 0x80)
      {
        goto LABEL_27;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, v11);
    goto LABEL_30;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 52);
    if (*(v4 + 52))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(qword_10045DD30 + 40);
    v5 = *(v4 + 52);
    if (*(v4 + 52))
    {
LABEL_8:
      v6 = (v5 << 31 >> 31) & 9;
      if ((v5 & 2) != 0)
      {
        v6 += 9;
      }

      if ((v5 & 4) != 0)
      {
        v7 = (v6 + 9);
      }

      else
      {
        v7 = v6;
      }

      if ((v5 & 8) != 0)
      {
        v7 = (v7 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v4 + 40), a2) + 1);
      }

      v8 = (v4 + 8);
      v9 = *(v4 + 8);
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  v7 = 0;
  v8 = (v4 + 8);
  v9 = *(v4 + 8);
  if (v9)
  {
LABEL_19:
    if (*v9 != v9[1])
    {
      v7 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7);
    }
  }

LABEL_21:
  *(v4 + 48) = v7;
  if (v7 < 0x80)
  {
    v3 = v7 + 2;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v3 = v7 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
  if ((*(a1 + 60) & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  v15 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize((a1 + 8)) + v3;
  v16 = *(a1 + 32);
  if (v16 && *v16 != v16[1])
  {
    v15 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 32), v14) + v15;
  }

  *(a1 + 56) = v15;
  return v15;
}

uint64_t sub_1000A9A94(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000A8E74(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A9B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A9B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A9B9C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A9C30()
{
  v0 = qword_10045CC50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A7CAC;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC30;
}

void sub_1000A9CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1000A9CE8()
{
  v0 = sub_1000AA3EC();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1000AA364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AA378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AA38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000AA3EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045CC58 & 1) == 0)
  {
    byte_10045CC58 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/protobuf/clpsensorsurvey/Proto/CLPSensorSurveyEvent.pb.cc", a4);
    sub_10008B1D8(v4, v5, v6, v7);
    sub_100056A38(v8, v9, v10, v11);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_1003CCAF0, 0xE11, v12);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1000AAB00()
{
  if (qword_10045DD40)
  {
    (*(*qword_10045DD40 + 8))(qword_10045DD40);
  }

  if (qword_10045CC70)
  {
    (*(*qword_10045CC70 + 8))(qword_10045CC70);
  }

  if (qword_10045DD48)
  {
    (*(*qword_10045DD48 + 8))(qword_10045DD48);
  }

  if (qword_10045CC80)
  {
    (*(*qword_10045CC80 + 8))(qword_10045CC80);
  }

  if (qword_10045DD50)
  {
    (*(*qword_10045DD50 + 8))(qword_10045DD50);
  }

  if (qword_10045CC90)
  {
    (*(*qword_10045CC90 + 8))(qword_10045CC90);
  }

  if (qword_10045DD58)
  {
    (*(*qword_10045DD58 + 8))(qword_10045DD58);
  }

  if (qword_10045CCA0)
  {
    (*(*qword_10045CCA0 + 8))(qword_10045CCA0);
  }

  if (qword_10045DD60)
  {
    (*(*qword_10045DD60 + 8))(qword_10045DD60);
  }

  if (qword_10045CCB0)
  {
    (*(*qword_10045CCB0 + 8))(qword_10045CCB0);
  }

  if (qword_10045DD68)
  {
    (*(*qword_10045DD68 + 8))(qword_10045DD68);
  }

  if (qword_10045CCC0)
  {
    (*(*qword_10045CCC0 + 8))(qword_10045CCC0);
  }

  if (qword_10045DD70)
  {
    (*(*qword_10045DD70 + 8))(qword_10045DD70);
  }

  if (qword_10045CCD0)
  {
    (*(*qword_10045CCD0 + 8))(qword_10045CCD0);
  }

  if (qword_10045DD78)
  {
    (*(*qword_10045DD78 + 8))(qword_10045DD78);
  }

  if (qword_10045CCE0)
  {
    (*(*qword_10045CCE0 + 8))(qword_10045CCE0);
  }

  if (qword_10045DD80)
  {
    (*(*qword_10045DD80 + 8))(qword_10045DD80);
  }

  if (qword_10045CCF0)
  {
    (*(*qword_10045CCF0 + 8))(qword_10045CCF0);
  }

  if (qword_10045DD88)
  {
    (*(*qword_10045DD88 + 8))(qword_10045DD88);
  }

  if (qword_10045CD00)
  {
    (*(*qword_10045CD00 + 8))(qword_10045CD00);
  }

  if (qword_10045DD90)
  {
    (*(*qword_10045DD90 + 8))(qword_10045DD90);
  }

  if (qword_10045CD10)
  {
    (*(*qword_10045CD10 + 8))(qword_10045CD10);
  }

  if (qword_10045DD98)
  {
    (*(*qword_10045DD98 + 8))(qword_10045DD98);
  }

  result = qword_10045CD20;
  if (qword_10045CD20)
  {
    v1 = *(*qword_10045CD20 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1000AAFA8()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v13[1] = sub_1000A9CE8;
    v14 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v13);
  }

  if (!qword_10045DD40)
  {
    (sub_1000AA3EC)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD48)
  {
    sub_1000AA3EC(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD50)
  {
    sub_1000AA3EC(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD58)
  {
    sub_1000AA3EC(v3);
  }

  v4 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD60)
  {
    sub_1000AA3EC(v4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD68)
  {
    sub_1000AA3EC(v5);
  }

  v6 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD70)
  {
    sub_1000AA3EC(v6);
  }

  v7 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD78)
  {
    sub_1000AA3EC(v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD80)
  {
    sub_1000AA3EC(v8);
  }

  v9 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD88)
  {
    sub_1000AA3EC(v9);
  }

  v10 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD90)
  {
    sub_1000AA3EC(v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_10045DD98)
  {
    sub_1000AA3EC(v11);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1000AB1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AB208(uint64_t a1)
{
  *a1 = off_100437F18;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_1000AB26C(uint64_t a1)
{
  *a1 = off_100437FC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void *sub_1000AB2D0(void *a1)
{
  *a1 = off_100438078;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

uint64_t sub_1000AB32C(uint64_t a1)
{
  *a1 = off_100438128;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 64) = 0u;
  return a1;
}

uint64_t sub_1000AB3A8(uint64_t a1)
{
  *a1 = off_1004381D8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_1000AB41C(uint64_t a1)
{
  *a1 = off_100438288;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void *sub_1000AB480(void *a1)
{
  *a1 = off_100438338;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1000AB4E0(uint64_t a1)
{
  *a1 = off_1004383E8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_1000AB548(uint64_t a1)
{
  *a1 = off_100438498;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_1000AB5B8(uint64_t a1)
{
  *a1 = off_100438548;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

uint64_t sub_1000AB63C(uint64_t a1)
{
  *a1 = off_1004385F8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_1000AB69C(uint64_t a1)
{
  *a1 = off_1004386A8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_1000AB70C(uint64_t a1, uint64_t a2)
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

void sub_1000AB814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AB828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AB83C(uint64_t a1)
{
  *a1 = off_100437F18;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000AB890(uint64_t a1)
{
  *a1 = off_100437F18;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AB990(uint64_t a1)
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

uint64_t sub_1000AB9B4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_1000ABC40(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t sub_1000ABD14(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1000ABEA0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1000ABF4C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000AB70C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000AC02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AC040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC054(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AC0E8()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC68;
}

void sub_1000AC178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC18C(uint64_t a1, uint64_t a2)
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

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 40))
  {
    v7 = *(a2 + 16);
    *(a1 + 40) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 32);
      *(a1 + 40) |= 4u;
      *(a1 + 32) = v9;
      if ((*(a2 + 40) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 40) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  *(a1 + 40) |= 2u;
  *(a1 + 20) = v8;
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 24);
    *(a1 + 40) |= 8u;
    *(a1 + 24) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000AC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AC2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AC2BC(uint64_t a1)
{
  *a1 = off_100437FC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000AC310(uint64_t a1)
{
  *a1 = off_100437FC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AC410(uint64_t a1)
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

uint64_t sub_1000AC434(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v22[0] = 0;
          v12 = *(this + 1);
          if (v12 >= *(this + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
            if (!result)
            {
              return result;
            }

            v13 = v22[0];
            if (v22[0] <= 5)
            {
LABEL_21:
              *(a1 + 40) |= 1u;
              *(a1 + 16) = v13;
              goto LABEL_31;
            }
          }

          else
          {
            *(this + 1) = v12 + 1;
            if (v13 <= 5)
            {
              goto LABEL_21;
            }
          }

          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v13);
LABEL_31:
          v16 = *(this + 1);
          v10 = *(this + 2);
          if (v16 < v10 && *v16 == 16)
          {
            v11 = v16 + 1;
            *(this + 1) = v11;
            v22[0] = 0;
            if (v11 < v10)
            {
              goto LABEL_34;
            }

LABEL_37:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v10 = *(this + 2);
            *(a1 + 20) = v22[0];
            *(a1 + 40) |= 2u;
            if (v18 < v10)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          v22[0] = 0;
          if (v11 >= v10)
          {
            goto LABEL_37;
          }

LABEL_34:
          v17 = *v11;
          if (v17 < 0)
          {
            goto LABEL_37;
          }

          v18 = v11 + 1;
          *(this + 1) = v18;
          *(a1 + 20) = v17;
          *(a1 + 40) |= 2u;
          if (v18 < v10)
          {
LABEL_39:
            if (*v18 == 24)
            {
              v14 = v18 + 1;
              *(this + 1) = v14;
              v22[0] = 0;
              if (v14 < v10)
              {
                goto LABEL_41;
              }

LABEL_44:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v22);
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v21 = *(this + 2);
              *(a1 + 32) = v22[0];
              *(a1 + 40) |= 4u;
              if (v20 < v21)
              {
                goto LABEL_46;
              }
            }
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_23;
      }

      v14 = *(this + 1);
      v10 = *(this + 2);
      v22[0] = 0;
      if (v14 >= v10)
      {
        goto LABEL_44;
      }

LABEL_41:
      v19 = *v14;
      if (v19 < 0)
      {
        goto LABEL_44;
      }

      v20 = v14 + 1;
      *(this + 1) = v20;
      *(a1 + 32) = v19;
      *(a1 + 40) |= 4u;
      if (v20 < v10)
      {
LABEL_46:
        if (*v20 == 33)
        {
          *(this + 1) = v20 + 1;
          *v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22) & 1) == 0)
          {
            return 0;
          }

LABEL_48:
          *(a1 + 24) = *v22;
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
    }

    if (v8 == 4 && v9 == 1)
    {
      *v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v22) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_48;
    }

LABEL_23:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1000AC73C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 32), a2, a4);
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

    goto LABEL_11;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AC810(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 40))
  {
    v8 = *(this + 4);
    *a2 = 8;
    v9 = a2 + 1;
    if ((v8 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, v9, a3);
      if ((*(this + 40) & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (v8 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
      if ((*(this + 40) & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v3 + 1) = v8;
      v3 = (v3 + 2);
      if ((*(this + 40) & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_3:
    if ((*(this + 40) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_21:
    v12 = *(this + 8);
    *v3 = 24;
    v13 = v3 + 1;
    if ((v12 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, v13, a3);
      if ((*(this + 40) & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v13, a3);
      if ((*(this + 40) & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
      if ((*(this + 40) & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_5:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_29;
  }

  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_14:
  v10 = *(this + 5);
  *v3 = 16;
  v11 = v3 + 1;
  if ((v10 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else if (v10 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v3 + 1) = v10;
    v3 = (v3 + 2);
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_4:
  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_28:
  v14 = *(this + 3);
  *v3 = 33;
  *(v3 + 1) = v14;
  v3 = (v3 + 9);
  v15 = *(this + 1);
  v6 = (this + 8);
  v5 = v15;
  if (!v15)
  {
    return v3;
  }

LABEL_29:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_1000AC9E4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v8 = *(a1 + 16);
      if ((v8 & 0x80000000) != 0)
      {
        LODWORD(v4) = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (v8 >= 0x80)
      {
        LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(a1 + 40);
        if ((v3 & 2) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        LODWORD(v4) = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      LODWORD(v4) = 0;
      if ((*(a1 + 40) & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    v9 = *(a1 + 20);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v10 = 2;
    }

    LODWORD(v4) = v10 + v4;
LABEL_20:
    if ((v3 & 4) != 0)
    {
      v11 = *(a1 + 32);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v12 = 2;
      }

      LODWORD(v4) = v12 + v4;
    }

    if ((v3 & 8) != 0)
    {
      v4 = (v4 + 9);
    }

    else
    {
      v4 = v4;
    }

    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

  v4 = 0;
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_6:
    *(a1 + 36) = v4;
    return v4;
  }

LABEL_31:
  if (*v6 == v6[1])
  {
    goto LABEL_6;
  }

  v13 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v13;
  return v13;
}

uint64_t sub_1000ACB10(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000AC18C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000ACBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000ACC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ACC18(uint64_t result, uint64_t a2)
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

uint64_t sub_1000ACCAC()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC78;
}

void sub_1000ACD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ACD50(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    if ((*(a2 + 28) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else if ((*(a2 + 28) & 1) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  *(a1 + 28) |= 1u;
  v4 = *(a1 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v5 = *(qword_10045DD50 + 16);
  }

  sub_1000AC18C(v4, v5);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000ACE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000ACEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000ACEB8(void *a1)
{
  *a1 = off_100438078;
  if (qword_10045DD50 != a1)
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

void sub_1000ACF4C(void *a1)
{
  *a1 = off_100438078;
  if (qword_10045DD50 != a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AD084(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*(v2 + 40))
      {
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
        *(v2 + 32) = 0;
      }

      v4 = *(v2 + 8);
      v3 = (v2 + 8);
      *(v3 + 8) = 0;
      if (v4)
      {
        v5 = a1;
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
        a1 = v5;
        v1 = vars8;
      }
    }
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000AD0FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (!sub_1000AC434(v8, this, v13, v14) || *(this + 36) != 1)
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

wireless_diagnostics::google::protobuf::internal::WireFormat *sub_1000AD318(uint64_t a1, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(a1 + 28))
  {
    v5 = a1;
    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD50 + 16);
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

uint64_t sub_1000AD39C(uint64_t a1, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(a1 + 28))
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      v3 = *(qword_10045DD50 + 16);
    }

    v4 = a1;
    *a2 = 10;
    v5 = v3[9];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_1000AC810(v3, v6, a3);
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

uint64_t sub_1000AD44C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = sub_1000AC9E4(v7, a2);
      if (v8 < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = sub_1000AC9E4(*(qword_10045DD50 + 16), a2);
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

uint64_t sub_1000AD520(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000ACD50(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000AD600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AD614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AD628(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AD6BC()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC88;
}

void sub_1000AD74C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AD760(uint64_t a1, uint64_t a2)
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
    *(a1 + 76) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD58 + 16);
    }

    sub_1000AB70C(v5, v6);
    v4 = *(a2 + 76);
  }

  if ((v4 & 2) != 0)
  {
    v9 = *(a2 + 48);
    *(a1 + 76) |= 2u;
    *(a1 + 48) = v9;
    v4 = *(a2 + 76);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(a2 + 24);
  *(a1 + 76) |= 4u;
  v11 = *(a1 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_23:
  v12 = *(a2 + 32);
  *(a1 + 76) |= 8u;
  v13 = *(a1 + 32);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 76);
  if ((v4 & 0x10) == 0)
  {
LABEL_14:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_26:
  v14 = *(a2 + 40);
  *(a1 + 76) |= 0x10u;
  v15 = *(a1 + 40);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v4 = *(a2 + 76);
  if ((v4 & 0x20) == 0)
  {
LABEL_15:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    *(a1 + 76) |= 0x40u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 64);
    if (v19)
    {
      sub_1000ACD50(v18, v19);
      if ((*(a2 + 76) & 0x80) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else
    {
      sub_1000ACD50(v18, *(qword_10045DD58 + 64));
      if ((*(a2 + 76) & 0x80) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    goto LABEL_17;
  }

LABEL_29:
  v16 = *(a2 + 56);
  *(a1 + 76) |= 0x20u;
  v17 = *(a1 + 56);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v4 = *(a2 + 76);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x80) != 0)
  {
LABEL_17:
    v7 = *(a2 + 52);
    *(a1 + 76) |= 0x80u;
    *(a1 + 52) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000ADAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000ADAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000ADB0C(void *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v4 = result[4];
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  v6 = result[5];
  if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  v8 = result[7];
  if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  if (qword_10045DD58 != result)
  {
    v10 = result[2];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v1[8];
    if (result)
    {
      v11 = *(*result + 8);

      return v11();
    }
  }

  return result;
}

void sub_1000ADCC4(void *a1)
{
  *a1 = off_100438128;
  v2 = (a1 + 1);
  sub_1000ADB0C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000ADD24(void *a1)
{
  *a1 = off_100438128;
  v2 = (a1 + 1);
  sub_1000ADB0C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000ADDA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD58;
  if (!qword_10045DD58)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD58;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000ADE84(uint64_t a1)
{
  if (!*(a1 + 76))
  {
    goto LABEL_41;
  }

  if (*(a1 + 76))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      if (*(v2 + 52))
      {
        *(v2 + 16) = 0u;
        *(v2 + 32) = 0u;
      }

      v4 = *(v2 + 8);
      v3 = (v2 + 8);
      *(v3 + 11) = 0;
      if (v4)
      {
        v5 = a1;
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
        a1 = v5;
      }
    }
  }

  *(a1 + 48) = 0;
  if ((*(a1 + 76) & 4) == 0 || (v6 = *(a1 + 24), v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_12:
    if ((*(a1 + 76) & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    goto LABEL_12;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((*(a1 + 76) & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v7 = *(a1 + 32);
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_19:
  if ((*(a1 + 76) & 0x10) == 0 || (v8 = *(a1 + 40), v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_23:
    if ((*(a1 + 76) & 0x20) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    goto LABEL_23;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((*(a1 + 76) & 0x20) != 0)
  {
LABEL_24:
    v9 = *(a1 + 56);
    if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
      }
    }
  }

LABEL_30:
  if ((*(a1 + 76) & 0x40) != 0)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      if (*(v10 + 28))
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          if (*(v11 + 40))
          {
            *(v11 + 16) = 0;
            *(v11 + 24) = 0;
            *(v11 + 32) = 0;
          }

          v13 = *(v11 + 8);
          v12 = (v11 + 8);
          *(v12 + 8) = 0;
          if (v13)
          {
            v14 = a1;
            wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v12);
            a1 = v14;
          }
        }
      }

      v16 = *(v10 + 8);
      v15 = (v10 + 8);
      *(v15 + 5) = 0;
      if (v16)
      {
        v17 = a1;
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v15);
        a1 = v17;
      }
    }
  }

  *(a1 + 52) = 0;
  v1 = vars8;
LABEL_41:
  v19 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 17) = 0;
  if (v19)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000AE058(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            if (v8 == 3)
            {
              if (v9 != 2)
              {
                goto LABEL_46;
              }

              *(a1 + 76) |= 4u;
              if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                goto LABEL_67;
              }

LABEL_43:
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v29 = *(this + 1);
              if (v29 < *(this + 2) && *v29 == 34)
              {
                *(this + 1) = v29 + 1;
                *(a1 + 76) |= 8u;
                if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
LABEL_71:
                  operator new();
                }

                goto LABEL_24;
              }
            }

            else
            {
              if (v8 != 4 || v9 != 2)
              {
                goto LABEL_46;
              }

              *(a1 + 76) |= 8u;
              if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
                goto LABEL_71;
              }

LABEL_24:
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v30 = *(this + 1);
              if (v30 < *(this + 2) && *v30 == 42)
              {
                *(this + 1) = v30 + 1;
                *(a1 + 76) |= 0x10u;
                if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
LABEL_75:
                  operator new();
                }

                goto LABEL_39;
              }
            }
          }

          else if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_46;
            }

            *(a1 + 76) |= 1u;
            v15 = *(a1 + 16);
            if (!v15)
            {
              operator new();
            }

            v47 = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47);
            if (!sub_1000AB9B4(v15, this, v20, v21) || *(this + 36) != 1)
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

            v26 = *(this + 1);
            v25 = *(this + 2);
            if (v26 < v25 && *v26 == 16)
            {
              v11 = v26 + 1;
              *(this + 1) = v11;
              v47 = 0;
              if (v11 >= v25)
              {
                goto LABEL_61;
              }

LABEL_58:
              v27 = *v11;
              if ((v27 & 0x80000000) == 0)
              {
                *(this + 1) = v11 + 1;
                if (v27 <= 2)
                {
                  goto LABEL_60;
                }

                goto LABEL_63;
              }

LABEL_61:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
              if (!result)
              {
                return result;
              }

              v27 = v47;
              if (v47 <= 2)
              {
LABEL_60:
                *(a1 + 76) |= 2u;
                *(a1 + 48) = v27;
                goto LABEL_64;
              }

LABEL_63:
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v27);
LABEL_64:
              v28 = *(this + 1);
              if (v28 < *(this + 2) && *v28 == 26)
              {
                *(this + 1) = v28 + 1;
                *(a1 + 76) |= 4u;
                if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
LABEL_67:
                  operator new();
                }

                goto LABEL_43;
              }
            }
          }

          else
          {
            if (v8 == 2 && (TagFallback & 7) == 0)
            {
              v11 = *(this + 1);
              v10 = *(this + 2);
              v47 = 0;
              if (v11 >= v10)
              {
                goto LABEL_61;
              }

              goto LABEL_58;
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

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v8 == 7)
        {
          if (v9 == 2)
          {
            goto LABEL_83;
          }

          goto LABEL_46;
        }

        if (v8 != 8 || (TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v14 = *(this + 1);
        v13 = *(this + 2);
        v47 = 0;
        if (v14 >= v13)
        {
          goto LABEL_100;
        }

LABEL_97:
        v43 = *v14;
        if (v43 < 0)
        {
          goto LABEL_100;
        }

        v44 = v14 + 1;
        *(this + 1) = v44;
        *(a1 + 52) = v43;
        *(a1 + 76) |= 0x80u;
        if (v44 == v13)
        {
LABEL_102:
          if (*(this + 11) || *(this + 6) == *(this + 10))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v8 != 5)
      {
        if (v8 == 6 && v9 == 2)
        {
          *(a1 + 76) |= 0x20u;
          if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            goto LABEL_79;
          }

          goto LABEL_18;
        }

        goto LABEL_46;
      }

      if (v9 != 2)
      {
        goto LABEL_46;
      }

      *(a1 + 76) |= 0x10u;
      if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        goto LABEL_75;
      }

LABEL_39:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v31 = *(this + 1);
      if (v31 < *(this + 2) && *v31 == 50)
      {
        *(this + 1) = v31 + 1;
        *(a1 + 76) |= 0x20u;
        if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
LABEL_79:
          operator new();
        }

LABEL_18:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v32 = *(this + 1);
        if (v32 < *(this + 2) && *v32 == 58)
        {
          break;
        }
      }
    }

    *(this + 1) = v32 + 1;
LABEL_83:
    *(a1 + 76) |= 0x40u;
    v33 = *(a1 + 64);
    if (!v33)
    {
      operator new();
    }

    v47 = 0;
    v34 = *(this + 1);
    if (v34 >= *(this + 2) || *v34 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47))
      {
        return 0;
      }
    }

    else
    {
      v47 = *v34;
      *(this + 1) = v34 + 1;
    }

    v35 = *(this + 14);
    v36 = *(this + 15);
    *(this + 14) = v35 + 1;
    if (v35 >= v36)
    {
      return 0;
    }

    v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47);
    if (!sub_1000AD0FC(v33, this, v38, v39) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
    v40 = *(this + 14);
    v23 = __OFSUB__(v40, 1);
    v41 = v40 - 1;
    if (v41 < 0 == v23)
    {
      *(this + 14) = v41;
    }

    v42 = *(this + 1);
    v13 = *(this + 2);
    if (v42 < v13 && *v42 == 64)
    {
      v14 = v42 + 1;
      *(this + 1) = v14;
      v47 = 0;
      if (v14 < v13)
      {
        goto LABEL_97;
      }

LABEL_100:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v47);
      if (!result)
      {
        return result;
      }

      v46 = *(this + 1);
      v45 = *(this + 2);
      *(a1 + 52) = v47;
      *(a1 + 76) |= 0x80u;
      if (v46 == v45)
      {
        goto LABEL_102;
      }
    }
  }
}

uint64_t sub_1000AE76C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD58 + 16), a2, a4);
      v6 = *(v5 + 76);
      if ((v6 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 48), a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = *(v5 + 32);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = *(v5 + 40);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v15 = *(v5 + 64);
    if (v15)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v15, a2, a4);
      if ((*(v5 + 76) & 0x80) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DD58 + 64), a2, a4);
      if ((*(v5 + 76) & 0x80) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_9:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_19:
  v14 = *(v5 + 56);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 76);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 52), a2, a4);
  v16 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v16;
  if (!v16)
  {
    return result;
  }

LABEL_25:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_1000AE900(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 19);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = a2;
    *a2 = 10;
    v9 = a2 + 1;
    v10 = *(v7 + 48);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
    result = sub_1000ABD14(v7, v11, v12);
    if ((*(this + 19) & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v7 = *(qword_10045DD58 + 16);
  v8 = a2;
  *a2 = 10;
  v9 = a2 + 1;
  v10 = *(v7 + 48);
  if (v10 > 0x7F)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8[1] = v10;
  result = sub_1000ABD14(v7, (v8 + 2), a3);
  if ((*(this + 19) & 2) == 0)
  {
LABEL_15:
    v15 = *(this + 19);
    if ((v15 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_10:
  v13 = *(this + 12);
  *result = 16;
  v14 = (result + 1);
  if ((v13 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
    goto LABEL_15;
  }

  if (v13 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
    v15 = *(this + 19);
    if ((v15 & 4) == 0)
    {
LABEL_16:
      if ((v15 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else
  {
    result[1] = v13;
    result += 2;
    v15 = *(this + 19);
    if ((v15 & 4) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_22:
  v16 = *(this + 3);
  *result = 26;
  v17 = *(v16 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = *(v16 + 8);
    if (v17 <= 0x7F)
    {
      goto LABEL_24;
    }
  }

  else if (v17 <= 0x7F)
  {
LABEL_24:
    result[1] = v17;
    v18 = result + 2;
    goto LABEL_27;
  }

  v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, result + 1, a3);
LABEL_27:
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

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v20, v21, v18, a4);
  v15 = *(this + 19);
  if ((v15 & 8) == 0)
  {
LABEL_17:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_34:
  v22 = *(this + 4);
  *result = 34;
  v23 = *(v22 + 23);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v23 = *(v22 + 8);
    if (v23 <= 0x7F)
    {
      goto LABEL_36;
    }
  }

  else if (v23 <= 0x7F)
  {
LABEL_36:
    result[1] = v23;
    v24 = result + 2;
    goto LABEL_39;
  }

  v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, result + 1, a3);
LABEL_39:
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

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v26, v27, v24, a4);
  v15 = *(this + 19);
  if ((v15 & 0x10) == 0)
  {
LABEL_18:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_46:
  v28 = *(this + 5);
  *result = 42;
  v29 = *(v28 + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = *(v28 + 8);
    if (v29 <= 0x7F)
    {
      goto LABEL_48;
    }
  }

  else if (v29 <= 0x7F)
  {
LABEL_48:
    result[1] = v29;
    v30 = result + 2;
    goto LABEL_51;
  }

  v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, result + 1, a3);
LABEL_51:
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

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v32, v33, v30, a4);
  v15 = *(this + 19);
  if ((v15 & 0x20) == 0)
  {
LABEL_19:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_70;
  }

LABEL_58:
  v34 = *(this + 7);
  *result = 50;
  v35 = *(v34 + 23);
  if ((v35 & 0x8000000000000000) != 0)
  {
    v35 = *(v34 + 8);
    if (v35 <= 0x7F)
    {
      goto LABEL_60;
    }
  }

  else if (v35 <= 0x7F)
  {
LABEL_60:
    result[1] = v35;
    v36 = result + 2;
    goto LABEL_63;
  }

  v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, result + 1, a3);
LABEL_63:
  v37 = *(v34 + 23);
  if (v37 >= 0)
  {
    v38 = v34;
  }

  else
  {
    v38 = *v34;
  }

  if (v37 >= 0)
  {
    v39 = *(v34 + 23);
  }

  else
  {
    v39 = *(v34 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v38, v39, v36, a4);
  if ((*(this + 19) & 0x40) == 0)
  {
    goto LABEL_85;
  }

LABEL_70:
  v40 = *(this + 8);
  if (v40)
  {
    *result = 58;
    v41 = result + 1;
    v42 = *(v40 + 24);
    if (v42 <= 0x7F)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v40 = *(qword_10045DD58 + 64);
    *result = 58;
    v41 = result + 1;
    v42 = *(v40 + 24);
    if (v42 <= 0x7F)
    {
LABEL_72:
      result[1] = v42;
      result += 2;
      if ((*(v40 + 28) & 1) == 0)
      {
        goto LABEL_82;
      }

LABEL_76:
      v43 = *(v40 + 16);
      if (v43)
      {
        *result = 10;
        v44 = result + 1;
        v45 = v43[9];
        if (v45 <= 0x7F)
        {
LABEL_78:
          result[1] = v45;
          v46 = (result + 2);
LABEL_81:
          result = sub_1000AC810(v43, v46, a3);
          goto LABEL_82;
        }
      }

      else
      {
        v43 = *(qword_10045DD50 + 16);
        *result = 10;
        v44 = result + 1;
        v45 = v43[9];
        if (v45 <= 0x7F)
        {
          goto LABEL_78;
        }
      }

      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v44, a3);
      goto LABEL_81;
    }
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v41, a3);
  if (*(v40 + 28))
  {
    goto LABEL_76;
  }

LABEL_82:
  v49 = *(v40 + 8);
  v48 = (v40 + 8);
  v47 = v49;
  if (v49 && *v47 != v47[1])
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v48, result, a3);
  }

LABEL_85:
  if ((*(this + 76) & 0x80) == 0)
  {
    goto LABEL_91;
  }

  v50 = *(this + 13);
  *result = 64;
  v51 = (result + 1);
  if ((v50 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v50, v51, a3);
LABEL_91:
    v55 = *(this + 1);
    v53 = (this + 8);
    v52 = v55;
    if (!v55)
    {
      return result;
    }

    goto LABEL_92;
  }

  if (v50 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v50, v51, a3);
    v56 = *(this + 1);
    v53 = (this + 8);
    v52 = v56;
    if (!v56)
    {
      return result;
    }
  }

  else
  {
    result[1] = v50;
    result += 2;
    v54 = *(this + 1);
    v53 = (this + 8);
    v52 = v54;
    if (!v54)
    {
      return result;
    }
  }

LABEL_92:
  if (*v52 != v52[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v53, result, a3);
  }

  return result;
}

uint64_t sub_1000AED40(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_39;
    }

    goto LABEL_100;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 52);
    if (*(v7 + 52))
    {
      goto LABEL_9;
    }

LABEL_19:
    v10 = 0;
    v11 = (v7 + 8);
    v12 = *(v7 + 8);
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v7 = *(qword_10045DD58 + 16);
  v8 = *(v7 + 52);
  if (!*(v7 + 52))
  {
    goto LABEL_19;
  }

LABEL_9:
  v9 = (v8 << 31 >> 31) & 9;
  if ((v8 & 2) != 0)
  {
    v9 += 9;
  }

  if ((v8 & 4) != 0)
  {
    v10 = (v9 + 9);
  }

  else
  {
    v10 = v9;
  }

  if ((v8 & 8) != 0)
  {
    v10 = (v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v7 + 40), a2) + 1);
  }

  v11 = (v7 + 8);
  v12 = *(v7 + 8);
  if (v12)
  {
LABEL_20:
    if (*v12 != v12[1])
    {
      v10 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v11, a2) + v10);
    }
  }

LABEL_22:
  *(v7 + 48) = v10;
  if (v10 >= 0x80)
  {
    v4 = v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 76);
    if ((v3 & 2) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v4 = (v10 + 2);
    v3 = *(a1 + 76);
    if ((v3 & 2) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_26:
  v13 = *(a1 + 48);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
LABEL_32:
  if ((v3 & 4) != 0)
  {
    v16 = *(a1 + 24);
    v17 = *(v16 + 23);
    v18 = v17;
    v19 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = v19;
    }

    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v17 = *(v16 + 23);
      v19 = *(v16 + 8);
      v3 = *(a1 + 76);
      v18 = *(v16 + 23);
    }

    else
    {
      v21 = 1;
    }

    if (v18 < 0)
    {
      v17 = v19;
    }

    v4 = (v4 + v21 + v17 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_34:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_58;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_34;
  }

  v22 = *(a1 + 32);
  v23 = *(v22 + 23);
  v24 = v23;
  v25 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(v22 + 23);
  }

  else
  {
    v26 = v25;
  }

  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v3 = *(a1 + 76);
    v24 = *(v22 + 23);
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v4 = (v4 + v27 + v23 + 1);
  if ((v3 & 0x10) == 0)
  {
LABEL_35:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_58:
  v28 = *(a1 + 40);
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
    v3 = *(a1 + 76);
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
  if ((v3 & 0x20) == 0)
  {
LABEL_36:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_67:
  v34 = *(a1 + 56);
  v35 = *(v34 + 23);
  v36 = v35;
  v37 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v38 = *(v34 + 23);
  }

  else
  {
    v38 = v37;
  }

  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
    v35 = *(v34 + 23);
    v37 = *(v34 + 8);
    v3 = *(a1 + 76);
    v36 = *(v34 + 23);
  }

  else
  {
    v39 = 1;
  }

  if (v36 < 0)
  {
    v35 = v37;
  }

  v4 = (v4 + v39 + v35 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_37:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_38;
    }

LABEL_93:
    v46 = *(a1 + 52);
    if ((v46 & 0x80000000) != 0)
    {
      v4 = (v4 + 11);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    else if (v46 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_100;
  }

LABEL_76:
  v40 = *(a1 + 64);
  if (v40)
  {
    if ((*(v40 + 28) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v40 = *(qword_10045DD58 + 64);
    if ((*(v40 + 28) & 1) == 0)
    {
LABEL_78:
      v41 = 0;
      v42 = (v40 + 8);
      v43 = *(v40 + 8);
      if (!v43)
      {
        goto LABEL_89;
      }

      goto LABEL_87;
    }
  }

  v44 = *(v40 + 16);
  if (v44)
  {
    v45 = sub_1000AC9E4(v44, a2);
    if (v45 < 0x80)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v45 = sub_1000AC9E4(*(qword_10045DD50 + 16), a2);
    if (v45 < 0x80)
    {
LABEL_83:
      v41 = (v45 + 2);
      v42 = (v40 + 8);
      v43 = *(v40 + 8);
      if (!v43)
      {
        goto LABEL_89;
      }

      goto LABEL_87;
    }
  }

  v41 = v45 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 1;
  v42 = (v40 + 8);
  v43 = *(v40 + 8);
  if (!v43)
  {
    goto LABEL_89;
  }

LABEL_87:
  if (*v43 != v43[1])
  {
    v41 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v42, a2) + v41;
  }

LABEL_89:
  *(v40 + 24) = v41;
  if (v41 >= 0x80)
  {
    v4 = v4 + v41 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 1;
    if ((*(a1 + 76) & 0x80) != 0)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v4 = (v4 + v41 + 2);
    if ((*(a1 + 76) & 0x80) != 0)
    {
      goto LABEL_93;
    }
  }

LABEL_38:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_39:
    *(a1 + 72) = v4;
    return v4;
  }

LABEL_100:
  if (*v6 == v6[1])
  {
    goto LABEL_39;
  }

  v47 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 72) = v47;
  return v47;
}

uint64_t sub_1000AF19C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000AD760(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000AF27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AF290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AF2A4(uint64_t result, uint64_t a2)
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

uint64_t sub_1000AF338()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CC98;
}

void sub_1000AF3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AF3DC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 52);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 52) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD60 + 16);
    }

    sub_1000AB70C(v5, v6);
    v4 = *(a2 + 52);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 52) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DD60 + 24);
    }

    sub_10006797C(v7, v8);
    v4 = *(a2 + 52);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 52) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DD60 + 32);
    }

    sub_100059648(v9, v10);
    v4 = *(a2 + 52);
  }

  if ((v4 & 8) != 0)
  {
    v11 = *(a2 + 40);
    *(a1 + 52) |= 8u;
    v12 = *(a1 + 40);
    if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000AF674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000AF688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000AF69C(void *result)
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

  if (qword_10045DD60 != result)
  {
    v4 = result[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    result = v1[4];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_1000AF7A8(void *a1)
{
  *a1 = off_1004381D8;
  v2 = (a1 + 1);
  sub_1000AF69C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000AF808(void *a1)
{
  *a1 = off_1004381D8;
  v2 = (a1 + 1);
  sub_1000AF69C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000AF884(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD60;
  if (!qword_10045DD60)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD60;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000AF960(uint64_t a1)
{
  if (*(a1 + 52))
  {
    if (*(a1 + 52))
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        if (*(v1 + 52))
        {
          *(v1 + 16) = 0u;
          *(v1 + 32) = 0u;
        }

        v3 = *(v1 + 8);
        v2 = (v1 + 8);
        *(v2 + 11) = 0;
        if (v3)
        {
          v4 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
          a1 = v4;
        }
      }
    }

    v5 = *(a1 + 52);
    if ((v5 & 2) != 0 && *(a1 + 24))
    {
      v6 = a1;
      sub_100067D0C(*(a1 + 24));
      a1 = v6;
      v5 = *(v6 + 52);
    }

    if ((v5 & 4) != 0 && *(a1 + 32))
    {
      v7 = a1;
      sub_100059970(*(a1 + 32));
      a1 = v7;
      v5 = *(v7 + 52);
    }

    if ((v5 & 8) != 0)
    {
      v8 = *(a1 + 40);
      if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
          v11 = *(a1 + 8);
          result = (a1 + 8);
          *(result + 11) = 0;
          if (!v11)
          {
            return result;
          }

          goto LABEL_19;
        }

        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }
  }

  v10 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 11) = 0;
  if (!v10)
  {
    return result;
  }

LABEL_19:

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
}

uint64_t sub_1000AFA68(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_26;
            }

            *(a1 + 52) |= 1u;
            v13 = *(a1 + 16);
            if (!v13)
            {
              operator new();
            }

            v42 = 0;
            v14 = *(this + 1);
            if (v14 >= *(this + 2) || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v14;
              *(this + 1) = v14 + 1;
            }

            v15 = *(this + 14);
            v16 = *(this + 15);
            *(this + 14) = v15 + 1;
            if (v15 >= v16)
            {
              return 0;
            }

            v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
            if (!sub_1000AB9B4(v13, this, v18, v19) || *(this + 36) != 1)
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

            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 18)
            {
              *(this + 1) = v23 + 1;
              *(a1 + 52) |= 2u;
              v10 = *(a1 + 24);
              if (!v10)
              {
LABEL_38:
                operator new();
              }

              goto LABEL_11;
            }
          }

          else
          {
            if (v8 != 2 || v9 != 2)
            {
              goto LABEL_26;
            }

            *(a1 + 52) |= 2u;
            v10 = *(a1 + 24);
            if (!v10)
            {
              goto LABEL_38;
            }

LABEL_11:
            v43 = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
              {
                return 0;
              }
            }

            else
            {
              v43 = *v11;
              *(this + 1) = v11 + 1;
            }

            v24 = *(this + 14);
            v25 = *(this + 15);
            *(this + 14) = v24 + 1;
            if (v24 >= v25)
            {
              return 0;
            }

            v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
            if (!sub_100067D80(v10, this, v27, v28) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
            v29 = *(this + 14);
            v21 = __OFSUB__(v29, 1);
            v30 = v29 - 1;
            if (v30 < 0 == v21)
            {
              *(this + 14) = v30;
            }

            v31 = *(this + 1);
            if (v31 < *(this + 2) && *v31 == 26)
            {
              *(this + 1) = v31 + 1;
              goto LABEL_50;
            }
          }
        }

        if (v8 != 3)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_26;
        }

LABEL_50:
        *(a1 + 52) |= 4u;
        v32 = *(a1 + 32);
        if (!v32)
        {
          operator new();
        }

        v44 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
        if (!sub_100059988(v32, this, v37, v38) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v39 = *(this + 14);
        v21 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v40 < 0 == v21)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 < *(this + 2) && *v41 == 34)
        {
          *(this + 1) = v41 + 1;
          *(a1 + 52) |= 8u;
          if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
LABEL_64:
            operator new();
          }

          goto LABEL_17;
        }
      }

      if (v8 != 4 || v9 != 2)
      {
        break;
      }

      *(a1 + 52) |= 8u;
      if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        goto LABEL_64;
      }

LABEL_17:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
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

uint64_t sub_1000AFF88(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 52);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD60 + 16), a2, a4);
      v6 = *(v5 + 52);
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

LABEL_15:
    v12 = *(v5 + 32);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
      if ((*(v5 + 52) & 8) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DD60 + 32), a2, a4);
      if ((*(v5 + 52) & 8) != 0)
      {
        goto LABEL_19;
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

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v11 = *(v5 + 24);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DD60 + 24), a2, a4);
    v6 = *(v5 + 52);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v14 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v14;
  if (!v14)
  {
    return result;
  }

LABEL_20:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B00D4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 13);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v15 = *(this + 3);
    if (v15)
    {
      *v4 = 18;
      v16 = v4 + 1;
      v17 = *(v15 + 32);
      if (v17 <= 0x7F)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = *(qword_10045DD60 + 24);
      *v4 = 18;
      v16 = v4 + 1;
      v17 = *(v15 + 32);
      if (v17 <= 0x7F)
      {
LABEL_15:
        *(v4 + 1) = v17;
        v4 = sub_1000680C0(v15, v4 + 2, a3);
        v6 = *(this + 13);
        if ((v6 & 4) != 0)
        {
          goto LABEL_19;
        }

LABEL_4:
        if ((v6 & 8) == 0)
        {
          goto LABEL_5;
        }

LABEL_25:
        v25 = *(this + 5);
        *v4 = 34;
        v26 = *(v25 + 23);
        if ((v26 & 0x8000000000000000) != 0)
        {
          v26 = *(v25 + 8);
          if (v26 <= 0x7F)
          {
            goto LABEL_27;
          }
        }

        else if (v26 <= 0x7F)
        {
LABEL_27:
          *(v4 + 1) = v26;
          v27 = v4 + 2;
          goto LABEL_30;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
LABEL_30:
        v28 = *(v25 + 23);
        if (v28 >= 0)
        {
          v29 = v25;
        }

        else
        {
          v29 = *v25;
        }

        if (v28 >= 0)
        {
          v30 = *(v25 + 23);
        }

        else
        {
          v30 = *(v25 + 8);
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v29, v30, v27, a4);
        v31 = *(this + 1);
        v8 = (this + 8);
        v7 = v31;
        if (!v31)
        {
          return v4;
        }

        goto LABEL_37;
      }
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v16, a3);
    v4 = sub_1000680C0(v15, v18, v19);
    v6 = *(this + 13);
    if ((v6 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_4;
  }

  v10 = *(this + 2);
  if (v10)
  {
    *a2 = 10;
    v11 = a2 + 1;
    v12 = *(v10 + 48);
    if (v12 <= 0x7F)
    {
      goto LABEL_9;
    }

LABEL_12:
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    v4 = sub_1000ABD14(v10, v13, v14);
    v6 = *(this + 13);
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  v10 = *(qword_10045DD60 + 16);
  *a2 = 10;
  v11 = a2 + 1;
  v12 = *(v10 + 48);
  if (v12 > 0x7F)
  {
    goto LABEL_12;
  }

LABEL_9:
  *(v4 + 1) = v12;
  v4 = sub_1000ABD14(v10, v4 + 2, a3);
  v6 = *(this + 13);
  if ((v6 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  v20 = *(this + 4);
  if (v20)
  {
    *v4 = 26;
    v21 = v4 + 1;
    v22 = *(v20 + 32);
    if (v22 <= 0x7F)
    {
      goto LABEL_21;
    }

LABEL_24:
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v21, a3);
    v4 = sub_100059E14(v20, v23, v24);
    if ((*(this + 13) & 8) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  v20 = *(qword_10045DD60 + 32);
  *v4 = 26;
  v21 = v4 + 1;
  v22 = *(v20 + 32);
  if (v22 > 0x7F)
  {
    goto LABEL_24;
  }

LABEL_21:
  *(v4 + 1) = v22;
  v4 = sub_100059E14(v20, v4 + 2, a3);
  if ((*(this + 13) & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_5:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9)
  {
    return v4;
  }

LABEL_37:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1000B0338(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_26:
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = sub_100068278(v13, a2);
      if (v14 < 0x80)
      {
LABEL_28:
        v15 = 1;
LABEL_31:
        v4 = (v4 + v14 + v15 + 1);
        v3 = *(a1 + 52);
        goto LABEL_32;
      }
    }

    else
    {
      v14 = sub_100068278(*(qword_10045DD60 + 24), a2);
      if (v14 < 0x80)
      {
        goto LABEL_28;
      }
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    goto LABEL_31;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 52);
    if (*(v7 + 52))
    {
      goto LABEL_9;
    }

LABEL_19:
    v10 = 0;
    v11 = (v7 + 8);
    v12 = *(v7 + 8);
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v7 = *(qword_10045DD60 + 16);
  v8 = *(v7 + 52);
  if (!*(v7 + 52))
  {
    goto LABEL_19;
  }

LABEL_9:
  v9 = (v8 << 31 >> 31) & 9;
  if ((v8 & 2) != 0)
  {
    v9 += 9;
  }

  if ((v8 & 4) != 0)
  {
    v10 = (v9 + 9);
  }

  else
  {
    v10 = v9;
  }

  if ((v8 & 8) != 0)
  {
    v10 = (v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v7 + 40), a2) + 1);
  }

  v11 = (v7 + 8);
  v12 = *(v7 + 8);
  if (v12)
  {
LABEL_20:
    if (*v12 != v12[1])
    {
      v10 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v11, a2) + v10);
    }
  }

LABEL_22:
  *(v7 + 48) = v10;
  if (v10 >= 0x80)
  {
    v4 = v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v4 = (v10 + 2);
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_32:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }

LABEL_42:
    v19 = *(a1 + 40);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v4 = (v4 + v24 + v20 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = sub_100059EA4(v17, a2);
    if (v18 < 0x80)
    {
      goto LABEL_38;
    }

LABEL_41:
    v4 = v4 + v18 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    if ((*(a1 + 52) & 8) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  v18 = sub_100059EA4(*(qword_10045DD60 + 32), a2);
  if (v18 >= 0x80)
  {
    goto LABEL_41;
  }

LABEL_38:
  v4 = (v4 + v18 + 2);
  if ((*(a1 + 52) & 8) != 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_35:
    *(a1 + 48) = v4;
    return v4;
  }

LABEL_51:
  if (*v6 == v6[1])
  {
    goto LABEL_35;
  }

  v25 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 48) = v25;
  return v25;
}

uint64_t sub_1000B05BC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000AF3DC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B069C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B06B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B06C4(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B0758()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CCA8;
}

void sub_1000B07E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B07FC(uint64_t a1, uint64_t a2)
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
      v6 = *(qword_10045DD68 + 16);
    }

    sub_1000AB70C(v5, v6);
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

void sub_1000B09A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B09B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B09C8(void *a1)
{
  *a1 = off_100438288;
  if (qword_10045DD68 != a1)
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

void sub_1000B0A5C(void *a1)
{
  *a1 = off_100438288;
  if (qword_10045DD68 != a1)
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

uint64_t sub_1000B0B0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD68;
  if (!qword_10045DD68)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD68;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B0BD8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 52))
        {
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 11) = 0;
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

uint64_t sub_1000B0C5C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
    if (!sub_1000AB9B4(v10, this, v15, v16) || *(this + 36) != 1)
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

uint64_t sub_1000B0FC4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD68 + 16), a2, a4);
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

uint64_t sub_1000B10C0(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DD68 + 16);
    }

    v8 = a1;
    *a2 = 10;
    v9 = *(v7 + 48);
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
    }

    else
    {
      a2[1] = v9;
      v10 = (a2 + 2);
    }

    a2 = sub_1000ABD14(v7, v10, a3);
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

uint64_t sub_1000B1224(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_25;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(v9 + 52);
      if (*(v9 + 52))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(qword_10045DD68 + 16);
      v10 = *(v9 + 52);
      if (*(v9 + 52))
      {
LABEL_8:
        v11 = (v10 << 31 >> 31) & 9;
        if ((v10 & 2) != 0)
        {
          v11 += 9;
        }

        if ((v10 & 4) != 0)
        {
          v12 = (v11 + 9);
        }

        else
        {
          v12 = v11;
        }

        if ((v10 & 8) != 0)
        {
          v12 = (v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v9 + 40), a2) + 1);
        }

        v13 = (v9 + 8);
        v14 = *(v9 + 8);
        if (!v14)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    v12 = 0;
    v13 = (v9 + 8);
    v14 = *(v9 + 8);
    if (!v14)
    {
LABEL_21:
      *(v9 + 48) = v12;
      if (v12 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v15 = 1;
      }

      v4 = v12 + v15 + 1;
      v3 = *(a1 + 40);
LABEL_25:
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

      goto LABEL_33;
    }

LABEL_19:
    if (*v14 != v14[1])
    {
      v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v13, a2) + v12);
    }

    goto LABEL_21;
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

LABEL_33:
  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 36) = v16;
  return v16;
}

uint64_t sub_1000B138C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B07FC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B146C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B1480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1494(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B1528()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CCB8;
}

void sub_1000B15B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B15CC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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
      v6 = *(qword_10045DD70 + 16);
    }

    sub_1000AB70C(v5, v6);
    v4 = *(a2 + 36);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
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

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B1748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B1770(void *a1)
{
  *a1 = off_100438338;
  if (qword_10045DD70 != a1)
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

void sub_1000B1804(void *a1)
{
  *a1 = off_100438338;
  if (qword_10045DD70 != a1)
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

uint64_t sub_1000B18B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD70;
  if (!qword_10045DD70)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD70;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B197C(uint64_t a1)
{
  if (*(a1 + 36))
  {
    if (*(a1 + 36))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 52))
        {
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 11) = 0;
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

uint64_t sub_1000B19FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        if (v9 == 5)
        {
          goto LABEL_34;
        }

LABEL_19:
        if (v9 == 4)
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
        break;
      }

      if (v9 != 5)
      {
        goto LABEL_19;
      }

      v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v24) & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      *(a1 + 24) = v24;
      *(a1 + 36) |= 2u;
      v21 = *(this + 1);
      if (v21 < *(this + 2) && *v21 == 29)
      {
        *(this + 1) = v21 + 1;
LABEL_34:
        v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v23) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 28) = v23;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 != 1 || v9 != 2)
    {
      goto LABEL_19;
    }

    *(a1 + 36) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v25 = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v11;
      *(this + 1) = v11 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
    if (!sub_1000AB9B4(v10, this, v15, v16) || *(this + 36) != 1)
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

      goto LABEL_31;
    }
  }
}

uint64_t sub_1000B1CEC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 36);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD70 + 16), a2, a4);
      v6 = *(v5 + 36);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  if ((*(v5 + 36) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 28), a3);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1000B1DCC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if (v3)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DD70 + 16);
    }

    v8 = a1;
    *a2 = 10;
    v9 = *(v7 + 48);
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2 + 1, a3);
    }

    else
    {
      a2[1] = v9;
      v10 = (a2 + 2);
    }

    a2 = sub_1000ABD14(v7, v10, a3);
    a1 = v8;
    v3 = *(v8 + 36);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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
  if ((*(a1 + 36) & 4) == 0)
  {
LABEL_4:
    v6 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v6;
    if (!v6)
    {
      return a2;
    }

    goto LABEL_14;
  }

LABEL_13:
  v12 = *(a1 + 28);
  *a2 = 29;
  *(a2 + 1) = v12;
  a2 += 5;
  v13 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v13;
  if (!v13)
  {
    return a2;
  }

LABEL_14:
  if (*v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
}

uint64_t sub_1000B1EF8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      v4 = 0;
      goto LABEL_25;
    }

    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(v9 + 52);
      if (*(v9 + 52))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *(qword_10045DD70 + 16);
      v10 = *(v9 + 52);
      if (*(v9 + 52))
      {
LABEL_8:
        v11 = (v10 << 31 >> 31) & 9;
        if ((v10 & 2) != 0)
        {
          v11 += 9;
        }

        if ((v10 & 4) != 0)
        {
          v12 = (v11 + 9);
        }

        else
        {
          v12 = v11;
        }

        if ((v10 & 8) != 0)
        {
          v12 = (v12 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v9 + 40), a2) + 1);
        }

        v13 = (v9 + 8);
        v14 = *(v9 + 8);
        if (!v14)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    v12 = 0;
    v13 = (v9 + 8);
    v14 = *(v9 + 8);
    if (!v14)
    {
LABEL_21:
      *(v9 + 48) = v12;
      if (v12 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
      }

      else
      {
        v15 = 1;
      }

      v4 = v12 + v15 + 1;
      v3 = *(a1 + 36);
LABEL_25:
      if ((v3 & 2) != 0)
      {
        v4 += 5;
      }

      if ((v3 & 4) != 0)
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

LABEL_19:
    if (*v14 != v14[1])
    {
      v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v13, a2) + v12);
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_5:
    *(a1 + 32) = v5;
    return v5;
  }

LABEL_31:
  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 32) = v16;
  return v16;
}

uint64_t sub_1000B2054(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B15CC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B2134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B2148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B215C(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B21F0()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CCC8;
}

void sub_1000B2280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B2294(uint64_t a1, uint64_t a2)
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
      sub_10008C14C(*(v5 + 8 * v8), v6);
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
      v10 = *(qword_10045DD78 + 16);
    }

    sub_1000AB70C(v9, v10);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B24B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B24C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B24F0(uint64_t a1)
{
  *a1 = off_1004383E8;
  if (qword_10045DD78 != a1)
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

void sub_1000B25FC(uint64_t a1)
{
  sub_1000B24F0(a1);

  operator delete();
}

uint64_t sub_1000B263C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD78;
  if (!qword_10045DD78)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD78;
  }

  return result;
}

uint64_t sub_1000B270C(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    this = *(this + 16);
    if (this)
    {
      if (*(this + 52))
      {
        *(this + 16) = 0u;
        *(this + 32) = 0u;
      }

      v2 = *(this + 8);
      this += 8;
      *(this + 44) = 0;
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

uint64_t sub_1000B27D8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (!sub_1000AB9B4(v9, this, v14, v15) || *(this + 36) != 1)
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
          if (!sub_10008C828(v23, this, v28, v29) || *(this + 36) != 1)
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

uint64_t sub_1000B2B78(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v6 = *(qword_10045DD78 + 16);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B2C3C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
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
      v15 = *(v14 + 20);
      if (v15 <= 0x7F)
      {
        *(result + 1) = v15;
        v13 = (result + 2);
      }

      else
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v14 + 20), result + 1, a3);
      }

      result = sub_10008CFD0(v14, v13, a3, a4);
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
    v9 = *(v6 + 48);
    if (v9 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(qword_10045DD78 + 16);
    v7 = a2;
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v6 + 48);
    if (v9 <= 0x7F)
    {
LABEL_6:
      *(v7 + 1) = v9;
      result = sub_1000ABD14(v6, v7 + 2, a3);
      if (*(this + 8) < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
  result = sub_1000ABD14(v6, v10, v11);
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

uint64_t sub_1000B2D94(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(v5 + 52);
    if (*(v5 + 52))
    {
      goto LABEL_6;
    }

LABEL_16:
    v8 = 0;
    v9 = (v5 + 8);
    v10 = *(v5 + 8);
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v5 = *(qword_10045DD78 + 16);
  v6 = *(v5 + 52);
  if (!*(v5 + 52))
  {
    goto LABEL_16;
  }

LABEL_6:
  v7 = (v6 << 31 >> 31) & 9;
  if ((v6 & 2) != 0)
  {
    v7 += 9;
  }

  if ((v6 & 4) != 0)
  {
    v8 = (v7 + 9);
  }

  else
  {
    v8 = v7;
  }

  if ((v6 & 8) != 0)
  {
    v8 = (v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v5 + 40), a2) + 1);
  }

  v9 = (v5 + 8);
  v10 = *(v5 + 8);
  if (v10)
  {
LABEL_17:
    if (*v10 != v10[1])
    {
      v8 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8);
    }
  }

LABEL_19:
  *(v5 + 48) = v8;
  if (v8 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a1 + 32);
  v4 = (v12 + v8 + v11 + 1);
  if (v12 < 1)
  {
    goto LABEL_28;
  }

LABEL_23:
  v13 = 0;
  do
  {
    v15 = sub_10008D350(*(*(a1 + 24) + 8 * v13), a2);
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
LABEL_28:
  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1000B2F10(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000B2294(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000B2FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B3004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B3018(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B30AC()
{
  v0 = qword_10045CD50;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000A9CE8;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CCD8;
}

void sub_1000B313C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B3150(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
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
      v6 = *(qword_10045DD80 + 16);
    }

    sub_1000AB70C(v5, v6);
    v4 = *(a2 + 64);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 64) |= 2u;
    v8 = *(a1 + 24);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_12:
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(a2 + 32);
  *(a1 + 64) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    *(a1 + 64) |= 0x10u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (v12)
    {
      sub_10006797C(v11, v12);
      if ((*(a2 + 64) & 0x20) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else
    {
      sub_10006797C(v11, *(qword_10045DD80 + 40));
      if ((*(a2 + 64) & 0x20) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    goto LABEL_28;
  }

LABEL_20:
  v10 = *(a2 + 56);
  *(a1 + 64) |= 8u;
  *(a1 + 56) = v10;
  v4 = *(a2 + 64);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v4 & 0x20) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_28:
  v13 = *(a2 + 48);
  *(a1 + 64) |= 0x20u;
  v14 = *(a1 + 48);
  if (v14 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000B3428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000B343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000B3450(void *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v4 = result[6];
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  if (qword_10045DD80 != result)
  {
    v6 = result[2];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[5];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_1000B3590(void *a1)
{
  *a1 = off_100438498;
  v2 = (a1 + 1);
  sub_1000B3450(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000B35F0(void *a1)
{
  *a1 = off_100438498;
  v2 = (a1 + 1);
  sub_1000B3450(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000B366C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DD80;
  if (!qword_10045DD80)
  {
    sub_1000AA3EC(0, a2, a3, a4);
    return qword_10045DD80;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B3744(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    goto LABEL_19;
  }

  if (*(a1 + 64))
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 52))
      {
        *(v1 + 16) = 0u;
        *(v1 + 32) = 0u;
      }

      v3 = *(v1 + 8);
      v2 = (v1 + 8);
      *(v2 + 11) = 0;
      if (v3)
      {
        v4 = a1;
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
        a1 = v4;
      }
    }
  }

  if ((*(a1 + 64) & 2) == 0 || (v5 = *(a1 + 24), v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_12:
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    v6 = *(a1 + 64);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    goto LABEL_12;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  v6 = *(a1 + 64);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (*(a1 + 40))
  {
    v7 = a1;
    sub_100067D0C(*(a1 + 40));
    a1 = v7;
    v6 = *(v7 + 64);
  }

LABEL_15:
  if ((v6 & 0x20) != 0)
  {
    v8 = *(a1 + 48);
    if (v8 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        v11 = *(a1 + 8);
        result = (a1 + 8);
        *(result + 14) = 0;
        if (!v11)
        {
          return result;
        }

        goto LABEL_20;
      }

      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_19:
  v10 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 14) = 0;
  if (!v10)
  {
    return result;
  }

LABEL_20:

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
}

uint64_t sub_1000B3878(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
            goto LABEL_40;
          }

          *(a1 + 64) |= 1u;
          v13 = *(a1 + 16);
          if (!v13)
          {
            operator new();
          }

          v42 = 0;
          v14 = *(this + 1);
          if (v14 >= *(this + 2) || *v14 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v14;
            *(this + 1) = v14 + 1;
          }

          v33 = *(this + 14);
          v34 = *(this + 15);
          *(this + 14) = v33 + 1;
          if (v33 >= v34)
          {
            return 0;
          }

          v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
          if (!sub_1000AB9B4(v13, this, v36, v37) || *(this + 36) != 1)
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
          if (v40 < *(this + 2) && *v40 == 18)
          {
            *(this + 1) = v40 + 1;
            *(a1 + 64) |= 2u;
            if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
LABEL_31:
              operator new();
            }

            goto LABEL_32;
          }
        }

        else if (v8 == 2)
        {
          if (v9 != 2)
          {
            goto LABEL_40;
          }

          *(a1 + 64) |= 2u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            goto LABEL_31;
          }

LABEL_32:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v10 = *(this + 2);
          if (v17 < v10 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(this + 1) = v11;
            if (v11 < v10)
            {
              goto LABEL_36;
            }

LABEL_43:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v19 = *(this + 1);
            v10 = *(this + 2);
            *(a1 + 64) |= 4u;
            if (v19 < v10)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          if (v8 != 3 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            goto LABEL_43;
          }

LABEL_36:
          v18 = *v11;
          if (v18 < 0)
          {
            goto LABEL_43;
          }

          *(a1 + 32) = v18;
          v19 = v11 + 1;
          *(this + 1) = v19;
          *(a1 + 64) |= 4u;
          if (v19 < v10)
          {
LABEL_45:
            if (*v19 == 32)
            {
              v16 = v19 + 1;
              *(this + 1) = v16;
              v41 = 0;
              if (v16 >= v10)
              {
                goto LABEL_50;
              }

LABEL_47:
              v20 = *v16;
              if ((v20 & 0x80000000) == 0)
              {
                *(this + 1) = v16 + 1;
                if (sub_10008B63C(v20))
                {
                  goto LABEL_49;
                }

                goto LABEL_52;
              }

LABEL_50:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
              if (!result)
              {
                return result;
              }

              v20 = v41;
              if (sub_10008B63C(v41))
              {
LABEL_49:
                *(a1 + 64) |= 8u;
                *(a1 + 56) = v20;
                goto LABEL_53;
              }

LABEL_52:
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v20);
LABEL_53:
              v21 = *(this + 1);
              if (v21 < *(this + 2) && *v21 == 42)
              {
                *(this + 1) = v21 + 1;
                goto LABEL_56;
              }
            }
          }
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) == 0)
      {
        v16 = *(this + 1);
        v15 = *(this + 2);
        v41 = 0;
        if (v16 >= v15)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
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

    if (v8 != 5)
    {
      if (v8 == 6 && v9 == 2)
      {
        *(a1 + 64) |= 0x20u;
        if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          goto LABEL_70;
        }

        goto LABEL_18;
      }

      goto LABEL_40;
    }

    if (v9 != 2)
    {
      goto LABEL_40;
    }

LABEL_56:
    *(a1 + 64) |= 0x10u;
    v22 = *(a1 + 40);
    if (!v22)
    {
      operator new();
    }

    v43 = 0;
    v23 = *(this + 1);
    if (v23 >= *(this + 2) || *v23 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
      {
        return 0;
      }
    }

    else
    {
      v43 = *v23;
      *(this + 1) = v23 + 1;
    }

    v24 = *(this + 14);
    v25 = *(this + 15);
    *(this + 14) = v24 + 1;
    if (v24 >= v25)
    {
      return 0;
    }

    v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
    if (!sub_100067D80(v22, this, v27, v28) || *(this + 36) != 1)
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
    if (v32 < *(this + 2) && *v32 == 50)
    {
      *(this + 1) = v32 + 1;
      *(a1 + 64) |= 0x20u;
      if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
LABEL_70:
        operator new();
      }

LABEL_18:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        break;
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1000B3E18(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 64);
  if (v6)
  {
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
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DD80 + 16), a2, a4);
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

    goto LABEL_14;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  v11 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v12 = *(v5 + 40);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v12, a2, a4);
      if ((*(v5 + 64) & 0x20) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_10045DD80 + 40), a2, a4);
      if ((*(v5 + 64) & 0x20) != 0)
      {
        goto LABEL_20;
      }
    }

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

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  v13 = *(v5 + 48);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v14 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v14;
  if (!v14)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000B3F74(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 16);
  if (v6)
  {
    v11 = *(this + 2);
    if (v11)
    {
      *a2 = 10;
      v12 = a2 + 1;
      v13 = *(v11 + 48);
      if (v13 <= 0x7F)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *(qword_10045DD80 + 16);
      *a2 = 10;
      v12 = a2 + 1;
      v13 = *(v11 + 48);
      if (v13 <= 0x7F)
      {
LABEL_11:
        *(v4 + 1) = v13;
        v4 = sub_1000ABD14(v11, v4 + 2, a3);
        v6 = *(this + 16);
        if ((v6 & 2) != 0)
        {
          goto LABEL_15;
        }

LABEL_3:
        if ((v6 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_27;
      }
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
    v4 = sub_1000ABD14(v11, v14, v15);
    v6 = *(this + 16);
    if ((v6 & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_15:
  v16 = *(this + 3);
  *v4 = 18;
  v17 = *(v16 + 23);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v17 = *(v16 + 8);
    if (v17 <= 0x7F)
    {
      goto LABEL_17;
    }
  }

  else if (v17 <= 0x7F)
  {
LABEL_17:
    *(v4 + 1) = v17;
    v18 = v4 + 2;
    goto LABEL_20;
  }

  v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v4 + 1, a3);
LABEL_20:
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
  v6 = *(this + 16);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_28:
    v23 = *(this + 14);
    *v4 = 32;
    v24 = v4 + 1;
    if ((v23 & 0x80000000) != 0)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
      v7 = *(this + 16);
      if ((v7 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else if (v23 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
      v7 = *(this + 16);
      if ((v7 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *(v4 + 1) = v23;
      v4 = (v4 + 2);
      v7 = *(this + 16);
      if ((v7 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_41:
    v30 = *(this + 6);
    *v4 = 50;
    v31 = *(v30 + 23);
    if ((v31 & 0x8000000000000000) != 0)
    {
      v31 = *(v30 + 8);
      if (v31 <= 0x7F)
      {
        goto LABEL_43;
      }
    }

    else if (v31 <= 0x7F)
    {
LABEL_43:
      *(v4 + 1) = v31;
      v32 = v4 + 2;
      goto LABEL_46;
    }

    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
LABEL_46:
    v33 = *(v30 + 23);
    if (v33 >= 0)
    {
      v34 = v30;
    }

    else
    {
      v34 = *v30;
    }

    if (v33 >= 0)
    {
      v35 = *(v30 + 23);
    }

    else
    {
      v35 = *(v30 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v34, v35, v32, a4);
    v36 = *(this + 1);
    v9 = (this + 8);
    v8 = v36;
    if (!v36)
    {
      return v4;
    }

    goto LABEL_53;
  }

LABEL_27:
  v22 = *(this + 4);
  *v4 = 24;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v22, v4 + 1, a3);
  if ((*(this + 16) & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_5:
  v7 = *(this + 16);
  if ((v7 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  v25 = *(this + 5);
  if (v25)
  {
    *v4 = 42;
    v26 = v4 + 1;
    v27 = *(v25 + 32);
    if (v27 <= 0x7F)
    {
      goto LABEL_37;
    }

LABEL_40:
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v26, a3);
    v4 = sub_1000680C0(v25, v28, v29);
    if ((*(this + 16) & 0x20) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_7;
  }

  v25 = *(qword_10045DD80 + 40);
  *v4 = 42;
  v26 = v4 + 1;
  v27 = *(v25 + 32);
  if (v27 > 0x7F)
  {
    goto LABEL_40;
  }

LABEL_37:
  *(v4 + 1) = v27;
  v4 = sub_1000680C0(v25, v4 + 2, a3);
  if ((*(this + 16) & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10)
  {
    return v4;
  }

LABEL_53:
  if (*v8 == v8[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, v4, a3);
}

uint64_t sub_1000B4244(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_40;
    }

    goto LABEL_64;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 64) & 2) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v7 + 52);
    if (*(v7 + 52))
    {
      goto LABEL_9;
    }

LABEL_19:
    v10 = 0;
    v11 = (v7 + 8);
    v12 = *(v7 + 8);
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v7 = *(qword_10045DD80 + 16);
  v8 = *(v7 + 52);
  if (!*(v7 + 52))
  {
    goto LABEL_19;
  }

LABEL_9:
  v9 = (v8 << 31 >> 31) & 9;
  if ((v8 & 2) != 0)
  {
    v9 += 9;
  }

  if ((v8 & 4) != 0)
  {
    v10 = (v9 + 9);
  }

  else
  {
    v10 = v9;
  }

  if ((v8 & 8) != 0)
  {
    v10 = (v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v7 + 40), a2) + 1);
  }

  v11 = (v7 + 8);
  v12 = *(v7 + 8);
  if (v12)
  {
LABEL_20:
    if (*v12 != v12[1])
    {
      v10 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v11, a2) + v10);
    }
  }

LABEL_22:
  *(v7 + 48) = v10;
  if (v10 >= 0x80)
  {
    v4 = v10 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
    v3 = *(a1 + 64);
    if ((v3 & 2) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v4 = (v10 + 2);
    v3 = *(a1 + 64);
    if ((v3 & 2) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  v13 = *(a1 + 24);
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
    v3 = *(a1 + 64);
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

  v4 = (v4 + v18 + v14 + 1);
LABEL_35:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_42:
    v20 = *(a1 + 56);
    if ((v20 & 0x80000000) != 0)
    {
      v4 = (v4 + 11);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v3 = *(a1 + 64);
      v4 = (v21 + 1 + v4);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_38:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_39;
    }

LABEL_55:
    v24 = *(a1 + 48);
    v25 = *(v24 + 23);
    v26 = v25;
    v27 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v28 = *(v24 + 23);
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      v25 = *(v24 + 23);
      v27 = *(v24 + 8);
      v26 = *(v24 + 23);
    }

    else
    {
      v29 = 1;
    }

    if (v26 < 0)
    {
      v25 = v27;
    }

    v4 = (v4 + v29 + v25 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_40;
    }

    goto LABEL_64;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  v3 = *(a1 + 64);
  if ((v3 & 8) != 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_49:
  v22 = *(a1 + 40);
  if (v22)
  {
    v23 = sub_100068278(v22, a2);
    if (v23 < 0x80)
    {
      goto LABEL_51;
    }

LABEL_54:
    v4 = v4 + v23 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
    if ((*(a1 + 64) & 0x20) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_39;
  }

  v23 = sub_100068278(*(qword_10045DD80 + 40), a2);
  if (v23 >= 0x80)
  {
    goto LABEL_54;
  }

LABEL_51:
  v4 = (v4 + v23 + 2);
  if ((*(a1 + 64) & 0x20) != 0)
  {
    goto LABEL_55;
  }

LABEL_39:
  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_40:
    *(a1 + 60) = v4;
    return v4;
  }

LABEL_64:
  if (*v6 == v6[1])
  {
    goto LABEL_40;
  }

  v30 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 60) = v30;
  return v30;
}